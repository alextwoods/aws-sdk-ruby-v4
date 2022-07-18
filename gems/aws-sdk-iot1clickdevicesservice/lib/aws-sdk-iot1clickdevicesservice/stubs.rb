# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT1ClickDevicesService
  module Stubs

    # Operation Stubber for ClaimDevicesByClaimCode
    class ClaimDevicesByClaimCode
      def self.default(visited=[])
        {
          claim_code: 'claim_code',
          total: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['claimCode'] = stub[:claim_code] unless stub[:claim_code].nil?
        data['total'] = stub[:total] unless stub[:total].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDevice
    class DescribeDevice
      def self.default(visited=[])
        {
          device_description: DeviceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deviceDescription'] = Stubs::DeviceDescription.stub(stub[:device_description]) unless stub[:device_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DeviceDescription
    class DeviceDescription
      def self.default(visited=[])
        return nil if visited.include?('DeviceDescription')
        visited = visited + ['DeviceDescription']
        {
          arn: 'arn',
          attributes: DeviceAttributes.default(visited),
          device_id: 'device_id',
          enabled: false,
          remaining_life: 1.0,
          type: 'type',
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceDescription.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['attributes'] = Stubs::DeviceAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['deviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['remainingLife'] = Hearth::NumberHelper.serialize(stub[:remaining_life])
        data['type'] = stub[:type] unless stub[:type].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for __mapOf__string
    class Map____mapOf__string
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOf__string')
        visited = visited + ['Map____mapOf__string']
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

    # Map Stubber for DeviceAttributes
    class DeviceAttributes
      def self.default(visited=[])
        return nil if visited.include?('DeviceAttributes')
        visited = visited + ['DeviceAttributes']
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

    # Operation Stubber for FinalizeDeviceClaim
    class FinalizeDeviceClaim
      def self.default(visited=[])
        {
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDeviceMethods
    class GetDeviceMethods
      def self.default(visited=[])
        {
          device_methods: List____listOfDeviceMethod.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deviceMethods'] = Stubs::List____listOfDeviceMethod.stub(stub[:device_methods]) unless stub[:device_methods].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfDeviceMethod
    class List____listOfDeviceMethod
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDeviceMethod')
        visited = visited + ['List____listOfDeviceMethod']
        [
          DeviceMethod.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeviceMethod.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceMethod
    class DeviceMethod
      def self.default(visited=[])
        return nil if visited.include?('DeviceMethod')
        visited = visited + ['DeviceMethod']
        {
          device_type: 'device_type',
          method_name: 'method_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceMethod.new
        data = {}
        data['deviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data['methodName'] = stub[:method_name] unless stub[:method_name].nil?
        data
      end
    end

    # Operation Stubber for InitiateDeviceClaim
    class InitiateDeviceClaim
      def self.default(visited=[])
        {
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for InvokeDeviceMethod
    class InvokeDeviceMethod
      def self.default(visited=[])
        {
          device_method_response: 'device_method_response',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deviceMethodResponse'] = stub[:device_method_response] unless stub[:device_method_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDeviceEvents
    class ListDeviceEvents
      def self.default(visited=[])
        {
          events: List____listOfDeviceEvent.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['events'] = Stubs::List____listOfDeviceEvent.stub(stub[:events]) unless stub[:events].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfDeviceEvent
    class List____listOfDeviceEvent
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDeviceEvent')
        visited = visited + ['List____listOfDeviceEvent']
        [
          DeviceEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeviceEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceEvent
    class DeviceEvent
      def self.default(visited=[])
        return nil if visited.include?('DeviceEvent')
        visited = visited + ['DeviceEvent']
        {
          device: Device.default(visited),
          std_event: 'std_event',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceEvent.new
        data = {}
        data['device'] = Stubs::Device.stub(stub[:device]) unless stub[:device].nil?
        data['stdEvent'] = stub[:std_event] unless stub[:std_event].nil?
        data
      end
    end

    # Structure Stubber for Device
    class Device
      def self.default(visited=[])
        return nil if visited.include?('Device')
        visited = visited + ['Device']
        {
          attributes: Attributes.default(visited),
          device_id: 'device_id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Device.new
        data = {}
        data['attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['deviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::Attributes.new
        data = {}
        data
      end
    end

    # Operation Stubber for ListDevices
    class ListDevices
      def self.default(visited=[])
        {
          devices: List____listOfDeviceDescription.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['devices'] = Stubs::List____listOfDeviceDescription.stub(stub[:devices]) unless stub[:devices].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfDeviceDescription
    class List____listOfDeviceDescription
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDeviceDescription')
        visited = visited + ['List____listOfDeviceDescription']
        [
          DeviceDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeviceDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UnclaimDevice
    class UnclaimDevice
      def self.default(visited=[])
        {
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateDeviceState
    class UpdateDeviceState
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
