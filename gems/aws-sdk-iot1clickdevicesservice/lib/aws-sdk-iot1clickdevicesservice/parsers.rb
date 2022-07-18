# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT1ClickDevicesService
  module Parsers

    # Operation Parser for ClaimDevicesByClaimCode
    class ClaimDevicesByClaimCode
      def self.parse(http_resp)
        data = Types::ClaimDevicesByClaimCodeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.claim_code = map['claimCode']
        data.total = map['total']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DescribeDevice
    class DescribeDevice
      def self.parse(http_resp)
        data = Types::DescribeDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_description = (Parsers::DeviceDescription.parse(map['deviceDescription']) unless map['deviceDescription'].nil?)
        data
      end
    end

    class DeviceDescription
      def self.parse(map)
        data = Types::DeviceDescription.new
        data.arn = map['arn']
        data.attributes = (Parsers::DeviceAttributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.device_id = map['deviceId']
        data.enabled = map['enabled']
        data.remaining_life = Hearth::NumberHelper.deserialize(map['remainingLife'])
        data.type = map['type']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class Map____mapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DeviceAttributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for FinalizeDeviceClaim
    class FinalizeDeviceClaim
      def self.parse(http_resp)
        data = Types::FinalizeDeviceClaimOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.state = map['state']
        data
      end
    end

    # Error Parser for ResourceConflictException
    class ResourceConflictException
      def self.parse(http_resp)
        data = Types::ResourceConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for PreconditionFailedException
    class PreconditionFailedException
      def self.parse(http_resp)
        data = Types::PreconditionFailedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetDeviceMethods
    class GetDeviceMethods
      def self.parse(http_resp)
        data = Types::GetDeviceMethodsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_methods = (Parsers::List____listOfDeviceMethod.parse(map['deviceMethods']) unless map['deviceMethods'].nil?)
        data
      end
    end

    class List____listOfDeviceMethod
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DeviceMethod.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeviceMethod
      def self.parse(map)
        data = Types::DeviceMethod.new
        data.device_type = map['deviceType']
        data.method_name = map['methodName']
        return data
      end
    end

    # Operation Parser for InitiateDeviceClaim
    class InitiateDeviceClaim
      def self.parse(http_resp)
        data = Types::InitiateDeviceClaimOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.state = map['state']
        data
      end
    end

    # Operation Parser for InvokeDeviceMethod
    class InvokeDeviceMethod
      def self.parse(http_resp)
        data = Types::InvokeDeviceMethodOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_method_response = map['deviceMethodResponse']
        data
      end
    end

    # Error Parser for RangeNotSatisfiableException
    class RangeNotSatisfiableException
      def self.parse(http_resp)
        data = Types::RangeNotSatisfiableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListDeviceEvents
    class ListDeviceEvents
      def self.parse(http_resp)
        data = Types::ListDeviceEventsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.events = (Parsers::List____listOfDeviceEvent.parse(map['events']) unless map['events'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfDeviceEvent
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DeviceEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeviceEvent
      def self.parse(map)
        data = Types::DeviceEvent.new
        data.device = (Parsers::Device.parse(map['device']) unless map['device'].nil?)
        data.std_event = map['stdEvent']
        return data
      end
    end

    class Device
      def self.parse(map)
        data = Types::Device.new
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.device_id = map['deviceId']
        data.type = map['type']
        return data
      end
    end

    class Attributes
      def self.parse(map)
        data = Types::Attributes.new
        return data
      end
    end

    # Operation Parser for ListDevices
    class ListDevices
      def self.parse(http_resp)
        data = Types::ListDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.devices = (Parsers::List____listOfDeviceDescription.parse(map['devices']) unless map['devices'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfDeviceDescription
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DeviceDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
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

    # Operation Parser for UnclaimDevice
    class UnclaimDevice
      def self.parse(http_resp)
        data = Types::UnclaimDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.state = map['state']
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

    # Operation Parser for UpdateDeviceState
    class UpdateDeviceState
      def self.parse(http_resp)
        data = Types::UpdateDeviceStateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
