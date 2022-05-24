# frozen_string_literal: true

module AWS::SDK::Core
  # @api private
  class SharedConfigProvider
    def initialize(key, type: 'String')
      @key = key
      @type = type
    end

    def call(cfg)
      profile = AWS::SDK::Core.shared_config[cfg[:profile]]
      return unless profile && (value = profile[key])

      case @type
      when 'Float' then parse_float(value)
      when 'Integer' then parse_integer(value)
      when 'Boolean' then parse_boolean(value)
      else
        value
      end
    end

    private

    def parse_float(value)
      Float(value)
    rescue ArgumentError
      raise_error(value)
    end

    def parse_integer(value)
      Integer(value)
    rescue ArgumentError
      raise_error(value)
    end

    def parse_boolean(value)
      case value.downcase
      when 'true' then true
      when 'false' then false
      else raise_error(value)
      end
    end

    def raise_error(value)
      raise ArgumentError,
            "Expected shared config #{@key} to be a #{@type}, got #{value}."
    end
  end
end
