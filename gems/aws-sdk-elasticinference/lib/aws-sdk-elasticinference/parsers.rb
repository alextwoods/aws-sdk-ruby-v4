# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticInference
  module Parsers

    # Operation Parser for DescribeAcceleratorOfferings
    class DescribeAcceleratorOfferings
      def self.parse(http_resp)
        data = Types::DescribeAcceleratorOfferingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.accelerator_type_offerings = (AcceleratorTypeOfferingList.parse(map['acceleratorTypeOfferings']) unless map['acceleratorTypeOfferings'].nil?)
        data
      end
    end

    class AcceleratorTypeOfferingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AcceleratorTypeOffering.parse(value) unless value.nil?
        end
        data
      end
    end

    class AcceleratorTypeOffering
      def self.parse(map)
        data = Types::AcceleratorTypeOffering.new
        data.accelerator_type = map['acceleratorType']
        data.location_type = map['locationType']
        data.location = map['location']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DescribeAcceleratorTypes
    class DescribeAcceleratorTypes
      def self.parse(http_resp)
        data = Types::DescribeAcceleratorTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.accelerator_types = (AcceleratorTypeList.parse(map['acceleratorTypes']) unless map['acceleratorTypes'].nil?)
        data
      end
    end

    class AcceleratorTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AcceleratorType.parse(value) unless value.nil?
        end
        data
      end
    end

    class AcceleratorType
      def self.parse(map)
        data = Types::AcceleratorType.new
        data.accelerator_type_name = map['acceleratorTypeName']
        data.memory_info = (MemoryInfo.parse(map['memoryInfo']) unless map['memoryInfo'].nil?)
        data.throughput_info = (ThroughputInfoList.parse(map['throughputInfo']) unless map['throughputInfo'].nil?)
        return data
      end
    end

    class ThroughputInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << KeyValuePair.parse(value) unless value.nil?
        end
        data
      end
    end

    class KeyValuePair
      def self.parse(map)
        data = Types::KeyValuePair.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class MemoryInfo
      def self.parse(map)
        data = Types::MemoryInfo.new
        data.size_in_mi_b = map['sizeInMiB']
        return data
      end
    end

    # Operation Parser for DescribeAccelerators
    class DescribeAccelerators
      def self.parse(http_resp)
        data = Types::DescribeAcceleratorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.accelerator_set = (ElasticInferenceAcceleratorSet.parse(map['acceleratorSet']) unless map['acceleratorSet'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ElasticInferenceAcceleratorSet
      def self.parse(list)
        data = []
        list.map do |value|
          data << ElasticInferenceAccelerator.parse(value) unless value.nil?
        end
        data
      end
    end

    class ElasticInferenceAccelerator
      def self.parse(map)
        data = Types::ElasticInferenceAccelerator.new
        data.accelerator_health = (ElasticInferenceAcceleratorHealth.parse(map['acceleratorHealth']) unless map['acceleratorHealth'].nil?)
        data.accelerator_type = map['acceleratorType']
        data.accelerator_id = map['acceleratorId']
        data.availability_zone = map['availabilityZone']
        data.attached_resource = map['attachedResource']
        return data
      end
    end

    class ElasticInferenceAcceleratorHealth
      def self.parse(map)
        data = Types::ElasticInferenceAcceleratorHealth.new
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
