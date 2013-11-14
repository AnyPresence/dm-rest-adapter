class Atm
  include DataMapper::Resource

  # Include modules for extensions.


  storage_names[:test] = 'atm'
  def self.default_repository_name
    :test
  end



  # Property definitions

  property :id, Text, field: "Owner", key: true, required: false, lazy: false

  property :access_fees, Integer, field: "AccessFees", key: false, required: false, lazy: false

  property :availability, Text, field: "Availability", key: false, required: false, lazy: false

  property :camera, Text, field: "Camera", key: false, required: false, lazy: false

  property :handicap_accessible, Text, field: "HandicapAccessible", key: false, required: false, lazy: false

  property :location, Object, field: "Location", key: false, required: false, lazy: false

  property :parameter_city, Text, field: "City", key: false, required: false, lazy: false

  property :parameter_country, Text, field: "Country", key: false, required: false, lazy: false

  property :parameter_country_subdivision, Text, field: "CountrySubdivision", key: false, required: false, lazy: false

  property :parameter_distance_unit, Text, field: "DistanceUnit", key: false, required: false, lazy: false

  property :parameter_latitude, Float, field: "Latitude", key: false, required: false, lazy: false

  property :parameter_longitude, Float, field: "Longitude", key: false, required: false, lazy: false

  property :parameter_postal_code, Text, field: "PostalCode", key: false, required: false, lazy: false

  property :parameter_radius, Integer, field: "Radius", key: false, required: false, lazy: false

  property :shared_deposit, Text, field: "SharedDeposit", key: false, required: false, lazy: false

  property :sponsor, Text, field: "Sponsor", key: false, required: false, lazy: false

  property :support_emv, Integer, field: "SupportEMV", key: false, required: false, lazy: false

  property :surcharge_free_alliance, Text, field: "SurgchareFreeAlliance", key: false, required: false, lazy: false
  
end