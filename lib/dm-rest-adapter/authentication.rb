require 'dm-rest-adapter/helper/query_param'

module DataMapperRest
  module Authentication
    extend ::DataMapper::Helper::QueryParam

    def self.setup_auth(rest_client, path, options, headers, request_method=:get)
      _headers = {}
      if options[:auth_scheme] == "omniauth_ver_1"
        omni = ::DataMapper::Authentication::OmniauthVer1.new(options.merge({:omniauth_ver_1_callback => "http://projectabc.com/OauthCallbackServlet"}))

        # Clean headers
        h = headers.clone
        h[:params] = modify_query_param(h[:params].clone, options, [:order]) if !h[:params].nil? && !h[:params].empty?

        # The RestClient request object must be constructed with a url that includes the query string
        query_string = extract_query_string(h[:params])
        if !query_string.empty?
          final_path = "#{path}?#{extract_query_string(h[:params])}"
        else
          final_path = "#{path}"
        end
        target = rest_client[final_path]

        req = ::RestClient::Request.new(url: target.url, method: request_method, headers: {})

        req = omni.setup(req)
        # Just merge in the params
        _headers = req.headers

        # RestClient needs this set to use it as a query param
        _headers[:params] = h[:params]
      else
        _headers = headers
        _headers[:params] = modify_query_param(headers[:params], options)
      end
      _headers
    end

    class Base

      def setup(req)
        raise NotImplementedError, "Must implement"
      end

    end
  end
end