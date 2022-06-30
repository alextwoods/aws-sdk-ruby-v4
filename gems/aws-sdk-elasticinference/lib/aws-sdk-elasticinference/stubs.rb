# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticInference
  module Stubs

    # Operation Stubber for DescribeAcceleratorOfferings
    class DescribeAcceleratorOfferings
      def self.default(visited=[])
        {
          accelerator_type_offerings: Stubs::AcceleratorTypeOfferingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['acceleratorTypeOfferings'] = Stubs::AcceleratorTypeOfferingList.stub(stub[:accelerator_type_offerings]) unless stub[:accelerator_type_offerings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AcceleratorTypeOfferingList
    class AcceleratorTypeOfferingList
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorTypeOfferingList')
        visited = visited + ['AcceleratorTypeOfferingList']
        [
          Stubs::AcceleratorTypeOffering.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AcceleratorTypeOffering.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AcceleratorTypeOffering
    class AcceleratorTypeOffering
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorTypeOffering')
        visited = visited + ['AcceleratorTypeOffering']
        {
          accelerator_type: 'accelerator_type',
          location_type: 'location_type',
          location: 'location',
        }
      end

      def self.stub(stub)
        stub ||= Types::AcceleratorTypeOffering.new
        data = {}
        data['acceleratorType'] = stub[:accelerator_type] unless stub[:accelerator_type].nil?
        data['locationType'] = stub[:location_type] unless stub[:location_type].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data
      end
    end

    # Operation Stubber for DescribeAcceleratorTypes
    class DescribeAcceleratorTypes
      def self.default(visited=[])
        {
          accelerator_types: Stubs::AcceleratorTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['acceleratorTypes'] = Stubs::AcceleratorTypeList.stub(stub[:accelerator_types]) unless stub[:accelerator_types].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AcceleratorTypeList
    class AcceleratorTypeList
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorTypeList')
        visited = visited + ['AcceleratorTypeList']
        [
          Stubs::AcceleratorType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AcceleratorType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AcceleratorType
    class AcceleratorType
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorType')
        visited = visited + ['AcceleratorType']
        {
          accelerator_type_name: 'accelerator_type_name',
          memory_info: Stubs::MemoryInfo.default(visited),
          throughput_info: Stubs::ThroughputInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AcceleratorType.new
        data = {}
        data['acceleratorTypeName'] = stub[:accelerator_type_name] unless stub[:accelerator_type_name].nil?
        data['memoryInfo'] = Stubs::MemoryInfo.stub(stub[:memory_info]) unless stub[:memory_info].nil?
        data['throughputInfo'] = Stubs::ThroughputInfoList.stub(stub[:throughput_info]) unless stub[:throughput_info].nil?
        data
      end
    end

    # List Stubber for ThroughputInfoList
    class ThroughputInfoList
      def self.default(visited=[])
        return nil if visited.include?('ThroughputInfoList')
        visited = visited + ['ThroughputInfoList']
        [
          Stubs::KeyValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeyValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeyValuePair
    class KeyValuePair
      def self.default(visited=[])
        return nil if visited.include?('KeyValuePair')
        visited = visited + ['KeyValuePair']
        {
          key: 'key',
          value: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyValuePair.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for MemoryInfo
    class MemoryInfo
      def self.default(visited=[])
        return nil if visited.include?('MemoryInfo')
        visited = visited + ['MemoryInfo']
        {
          size_in_mi_b: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MemoryInfo.new
        data = {}
        data['sizeInMiB'] = stub[:size_in_mi_b] unless stub[:size_in_mi_b].nil?
        data
      end
    end

    # Operation Stubber for DescribeAccelerators
    class DescribeAccelerators
      def self.default(visited=[])
        {
          accelerator_set: Stubs::ElasticInferenceAcceleratorSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['acceleratorSet'] = Stubs::ElasticInferenceAcceleratorSet.stub(stub[:accelerator_set]) unless stub[:accelerator_set].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ElasticInferenceAcceleratorSet
    class ElasticInferenceAcceleratorSet
      def self.default(visited=[])
        return nil if visited.include?('ElasticInferenceAcceleratorSet')
        visited = visited + ['ElasticInferenceAcceleratorSet']
        [
          Stubs::ElasticInferenceAccelerator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ElasticInferenceAccelerator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ElasticInferenceAccelerator
    class ElasticInferenceAccelerator
      def self.default(visited=[])
        return nil if visited.include?('ElasticInferenceAccelerator')
        visited = visited + ['ElasticInferenceAccelerator']
        {
          accelerator_health: Stubs::ElasticInferenceAcceleratorHealth.default(visited),
          accelerator_type: 'accelerator_type',
          accelerator_id: 'accelerator_id',
          availability_zone: 'availability_zone',
          attached_resource: 'attached_resource',
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticInferenceAccelerator.new
        data = {}
        data['acceleratorHealth'] = Stubs::ElasticInferenceAcceleratorHealth.stub(stub[:accelerator_health]) unless stub[:accelerator_health].nil?
        data['acceleratorType'] = stub[:accelerator_type] unless stub[:accelerator_type].nil?
        data['acceleratorId'] = stub[:accelerator_id] unless stub[:accelerator_id].nil?
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['attachedResource'] = stub[:attached_resource] unless stub[:attached_resource].nil?
        data
      end
    end

    # Structure Stubber for ElasticInferenceAcceleratorHealth
    class ElasticInferenceAcceleratorHealth
      def self.default(visited=[])
        return nil if visited.include?('ElasticInferenceAcceleratorHealth')
        visited = visited + ['ElasticInferenceAcceleratorHealth']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticInferenceAcceleratorHealth.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
