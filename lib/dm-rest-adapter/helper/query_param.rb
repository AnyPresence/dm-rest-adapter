module DataMapper
  module Helper
    module QueryParam
      
      # Modifies the query param
      def modify_query_param(params, options={}, params_to_exclude=[])
        return {} if params.nil?
        stripped_params = params.clone
        params_to_exclude.each { |k| stripped_params.delete(k) }
        
        if options[:enable_query_param_as_uri_encoded_json_hash]
          if options[:query_wrap_param].nil? || options[:query_wrap_param].empty?
            return stripped_params
          else
            return {"#{options[:query_wrap_param]}" => stripped_params}
          end
        else
          if options[:query_wrap_param].nil? || options[:query_wrap_param].empty?
            return stripped_params
          else
            return Hash[stripped_params.map {|k, v| [ "#{options[:query_wrap_param]}[#{k}]", v] }]
          end
        end
      end
      
      # Returns query param hash as a url query string
      def extract_query_string(query)
        return URI.encode(query) if query.is_a?(String)
        uri = Addressable::URI.new
        uri.query_values = prune_query_string query
        uri.query
      end

      def prune_query_string(query)
        params = {}
        query.each_pair do |k,v|
            params[k] = v if v.is_a?(String) || v.is_a?(Symbol) || v.is_a?(Numeric)
        end
        params
      end
      
    end    
  end
end
