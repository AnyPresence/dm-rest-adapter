module DataMapper
  class Property
            
    # Returns whether or not the property is "fleeting" which means non-persistent for our purposes
    #
    # @return [Boolean]
    #   whether or not the property is "fleeting"
    #
    # @api public
    def fleeting?
      @fleeting = @options.fetch(:fleeting, false) if @fleeting.nil?
      @fleeting
    end
    
    def assert_valid_options(options)
      keys = options.keys

      if (unknown_keys = keys - (self.class.accepted_options << :fleeting)).any?
        raise ArgumentError, "options #{unknown_keys.map { |key| key.inspect }.join(' and ')} are unknown"
      end

      options.each do |key, value|
        boolean_value = value == true || value == false

        case key
          when :field
            assert_kind_of "options[:#{key}]", value, ::String

          when :default
            if value.nil?
              raise ArgumentError, "options[:#{key}] must not be nil"
            end

          when :serial, :key, :allow_nil, :allow_blank, :required, :auto_validation
            unless boolean_value
              raise ArgumentError, "options[:#{key}] must be either true or false"
            end

            if key == :required && (keys.include?(:allow_nil) || keys.include?(:allow_blank))
              raise ArgumentError, 'options[:required] cannot be mixed with :allow_nil or :allow_blank'
            end

          when :index, :unique_index, :unique, :lazy, :fleeting
            unless boolean_value || value.kind_of?(Symbol) || (value.kind_of?(Array) && value.any? && value.all? { |val| val.kind_of?(Symbol) })
              raise ArgumentError, "options[:#{key}] must be either true, false, a Symbol or an Array of Symbols"
            end

          when :length
            assert_kind_of "options[:#{key}]", value, Range, ::Integer

          when :size, :precision, :scale
            assert_kind_of "options[:#{key}]", value, ::Integer

          when :reader, :writer, :accessor
            assert_kind_of "options[:#{key}]", value, Symbol

            unless VISIBILITY_OPTIONS.include?(value)
              raise ArgumentError, "options[:#{key}] must be #{VISIBILITY_OPTIONS.join(' or ')}"
            end
        end
      end
    end

  end # class Property
end