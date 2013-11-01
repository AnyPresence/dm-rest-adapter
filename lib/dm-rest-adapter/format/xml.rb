module DataMapper
  module Adapters
    
  module Format
    class Xml < AbstractFormat
      
      attr_accessor :override_default_xml_collection_selector, :override_default_xml_record_selector
      
      def default_options
        DataMapper::Mash.new({ :mime => "application/xml", :extension => "xml" })
      end
      
      def initialize(options={})
        super
        @override_default_xml_collection_selector = options[:override_default_xml_collection_selector] if options[:override_default_xml_collection_selector]
        @override_default_xml_record_selector = options[:override_default_xml_record_selector] if options[:override_default_xml_record_selector]
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

        field_to_property = Hash[ model.properties(repository_name).map { |p| [ p.field, p ] } ]

        selector = collection_selector_expression(model)
        
        doc.xpath(selector).collect do |entity_element|
          record_from_rexml(entity_element, field_to_property)
        end
      end
      
      def parse_record(xml, model)
        doc = Nokogiri::XML(xml)

        selector = record_selector_expression(model)
        
        unless entity_element = doc.xpath(selector).first
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
          property = field_to_property[field]
          if property.nil?
            field = snake_case(field)
            property = field_to_property[field]
          end
          if property.instance_of? DataMapper::Property::Object
            record[field] = parse_array(element.to_s,element.name.to_s.tr('-', '_'))
          else
            next unless property
            record[field] = property.typecast(element.text)
          end
        end

        record
      end

      def record_selector_expression(model)
        selector = "/#{element_name(model)}"
        
        if !@record_selector.nil? && !@record_selector.empty?
          if !@override_default_xml_record_selector
            selector = "/#{@record_selector.gsub('.','/')}#{selector}"
          else
            selector = @record_selector.gsub('.','/')
          end
        end
        
        selector
      end
      
      def collection_selector_expression(model)
        selector = "/#{element_name_plural(model)}/#{element_name(model)}"
                
        if !@collection_selector.nil? && !@collection_selector.empty?
          if !@override_default_xml_collection_selector
            selector = "/#{@collection_selector.gsub('.','/')}#{selector}"
          else
            selector = @collection_selector.gsub('.','/')
          end
        end
        
        selector
      end
      
      def parse_array(array_element,array_property_name)
        return [] if array_element.nil?
        objects = []
        array_selector = build_array_selector(array_property_name)

        Nokogiri::XML(array_element).xpath(array_selector).collect do |entity_element|
          hash = Hash.new
          hash = walk_elements(entity_element)
          objects << hash
        end
        objects
      end
      
      def build_array_selector(array_property_name)
        "/#{DataMapper::Inflector.pluralize(array_property_name)}/#{DataMapper::Inflector.singularize(array_property_name)}|/#{DataMapper::Inflector.singularize(array_property_name)}"
      end
      
      def snake_case(camel) 
        if camel == "ID"
          "id"
        else
          camel.gsub(/(.)([A-Z])/,'\1_\2').downcase
        end
      end
      
      # Walk down an XML tree starting at the entity_element and gobble up entities
      # to build a nested hash.
      def walk_elements(entity_element)        
        
        if entity_element.element_children().empty?
          field = entity_element.name.to_s.tr('-', '_')
          value = entity_element.text
          return { snake_case(field) => value }
        end

        hash = Hash.new
        
        entity_element.element_children().map do |element|
          hash.merge! walk_elements(element)
        end
        
        hash
      end
    end
  end
  end
end
