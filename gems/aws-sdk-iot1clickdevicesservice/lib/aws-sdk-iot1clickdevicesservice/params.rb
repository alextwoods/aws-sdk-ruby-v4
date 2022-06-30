# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoT1ClickDevicesService
  module Params

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attributes, context: context)
        type = Types::Attributes.new
        type
      end
    end

    module ClaimDevicesByClaimCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClaimDevicesByClaimCodeInput, context: context)
        type = Types::ClaimDevicesByClaimCodeInput.new
        type.claim_code = params[:claim_code]
        type
      end
    end

    module ClaimDevicesByClaimCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClaimDevicesByClaimCodeOutput, context: context)
        type = Types::ClaimDevicesByClaimCodeOutput.new
        type.claim_code = params[:claim_code]
        type.total = params[:total]
        type
      end
    end

    module DescribeDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceInput, context: context)
        type = Types::DescribeDeviceInput.new
        type.device_id = params[:device_id]
        type
      end
    end

    module DescribeDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceOutput, context: context)
        type = Types::DescribeDeviceOutput.new
        type.device_description = DeviceDescription.build(params[:device_description], context: "#{context}[:device_description]") unless params[:device_description].nil?
        type
      end
    end

    module Device
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Device, context: context)
        type = Types::Device.new
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.device_id = params[:device_id]
        type.type = params[:type]
        type
      end
    end

    module DeviceAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DeviceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceDescription, context: context)
        type = Types::DeviceDescription.new
        type.arn = params[:arn]
        type.attributes = DeviceAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.device_id = params[:device_id]
        type.enabled = params[:enabled]
        type.remaining_life = params[:remaining_life]
        type.type = params[:type]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeviceEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceEvent, context: context)
        type = Types::DeviceEvent.new
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type.std_event = params[:std_event]
        type
      end
    end

    module DeviceMethod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceMethod, context: context)
        type = Types::DeviceMethod.new
        type.device_type = params[:device_type]
        type.method_name = params[:method_name]
        type
      end
    end

    module FinalizeDeviceClaimInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FinalizeDeviceClaimInput, context: context)
        type = Types::FinalizeDeviceClaimInput.new
        type.device_id = params[:device_id]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module FinalizeDeviceClaimOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FinalizeDeviceClaimOutput, context: context)
        type = Types::FinalizeDeviceClaimOutput.new
        type.state = params[:state]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module GetDeviceMethodsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceMethodsInput, context: context)
        type = Types::GetDeviceMethodsInput.new
        type.device_id = params[:device_id]
        type
      end
    end

    module GetDeviceMethodsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceMethodsOutput, context: context)
        type = Types::GetDeviceMethodsOutput.new
        type.device_methods = List____listOfDeviceMethod.build(params[:device_methods], context: "#{context}[:device_methods]") unless params[:device_methods].nil?
        type
      end
    end

    module InitiateDeviceClaimInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateDeviceClaimInput, context: context)
        type = Types::InitiateDeviceClaimInput.new
        type.device_id = params[:device_id]
        type
      end
    end

    module InitiateDeviceClaimOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateDeviceClaimOutput, context: context)
        type = Types::InitiateDeviceClaimOutput.new
        type.state = params[:state]
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InvokeDeviceMethodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeDeviceMethodInput, context: context)
        type = Types::InvokeDeviceMethodInput.new
        type.device_id = params[:device_id]
        type.device_method = DeviceMethod.build(params[:device_method], context: "#{context}[:device_method]") unless params[:device_method].nil?
        type.device_method_parameters = params[:device_method_parameters]
        type
      end
    end

    module InvokeDeviceMethodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeDeviceMethodOutput, context: context)
        type = Types::InvokeDeviceMethodOutput.new
        type.device_method_response = params[:device_method_response]
        type
      end
    end

    module ListDeviceEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceEventsInput, context: context)
        type = Types::ListDeviceEventsInput.new
        type.device_id = params[:device_id]
        type.from_time_stamp = params[:from_time_stamp]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.to_time_stamp = params[:to_time_stamp]
        type
      end
    end

    module ListDeviceEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceEventsOutput, context: context)
        type = Types::ListDeviceEventsOutput.new
        type.events = List____listOfDeviceEvent.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesInput, context: context)
        type = Types::ListDevicesInput.new
        type.device_type = params[:device_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesOutput, context: context)
        type = Types::ListDevicesOutput.new
        type.devices = List____listOfDeviceDescription.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.next_token = params[:next_token]
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
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PreconditionFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreconditionFailedException, context: context)
        type = Types::PreconditionFailedException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module RangeNotSatisfiableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RangeNotSatisfiableException, context: context)
        type = Types::RangeNotSatisfiableException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ResourceConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConflictException, context: context)
        type = Types::ResourceConflictException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module UnclaimDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnclaimDeviceInput, context: context)
        type = Types::UnclaimDeviceInput.new
        type.device_id = params[:device_id]
        type
      end
    end

    module UnclaimDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnclaimDeviceOutput, context: context)
        type = Types::UnclaimDeviceOutput.new
        type.state = params[:state]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateDeviceStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceStateInput, context: context)
        type = Types::UpdateDeviceStateInput.new
        type.device_id = params[:device_id]
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateDeviceStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceStateOutput, context: context)
        type = Types::UpdateDeviceStateOutput.new
        type
      end
    end

    module List____listOfDeviceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDeviceEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDeviceMethod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceMethod.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Map____mapOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
