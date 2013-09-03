class Company
  include DataMapper::Resource
  
  property :company_id, Serial, field: "companyId"
  property :name, String, field: "companyName"
  property :country, String
  property :city, String
  property :sales, Float
  property :location, String, field: "locationType"
  property :address, String, field: "address1"
  property :postal_code, String, field: "postalCode"
  property :country_id, Integer, field: "countryId"
  property :duns, String
  property :parent_duns, String, field: "parentDuns"
  property :ultimate_parent_duns, String, field: "ultimateParentDuns"
  property :family_tree_size, Integer, field: "familyTreeSize"
  property :phone, String, field: "hqPhone"
  property :do_not_call_registry , Boolean, field: "doNotCallRegistry"
  property :historical_indicator , Boolean, field: "historicalIndicator"
  property :state , String, field: "stateOrProvince"
  property :nmc, Boolean, field: "nonMarketableCompany"
  property :url, String, field: "primaryUrl"
  property :dbas, String
  property :exchanges, Object
  
end
                   