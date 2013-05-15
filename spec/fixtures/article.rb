class Article
  include DataMapper::Resource
  storage_names[:default] = 'article'
  property :id, Serial
  property :abstract, String
  property :body, Text
end