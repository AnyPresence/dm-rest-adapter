class ForecastDay
  include DataMapper::Resource
  property :id, Serial
  property :period, Integer
  property :icon, String
  property :icon_url, String
  property :title, String
  property :fcttext, String
  property :fcttext_metric, String
  property :pop, String
end