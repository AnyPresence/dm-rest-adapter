require 'multi_json'
require 'jsonpath'

module DataMapperRest
  module Format
    class Json < AbstractFormat
      def default_options
        DataMapper::Mash.new({ :mime => "application/json", :extension => "json" })
      end
      
      def generate_payload(resource)
        model = resource.model
        
        hash = properties_to_serialize(resource).reduce({}) do |h, property|
          key = property.field.to_sym
          dumped_value = ''
          value = property.get(resource)
          
          if(hash_or_array? value)
            dumped_value = MultiJson.dump(value)
            dumped_value = MultiJson.decode(dumped_value) #Dump also encodes is why, and we don't want to double encode.
          else
            dumped_value = property.dump(value)
          end
          
          h.merge(key => dumped_value)
        end
        
        if @enable_form_urlencoded_submission
          { element_name(model).to_sym => hash }
        else
          MultiJson.encode(hash)
        end
      end
      
      def parse_record(json, model)
        hash = {}
        
        if @record_selector
          selector = record_selector_expression(model)
          path = JsonPath.new(selector)
          hash = path.on(json).first
        else
          hash = JSON.parse(json)
        end
        
        field_to_property = Hash[ properties(model).map { |p| [ p.field, p ] } ]
        record_from_hash(hash, field_to_property)
      end
      
      def parse_collection(json, model)
        array = []
        parsed_collection = nil
        
        if @collection_selector
          selector = collection_selector_expression(model)
          DataMapper.logger.debug("Selector is #{selector.inspect}")
          path = JsonPath.new(selector)
          parsed_collection = path.on(json)
          raise "Collection selector resulted in an error." if parsed_collection.nil?          
        else
          parsed_collection = JSON.parse(json)
        end
        DataMapper.logger.debug("parsed_collection is #{parsed_collection.inspect}")
        
        array = parsed_collection.kind_of?(Array) ? parsed_collection : [parsed_collection]  
        
        field_to_property = Hash[ properties(model).map { |p| [ p.field, p ] } ]
        
        array.collect do |hash|
          if hash.kind_of? Array #Supports wildcard selectors that return arrays
            hash.collect do |inner_hash|
              record_from_hash(inner_hash, field_to_property)
            end
          else
            record_from_hash(hash, field_to_property)
          end
        end
        debug_array = array.each{|e| e.inspect}.join("\n")
        DataMapper.logger.debug("ARRAY IS\n#{debug_array}")

        array
      end
      
      private
      
      def record_from_hash(hash, field_to_property)
        record = {}
        hash.each_pair do |field, value|
          next unless property = field_to_property[field]
          record[field] = property.typecast(value)
        end
        DataMapper.logger.debug("RECORD IS #{record.inspect}")
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
      
      def hash_or_array?(value)
        value.kind_of?(::Hash) || value.kind_of?(::Array)
      end
    end
  end
end
