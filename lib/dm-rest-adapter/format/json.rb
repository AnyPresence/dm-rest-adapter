require 'multi_json'
require 'jsonpath'

module DataMapperRest
  module Format
    class Json < AbstractFormat
      def default_options
        DataMapper::Mash.new({ :mime => "application/json", :extension => "json" })
      end
      
      def string_representation(resource)
        model = resource.model
        
        hash = properties_to_serialize(resource).reduce({}) do |h, property|
          h.merge(property.field.to_sym => property.dump(property.get(resource)))
        end
        
        MultiJson.encode(hash)
      end
      
      def parse_record(json, model)
        hash = {}
        
        if @record_selector
          hash = JsonPath.on(json, record_selector_expression(model)).first
        else
          hash = JSON.parse(json)
        end
        
        field_to_property = Hash[ properties(model).map { |p| [ p.field, p ] } ]
        record_from_hash(hash, field_to_property)
      end
      
      def parse_collection(json, model)
        array = []
        
        if @collection_selector
          array = JsonPath.on(json, collection_selector_expression(model)).first
          raise "Collection selector resulted in an error." if array.nil?
        else
          array = JSON.parse(json)
        end
        
        field_to_property = Hash[ properties(model).map { |p| [ p.field, p ] } ]
        array.collect do |hash|
          record_from_hash(hash, field_to_property)
        end
      end
      
      private
      
      def record_from_hash(hash, field_to_property)
        record = {}
        hash.each_pair do |field, value|
          next unless property = field_to_property[field]
          record[field] = property.typecast(value)
        end
        
        record
      end
      
      def record_selector_expression(model)
        "$.#{transform_selector_expression(@record_selector)}"
      end
      
      def collection_selector_expression(model)
        "$.#{transform_selector_expression(@collection_selector)}"
      end
      
      def transform_selector_expression(expression)
        expression.gsub(/(\w+(-\w+)+)/) do |match| 
          "['#{match}']"
        end
      end
    end
  end
end
