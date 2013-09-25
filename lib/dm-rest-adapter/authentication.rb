module DataMapperRest
  module Authentication
   
    def self.setup_auth(req, options)
      if options[:auth_scheme] == "omniauth_ver_1"
        omni = ::DataMapper::Authentication::OmniauthVer1.new(options)
        return omni.setup(req)
      end
      
      return req
    end
    
    class Base
      
      def setup(req)
        raise NotImplementedError, "Must implement"
      end
      
    end
  end
end