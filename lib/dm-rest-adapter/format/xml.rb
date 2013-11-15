module DataMapper
  module Adapters
    
  module Format
    class Xml < AbstractFormat
      
      def default_options
        DataMapper::Mash.new({ :mime => "application/xml", :extension => "xml" })
      end
        
      def generate_payload(resource)
        if @enable_form_urlencoded_submission
          hash = properties_to_serialize(resource).reduce({}) do |h, property|
            key = property.field.to_sym
            dumped_value = ''
            value = property.get(resource)
            h.merge(key => property.dump(value))
          end
          { element_name(model).to_sym => hash } 
        else
          resource.to_xml
        end
      end
      
      def parse_collection(xml, model)
        doc = Nokogiri::XML(xml)

        @field_to_property = field_to_property_hash(model)

        selector = collection_selector_expression(model)
        
        doc.xpath(selector).collect do |entity_element|
          record_from_xml(entity_element)
        end
      end
      
      def parse_record(xml, model)
        doc = Nokogiri::XML(xml)

        selector = record_selector_expression(model)
        
        unless entity_element = doc.xpath(selector).first
          raise "No root element matching #{element_name} in xml"
        end

        @field_to_property = field_to_property_hash(model)
        record_from_xml(entity_element)
      end

      private
      
      attr_reader :field_to_property
      
      def field_to_property_hash(model)
        Hash[ model.properties(repository_name).map { |p| [ p.field, p ] } ]
      end
      
      def record_from_xml(entity_element)
        record = {}

        entity_element.elements.map do |element|
          field = element.name.to_s.tr('-', '_')
          property = field_to_property[field]
          
          if property.nil?
            field = snake_case(field)
            property = field_to_property[field]
          end
          
          if property.instance_of? DataMapper::Property::Object
            record[field] = walk_elements(element)
          else
            next unless property
            record[field] = property.typecast(element.text)
          end
        end
        DataMapper.logger.debug("Record from XML is returning #{record.inspect}")
        record
      end

      def record_selector_expression(model)
        selector = "/#{element_name(model)}"
        
        if ! (@record_selector.nil?  || @record_selector.empty?)
          selector = "/#{@record_selector.gsub('.','/')}"
        end
        
        selector
      end
      
      def collection_selector_expression(model)
        selector = "/#{element_name_plural(model)}/#{element_name(model)}"
        
        if ! (@collection_selector.nil?  || @collection_selector.empty?)
          selector = "/#{@collection_selector.gsub('.','/')}"
        end
        
        selector
      end
      
      def parse_array(array_element,array_property_name)
        return [] if array_element.nil?
        array_selector = build_array_selector(array_property_name)
        
        array_element.xpath(array_selector).collect do |entity_element|
          walk_elements(entity_element)
        end
      end
      
      def build_array_selector(array_property_name)
        DataMapper.logger.debug("Array selector is //#{singularize(array_property_name)}")
        "//#{singularize(array_property_name)}/*"
      end
      
      def snake_case(camel) 
        if camel == "ID"
          "id"
        else
          camel.gsub(/(.)([A-Z])/,'\1_\2').downcase
        end
      end
      
      def field_name(element)
        element.name.to_s.tr('-', '_')
      end
      
      # Assume element is an array if its first child's name is the singular of its own name.
      # Example <Goats><Goat>1</Goat><Goat>2</Goat>...</Goats> should parse [1,2]
      def array?(element)
        element.children() && field_name(element.first_element_child) == singularize(field_name(element)) 
      end
      
      def dm_property?(name)
        property = @field_to_property[name]
        property && ! property.fleeting?
      end
      
      # Walk down an XML tree starting at the entity_element and gobble up entities
      # to build a nested collection.
      def walk_elements(entity_element)        
        field = field_name(entity_element)
        
        if entity_element.element_children().empty?  
          DataMapper.logger.debug("Setting #{field} to #{entity_element.text}")
          return field => entity_element.text
        end
        
        if array?(entity_element)
          array = []
          entity_element.element_children().each do |element|
            array << walk_elements(element)
          end
          DataMapper.logger.debug("Returning ARRAY of #{array.inspect}")
          array
        else
          hash = Hash.new
          entity_element.element_children().each do |element|
            hash.merge! walk_elements(element)
          end
          
          if dm_property?(field) || dm_property?(pluralize(field)) # It is an actual property
            DataMapper.logger.debug("Returning HASH of #{hash.inspect}")
            hash
          else
            DataMapper.logger.debug("Setting #{field} to #{hash.inspect}")
            { field => hash } # Tis a fleeting property
          end
        end
      end
      
    end
  end
  end
end
