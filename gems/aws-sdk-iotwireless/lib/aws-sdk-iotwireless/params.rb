# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoTWireless
  module Params

    module AbpV1_0_x
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbpV1_0_x, context: context)
        type = Types::AbpV1_0_x.new
        type.dev_addr = params[:dev_addr]
        type.session_keys = SessionKeysAbpV1_0_x.build(params[:session_keys], context: "#{context}[:session_keys]") unless params[:session_keys].nil?
        type.f_cnt_start = params[:f_cnt_start]
        type
      end
    end

    module AbpV1_1
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbpV1_1, context: context)
        type = Types::AbpV1_1.new
        type.dev_addr = params[:dev_addr]
        type.session_keys = SessionKeysAbpV1_1.build(params[:session_keys], context: "#{context}[:session_keys]") unless params[:session_keys].nil?
        type.f_cnt_start = params[:f_cnt_start]
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AssociateAwsAccountWithPartnerAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAwsAccountWithPartnerAccountInput, context: context)
        type = Types::AssociateAwsAccountWithPartnerAccountInput.new
        type.sidewalk = SidewalkAccountInfo.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AssociateAwsAccountWithPartnerAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAwsAccountWithPartnerAccountOutput, context: context)
        type = Types::AssociateAwsAccountWithPartnerAccountOutput.new
        type.sidewalk = SidewalkAccountInfo.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type.arn = params[:arn]
        type
      end
    end

    module AssociateMulticastGroupWithFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMulticastGroupWithFuotaTaskInput, context: context)
        type = Types::AssociateMulticastGroupWithFuotaTaskInput.new
        type.id = params[:id]
        type.multicast_group_id = params[:multicast_group_id]
        type
      end
    end

    module AssociateMulticastGroupWithFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMulticastGroupWithFuotaTaskOutput, context: context)
        type = Types::AssociateMulticastGroupWithFuotaTaskOutput.new
        type
      end
    end

    module AssociateWirelessDeviceWithFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessDeviceWithFuotaTaskInput, context: context)
        type = Types::AssociateWirelessDeviceWithFuotaTaskInput.new
        type.id = params[:id]
        type.wireless_device_id = params[:wireless_device_id]
        type
      end
    end

    module AssociateWirelessDeviceWithFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessDeviceWithFuotaTaskOutput, context: context)
        type = Types::AssociateWirelessDeviceWithFuotaTaskOutput.new
        type
      end
    end

    module AssociateWirelessDeviceWithMulticastGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessDeviceWithMulticastGroupInput, context: context)
        type = Types::AssociateWirelessDeviceWithMulticastGroupInput.new
        type.id = params[:id]
        type.wireless_device_id = params[:wireless_device_id]
        type
      end
    end

    module AssociateWirelessDeviceWithMulticastGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessDeviceWithMulticastGroupOutput, context: context)
        type = Types::AssociateWirelessDeviceWithMulticastGroupOutput.new
        type
      end
    end

    module AssociateWirelessDeviceWithThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessDeviceWithThingInput, context: context)
        type = Types::AssociateWirelessDeviceWithThingInput.new
        type.id = params[:id]
        type.thing_arn = params[:thing_arn]
        type
      end
    end

    module AssociateWirelessDeviceWithThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessDeviceWithThingOutput, context: context)
        type = Types::AssociateWirelessDeviceWithThingOutput.new
        type
      end
    end

    module AssociateWirelessGatewayWithCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessGatewayWithCertificateInput, context: context)
        type = Types::AssociateWirelessGatewayWithCertificateInput.new
        type.id = params[:id]
        type.iot_certificate_id = params[:iot_certificate_id]
        type
      end
    end

    module AssociateWirelessGatewayWithCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessGatewayWithCertificateOutput, context: context)
        type = Types::AssociateWirelessGatewayWithCertificateOutput.new
        type.iot_certificate_id = params[:iot_certificate_id]
        type
      end
    end

    module AssociateWirelessGatewayWithThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessGatewayWithThingInput, context: context)
        type = Types::AssociateWirelessGatewayWithThingInput.new
        type.id = params[:id]
        type.thing_arn = params[:thing_arn]
        type
      end
    end

    module AssociateWirelessGatewayWithThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWirelessGatewayWithThingOutput, context: context)
        type = Types::AssociateWirelessGatewayWithThingOutput.new
        type
      end
    end

    module CancelMulticastGroupSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelMulticastGroupSessionInput, context: context)
        type = Types::CancelMulticastGroupSessionInput.new
        type.id = params[:id]
        type
      end
    end

    module CancelMulticastGroupSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelMulticastGroupSessionOutput, context: context)
        type = Types::CancelMulticastGroupSessionOutput.new
        type
      end
    end

    module CertificateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateList, context: context)
        type = Types::CertificateList.new
        type.signing_alg = params[:signing_alg]
        type.value = params[:value]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ConnectionStatusEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionStatusEventConfiguration, context: context)
        type = Types::ConnectionStatusEventConfiguration.new
        type.lo_ra_wan = LoRaWANConnectionStatusEventNotificationConfigurations.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.wireless_gateway_id_event_topic = params[:wireless_gateway_id_event_topic]
        type
      end
    end

    module ConnectionStatusResourceTypeEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionStatusResourceTypeEventConfiguration, context: context)
        type = Types::ConnectionStatusResourceTypeEventConfiguration.new
        type.lo_ra_wan = LoRaWANConnectionStatusResourceTypeEventConfiguration.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module CreateDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDestinationInput, context: context)
        type = Types::CreateDestinationInput.new
        type.name = params[:name]
        type.expression_type = params[:expression_type]
        type.expression = params[:expression]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDestinationOutput, context: context)
        type = Types::CreateDestinationOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module CreateDeviceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceProfileInput, context: context)
        type = Types::CreateDeviceProfileInput.new
        type.name = params[:name]
        type.lo_ra_wan = LoRaWANDeviceProfile.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateDeviceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceProfileOutput, context: context)
        type = Types::CreateDeviceProfileOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module CreateFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFuotaTaskInput, context: context)
        type = Types::CreateFuotaTaskInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.lo_ra_wan = LoRaWANFuotaTask.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.firmware_update_image = params[:firmware_update_image]
        type.firmware_update_role = params[:firmware_update_role]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFuotaTaskOutput, context: context)
        type = Types::CreateFuotaTaskOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module CreateMulticastGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMulticastGroupInput, context: context)
        type = Types::CreateMulticastGroupInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.lo_ra_wan = LoRaWANMulticast.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMulticastGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMulticastGroupOutput, context: context)
        type = Types::CreateMulticastGroupOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module CreateNetworkAnalyzerConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkAnalyzerConfigurationInput, context: context)
        type = Types::CreateNetworkAnalyzerConfigurationInput.new
        type.name = params[:name]
        type.trace_content = TraceContent.build(params[:trace_content], context: "#{context}[:trace_content]") unless params[:trace_content].nil?
        type.wireless_devices = WirelessDeviceList.build(params[:wireless_devices], context: "#{context}[:wireless_devices]") unless params[:wireless_devices].nil?
        type.wireless_gateways = WirelessGatewayList.build(params[:wireless_gateways], context: "#{context}[:wireless_gateways]") unless params[:wireless_gateways].nil?
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateNetworkAnalyzerConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkAnalyzerConfigurationOutput, context: context)
        type = Types::CreateNetworkAnalyzerConfigurationOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module CreateServiceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceProfileInput, context: context)
        type = Types::CreateServiceProfileInput.new
        type.name = params[:name]
        type.lo_ra_wan = LoRaWANServiceProfile.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateServiceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceProfileOutput, context: context)
        type = Types::CreateServiceProfileOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module CreateWirelessDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWirelessDeviceInput, context: context)
        type = Types::CreateWirelessDeviceInput.new
        type.type = params[:type]
        type.name = params[:name]
        type.description = params[:description]
        type.destination_name = params[:destination_name]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.lo_ra_wan = LoRaWANDevice.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWirelessDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWirelessDeviceOutput, context: context)
        type = Types::CreateWirelessDeviceOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module CreateWirelessGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWirelessGatewayInput, context: context)
        type = Types::CreateWirelessGatewayInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.lo_ra_wan = LoRaWANGateway.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateWirelessGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWirelessGatewayOutput, context: context)
        type = Types::CreateWirelessGatewayOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module CreateWirelessGatewayTaskDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWirelessGatewayTaskDefinitionInput, context: context)
        type = Types::CreateWirelessGatewayTaskDefinitionInput.new
        type.auto_create_tasks = params[:auto_create_tasks]
        type.name = params[:name]
        type.update = UpdateWirelessGatewayTaskCreate.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWirelessGatewayTaskDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWirelessGatewayTaskDefinitionOutput, context: context)
        type = Types::CreateWirelessGatewayTaskDefinitionOutput.new
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module CreateWirelessGatewayTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWirelessGatewayTaskInput, context: context)
        type = Types::CreateWirelessGatewayTaskInput.new
        type.id = params[:id]
        type.wireless_gateway_task_definition_id = params[:wireless_gateway_task_definition_id]
        type
      end
    end

    module CreateWirelessGatewayTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWirelessGatewayTaskOutput, context: context)
        type = Types::CreateWirelessGatewayTaskOutput.new
        type.wireless_gateway_task_definition_id = params[:wireless_gateway_task_definition_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDestinationInput, context: context)
        type = Types::DeleteDestinationInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDestinationOutput, context: context)
        type = Types::DeleteDestinationOutput.new
        type
      end
    end

    module DeleteDeviceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceProfileInput, context: context)
        type = Types::DeleteDeviceProfileInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteDeviceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceProfileOutput, context: context)
        type = Types::DeleteDeviceProfileOutput.new
        type
      end
    end

    module DeleteFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFuotaTaskInput, context: context)
        type = Types::DeleteFuotaTaskInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFuotaTaskOutput, context: context)
        type = Types::DeleteFuotaTaskOutput.new
        type
      end
    end

    module DeleteMulticastGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMulticastGroupInput, context: context)
        type = Types::DeleteMulticastGroupInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteMulticastGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMulticastGroupOutput, context: context)
        type = Types::DeleteMulticastGroupOutput.new
        type
      end
    end

    module DeleteNetworkAnalyzerConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkAnalyzerConfigurationInput, context: context)
        type = Types::DeleteNetworkAnalyzerConfigurationInput.new
        type.configuration_name = params[:configuration_name]
        type
      end
    end

    module DeleteNetworkAnalyzerConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkAnalyzerConfigurationOutput, context: context)
        type = Types::DeleteNetworkAnalyzerConfigurationOutput.new
        type
      end
    end

    module DeleteQueuedMessagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueuedMessagesInput, context: context)
        type = Types::DeleteQueuedMessagesInput.new
        type.id = params[:id]
        type.message_id = params[:message_id]
        type.wireless_device_type = params[:wireless_device_type]
        type
      end
    end

    module DeleteQueuedMessagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueuedMessagesOutput, context: context)
        type = Types::DeleteQueuedMessagesOutput.new
        type
      end
    end

    module DeleteServiceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceProfileInput, context: context)
        type = Types::DeleteServiceProfileInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteServiceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceProfileOutput, context: context)
        type = Types::DeleteServiceProfileOutput.new
        type
      end
    end

    module DeleteWirelessDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWirelessDeviceInput, context: context)
        type = Types::DeleteWirelessDeviceInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteWirelessDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWirelessDeviceOutput, context: context)
        type = Types::DeleteWirelessDeviceOutput.new
        type
      end
    end

    module DeleteWirelessGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWirelessGatewayInput, context: context)
        type = Types::DeleteWirelessGatewayInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteWirelessGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWirelessGatewayOutput, context: context)
        type = Types::DeleteWirelessGatewayOutput.new
        type
      end
    end

    module DeleteWirelessGatewayTaskDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWirelessGatewayTaskDefinitionInput, context: context)
        type = Types::DeleteWirelessGatewayTaskDefinitionInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteWirelessGatewayTaskDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWirelessGatewayTaskDefinitionOutput, context: context)
        type = Types::DeleteWirelessGatewayTaskDefinitionOutput.new
        type
      end
    end

    module DeleteWirelessGatewayTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWirelessGatewayTaskInput, context: context)
        type = Types::DeleteWirelessGatewayTaskInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteWirelessGatewayTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWirelessGatewayTaskOutput, context: context)
        type = Types::DeleteWirelessGatewayTaskOutput.new
        type
      end
    end

    module DestinationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Destinations.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Destinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destinations, context: context)
        type = Types::Destinations.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.expression_type = params[:expression_type]
        type.expression = params[:expression]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module DeviceCertificateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CertificateList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceProfile, context: context)
        type = Types::DeviceProfile.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.id = params[:id]
        type
      end
    end

    module DeviceProfileList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceRegistrationStateEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceRegistrationStateEventConfiguration, context: context)
        type = Types::DeviceRegistrationStateEventConfiguration.new
        type.sidewalk = SidewalkEventNotificationConfigurations.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type.wireless_device_id_event_topic = params[:wireless_device_id_event_topic]
        type
      end
    end

    module DeviceRegistrationStateResourceTypeEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceRegistrationStateResourceTypeEventConfiguration, context: context)
        type = Types::DeviceRegistrationStateResourceTypeEventConfiguration.new
        type.sidewalk = SidewalkResourceTypeEventConfiguration.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type
      end
    end

    module DisassociateAwsAccountFromPartnerAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAwsAccountFromPartnerAccountInput, context: context)
        type = Types::DisassociateAwsAccountFromPartnerAccountInput.new
        type.partner_account_id = params[:partner_account_id]
        type.partner_type = params[:partner_type]
        type
      end
    end

    module DisassociateAwsAccountFromPartnerAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAwsAccountFromPartnerAccountOutput, context: context)
        type = Types::DisassociateAwsAccountFromPartnerAccountOutput.new
        type
      end
    end

    module DisassociateMulticastGroupFromFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMulticastGroupFromFuotaTaskInput, context: context)
        type = Types::DisassociateMulticastGroupFromFuotaTaskInput.new
        type.id = params[:id]
        type.multicast_group_id = params[:multicast_group_id]
        type
      end
    end

    module DisassociateMulticastGroupFromFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMulticastGroupFromFuotaTaskOutput, context: context)
        type = Types::DisassociateMulticastGroupFromFuotaTaskOutput.new
        type
      end
    end

    module DisassociateWirelessDeviceFromFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessDeviceFromFuotaTaskInput, context: context)
        type = Types::DisassociateWirelessDeviceFromFuotaTaskInput.new
        type.id = params[:id]
        type.wireless_device_id = params[:wireless_device_id]
        type
      end
    end

    module DisassociateWirelessDeviceFromFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessDeviceFromFuotaTaskOutput, context: context)
        type = Types::DisassociateWirelessDeviceFromFuotaTaskOutput.new
        type
      end
    end

    module DisassociateWirelessDeviceFromMulticastGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessDeviceFromMulticastGroupInput, context: context)
        type = Types::DisassociateWirelessDeviceFromMulticastGroupInput.new
        type.id = params[:id]
        type.wireless_device_id = params[:wireless_device_id]
        type
      end
    end

    module DisassociateWirelessDeviceFromMulticastGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessDeviceFromMulticastGroupOutput, context: context)
        type = Types::DisassociateWirelessDeviceFromMulticastGroupOutput.new
        type
      end
    end

    module DisassociateWirelessDeviceFromThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessDeviceFromThingInput, context: context)
        type = Types::DisassociateWirelessDeviceFromThingInput.new
        type.id = params[:id]
        type
      end
    end

    module DisassociateWirelessDeviceFromThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessDeviceFromThingOutput, context: context)
        type = Types::DisassociateWirelessDeviceFromThingOutput.new
        type
      end
    end

    module DisassociateWirelessGatewayFromCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessGatewayFromCertificateInput, context: context)
        type = Types::DisassociateWirelessGatewayFromCertificateInput.new
        type.id = params[:id]
        type
      end
    end

    module DisassociateWirelessGatewayFromCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessGatewayFromCertificateOutput, context: context)
        type = Types::DisassociateWirelessGatewayFromCertificateOutput.new
        type
      end
    end

    module DisassociateWirelessGatewayFromThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessGatewayFromThingInput, context: context)
        type = Types::DisassociateWirelessGatewayFromThingInput.new
        type.id = params[:id]
        type
      end
    end

    module DisassociateWirelessGatewayFromThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWirelessGatewayFromThingOutput, context: context)
        type = Types::DisassociateWirelessGatewayFromThingOutput.new
        type
      end
    end

    module DownlinkQueueMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DownlinkQueueMessage, context: context)
        type = Types::DownlinkQueueMessage.new
        type.message_id = params[:message_id]
        type.transmit_mode = params[:transmit_mode]
        type.received_at = params[:received_at]
        type.lo_ra_wan = LoRaWANSendDataToDevice.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module DownlinkQueueMessagesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DownlinkQueueMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventConfigurationItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventConfigurationItem, context: context)
        type = Types::EventConfigurationItem.new
        type.identifier = params[:identifier]
        type.identifier_type = params[:identifier_type]
        type.partner_type = params[:partner_type]
        type.events = EventNotificationItemConfigurations.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module EventConfigurationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventConfigurationItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventNotificationItemConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventNotificationItemConfigurations, context: context)
        type = Types::EventNotificationItemConfigurations.new
        type.device_registration_state = DeviceRegistrationStateEventConfiguration.build(params[:device_registration_state], context: "#{context}[:device_registration_state]") unless params[:device_registration_state].nil?
        type.proximity = ProximityEventConfiguration.build(params[:proximity], context: "#{context}[:proximity]") unless params[:proximity].nil?
        type.join = JoinEventConfiguration.build(params[:join], context: "#{context}[:join]") unless params[:join].nil?
        type.connection_status = ConnectionStatusEventConfiguration.build(params[:connection_status], context: "#{context}[:connection_status]") unless params[:connection_status].nil?
        type
      end
    end

    module FPorts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FPorts, context: context)
        type = Types::FPorts.new
        type.fuota = params[:fuota]
        type.multicast = params[:multicast]
        type.clock_sync = params[:clock_sync]
        type
      end
    end

    module FactoryPresetFreqsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FuotaTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FuotaTask, context: context)
        type = Types::FuotaTask.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module FuotaTaskList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FuotaTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDestinationInput, context: context)
        type = Types::GetDestinationInput.new
        type.name = params[:name]
        type
      end
    end

    module GetDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDestinationOutput, context: context)
        type = Types::GetDestinationOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.expression = params[:expression]
        type.expression_type = params[:expression_type]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module GetDeviceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceProfileInput, context: context)
        type = Types::GetDeviceProfileInput.new
        type.id = params[:id]
        type
      end
    end

    module GetDeviceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceProfileOutput, context: context)
        type = Types::GetDeviceProfileOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.id = params[:id]
        type.lo_ra_wan = LoRaWANDeviceProfile.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module GetEventConfigurationByResourceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventConfigurationByResourceTypesInput, context: context)
        type = Types::GetEventConfigurationByResourceTypesInput.new
        type
      end
    end

    module GetEventConfigurationByResourceTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventConfigurationByResourceTypesOutput, context: context)
        type = Types::GetEventConfigurationByResourceTypesOutput.new
        type.device_registration_state = DeviceRegistrationStateResourceTypeEventConfiguration.build(params[:device_registration_state], context: "#{context}[:device_registration_state]") unless params[:device_registration_state].nil?
        type.proximity = ProximityResourceTypeEventConfiguration.build(params[:proximity], context: "#{context}[:proximity]") unless params[:proximity].nil?
        type.join = JoinResourceTypeEventConfiguration.build(params[:join], context: "#{context}[:join]") unless params[:join].nil?
        type.connection_status = ConnectionStatusResourceTypeEventConfiguration.build(params[:connection_status], context: "#{context}[:connection_status]") unless params[:connection_status].nil?
        type
      end
    end

    module GetFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFuotaTaskInput, context: context)
        type = Types::GetFuotaTaskInput.new
        type.id = params[:id]
        type
      end
    end

    module GetFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFuotaTaskOutput, context: context)
        type = Types::GetFuotaTaskOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.status = params[:status]
        type.name = params[:name]
        type.description = params[:description]
        type.lo_ra_wan = LoRaWANFuotaTaskGetInfo.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.firmware_update_image = params[:firmware_update_image]
        type.firmware_update_role = params[:firmware_update_role]
        type.created_at = params[:created_at]
        type
      end
    end

    module GetLogLevelsByResourceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLogLevelsByResourceTypesInput, context: context)
        type = Types::GetLogLevelsByResourceTypesInput.new
        type
      end
    end

    module GetLogLevelsByResourceTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLogLevelsByResourceTypesOutput, context: context)
        type = Types::GetLogLevelsByResourceTypesOutput.new
        type.default_log_level = params[:default_log_level]
        type.wireless_gateway_log_options = WirelessGatewayLogOptionList.build(params[:wireless_gateway_log_options], context: "#{context}[:wireless_gateway_log_options]") unless params[:wireless_gateway_log_options].nil?
        type.wireless_device_log_options = WirelessDeviceLogOptionList.build(params[:wireless_device_log_options], context: "#{context}[:wireless_device_log_options]") unless params[:wireless_device_log_options].nil?
        type
      end
    end

    module GetMulticastGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMulticastGroupInput, context: context)
        type = Types::GetMulticastGroupInput.new
        type.id = params[:id]
        type
      end
    end

    module GetMulticastGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMulticastGroupOutput, context: context)
        type = Types::GetMulticastGroupOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.lo_ra_wan = LoRaWANMulticastGet.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.created_at = params[:created_at]
        type
      end
    end

    module GetMulticastGroupSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMulticastGroupSessionInput, context: context)
        type = Types::GetMulticastGroupSessionInput.new
        type.id = params[:id]
        type
      end
    end

    module GetMulticastGroupSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMulticastGroupSessionOutput, context: context)
        type = Types::GetMulticastGroupSessionOutput.new
        type.lo_ra_wan = LoRaWANMulticastSession.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module GetNetworkAnalyzerConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkAnalyzerConfigurationInput, context: context)
        type = Types::GetNetworkAnalyzerConfigurationInput.new
        type.configuration_name = params[:configuration_name]
        type
      end
    end

    module GetNetworkAnalyzerConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkAnalyzerConfigurationOutput, context: context)
        type = Types::GetNetworkAnalyzerConfigurationOutput.new
        type.trace_content = TraceContent.build(params[:trace_content], context: "#{context}[:trace_content]") unless params[:trace_content].nil?
        type.wireless_devices = WirelessDeviceList.build(params[:wireless_devices], context: "#{context}[:wireless_devices]") unless params[:wireless_devices].nil?
        type.wireless_gateways = WirelessGatewayList.build(params[:wireless_gateways], context: "#{context}[:wireless_gateways]") unless params[:wireless_gateways].nil?
        type.description = params[:description]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module GetPartnerAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPartnerAccountInput, context: context)
        type = Types::GetPartnerAccountInput.new
        type.partner_account_id = params[:partner_account_id]
        type.partner_type = params[:partner_type]
        type
      end
    end

    module GetPartnerAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPartnerAccountOutput, context: context)
        type = Types::GetPartnerAccountOutput.new
        type.sidewalk = SidewalkAccountInfoWithFingerprint.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type.account_linked = params[:account_linked]
        type
      end
    end

    module GetResourceEventConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceEventConfigurationInput, context: context)
        type = Types::GetResourceEventConfigurationInput.new
        type.identifier = params[:identifier]
        type.identifier_type = params[:identifier_type]
        type.partner_type = params[:partner_type]
        type
      end
    end

    module GetResourceEventConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceEventConfigurationOutput, context: context)
        type = Types::GetResourceEventConfigurationOutput.new
        type.device_registration_state = DeviceRegistrationStateEventConfiguration.build(params[:device_registration_state], context: "#{context}[:device_registration_state]") unless params[:device_registration_state].nil?
        type.proximity = ProximityEventConfiguration.build(params[:proximity], context: "#{context}[:proximity]") unless params[:proximity].nil?
        type.join = JoinEventConfiguration.build(params[:join], context: "#{context}[:join]") unless params[:join].nil?
        type.connection_status = ConnectionStatusEventConfiguration.build(params[:connection_status], context: "#{context}[:connection_status]") unless params[:connection_status].nil?
        type
      end
    end

    module GetResourceLogLevelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceLogLevelInput, context: context)
        type = Types::GetResourceLogLevelInput.new
        type.resource_identifier = params[:resource_identifier]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module GetResourceLogLevelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceLogLevelOutput, context: context)
        type = Types::GetResourceLogLevelOutput.new
        type.log_level = params[:log_level]
        type
      end
    end

    module GetServiceEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceEndpointInput, context: context)
        type = Types::GetServiceEndpointInput.new
        type.service_type = params[:service_type]
        type
      end
    end

    module GetServiceEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceEndpointOutput, context: context)
        type = Types::GetServiceEndpointOutput.new
        type.service_type = params[:service_type]
        type.service_endpoint = params[:service_endpoint]
        type.server_trust = params[:server_trust]
        type
      end
    end

    module GetServiceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceProfileInput, context: context)
        type = Types::GetServiceProfileInput.new
        type.id = params[:id]
        type
      end
    end

    module GetServiceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceProfileOutput, context: context)
        type = Types::GetServiceProfileOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.id = params[:id]
        type.lo_ra_wan = LoRaWANGetServiceProfileInfo.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module GetWirelessDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessDeviceInput, context: context)
        type = Types::GetWirelessDeviceInput.new
        type.identifier = params[:identifier]
        type.identifier_type = params[:identifier_type]
        type
      end
    end

    module GetWirelessDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessDeviceOutput, context: context)
        type = Types::GetWirelessDeviceOutput.new
        type.type = params[:type]
        type.name = params[:name]
        type.description = params[:description]
        type.destination_name = params[:destination_name]
        type.id = params[:id]
        type.arn = params[:arn]
        type.thing_name = params[:thing_name]
        type.thing_arn = params[:thing_arn]
        type.lo_ra_wan = LoRaWANDevice.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.sidewalk = SidewalkDevice.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type
      end
    end

    module GetWirelessDeviceStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessDeviceStatisticsInput, context: context)
        type = Types::GetWirelessDeviceStatisticsInput.new
        type.wireless_device_id = params[:wireless_device_id]
        type
      end
    end

    module GetWirelessDeviceStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessDeviceStatisticsOutput, context: context)
        type = Types::GetWirelessDeviceStatisticsOutput.new
        type.wireless_device_id = params[:wireless_device_id]
        type.last_uplink_received_at = params[:last_uplink_received_at]
        type.lo_ra_wan = LoRaWANDeviceMetadata.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.sidewalk = SidewalkDeviceMetadata.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type
      end
    end

    module GetWirelessGatewayCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayCertificateInput, context: context)
        type = Types::GetWirelessGatewayCertificateInput.new
        type.id = params[:id]
        type
      end
    end

    module GetWirelessGatewayCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayCertificateOutput, context: context)
        type = Types::GetWirelessGatewayCertificateOutput.new
        type.iot_certificate_id = params[:iot_certificate_id]
        type.lo_ra_wan_network_server_certificate_id = params[:lo_ra_wan_network_server_certificate_id]
        type
      end
    end

    module GetWirelessGatewayFirmwareInformationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayFirmwareInformationInput, context: context)
        type = Types::GetWirelessGatewayFirmwareInformationInput.new
        type.id = params[:id]
        type
      end
    end

    module GetWirelessGatewayFirmwareInformationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayFirmwareInformationOutput, context: context)
        type = Types::GetWirelessGatewayFirmwareInformationOutput.new
        type.lo_ra_wan = LoRaWANGatewayCurrentVersion.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module GetWirelessGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayInput, context: context)
        type = Types::GetWirelessGatewayInput.new
        type.identifier = params[:identifier]
        type.identifier_type = params[:identifier_type]
        type
      end
    end

    module GetWirelessGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayOutput, context: context)
        type = Types::GetWirelessGatewayOutput.new
        type.name = params[:name]
        type.id = params[:id]
        type.description = params[:description]
        type.lo_ra_wan = LoRaWANGateway.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.arn = params[:arn]
        type.thing_name = params[:thing_name]
        type.thing_arn = params[:thing_arn]
        type
      end
    end

    module GetWirelessGatewayStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayStatisticsInput, context: context)
        type = Types::GetWirelessGatewayStatisticsInput.new
        type.wireless_gateway_id = params[:wireless_gateway_id]
        type
      end
    end

    module GetWirelessGatewayStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayStatisticsOutput, context: context)
        type = Types::GetWirelessGatewayStatisticsOutput.new
        type.wireless_gateway_id = params[:wireless_gateway_id]
        type.last_uplink_received_at = params[:last_uplink_received_at]
        type.connection_status = params[:connection_status]
        type
      end
    end

    module GetWirelessGatewayTaskDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayTaskDefinitionInput, context: context)
        type = Types::GetWirelessGatewayTaskDefinitionInput.new
        type.id = params[:id]
        type
      end
    end

    module GetWirelessGatewayTaskDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayTaskDefinitionOutput, context: context)
        type = Types::GetWirelessGatewayTaskDefinitionOutput.new
        type.auto_create_tasks = params[:auto_create_tasks]
        type.name = params[:name]
        type.update = UpdateWirelessGatewayTaskCreate.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type.arn = params[:arn]
        type
      end
    end

    module GetWirelessGatewayTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayTaskInput, context: context)
        type = Types::GetWirelessGatewayTaskInput.new
        type.id = params[:id]
        type
      end
    end

    module GetWirelessGatewayTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWirelessGatewayTaskOutput, context: context)
        type = Types::GetWirelessGatewayTaskOutput.new
        type.wireless_gateway_id = params[:wireless_gateway_id]
        type.wireless_gateway_task_definition_id = params[:wireless_gateway_task_definition_id]
        type.last_uplink_received_at = params[:last_uplink_received_at]
        type.task_created_at = params[:task_created_at]
        type.status = params[:status]
        type
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

    module JoinEuiFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JoinEuiRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JoinEuiRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JoinEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JoinEventConfiguration, context: context)
        type = Types::JoinEventConfiguration.new
        type.lo_ra_wan = LoRaWANJoinEventNotificationConfigurations.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.wireless_device_id_event_topic = params[:wireless_device_id_event_topic]
        type
      end
    end

    module JoinResourceTypeEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JoinResourceTypeEventConfiguration, context: context)
        type = Types::JoinResourceTypeEventConfiguration.new
        type.lo_ra_wan = LoRaWANJoinResourceTypeEventConfiguration.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module ListDestinationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDestinationsInput, context: context)
        type = Types::ListDestinationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDestinationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDestinationsOutput, context: context)
        type = Types::ListDestinationsOutput.new
        type.next_token = params[:next_token]
        type.destination_list = DestinationList.build(params[:destination_list], context: "#{context}[:destination_list]") unless params[:destination_list].nil?
        type
      end
    end

    module ListDeviceProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceProfilesInput, context: context)
        type = Types::ListDeviceProfilesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDeviceProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceProfilesOutput, context: context)
        type = Types::ListDeviceProfilesOutput.new
        type.next_token = params[:next_token]
        type.device_profile_list = DeviceProfileList.build(params[:device_profile_list], context: "#{context}[:device_profile_list]") unless params[:device_profile_list].nil?
        type
      end
    end

    module ListEventConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventConfigurationsInput, context: context)
        type = Types::ListEventConfigurationsInput.new
        type.resource_type = params[:resource_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventConfigurationsOutput, context: context)
        type = Types::ListEventConfigurationsOutput.new
        type.next_token = params[:next_token]
        type.event_configurations_list = EventConfigurationsList.build(params[:event_configurations_list], context: "#{context}[:event_configurations_list]") unless params[:event_configurations_list].nil?
        type
      end
    end

    module ListFuotaTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFuotaTasksInput, context: context)
        type = Types::ListFuotaTasksInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFuotaTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFuotaTasksOutput, context: context)
        type = Types::ListFuotaTasksOutput.new
        type.next_token = params[:next_token]
        type.fuota_task_list = FuotaTaskList.build(params[:fuota_task_list], context: "#{context}[:fuota_task_list]") unless params[:fuota_task_list].nil?
        type
      end
    end

    module ListMulticastGroupsByFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMulticastGroupsByFuotaTaskInput, context: context)
        type = Types::ListMulticastGroupsByFuotaTaskInput.new
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMulticastGroupsByFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMulticastGroupsByFuotaTaskOutput, context: context)
        type = Types::ListMulticastGroupsByFuotaTaskOutput.new
        type.next_token = params[:next_token]
        type.multicast_group_list = MulticastGroupListByFuotaTask.build(params[:multicast_group_list], context: "#{context}[:multicast_group_list]") unless params[:multicast_group_list].nil?
        type
      end
    end

    module ListMulticastGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMulticastGroupsInput, context: context)
        type = Types::ListMulticastGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMulticastGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMulticastGroupsOutput, context: context)
        type = Types::ListMulticastGroupsOutput.new
        type.next_token = params[:next_token]
        type.multicast_group_list = MulticastGroupList.build(params[:multicast_group_list], context: "#{context}[:multicast_group_list]") unless params[:multicast_group_list].nil?
        type
      end
    end

    module ListNetworkAnalyzerConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNetworkAnalyzerConfigurationsInput, context: context)
        type = Types::ListNetworkAnalyzerConfigurationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNetworkAnalyzerConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNetworkAnalyzerConfigurationsOutput, context: context)
        type = Types::ListNetworkAnalyzerConfigurationsOutput.new
        type.next_token = params[:next_token]
        type.network_analyzer_configuration_list = NetworkAnalyzerConfigurationList.build(params[:network_analyzer_configuration_list], context: "#{context}[:network_analyzer_configuration_list]") unless params[:network_analyzer_configuration_list].nil?
        type
      end
    end

    module ListPartnerAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPartnerAccountsInput, context: context)
        type = Types::ListPartnerAccountsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPartnerAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPartnerAccountsOutput, context: context)
        type = Types::ListPartnerAccountsOutput.new
        type.next_token = params[:next_token]
        type.sidewalk = SidewalkAccountList.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type
      end
    end

    module ListQueuedMessagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueuedMessagesInput, context: context)
        type = Types::ListQueuedMessagesInput.new
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.wireless_device_type = params[:wireless_device_type]
        type
      end
    end

    module ListQueuedMessagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueuedMessagesOutput, context: context)
        type = Types::ListQueuedMessagesOutput.new
        type.next_token = params[:next_token]
        type.downlink_queue_messages_list = DownlinkQueueMessagesList.build(params[:downlink_queue_messages_list], context: "#{context}[:downlink_queue_messages_list]") unless params[:downlink_queue_messages_list].nil?
        type
      end
    end

    module ListServiceProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceProfilesInput, context: context)
        type = Types::ListServiceProfilesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServiceProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceProfilesOutput, context: context)
        type = Types::ListServiceProfilesOutput.new
        type.next_token = params[:next_token]
        type.service_profile_list = ServiceProfileList.build(params[:service_profile_list], context: "#{context}[:service_profile_list]") unless params[:service_profile_list].nil?
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListWirelessDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWirelessDevicesInput, context: context)
        type = Types::ListWirelessDevicesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.destination_name = params[:destination_name]
        type.device_profile_id = params[:device_profile_id]
        type.service_profile_id = params[:service_profile_id]
        type.wireless_device_type = params[:wireless_device_type]
        type.fuota_task_id = params[:fuota_task_id]
        type.multicast_group_id = params[:multicast_group_id]
        type
      end
    end

    module ListWirelessDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWirelessDevicesOutput, context: context)
        type = Types::ListWirelessDevicesOutput.new
        type.next_token = params[:next_token]
        type.wireless_device_list = WirelessDeviceStatisticsList.build(params[:wireless_device_list], context: "#{context}[:wireless_device_list]") unless params[:wireless_device_list].nil?
        type
      end
    end

    module ListWirelessGatewayTaskDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWirelessGatewayTaskDefinitionsInput, context: context)
        type = Types::ListWirelessGatewayTaskDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.task_definition_type = params[:task_definition_type]
        type
      end
    end

    module ListWirelessGatewayTaskDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWirelessGatewayTaskDefinitionsOutput, context: context)
        type = Types::ListWirelessGatewayTaskDefinitionsOutput.new
        type.next_token = params[:next_token]
        type.task_definitions = WirelessGatewayTaskDefinitionList.build(params[:task_definitions], context: "#{context}[:task_definitions]") unless params[:task_definitions].nil?
        type
      end
    end

    module ListWirelessGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWirelessGatewaysInput, context: context)
        type = Types::ListWirelessGatewaysInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWirelessGatewaysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWirelessGatewaysOutput, context: context)
        type = Types::ListWirelessGatewaysOutput.new
        type.next_token = params[:next_token]
        type.wireless_gateway_list = WirelessGatewayStatisticsList.build(params[:wireless_gateway_list], context: "#{context}[:wireless_gateway_list]") unless params[:wireless_gateway_list].nil?
        type
      end
    end

    module LoRaWANConnectionStatusEventNotificationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANConnectionStatusEventNotificationConfigurations, context: context)
        type = Types::LoRaWANConnectionStatusEventNotificationConfigurations.new
        type.gateway_eui_event_topic = params[:gateway_eui_event_topic]
        type
      end
    end

    module LoRaWANConnectionStatusResourceTypeEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANConnectionStatusResourceTypeEventConfiguration, context: context)
        type = Types::LoRaWANConnectionStatusResourceTypeEventConfiguration.new
        type.wireless_gateway_event_topic = params[:wireless_gateway_event_topic]
        type
      end
    end

    module LoRaWANDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANDevice, context: context)
        type = Types::LoRaWANDevice.new
        type.dev_eui = params[:dev_eui]
        type.device_profile_id = params[:device_profile_id]
        type.service_profile_id = params[:service_profile_id]
        type.otaa_v1_1 = OtaaV1_1.build(params[:otaa_v1_1], context: "#{context}[:otaa_v1_1]") unless params[:otaa_v1_1].nil?
        type.otaa_v1_0_x = OtaaV1_0_x.build(params[:otaa_v1_0_x], context: "#{context}[:otaa_v1_0_x]") unless params[:otaa_v1_0_x].nil?
        type.abp_v1_1 = AbpV1_1.build(params[:abp_v1_1], context: "#{context}[:abp_v1_1]") unless params[:abp_v1_1].nil?
        type.abp_v1_0_x = AbpV1_0_x.build(params[:abp_v1_0_x], context: "#{context}[:abp_v1_0_x]") unless params[:abp_v1_0_x].nil?
        type.f_ports = FPorts.build(params[:f_ports], context: "#{context}[:f_ports]") unless params[:f_ports].nil?
        type
      end
    end

    module LoRaWANDeviceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANDeviceMetadata, context: context)
        type = Types::LoRaWANDeviceMetadata.new
        type.dev_eui = params[:dev_eui]
        type.f_port = params[:f_port]
        type.data_rate = params[:data_rate]
        type.frequency = params[:frequency]
        type.timestamp = params[:timestamp]
        type.gateways = LoRaWANGatewayMetadataList.build(params[:gateways], context: "#{context}[:gateways]") unless params[:gateways].nil?
        type
      end
    end

    module LoRaWANDeviceProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANDeviceProfile, context: context)
        type = Types::LoRaWANDeviceProfile.new
        type.supports_class_b = params[:supports_class_b]
        type.class_b_timeout = params[:class_b_timeout]
        type.ping_slot_period = params[:ping_slot_period]
        type.ping_slot_dr = params[:ping_slot_dr]
        type.ping_slot_freq = params[:ping_slot_freq]
        type.supports_class_c = params[:supports_class_c]
        type.class_c_timeout = params[:class_c_timeout]
        type.mac_version = params[:mac_version]
        type.reg_params_revision = params[:reg_params_revision]
        type.rx_delay1 = params[:rx_delay1]
        type.rx_dr_offset1 = params[:rx_dr_offset1]
        type.rx_data_rate2 = params[:rx_data_rate2]
        type.rx_freq2 = params[:rx_freq2]
        type.factory_preset_freqs_list = FactoryPresetFreqsList.build(params[:factory_preset_freqs_list], context: "#{context}[:factory_preset_freqs_list]") unless params[:factory_preset_freqs_list].nil?
        type.max_eirp = params[:max_eirp]
        type.max_duty_cycle = params[:max_duty_cycle]
        type.rf_region = params[:rf_region]
        type.supports_join = params[:supports_join]
        type.supports32_bit_f_cnt = params[:supports32_bit_f_cnt]
        type
      end
    end

    module LoRaWANFuotaTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANFuotaTask, context: context)
        type = Types::LoRaWANFuotaTask.new
        type.rf_region = params[:rf_region]
        type
      end
    end

    module LoRaWANFuotaTaskGetInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANFuotaTaskGetInfo, context: context)
        type = Types::LoRaWANFuotaTaskGetInfo.new
        type.rf_region = params[:rf_region]
        type.start_time = params[:start_time]
        type
      end
    end

    module LoRaWANGateway
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANGateway, context: context)
        type = Types::LoRaWANGateway.new
        type.gateway_eui = params[:gateway_eui]
        type.rf_region = params[:rf_region]
        type.join_eui_filters = JoinEuiFilters.build(params[:join_eui_filters], context: "#{context}[:join_eui_filters]") unless params[:join_eui_filters].nil?
        type.net_id_filters = NetIdFilters.build(params[:net_id_filters], context: "#{context}[:net_id_filters]") unless params[:net_id_filters].nil?
        type.sub_bands = SubBands.build(params[:sub_bands], context: "#{context}[:sub_bands]") unless params[:sub_bands].nil?
        type
      end
    end

    module LoRaWANGatewayCurrentVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANGatewayCurrentVersion, context: context)
        type = Types::LoRaWANGatewayCurrentVersion.new
        type.current_version = LoRaWANGatewayVersion.build(params[:current_version], context: "#{context}[:current_version]") unless params[:current_version].nil?
        type
      end
    end

    module LoRaWANGatewayMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANGatewayMetadata, context: context)
        type = Types::LoRaWANGatewayMetadata.new
        type.gateway_eui = params[:gateway_eui]
        type.snr = params[:snr]
        type.rssi = params[:rssi]
        type
      end
    end

    module LoRaWANGatewayMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoRaWANGatewayMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoRaWANGatewayVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANGatewayVersion, context: context)
        type = Types::LoRaWANGatewayVersion.new
        type.package_version = params[:package_version]
        type.model = params[:model]
        type.station = params[:station]
        type
      end
    end

    module LoRaWANGetServiceProfileInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANGetServiceProfileInfo, context: context)
        type = Types::LoRaWANGetServiceProfileInfo.new
        type.ul_rate = params[:ul_rate]
        type.ul_bucket_size = params[:ul_bucket_size]
        type.ul_rate_policy = params[:ul_rate_policy]
        type.dl_rate = params[:dl_rate]
        type.dl_bucket_size = params[:dl_bucket_size]
        type.dl_rate_policy = params[:dl_rate_policy]
        type.add_gw_metadata = params[:add_gw_metadata]
        type.dev_status_req_freq = params[:dev_status_req_freq]
        type.report_dev_status_battery = params[:report_dev_status_battery]
        type.report_dev_status_margin = params[:report_dev_status_margin]
        type.dr_min = params[:dr_min]
        type.dr_max = params[:dr_max]
        type.channel_mask = params[:channel_mask]
        type.pr_allowed = params[:pr_allowed]
        type.hr_allowed = params[:hr_allowed]
        type.ra_allowed = params[:ra_allowed]
        type.nwk_geo_loc = params[:nwk_geo_loc]
        type.target_per = params[:target_per]
        type.min_gw_diversity = params[:min_gw_diversity]
        type
      end
    end

    module LoRaWANJoinEventNotificationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANJoinEventNotificationConfigurations, context: context)
        type = Types::LoRaWANJoinEventNotificationConfigurations.new
        type.dev_eui_event_topic = params[:dev_eui_event_topic]
        type
      end
    end

    module LoRaWANJoinResourceTypeEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANJoinResourceTypeEventConfiguration, context: context)
        type = Types::LoRaWANJoinResourceTypeEventConfiguration.new
        type.wireless_device_event_topic = params[:wireless_device_event_topic]
        type
      end
    end

    module LoRaWANListDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANListDevice, context: context)
        type = Types::LoRaWANListDevice.new
        type.dev_eui = params[:dev_eui]
        type
      end
    end

    module LoRaWANMulticast
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANMulticast, context: context)
        type = Types::LoRaWANMulticast.new
        type.rf_region = params[:rf_region]
        type.dl_class = params[:dl_class]
        type
      end
    end

    module LoRaWANMulticastGet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANMulticastGet, context: context)
        type = Types::LoRaWANMulticastGet.new
        type.rf_region = params[:rf_region]
        type.dl_class = params[:dl_class]
        type.number_of_devices_requested = params[:number_of_devices_requested]
        type.number_of_devices_in_group = params[:number_of_devices_in_group]
        type
      end
    end

    module LoRaWANMulticastMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANMulticastMetadata, context: context)
        type = Types::LoRaWANMulticastMetadata.new
        type.f_port = params[:f_port]
        type
      end
    end

    module LoRaWANMulticastSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANMulticastSession, context: context)
        type = Types::LoRaWANMulticastSession.new
        type.dl_dr = params[:dl_dr]
        type.dl_freq = params[:dl_freq]
        type.session_start_time = params[:session_start_time]
        type.session_timeout = params[:session_timeout]
        type
      end
    end

    module LoRaWANSendDataToDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANSendDataToDevice, context: context)
        type = Types::LoRaWANSendDataToDevice.new
        type.f_port = params[:f_port]
        type
      end
    end

    module LoRaWANServiceProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANServiceProfile, context: context)
        type = Types::LoRaWANServiceProfile.new
        type.add_gw_metadata = params[:add_gw_metadata]
        type
      end
    end

    module LoRaWANStartFuotaTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANStartFuotaTask, context: context)
        type = Types::LoRaWANStartFuotaTask.new
        type.start_time = params[:start_time]
        type
      end
    end

    module LoRaWANUpdateDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANUpdateDevice, context: context)
        type = Types::LoRaWANUpdateDevice.new
        type.device_profile_id = params[:device_profile_id]
        type.service_profile_id = params[:service_profile_id]
        type.abp_v1_1 = UpdateAbpV1_1.build(params[:abp_v1_1], context: "#{context}[:abp_v1_1]") unless params[:abp_v1_1].nil?
        type.abp_v1_0_x = UpdateAbpV1_0_x.build(params[:abp_v1_0_x], context: "#{context}[:abp_v1_0_x]") unless params[:abp_v1_0_x].nil?
        type
      end
    end

    module LoRaWANUpdateGatewayTaskCreate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANUpdateGatewayTaskCreate, context: context)
        type = Types::LoRaWANUpdateGatewayTaskCreate.new
        type.update_signature = params[:update_signature]
        type.sig_key_crc = params[:sig_key_crc]
        type.current_version = LoRaWANGatewayVersion.build(params[:current_version], context: "#{context}[:current_version]") unless params[:current_version].nil?
        type.update_version = LoRaWANGatewayVersion.build(params[:update_version], context: "#{context}[:update_version]") unless params[:update_version].nil?
        type
      end
    end

    module LoRaWANUpdateGatewayTaskEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoRaWANUpdateGatewayTaskEntry, context: context)
        type = Types::LoRaWANUpdateGatewayTaskEntry.new
        type.current_version = LoRaWANGatewayVersion.build(params[:current_version], context: "#{context}[:current_version]") unless params[:current_version].nil?
        type.update_version = LoRaWANGatewayVersion.build(params[:update_version], context: "#{context}[:update_version]") unless params[:update_version].nil?
        type
      end
    end

    module MulticastGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MulticastGroup, context: context)
        type = Types::MulticastGroup.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module MulticastGroupByFuotaTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MulticastGroupByFuotaTask, context: context)
        type = Types::MulticastGroupByFuotaTask.new
        type.id = params[:id]
        type
      end
    end

    module MulticastGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MulticastGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MulticastGroupListByFuotaTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MulticastGroupByFuotaTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MulticastWirelessMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MulticastWirelessMetadata, context: context)
        type = Types::MulticastWirelessMetadata.new
        type.lo_ra_wan = LoRaWANMulticastMetadata.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module NetIdFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NetworkAnalyzerConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkAnalyzerConfigurations.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkAnalyzerConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkAnalyzerConfigurations, context: context)
        type = Types::NetworkAnalyzerConfigurations.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module OtaaV1_0_x
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OtaaV1_0_x, context: context)
        type = Types::OtaaV1_0_x.new
        type.app_key = params[:app_key]
        type.app_eui = params[:app_eui]
        type.gen_app_key = params[:gen_app_key]
        type
      end
    end

    module OtaaV1_1
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OtaaV1_1, context: context)
        type = Types::OtaaV1_1.new
        type.app_key = params[:app_key]
        type.nwk_key = params[:nwk_key]
        type.join_eui = params[:join_eui]
        type
      end
    end

    module ProximityEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProximityEventConfiguration, context: context)
        type = Types::ProximityEventConfiguration.new
        type.sidewalk = SidewalkEventNotificationConfigurations.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type.wireless_device_id_event_topic = params[:wireless_device_id_event_topic]
        type
      end
    end

    module ProximityResourceTypeEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProximityResourceTypeEventConfiguration, context: context)
        type = Types::ProximityResourceTypeEventConfiguration.new
        type.sidewalk = SidewalkResourceTypeEventConfiguration.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type
      end
    end

    module PutResourceLogLevelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourceLogLevelInput, context: context)
        type = Types::PutResourceLogLevelInput.new
        type.resource_identifier = params[:resource_identifier]
        type.resource_type = params[:resource_type]
        type.log_level = params[:log_level]
        type
      end
    end

    module PutResourceLogLevelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourceLogLevelOutput, context: context)
        type = Types::PutResourceLogLevelOutput.new
        type
      end
    end

    module ResetAllResourceLogLevelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetAllResourceLogLevelsInput, context: context)
        type = Types::ResetAllResourceLogLevelsInput.new
        type
      end
    end

    module ResetAllResourceLogLevelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetAllResourceLogLevelsOutput, context: context)
        type = Types::ResetAllResourceLogLevelsOutput.new
        type
      end
    end

    module ResetResourceLogLevelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetResourceLogLevelInput, context: context)
        type = Types::ResetResourceLogLevelInput.new
        type.resource_identifier = params[:resource_identifier]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResetResourceLogLevelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetResourceLogLevelOutput, context: context)
        type = Types::ResetResourceLogLevelOutput.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module SendDataToMulticastGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendDataToMulticastGroupInput, context: context)
        type = Types::SendDataToMulticastGroupInput.new
        type.id = params[:id]
        type.payload_data = params[:payload_data]
        type.wireless_metadata = MulticastWirelessMetadata.build(params[:wireless_metadata], context: "#{context}[:wireless_metadata]") unless params[:wireless_metadata].nil?
        type
      end
    end

    module SendDataToMulticastGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendDataToMulticastGroupOutput, context: context)
        type = Types::SendDataToMulticastGroupOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module SendDataToWirelessDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendDataToWirelessDeviceInput, context: context)
        type = Types::SendDataToWirelessDeviceInput.new
        type.id = params[:id]
        type.transmit_mode = params[:transmit_mode]
        type.payload_data = params[:payload_data]
        type.wireless_metadata = WirelessMetadata.build(params[:wireless_metadata], context: "#{context}[:wireless_metadata]") unless params[:wireless_metadata].nil?
        type
      end
    end

    module SendDataToWirelessDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendDataToWirelessDeviceOutput, context: context)
        type = Types::SendDataToWirelessDeviceOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module ServiceProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceProfile, context: context)
        type = Types::ServiceProfile.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.id = params[:id]
        type
      end
    end

    module ServiceProfileList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SessionKeysAbpV1_0_x
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionKeysAbpV1_0_x, context: context)
        type = Types::SessionKeysAbpV1_0_x.new
        type.nwk_s_key = params[:nwk_s_key]
        type.app_s_key = params[:app_s_key]
        type
      end
    end

    module SessionKeysAbpV1_1
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionKeysAbpV1_1, context: context)
        type = Types::SessionKeysAbpV1_1.new
        type.f_nwk_s_int_key = params[:f_nwk_s_int_key]
        type.s_nwk_s_int_key = params[:s_nwk_s_int_key]
        type.nwk_s_enc_key = params[:nwk_s_enc_key]
        type.app_s_key = params[:app_s_key]
        type
      end
    end

    module SidewalkAccountInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SidewalkAccountInfo, context: context)
        type = Types::SidewalkAccountInfo.new
        type.amazon_id = params[:amazon_id]
        type.app_server_private_key = params[:app_server_private_key]
        type
      end
    end

    module SidewalkAccountInfoWithFingerprint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SidewalkAccountInfoWithFingerprint, context: context)
        type = Types::SidewalkAccountInfoWithFingerprint.new
        type.amazon_id = params[:amazon_id]
        type.fingerprint = params[:fingerprint]
        type.arn = params[:arn]
        type
      end
    end

    module SidewalkAccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SidewalkAccountInfoWithFingerprint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SidewalkDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SidewalkDevice, context: context)
        type = Types::SidewalkDevice.new
        type.amazon_id = params[:amazon_id]
        type.sidewalk_id = params[:sidewalk_id]
        type.sidewalk_manufacturing_sn = params[:sidewalk_manufacturing_sn]
        type.device_certificates = DeviceCertificateList.build(params[:device_certificates], context: "#{context}[:device_certificates]") unless params[:device_certificates].nil?
        type
      end
    end

    module SidewalkDeviceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SidewalkDeviceMetadata, context: context)
        type = Types::SidewalkDeviceMetadata.new
        type.rssi = params[:rssi]
        type.battery_level = params[:battery_level]
        type.event = params[:event]
        type.device_state = params[:device_state]
        type
      end
    end

    module SidewalkEventNotificationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SidewalkEventNotificationConfigurations, context: context)
        type = Types::SidewalkEventNotificationConfigurations.new
        type.amazon_id_event_topic = params[:amazon_id_event_topic]
        type
      end
    end

    module SidewalkListDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SidewalkListDevice, context: context)
        type = Types::SidewalkListDevice.new
        type.amazon_id = params[:amazon_id]
        type.sidewalk_id = params[:sidewalk_id]
        type.sidewalk_manufacturing_sn = params[:sidewalk_manufacturing_sn]
        type.device_certificates = DeviceCertificateList.build(params[:device_certificates], context: "#{context}[:device_certificates]") unless params[:device_certificates].nil?
        type
      end
    end

    module SidewalkResourceTypeEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SidewalkResourceTypeEventConfiguration, context: context)
        type = Types::SidewalkResourceTypeEventConfiguration.new
        type.wireless_device_event_topic = params[:wireless_device_event_topic]
        type
      end
    end

    module SidewalkSendDataToDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SidewalkSendDataToDevice, context: context)
        type = Types::SidewalkSendDataToDevice.new
        type.seq = params[:seq]
        type.message_type = params[:message_type]
        type
      end
    end

    module SidewalkUpdateAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SidewalkUpdateAccount, context: context)
        type = Types::SidewalkUpdateAccount.new
        type.app_server_private_key = params[:app_server_private_key]
        type
      end
    end

    module StartBulkAssociateWirelessDeviceWithMulticastGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBulkAssociateWirelessDeviceWithMulticastGroupInput, context: context)
        type = Types::StartBulkAssociateWirelessDeviceWithMulticastGroupInput.new
        type.id = params[:id]
        type.query_string = params[:query_string]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartBulkAssociateWirelessDeviceWithMulticastGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBulkAssociateWirelessDeviceWithMulticastGroupOutput, context: context)
        type = Types::StartBulkAssociateWirelessDeviceWithMulticastGroupOutput.new
        type
      end
    end

    module StartBulkDisassociateWirelessDeviceFromMulticastGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupInput, context: context)
        type = Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupInput.new
        type.id = params[:id]
        type.query_string = params[:query_string]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput, context: context)
        type = Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput.new
        type
      end
    end

    module StartFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFuotaTaskInput, context: context)
        type = Types::StartFuotaTaskInput.new
        type.id = params[:id]
        type.lo_ra_wan = LoRaWANStartFuotaTask.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module StartFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFuotaTaskOutput, context: context)
        type = Types::StartFuotaTaskOutput.new
        type
      end
    end

    module StartMulticastGroupSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMulticastGroupSessionInput, context: context)
        type = Types::StartMulticastGroupSessionInput.new
        type.id = params[:id]
        type.lo_ra_wan = LoRaWANMulticastSession.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module StartMulticastGroupSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMulticastGroupSessionOutput, context: context)
        type = Types::StartMulticastGroupSessionOutput.new
        type
      end
    end

    module SubBands
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TestWirelessDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestWirelessDeviceInput, context: context)
        type = Types::TestWirelessDeviceInput.new
        type.id = params[:id]
        type
      end
    end

    module TestWirelessDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestWirelessDeviceOutput, context: context)
        type = Types::TestWirelessDeviceOutput.new
        type.result = params[:result]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module TraceContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TraceContent, context: context)
        type = Types::TraceContent.new
        type.wireless_device_frame_info = params[:wireless_device_frame_info]
        type.log_level = params[:log_level]
        type
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

    module UpdateAbpV1_0_x
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAbpV1_0_x, context: context)
        type = Types::UpdateAbpV1_0_x.new
        type.f_cnt_start = params[:f_cnt_start]
        type
      end
    end

    module UpdateAbpV1_1
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAbpV1_1, context: context)
        type = Types::UpdateAbpV1_1.new
        type.f_cnt_start = params[:f_cnt_start]
        type
      end
    end

    module UpdateDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDestinationInput, context: context)
        type = Types::UpdateDestinationInput.new
        type.name = params[:name]
        type.expression_type = params[:expression_type]
        type.expression = params[:expression]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module UpdateDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDestinationOutput, context: context)
        type = Types::UpdateDestinationOutput.new
        type
      end
    end

    module UpdateEventConfigurationByResourceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventConfigurationByResourceTypesInput, context: context)
        type = Types::UpdateEventConfigurationByResourceTypesInput.new
        type.device_registration_state = DeviceRegistrationStateResourceTypeEventConfiguration.build(params[:device_registration_state], context: "#{context}[:device_registration_state]") unless params[:device_registration_state].nil?
        type.proximity = ProximityResourceTypeEventConfiguration.build(params[:proximity], context: "#{context}[:proximity]") unless params[:proximity].nil?
        type.join = JoinResourceTypeEventConfiguration.build(params[:join], context: "#{context}[:join]") unless params[:join].nil?
        type.connection_status = ConnectionStatusResourceTypeEventConfiguration.build(params[:connection_status], context: "#{context}[:connection_status]") unless params[:connection_status].nil?
        type
      end
    end

    module UpdateEventConfigurationByResourceTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventConfigurationByResourceTypesOutput, context: context)
        type = Types::UpdateEventConfigurationByResourceTypesOutput.new
        type
      end
    end

    module UpdateFuotaTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFuotaTaskInput, context: context)
        type = Types::UpdateFuotaTaskInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.lo_ra_wan = LoRaWANFuotaTask.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.firmware_update_image = params[:firmware_update_image]
        type.firmware_update_role = params[:firmware_update_role]
        type
      end
    end

    module UpdateFuotaTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFuotaTaskOutput, context: context)
        type = Types::UpdateFuotaTaskOutput.new
        type
      end
    end

    module UpdateLogLevelsByResourceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLogLevelsByResourceTypesInput, context: context)
        type = Types::UpdateLogLevelsByResourceTypesInput.new
        type.default_log_level = params[:default_log_level]
        type.wireless_device_log_options = WirelessDeviceLogOptionList.build(params[:wireless_device_log_options], context: "#{context}[:wireless_device_log_options]") unless params[:wireless_device_log_options].nil?
        type.wireless_gateway_log_options = WirelessGatewayLogOptionList.build(params[:wireless_gateway_log_options], context: "#{context}[:wireless_gateway_log_options]") unless params[:wireless_gateway_log_options].nil?
        type
      end
    end

    module UpdateLogLevelsByResourceTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLogLevelsByResourceTypesOutput, context: context)
        type = Types::UpdateLogLevelsByResourceTypesOutput.new
        type
      end
    end

    module UpdateMulticastGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMulticastGroupInput, context: context)
        type = Types::UpdateMulticastGroupInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.lo_ra_wan = LoRaWANMulticast.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module UpdateMulticastGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMulticastGroupOutput, context: context)
        type = Types::UpdateMulticastGroupOutput.new
        type
      end
    end

    module UpdateNetworkAnalyzerConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkAnalyzerConfigurationInput, context: context)
        type = Types::UpdateNetworkAnalyzerConfigurationInput.new
        type.configuration_name = params[:configuration_name]
        type.trace_content = TraceContent.build(params[:trace_content], context: "#{context}[:trace_content]") unless params[:trace_content].nil?
        type.wireless_devices_to_add = WirelessDeviceList.build(params[:wireless_devices_to_add], context: "#{context}[:wireless_devices_to_add]") unless params[:wireless_devices_to_add].nil?
        type.wireless_devices_to_remove = WirelessDeviceList.build(params[:wireless_devices_to_remove], context: "#{context}[:wireless_devices_to_remove]") unless params[:wireless_devices_to_remove].nil?
        type.wireless_gateways_to_add = WirelessGatewayList.build(params[:wireless_gateways_to_add], context: "#{context}[:wireless_gateways_to_add]") unless params[:wireless_gateways_to_add].nil?
        type.wireless_gateways_to_remove = WirelessGatewayList.build(params[:wireless_gateways_to_remove], context: "#{context}[:wireless_gateways_to_remove]") unless params[:wireless_gateways_to_remove].nil?
        type.description = params[:description]
        type
      end
    end

    module UpdateNetworkAnalyzerConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkAnalyzerConfigurationOutput, context: context)
        type = Types::UpdateNetworkAnalyzerConfigurationOutput.new
        type
      end
    end

    module UpdatePartnerAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePartnerAccountInput, context: context)
        type = Types::UpdatePartnerAccountInput.new
        type.sidewalk = SidewalkUpdateAccount.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type.partner_account_id = params[:partner_account_id]
        type.partner_type = params[:partner_type]
        type
      end
    end

    module UpdatePartnerAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePartnerAccountOutput, context: context)
        type = Types::UpdatePartnerAccountOutput.new
        type
      end
    end

    module UpdateResourceEventConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceEventConfigurationInput, context: context)
        type = Types::UpdateResourceEventConfigurationInput.new
        type.identifier = params[:identifier]
        type.identifier_type = params[:identifier_type]
        type.partner_type = params[:partner_type]
        type.device_registration_state = DeviceRegistrationStateEventConfiguration.build(params[:device_registration_state], context: "#{context}[:device_registration_state]") unless params[:device_registration_state].nil?
        type.proximity = ProximityEventConfiguration.build(params[:proximity], context: "#{context}[:proximity]") unless params[:proximity].nil?
        type.join = JoinEventConfiguration.build(params[:join], context: "#{context}[:join]") unless params[:join].nil?
        type.connection_status = ConnectionStatusEventConfiguration.build(params[:connection_status], context: "#{context}[:connection_status]") unless params[:connection_status].nil?
        type
      end
    end

    module UpdateResourceEventConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceEventConfigurationOutput, context: context)
        type = Types::UpdateResourceEventConfigurationOutput.new
        type
      end
    end

    module UpdateWirelessDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWirelessDeviceInput, context: context)
        type = Types::UpdateWirelessDeviceInput.new
        type.id = params[:id]
        type.destination_name = params[:destination_name]
        type.name = params[:name]
        type.description = params[:description]
        type.lo_ra_wan = LoRaWANUpdateDevice.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module UpdateWirelessDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWirelessDeviceOutput, context: context)
        type = Types::UpdateWirelessDeviceOutput.new
        type
      end
    end

    module UpdateWirelessGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWirelessGatewayInput, context: context)
        type = Types::UpdateWirelessGatewayInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.join_eui_filters = JoinEuiFilters.build(params[:join_eui_filters], context: "#{context}[:join_eui_filters]") unless params[:join_eui_filters].nil?
        type.net_id_filters = NetIdFilters.build(params[:net_id_filters], context: "#{context}[:net_id_filters]") unless params[:net_id_filters].nil?
        type
      end
    end

    module UpdateWirelessGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWirelessGatewayOutput, context: context)
        type = Types::UpdateWirelessGatewayOutput.new
        type
      end
    end

    module UpdateWirelessGatewayTaskCreate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWirelessGatewayTaskCreate, context: context)
        type = Types::UpdateWirelessGatewayTaskCreate.new
        type.update_data_source = params[:update_data_source]
        type.update_data_role = params[:update_data_role]
        type.lo_ra_wan = LoRaWANUpdateGatewayTaskCreate.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type
      end
    end

    module UpdateWirelessGatewayTaskEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWirelessGatewayTaskEntry, context: context)
        type = Types::UpdateWirelessGatewayTaskEntry.new
        type.id = params[:id]
        type.lo_ra_wan = LoRaWANUpdateGatewayTaskEntry.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.arn = params[:arn]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module WirelessDeviceEventLogOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WirelessDeviceEventLogOption, context: context)
        type = Types::WirelessDeviceEventLogOption.new
        type.event = params[:event]
        type.log_level = params[:log_level]
        type
      end
    end

    module WirelessDeviceEventLogOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WirelessDeviceEventLogOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WirelessDeviceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WirelessDeviceLogOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WirelessDeviceLogOption, context: context)
        type = Types::WirelessDeviceLogOption.new
        type.type = params[:type]
        type.log_level = params[:log_level]
        type.events = WirelessDeviceEventLogOptionList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module WirelessDeviceLogOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WirelessDeviceLogOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WirelessDeviceStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WirelessDeviceStatistics, context: context)
        type = Types::WirelessDeviceStatistics.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.type = params[:type]
        type.name = params[:name]
        type.destination_name = params[:destination_name]
        type.last_uplink_received_at = params[:last_uplink_received_at]
        type.lo_ra_wan = LoRaWANListDevice.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.sidewalk = SidewalkListDevice.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type.fuota_device_status = params[:fuota_device_status]
        type.multicast_device_status = params[:multicast_device_status]
        type.mc_group_id = params[:mc_group_id]
        type
      end
    end

    module WirelessDeviceStatisticsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WirelessDeviceStatistics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WirelessGatewayEventLogOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WirelessGatewayEventLogOption, context: context)
        type = Types::WirelessGatewayEventLogOption.new
        type.event = params[:event]
        type.log_level = params[:log_level]
        type
      end
    end

    module WirelessGatewayEventLogOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WirelessGatewayEventLogOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WirelessGatewayList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WirelessGatewayLogOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WirelessGatewayLogOption, context: context)
        type = Types::WirelessGatewayLogOption.new
        type.type = params[:type]
        type.log_level = params[:log_level]
        type.events = WirelessGatewayEventLogOptionList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module WirelessGatewayLogOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WirelessGatewayLogOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WirelessGatewayStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WirelessGatewayStatistics, context: context)
        type = Types::WirelessGatewayStatistics.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.lo_ra_wan = LoRaWANGateway.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.last_uplink_received_at = params[:last_uplink_received_at]
        type
      end
    end

    module WirelessGatewayStatisticsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WirelessGatewayStatistics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WirelessGatewayTaskDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateWirelessGatewayTaskEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WirelessMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WirelessMetadata, context: context)
        type = Types::WirelessMetadata.new
        type.lo_ra_wan = LoRaWANSendDataToDevice.build(params[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless params[:lo_ra_wan].nil?
        type.sidewalk = SidewalkSendDataToDevice.build(params[:sidewalk], context: "#{context}[:sidewalk]") unless params[:sidewalk].nil?
        type
      end
    end

  end
end
