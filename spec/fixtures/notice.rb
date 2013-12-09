class Notice
  include DataMapper::Resource
  storage_names[:default] = 'Notice'
  property :customer_name, String, field: 'CustomerName'
  property :id, Serial, field: 'ID'
  property :title, String, field: 'Title'
  property :process, String, field: 'Process'
  property :notice_category, String, field: 'NoticeCategory'
  property :title, String, field: 'Title'
  
  property :modified, DateTime, field: 'Modified'
  property :created, DateTime, field: 'Created'
  property :description, Text, field: 'Description'
  
  property :comments, Object, field: 'Comments'
end
