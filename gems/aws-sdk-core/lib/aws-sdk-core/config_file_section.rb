# frozen_string_literal: true

module AWS::SDK::Core
  # Raised when a profile file (~/.aws/config or ~/.aws/credentials) is invalid.
  class InvalidSharedConfigError < RuntimeError; end

  # A PORO for a profile in a profile file. It may have properties.
  class ConfigFileSection
    def initialize(name, properties = {})
      @name = name
      @properties = {}
      update_properties(properties)
    end

    attr_reader :name, :properties

    def update_properties(new_values)
      new_values.each do |key, value|
        if @properties.key?(key)
          Kernel.warn(
            "Warning: Duplicate property '#{key}' detected in " \
            "section #{@name}. One value will be ignored."
          )
        end
        @properties[key] = value
      end
    end

    def to_h
      @properties.transform_values(&:to_h)
    end

    # A PORO for a property in a profile. It may have sub-properties.
    # @api private
    class ConfigFileProperty
      attr_reader :name, :value

      def initialize(name, value)
        @name = name
        @value = value.start_with?("\n") ? parse_sub_properties(value) : value
      end

      def to_h
        if @value.is_a?(String)
          @value
        else
          @value.transform_values(&:to_h)
        end
      end

      private

      # rubocop:disable Metrics/MethodLength
      def parse_sub_properties(value)
        sub_properties = {}
        value.split(/[\r\n]+/).each do |raw_sub_property_line|
          next if ConfigFileUtils.empty_line?(raw_sub_property_line)

          left, right = ConfigFileUtils.parse_property_definition_line(
            raw_sub_property_line,
            "in sub-property of #{@name}"
          )
          unless ConfigFileUtils.valid_identifier?(left)
            Kernel.warn(
              "Ignoring property '#{left}' in property '#{@name}' because " \
              'its name was not alphanumeric with dashes or underscores.'
            )
            next
          end

          if sub_properties.key?(left)
            Kernel.warn(
              "Warning: Duplicate sub-property '#{left}' detected in " \
              "property '#{@name}'. The later one in the file will be used."
            )
          end

          sub_properties[left] = ConfigFileProperty.new(left, right)
        end
        sub_properties
      end
      # rubocop:enable Metrics/MethodLength
    end
  end
end
