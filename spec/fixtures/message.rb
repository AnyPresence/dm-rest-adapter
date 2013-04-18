class Message
  include DataMapper::Resource
  
  property :id,   Serial
  property :conversation_id, String  
  property :company_id, String
  property :conv_input, Object #Hash
  property :exec_actions, String
  property :input_region, String
  property :message_region, String
  property :server_id, Integer
  property :state, String
  property :state_data, Object #Array
  property :titlebar_region, String
  
end