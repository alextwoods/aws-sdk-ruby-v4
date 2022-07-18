# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticInference
  module Params

    module AcceleratorIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AcceleratorType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorType, context: context)
        type = Types::AcceleratorType.new
        type.accelerator_type_name = params[:accelerator_type_name]
        type.memory_info = MemoryInfo.build(params[:memory_info], context: "#{context}[:memory_info]") unless params[:memory_info].nil?
        type.throughput_info = ThroughputInfoList.build(params[:throughput_info], context: "#{context}[:throughput_info]") unless params[:throughput_info].nil?
        type
      end
    end

    module AcceleratorTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AcceleratorType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AcceleratorTypeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AcceleratorTypeOffering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorTypeOffering, context: context)
        type = Types::AcceleratorTypeOffering.new
        type.accelerator_type = params[:accelerator_type]
        type.location_type = params[:location_type]
        type.location = params[:location]
        type
      end
    end

    module AcceleratorTypeOfferingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AcceleratorTypeOffering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module DescribeAcceleratorOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorOfferingsInput, context: context)
        type = Types::DescribeAcceleratorOfferingsInput.new
        type.location_type = params[:location_type]
        type.accelerator_types = AcceleratorTypeNameList.build(params[:accelerator_types], context: "#{context}[:accelerator_types]") unless params[:accelerator_types].nil?
        type
      end
    end

    module DescribeAcceleratorOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorOfferingsOutput, context: context)
        type = Types::DescribeAcceleratorOfferingsOutput.new
        type.accelerator_type_offerings = AcceleratorTypeOfferingList.build(params[:accelerator_type_offerings], context: "#{context}[:accelerator_type_offerings]") unless params[:accelerator_type_offerings].nil?
        type
      end
    end

    module DescribeAcceleratorTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorTypesInput, context: context)
        type = Types::DescribeAcceleratorTypesInput.new
        type
      end
    end

    module DescribeAcceleratorTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorTypesOutput, context: context)
        type = Types::DescribeAcceleratorTypesOutput.new
        type.accelerator_types = AcceleratorTypeList.build(params[:accelerator_types], context: "#{context}[:accelerator_types]") unless params[:accelerator_types].nil?
        type
      end
    end

    module DescribeAcceleratorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorsInput, context: context)
        type = Types::DescribeAcceleratorsInput.new
        type.accelerator_ids = AcceleratorIdList.build(params[:accelerator_ids], context: "#{context}[:accelerator_ids]") unless params[:accelerator_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAcceleratorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorsOutput, context: context)
        type = Types::DescribeAcceleratorsOutput.new
        type.accelerator_set = ElasticInferenceAcceleratorSet.build(params[:accelerator_set], context: "#{context}[:accelerator_set]") unless params[:accelerator_set].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ElasticInferenceAccelerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticInferenceAccelerator, context: context)
        type = Types::ElasticInferenceAccelerator.new
        type.accelerator_health = ElasticInferenceAcceleratorHealth.build(params[:accelerator_health], context: "#{context}[:accelerator_health]") unless params[:accelerator_health].nil?
        type.accelerator_type = params[:accelerator_type]
        type.accelerator_id = params[:accelerator_id]
        type.availability_zone = params[:availability_zone]
        type.attached_resource = params[:attached_resource]
        type
      end
    end

    module ElasticInferenceAcceleratorHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticInferenceAcceleratorHealth, context: context)
        type = Types::ElasticInferenceAcceleratorHealth.new
        type.status = params[:status]
        type
      end
    end

    module ElasticInferenceAcceleratorSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ElasticInferenceAccelerator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module KeyValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyValuePair, context: context)
        type = Types::KeyValuePair.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MemoryInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemoryInfo, context: context)
        type = Types::MemoryInfo.new
        type.size_in_mi_b = params[:size_in_mi_b]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThroughputInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module ValueStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
