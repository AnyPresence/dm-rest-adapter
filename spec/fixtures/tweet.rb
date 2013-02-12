class Tweet
  include DataMapper::Resource
  property :id, Serial
  property :id_str, String
  property :created_at, DateTime
  property :from_user, String
  property :from_user_id, Integer
  property :from_user_id_str, String
  property :from_user_name, String
  property :geo, String
  property :iso_language_code, String
  property :profile_image_url, String
  property :profile_image_url_https, String
  property :source, String
  property :to_user, String
  property :to_user_id, Integer
  property :to_user_id_str, String
  property :to_user_name, String
end