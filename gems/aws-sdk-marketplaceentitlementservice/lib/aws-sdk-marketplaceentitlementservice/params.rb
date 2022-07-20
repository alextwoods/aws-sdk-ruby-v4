# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceEntitlementService
  module Params

    module Entitlement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Entitlement, context: context)
        type = Types::Entitlement.new
        type.product_code = params[:product_code]
        type.dimension = params[:dimension]
        type.customer_identifier = params[:customer_identifier]
        type.value = EntitlementValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.expiration_date = params[:expiration_date]
        type
      end
    end

    module EntitlementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Entitlement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntitlementValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::EntitlementValue)
        Hearth::Validator.validate!(params, ::Hash, Types::EntitlementValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :integer_value
          Types::EntitlementValue::IntegerValue.new(
            params[:integer_value]
          )
        when :double_value
          Types::EntitlementValue::DoubleValue.new(
            params[:double_value]
          )
        when :boolean_value
          Types::EntitlementValue::BooleanValue.new(
            params[:boolean_value]
          )
        when :string_value
          Types::EntitlementValue::StringValue.new(
            params[:string_value]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :integer_value, :double_value, :boolean_value, :string_value set"
        end
      end
    end

    module FilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetEntitlementFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FilterValueList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module GetEntitlementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEntitlementsInput, context: context)
        type = Types::GetEntitlementsInput.new
        type.product_code = params[:product_code]
        type.filter = GetEntitlementFilters.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetEntitlementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEntitlementsOutput, context: context)
        type = Types::GetEntitlementsOutput.new
        type.entitlements = EntitlementList.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module InternalServiceErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceErrorException, context: context)
        type = Types::InternalServiceErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

  end
end
