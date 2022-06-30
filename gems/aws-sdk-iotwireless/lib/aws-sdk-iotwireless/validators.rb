# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTWireless
  module Validators

    class AbpV1_0_x
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbpV1_0_x, context: context)
        Hearth::Validator.validate!(input[:dev_addr], ::String, context: "#{context}[:dev_addr]")
        Validators::SessionKeysAbpV1_0_x.validate!(input[:session_keys], context: "#{context}[:session_keys]") unless input[:session_keys].nil?
        Hearth::Validator.validate!(input[:f_cnt_start], ::Integer, context: "#{context}[:f_cnt_start]")
      end
    end

    class AbpV1_1
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbpV1_1, context: context)
        Hearth::Validator.validate!(input[:dev_addr], ::String, context: "#{context}[:dev_addr]")
        Validators::SessionKeysAbpV1_1.validate!(input[:session_keys], context: "#{context}[:session_keys]") unless input[:session_keys].nil?
        Hearth::Validator.validate!(input[:f_cnt_start], ::Integer, context: "#{context}[:f_cnt_start]")
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociateAwsAccountWithPartnerAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAwsAccountWithPartnerAccountInput, context: context)
        Validators::SidewalkAccountInfo.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AssociateAwsAccountWithPartnerAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAwsAccountWithPartnerAccountOutput, context: context)
        Validators::SidewalkAccountInfo.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class AssociateMulticastGroupWithFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMulticastGroupWithFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:multicast_group_id], ::String, context: "#{context}[:multicast_group_id]")
      end
    end

    class AssociateMulticastGroupWithFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMulticastGroupWithFuotaTaskOutput, context: context)
      end
    end

    class AssociateWirelessDeviceWithFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessDeviceWithFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:wireless_device_id], ::String, context: "#{context}[:wireless_device_id]")
      end
    end

    class AssociateWirelessDeviceWithFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessDeviceWithFuotaTaskOutput, context: context)
      end
    end

    class AssociateWirelessDeviceWithMulticastGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessDeviceWithMulticastGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:wireless_device_id], ::String, context: "#{context}[:wireless_device_id]")
      end
    end

    class AssociateWirelessDeviceWithMulticastGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessDeviceWithMulticastGroupOutput, context: context)
      end
    end

    class AssociateWirelessDeviceWithThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessDeviceWithThingInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
      end
    end

    class AssociateWirelessDeviceWithThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessDeviceWithThingOutput, context: context)
      end
    end

    class AssociateWirelessGatewayWithCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessGatewayWithCertificateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:iot_certificate_id], ::String, context: "#{context}[:iot_certificate_id]")
      end
    end

    class AssociateWirelessGatewayWithCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessGatewayWithCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:iot_certificate_id], ::String, context: "#{context}[:iot_certificate_id]")
      end
    end

    class AssociateWirelessGatewayWithThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessGatewayWithThingInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
      end
    end

    class AssociateWirelessGatewayWithThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWirelessGatewayWithThingOutput, context: context)
      end
    end

    class CancelMulticastGroupSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelMulticastGroupSessionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CancelMulticastGroupSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelMulticastGroupSessionOutput, context: context)
      end
    end

    class CertificateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateList, context: context)
        Hearth::Validator.validate!(input[:signing_alg], ::String, context: "#{context}[:signing_alg]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ConnectionStatusEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionStatusEventConfiguration, context: context)
        Validators::LoRaWANConnectionStatusEventNotificationConfigurations.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Hearth::Validator.validate!(input[:wireless_gateway_id_event_topic], ::String, context: "#{context}[:wireless_gateway_id_event_topic]")
      end
    end

    class ConnectionStatusResourceTypeEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionStatusResourceTypeEventConfiguration, context: context)
        Validators::LoRaWANConnectionStatusResourceTypeEventConfiguration.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class CreateDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDestinationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:expression_type], ::String, context: "#{context}[:expression_type]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateDeviceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceProfileInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::LoRaWANDeviceProfile.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateDeviceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceProfileOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::LoRaWANFuotaTask.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Hearth::Validator.validate!(input[:firmware_update_image], ::String, context: "#{context}[:firmware_update_image]")
        Hearth::Validator.validate!(input[:firmware_update_role], ::String, context: "#{context}[:firmware_update_role]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFuotaTaskOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateMulticastGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMulticastGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::LoRaWANMulticast.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMulticastGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMulticastGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateNetworkAnalyzerConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkAnalyzerConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::TraceContent.validate!(input[:trace_content], context: "#{context}[:trace_content]") unless input[:trace_content].nil?
        Validators::WirelessDeviceList.validate!(input[:wireless_devices], context: "#{context}[:wireless_devices]") unless input[:wireless_devices].nil?
        Validators::WirelessGatewayList.validate!(input[:wireless_gateways], context: "#{context}[:wireless_gateways]") unless input[:wireless_gateways].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateNetworkAnalyzerConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkAnalyzerConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateServiceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceProfileInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::LoRaWANServiceProfile.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateServiceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceProfileOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateWirelessDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWirelessDeviceInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::LoRaWANDevice.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWirelessDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWirelessDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateWirelessGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWirelessGatewayInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::LoRaWANGateway.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateWirelessGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWirelessGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateWirelessGatewayTaskDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWirelessGatewayTaskDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:auto_create_tasks], ::TrueClass, ::FalseClass, context: "#{context}[:auto_create_tasks]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::UpdateWirelessGatewayTaskCreate.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWirelessGatewayTaskDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWirelessGatewayTaskDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateWirelessGatewayTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWirelessGatewayTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:wireless_gateway_task_definition_id], ::String, context: "#{context}[:wireless_gateway_task_definition_id]")
      end
    end

    class CreateWirelessGatewayTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWirelessGatewayTaskOutput, context: context)
        Hearth::Validator.validate!(input[:wireless_gateway_task_definition_id], ::String, context: "#{context}[:wireless_gateway_task_definition_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDestinationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDestinationOutput, context: context)
      end
    end

    class DeleteDeviceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceProfileInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteDeviceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceProfileOutput, context: context)
      end
    end

    class DeleteFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFuotaTaskOutput, context: context)
      end
    end

    class DeleteMulticastGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMulticastGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteMulticastGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMulticastGroupOutput, context: context)
      end
    end

    class DeleteNetworkAnalyzerConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkAnalyzerConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
      end
    end

    class DeleteNetworkAnalyzerConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkAnalyzerConfigurationOutput, context: context)
      end
    end

    class DeleteQueuedMessagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueuedMessagesInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:wireless_device_type], ::String, context: "#{context}[:wireless_device_type]")
      end
    end

    class DeleteQueuedMessagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueuedMessagesOutput, context: context)
      end
    end

    class DeleteServiceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceProfileInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteServiceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceProfileOutput, context: context)
      end
    end

    class DeleteWirelessDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWirelessDeviceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteWirelessDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWirelessDeviceOutput, context: context)
      end
    end

    class DeleteWirelessGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWirelessGatewayInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteWirelessGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWirelessGatewayOutput, context: context)
      end
    end

    class DeleteWirelessGatewayTaskDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWirelessGatewayTaskDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteWirelessGatewayTaskDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWirelessGatewayTaskDefinitionOutput, context: context)
      end
    end

    class DeleteWirelessGatewayTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWirelessGatewayTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteWirelessGatewayTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWirelessGatewayTaskOutput, context: context)
      end
    end

    class DestinationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Destinations.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Destinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destinations, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:expression_type], ::String, context: "#{context}[:expression_type]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class DeviceCertificateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CertificateList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceProfile, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeviceProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeviceProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceRegistrationStateEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceRegistrationStateEventConfiguration, context: context)
        Validators::SidewalkEventNotificationConfigurations.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
        Hearth::Validator.validate!(input[:wireless_device_id_event_topic], ::String, context: "#{context}[:wireless_device_id_event_topic]")
      end
    end

    class DeviceRegistrationStateResourceTypeEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceRegistrationStateResourceTypeEventConfiguration, context: context)
        Validators::SidewalkResourceTypeEventConfiguration.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
      end
    end

    class DisassociateAwsAccountFromPartnerAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAwsAccountFromPartnerAccountInput, context: context)
        Hearth::Validator.validate!(input[:partner_account_id], ::String, context: "#{context}[:partner_account_id]")
        Hearth::Validator.validate!(input[:partner_type], ::String, context: "#{context}[:partner_type]")
      end
    end

    class DisassociateAwsAccountFromPartnerAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAwsAccountFromPartnerAccountOutput, context: context)
      end
    end

    class DisassociateMulticastGroupFromFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMulticastGroupFromFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:multicast_group_id], ::String, context: "#{context}[:multicast_group_id]")
      end
    end

    class DisassociateMulticastGroupFromFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMulticastGroupFromFuotaTaskOutput, context: context)
      end
    end

    class DisassociateWirelessDeviceFromFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessDeviceFromFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:wireless_device_id], ::String, context: "#{context}[:wireless_device_id]")
      end
    end

    class DisassociateWirelessDeviceFromFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessDeviceFromFuotaTaskOutput, context: context)
      end
    end

    class DisassociateWirelessDeviceFromMulticastGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessDeviceFromMulticastGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:wireless_device_id], ::String, context: "#{context}[:wireless_device_id]")
      end
    end

    class DisassociateWirelessDeviceFromMulticastGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessDeviceFromMulticastGroupOutput, context: context)
      end
    end

    class DisassociateWirelessDeviceFromThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessDeviceFromThingInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DisassociateWirelessDeviceFromThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessDeviceFromThingOutput, context: context)
      end
    end

    class DisassociateWirelessGatewayFromCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessGatewayFromCertificateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DisassociateWirelessGatewayFromCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessGatewayFromCertificateOutput, context: context)
      end
    end

    class DisassociateWirelessGatewayFromThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessGatewayFromThingInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DisassociateWirelessGatewayFromThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWirelessGatewayFromThingOutput, context: context)
      end
    end

    class DownlinkQueueMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DownlinkQueueMessage, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:transmit_mode], ::Integer, context: "#{context}[:transmit_mode]")
        Hearth::Validator.validate!(input[:received_at], ::String, context: "#{context}[:received_at]")
        Validators::LoRaWANSendDataToDevice.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class DownlinkQueueMessagesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DownlinkQueueMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventConfigurationItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventConfigurationItem, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:identifier_type], ::String, context: "#{context}[:identifier_type]")
        Hearth::Validator.validate!(input[:partner_type], ::String, context: "#{context}[:partner_type]")
        Validators::EventNotificationItemConfigurations.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class EventConfigurationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventConfigurationItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventNotificationItemConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventNotificationItemConfigurations, context: context)
        Validators::DeviceRegistrationStateEventConfiguration.validate!(input[:device_registration_state], context: "#{context}[:device_registration_state]") unless input[:device_registration_state].nil?
        Validators::ProximityEventConfiguration.validate!(input[:proximity], context: "#{context}[:proximity]") unless input[:proximity].nil?
        Validators::JoinEventConfiguration.validate!(input[:join], context: "#{context}[:join]") unless input[:join].nil?
        Validators::ConnectionStatusEventConfiguration.validate!(input[:connection_status], context: "#{context}[:connection_status]") unless input[:connection_status].nil?
      end
    end

    class FPorts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FPorts, context: context)
        Hearth::Validator.validate!(input[:fuota], ::Integer, context: "#{context}[:fuota]")
        Hearth::Validator.validate!(input[:multicast], ::Integer, context: "#{context}[:multicast]")
        Hearth::Validator.validate!(input[:clock_sync], ::Integer, context: "#{context}[:clock_sync]")
      end
    end

    class FactoryPresetFreqsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class FuotaTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FuotaTask, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class FuotaTaskList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FuotaTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDestinationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:expression_type], ::String, context: "#{context}[:expression_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class GetDeviceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceProfileInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetDeviceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceProfileOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::LoRaWANDeviceProfile.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class GetEventConfigurationByResourceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventConfigurationByResourceTypesInput, context: context)
      end
    end

    class GetEventConfigurationByResourceTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventConfigurationByResourceTypesOutput, context: context)
        Validators::DeviceRegistrationStateResourceTypeEventConfiguration.validate!(input[:device_registration_state], context: "#{context}[:device_registration_state]") unless input[:device_registration_state].nil?
        Validators::ProximityResourceTypeEventConfiguration.validate!(input[:proximity], context: "#{context}[:proximity]") unless input[:proximity].nil?
        Validators::JoinResourceTypeEventConfiguration.validate!(input[:join], context: "#{context}[:join]") unless input[:join].nil?
        Validators::ConnectionStatusResourceTypeEventConfiguration.validate!(input[:connection_status], context: "#{context}[:connection_status]") unless input[:connection_status].nil?
      end
    end

    class GetFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFuotaTaskOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::LoRaWANFuotaTaskGetInfo.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Hearth::Validator.validate!(input[:firmware_update_image], ::String, context: "#{context}[:firmware_update_image]")
        Hearth::Validator.validate!(input[:firmware_update_role], ::String, context: "#{context}[:firmware_update_role]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class GetLogLevelsByResourceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLogLevelsByResourceTypesInput, context: context)
      end
    end

    class GetLogLevelsByResourceTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLogLevelsByResourceTypesOutput, context: context)
        Hearth::Validator.validate!(input[:default_log_level], ::String, context: "#{context}[:default_log_level]")
        Validators::WirelessGatewayLogOptionList.validate!(input[:wireless_gateway_log_options], context: "#{context}[:wireless_gateway_log_options]") unless input[:wireless_gateway_log_options].nil?
        Validators::WirelessDeviceLogOptionList.validate!(input[:wireless_device_log_options], context: "#{context}[:wireless_device_log_options]") unless input[:wireless_device_log_options].nil?
      end
    end

    class GetMulticastGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMulticastGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetMulticastGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMulticastGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::LoRaWANMulticastGet.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class GetMulticastGroupSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMulticastGroupSessionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetMulticastGroupSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMulticastGroupSessionOutput, context: context)
        Validators::LoRaWANMulticastSession.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class GetNetworkAnalyzerConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkAnalyzerConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
      end
    end

    class GetNetworkAnalyzerConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkAnalyzerConfigurationOutput, context: context)
        Validators::TraceContent.validate!(input[:trace_content], context: "#{context}[:trace_content]") unless input[:trace_content].nil?
        Validators::WirelessDeviceList.validate!(input[:wireless_devices], context: "#{context}[:wireless_devices]") unless input[:wireless_devices].nil?
        Validators::WirelessGatewayList.validate!(input[:wireless_gateways], context: "#{context}[:wireless_gateways]") unless input[:wireless_gateways].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetPartnerAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPartnerAccountInput, context: context)
        Hearth::Validator.validate!(input[:partner_account_id], ::String, context: "#{context}[:partner_account_id]")
        Hearth::Validator.validate!(input[:partner_type], ::String, context: "#{context}[:partner_type]")
      end
    end

    class GetPartnerAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPartnerAccountOutput, context: context)
        Validators::SidewalkAccountInfoWithFingerprint.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
        Hearth::Validator.validate!(input[:account_linked], ::TrueClass, ::FalseClass, context: "#{context}[:account_linked]")
      end
    end

    class GetResourceEventConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceEventConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:identifier_type], ::String, context: "#{context}[:identifier_type]")
        Hearth::Validator.validate!(input[:partner_type], ::String, context: "#{context}[:partner_type]")
      end
    end

    class GetResourceEventConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceEventConfigurationOutput, context: context)
        Validators::DeviceRegistrationStateEventConfiguration.validate!(input[:device_registration_state], context: "#{context}[:device_registration_state]") unless input[:device_registration_state].nil?
        Validators::ProximityEventConfiguration.validate!(input[:proximity], context: "#{context}[:proximity]") unless input[:proximity].nil?
        Validators::JoinEventConfiguration.validate!(input[:join], context: "#{context}[:join]") unless input[:join].nil?
        Validators::ConnectionStatusEventConfiguration.validate!(input[:connection_status], context: "#{context}[:connection_status]") unless input[:connection_status].nil?
      end
    end

    class GetResourceLogLevelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceLogLevelInput, context: context)
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class GetResourceLogLevelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceLogLevelOutput, context: context)
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class GetServiceEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceEndpointInput, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
      end
    end

    class GetServiceEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:service_endpoint], ::String, context: "#{context}[:service_endpoint]")
        Hearth::Validator.validate!(input[:server_trust], ::String, context: "#{context}[:server_trust]")
      end
    end

    class GetServiceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceProfileInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetServiceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceProfileOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::LoRaWANGetServiceProfileInfo.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class GetWirelessDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessDeviceInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:identifier_type], ::String, context: "#{context}[:identifier_type]")
      end
    end

    class GetWirelessDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Validators::LoRaWANDevice.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Validators::SidewalkDevice.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
      end
    end

    class GetWirelessDeviceStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessDeviceStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:wireless_device_id], ::String, context: "#{context}[:wireless_device_id]")
      end
    end

    class GetWirelessDeviceStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessDeviceStatisticsOutput, context: context)
        Hearth::Validator.validate!(input[:wireless_device_id], ::String, context: "#{context}[:wireless_device_id]")
        Hearth::Validator.validate!(input[:last_uplink_received_at], ::String, context: "#{context}[:last_uplink_received_at]")
        Validators::LoRaWANDeviceMetadata.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Validators::SidewalkDeviceMetadata.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
      end
    end

    class GetWirelessGatewayCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayCertificateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetWirelessGatewayCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:iot_certificate_id], ::String, context: "#{context}[:iot_certificate_id]")
        Hearth::Validator.validate!(input[:lo_ra_wan_network_server_certificate_id], ::String, context: "#{context}[:lo_ra_wan_network_server_certificate_id]")
      end
    end

    class GetWirelessGatewayFirmwareInformationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayFirmwareInformationInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetWirelessGatewayFirmwareInformationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayFirmwareInformationOutput, context: context)
        Validators::LoRaWANGatewayCurrentVersion.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class GetWirelessGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:identifier_type], ::String, context: "#{context}[:identifier_type]")
      end
    end

    class GetWirelessGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::LoRaWANGateway.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
      end
    end

    class GetWirelessGatewayStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:wireless_gateway_id], ::String, context: "#{context}[:wireless_gateway_id]")
      end
    end

    class GetWirelessGatewayStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayStatisticsOutput, context: context)
        Hearth::Validator.validate!(input[:wireless_gateway_id], ::String, context: "#{context}[:wireless_gateway_id]")
        Hearth::Validator.validate!(input[:last_uplink_received_at], ::String, context: "#{context}[:last_uplink_received_at]")
        Hearth::Validator.validate!(input[:connection_status], ::String, context: "#{context}[:connection_status]")
      end
    end

    class GetWirelessGatewayTaskDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayTaskDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetWirelessGatewayTaskDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayTaskDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:auto_create_tasks], ::TrueClass, ::FalseClass, context: "#{context}[:auto_create_tasks]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::UpdateWirelessGatewayTaskCreate.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetWirelessGatewayTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetWirelessGatewayTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWirelessGatewayTaskOutput, context: context)
        Hearth::Validator.validate!(input[:wireless_gateway_id], ::String, context: "#{context}[:wireless_gateway_id]")
        Hearth::Validator.validate!(input[:wireless_gateway_task_definition_id], ::String, context: "#{context}[:wireless_gateway_task_definition_id]")
        Hearth::Validator.validate!(input[:last_uplink_received_at], ::String, context: "#{context}[:last_uplink_received_at]")
        Hearth::Validator.validate!(input[:task_created_at], ::String, context: "#{context}[:task_created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JoinEuiFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JoinEuiRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JoinEuiRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JoinEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JoinEventConfiguration, context: context)
        Validators::LoRaWANJoinEventNotificationConfigurations.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Hearth::Validator.validate!(input[:wireless_device_id_event_topic], ::String, context: "#{context}[:wireless_device_id_event_topic]")
      end
    end

    class JoinResourceTypeEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JoinResourceTypeEventConfiguration, context: context)
        Validators::LoRaWANJoinResourceTypeEventConfiguration.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class ListDestinationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDestinationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDestinationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDestinationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::DestinationList.validate!(input[:destination_list], context: "#{context}[:destination_list]") unless input[:destination_list].nil?
      end
    end

    class ListDeviceProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceProfilesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDeviceProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceProfilesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::DeviceProfileList.validate!(input[:device_profile_list], context: "#{context}[:device_profile_list]") unless input[:device_profile_list].nil?
      end
    end

    class ListEventConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::EventConfigurationsList.validate!(input[:event_configurations_list], context: "#{context}[:event_configurations_list]") unless input[:event_configurations_list].nil?
      end
    end

    class ListFuotaTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFuotaTasksInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFuotaTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFuotaTasksOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FuotaTaskList.validate!(input[:fuota_task_list], context: "#{context}[:fuota_task_list]") unless input[:fuota_task_list].nil?
      end
    end

    class ListMulticastGroupsByFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMulticastGroupsByFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMulticastGroupsByFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMulticastGroupsByFuotaTaskOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::MulticastGroupListByFuotaTask.validate!(input[:multicast_group_list], context: "#{context}[:multicast_group_list]") unless input[:multicast_group_list].nil?
      end
    end

    class ListMulticastGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMulticastGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMulticastGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMulticastGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::MulticastGroupList.validate!(input[:multicast_group_list], context: "#{context}[:multicast_group_list]") unless input[:multicast_group_list].nil?
      end
    end

    class ListNetworkAnalyzerConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNetworkAnalyzerConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNetworkAnalyzerConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNetworkAnalyzerConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::NetworkAnalyzerConfigurationList.validate!(input[:network_analyzer_configuration_list], context: "#{context}[:network_analyzer_configuration_list]") unless input[:network_analyzer_configuration_list].nil?
      end
    end

    class ListPartnerAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartnerAccountsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPartnerAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartnerAccountsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::SidewalkAccountList.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
      end
    end

    class ListQueuedMessagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueuedMessagesInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:wireless_device_type], ::String, context: "#{context}[:wireless_device_type]")
      end
    end

    class ListQueuedMessagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueuedMessagesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::DownlinkQueueMessagesList.validate!(input[:downlink_queue_messages_list], context: "#{context}[:downlink_queue_messages_list]") unless input[:downlink_queue_messages_list].nil?
      end
    end

    class ListServiceProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceProfilesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServiceProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceProfilesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ServiceProfileList.validate!(input[:service_profile_list], context: "#{context}[:service_profile_list]") unless input[:service_profile_list].nil?
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWirelessDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWirelessDevicesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
        Hearth::Validator.validate!(input[:device_profile_id], ::String, context: "#{context}[:device_profile_id]")
        Hearth::Validator.validate!(input[:service_profile_id], ::String, context: "#{context}[:service_profile_id]")
        Hearth::Validator.validate!(input[:wireless_device_type], ::String, context: "#{context}[:wireless_device_type]")
        Hearth::Validator.validate!(input[:fuota_task_id], ::String, context: "#{context}[:fuota_task_id]")
        Hearth::Validator.validate!(input[:multicast_group_id], ::String, context: "#{context}[:multicast_group_id]")
      end
    end

    class ListWirelessDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWirelessDevicesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::WirelessDeviceStatisticsList.validate!(input[:wireless_device_list], context: "#{context}[:wireless_device_list]") unless input[:wireless_device_list].nil?
      end
    end

    class ListWirelessGatewayTaskDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWirelessGatewayTaskDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:task_definition_type], ::String, context: "#{context}[:task_definition_type]")
      end
    end

    class ListWirelessGatewayTaskDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWirelessGatewayTaskDefinitionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::WirelessGatewayTaskDefinitionList.validate!(input[:task_definitions], context: "#{context}[:task_definitions]") unless input[:task_definitions].nil?
      end
    end

    class ListWirelessGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWirelessGatewaysInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWirelessGatewaysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWirelessGatewaysOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::WirelessGatewayStatisticsList.validate!(input[:wireless_gateway_list], context: "#{context}[:wireless_gateway_list]") unless input[:wireless_gateway_list].nil?
      end
    end

    class LoRaWANConnectionStatusEventNotificationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANConnectionStatusEventNotificationConfigurations, context: context)
        Hearth::Validator.validate!(input[:gateway_eui_event_topic], ::String, context: "#{context}[:gateway_eui_event_topic]")
      end
    end

    class LoRaWANConnectionStatusResourceTypeEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANConnectionStatusResourceTypeEventConfiguration, context: context)
        Hearth::Validator.validate!(input[:wireless_gateway_event_topic], ::String, context: "#{context}[:wireless_gateway_event_topic]")
      end
    end

    class LoRaWANDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANDevice, context: context)
        Hearth::Validator.validate!(input[:dev_eui], ::String, context: "#{context}[:dev_eui]")
        Hearth::Validator.validate!(input[:device_profile_id], ::String, context: "#{context}[:device_profile_id]")
        Hearth::Validator.validate!(input[:service_profile_id], ::String, context: "#{context}[:service_profile_id]")
        Validators::OtaaV1_1.validate!(input[:otaa_v1_1], context: "#{context}[:otaa_v1_1]") unless input[:otaa_v1_1].nil?
        Validators::OtaaV1_0_x.validate!(input[:otaa_v1_0_x], context: "#{context}[:otaa_v1_0_x]") unless input[:otaa_v1_0_x].nil?
        Validators::AbpV1_1.validate!(input[:abp_v1_1], context: "#{context}[:abp_v1_1]") unless input[:abp_v1_1].nil?
        Validators::AbpV1_0_x.validate!(input[:abp_v1_0_x], context: "#{context}[:abp_v1_0_x]") unless input[:abp_v1_0_x].nil?
        Validators::FPorts.validate!(input[:f_ports], context: "#{context}[:f_ports]") unless input[:f_ports].nil?
      end
    end

    class LoRaWANDeviceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANDeviceMetadata, context: context)
        Hearth::Validator.validate!(input[:dev_eui], ::String, context: "#{context}[:dev_eui]")
        Hearth::Validator.validate!(input[:f_port], ::Integer, context: "#{context}[:f_port]")
        Hearth::Validator.validate!(input[:data_rate], ::Integer, context: "#{context}[:data_rate]")
        Hearth::Validator.validate!(input[:frequency], ::Integer, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:timestamp], ::String, context: "#{context}[:timestamp]")
        Validators::LoRaWANGatewayMetadataList.validate!(input[:gateways], context: "#{context}[:gateways]") unless input[:gateways].nil?
      end
    end

    class LoRaWANDeviceProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANDeviceProfile, context: context)
        Hearth::Validator.validate!(input[:supports_class_b], ::TrueClass, ::FalseClass, context: "#{context}[:supports_class_b]")
        Hearth::Validator.validate!(input[:class_b_timeout], ::Integer, context: "#{context}[:class_b_timeout]")
        Hearth::Validator.validate!(input[:ping_slot_period], ::Integer, context: "#{context}[:ping_slot_period]")
        Hearth::Validator.validate!(input[:ping_slot_dr], ::Integer, context: "#{context}[:ping_slot_dr]")
        Hearth::Validator.validate!(input[:ping_slot_freq], ::Integer, context: "#{context}[:ping_slot_freq]")
        Hearth::Validator.validate!(input[:supports_class_c], ::TrueClass, ::FalseClass, context: "#{context}[:supports_class_c]")
        Hearth::Validator.validate!(input[:class_c_timeout], ::Integer, context: "#{context}[:class_c_timeout]")
        Hearth::Validator.validate!(input[:mac_version], ::String, context: "#{context}[:mac_version]")
        Hearth::Validator.validate!(input[:reg_params_revision], ::String, context: "#{context}[:reg_params_revision]")
        Hearth::Validator.validate!(input[:rx_delay1], ::Integer, context: "#{context}[:rx_delay1]")
        Hearth::Validator.validate!(input[:rx_dr_offset1], ::Integer, context: "#{context}[:rx_dr_offset1]")
        Hearth::Validator.validate!(input[:rx_data_rate2], ::Integer, context: "#{context}[:rx_data_rate2]")
        Hearth::Validator.validate!(input[:rx_freq2], ::Integer, context: "#{context}[:rx_freq2]")
        Validators::FactoryPresetFreqsList.validate!(input[:factory_preset_freqs_list], context: "#{context}[:factory_preset_freqs_list]") unless input[:factory_preset_freqs_list].nil?
        Hearth::Validator.validate!(input[:max_eirp], ::Integer, context: "#{context}[:max_eirp]")
        Hearth::Validator.validate!(input[:max_duty_cycle], ::Integer, context: "#{context}[:max_duty_cycle]")
        Hearth::Validator.validate!(input[:rf_region], ::String, context: "#{context}[:rf_region]")
        Hearth::Validator.validate!(input[:supports_join], ::TrueClass, ::FalseClass, context: "#{context}[:supports_join]")
        Hearth::Validator.validate!(input[:supports32_bit_f_cnt], ::TrueClass, ::FalseClass, context: "#{context}[:supports32_bit_f_cnt]")
      end
    end

    class LoRaWANFuotaTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANFuotaTask, context: context)
        Hearth::Validator.validate!(input[:rf_region], ::String, context: "#{context}[:rf_region]")
      end
    end

    class LoRaWANFuotaTaskGetInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANFuotaTaskGetInfo, context: context)
        Hearth::Validator.validate!(input[:rf_region], ::String, context: "#{context}[:rf_region]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class LoRaWANGateway
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANGateway, context: context)
        Hearth::Validator.validate!(input[:gateway_eui], ::String, context: "#{context}[:gateway_eui]")
        Hearth::Validator.validate!(input[:rf_region], ::String, context: "#{context}[:rf_region]")
        Validators::JoinEuiFilters.validate!(input[:join_eui_filters], context: "#{context}[:join_eui_filters]") unless input[:join_eui_filters].nil?
        Validators::NetIdFilters.validate!(input[:net_id_filters], context: "#{context}[:net_id_filters]") unless input[:net_id_filters].nil?
        Validators::SubBands.validate!(input[:sub_bands], context: "#{context}[:sub_bands]") unless input[:sub_bands].nil?
      end
    end

    class LoRaWANGatewayCurrentVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANGatewayCurrentVersion, context: context)
        Validators::LoRaWANGatewayVersion.validate!(input[:current_version], context: "#{context}[:current_version]") unless input[:current_version].nil?
      end
    end

    class LoRaWANGatewayMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANGatewayMetadata, context: context)
        Hearth::Validator.validate!(input[:gateway_eui], ::String, context: "#{context}[:gateway_eui]")
        Hearth::Validator.validate!(input[:snr], ::Float, context: "#{context}[:snr]")
        Hearth::Validator.validate!(input[:rssi], ::Float, context: "#{context}[:rssi]")
      end
    end

    class LoRaWANGatewayMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LoRaWANGatewayMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoRaWANGatewayVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANGatewayVersion, context: context)
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Hearth::Validator.validate!(input[:station], ::String, context: "#{context}[:station]")
      end
    end

    class LoRaWANGetServiceProfileInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANGetServiceProfileInfo, context: context)
        Hearth::Validator.validate!(input[:ul_rate], ::Integer, context: "#{context}[:ul_rate]")
        Hearth::Validator.validate!(input[:ul_bucket_size], ::Integer, context: "#{context}[:ul_bucket_size]")
        Hearth::Validator.validate!(input[:ul_rate_policy], ::String, context: "#{context}[:ul_rate_policy]")
        Hearth::Validator.validate!(input[:dl_rate], ::Integer, context: "#{context}[:dl_rate]")
        Hearth::Validator.validate!(input[:dl_bucket_size], ::Integer, context: "#{context}[:dl_bucket_size]")
        Hearth::Validator.validate!(input[:dl_rate_policy], ::String, context: "#{context}[:dl_rate_policy]")
        Hearth::Validator.validate!(input[:add_gw_metadata], ::TrueClass, ::FalseClass, context: "#{context}[:add_gw_metadata]")
        Hearth::Validator.validate!(input[:dev_status_req_freq], ::Integer, context: "#{context}[:dev_status_req_freq]")
        Hearth::Validator.validate!(input[:report_dev_status_battery], ::TrueClass, ::FalseClass, context: "#{context}[:report_dev_status_battery]")
        Hearth::Validator.validate!(input[:report_dev_status_margin], ::TrueClass, ::FalseClass, context: "#{context}[:report_dev_status_margin]")
        Hearth::Validator.validate!(input[:dr_min], ::Integer, context: "#{context}[:dr_min]")
        Hearth::Validator.validate!(input[:dr_max], ::Integer, context: "#{context}[:dr_max]")
        Hearth::Validator.validate!(input[:channel_mask], ::String, context: "#{context}[:channel_mask]")
        Hearth::Validator.validate!(input[:pr_allowed], ::TrueClass, ::FalseClass, context: "#{context}[:pr_allowed]")
        Hearth::Validator.validate!(input[:hr_allowed], ::TrueClass, ::FalseClass, context: "#{context}[:hr_allowed]")
        Hearth::Validator.validate!(input[:ra_allowed], ::TrueClass, ::FalseClass, context: "#{context}[:ra_allowed]")
        Hearth::Validator.validate!(input[:nwk_geo_loc], ::TrueClass, ::FalseClass, context: "#{context}[:nwk_geo_loc]")
        Hearth::Validator.validate!(input[:target_per], ::Integer, context: "#{context}[:target_per]")
        Hearth::Validator.validate!(input[:min_gw_diversity], ::Integer, context: "#{context}[:min_gw_diversity]")
      end
    end

    class LoRaWANJoinEventNotificationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANJoinEventNotificationConfigurations, context: context)
        Hearth::Validator.validate!(input[:dev_eui_event_topic], ::String, context: "#{context}[:dev_eui_event_topic]")
      end
    end

    class LoRaWANJoinResourceTypeEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANJoinResourceTypeEventConfiguration, context: context)
        Hearth::Validator.validate!(input[:wireless_device_event_topic], ::String, context: "#{context}[:wireless_device_event_topic]")
      end
    end

    class LoRaWANListDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANListDevice, context: context)
        Hearth::Validator.validate!(input[:dev_eui], ::String, context: "#{context}[:dev_eui]")
      end
    end

    class LoRaWANMulticast
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANMulticast, context: context)
        Hearth::Validator.validate!(input[:rf_region], ::String, context: "#{context}[:rf_region]")
        Hearth::Validator.validate!(input[:dl_class], ::String, context: "#{context}[:dl_class]")
      end
    end

    class LoRaWANMulticastGet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANMulticastGet, context: context)
        Hearth::Validator.validate!(input[:rf_region], ::String, context: "#{context}[:rf_region]")
        Hearth::Validator.validate!(input[:dl_class], ::String, context: "#{context}[:dl_class]")
        Hearth::Validator.validate!(input[:number_of_devices_requested], ::Integer, context: "#{context}[:number_of_devices_requested]")
        Hearth::Validator.validate!(input[:number_of_devices_in_group], ::Integer, context: "#{context}[:number_of_devices_in_group]")
      end
    end

    class LoRaWANMulticastMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANMulticastMetadata, context: context)
        Hearth::Validator.validate!(input[:f_port], ::Integer, context: "#{context}[:f_port]")
      end
    end

    class LoRaWANMulticastSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANMulticastSession, context: context)
        Hearth::Validator.validate!(input[:dl_dr], ::Integer, context: "#{context}[:dl_dr]")
        Hearth::Validator.validate!(input[:dl_freq], ::Integer, context: "#{context}[:dl_freq]")
        Hearth::Validator.validate!(input[:session_start_time], ::Time, context: "#{context}[:session_start_time]")
        Hearth::Validator.validate!(input[:session_timeout], ::Integer, context: "#{context}[:session_timeout]")
      end
    end

    class LoRaWANSendDataToDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANSendDataToDevice, context: context)
        Hearth::Validator.validate!(input[:f_port], ::Integer, context: "#{context}[:f_port]")
      end
    end

    class LoRaWANServiceProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANServiceProfile, context: context)
        Hearth::Validator.validate!(input[:add_gw_metadata], ::TrueClass, ::FalseClass, context: "#{context}[:add_gw_metadata]")
      end
    end

    class LoRaWANStartFuotaTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANStartFuotaTask, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class LoRaWANUpdateDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANUpdateDevice, context: context)
        Hearth::Validator.validate!(input[:device_profile_id], ::String, context: "#{context}[:device_profile_id]")
        Hearth::Validator.validate!(input[:service_profile_id], ::String, context: "#{context}[:service_profile_id]")
        Validators::UpdateAbpV1_1.validate!(input[:abp_v1_1], context: "#{context}[:abp_v1_1]") unless input[:abp_v1_1].nil?
        Validators::UpdateAbpV1_0_x.validate!(input[:abp_v1_0_x], context: "#{context}[:abp_v1_0_x]") unless input[:abp_v1_0_x].nil?
      end
    end

    class LoRaWANUpdateGatewayTaskCreate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANUpdateGatewayTaskCreate, context: context)
        Hearth::Validator.validate!(input[:update_signature], ::String, context: "#{context}[:update_signature]")
        Hearth::Validator.validate!(input[:sig_key_crc], ::Integer, context: "#{context}[:sig_key_crc]")
        Validators::LoRaWANGatewayVersion.validate!(input[:current_version], context: "#{context}[:current_version]") unless input[:current_version].nil?
        Validators::LoRaWANGatewayVersion.validate!(input[:update_version], context: "#{context}[:update_version]") unless input[:update_version].nil?
      end
    end

    class LoRaWANUpdateGatewayTaskEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoRaWANUpdateGatewayTaskEntry, context: context)
        Validators::LoRaWANGatewayVersion.validate!(input[:current_version], context: "#{context}[:current_version]") unless input[:current_version].nil?
        Validators::LoRaWANGatewayVersion.validate!(input[:update_version], context: "#{context}[:update_version]") unless input[:update_version].nil?
      end
    end

    class MulticastGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MulticastGroup, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class MulticastGroupByFuotaTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MulticastGroupByFuotaTask, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class MulticastGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MulticastGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MulticastGroupListByFuotaTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MulticastGroupByFuotaTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MulticastWirelessMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MulticastWirelessMetadata, context: context)
        Validators::LoRaWANMulticastMetadata.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class NetIdFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkAnalyzerConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkAnalyzerConfigurations.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkAnalyzerConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkAnalyzerConfigurations, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class OtaaV1_0_x
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OtaaV1_0_x, context: context)
        Hearth::Validator.validate!(input[:app_key], ::String, context: "#{context}[:app_key]")
        Hearth::Validator.validate!(input[:app_eui], ::String, context: "#{context}[:app_eui]")
        Hearth::Validator.validate!(input[:gen_app_key], ::String, context: "#{context}[:gen_app_key]")
      end
    end

    class OtaaV1_1
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OtaaV1_1, context: context)
        Hearth::Validator.validate!(input[:app_key], ::String, context: "#{context}[:app_key]")
        Hearth::Validator.validate!(input[:nwk_key], ::String, context: "#{context}[:nwk_key]")
        Hearth::Validator.validate!(input[:join_eui], ::String, context: "#{context}[:join_eui]")
      end
    end

    class ProximityEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProximityEventConfiguration, context: context)
        Validators::SidewalkEventNotificationConfigurations.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
        Hearth::Validator.validate!(input[:wireless_device_id_event_topic], ::String, context: "#{context}[:wireless_device_id_event_topic]")
      end
    end

    class ProximityResourceTypeEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProximityResourceTypeEventConfiguration, context: context)
        Validators::SidewalkResourceTypeEventConfiguration.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
      end
    end

    class PutResourceLogLevelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourceLogLevelInput, context: context)
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class PutResourceLogLevelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourceLogLevelOutput, context: context)
      end
    end

    class ResetAllResourceLogLevelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetAllResourceLogLevelsInput, context: context)
      end
    end

    class ResetAllResourceLogLevelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetAllResourceLogLevelsOutput, context: context)
      end
    end

    class ResetResourceLogLevelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetResourceLogLevelInput, context: context)
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResetResourceLogLevelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetResourceLogLevelOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class SendDataToMulticastGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendDataToMulticastGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:payload_data], ::String, context: "#{context}[:payload_data]")
        Validators::MulticastWirelessMetadata.validate!(input[:wireless_metadata], context: "#{context}[:wireless_metadata]") unless input[:wireless_metadata].nil?
      end
    end

    class SendDataToMulticastGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendDataToMulticastGroupOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SendDataToWirelessDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendDataToWirelessDeviceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:transmit_mode], ::Integer, context: "#{context}[:transmit_mode]")
        Hearth::Validator.validate!(input[:payload_data], ::String, context: "#{context}[:payload_data]")
        Validators::WirelessMetadata.validate!(input[:wireless_metadata], context: "#{context}[:wireless_metadata]") unless input[:wireless_metadata].nil?
      end
    end

    class SendDataToWirelessDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendDataToWirelessDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class ServiceProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceProfile, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ServiceProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SessionKeysAbpV1_0_x
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionKeysAbpV1_0_x, context: context)
        Hearth::Validator.validate!(input[:nwk_s_key], ::String, context: "#{context}[:nwk_s_key]")
        Hearth::Validator.validate!(input[:app_s_key], ::String, context: "#{context}[:app_s_key]")
      end
    end

    class SessionKeysAbpV1_1
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionKeysAbpV1_1, context: context)
        Hearth::Validator.validate!(input[:f_nwk_s_int_key], ::String, context: "#{context}[:f_nwk_s_int_key]")
        Hearth::Validator.validate!(input[:s_nwk_s_int_key], ::String, context: "#{context}[:s_nwk_s_int_key]")
        Hearth::Validator.validate!(input[:nwk_s_enc_key], ::String, context: "#{context}[:nwk_s_enc_key]")
        Hearth::Validator.validate!(input[:app_s_key], ::String, context: "#{context}[:app_s_key]")
      end
    end

    class SidewalkAccountInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SidewalkAccountInfo, context: context)
        Hearth::Validator.validate!(input[:amazon_id], ::String, context: "#{context}[:amazon_id]")
        Hearth::Validator.validate!(input[:app_server_private_key], ::String, context: "#{context}[:app_server_private_key]")
      end
    end

    class SidewalkAccountInfoWithFingerprint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SidewalkAccountInfoWithFingerprint, context: context)
        Hearth::Validator.validate!(input[:amazon_id], ::String, context: "#{context}[:amazon_id]")
        Hearth::Validator.validate!(input[:fingerprint], ::String, context: "#{context}[:fingerprint]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class SidewalkAccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SidewalkAccountInfoWithFingerprint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SidewalkDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SidewalkDevice, context: context)
        Hearth::Validator.validate!(input[:amazon_id], ::String, context: "#{context}[:amazon_id]")
        Hearth::Validator.validate!(input[:sidewalk_id], ::String, context: "#{context}[:sidewalk_id]")
        Hearth::Validator.validate!(input[:sidewalk_manufacturing_sn], ::String, context: "#{context}[:sidewalk_manufacturing_sn]")
        Validators::DeviceCertificateList.validate!(input[:device_certificates], context: "#{context}[:device_certificates]") unless input[:device_certificates].nil?
      end
    end

    class SidewalkDeviceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SidewalkDeviceMetadata, context: context)
        Hearth::Validator.validate!(input[:rssi], ::Integer, context: "#{context}[:rssi]")
        Hearth::Validator.validate!(input[:battery_level], ::String, context: "#{context}[:battery_level]")
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Hearth::Validator.validate!(input[:device_state], ::String, context: "#{context}[:device_state]")
      end
    end

    class SidewalkEventNotificationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SidewalkEventNotificationConfigurations, context: context)
        Hearth::Validator.validate!(input[:amazon_id_event_topic], ::String, context: "#{context}[:amazon_id_event_topic]")
      end
    end

    class SidewalkListDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SidewalkListDevice, context: context)
        Hearth::Validator.validate!(input[:amazon_id], ::String, context: "#{context}[:amazon_id]")
        Hearth::Validator.validate!(input[:sidewalk_id], ::String, context: "#{context}[:sidewalk_id]")
        Hearth::Validator.validate!(input[:sidewalk_manufacturing_sn], ::String, context: "#{context}[:sidewalk_manufacturing_sn]")
        Validators::DeviceCertificateList.validate!(input[:device_certificates], context: "#{context}[:device_certificates]") unless input[:device_certificates].nil?
      end
    end

    class SidewalkResourceTypeEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SidewalkResourceTypeEventConfiguration, context: context)
        Hearth::Validator.validate!(input[:wireless_device_event_topic], ::String, context: "#{context}[:wireless_device_event_topic]")
      end
    end

    class SidewalkSendDataToDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SidewalkSendDataToDevice, context: context)
        Hearth::Validator.validate!(input[:seq], ::Integer, context: "#{context}[:seq]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
      end
    end

    class SidewalkUpdateAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SidewalkUpdateAccount, context: context)
        Hearth::Validator.validate!(input[:app_server_private_key], ::String, context: "#{context}[:app_server_private_key]")
      end
    end

    class StartBulkAssociateWirelessDeviceWithMulticastGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBulkAssociateWirelessDeviceWithMulticastGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartBulkAssociateWirelessDeviceWithMulticastGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBulkAssociateWirelessDeviceWithMulticastGroupOutput, context: context)
      end
    end

    class StartBulkDisassociateWirelessDeviceFromMulticastGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput, context: context)
      end
    end

    class StartFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::LoRaWANStartFuotaTask.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class StartFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFuotaTaskOutput, context: context)
      end
    end

    class StartMulticastGroupSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMulticastGroupSessionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::LoRaWANMulticastSession.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class StartMulticastGroupSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMulticastGroupSessionOutput, context: context)
      end
    end

    class SubBands
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TestWirelessDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestWirelessDeviceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class TestWirelessDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestWirelessDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class TraceContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TraceContent, context: context)
        Hearth::Validator.validate!(input[:wireless_device_frame_info], ::String, context: "#{context}[:wireless_device_frame_info]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
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

    class UpdateAbpV1_0_x
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAbpV1_0_x, context: context)
        Hearth::Validator.validate!(input[:f_cnt_start], ::Integer, context: "#{context}[:f_cnt_start]")
      end
    end

    class UpdateAbpV1_1
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAbpV1_1, context: context)
        Hearth::Validator.validate!(input[:f_cnt_start], ::Integer, context: "#{context}[:f_cnt_start]")
      end
    end

    class UpdateDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDestinationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:expression_type], ::String, context: "#{context}[:expression_type]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class UpdateDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDestinationOutput, context: context)
      end
    end

    class UpdateEventConfigurationByResourceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventConfigurationByResourceTypesInput, context: context)
        Validators::DeviceRegistrationStateResourceTypeEventConfiguration.validate!(input[:device_registration_state], context: "#{context}[:device_registration_state]") unless input[:device_registration_state].nil?
        Validators::ProximityResourceTypeEventConfiguration.validate!(input[:proximity], context: "#{context}[:proximity]") unless input[:proximity].nil?
        Validators::JoinResourceTypeEventConfiguration.validate!(input[:join], context: "#{context}[:join]") unless input[:join].nil?
        Validators::ConnectionStatusResourceTypeEventConfiguration.validate!(input[:connection_status], context: "#{context}[:connection_status]") unless input[:connection_status].nil?
      end
    end

    class UpdateEventConfigurationByResourceTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventConfigurationByResourceTypesOutput, context: context)
      end
    end

    class UpdateFuotaTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFuotaTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::LoRaWANFuotaTask.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Hearth::Validator.validate!(input[:firmware_update_image], ::String, context: "#{context}[:firmware_update_image]")
        Hearth::Validator.validate!(input[:firmware_update_role], ::String, context: "#{context}[:firmware_update_role]")
      end
    end

    class UpdateFuotaTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFuotaTaskOutput, context: context)
      end
    end

    class UpdateLogLevelsByResourceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLogLevelsByResourceTypesInput, context: context)
        Hearth::Validator.validate!(input[:default_log_level], ::String, context: "#{context}[:default_log_level]")
        Validators::WirelessDeviceLogOptionList.validate!(input[:wireless_device_log_options], context: "#{context}[:wireless_device_log_options]") unless input[:wireless_device_log_options].nil?
        Validators::WirelessGatewayLogOptionList.validate!(input[:wireless_gateway_log_options], context: "#{context}[:wireless_gateway_log_options]") unless input[:wireless_gateway_log_options].nil?
      end
    end

    class UpdateLogLevelsByResourceTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLogLevelsByResourceTypesOutput, context: context)
      end
    end

    class UpdateMulticastGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMulticastGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::LoRaWANMulticast.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class UpdateMulticastGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMulticastGroupOutput, context: context)
      end
    end

    class UpdateNetworkAnalyzerConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkAnalyzerConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
        Validators::TraceContent.validate!(input[:trace_content], context: "#{context}[:trace_content]") unless input[:trace_content].nil?
        Validators::WirelessDeviceList.validate!(input[:wireless_devices_to_add], context: "#{context}[:wireless_devices_to_add]") unless input[:wireless_devices_to_add].nil?
        Validators::WirelessDeviceList.validate!(input[:wireless_devices_to_remove], context: "#{context}[:wireless_devices_to_remove]") unless input[:wireless_devices_to_remove].nil?
        Validators::WirelessGatewayList.validate!(input[:wireless_gateways_to_add], context: "#{context}[:wireless_gateways_to_add]") unless input[:wireless_gateways_to_add].nil?
        Validators::WirelessGatewayList.validate!(input[:wireless_gateways_to_remove], context: "#{context}[:wireless_gateways_to_remove]") unless input[:wireless_gateways_to_remove].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateNetworkAnalyzerConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkAnalyzerConfigurationOutput, context: context)
      end
    end

    class UpdatePartnerAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePartnerAccountInput, context: context)
        Validators::SidewalkUpdateAccount.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
        Hearth::Validator.validate!(input[:partner_account_id], ::String, context: "#{context}[:partner_account_id]")
        Hearth::Validator.validate!(input[:partner_type], ::String, context: "#{context}[:partner_type]")
      end
    end

    class UpdatePartnerAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePartnerAccountOutput, context: context)
      end
    end

    class UpdateResourceEventConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceEventConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:identifier_type], ::String, context: "#{context}[:identifier_type]")
        Hearth::Validator.validate!(input[:partner_type], ::String, context: "#{context}[:partner_type]")
        Validators::DeviceRegistrationStateEventConfiguration.validate!(input[:device_registration_state], context: "#{context}[:device_registration_state]") unless input[:device_registration_state].nil?
        Validators::ProximityEventConfiguration.validate!(input[:proximity], context: "#{context}[:proximity]") unless input[:proximity].nil?
        Validators::JoinEventConfiguration.validate!(input[:join], context: "#{context}[:join]") unless input[:join].nil?
        Validators::ConnectionStatusEventConfiguration.validate!(input[:connection_status], context: "#{context}[:connection_status]") unless input[:connection_status].nil?
      end
    end

    class UpdateResourceEventConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceEventConfigurationOutput, context: context)
      end
    end

    class UpdateWirelessDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWirelessDeviceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::LoRaWANUpdateDevice.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class UpdateWirelessDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWirelessDeviceOutput, context: context)
      end
    end

    class UpdateWirelessGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWirelessGatewayInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::JoinEuiFilters.validate!(input[:join_eui_filters], context: "#{context}[:join_eui_filters]") unless input[:join_eui_filters].nil?
        Validators::NetIdFilters.validate!(input[:net_id_filters], context: "#{context}[:net_id_filters]") unless input[:net_id_filters].nil?
      end
    end

    class UpdateWirelessGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWirelessGatewayOutput, context: context)
      end
    end

    class UpdateWirelessGatewayTaskCreate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWirelessGatewayTaskCreate, context: context)
        Hearth::Validator.validate!(input[:update_data_source], ::String, context: "#{context}[:update_data_source]")
        Hearth::Validator.validate!(input[:update_data_role], ::String, context: "#{context}[:update_data_role]")
        Validators::LoRaWANUpdateGatewayTaskCreate.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
      end
    end

    class UpdateWirelessGatewayTaskEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWirelessGatewayTaskEntry, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::LoRaWANUpdateGatewayTaskEntry.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WirelessDeviceEventLogOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WirelessDeviceEventLogOption, context: context)
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class WirelessDeviceEventLogOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WirelessDeviceEventLogOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WirelessDeviceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WirelessDeviceLogOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WirelessDeviceLogOption, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        Validators::WirelessDeviceEventLogOptionList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class WirelessDeviceLogOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WirelessDeviceLogOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WirelessDeviceStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WirelessDeviceStatistics, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
        Hearth::Validator.validate!(input[:last_uplink_received_at], ::String, context: "#{context}[:last_uplink_received_at]")
        Validators::LoRaWANListDevice.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Validators::SidewalkListDevice.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
        Hearth::Validator.validate!(input[:fuota_device_status], ::String, context: "#{context}[:fuota_device_status]")
        Hearth::Validator.validate!(input[:multicast_device_status], ::String, context: "#{context}[:multicast_device_status]")
        Hearth::Validator.validate!(input[:mc_group_id], ::Integer, context: "#{context}[:mc_group_id]")
      end
    end

    class WirelessDeviceStatisticsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WirelessDeviceStatistics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WirelessGatewayEventLogOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WirelessGatewayEventLogOption, context: context)
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class WirelessGatewayEventLogOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WirelessGatewayEventLogOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WirelessGatewayList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WirelessGatewayLogOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WirelessGatewayLogOption, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        Validators::WirelessGatewayEventLogOptionList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class WirelessGatewayLogOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WirelessGatewayLogOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WirelessGatewayStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WirelessGatewayStatistics, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::LoRaWANGateway.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Hearth::Validator.validate!(input[:last_uplink_received_at], ::String, context: "#{context}[:last_uplink_received_at]")
      end
    end

    class WirelessGatewayStatisticsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WirelessGatewayStatistics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WirelessGatewayTaskDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpdateWirelessGatewayTaskEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WirelessMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WirelessMetadata, context: context)
        Validators::LoRaWANSendDataToDevice.validate!(input[:lo_ra_wan], context: "#{context}[:lo_ra_wan]") unless input[:lo_ra_wan].nil?
        Validators::SidewalkSendDataToDevice.validate!(input[:sidewalk], context: "#{context}[:sidewalk]") unless input[:sidewalk].nil?
      end
    end

  end
end
