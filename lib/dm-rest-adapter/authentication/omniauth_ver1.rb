require 'dm-rest-adapter'
require 'oauth'
require 'oauth/request_proxy/rest_client_request'

module DataMapper
  module Authentication
    class OmniauthVer1 < DataMapperRest::Authentication::Base
      attr_reader :options
      
      def initialize(options)
        @options = options
      end
      
      def setup(req)
        token_secret = @options[:omniauth_ver_1_token_secret] || ""
        token = @options[:omniauth_ver_1_token] || ""
        access_token = OAuth::ConsumerToken.from_hash(@omniauth_ver_1_consumer, {oauth_token_secret: token_secret, oauth_token: token})
        signature_method = @options[:omniauth_ver_1_signature_method] || "RSA-SHA1"
        oauth_params = {:signature_method => signature_method, :token => access_token, :consumer => @omniauth_ver_1_consumer}      
        oauth_helper = OAuth::Client::Helper.new(req, oauth_params.merge(:request_uri => req.url))
        # Add authorization header      
        req.headers.merge!({"Authorization" => oauth_helper.header})

        req
      end
      
    end
  end
end
