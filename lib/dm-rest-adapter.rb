require 'rexml/document'
require 'json'

require 'rest-client'

require 'addressable/uri'

require 'dm-core'
require 'dm-serializer'

require 'dm-rest-adapter/adapter'
require 'dm-rest-adapter/format'
require 'dm-rest-adapter/format/xml'
require 'dm-rest-adapter/format/json'
require 'dm-rest-adapter/exceptions'
require 'dm-rest-adapter/authentication'
require 'dm-rest-adapter/authentication/omniauth_ver1'
require 'dm-rest-adapter/helper/query_param'

DataMapper::Adapters::RestAdapter = DataMapperRest::Adapter
DataMapper::Associations::Relationship::OPTIONS << :nested
