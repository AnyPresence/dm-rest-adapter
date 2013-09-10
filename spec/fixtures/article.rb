class Article
  include DataMapper::Resource
  storage_names[:default] = 'Home_Tablet'
  property :id, Serial, field: "id", key: true, required: false, lazy: false

  property :api_key, Text, field: "api_key", key: false, required: false, lazy: false

  property :assets, Object, field: "assets", key: false, required: false, lazy: false

  property :html, Text, field: "html", key: false, required: false, lazy: false

  property :metadata, Object, field: "metaData", key: false, required: false, lazy: false

  property :site_id, Integer, field: "siteId", key: false, required: false, lazy: false

  property :type, Text, field: "type", key: false, required: false, lazy: false
end