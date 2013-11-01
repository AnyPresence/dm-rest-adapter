class Bookmark
  include DataMapper::Resource
  storage_names[:default] = 'bookmark'
  property :id,         Serial
  property :created_at, DateTime
  property :name,       String
  property :notices,    Object #Hash
end
