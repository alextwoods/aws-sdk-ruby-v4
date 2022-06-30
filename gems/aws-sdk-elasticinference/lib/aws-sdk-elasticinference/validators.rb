# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticInference
  module Validators

    class AcceleratorIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AcceleratorType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorType, context: context)
        Hearth::Validator.validate!(input[:accelerator_type_name], ::String, context: "#{context}[:accelerator_type_name]")
        Validators::MemoryInfo.validate!(input[:memory_info], context: "#{context}[:memory_info]") unless input[:memory_info].nil?
        Validators::ThroughputInfoList.validate!(input[:throughput_info], context: "#{context}[:throughput_info]") unless input[:throughput_info].nil?
      end
    end

    class AcceleratorTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AcceleratorType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AcceleratorTypeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AcceleratorTypeOffering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorTypeOffering, context: context)
        Hearth::Validator.validate!(input[:accelerator_type], ::String, context: "#{context}[:accelerator_type]")
        Hearth::Validator.validate!(input[:location_type], ::String, context: "#{context}[:location_type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class AcceleratorTypeOfferingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AcceleratorTypeOffering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DescribeAcceleratorOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:location_type], ::String, context: "#{context}[:location_type]")
        Validators::AcceleratorTypeNameList.validate!(input[:accelerator_types], context: "#{context}[:accelerator_types]") unless input[:accelerator_types].nil?
      end
    end

    class DescribeAcceleratorOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorOfferingsOutput, context: context)
        Validators::AcceleratorTypeOfferingList.validate!(input[:accelerator_type_offerings], context: "#{context}[:accelerator_type_offerings]") unless input[:accelerator_type_offerings].nil?
      end
    end

    class DescribeAcceleratorTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorTypesInput, context: context)
      end
    end

    class DescribeAcceleratorTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorTypesOutput, context: context)
        Validators::AcceleratorTypeList.validate!(input[:accelerator_types], context: "#{context}[:accelerator_types]") unless input[:accelerator_types].nil?
      end
    end

    class DescribeAcceleratorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorsInput, context: context)
        Validators::AcceleratorIdList.validate!(input[:accelerator_ids], context: "#{context}[:accelerator_ids]") unless input[:accelerator_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAcceleratorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorsOutput, context: context)
        Validators::ElasticInferenceAcceleratorSet.validate!(input[:accelerator_set], context: "#{context}[:accelerator_set]") unless input[:accelerator_set].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ElasticInferenceAccelerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticInferenceAccelerator, context: context)
        Validators::ElasticInferenceAcceleratorHealth.validate!(input[:accelerator_health], context: "#{context}[:accelerator_health]") unless input[:accelerator_health].nil?
        Hearth::Validator.validate!(input[:accelerator_type], ::String, context: "#{context}[:accelerator_type]")
        Hearth::Validator.validate!(input[:accelerator_id], ::String, context: "#{context}[:accelerator_id]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:attached_resource], ::String, context: "#{context}[:attached_resource]")
      end
    end

    class ElasticInferenceAcceleratorHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticInferenceAcceleratorHealth, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ElasticInferenceAcceleratorSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ElasticInferenceAccelerator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyValuePair, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MemoryInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemoryInfo, context: context)
        Hearth::Validator.validate!(input[:size_in_mi_b], ::Integer, context: "#{context}[:size_in_mi_b]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThroughputInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class ValueStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
