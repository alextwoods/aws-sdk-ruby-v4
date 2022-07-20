# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MarketplaceEntitlementService
  module Validators

    class Entitlement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Entitlement, context: context)
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        Hearth::Validator.validate!(input[:dimension], ::String, context: "#{context}[:dimension]")
        Hearth::Validator.validate!(input[:customer_identifier], ::String, context: "#{context}[:customer_identifier]")
        EntitlementValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
      end
    end

    class EntitlementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Entitlement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntitlementValue
      def self.validate!(input, context:)
        case input
        when Types::EntitlementValue::IntegerValue
          Hearth::Validator.validate!(input.__getobj__, ::Integer, context: context)
        when Types::EntitlementValue::DoubleValue
          Hearth::Validator.validate!(input.__getobj__, ::Float, context: context)
        when Types::EntitlementValue::BooleanValue
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::EntitlementValue::StringValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::EntitlementValue, got #{input.class}."
        end
      end

      class IntegerValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Integer, context: context)
        end
      end

      class DoubleValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Float, context: context)
        end
      end

      class BooleanValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class StringValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class FilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetEntitlementFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          FilterValueList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class GetEntitlementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEntitlementsInput, context: context)
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        GetEntitlementFilters.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetEntitlementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEntitlementsOutput, context: context)
        EntitlementList.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class InternalServiceErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
