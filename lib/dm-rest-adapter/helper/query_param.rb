module DataMapper
  module Helper
    module QueryParam
      
      def enable_query_param_as_uri_encoded_json_hash
        @enable_query_param_as_uri_encoded_json_hash || false
      end
      
      def query_wrap_param
        @query_wrap_param || ""
      end
      
      # Modifies the query param
      def modify_query_param(params)
        
        if enable_query_param_as_uri_encoded_json_hash
          if query_wrap_param.empty?
            return params.to_json
          else
            return {"#{@query_wrap_param}" => params.to_json}
          end
        else
          if query_wrap_param.empty?
            return params
          else
            return Hash[params.map {|k, v| [ "#{@query_wrap_param}[#{k}]", v] }]
          end
        end
      end
      
    end    
  end
end
