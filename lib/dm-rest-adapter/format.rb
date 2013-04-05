module DataMapperRest
  module Format
    class AbstractFormat
  	  attr_accessor :extension, :mime, :repository_name, :record_selector, :collection_selector

      def initialize(options = {})
        options = default_options.merge(options)
        @extension = options[:extension]
        @extension = nil if @extension == "" # consider blank extension as not present
        @mime = options[:mime]
        @repository_name = options.fetch(:repository_name, :default)
        @record_selector = options[:record_selector] if options[:record_selector]
        @collection_selector = options[:collection_selector] if options[:collection_selector]
      end

      def default_options
        DataMapper::Mash.new
      end

      def resource_name(model)
        model.respond_to?(:storage_name) ? model.storage_name(repository_name) : model
      end

      def resource_path(*path_fragments)
        path = path_fragments.reduce("") do |memo, fragment|
          model = fragment[:model]
          key   = fragment[:key]
          name = resource_name(model)
          memo << "#{name}/" if name
          memo << "#{key}/" if key
          memo
        end.chomp("/")
        
        path = "#{path}.#{extension}" if extension
        
        path
      end
      
      def properties_to_serialize(resource)
        model = resource.model
        model.properties + model.relationships.reject{ |r| r.source_key == model.key }.collect{ |r| r.source_key }.flatten
      end
                  
      def update_attributes(resource, body)
        return if DataMapper::Ext.blank?(body)
        fields = {}
        model      = resource.model
        properties = model.properties(repository_name)

        properties.each do |prop| 
          fields[prop.field.to_sym] = prop.name.to_sym 
        end
        
        parse_record(body, model).each do |key, value|
          if property = properties[fields[key.to_sym]]
            property.set!(resource, value)
          end
        end
      end
      
      def element_name(model)
        DataMapper::Inflector.singularize(resource_name(model))
      end
      
      def element_name_plural(model)
        DataMapper::Inflector.pluralize(resource_name(model))
      end
      
      def properties(model)
        model.properties(model.default_repository_name)
      end
      
      def string_representation(resource)
        raise NotImplementedError,
          "#{self.class}#string_representation not implemented"
      end
      
      def parse_collection(body, model)
        raise NotImplementedError,
          "#{self.class}#parse_collection not implemented"
      end
      
      def parse_record(body, model)
        raise NotImplementedError,
          "#{self.class}#parse_record not implemented"
      end
      
      def record_selector_expression(model)
        raise NotImplementedError,
          "#{self.class}#record_selector_expression not implemented"
      end
      
      def collection_selector_expression(model)
        raise NotImplementedError,
          "#{self.class}#collection_selector_expression not implemented"
      end
    end
  end
end
