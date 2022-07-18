# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::IoT1ClickDevicesService
  module Validators

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attributes, context: context)
      end
    end

    class ClaimDevicesByClaimCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClaimDevicesByClaimCodeInput, context: context)
        Hearth::Validator.validate!(input[:claim_code], ::String, context: "#{context}[:claim_code]")
      end
    end

    class ClaimDevicesByClaimCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClaimDevicesByClaimCodeOutput, context: context)
        Hearth::Validator.validate!(input[:claim_code], ::String, context: "#{context}[:claim_code]")
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
      end
    end

    class DescribeDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class DescribeDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceOutput, context: context)
        DeviceDescription.validate!(input[:device_description], context: "#{context}[:device_description]") unless input[:device_description].nil?
      end
    end

    class Device
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Device, context: context)
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DeviceAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DeviceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceDescription, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        DeviceAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:remaining_life], ::Float, context: "#{context}[:remaining_life]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeviceEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceEvent, context: context)
        Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
        Hearth::Validator.validate!(input[:std_event], ::String, context: "#{context}[:std_event]")
      end
    end

    class DeviceMethod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceMethod, context: context)
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        Hearth::Validator.validate!(input[:method_name], ::String, context: "#{context}[:method_name]")
      end
    end

    class FinalizeDeviceClaimInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FinalizeDeviceClaimInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class FinalizeDeviceClaimOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FinalizeDeviceClaimOutput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetDeviceMethodsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceMethodsInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class GetDeviceMethodsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceMethodsOutput, context: context)
        List____listOfDeviceMethod.validate!(input[:device_methods], context: "#{context}[:device_methods]") unless input[:device_methods].nil?
      end
    end

    class InitiateDeviceClaimInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateDeviceClaimInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class InitiateDeviceClaimOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateDeviceClaimOutput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvokeDeviceMethodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeDeviceMethodInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        DeviceMethod.validate!(input[:device_method], context: "#{context}[:device_method]") unless input[:device_method].nil?
        Hearth::Validator.validate!(input[:device_method_parameters], ::String, context: "#{context}[:device_method_parameters]")
      end
    end

    class InvokeDeviceMethodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeDeviceMethodOutput, context: context)
        Hearth::Validator.validate!(input[:device_method_response], ::String, context: "#{context}[:device_method_response]")
      end
    end

    class ListDeviceEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceEventsInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:from_time_stamp], ::Time, context: "#{context}[:from_time_stamp]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:to_time_stamp], ::Time, context: "#{context}[:to_time_stamp]")
      end
    end

    class ListDeviceEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceEventsOutput, context: context)
        List____listOfDeviceEvent.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesInput, context: context)
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesOutput, context: context)
        List____listOfDeviceDescription.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PreconditionFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionFailedException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RangeNotSatisfiableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RangeNotSatisfiableException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UnclaimDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnclaimDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class UnclaimDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnclaimDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDeviceStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceStateInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateDeviceStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceStateOutput, context: context)
      end
    end

    class List____listOfDeviceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDeviceEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDeviceMethod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceMethod.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Map____mapOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
