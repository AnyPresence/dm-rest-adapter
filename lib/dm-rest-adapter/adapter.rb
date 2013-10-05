require 'oauth'
require 'oauth/request_proxy/rest_client_request'
require "addressable/uri"

module DataMapperRest
  # TODO: Specs for resource format parse errors (existing bug)

  class Adapter < DataMapper::Adapters::AbstractAdapter
    attr_accessor :rest_client, :format
        
    def create(resources)
      resources.each do |resource|
        model = resource.model

        path_items = extract_parent_items_from_resource(resource)
        path_items << { :model => mapped_name(model) }

        path = @format.resource_path(*path_items)
        payload = @format.generate_payload(resource)
        headers = create_headers(:content_type => @format.mime)
        
        @log.debug("About to POST to #{path} with:\nHeaders #{headers}\nData: #{payload}")
        
        response = @rest_client[path].post(
          payload,
          headers
        ) do |response, request, result, &block|
          
          # See http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.2.2 for HTTP response 201
          if @options[:follow_on_create] && [201, 301, 302, 307].include?(response.code)
            response.args[:method] = :get
            response.args.delete(:payload)
            response.follow_redirection(request, result, &block)
          else
            response.return!(request, result, &block)
          end
        end
        
        response_body = response.body
        @log.debug("Response to POST was #{response.code} #{response_body}")
        
        @format.update_attributes(resource, response_body)
      end
    end

    def read(query)
      model = query.model

      path_items = extract_parent_items_from_query(query)
      @log.debug("Reading #{path_items}")
      
      records = []
      
      if id = extract_id_from_query(query)
        begin
          path_items << { :model => mapped_name(model) , :key => id }
          path = @format.resource_path(*path_items)
          
          @log.debug("About to GET using #{path}")
          target = @rest_client[path]
          req = ::RestClient::Request.new(url: target.url, method: :get, headers: {}) 
          req = ::DataMapperRest::Authentication.setup_auth(req, @options)
          
          headers = finalize_header(req, create_headers)
          
          response = target.get(headers)
          
          @log.debug("Response to GET was #{response.inspect}")
          
          records = [ @format.parse_record(response.body, model) ]
        rescue RestClient::ResourceNotFound
          @log.error("Resource was not found at #{path}. Response was #{response.inspect}")
          records = []
        end
      else
        path_items << { :model => mapped_name(model)  }
        query_options = create_headers()
        params = extract_params_from_query(query)
        query_options[:params] = params unless params.empty?
        
        path = @format.resource_path(*path_items)
        extracted_query_string = extract_query_string(params)
        path = extracted_query_string.empty? ? path : "#{path}?#{extract_query_string(params)}"
        @log.debug("About to GET using #{path} with query_options of #{query_options.inspect}")
        
        target = @rest_client[path]
        req = ::RestClient::Request.new(url: target.url, method: :get, headers: {})
        req = ::DataMapperRest::Authentication.setup_auth(req, @options)
        
        headers = finalize_header(req, query_options)
    
        response = target.get(headers)
        
        @log.debug("Response to GET was #{response.code} #{response.body}")
        records = @format.parse_collection(response.body, model)
      end

      records
    end

    def update(dirty_attributes, collection)
      collection.select do |resource|
        model = resource.model
        key   = model.key
        id    = key.get(resource).first
        
        path_items = extract_parent_items_from_resource(resource)
        path_items << { :model => mapped_name(model) , :key => id }

        dirty_attributes.each { |p, v| p.set!(resource, v) }

        path = @format.resource_path(*path_items)
        payload = @format.generate_payload(resource)
        headers = create_headers(:content_type => @format.mime)
        
        @log.debug("About to PUT to #{path} with:\nHeaders #{headers}\nData: #{payload}")
        
        response = @rest_client[path].put(payload, headers)
        
        response_body = response.body
        
        @log.debug("Response to PUT was #{response.code} #{response_body}")
        
        @format.update_attributes(resource, response_body)
      end.size
    end

    def delete(collection)
      collection.select do |resource|
        model = resource.model
        key   = model.key
        id    = key.get(resource).first
        
        path_items = extract_parent_items_from_resource(resource)
        path_items << { :model => mapped_name(model) , :key => id }
        
        response = @rest_client[@format.resource_path(*path_items)].delete(
          create_headers()
        )
        
        @log.debug("Response to DELETE was #{response.body}")
        
        (200..207).include?(response.code)
      end.size
    end

    private

    # Returns a hash of HTTP headers with a default of :accept => mime and configured extra headers plus any non nil pairs passed
    def create_headers(custom_headers={})
      
      headers = {:accept => @format.accept}.merge!(custom_headers).delete_if{|key, value| key.nil? or value.nil? }
      
      unless @extra_headers.nil?
        headers.merge!(@extra_headers)
      end
      
      headers
    end
    
    def mapped_name(model)
      model.respond_to?(:storage_name) ? model.storage_name(model.repository_name) : model
    end
    
    def initialize(*)
      super
      
      raise ArgumentError, "Missing :format in @options" unless @options[:format]

      initialize_logger

      case @options[:format]
        when "xml"
          @format = Format::Xml.new(@options.merge(:repository_name => name))
          @log.info("Using XML format.")
        when "json"
          @format = Format::Json.new(@options.merge(:repository_name => name))
          @log.info("Using JSON format.")
        when String
          @format = load_format_from_string(@options[:format]).new(@options.merge(:repository_name => name))
          @log.info("Using loaded format #{@format.inspect}.")
        else
          @format = @options[:format]
          @log.info("Using format of #{@format.inspect}")
      end
      
      if @options[:limit_param_name]
        @has_overridden_limit_param = !(@options[:limit_param_name].nil? or @options[:limit_param_name].empty?)
        @log.warn(":limit_param_name was given without specifying an actual parameter name!") unless @has_overridden_limit_param
         
        @limit_param_name = @options[:limit_param_name].to_sym
        @log.info("Will use #{@limit_param_name} for a limit parameter name.")
      end
      
      if @options[:offset_param_name]
        @has_overridden_offset_param = !(@options[:offset_param_name].nil? or @options[:offset_param_name].empty?) 
        @log.warn(":offset_param_name was given without specifying an actual parameter name!") unless @has_overridden_offset_param
        
        @offset_param_name = @options[:offset_param_name].to_sym
        @log.info("Will use #{@offset_param_name} for an offset parameter name.")
      end
      
      if @options[:disable_format_extension_in_request_url]
        @format.extension = nil
        @log.info("Will NOT use format extension in requested URLs.")
      end
      
      if @options[:extra_http_headers]
        @extra_headers = Hash.new 
        @options[:extra_http_headers].each do |key, value| 
          @extra_headers[key.to_sym] = value
        end
        
        @log.info("Will use extra HTTP headers: #{@extra_headers.inspect}")
        @log.warn("'Content-Type' will always be set to '#{@extra_headers[:content_type]}'. Please ensure that's exactly what you intended!") if @extra_headers.has_key?(:content_type)
      end
            
      @log.info("Configured for omniauth version 1") if @options[:auth_scheme] == "omniauth_ver_1"
      
      @log.info("Will use form URL encoded submission for POST and PUT calls.")if @options[:enable_form_urlencoded_submission]
      
      @log.info("Will use record selector #{@options[:record_selector]}") if @options[:record_selector]
      @log.info("Will use collection selector #{@options[:collection_selector]}") if @options[:collection_selector]
      
      @log.debug("Initializing RestClient with #{normalized_uri}")
      @rest_client = RestClient::Resource.new(normalized_uri)
    end
    
    def load_format_from_string(class_name)
      canonical = if class_name.start_with?("::")
        class_name.gsub(/^::/, "")
      else
        class_name
      end
      
      canonical.split("::").reduce(Kernel) { |klass, name| klass.const_get(name) }
    end

    def normalized_uri
      @normalized_uri ||=
        begin
          Addressable::URI.new(
            :scheme       => @options[:scheme] || "http",
            :user         => @options[:user],
            :password     => @options[:password],
            :host         => @options[:host],
            :port         => @options[:port],
            :path         => @options[:path] || @options[:prefix],
            :fragment     => @options[:fragment]
          )
        end
    end

    def extract_id_from_query(query)
      return nil unless query.limit == 1

      conditions = query.conditions

      return nil unless conditions.kind_of?(DataMapper::Query::Conditions::AndOperation)
      return nil unless (key_condition = conditions.select { |o| o.subject.key? }).size == 1

      key_condition.first.value
    end
    
    # Note that ManyToOne denotes the child end of a 'has 1' or a 'has n' relationship
    def extract_parent_items_from_resource(resource)
      model = resource.model
      
      nested_relationship = model.relationships.detect do |relationship|
        relationship.kind_of?(DataMapper::Associations::ManyToOne::Relationship) &&
          relationship.inverse.options[:nested]
      end
      
      return [] unless nested_relationship
      
      path_items = if nested_relationship.loaded?(resource)
        extract_parent_items_from_resource(nested_relationship.get(resource))
      else
        []
      end
      
      path_items << {
        :model => nested_relationship.target_model,
        :key => nested_relationship.source_key.get(resource).first
      }.reject { |key, value| value.nil? }
    end
    
    # Note that ManyToOne denotes the child end of a 'has 1' or a 'has n' relationship
    def extract_parent_items_from_query(query)
      model = query.model
      conditions = query.conditions
      
      return [] unless conditions.kind_of?(DataMapper::Query::Conditions::AndOperation)
      
      nested_relationship_operand = conditions.detect do |operand|
        operand.kind_of?(DataMapper::Query::Conditions::EqualToComparison) &&
          operand.relationship? &&
          operand.subject.kind_of?(DataMapper::Associations::ManyToOne::Relationship) &&
          operand.subject.inverse.options[:nested]
      end
      
      return [] unless nested_relationship_operand
      
      nested_relationship = nested_relationship_operand.subject
      
      extract_parent_items_from_resource(nested_relationship_operand.value) << {
        :model => nested_relationship.target_model,
        :key => nested_relationship.target_key.get(nested_relationship_operand.value).first
      }.reject { |key, value| value.nil? }
    end
    
    def extract_params_from_query(query)
      model = query.model
      conditions = query.conditions
      params = {}
      @log.debug("Conditions are #{conditions.inspect}")
      
      options = query.options
      @log.debug("Options for limit and offset are #{@has_overridden_limit_param} for limit, and #{@has_overridden_offset_param} for offset")
      
      if @has_overridden_limit_param and options[:limit]
        @log.debug("Setting limit param using #{@limit_param_name.to_sym} and value #{options[:limit]}")
        params[@limit_param_name.to_sym] = options[:limit]
      end

      if @has_overridden_offset_param and options[:offset]
        @log.debug("Setting offset param using #{@offset_param_name.to_sym} and value #{options[:offset]}")
        params[@offset_param_name.to_sym] = options[:offset]
      end

      params[:order] = extract_order_by_from_query(query) unless query.order.empty?
      
      return params unless conditions.kind_of?(DataMapper::Query::Conditions::AndOperation)
      return params if conditions.any? { |o| o.subject.respond_to?(:key?) && o.subject.key? }
      
      condition_params = extract_params_from_conditions(query)
      
      params.merge!(condition_params) if condition_params
            
      params
    end
    
    def extract_params_from_conditions(query)
      params = []
      
      query.conditions.select{|c| c.kind_of?(DataMapper::Query::Conditions::EqualToComparison)}.each do |condition|
        if condition.relationship? && !condition.subject.inverse.options[:nested]
          params << { condition.foreign_key_mapping.subject.field.to_sym => condition.foreign_key_mapping.value }
        else
          params << { condition.subject.field.to_sym => condition.loaded_value }
        end
      end

      params.compact.reduce({}) { |memo, v| memo.merge(v) }
    end
    
    def extract_order_by_from_query(query)
      orders = {}
      query.order.each do |order|
        orders[order.target.field.to_sym] = order.operator.to_sym
      end
      orders
    end
    
    def initialize_logger
      level = 'error'
      
      if @options[:logging_level] && %w[ off fatal error warn info debug ].include?(@options[:logging_level].downcase)
        level = @options[:logging_level].downcase
      end
      DataMapper::Logger.new($stdout,level)
      @log = DataMapper.logger
      if level == 'debug'
        @log.debug("Adding REST client debugging proxy")
        RestClient.log =  $stdout
      end
    end
    
    def extract_query_string(query)
      uri = Addressable::URI.new
      params = prune_query_string(query)
      uri.query_values = params
      uri.query
    end
    
    def prune_query_string(query)
      params = {}
      query.each_pair do |k,v|
        params[k] = v if v.is_a?(String) || v.is_a?(Symbol) || v.is_a?(Numeric)
      end
      params
    end
    
    def finalize_header(req, headers)
      _headers = {}
      if @options[:auth_scheme] == "omniauth_ver_1"
        params = headers.delete(:params)        
        _headers = req.headers.merge(params)
      else
        _headers = headers
      end
      _headers
    end
    
  end
end
