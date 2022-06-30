# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pricing
  module Validators

    class AttributeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AttributeValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttributeValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServicesInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:format_version], ::String, context: "#{context}[:format_version]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServicesOutput, context: context)
        Validators::ServiceList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        Hearth::Validator.validate!(input[:format_version], ::String, context: "#{context}[:format_version]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ExpiredNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAttributeValuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttributeValuesInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetAttributeValuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttributeValuesOutput, context: context)
        Validators::AttributeValueList.validate!(input[:attribute_values], context: "#{context}[:attribute_values]") unless input[:attribute_values].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetProductsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProductsInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Validators::Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:format_version], ::String, context: "#{context}[:format_version]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetProductsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProductsOutput, context: context)
        Hearth::Validator.validate!(input[:format_version], ::String, context: "#{context}[:format_version]")
        Validators::PriceList.validate!(input[:price_list], context: "#{context}[:price_list]") unless input[:price_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class InternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PriceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Service
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Service, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Validators::AttributeNameList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
      end
    end

    class ServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Service.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
