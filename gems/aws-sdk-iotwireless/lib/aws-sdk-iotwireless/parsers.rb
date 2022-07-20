# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTWireless
  module Parsers

    # Operation Parser for AssociateAwsAccountWithPartnerAccount
    class AssociateAwsAccountWithPartnerAccount
      def self.parse(http_resp)
        data = Types::AssociateAwsAccountWithPartnerAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sidewalk = (SidewalkAccountInfo.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        data.arn = map['Arn']
        data
      end
    end

    class SidewalkAccountInfo
      def self.parse(map)
        data = Types::SidewalkAccountInfo.new
        data.amazon_id = map['AmazonId']
        data.app_server_private_key = map['AppServerPrivateKey']
        return data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateMulticastGroupWithFuotaTask
    class AssociateMulticastGroupWithFuotaTask
      def self.parse(http_resp)
        data = Types::AssociateMulticastGroupWithFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociateWirelessDeviceWithFuotaTask
    class AssociateWirelessDeviceWithFuotaTask
      def self.parse(http_resp)
        data = Types::AssociateWirelessDeviceWithFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociateWirelessDeviceWithMulticastGroup
    class AssociateWirelessDeviceWithMulticastGroup
      def self.parse(http_resp)
        data = Types::AssociateWirelessDeviceWithMulticastGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociateWirelessDeviceWithThing
    class AssociateWirelessDeviceWithThing
      def self.parse(http_resp)
        data = Types::AssociateWirelessDeviceWithThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociateWirelessGatewayWithCertificate
    class AssociateWirelessGatewayWithCertificate
      def self.parse(http_resp)
        data = Types::AssociateWirelessGatewayWithCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.iot_certificate_id = map['IotCertificateId']
        data
      end
    end

    # Operation Parser for AssociateWirelessGatewayWithThing
    class AssociateWirelessGatewayWithThing
      def self.parse(http_resp)
        data = Types::AssociateWirelessGatewayWithThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelMulticastGroupSession
    class CancelMulticastGroupSession
      def self.parse(http_resp)
        data = Types::CancelMulticastGroupSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateDestination
    class CreateDestination
      def self.parse(http_resp)
        data = Types::CreateDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateDeviceProfile
    class CreateDeviceProfile
      def self.parse(http_resp)
        data = Types::CreateDeviceProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateFuotaTask
    class CreateFuotaTask
      def self.parse(http_resp)
        data = Types::CreateFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateMulticastGroup
    class CreateMulticastGroup
      def self.parse(http_resp)
        data = Types::CreateMulticastGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateNetworkAnalyzerConfiguration
    class CreateNetworkAnalyzerConfiguration
      def self.parse(http_resp)
        data = Types::CreateNetworkAnalyzerConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateServiceProfile
    class CreateServiceProfile
      def self.parse(http_resp)
        data = Types::CreateServiceProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateWirelessDevice
    class CreateWirelessDevice
      def self.parse(http_resp)
        data = Types::CreateWirelessDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateWirelessGateway
    class CreateWirelessGateway
      def self.parse(http_resp)
        data = Types::CreateWirelessGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateWirelessGatewayTask
    class CreateWirelessGatewayTask
      def self.parse(http_resp)
        data = Types::CreateWirelessGatewayTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.wireless_gateway_task_definition_id = map['WirelessGatewayTaskDefinitionId']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for CreateWirelessGatewayTaskDefinition
    class CreateWirelessGatewayTaskDefinition
      def self.parse(http_resp)
        data = Types::CreateWirelessGatewayTaskDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for DeleteDestination
    class DeleteDestination
      def self.parse(http_resp)
        data = Types::DeleteDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDeviceProfile
    class DeleteDeviceProfile
      def self.parse(http_resp)
        data = Types::DeleteDeviceProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFuotaTask
    class DeleteFuotaTask
      def self.parse(http_resp)
        data = Types::DeleteFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteMulticastGroup
    class DeleteMulticastGroup
      def self.parse(http_resp)
        data = Types::DeleteMulticastGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteNetworkAnalyzerConfiguration
    class DeleteNetworkAnalyzerConfiguration
      def self.parse(http_resp)
        data = Types::DeleteNetworkAnalyzerConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteQueuedMessages
    class DeleteQueuedMessages
      def self.parse(http_resp)
        data = Types::DeleteQueuedMessagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteServiceProfile
    class DeleteServiceProfile
      def self.parse(http_resp)
        data = Types::DeleteServiceProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteWirelessDevice
    class DeleteWirelessDevice
      def self.parse(http_resp)
        data = Types::DeleteWirelessDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteWirelessGateway
    class DeleteWirelessGateway
      def self.parse(http_resp)
        data = Types::DeleteWirelessGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteWirelessGatewayTask
    class DeleteWirelessGatewayTask
      def self.parse(http_resp)
        data = Types::DeleteWirelessGatewayTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteWirelessGatewayTaskDefinition
    class DeleteWirelessGatewayTaskDefinition
      def self.parse(http_resp)
        data = Types::DeleteWirelessGatewayTaskDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateAwsAccountFromPartnerAccount
    class DisassociateAwsAccountFromPartnerAccount
      def self.parse(http_resp)
        data = Types::DisassociateAwsAccountFromPartnerAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateMulticastGroupFromFuotaTask
    class DisassociateMulticastGroupFromFuotaTask
      def self.parse(http_resp)
        data = Types::DisassociateMulticastGroupFromFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateWirelessDeviceFromFuotaTask
    class DisassociateWirelessDeviceFromFuotaTask
      def self.parse(http_resp)
        data = Types::DisassociateWirelessDeviceFromFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateWirelessDeviceFromMulticastGroup
    class DisassociateWirelessDeviceFromMulticastGroup
      def self.parse(http_resp)
        data = Types::DisassociateWirelessDeviceFromMulticastGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateWirelessDeviceFromThing
    class DisassociateWirelessDeviceFromThing
      def self.parse(http_resp)
        data = Types::DisassociateWirelessDeviceFromThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateWirelessGatewayFromCertificate
    class DisassociateWirelessGatewayFromCertificate
      def self.parse(http_resp)
        data = Types::DisassociateWirelessGatewayFromCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateWirelessGatewayFromThing
    class DisassociateWirelessGatewayFromThing
      def self.parse(http_resp)
        data = Types::DisassociateWirelessGatewayFromThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetDestination
    class GetDestination
      def self.parse(http_resp)
        data = Types::GetDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data.expression = map['Expression']
        data.expression_type = map['ExpressionType']
        data.description = map['Description']
        data.role_arn = map['RoleArn']
        data
      end
    end

    # Operation Parser for GetDeviceProfile
    class GetDeviceProfile
      def self.parse(http_resp)
        data = Types::GetDeviceProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data.id = map['Id']
        data.lo_ra_wan = (LoRaWANDeviceProfile.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data
      end
    end

    class LoRaWANDeviceProfile
      def self.parse(map)
        data = Types::LoRaWANDeviceProfile.new
        data.supports_class_b = map['SupportsClassB']
        data.class_b_timeout = map['ClassBTimeout']
        data.ping_slot_period = map['PingSlotPeriod']
        data.ping_slot_dr = map['PingSlotDr']
        data.ping_slot_freq = map['PingSlotFreq']
        data.supports_class_c = map['SupportsClassC']
        data.class_c_timeout = map['ClassCTimeout']
        data.mac_version = map['MacVersion']
        data.reg_params_revision = map['RegParamsRevision']
        data.rx_delay1 = map['RxDelay1']
        data.rx_dr_offset1 = map['RxDrOffset1']
        data.rx_data_rate2 = map['RxDataRate2']
        data.rx_freq2 = map['RxFreq2']
        data.factory_preset_freqs_list = (FactoryPresetFreqsList.parse(map['FactoryPresetFreqsList']) unless map['FactoryPresetFreqsList'].nil?)
        data.max_eirp = map['MaxEirp']
        data.max_duty_cycle = map['MaxDutyCycle']
        data.rf_region = map['RfRegion']
        data.supports_join = map['SupportsJoin']
        data.supports32_bit_f_cnt = map['Supports32BitFCnt']
        return data
      end
    end

    class FactoryPresetFreqsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetEventConfigurationByResourceTypes
    class GetEventConfigurationByResourceTypes
      def self.parse(http_resp)
        data = Types::GetEventConfigurationByResourceTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_registration_state = (DeviceRegistrationStateResourceTypeEventConfiguration.parse(map['DeviceRegistrationState']) unless map['DeviceRegistrationState'].nil?)
        data.proximity = (ProximityResourceTypeEventConfiguration.parse(map['Proximity']) unless map['Proximity'].nil?)
        data.join = (JoinResourceTypeEventConfiguration.parse(map['Join']) unless map['Join'].nil?)
        data.connection_status = (ConnectionStatusResourceTypeEventConfiguration.parse(map['ConnectionStatus']) unless map['ConnectionStatus'].nil?)
        data
      end
    end

    class ConnectionStatusResourceTypeEventConfiguration
      def self.parse(map)
        data = Types::ConnectionStatusResourceTypeEventConfiguration.new
        data.lo_ra_wan = (LoRaWANConnectionStatusResourceTypeEventConfiguration.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        return data
      end
    end

    class LoRaWANConnectionStatusResourceTypeEventConfiguration
      def self.parse(map)
        data = Types::LoRaWANConnectionStatusResourceTypeEventConfiguration.new
        data.wireless_gateway_event_topic = map['WirelessGatewayEventTopic']
        return data
      end
    end

    class JoinResourceTypeEventConfiguration
      def self.parse(map)
        data = Types::JoinResourceTypeEventConfiguration.new
        data.lo_ra_wan = (LoRaWANJoinResourceTypeEventConfiguration.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        return data
      end
    end

    class LoRaWANJoinResourceTypeEventConfiguration
      def self.parse(map)
        data = Types::LoRaWANJoinResourceTypeEventConfiguration.new
        data.wireless_device_event_topic = map['WirelessDeviceEventTopic']
        return data
      end
    end

    class ProximityResourceTypeEventConfiguration
      def self.parse(map)
        data = Types::ProximityResourceTypeEventConfiguration.new
        data.sidewalk = (SidewalkResourceTypeEventConfiguration.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        return data
      end
    end

    class SidewalkResourceTypeEventConfiguration
      def self.parse(map)
        data = Types::SidewalkResourceTypeEventConfiguration.new
        data.wireless_device_event_topic = map['WirelessDeviceEventTopic']
        return data
      end
    end

    class DeviceRegistrationStateResourceTypeEventConfiguration
      def self.parse(map)
        data = Types::DeviceRegistrationStateResourceTypeEventConfiguration.new
        data.sidewalk = (SidewalkResourceTypeEventConfiguration.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        return data
      end
    end

    # Operation Parser for GetFuotaTask
    class GetFuotaTask
      def self.parse(http_resp)
        data = Types::GetFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data.status = map['Status']
        data.name = map['Name']
        data.description = map['Description']
        data.lo_ra_wan = (LoRaWANFuotaTaskGetInfo.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.firmware_update_image = map['FirmwareUpdateImage']
        data.firmware_update_role = map['FirmwareUpdateRole']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data
      end
    end

    class LoRaWANFuotaTaskGetInfo
      def self.parse(map)
        data = Types::LoRaWANFuotaTaskGetInfo.new
        data.rf_region = map['RfRegion']
        data.start_time = Time.parse(map['StartTime']) if map['StartTime']
        return data
      end
    end

    # Operation Parser for GetLogLevelsByResourceTypes
    class GetLogLevelsByResourceTypes
      def self.parse(http_resp)
        data = Types::GetLogLevelsByResourceTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.default_log_level = map['DefaultLogLevel']
        data.wireless_gateway_log_options = (WirelessGatewayLogOptionList.parse(map['WirelessGatewayLogOptions']) unless map['WirelessGatewayLogOptions'].nil?)
        data.wireless_device_log_options = (WirelessDeviceLogOptionList.parse(map['WirelessDeviceLogOptions']) unless map['WirelessDeviceLogOptions'].nil?)
        data
      end
    end

    class WirelessDeviceLogOptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WirelessDeviceLogOption.parse(value) unless value.nil?
        end
        data
      end
    end

    class WirelessDeviceLogOption
      def self.parse(map)
        data = Types::WirelessDeviceLogOption.new
        data.type = map['Type']
        data.log_level = map['LogLevel']
        data.events = (WirelessDeviceEventLogOptionList.parse(map['Events']) unless map['Events'].nil?)
        return data
      end
    end

    class WirelessDeviceEventLogOptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WirelessDeviceEventLogOption.parse(value) unless value.nil?
        end
        data
      end
    end

    class WirelessDeviceEventLogOption
      def self.parse(map)
        data = Types::WirelessDeviceEventLogOption.new
        data.event = map['Event']
        data.log_level = map['LogLevel']
        return data
      end
    end

    class WirelessGatewayLogOptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WirelessGatewayLogOption.parse(value) unless value.nil?
        end
        data
      end
    end

    class WirelessGatewayLogOption
      def self.parse(map)
        data = Types::WirelessGatewayLogOption.new
        data.type = map['Type']
        data.log_level = map['LogLevel']
        data.events = (WirelessGatewayEventLogOptionList.parse(map['Events']) unless map['Events'].nil?)
        return data
      end
    end

    class WirelessGatewayEventLogOptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WirelessGatewayEventLogOption.parse(value) unless value.nil?
        end
        data
      end
    end

    class WirelessGatewayEventLogOption
      def self.parse(map)
        data = Types::WirelessGatewayEventLogOption.new
        data.event = map['Event']
        data.log_level = map['LogLevel']
        return data
      end
    end

    # Operation Parser for GetMulticastGroup
    class GetMulticastGroup
      def self.parse(http_resp)
        data = Types::GetMulticastGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.status = map['Status']
        data.lo_ra_wan = (LoRaWANMulticastGet.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data
      end
    end

    class LoRaWANMulticastGet
      def self.parse(map)
        data = Types::LoRaWANMulticastGet.new
        data.rf_region = map['RfRegion']
        data.dl_class = map['DlClass']
        data.number_of_devices_requested = map['NumberOfDevicesRequested']
        data.number_of_devices_in_group = map['NumberOfDevicesInGroup']
        return data
      end
    end

    # Operation Parser for GetMulticastGroupSession
    class GetMulticastGroupSession
      def self.parse(http_resp)
        data = Types::GetMulticastGroupSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lo_ra_wan = (LoRaWANMulticastSession.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data
      end
    end

    class LoRaWANMulticastSession
      def self.parse(map)
        data = Types::LoRaWANMulticastSession.new
        data.dl_dr = map['DlDr']
        data.dl_freq = map['DlFreq']
        data.session_start_time = Time.parse(map['SessionStartTime']) if map['SessionStartTime']
        data.session_timeout = map['SessionTimeout']
        return data
      end
    end

    # Operation Parser for GetNetworkAnalyzerConfiguration
    class GetNetworkAnalyzerConfiguration
      def self.parse(http_resp)
        data = Types::GetNetworkAnalyzerConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.trace_content = (TraceContent.parse(map['TraceContent']) unless map['TraceContent'].nil?)
        data.wireless_devices = (WirelessDeviceList.parse(map['WirelessDevices']) unless map['WirelessDevices'].nil?)
        data.wireless_gateways = (WirelessGatewayList.parse(map['WirelessGateways']) unless map['WirelessGateways'].nil?)
        data.description = map['Description']
        data.arn = map['Arn']
        data.name = map['Name']
        data
      end
    end

    class WirelessGatewayList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class WirelessDeviceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TraceContent
      def self.parse(map)
        data = Types::TraceContent.new
        data.wireless_device_frame_info = map['WirelessDeviceFrameInfo']
        data.log_level = map['LogLevel']
        return data
      end
    end

    # Operation Parser for GetPartnerAccount
    class GetPartnerAccount
      def self.parse(http_resp)
        data = Types::GetPartnerAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sidewalk = (SidewalkAccountInfoWithFingerprint.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        data.account_linked = map['AccountLinked']
        data
      end
    end

    class SidewalkAccountInfoWithFingerprint
      def self.parse(map)
        data = Types::SidewalkAccountInfoWithFingerprint.new
        data.amazon_id = map['AmazonId']
        data.fingerprint = map['Fingerprint']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for GetResourceEventConfiguration
    class GetResourceEventConfiguration
      def self.parse(http_resp)
        data = Types::GetResourceEventConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_registration_state = (DeviceRegistrationStateEventConfiguration.parse(map['DeviceRegistrationState']) unless map['DeviceRegistrationState'].nil?)
        data.proximity = (ProximityEventConfiguration.parse(map['Proximity']) unless map['Proximity'].nil?)
        data.join = (JoinEventConfiguration.parse(map['Join']) unless map['Join'].nil?)
        data.connection_status = (ConnectionStatusEventConfiguration.parse(map['ConnectionStatus']) unless map['ConnectionStatus'].nil?)
        data
      end
    end

    class ConnectionStatusEventConfiguration
      def self.parse(map)
        data = Types::ConnectionStatusEventConfiguration.new
        data.lo_ra_wan = (LoRaWANConnectionStatusEventNotificationConfigurations.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.wireless_gateway_id_event_topic = map['WirelessGatewayIdEventTopic']
        return data
      end
    end

    class LoRaWANConnectionStatusEventNotificationConfigurations
      def self.parse(map)
        data = Types::LoRaWANConnectionStatusEventNotificationConfigurations.new
        data.gateway_eui_event_topic = map['GatewayEuiEventTopic']
        return data
      end
    end

    class JoinEventConfiguration
      def self.parse(map)
        data = Types::JoinEventConfiguration.new
        data.lo_ra_wan = (LoRaWANJoinEventNotificationConfigurations.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.wireless_device_id_event_topic = map['WirelessDeviceIdEventTopic']
        return data
      end
    end

    class LoRaWANJoinEventNotificationConfigurations
      def self.parse(map)
        data = Types::LoRaWANJoinEventNotificationConfigurations.new
        data.dev_eui_event_topic = map['DevEuiEventTopic']
        return data
      end
    end

    class ProximityEventConfiguration
      def self.parse(map)
        data = Types::ProximityEventConfiguration.new
        data.sidewalk = (SidewalkEventNotificationConfigurations.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        data.wireless_device_id_event_topic = map['WirelessDeviceIdEventTopic']
        return data
      end
    end

    class SidewalkEventNotificationConfigurations
      def self.parse(map)
        data = Types::SidewalkEventNotificationConfigurations.new
        data.amazon_id_event_topic = map['AmazonIdEventTopic']
        return data
      end
    end

    class DeviceRegistrationStateEventConfiguration
      def self.parse(map)
        data = Types::DeviceRegistrationStateEventConfiguration.new
        data.sidewalk = (SidewalkEventNotificationConfigurations.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        data.wireless_device_id_event_topic = map['WirelessDeviceIdEventTopic']
        return data
      end
    end

    # Operation Parser for GetResourceLogLevel
    class GetResourceLogLevel
      def self.parse(http_resp)
        data = Types::GetResourceLogLevelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.log_level = map['LogLevel']
        data
      end
    end

    # Operation Parser for GetServiceEndpoint
    class GetServiceEndpoint
      def self.parse(http_resp)
        data = Types::GetServiceEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_type = map['ServiceType']
        data.service_endpoint = map['ServiceEndpoint']
        data.server_trust = map['ServerTrust']
        data
      end
    end

    # Operation Parser for GetServiceProfile
    class GetServiceProfile
      def self.parse(http_resp)
        data = Types::GetServiceProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data.id = map['Id']
        data.lo_ra_wan = (LoRaWANGetServiceProfileInfo.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data
      end
    end

    class LoRaWANGetServiceProfileInfo
      def self.parse(map)
        data = Types::LoRaWANGetServiceProfileInfo.new
        data.ul_rate = map['UlRate']
        data.ul_bucket_size = map['UlBucketSize']
        data.ul_rate_policy = map['UlRatePolicy']
        data.dl_rate = map['DlRate']
        data.dl_bucket_size = map['DlBucketSize']
        data.dl_rate_policy = map['DlRatePolicy']
        data.add_gw_metadata = map['AddGwMetadata']
        data.dev_status_req_freq = map['DevStatusReqFreq']
        data.report_dev_status_battery = map['ReportDevStatusBattery']
        data.report_dev_status_margin = map['ReportDevStatusMargin']
        data.dr_min = map['DrMin']
        data.dr_max = map['DrMax']
        data.channel_mask = map['ChannelMask']
        data.pr_allowed = map['PrAllowed']
        data.hr_allowed = map['HrAllowed']
        data.ra_allowed = map['RaAllowed']
        data.nwk_geo_loc = map['NwkGeoLoc']
        data.target_per = map['TargetPer']
        data.min_gw_diversity = map['MinGwDiversity']
        return data
      end
    end

    # Operation Parser for GetWirelessDevice
    class GetWirelessDevice
      def self.parse(http_resp)
        data = Types::GetWirelessDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.name = map['Name']
        data.description = map['Description']
        data.destination_name = map['DestinationName']
        data.id = map['Id']
        data.arn = map['Arn']
        data.thing_name = map['ThingName']
        data.thing_arn = map['ThingArn']
        data.lo_ra_wan = (LoRaWANDevice.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.sidewalk = (SidewalkDevice.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        data
      end
    end

    class SidewalkDevice
      def self.parse(map)
        data = Types::SidewalkDevice.new
        data.amazon_id = map['AmazonId']
        data.sidewalk_id = map['SidewalkId']
        data.sidewalk_manufacturing_sn = map['SidewalkManufacturingSn']
        data.device_certificates = (DeviceCertificateList.parse(map['DeviceCertificates']) unless map['DeviceCertificates'].nil?)
        return data
      end
    end

    class DeviceCertificateList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CertificateList.parse(value) unless value.nil?
        end
        data
      end
    end

    class CertificateList
      def self.parse(map)
        data = Types::CertificateList.new
        data.signing_alg = map['SigningAlg']
        data.value = map['Value']
        return data
      end
    end

    class LoRaWANDevice
      def self.parse(map)
        data = Types::LoRaWANDevice.new
        data.dev_eui = map['DevEui']
        data.device_profile_id = map['DeviceProfileId']
        data.service_profile_id = map['ServiceProfileId']
        data.otaa_v1_1 = (OtaaV1_1.parse(map['OtaaV1_1']) unless map['OtaaV1_1'].nil?)
        data.otaa_v1_0_x = (OtaaV1_0_x.parse(map['OtaaV1_0_x']) unless map['OtaaV1_0_x'].nil?)
        data.abp_v1_1 = (AbpV1_1.parse(map['AbpV1_1']) unless map['AbpV1_1'].nil?)
        data.abp_v1_0_x = (AbpV1_0_x.parse(map['AbpV1_0_x']) unless map['AbpV1_0_x'].nil?)
        data.f_ports = (FPorts.parse(map['FPorts']) unless map['FPorts'].nil?)
        return data
      end
    end

    class FPorts
      def self.parse(map)
        data = Types::FPorts.new
        data.fuota = map['Fuota']
        data.multicast = map['Multicast']
        data.clock_sync = map['ClockSync']
        return data
      end
    end

    class AbpV1_0_x
      def self.parse(map)
        data = Types::AbpV1_0_x.new
        data.dev_addr = map['DevAddr']
        data.session_keys = (SessionKeysAbpV1_0_x.parse(map['SessionKeys']) unless map['SessionKeys'].nil?)
        data.f_cnt_start = map['FCntStart']
        return data
      end
    end

    class SessionKeysAbpV1_0_x
      def self.parse(map)
        data = Types::SessionKeysAbpV1_0_x.new
        data.nwk_s_key = map['NwkSKey']
        data.app_s_key = map['AppSKey']
        return data
      end
    end

    class AbpV1_1
      def self.parse(map)
        data = Types::AbpV1_1.new
        data.dev_addr = map['DevAddr']
        data.session_keys = (SessionKeysAbpV1_1.parse(map['SessionKeys']) unless map['SessionKeys'].nil?)
        data.f_cnt_start = map['FCntStart']
        return data
      end
    end

    class SessionKeysAbpV1_1
      def self.parse(map)
        data = Types::SessionKeysAbpV1_1.new
        data.f_nwk_s_int_key = map['FNwkSIntKey']
        data.s_nwk_s_int_key = map['SNwkSIntKey']
        data.nwk_s_enc_key = map['NwkSEncKey']
        data.app_s_key = map['AppSKey']
        return data
      end
    end

    class OtaaV1_0_x
      def self.parse(map)
        data = Types::OtaaV1_0_x.new
        data.app_key = map['AppKey']
        data.app_eui = map['AppEui']
        data.gen_app_key = map['GenAppKey']
        return data
      end
    end

    class OtaaV1_1
      def self.parse(map)
        data = Types::OtaaV1_1.new
        data.app_key = map['AppKey']
        data.nwk_key = map['NwkKey']
        data.join_eui = map['JoinEui']
        return data
      end
    end

    # Operation Parser for GetWirelessDeviceStatistics
    class GetWirelessDeviceStatistics
      def self.parse(http_resp)
        data = Types::GetWirelessDeviceStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.wireless_device_id = map['WirelessDeviceId']
        data.last_uplink_received_at = map['LastUplinkReceivedAt']
        data.lo_ra_wan = (LoRaWANDeviceMetadata.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.sidewalk = (SidewalkDeviceMetadata.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        data
      end
    end

    class SidewalkDeviceMetadata
      def self.parse(map)
        data = Types::SidewalkDeviceMetadata.new
        data.rssi = map['Rssi']
        data.battery_level = map['BatteryLevel']
        data.event = map['Event']
        data.device_state = map['DeviceState']
        return data
      end
    end

    class LoRaWANDeviceMetadata
      def self.parse(map)
        data = Types::LoRaWANDeviceMetadata.new
        data.dev_eui = map['DevEui']
        data.f_port = map['FPort']
        data.data_rate = map['DataRate']
        data.frequency = map['Frequency']
        data.timestamp = map['Timestamp']
        data.gateways = (LoRaWANGatewayMetadataList.parse(map['Gateways']) unless map['Gateways'].nil?)
        return data
      end
    end

    class LoRaWANGatewayMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << LoRaWANGatewayMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class LoRaWANGatewayMetadata
      def self.parse(map)
        data = Types::LoRaWANGatewayMetadata.new
        data.gateway_eui = map['GatewayEui']
        data.snr = Hearth::NumberHelper.deserialize(map['Snr'])
        data.rssi = Hearth::NumberHelper.deserialize(map['Rssi'])
        return data
      end
    end

    # Operation Parser for GetWirelessGateway
    class GetWirelessGateway
      def self.parse(http_resp)
        data = Types::GetWirelessGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.id = map['Id']
        data.description = map['Description']
        data.lo_ra_wan = (LoRaWANGateway.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.arn = map['Arn']
        data.thing_name = map['ThingName']
        data.thing_arn = map['ThingArn']
        data
      end
    end

    class LoRaWANGateway
      def self.parse(map)
        data = Types::LoRaWANGateway.new
        data.gateway_eui = map['GatewayEui']
        data.rf_region = map['RfRegion']
        data.join_eui_filters = (JoinEuiFilters.parse(map['JoinEuiFilters']) unless map['JoinEuiFilters'].nil?)
        data.net_id_filters = (NetIdFilters.parse(map['NetIdFilters']) unless map['NetIdFilters'].nil?)
        data.sub_bands = (SubBands.parse(map['SubBands']) unless map['SubBands'].nil?)
        return data
      end
    end

    class SubBands
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class NetIdFilters
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class JoinEuiFilters
      def self.parse(list)
        data = []
        list.map do |value|
          data << JoinEuiRange.parse(value) unless value.nil?
        end
        data
      end
    end

    class JoinEuiRange
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetWirelessGatewayCertificate
    class GetWirelessGatewayCertificate
      def self.parse(http_resp)
        data = Types::GetWirelessGatewayCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.iot_certificate_id = map['IotCertificateId']
        data.lo_ra_wan_network_server_certificate_id = map['LoRaWANNetworkServerCertificateId']
        data
      end
    end

    # Operation Parser for GetWirelessGatewayFirmwareInformation
    class GetWirelessGatewayFirmwareInformation
      def self.parse(http_resp)
        data = Types::GetWirelessGatewayFirmwareInformationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lo_ra_wan = (LoRaWANGatewayCurrentVersion.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data
      end
    end

    class LoRaWANGatewayCurrentVersion
      def self.parse(map)
        data = Types::LoRaWANGatewayCurrentVersion.new
        data.current_version = (LoRaWANGatewayVersion.parse(map['CurrentVersion']) unless map['CurrentVersion'].nil?)
        return data
      end
    end

    class LoRaWANGatewayVersion
      def self.parse(map)
        data = Types::LoRaWANGatewayVersion.new
        data.package_version = map['PackageVersion']
        data.model = map['Model']
        data.station = map['Station']
        return data
      end
    end

    # Operation Parser for GetWirelessGatewayStatistics
    class GetWirelessGatewayStatistics
      def self.parse(http_resp)
        data = Types::GetWirelessGatewayStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.wireless_gateway_id = map['WirelessGatewayId']
        data.last_uplink_received_at = map['LastUplinkReceivedAt']
        data.connection_status = map['ConnectionStatus']
        data
      end
    end

    # Operation Parser for GetWirelessGatewayTask
    class GetWirelessGatewayTask
      def self.parse(http_resp)
        data = Types::GetWirelessGatewayTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.wireless_gateway_id = map['WirelessGatewayId']
        data.wireless_gateway_task_definition_id = map['WirelessGatewayTaskDefinitionId']
        data.last_uplink_received_at = map['LastUplinkReceivedAt']
        data.task_created_at = map['TaskCreatedAt']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for GetWirelessGatewayTaskDefinition
    class GetWirelessGatewayTaskDefinition
      def self.parse(http_resp)
        data = Types::GetWirelessGatewayTaskDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_create_tasks = map['AutoCreateTasks']
        data.name = map['Name']
        data.update = (UpdateWirelessGatewayTaskCreate.parse(map['Update']) unless map['Update'].nil?)
        data.arn = map['Arn']
        data
      end
    end

    class UpdateWirelessGatewayTaskCreate
      def self.parse(map)
        data = Types::UpdateWirelessGatewayTaskCreate.new
        data.update_data_source = map['UpdateDataSource']
        data.update_data_role = map['UpdateDataRole']
        data.lo_ra_wan = (LoRaWANUpdateGatewayTaskCreate.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        return data
      end
    end

    class LoRaWANUpdateGatewayTaskCreate
      def self.parse(map)
        data = Types::LoRaWANUpdateGatewayTaskCreate.new
        data.update_signature = map['UpdateSignature']
        data.sig_key_crc = map['SigKeyCrc']
        data.current_version = (LoRaWANGatewayVersion.parse(map['CurrentVersion']) unless map['CurrentVersion'].nil?)
        data.update_version = (LoRaWANGatewayVersion.parse(map['UpdateVersion']) unless map['UpdateVersion'].nil?)
        return data
      end
    end

    # Operation Parser for ListDestinations
    class ListDestinations
      def self.parse(http_resp)
        data = Types::ListDestinationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.destination_list = (DestinationList.parse(map['DestinationList']) unless map['DestinationList'].nil?)
        data
      end
    end

    class DestinationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Destinations.parse(value) unless value.nil?
        end
        data
      end
    end

    class Destinations
      def self.parse(map)
        data = Types::Destinations.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.expression_type = map['ExpressionType']
        data.expression = map['Expression']
        data.description = map['Description']
        data.role_arn = map['RoleArn']
        return data
      end
    end

    # Operation Parser for ListDeviceProfiles
    class ListDeviceProfiles
      def self.parse(http_resp)
        data = Types::ListDeviceProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.device_profile_list = (DeviceProfileList.parse(map['DeviceProfileList']) unless map['DeviceProfileList'].nil?)
        data
      end
    end

    class DeviceProfileList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DeviceProfile.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeviceProfile
      def self.parse(map)
        data = Types::DeviceProfile.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.id = map['Id']
        return data
      end
    end

    # Operation Parser for ListEventConfigurations
    class ListEventConfigurations
      def self.parse(http_resp)
        data = Types::ListEventConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.event_configurations_list = (EventConfigurationsList.parse(map['EventConfigurationsList']) unless map['EventConfigurationsList'].nil?)
        data
      end
    end

    class EventConfigurationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << EventConfigurationItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventConfigurationItem
      def self.parse(map)
        data = Types::EventConfigurationItem.new
        data.identifier = map['Identifier']
        data.identifier_type = map['IdentifierType']
        data.partner_type = map['PartnerType']
        data.events = (EventNotificationItemConfigurations.parse(map['Events']) unless map['Events'].nil?)
        return data
      end
    end

    class EventNotificationItemConfigurations
      def self.parse(map)
        data = Types::EventNotificationItemConfigurations.new
        data.device_registration_state = (DeviceRegistrationStateEventConfiguration.parse(map['DeviceRegistrationState']) unless map['DeviceRegistrationState'].nil?)
        data.proximity = (ProximityEventConfiguration.parse(map['Proximity']) unless map['Proximity'].nil?)
        data.join = (JoinEventConfiguration.parse(map['Join']) unless map['Join'].nil?)
        data.connection_status = (ConnectionStatusEventConfiguration.parse(map['ConnectionStatus']) unless map['ConnectionStatus'].nil?)
        return data
      end
    end

    # Operation Parser for ListFuotaTasks
    class ListFuotaTasks
      def self.parse(http_resp)
        data = Types::ListFuotaTasksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.fuota_task_list = (FuotaTaskList.parse(map['FuotaTaskList']) unless map['FuotaTaskList'].nil?)
        data
      end
    end

    class FuotaTaskList
      def self.parse(list)
        data = []
        list.map do |value|
          data << FuotaTask.parse(value) unless value.nil?
        end
        data
      end
    end

    class FuotaTask
      def self.parse(map)
        data = Types::FuotaTask.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListMulticastGroups
    class ListMulticastGroups
      def self.parse(http_resp)
        data = Types::ListMulticastGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.multicast_group_list = (MulticastGroupList.parse(map['MulticastGroupList']) unless map['MulticastGroupList'].nil?)
        data
      end
    end

    class MulticastGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MulticastGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class MulticastGroup
      def self.parse(map)
        data = Types::MulticastGroup.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListMulticastGroupsByFuotaTask
    class ListMulticastGroupsByFuotaTask
      def self.parse(http_resp)
        data = Types::ListMulticastGroupsByFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.multicast_group_list = (MulticastGroupListByFuotaTask.parse(map['MulticastGroupList']) unless map['MulticastGroupList'].nil?)
        data
      end
    end

    class MulticastGroupListByFuotaTask
      def self.parse(list)
        data = []
        list.map do |value|
          data << MulticastGroupByFuotaTask.parse(value) unless value.nil?
        end
        data
      end
    end

    class MulticastGroupByFuotaTask
      def self.parse(map)
        data = Types::MulticastGroupByFuotaTask.new
        data.id = map['Id']
        return data
      end
    end

    # Operation Parser for ListNetworkAnalyzerConfigurations
    class ListNetworkAnalyzerConfigurations
      def self.parse(http_resp)
        data = Types::ListNetworkAnalyzerConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.network_analyzer_configuration_list = (NetworkAnalyzerConfigurationList.parse(map['NetworkAnalyzerConfigurationList']) unless map['NetworkAnalyzerConfigurationList'].nil?)
        data
      end
    end

    class NetworkAnalyzerConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << NetworkAnalyzerConfigurations.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkAnalyzerConfigurations
      def self.parse(map)
        data = Types::NetworkAnalyzerConfigurations.new
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListPartnerAccounts
    class ListPartnerAccounts
      def self.parse(http_resp)
        data = Types::ListPartnerAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.sidewalk = (SidewalkAccountList.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        data
      end
    end

    class SidewalkAccountList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SidewalkAccountInfoWithFingerprint.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListQueuedMessages
    class ListQueuedMessages
      def self.parse(http_resp)
        data = Types::ListQueuedMessagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.downlink_queue_messages_list = (DownlinkQueueMessagesList.parse(map['DownlinkQueueMessagesList']) unless map['DownlinkQueueMessagesList'].nil?)
        data
      end
    end

    class DownlinkQueueMessagesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DownlinkQueueMessage.parse(value) unless value.nil?
        end
        data
      end
    end

    class DownlinkQueueMessage
      def self.parse(map)
        data = Types::DownlinkQueueMessage.new
        data.message_id = map['MessageId']
        data.transmit_mode = map['TransmitMode']
        data.received_at = map['ReceivedAt']
        data.lo_ra_wan = (LoRaWANSendDataToDevice.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        return data
      end
    end

    class LoRaWANSendDataToDevice
      def self.parse(map)
        data = Types::LoRaWANSendDataToDevice.new
        data.f_port = map['FPort']
        return data
      end
    end

    # Operation Parser for ListServiceProfiles
    class ListServiceProfiles
      def self.parse(http_resp)
        data = Types::ListServiceProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.service_profile_list = (ServiceProfileList.parse(map['ServiceProfileList']) unless map['ServiceProfileList'].nil?)
        data
      end
    end

    class ServiceProfileList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ServiceProfile.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServiceProfile
      def self.parse(map)
        data = Types::ServiceProfile.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.id = map['Id']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListWirelessDevices
    class ListWirelessDevices
      def self.parse(http_resp)
        data = Types::ListWirelessDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.wireless_device_list = (WirelessDeviceStatisticsList.parse(map['WirelessDeviceList']) unless map['WirelessDeviceList'].nil?)
        data
      end
    end

    class WirelessDeviceStatisticsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WirelessDeviceStatistics.parse(value) unless value.nil?
        end
        data
      end
    end

    class WirelessDeviceStatistics
      def self.parse(map)
        data = Types::WirelessDeviceStatistics.new
        data.arn = map['Arn']
        data.id = map['Id']
        data.type = map['Type']
        data.name = map['Name']
        data.destination_name = map['DestinationName']
        data.last_uplink_received_at = map['LastUplinkReceivedAt']
        data.lo_ra_wan = (LoRaWANListDevice.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.sidewalk = (SidewalkListDevice.parse(map['Sidewalk']) unless map['Sidewalk'].nil?)
        data.fuota_device_status = map['FuotaDeviceStatus']
        data.multicast_device_status = map['MulticastDeviceStatus']
        data.mc_group_id = map['McGroupId']
        return data
      end
    end

    class SidewalkListDevice
      def self.parse(map)
        data = Types::SidewalkListDevice.new
        data.amazon_id = map['AmazonId']
        data.sidewalk_id = map['SidewalkId']
        data.sidewalk_manufacturing_sn = map['SidewalkManufacturingSn']
        data.device_certificates = (DeviceCertificateList.parse(map['DeviceCertificates']) unless map['DeviceCertificates'].nil?)
        return data
      end
    end

    class LoRaWANListDevice
      def self.parse(map)
        data = Types::LoRaWANListDevice.new
        data.dev_eui = map['DevEui']
        return data
      end
    end

    # Operation Parser for ListWirelessGatewayTaskDefinitions
    class ListWirelessGatewayTaskDefinitions
      def self.parse(http_resp)
        data = Types::ListWirelessGatewayTaskDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.task_definitions = (WirelessGatewayTaskDefinitionList.parse(map['TaskDefinitions']) unless map['TaskDefinitions'].nil?)
        data
      end
    end

    class WirelessGatewayTaskDefinitionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UpdateWirelessGatewayTaskEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class UpdateWirelessGatewayTaskEntry
      def self.parse(map)
        data = Types::UpdateWirelessGatewayTaskEntry.new
        data.id = map['Id']
        data.lo_ra_wan = (LoRaWANUpdateGatewayTaskEntry.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.arn = map['Arn']
        return data
      end
    end

    class LoRaWANUpdateGatewayTaskEntry
      def self.parse(map)
        data = Types::LoRaWANUpdateGatewayTaskEntry.new
        data.current_version = (LoRaWANGatewayVersion.parse(map['CurrentVersion']) unless map['CurrentVersion'].nil?)
        data.update_version = (LoRaWANGatewayVersion.parse(map['UpdateVersion']) unless map['UpdateVersion'].nil?)
        return data
      end
    end

    # Operation Parser for ListWirelessGateways
    class ListWirelessGateways
      def self.parse(http_resp)
        data = Types::ListWirelessGatewaysOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.wireless_gateway_list = (WirelessGatewayStatisticsList.parse(map['WirelessGatewayList']) unless map['WirelessGatewayList'].nil?)
        data
      end
    end

    class WirelessGatewayStatisticsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WirelessGatewayStatistics.parse(value) unless value.nil?
        end
        data
      end
    end

    class WirelessGatewayStatistics
      def self.parse(map)
        data = Types::WirelessGatewayStatistics.new
        data.arn = map['Arn']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.lo_ra_wan = (LoRaWANGateway.parse(map['LoRaWAN']) unless map['LoRaWAN'].nil?)
        data.last_uplink_received_at = map['LastUplinkReceivedAt']
        return data
      end
    end

    # Operation Parser for PutResourceLogLevel
    class PutResourceLogLevel
      def self.parse(http_resp)
        data = Types::PutResourceLogLevelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ResetAllResourceLogLevels
    class ResetAllResourceLogLevels
      def self.parse(http_resp)
        data = Types::ResetAllResourceLogLevelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ResetResourceLogLevel
    class ResetResourceLogLevel
      def self.parse(http_resp)
        data = Types::ResetResourceLogLevelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SendDataToMulticastGroup
    class SendDataToMulticastGroup
      def self.parse(http_resp)
        data = Types::SendDataToMulticastGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message_id = map['MessageId']
        data
      end
    end

    # Operation Parser for SendDataToWirelessDevice
    class SendDataToWirelessDevice
      def self.parse(http_resp)
        data = Types::SendDataToWirelessDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message_id = map['MessageId']
        data
      end
    end

    # Operation Parser for StartBulkAssociateWirelessDeviceWithMulticastGroup
    class StartBulkAssociateWirelessDeviceWithMulticastGroup
      def self.parse(http_resp)
        data = Types::StartBulkAssociateWirelessDeviceWithMulticastGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartBulkDisassociateWirelessDeviceFromMulticastGroup
    class StartBulkDisassociateWirelessDeviceFromMulticastGroup
      def self.parse(http_resp)
        data = Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartFuotaTask
    class StartFuotaTask
      def self.parse(http_resp)
        data = Types::StartFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartMulticastGroupSession
    class StartMulticastGroupSession
      def self.parse(http_resp)
        data = Types::StartMulticastGroupSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for TestWirelessDevice
    class TestWirelessDevice
      def self.parse(http_resp)
        data = Types::TestWirelessDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.result = map['Result']
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

    # Operation Parser for UpdateDestination
    class UpdateDestination
      def self.parse(http_resp)
        data = Types::UpdateDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateEventConfigurationByResourceTypes
    class UpdateEventConfigurationByResourceTypes
      def self.parse(http_resp)
        data = Types::UpdateEventConfigurationByResourceTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFuotaTask
    class UpdateFuotaTask
      def self.parse(http_resp)
        data = Types::UpdateFuotaTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateLogLevelsByResourceTypes
    class UpdateLogLevelsByResourceTypes
      def self.parse(http_resp)
        data = Types::UpdateLogLevelsByResourceTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateMulticastGroup
    class UpdateMulticastGroup
      def self.parse(http_resp)
        data = Types::UpdateMulticastGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateNetworkAnalyzerConfiguration
    class UpdateNetworkAnalyzerConfiguration
      def self.parse(http_resp)
        data = Types::UpdateNetworkAnalyzerConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdatePartnerAccount
    class UpdatePartnerAccount
      def self.parse(http_resp)
        data = Types::UpdatePartnerAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateResourceEventConfiguration
    class UpdateResourceEventConfiguration
      def self.parse(http_resp)
        data = Types::UpdateResourceEventConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateWirelessDevice
    class UpdateWirelessDevice
      def self.parse(http_resp)
        data = Types::UpdateWirelessDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateWirelessGateway
    class UpdateWirelessGateway
      def self.parse(http_resp)
        data = Types::UpdateWirelessGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
