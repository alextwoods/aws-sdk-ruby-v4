# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Pricing
  module Params

    module AttributeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeValue, context: context)
        type = Types::AttributeValue.new
        type.value = params[:value]
        type
      end
    end

    module AttributeValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServicesInput, context: context)
        type = Types::DescribeServicesInput.new
        type.service_code = params[:service_code]
        type.format_version = params[:format_version]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServicesOutput, context: context)
        type = Types::DescribeServicesOutput.new
        type.services = ServiceList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.format_version = params[:format_version]
        type.next_token = params[:next_token]
        type
      end
    end

    module ExpiredNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredNextTokenException, context: context)
        type = Types::ExpiredNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.type = params[:type]
        type.field = params[:field]
        type.value = params[:value]
        type
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAttributeValuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttributeValuesInput, context: context)
        type = Types::GetAttributeValuesInput.new
        type.service_code = params[:service_code]
        type.attribute_name = params[:attribute_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetAttributeValuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttributeValuesOutput, context: context)
        type = Types::GetAttributeValuesOutput.new
        type.attribute_values = AttributeValueList.build(params[:attribute_values], context: "#{context}[:attribute_values]") unless params[:attribute_values].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetProductsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProductsInput, context: context)
        type = Types::GetProductsInput.new
        type.service_code = params[:service_code]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.format_version = params[:format_version]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetProductsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProductsOutput, context: context)
        type = Types::GetProductsOutput.new
        type.format_version = params[:format_version]
        type.price_list = PriceList.build(params[:price_list], context: "#{context}[:price_list]") unless params[:price_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module InternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalErrorException, context: context)
        type = Types::InternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
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

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PriceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Service
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Service, context: context)
        type = Types::Service.new
        type.service_code = params[:service_code]
        type.attribute_names = AttributeNameList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type
      end
    end

    module ServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Service.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
