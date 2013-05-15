class Notice
  include DataMapper::Resource
  storage_names[:default] = 'Notice'
  property :customer_name, String
  property :id, Serial
  property :title, String
  property :process, String
  property :notice_category, String
  property :title, String
  
  property :modified, DateTime
  property :created, DateTime
  property :description, Text
  
  property :comments, Object
end

=begin
<Comments>
  <Comment>
    <CreatedAt>4/30/2013 3:03:50 PM</CreatedAt>
    <CreatedBy>Mark Greene</CreatedBy>
    <CommentText>This is a comment by a different user.</CommentText>
  </Comment>
  <Comment>
    <CreatedAt>4/30/2013 3:02:31 PM</CreatedAt>
    <CreatedBy>John Miller</CreatedBy>
    <CommentText>This is a 
      test comment
      with line bresk 2
    </CommentText>
  </Comment>
  <Comment>
    <CreatedAt>4/30/2013 3:02:07 PM</CreatedAt>
    <CreatedBy>John Miller</CreatedBy>
    <CommentText>This is a test comment 1</CommentText>
  </Comment>
</Comments>

<Attachments/>

</Notice>
=end