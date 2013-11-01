class Comment
  include DataMapper::Resource
  storage_names[:default] = 'Notice'
  property :id, Serial
  property :CreatedAt, DateTime
  property :CreatedBy, String
  property :CommentText, Text
end