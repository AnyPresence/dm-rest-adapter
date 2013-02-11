module DataMapperRest
  module Format
    class Xml < AbstractFormat
      def default_options
        DataMapper::Mash.new({ :mime => "application/xml", :extension => "xml" })
      end
      
      def string_representation(resource)
        resource.to_xml
      end
      
      def parse_collection(xml, model)
        doc = REXML::Document::new(xml)

        field_to_property = Hash[ model.properties(repository_name).map { |p| [ p.field, p ] } ]
        
        selector = collection_selector_expression(model)        
        
        doc.elements.collect(selector) do |entity_element|
          record_from_rexml(entity_element, field_to_property)
        end
      end
      
      def parse_record(xml, model)
        doc = REXML::Document::new(xml)

        selector = record_selector_expression(model)
        
        unless entity_element = REXML::XPath.first(doc, selector)
          raise "No root element matching #{element_name} in xml"
        end

        field_to_property = Hash[ properties(model).map { |p| [ p.field, p ] } ]
        record_from_rexml(entity_element, field_to_property)
      end

      private
      
      def record_from_rexml(entity_element, field_to_property)
        record = {}

        entity_element.elements.map do |element|
          field = element.name.to_s.tr('-', '_')
          next unless property = field_to_property[field]
          record[field] = property.typecast(element.text)
        end

        record
      end

      def record_selector_expression(model)
        selector = "/#{element_name(model)}"
        
        if @record_selector
          selector = "/#{@record_selector.gsub('.','/')}#{selector}"
        end
        
        selector
      end
      
      def collection_selector_expression(model)
        selector = "/#{element_name_plural(model)}/#{element_name(model)}"
        
        if @collection_selector
          selector = "/#{@collection_selector.gsub('.','/')}#{selector}"
        end
        
        selector
      end
    end
  end
end
