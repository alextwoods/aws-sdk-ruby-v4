# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTWireless
  module Stubs

    # Operation Stubber for AssociateAwsAccountWithPartnerAccount
    class AssociateAwsAccountWithPartnerAccount
      def self.default(visited=[])
        {
          sidewalk: Stubs::SidewalkAccountInfo.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Sidewalk'] = Stubs::SidewalkAccountInfo.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SidewalkAccountInfo
    class SidewalkAccountInfo
      def self.default(visited=[])
        return nil if visited.include?('SidewalkAccountInfo')
        visited = visited + ['SidewalkAccountInfo']
        {
          amazon_id: 'amazon_id',
          app_server_private_key: 'app_server_private_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::SidewalkAccountInfo.new
        data = {}
        data['AmazonId'] = stub[:amazon_id] unless stub[:amazon_id].nil?
        data['AppServerPrivateKey'] = stub[:app_server_private_key] unless stub[:app_server_private_key].nil?
        data
      end
    end

    # Operation Stubber for AssociateMulticastGroupWithFuotaTask
    class AssociateMulticastGroupWithFuotaTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for AssociateWirelessDeviceWithFuotaTask
    class AssociateWirelessDeviceWithFuotaTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for AssociateWirelessDeviceWithMulticastGroup
    class AssociateWirelessDeviceWithMulticastGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for AssociateWirelessDeviceWithThing
    class AssociateWirelessDeviceWithThing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for AssociateWirelessGatewayWithCertificate
    class AssociateWirelessGatewayWithCertificate
      def self.default(visited=[])
        {
          iot_certificate_id: 'iot_certificate_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IotCertificateId'] = stub[:iot_certificate_id] unless stub[:iot_certificate_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateWirelessGatewayWithThing
    class AssociateWirelessGatewayWithThing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for CancelMulticastGroupSession
    class CancelMulticastGroupSession
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for CreateDestination
    class CreateDestination
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDeviceProfile
    class CreateDeviceProfile
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFuotaTask
    class CreateFuotaTask
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMulticastGroup
    class CreateMulticastGroup
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateNetworkAnalyzerConfiguration
    class CreateNetworkAnalyzerConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateServiceProfile
    class CreateServiceProfile
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWirelessDevice
    class CreateWirelessDevice
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWirelessGateway
    class CreateWirelessGateway
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWirelessGatewayTask
    class CreateWirelessGatewayTask
      def self.default(visited=[])
        {
          wireless_gateway_task_definition_id: 'wireless_gateway_task_definition_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['WirelessGatewayTaskDefinitionId'] = stub[:wireless_gateway_task_definition_id] unless stub[:wireless_gateway_task_definition_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWirelessGatewayTaskDefinition
    class CreateWirelessGatewayTaskDefinition
      def self.default(visited=[])
        {
          id: 'id',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDestination
    class DeleteDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDeviceProfile
    class DeleteDeviceProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFuotaTask
    class DeleteFuotaTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteMulticastGroup
    class DeleteMulticastGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteNetworkAnalyzerConfiguration
    class DeleteNetworkAnalyzerConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteQueuedMessages
    class DeleteQueuedMessages
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteServiceProfile
    class DeleteServiceProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteWirelessDevice
    class DeleteWirelessDevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteWirelessGateway
    class DeleteWirelessGateway
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteWirelessGatewayTask
    class DeleteWirelessGatewayTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteWirelessGatewayTaskDefinition
    class DeleteWirelessGatewayTaskDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DisassociateAwsAccountFromPartnerAccount
    class DisassociateAwsAccountFromPartnerAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DisassociateMulticastGroupFromFuotaTask
    class DisassociateMulticastGroupFromFuotaTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DisassociateWirelessDeviceFromFuotaTask
    class DisassociateWirelessDeviceFromFuotaTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DisassociateWirelessDeviceFromMulticastGroup
    class DisassociateWirelessDeviceFromMulticastGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DisassociateWirelessDeviceFromThing
    class DisassociateWirelessDeviceFromThing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DisassociateWirelessGatewayFromCertificate
    class DisassociateWirelessGatewayFromCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DisassociateWirelessGatewayFromThing
    class DisassociateWirelessGatewayFromThing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetDestination
    class GetDestination
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          expression: 'expression',
          expression_type: 'expression_type',
          description: 'description',
          role_arn: 'role_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Expression'] = stub[:expression] unless stub[:expression].nil?
        data['ExpressionType'] = stub[:expression_type] unless stub[:expression_type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDeviceProfile
    class GetDeviceProfile
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          id: 'id',
          lo_ra_wan: Stubs::LoRaWANDeviceProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LoRaWAN'] = Stubs::LoRaWANDeviceProfile.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoRaWANDeviceProfile
    class LoRaWANDeviceProfile
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANDeviceProfile')
        visited = visited + ['LoRaWANDeviceProfile']
        {
          supports_class_b: false,
          class_b_timeout: 1,
          ping_slot_period: 1,
          ping_slot_dr: 1,
          ping_slot_freq: 1,
          supports_class_c: false,
          class_c_timeout: 1,
          mac_version: 'mac_version',
          reg_params_revision: 'reg_params_revision',
          rx_delay1: 1,
          rx_dr_offset1: 1,
          rx_data_rate2: 1,
          rx_freq2: 1,
          factory_preset_freqs_list: Stubs::FactoryPresetFreqsList.default(visited),
          max_eirp: 1,
          max_duty_cycle: 1,
          rf_region: 'rf_region',
          supports_join: false,
          supports32_bit_f_cnt: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANDeviceProfile.new
        data = {}
        data['SupportsClassB'] = stub[:supports_class_b] unless stub[:supports_class_b].nil?
        data['ClassBTimeout'] = stub[:class_b_timeout] unless stub[:class_b_timeout].nil?
        data['PingSlotPeriod'] = stub[:ping_slot_period] unless stub[:ping_slot_period].nil?
        data['PingSlotDr'] = stub[:ping_slot_dr] unless stub[:ping_slot_dr].nil?
        data['PingSlotFreq'] = stub[:ping_slot_freq] unless stub[:ping_slot_freq].nil?
        data['SupportsClassC'] = stub[:supports_class_c] unless stub[:supports_class_c].nil?
        data['ClassCTimeout'] = stub[:class_c_timeout] unless stub[:class_c_timeout].nil?
        data['MacVersion'] = stub[:mac_version] unless stub[:mac_version].nil?
        data['RegParamsRevision'] = stub[:reg_params_revision] unless stub[:reg_params_revision].nil?
        data['RxDelay1'] = stub[:rx_delay1] unless stub[:rx_delay1].nil?
        data['RxDrOffset1'] = stub[:rx_dr_offset1] unless stub[:rx_dr_offset1].nil?
        data['RxDataRate2'] = stub[:rx_data_rate2] unless stub[:rx_data_rate2].nil?
        data['RxFreq2'] = stub[:rx_freq2] unless stub[:rx_freq2].nil?
        data['FactoryPresetFreqsList'] = Stubs::FactoryPresetFreqsList.stub(stub[:factory_preset_freqs_list]) unless stub[:factory_preset_freqs_list].nil?
        data['MaxEirp'] = stub[:max_eirp] unless stub[:max_eirp].nil?
        data['MaxDutyCycle'] = stub[:max_duty_cycle] unless stub[:max_duty_cycle].nil?
        data['RfRegion'] = stub[:rf_region] unless stub[:rf_region].nil?
        data['SupportsJoin'] = stub[:supports_join] unless stub[:supports_join].nil?
        data['Supports32BitFCnt'] = stub[:supports32_bit_f_cnt] unless stub[:supports32_bit_f_cnt].nil?
        data
      end
    end

    # List Stubber for FactoryPresetFreqsList
    class FactoryPresetFreqsList
      def self.default(visited=[])
        return nil if visited.include?('FactoryPresetFreqsList')
        visited = visited + ['FactoryPresetFreqsList']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetEventConfigurationByResourceTypes
    class GetEventConfigurationByResourceTypes
      def self.default(visited=[])
        {
          device_registration_state: Stubs::DeviceRegistrationStateResourceTypeEventConfiguration.default(visited),
          proximity: Stubs::ProximityResourceTypeEventConfiguration.default(visited),
          join: Stubs::JoinResourceTypeEventConfiguration.default(visited),
          connection_status: Stubs::ConnectionStatusResourceTypeEventConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceRegistrationState'] = Stubs::DeviceRegistrationStateResourceTypeEventConfiguration.stub(stub[:device_registration_state]) unless stub[:device_registration_state].nil?
        data['Proximity'] = Stubs::ProximityResourceTypeEventConfiguration.stub(stub[:proximity]) unless stub[:proximity].nil?
        data['Join'] = Stubs::JoinResourceTypeEventConfiguration.stub(stub[:join]) unless stub[:join].nil?
        data['ConnectionStatus'] = Stubs::ConnectionStatusResourceTypeEventConfiguration.stub(stub[:connection_status]) unless stub[:connection_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConnectionStatusResourceTypeEventConfiguration
    class ConnectionStatusResourceTypeEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConnectionStatusResourceTypeEventConfiguration')
        visited = visited + ['ConnectionStatusResourceTypeEventConfiguration']
        {
          lo_ra_wan: Stubs::LoRaWANConnectionStatusResourceTypeEventConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionStatusResourceTypeEventConfiguration.new
        data = {}
        data['LoRaWAN'] = Stubs::LoRaWANConnectionStatusResourceTypeEventConfiguration.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANConnectionStatusResourceTypeEventConfiguration
    class LoRaWANConnectionStatusResourceTypeEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANConnectionStatusResourceTypeEventConfiguration')
        visited = visited + ['LoRaWANConnectionStatusResourceTypeEventConfiguration']
        {
          wireless_gateway_event_topic: 'wireless_gateway_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANConnectionStatusResourceTypeEventConfiguration.new
        data = {}
        data['WirelessGatewayEventTopic'] = stub[:wireless_gateway_event_topic] unless stub[:wireless_gateway_event_topic].nil?
        data
      end
    end

    # Structure Stubber for JoinResourceTypeEventConfiguration
    class JoinResourceTypeEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('JoinResourceTypeEventConfiguration')
        visited = visited + ['JoinResourceTypeEventConfiguration']
        {
          lo_ra_wan: Stubs::LoRaWANJoinResourceTypeEventConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JoinResourceTypeEventConfiguration.new
        data = {}
        data['LoRaWAN'] = Stubs::LoRaWANJoinResourceTypeEventConfiguration.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANJoinResourceTypeEventConfiguration
    class LoRaWANJoinResourceTypeEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANJoinResourceTypeEventConfiguration')
        visited = visited + ['LoRaWANJoinResourceTypeEventConfiguration']
        {
          wireless_device_event_topic: 'wireless_device_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANJoinResourceTypeEventConfiguration.new
        data = {}
        data['WirelessDeviceEventTopic'] = stub[:wireless_device_event_topic] unless stub[:wireless_device_event_topic].nil?
        data
      end
    end

    # Structure Stubber for ProximityResourceTypeEventConfiguration
    class ProximityResourceTypeEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ProximityResourceTypeEventConfiguration')
        visited = visited + ['ProximityResourceTypeEventConfiguration']
        {
          sidewalk: Stubs::SidewalkResourceTypeEventConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProximityResourceTypeEventConfiguration.new
        data = {}
        data['Sidewalk'] = Stubs::SidewalkResourceTypeEventConfiguration.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        data
      end
    end

    # Structure Stubber for SidewalkResourceTypeEventConfiguration
    class SidewalkResourceTypeEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SidewalkResourceTypeEventConfiguration')
        visited = visited + ['SidewalkResourceTypeEventConfiguration']
        {
          wireless_device_event_topic: 'wireless_device_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::SidewalkResourceTypeEventConfiguration.new
        data = {}
        data['WirelessDeviceEventTopic'] = stub[:wireless_device_event_topic] unless stub[:wireless_device_event_topic].nil?
        data
      end
    end

    # Structure Stubber for DeviceRegistrationStateResourceTypeEventConfiguration
    class DeviceRegistrationStateResourceTypeEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DeviceRegistrationStateResourceTypeEventConfiguration')
        visited = visited + ['DeviceRegistrationStateResourceTypeEventConfiguration']
        {
          sidewalk: Stubs::SidewalkResourceTypeEventConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceRegistrationStateResourceTypeEventConfiguration.new
        data = {}
        data['Sidewalk'] = Stubs::SidewalkResourceTypeEventConfiguration.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        data
      end
    end

    # Operation Stubber for GetFuotaTask
    class GetFuotaTask
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
          status: 'status',
          name: 'name',
          description: 'description',
          lo_ra_wan: Stubs::LoRaWANFuotaTaskGetInfo.default(visited),
          firmware_update_image: 'firmware_update_image',
          firmware_update_role: 'firmware_update_role',
          created_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LoRaWAN'] = Stubs::LoRaWANFuotaTaskGetInfo.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['FirmwareUpdateImage'] = stub[:firmware_update_image] unless stub[:firmware_update_image].nil?
        data['FirmwareUpdateRole'] = stub[:firmware_update_role] unless stub[:firmware_update_role].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoRaWANFuotaTaskGetInfo
    class LoRaWANFuotaTaskGetInfo
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANFuotaTaskGetInfo')
        visited = visited + ['LoRaWANFuotaTaskGetInfo']
        {
          rf_region: 'rf_region',
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANFuotaTaskGetInfo.new
        data = {}
        data['RfRegion'] = stub[:rf_region] unless stub[:rf_region].nil?
        data['StartTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data
      end
    end

    # Operation Stubber for GetLogLevelsByResourceTypes
    class GetLogLevelsByResourceTypes
      def self.default(visited=[])
        {
          default_log_level: 'default_log_level',
          wireless_gateway_log_options: Stubs::WirelessGatewayLogOptionList.default(visited),
          wireless_device_log_options: Stubs::WirelessDeviceLogOptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DefaultLogLevel'] = stub[:default_log_level] unless stub[:default_log_level].nil?
        data['WirelessGatewayLogOptions'] = Stubs::WirelessGatewayLogOptionList.stub(stub[:wireless_gateway_log_options]) unless stub[:wireless_gateway_log_options].nil?
        data['WirelessDeviceLogOptions'] = Stubs::WirelessDeviceLogOptionList.stub(stub[:wireless_device_log_options]) unless stub[:wireless_device_log_options].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WirelessDeviceLogOptionList
    class WirelessDeviceLogOptionList
      def self.default(visited=[])
        return nil if visited.include?('WirelessDeviceLogOptionList')
        visited = visited + ['WirelessDeviceLogOptionList']
        [
          Stubs::WirelessDeviceLogOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WirelessDeviceLogOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WirelessDeviceLogOption
    class WirelessDeviceLogOption
      def self.default(visited=[])
        return nil if visited.include?('WirelessDeviceLogOption')
        visited = visited + ['WirelessDeviceLogOption']
        {
          type: 'type',
          log_level: 'log_level',
          events: Stubs::WirelessDeviceEventLogOptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WirelessDeviceLogOption.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['Events'] = Stubs::WirelessDeviceEventLogOptionList.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # List Stubber for WirelessDeviceEventLogOptionList
    class WirelessDeviceEventLogOptionList
      def self.default(visited=[])
        return nil if visited.include?('WirelessDeviceEventLogOptionList')
        visited = visited + ['WirelessDeviceEventLogOptionList']
        [
          Stubs::WirelessDeviceEventLogOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WirelessDeviceEventLogOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WirelessDeviceEventLogOption
    class WirelessDeviceEventLogOption
      def self.default(visited=[])
        return nil if visited.include?('WirelessDeviceEventLogOption')
        visited = visited + ['WirelessDeviceEventLogOption']
        {
          event: 'event',
          log_level: 'log_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::WirelessDeviceEventLogOption.new
        data = {}
        data['Event'] = stub[:event] unless stub[:event].nil?
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data
      end
    end

    # List Stubber for WirelessGatewayLogOptionList
    class WirelessGatewayLogOptionList
      def self.default(visited=[])
        return nil if visited.include?('WirelessGatewayLogOptionList')
        visited = visited + ['WirelessGatewayLogOptionList']
        [
          Stubs::WirelessGatewayLogOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WirelessGatewayLogOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WirelessGatewayLogOption
    class WirelessGatewayLogOption
      def self.default(visited=[])
        return nil if visited.include?('WirelessGatewayLogOption')
        visited = visited + ['WirelessGatewayLogOption']
        {
          type: 'type',
          log_level: 'log_level',
          events: Stubs::WirelessGatewayEventLogOptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WirelessGatewayLogOption.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['Events'] = Stubs::WirelessGatewayEventLogOptionList.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # List Stubber for WirelessGatewayEventLogOptionList
    class WirelessGatewayEventLogOptionList
      def self.default(visited=[])
        return nil if visited.include?('WirelessGatewayEventLogOptionList')
        visited = visited + ['WirelessGatewayEventLogOptionList']
        [
          Stubs::WirelessGatewayEventLogOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WirelessGatewayEventLogOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WirelessGatewayEventLogOption
    class WirelessGatewayEventLogOption
      def self.default(visited=[])
        return nil if visited.include?('WirelessGatewayEventLogOption')
        visited = visited + ['WirelessGatewayEventLogOption']
        {
          event: 'event',
          log_level: 'log_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::WirelessGatewayEventLogOption.new
        data = {}
        data['Event'] = stub[:event] unless stub[:event].nil?
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data
      end
    end

    # Operation Stubber for GetMulticastGroup
    class GetMulticastGroup
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          description: 'description',
          status: 'status',
          lo_ra_wan: Stubs::LoRaWANMulticastGet.default(visited),
          created_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LoRaWAN'] = Stubs::LoRaWANMulticastGet.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoRaWANMulticastGet
    class LoRaWANMulticastGet
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANMulticastGet')
        visited = visited + ['LoRaWANMulticastGet']
        {
          rf_region: 'rf_region',
          dl_class: 'dl_class',
          number_of_devices_requested: 1,
          number_of_devices_in_group: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANMulticastGet.new
        data = {}
        data['RfRegion'] = stub[:rf_region] unless stub[:rf_region].nil?
        data['DlClass'] = stub[:dl_class] unless stub[:dl_class].nil?
        data['NumberOfDevicesRequested'] = stub[:number_of_devices_requested] unless stub[:number_of_devices_requested].nil?
        data['NumberOfDevicesInGroup'] = stub[:number_of_devices_in_group] unless stub[:number_of_devices_in_group].nil?
        data
      end
    end

    # Operation Stubber for GetMulticastGroupSession
    class GetMulticastGroupSession
      def self.default(visited=[])
        {
          lo_ra_wan: Stubs::LoRaWANMulticastSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LoRaWAN'] = Stubs::LoRaWANMulticastSession.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoRaWANMulticastSession
    class LoRaWANMulticastSession
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANMulticastSession')
        visited = visited + ['LoRaWANMulticastSession']
        {
          dl_dr: 1,
          dl_freq: 1,
          session_start_time: Time.now,
          session_timeout: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANMulticastSession.new
        data = {}
        data['DlDr'] = stub[:dl_dr] unless stub[:dl_dr].nil?
        data['DlFreq'] = stub[:dl_freq] unless stub[:dl_freq].nil?
        data['SessionStartTime'] = Hearth::TimeHelper.to_date_time(stub[:session_start_time]) unless stub[:session_start_time].nil?
        data['SessionTimeout'] = stub[:session_timeout] unless stub[:session_timeout].nil?
        data
      end
    end

    # Operation Stubber for GetNetworkAnalyzerConfiguration
    class GetNetworkAnalyzerConfiguration
      def self.default(visited=[])
        {
          trace_content: Stubs::TraceContent.default(visited),
          wireless_devices: Stubs::WirelessDeviceList.default(visited),
          wireless_gateways: Stubs::WirelessGatewayList.default(visited),
          description: 'description',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TraceContent'] = Stubs::TraceContent.stub(stub[:trace_content]) unless stub[:trace_content].nil?
        data['WirelessDevices'] = Stubs::WirelessDeviceList.stub(stub[:wireless_devices]) unless stub[:wireless_devices].nil?
        data['WirelessGateways'] = Stubs::WirelessGatewayList.stub(stub[:wireless_gateways]) unless stub[:wireless_gateways].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WirelessGatewayList
    class WirelessGatewayList
      def self.default(visited=[])
        return nil if visited.include?('WirelessGatewayList')
        visited = visited + ['WirelessGatewayList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for WirelessDeviceList
    class WirelessDeviceList
      def self.default(visited=[])
        return nil if visited.include?('WirelessDeviceList')
        visited = visited + ['WirelessDeviceList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TraceContent
    class TraceContent
      def self.default(visited=[])
        return nil if visited.include?('TraceContent')
        visited = visited + ['TraceContent']
        {
          wireless_device_frame_info: 'wireless_device_frame_info',
          log_level: 'log_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::TraceContent.new
        data = {}
        data['WirelessDeviceFrameInfo'] = stub[:wireless_device_frame_info] unless stub[:wireless_device_frame_info].nil?
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data
      end
    end

    # Operation Stubber for GetPartnerAccount
    class GetPartnerAccount
      def self.default(visited=[])
        {
          sidewalk: Stubs::SidewalkAccountInfoWithFingerprint.default(visited),
          account_linked: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Sidewalk'] = Stubs::SidewalkAccountInfoWithFingerprint.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        data['AccountLinked'] = stub[:account_linked] unless stub[:account_linked].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SidewalkAccountInfoWithFingerprint
    class SidewalkAccountInfoWithFingerprint
      def self.default(visited=[])
        return nil if visited.include?('SidewalkAccountInfoWithFingerprint')
        visited = visited + ['SidewalkAccountInfoWithFingerprint']
        {
          amazon_id: 'amazon_id',
          fingerprint: 'fingerprint',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SidewalkAccountInfoWithFingerprint.new
        data = {}
        data['AmazonId'] = stub[:amazon_id] unless stub[:amazon_id].nil?
        data['Fingerprint'] = stub[:fingerprint] unless stub[:fingerprint].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetResourceEventConfiguration
    class GetResourceEventConfiguration
      def self.default(visited=[])
        {
          device_registration_state: Stubs::DeviceRegistrationStateEventConfiguration.default(visited),
          proximity: Stubs::ProximityEventConfiguration.default(visited),
          join: Stubs::JoinEventConfiguration.default(visited),
          connection_status: Stubs::ConnectionStatusEventConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceRegistrationState'] = Stubs::DeviceRegistrationStateEventConfiguration.stub(stub[:device_registration_state]) unless stub[:device_registration_state].nil?
        data['Proximity'] = Stubs::ProximityEventConfiguration.stub(stub[:proximity]) unless stub[:proximity].nil?
        data['Join'] = Stubs::JoinEventConfiguration.stub(stub[:join]) unless stub[:join].nil?
        data['ConnectionStatus'] = Stubs::ConnectionStatusEventConfiguration.stub(stub[:connection_status]) unless stub[:connection_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConnectionStatusEventConfiguration
    class ConnectionStatusEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConnectionStatusEventConfiguration')
        visited = visited + ['ConnectionStatusEventConfiguration']
        {
          lo_ra_wan: Stubs::LoRaWANConnectionStatusEventNotificationConfigurations.default(visited),
          wireless_gateway_id_event_topic: 'wireless_gateway_id_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionStatusEventConfiguration.new
        data = {}
        data['LoRaWAN'] = Stubs::LoRaWANConnectionStatusEventNotificationConfigurations.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['WirelessGatewayIdEventTopic'] = stub[:wireless_gateway_id_event_topic] unless stub[:wireless_gateway_id_event_topic].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANConnectionStatusEventNotificationConfigurations
    class LoRaWANConnectionStatusEventNotificationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANConnectionStatusEventNotificationConfigurations')
        visited = visited + ['LoRaWANConnectionStatusEventNotificationConfigurations']
        {
          gateway_eui_event_topic: 'gateway_eui_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANConnectionStatusEventNotificationConfigurations.new
        data = {}
        data['GatewayEuiEventTopic'] = stub[:gateway_eui_event_topic] unless stub[:gateway_eui_event_topic].nil?
        data
      end
    end

    # Structure Stubber for JoinEventConfiguration
    class JoinEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('JoinEventConfiguration')
        visited = visited + ['JoinEventConfiguration']
        {
          lo_ra_wan: Stubs::LoRaWANJoinEventNotificationConfigurations.default(visited),
          wireless_device_id_event_topic: 'wireless_device_id_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::JoinEventConfiguration.new
        data = {}
        data['LoRaWAN'] = Stubs::LoRaWANJoinEventNotificationConfigurations.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['WirelessDeviceIdEventTopic'] = stub[:wireless_device_id_event_topic] unless stub[:wireless_device_id_event_topic].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANJoinEventNotificationConfigurations
    class LoRaWANJoinEventNotificationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANJoinEventNotificationConfigurations')
        visited = visited + ['LoRaWANJoinEventNotificationConfigurations']
        {
          dev_eui_event_topic: 'dev_eui_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANJoinEventNotificationConfigurations.new
        data = {}
        data['DevEuiEventTopic'] = stub[:dev_eui_event_topic] unless stub[:dev_eui_event_topic].nil?
        data
      end
    end

    # Structure Stubber for ProximityEventConfiguration
    class ProximityEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ProximityEventConfiguration')
        visited = visited + ['ProximityEventConfiguration']
        {
          sidewalk: Stubs::SidewalkEventNotificationConfigurations.default(visited),
          wireless_device_id_event_topic: 'wireless_device_id_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProximityEventConfiguration.new
        data = {}
        data['Sidewalk'] = Stubs::SidewalkEventNotificationConfigurations.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        data['WirelessDeviceIdEventTopic'] = stub[:wireless_device_id_event_topic] unless stub[:wireless_device_id_event_topic].nil?
        data
      end
    end

    # Structure Stubber for SidewalkEventNotificationConfigurations
    class SidewalkEventNotificationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('SidewalkEventNotificationConfigurations')
        visited = visited + ['SidewalkEventNotificationConfigurations']
        {
          amazon_id_event_topic: 'amazon_id_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::SidewalkEventNotificationConfigurations.new
        data = {}
        data['AmazonIdEventTopic'] = stub[:amazon_id_event_topic] unless stub[:amazon_id_event_topic].nil?
        data
      end
    end

    # Structure Stubber for DeviceRegistrationStateEventConfiguration
    class DeviceRegistrationStateEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DeviceRegistrationStateEventConfiguration')
        visited = visited + ['DeviceRegistrationStateEventConfiguration']
        {
          sidewalk: Stubs::SidewalkEventNotificationConfigurations.default(visited),
          wireless_device_id_event_topic: 'wireless_device_id_event_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceRegistrationStateEventConfiguration.new
        data = {}
        data['Sidewalk'] = Stubs::SidewalkEventNotificationConfigurations.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        data['WirelessDeviceIdEventTopic'] = stub[:wireless_device_id_event_topic] unless stub[:wireless_device_id_event_topic].nil?
        data
      end
    end

    # Operation Stubber for GetResourceLogLevel
    class GetResourceLogLevel
      def self.default(visited=[])
        {
          log_level: 'log_level',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetServiceEndpoint
    class GetServiceEndpoint
      def self.default(visited=[])
        {
          service_type: 'service_type',
          service_endpoint: 'service_endpoint',
          server_trust: 'server_trust',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceType'] = stub[:service_type] unless stub[:service_type].nil?
        data['ServiceEndpoint'] = stub[:service_endpoint] unless stub[:service_endpoint].nil?
        data['ServerTrust'] = stub[:server_trust] unless stub[:server_trust].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetServiceProfile
    class GetServiceProfile
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          id: 'id',
          lo_ra_wan: Stubs::LoRaWANGetServiceProfileInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LoRaWAN'] = Stubs::LoRaWANGetServiceProfileInfo.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoRaWANGetServiceProfileInfo
    class LoRaWANGetServiceProfileInfo
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANGetServiceProfileInfo')
        visited = visited + ['LoRaWANGetServiceProfileInfo']
        {
          ul_rate: 1,
          ul_bucket_size: 1,
          ul_rate_policy: 'ul_rate_policy',
          dl_rate: 1,
          dl_bucket_size: 1,
          dl_rate_policy: 'dl_rate_policy',
          add_gw_metadata: false,
          dev_status_req_freq: 1,
          report_dev_status_battery: false,
          report_dev_status_margin: false,
          dr_min: 1,
          dr_max: 1,
          channel_mask: 'channel_mask',
          pr_allowed: false,
          hr_allowed: false,
          ra_allowed: false,
          nwk_geo_loc: false,
          target_per: 1,
          min_gw_diversity: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANGetServiceProfileInfo.new
        data = {}
        data['UlRate'] = stub[:ul_rate] unless stub[:ul_rate].nil?
        data['UlBucketSize'] = stub[:ul_bucket_size] unless stub[:ul_bucket_size].nil?
        data['UlRatePolicy'] = stub[:ul_rate_policy] unless stub[:ul_rate_policy].nil?
        data['DlRate'] = stub[:dl_rate] unless stub[:dl_rate].nil?
        data['DlBucketSize'] = stub[:dl_bucket_size] unless stub[:dl_bucket_size].nil?
        data['DlRatePolicy'] = stub[:dl_rate_policy] unless stub[:dl_rate_policy].nil?
        data['AddGwMetadata'] = stub[:add_gw_metadata] unless stub[:add_gw_metadata].nil?
        data['DevStatusReqFreq'] = stub[:dev_status_req_freq] unless stub[:dev_status_req_freq].nil?
        data['ReportDevStatusBattery'] = stub[:report_dev_status_battery] unless stub[:report_dev_status_battery].nil?
        data['ReportDevStatusMargin'] = stub[:report_dev_status_margin] unless stub[:report_dev_status_margin].nil?
        data['DrMin'] = stub[:dr_min] unless stub[:dr_min].nil?
        data['DrMax'] = stub[:dr_max] unless stub[:dr_max].nil?
        data['ChannelMask'] = stub[:channel_mask] unless stub[:channel_mask].nil?
        data['PrAllowed'] = stub[:pr_allowed] unless stub[:pr_allowed].nil?
        data['HrAllowed'] = stub[:hr_allowed] unless stub[:hr_allowed].nil?
        data['RaAllowed'] = stub[:ra_allowed] unless stub[:ra_allowed].nil?
        data['NwkGeoLoc'] = stub[:nwk_geo_loc] unless stub[:nwk_geo_loc].nil?
        data['TargetPer'] = stub[:target_per] unless stub[:target_per].nil?
        data['MinGwDiversity'] = stub[:min_gw_diversity] unless stub[:min_gw_diversity].nil?
        data
      end
    end

    # Operation Stubber for GetWirelessDevice
    class GetWirelessDevice
      def self.default(visited=[])
        {
          type: 'type',
          name: 'name',
          description: 'description',
          destination_name: 'destination_name',
          id: 'id',
          arn: 'arn',
          thing_name: 'thing_name',
          thing_arn: 'thing_arn',
          lo_ra_wan: Stubs::LoRaWANDevice.default(visited),
          sidewalk: Stubs::SidewalkDevice.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DestinationName'] = stub[:destination_name] unless stub[:destination_name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ThingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['ThingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data['LoRaWAN'] = Stubs::LoRaWANDevice.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['Sidewalk'] = Stubs::SidewalkDevice.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SidewalkDevice
    class SidewalkDevice
      def self.default(visited=[])
        return nil if visited.include?('SidewalkDevice')
        visited = visited + ['SidewalkDevice']
        {
          amazon_id: 'amazon_id',
          sidewalk_id: 'sidewalk_id',
          sidewalk_manufacturing_sn: 'sidewalk_manufacturing_sn',
          device_certificates: Stubs::DeviceCertificateList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SidewalkDevice.new
        data = {}
        data['AmazonId'] = stub[:amazon_id] unless stub[:amazon_id].nil?
        data['SidewalkId'] = stub[:sidewalk_id] unless stub[:sidewalk_id].nil?
        data['SidewalkManufacturingSn'] = stub[:sidewalk_manufacturing_sn] unless stub[:sidewalk_manufacturing_sn].nil?
        data['DeviceCertificates'] = Stubs::DeviceCertificateList.stub(stub[:device_certificates]) unless stub[:device_certificates].nil?
        data
      end
    end

    # List Stubber for DeviceCertificateList
    class DeviceCertificateList
      def self.default(visited=[])
        return nil if visited.include?('DeviceCertificateList')
        visited = visited + ['DeviceCertificateList']
        [
          Stubs::CertificateList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CertificateList.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CertificateList
    class CertificateList
      def self.default(visited=[])
        return nil if visited.include?('CertificateList')
        visited = visited + ['CertificateList']
        {
          signing_alg: 'signing_alg',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateList.new
        data = {}
        data['SigningAlg'] = stub[:signing_alg] unless stub[:signing_alg].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANDevice
    class LoRaWANDevice
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANDevice')
        visited = visited + ['LoRaWANDevice']
        {
          dev_eui: 'dev_eui',
          device_profile_id: 'device_profile_id',
          service_profile_id: 'service_profile_id',
          otaa_v1_1: Stubs::OtaaV1_1.default(visited),
          otaa_v1_0_x: Stubs::OtaaV1_0_x.default(visited),
          abp_v1_1: Stubs::AbpV1_1.default(visited),
          abp_v1_0_x: Stubs::AbpV1_0_x.default(visited),
          f_ports: Stubs::FPorts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANDevice.new
        data = {}
        data['DevEui'] = stub[:dev_eui] unless stub[:dev_eui].nil?
        data['DeviceProfileId'] = stub[:device_profile_id] unless stub[:device_profile_id].nil?
        data['ServiceProfileId'] = stub[:service_profile_id] unless stub[:service_profile_id].nil?
        data['OtaaV1_1'] = Stubs::OtaaV1_1.stub(stub[:otaa_v1_1]) unless stub[:otaa_v1_1].nil?
        data['OtaaV1_0_x'] = Stubs::OtaaV1_0_x.stub(stub[:otaa_v1_0_x]) unless stub[:otaa_v1_0_x].nil?
        data['AbpV1_1'] = Stubs::AbpV1_1.stub(stub[:abp_v1_1]) unless stub[:abp_v1_1].nil?
        data['AbpV1_0_x'] = Stubs::AbpV1_0_x.stub(stub[:abp_v1_0_x]) unless stub[:abp_v1_0_x].nil?
        data['FPorts'] = Stubs::FPorts.stub(stub[:f_ports]) unless stub[:f_ports].nil?
        data
      end
    end

    # Structure Stubber for FPorts
    class FPorts
      def self.default(visited=[])
        return nil if visited.include?('FPorts')
        visited = visited + ['FPorts']
        {
          fuota: 1,
          multicast: 1,
          clock_sync: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FPorts.new
        data = {}
        data['Fuota'] = stub[:fuota] unless stub[:fuota].nil?
        data['Multicast'] = stub[:multicast] unless stub[:multicast].nil?
        data['ClockSync'] = stub[:clock_sync] unless stub[:clock_sync].nil?
        data
      end
    end

    # Structure Stubber for AbpV1_0_x
    class AbpV1_0_x
      def self.default(visited=[])
        return nil if visited.include?('AbpV1_0_x')
        visited = visited + ['AbpV1_0_x']
        {
          dev_addr: 'dev_addr',
          session_keys: Stubs::SessionKeysAbpV1_0_x.default(visited),
          f_cnt_start: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AbpV1_0_x.new
        data = {}
        data['DevAddr'] = stub[:dev_addr] unless stub[:dev_addr].nil?
        data['SessionKeys'] = Stubs::SessionKeysAbpV1_0_x.stub(stub[:session_keys]) unless stub[:session_keys].nil?
        data['FCntStart'] = stub[:f_cnt_start] unless stub[:f_cnt_start].nil?
        data
      end
    end

    # Structure Stubber for SessionKeysAbpV1_0_x
    class SessionKeysAbpV1_0_x
      def self.default(visited=[])
        return nil if visited.include?('SessionKeysAbpV1_0_x')
        visited = visited + ['SessionKeysAbpV1_0_x']
        {
          nwk_s_key: 'nwk_s_key',
          app_s_key: 'app_s_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionKeysAbpV1_0_x.new
        data = {}
        data['NwkSKey'] = stub[:nwk_s_key] unless stub[:nwk_s_key].nil?
        data['AppSKey'] = stub[:app_s_key] unless stub[:app_s_key].nil?
        data
      end
    end

    # Structure Stubber for AbpV1_1
    class AbpV1_1
      def self.default(visited=[])
        return nil if visited.include?('AbpV1_1')
        visited = visited + ['AbpV1_1']
        {
          dev_addr: 'dev_addr',
          session_keys: Stubs::SessionKeysAbpV1_1.default(visited),
          f_cnt_start: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AbpV1_1.new
        data = {}
        data['DevAddr'] = stub[:dev_addr] unless stub[:dev_addr].nil?
        data['SessionKeys'] = Stubs::SessionKeysAbpV1_1.stub(stub[:session_keys]) unless stub[:session_keys].nil?
        data['FCntStart'] = stub[:f_cnt_start] unless stub[:f_cnt_start].nil?
        data
      end
    end

    # Structure Stubber for SessionKeysAbpV1_1
    class SessionKeysAbpV1_1
      def self.default(visited=[])
        return nil if visited.include?('SessionKeysAbpV1_1')
        visited = visited + ['SessionKeysAbpV1_1']
        {
          f_nwk_s_int_key: 'f_nwk_s_int_key',
          s_nwk_s_int_key: 's_nwk_s_int_key',
          nwk_s_enc_key: 'nwk_s_enc_key',
          app_s_key: 'app_s_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionKeysAbpV1_1.new
        data = {}
        data['FNwkSIntKey'] = stub[:f_nwk_s_int_key] unless stub[:f_nwk_s_int_key].nil?
        data['SNwkSIntKey'] = stub[:s_nwk_s_int_key] unless stub[:s_nwk_s_int_key].nil?
        data['NwkSEncKey'] = stub[:nwk_s_enc_key] unless stub[:nwk_s_enc_key].nil?
        data['AppSKey'] = stub[:app_s_key] unless stub[:app_s_key].nil?
        data
      end
    end

    # Structure Stubber for OtaaV1_0_x
    class OtaaV1_0_x
      def self.default(visited=[])
        return nil if visited.include?('OtaaV1_0_x')
        visited = visited + ['OtaaV1_0_x']
        {
          app_key: 'app_key',
          app_eui: 'app_eui',
          gen_app_key: 'gen_app_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::OtaaV1_0_x.new
        data = {}
        data['AppKey'] = stub[:app_key] unless stub[:app_key].nil?
        data['AppEui'] = stub[:app_eui] unless stub[:app_eui].nil?
        data['GenAppKey'] = stub[:gen_app_key] unless stub[:gen_app_key].nil?
        data
      end
    end

    # Structure Stubber for OtaaV1_1
    class OtaaV1_1
      def self.default(visited=[])
        return nil if visited.include?('OtaaV1_1')
        visited = visited + ['OtaaV1_1']
        {
          app_key: 'app_key',
          nwk_key: 'nwk_key',
          join_eui: 'join_eui',
        }
      end

      def self.stub(stub)
        stub ||= Types::OtaaV1_1.new
        data = {}
        data['AppKey'] = stub[:app_key] unless stub[:app_key].nil?
        data['NwkKey'] = stub[:nwk_key] unless stub[:nwk_key].nil?
        data['JoinEui'] = stub[:join_eui] unless stub[:join_eui].nil?
        data
      end
    end

    # Operation Stubber for GetWirelessDeviceStatistics
    class GetWirelessDeviceStatistics
      def self.default(visited=[])
        {
          wireless_device_id: 'wireless_device_id',
          last_uplink_received_at: 'last_uplink_received_at',
          lo_ra_wan: Stubs::LoRaWANDeviceMetadata.default(visited),
          sidewalk: Stubs::SidewalkDeviceMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WirelessDeviceId'] = stub[:wireless_device_id] unless stub[:wireless_device_id].nil?
        data['LastUplinkReceivedAt'] = stub[:last_uplink_received_at] unless stub[:last_uplink_received_at].nil?
        data['LoRaWAN'] = Stubs::LoRaWANDeviceMetadata.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['Sidewalk'] = Stubs::SidewalkDeviceMetadata.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SidewalkDeviceMetadata
    class SidewalkDeviceMetadata
      def self.default(visited=[])
        return nil if visited.include?('SidewalkDeviceMetadata')
        visited = visited + ['SidewalkDeviceMetadata']
        {
          rssi: 1,
          battery_level: 'battery_level',
          event: 'event',
          device_state: 'device_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::SidewalkDeviceMetadata.new
        data = {}
        data['Rssi'] = stub[:rssi] unless stub[:rssi].nil?
        data['BatteryLevel'] = stub[:battery_level] unless stub[:battery_level].nil?
        data['Event'] = stub[:event] unless stub[:event].nil?
        data['DeviceState'] = stub[:device_state] unless stub[:device_state].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANDeviceMetadata
    class LoRaWANDeviceMetadata
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANDeviceMetadata')
        visited = visited + ['LoRaWANDeviceMetadata']
        {
          dev_eui: 'dev_eui',
          f_port: 1,
          data_rate: 1,
          frequency: 1,
          timestamp: 'timestamp',
          gateways: Stubs::LoRaWANGatewayMetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANDeviceMetadata.new
        data = {}
        data['DevEui'] = stub[:dev_eui] unless stub[:dev_eui].nil?
        data['FPort'] = stub[:f_port] unless stub[:f_port].nil?
        data['DataRate'] = stub[:data_rate] unless stub[:data_rate].nil?
        data['Frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['Gateways'] = Stubs::LoRaWANGatewayMetadataList.stub(stub[:gateways]) unless stub[:gateways].nil?
        data
      end
    end

    # List Stubber for LoRaWANGatewayMetadataList
    class LoRaWANGatewayMetadataList
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANGatewayMetadataList')
        visited = visited + ['LoRaWANGatewayMetadataList']
        [
          Stubs::LoRaWANGatewayMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LoRaWANGatewayMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LoRaWANGatewayMetadata
    class LoRaWANGatewayMetadata
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANGatewayMetadata')
        visited = visited + ['LoRaWANGatewayMetadata']
        {
          gateway_eui: 'gateway_eui',
          snr: 1.0,
          rssi: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANGatewayMetadata.new
        data = {}
        data['GatewayEui'] = stub[:gateway_eui] unless stub[:gateway_eui].nil?
        data['Snr'] = Hearth::NumberHelper.serialize(stub[:snr])
        data['Rssi'] = Hearth::NumberHelper.serialize(stub[:rssi])
        data
      end
    end

    # Operation Stubber for GetWirelessGateway
    class GetWirelessGateway
      def self.default(visited=[])
        {
          name: 'name',
          id: 'id',
          description: 'description',
          lo_ra_wan: Stubs::LoRaWANGateway.default(visited),
          arn: 'arn',
          thing_name: 'thing_name',
          thing_arn: 'thing_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LoRaWAN'] = Stubs::LoRaWANGateway.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ThingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['ThingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoRaWANGateway
    class LoRaWANGateway
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANGateway')
        visited = visited + ['LoRaWANGateway']
        {
          gateway_eui: 'gateway_eui',
          rf_region: 'rf_region',
          join_eui_filters: Stubs::JoinEuiFilters.default(visited),
          net_id_filters: Stubs::NetIdFilters.default(visited),
          sub_bands: Stubs::SubBands.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANGateway.new
        data = {}
        data['GatewayEui'] = stub[:gateway_eui] unless stub[:gateway_eui].nil?
        data['RfRegion'] = stub[:rf_region] unless stub[:rf_region].nil?
        data['JoinEuiFilters'] = Stubs::JoinEuiFilters.stub(stub[:join_eui_filters]) unless stub[:join_eui_filters].nil?
        data['NetIdFilters'] = Stubs::NetIdFilters.stub(stub[:net_id_filters]) unless stub[:net_id_filters].nil?
        data['SubBands'] = Stubs::SubBands.stub(stub[:sub_bands]) unless stub[:sub_bands].nil?
        data
      end
    end

    # List Stubber for SubBands
    class SubBands
      def self.default(visited=[])
        return nil if visited.include?('SubBands')
        visited = visited + ['SubBands']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for NetIdFilters
    class NetIdFilters
      def self.default(visited=[])
        return nil if visited.include?('NetIdFilters')
        visited = visited + ['NetIdFilters']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for JoinEuiFilters
    class JoinEuiFilters
      def self.default(visited=[])
        return nil if visited.include?('JoinEuiFilters')
        visited = visited + ['JoinEuiFilters']
        [
          Stubs::JoinEuiRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JoinEuiRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for JoinEuiRange
    class JoinEuiRange
      def self.default(visited=[])
        return nil if visited.include?('JoinEuiRange')
        visited = visited + ['JoinEuiRange']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetWirelessGatewayCertificate
    class GetWirelessGatewayCertificate
      def self.default(visited=[])
        {
          iot_certificate_id: 'iot_certificate_id',
          lo_ra_wan_network_server_certificate_id: 'lo_ra_wan_network_server_certificate_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IotCertificateId'] = stub[:iot_certificate_id] unless stub[:iot_certificate_id].nil?
        data['LoRaWANNetworkServerCertificateId'] = stub[:lo_ra_wan_network_server_certificate_id] unless stub[:lo_ra_wan_network_server_certificate_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetWirelessGatewayFirmwareInformation
    class GetWirelessGatewayFirmwareInformation
      def self.default(visited=[])
        {
          lo_ra_wan: Stubs::LoRaWANGatewayCurrentVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LoRaWAN'] = Stubs::LoRaWANGatewayCurrentVersion.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoRaWANGatewayCurrentVersion
    class LoRaWANGatewayCurrentVersion
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANGatewayCurrentVersion')
        visited = visited + ['LoRaWANGatewayCurrentVersion']
        {
          current_version: Stubs::LoRaWANGatewayVersion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANGatewayCurrentVersion.new
        data = {}
        data['CurrentVersion'] = Stubs::LoRaWANGatewayVersion.stub(stub[:current_version]) unless stub[:current_version].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANGatewayVersion
    class LoRaWANGatewayVersion
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANGatewayVersion')
        visited = visited + ['LoRaWANGatewayVersion']
        {
          package_version: 'package_version',
          model: 'model',
          station: 'station',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANGatewayVersion.new
        data = {}
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['Model'] = stub[:model] unless stub[:model].nil?
        data['Station'] = stub[:station] unless stub[:station].nil?
        data
      end
    end

    # Operation Stubber for GetWirelessGatewayStatistics
    class GetWirelessGatewayStatistics
      def self.default(visited=[])
        {
          wireless_gateway_id: 'wireless_gateway_id',
          last_uplink_received_at: 'last_uplink_received_at',
          connection_status: 'connection_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WirelessGatewayId'] = stub[:wireless_gateway_id] unless stub[:wireless_gateway_id].nil?
        data['LastUplinkReceivedAt'] = stub[:last_uplink_received_at] unless stub[:last_uplink_received_at].nil?
        data['ConnectionStatus'] = stub[:connection_status] unless stub[:connection_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetWirelessGatewayTask
    class GetWirelessGatewayTask
      def self.default(visited=[])
        {
          wireless_gateway_id: 'wireless_gateway_id',
          wireless_gateway_task_definition_id: 'wireless_gateway_task_definition_id',
          last_uplink_received_at: 'last_uplink_received_at',
          task_created_at: 'task_created_at',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WirelessGatewayId'] = stub[:wireless_gateway_id] unless stub[:wireless_gateway_id].nil?
        data['WirelessGatewayTaskDefinitionId'] = stub[:wireless_gateway_task_definition_id] unless stub[:wireless_gateway_task_definition_id].nil?
        data['LastUplinkReceivedAt'] = stub[:last_uplink_received_at] unless stub[:last_uplink_received_at].nil?
        data['TaskCreatedAt'] = stub[:task_created_at] unless stub[:task_created_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetWirelessGatewayTaskDefinition
    class GetWirelessGatewayTaskDefinition
      def self.default(visited=[])
        {
          auto_create_tasks: false,
          name: 'name',
          update: Stubs::UpdateWirelessGatewayTaskCreate.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AutoCreateTasks'] = stub[:auto_create_tasks] unless stub[:auto_create_tasks].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Update'] = Stubs::UpdateWirelessGatewayTaskCreate.stub(stub[:update]) unless stub[:update].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for UpdateWirelessGatewayTaskCreate
    class UpdateWirelessGatewayTaskCreate
      def self.default(visited=[])
        return nil if visited.include?('UpdateWirelessGatewayTaskCreate')
        visited = visited + ['UpdateWirelessGatewayTaskCreate']
        {
          update_data_source: 'update_data_source',
          update_data_role: 'update_data_role',
          lo_ra_wan: Stubs::LoRaWANUpdateGatewayTaskCreate.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateWirelessGatewayTaskCreate.new
        data = {}
        data['UpdateDataSource'] = stub[:update_data_source] unless stub[:update_data_source].nil?
        data['UpdateDataRole'] = stub[:update_data_role] unless stub[:update_data_role].nil?
        data['LoRaWAN'] = Stubs::LoRaWANUpdateGatewayTaskCreate.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANUpdateGatewayTaskCreate
    class LoRaWANUpdateGatewayTaskCreate
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANUpdateGatewayTaskCreate')
        visited = visited + ['LoRaWANUpdateGatewayTaskCreate']
        {
          update_signature: 'update_signature',
          sig_key_crc: 1,
          current_version: Stubs::LoRaWANGatewayVersion.default(visited),
          update_version: Stubs::LoRaWANGatewayVersion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANUpdateGatewayTaskCreate.new
        data = {}
        data['UpdateSignature'] = stub[:update_signature] unless stub[:update_signature].nil?
        data['SigKeyCrc'] = stub[:sig_key_crc] unless stub[:sig_key_crc].nil?
        data['CurrentVersion'] = Stubs::LoRaWANGatewayVersion.stub(stub[:current_version]) unless stub[:current_version].nil?
        data['UpdateVersion'] = Stubs::LoRaWANGatewayVersion.stub(stub[:update_version]) unless stub[:update_version].nil?
        data
      end
    end

    # Operation Stubber for ListDestinations
    class ListDestinations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          destination_list: Stubs::DestinationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['DestinationList'] = Stubs::DestinationList.stub(stub[:destination_list]) unless stub[:destination_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DestinationList
    class DestinationList
      def self.default(visited=[])
        return nil if visited.include?('DestinationList')
        visited = visited + ['DestinationList']
        [
          Stubs::Destinations.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Destinations.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Destinations
    class Destinations
      def self.default(visited=[])
        return nil if visited.include?('Destinations')
        visited = visited + ['Destinations']
        {
          arn: 'arn',
          name: 'name',
          expression_type: 'expression_type',
          expression: 'expression',
          description: 'description',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Destinations.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ExpressionType'] = stub[:expression_type] unless stub[:expression_type].nil?
        data['Expression'] = stub[:expression] unless stub[:expression].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Operation Stubber for ListDeviceProfiles
    class ListDeviceProfiles
      def self.default(visited=[])
        {
          next_token: 'next_token',
          device_profile_list: Stubs::DeviceProfileList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['DeviceProfileList'] = Stubs::DeviceProfileList.stub(stub[:device_profile_list]) unless stub[:device_profile_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeviceProfileList
    class DeviceProfileList
      def self.default(visited=[])
        return nil if visited.include?('DeviceProfileList')
        visited = visited + ['DeviceProfileList']
        [
          Stubs::DeviceProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeviceProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceProfile
    class DeviceProfile
      def self.default(visited=[])
        return nil if visited.include?('DeviceProfile')
        visited = visited + ['DeviceProfile']
        {
          arn: 'arn',
          name: 'name',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceProfile.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Operation Stubber for ListEventConfigurations
    class ListEventConfigurations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          event_configurations_list: Stubs::EventConfigurationsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['EventConfigurationsList'] = Stubs::EventConfigurationsList.stub(stub[:event_configurations_list]) unless stub[:event_configurations_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EventConfigurationsList
    class EventConfigurationsList
      def self.default(visited=[])
        return nil if visited.include?('EventConfigurationsList')
        visited = visited + ['EventConfigurationsList']
        [
          Stubs::EventConfigurationItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventConfigurationItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventConfigurationItem
    class EventConfigurationItem
      def self.default(visited=[])
        return nil if visited.include?('EventConfigurationItem')
        visited = visited + ['EventConfigurationItem']
        {
          identifier: 'identifier',
          identifier_type: 'identifier_type',
          partner_type: 'partner_type',
          events: Stubs::EventNotificationItemConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventConfigurationItem.new
        data = {}
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['IdentifierType'] = stub[:identifier_type] unless stub[:identifier_type].nil?
        data['PartnerType'] = stub[:partner_type] unless stub[:partner_type].nil?
        data['Events'] = Stubs::EventNotificationItemConfigurations.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # Structure Stubber for EventNotificationItemConfigurations
    class EventNotificationItemConfigurations
      def self.default(visited=[])
        return nil if visited.include?('EventNotificationItemConfigurations')
        visited = visited + ['EventNotificationItemConfigurations']
        {
          device_registration_state: Stubs::DeviceRegistrationStateEventConfiguration.default(visited),
          proximity: Stubs::ProximityEventConfiguration.default(visited),
          join: Stubs::JoinEventConfiguration.default(visited),
          connection_status: Stubs::ConnectionStatusEventConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventNotificationItemConfigurations.new
        data = {}
        data['DeviceRegistrationState'] = Stubs::DeviceRegistrationStateEventConfiguration.stub(stub[:device_registration_state]) unless stub[:device_registration_state].nil?
        data['Proximity'] = Stubs::ProximityEventConfiguration.stub(stub[:proximity]) unless stub[:proximity].nil?
        data['Join'] = Stubs::JoinEventConfiguration.stub(stub[:join]) unless stub[:join].nil?
        data['ConnectionStatus'] = Stubs::ConnectionStatusEventConfiguration.stub(stub[:connection_status]) unless stub[:connection_status].nil?
        data
      end
    end

    # Operation Stubber for ListFuotaTasks
    class ListFuotaTasks
      def self.default(visited=[])
        {
          next_token: 'next_token',
          fuota_task_list: Stubs::FuotaTaskList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FuotaTaskList'] = Stubs::FuotaTaskList.stub(stub[:fuota_task_list]) unless stub[:fuota_task_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FuotaTaskList
    class FuotaTaskList
      def self.default(visited=[])
        return nil if visited.include?('FuotaTaskList')
        visited = visited + ['FuotaTaskList']
        [
          Stubs::FuotaTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FuotaTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FuotaTask
    class FuotaTask
      def self.default(visited=[])
        return nil if visited.include?('FuotaTask')
        visited = visited + ['FuotaTask']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::FuotaTask.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListMulticastGroups
    class ListMulticastGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          multicast_group_list: Stubs::MulticastGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MulticastGroupList'] = Stubs::MulticastGroupList.stub(stub[:multicast_group_list]) unless stub[:multicast_group_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MulticastGroupList
    class MulticastGroupList
      def self.default(visited=[])
        return nil if visited.include?('MulticastGroupList')
        visited = visited + ['MulticastGroupList']
        [
          Stubs::MulticastGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MulticastGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MulticastGroup
    class MulticastGroup
      def self.default(visited=[])
        return nil if visited.include?('MulticastGroup')
        visited = visited + ['MulticastGroup']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MulticastGroup.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListMulticastGroupsByFuotaTask
    class ListMulticastGroupsByFuotaTask
      def self.default(visited=[])
        {
          next_token: 'next_token',
          multicast_group_list: Stubs::MulticastGroupListByFuotaTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MulticastGroupList'] = Stubs::MulticastGroupListByFuotaTask.stub(stub[:multicast_group_list]) unless stub[:multicast_group_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MulticastGroupListByFuotaTask
    class MulticastGroupListByFuotaTask
      def self.default(visited=[])
        return nil if visited.include?('MulticastGroupListByFuotaTask')
        visited = visited + ['MulticastGroupListByFuotaTask']
        [
          Stubs::MulticastGroupByFuotaTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MulticastGroupByFuotaTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MulticastGroupByFuotaTask
    class MulticastGroupByFuotaTask
      def self.default(visited=[])
        return nil if visited.include?('MulticastGroupByFuotaTask')
        visited = visited + ['MulticastGroupByFuotaTask']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MulticastGroupByFuotaTask.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Operation Stubber for ListNetworkAnalyzerConfigurations
    class ListNetworkAnalyzerConfigurations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          network_analyzer_configuration_list: Stubs::NetworkAnalyzerConfigurationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NetworkAnalyzerConfigurationList'] = Stubs::NetworkAnalyzerConfigurationList.stub(stub[:network_analyzer_configuration_list]) unless stub[:network_analyzer_configuration_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NetworkAnalyzerConfigurationList
    class NetworkAnalyzerConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('NetworkAnalyzerConfigurationList')
        visited = visited + ['NetworkAnalyzerConfigurationList']
        [
          Stubs::NetworkAnalyzerConfigurations.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkAnalyzerConfigurations.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkAnalyzerConfigurations
    class NetworkAnalyzerConfigurations
      def self.default(visited=[])
        return nil if visited.include?('NetworkAnalyzerConfigurations')
        visited = visited + ['NetworkAnalyzerConfigurations']
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkAnalyzerConfigurations.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListPartnerAccounts
    class ListPartnerAccounts
      def self.default(visited=[])
        {
          next_token: 'next_token',
          sidewalk: Stubs::SidewalkAccountList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Sidewalk'] = Stubs::SidewalkAccountList.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SidewalkAccountList
    class SidewalkAccountList
      def self.default(visited=[])
        return nil if visited.include?('SidewalkAccountList')
        visited = visited + ['SidewalkAccountList']
        [
          Stubs::SidewalkAccountInfoWithFingerprint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SidewalkAccountInfoWithFingerprint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListQueuedMessages
    class ListQueuedMessages
      def self.default(visited=[])
        {
          next_token: 'next_token',
          downlink_queue_messages_list: Stubs::DownlinkQueueMessagesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['DownlinkQueueMessagesList'] = Stubs::DownlinkQueueMessagesList.stub(stub[:downlink_queue_messages_list]) unless stub[:downlink_queue_messages_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DownlinkQueueMessagesList
    class DownlinkQueueMessagesList
      def self.default(visited=[])
        return nil if visited.include?('DownlinkQueueMessagesList')
        visited = visited + ['DownlinkQueueMessagesList']
        [
          Stubs::DownlinkQueueMessage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DownlinkQueueMessage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DownlinkQueueMessage
    class DownlinkQueueMessage
      def self.default(visited=[])
        return nil if visited.include?('DownlinkQueueMessage')
        visited = visited + ['DownlinkQueueMessage']
        {
          message_id: 'message_id',
          transmit_mode: 1,
          received_at: 'received_at',
          lo_ra_wan: Stubs::LoRaWANSendDataToDevice.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DownlinkQueueMessage.new
        data = {}
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['TransmitMode'] = stub[:transmit_mode] unless stub[:transmit_mode].nil?
        data['ReceivedAt'] = stub[:received_at] unless stub[:received_at].nil?
        data['LoRaWAN'] = Stubs::LoRaWANSendDataToDevice.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANSendDataToDevice
    class LoRaWANSendDataToDevice
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANSendDataToDevice')
        visited = visited + ['LoRaWANSendDataToDevice']
        {
          f_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANSendDataToDevice.new
        data = {}
        data['FPort'] = stub[:f_port] unless stub[:f_port].nil?
        data
      end
    end

    # Operation Stubber for ListServiceProfiles
    class ListServiceProfiles
      def self.default(visited=[])
        {
          next_token: 'next_token',
          service_profile_list: Stubs::ServiceProfileList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ServiceProfileList'] = Stubs::ServiceProfileList.stub(stub[:service_profile_list]) unless stub[:service_profile_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ServiceProfileList
    class ServiceProfileList
      def self.default(visited=[])
        return nil if visited.include?('ServiceProfileList')
        visited = visited + ['ServiceProfileList']
        [
          Stubs::ServiceProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceProfile
    class ServiceProfile
      def self.default(visited=[])
        return nil if visited.include?('ServiceProfile')
        visited = visited + ['ServiceProfile']
        {
          arn: 'arn',
          name: 'name',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceProfile.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListWirelessDevices
    class ListWirelessDevices
      def self.default(visited=[])
        {
          next_token: 'next_token',
          wireless_device_list: Stubs::WirelessDeviceStatisticsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['WirelessDeviceList'] = Stubs::WirelessDeviceStatisticsList.stub(stub[:wireless_device_list]) unless stub[:wireless_device_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WirelessDeviceStatisticsList
    class WirelessDeviceStatisticsList
      def self.default(visited=[])
        return nil if visited.include?('WirelessDeviceStatisticsList')
        visited = visited + ['WirelessDeviceStatisticsList']
        [
          Stubs::WirelessDeviceStatistics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WirelessDeviceStatistics.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WirelessDeviceStatistics
    class WirelessDeviceStatistics
      def self.default(visited=[])
        return nil if visited.include?('WirelessDeviceStatistics')
        visited = visited + ['WirelessDeviceStatistics']
        {
          arn: 'arn',
          id: 'id',
          type: 'type',
          name: 'name',
          destination_name: 'destination_name',
          last_uplink_received_at: 'last_uplink_received_at',
          lo_ra_wan: Stubs::LoRaWANListDevice.default(visited),
          sidewalk: Stubs::SidewalkListDevice.default(visited),
          fuota_device_status: 'fuota_device_status',
          multicast_device_status: 'multicast_device_status',
          mc_group_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WirelessDeviceStatistics.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DestinationName'] = stub[:destination_name] unless stub[:destination_name].nil?
        data['LastUplinkReceivedAt'] = stub[:last_uplink_received_at] unless stub[:last_uplink_received_at].nil?
        data['LoRaWAN'] = Stubs::LoRaWANListDevice.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['Sidewalk'] = Stubs::SidewalkListDevice.stub(stub[:sidewalk]) unless stub[:sidewalk].nil?
        data['FuotaDeviceStatus'] = stub[:fuota_device_status] unless stub[:fuota_device_status].nil?
        data['MulticastDeviceStatus'] = stub[:multicast_device_status] unless stub[:multicast_device_status].nil?
        data['McGroupId'] = stub[:mc_group_id] unless stub[:mc_group_id].nil?
        data
      end
    end

    # Structure Stubber for SidewalkListDevice
    class SidewalkListDevice
      def self.default(visited=[])
        return nil if visited.include?('SidewalkListDevice')
        visited = visited + ['SidewalkListDevice']
        {
          amazon_id: 'amazon_id',
          sidewalk_id: 'sidewalk_id',
          sidewalk_manufacturing_sn: 'sidewalk_manufacturing_sn',
          device_certificates: Stubs::DeviceCertificateList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SidewalkListDevice.new
        data = {}
        data['AmazonId'] = stub[:amazon_id] unless stub[:amazon_id].nil?
        data['SidewalkId'] = stub[:sidewalk_id] unless stub[:sidewalk_id].nil?
        data['SidewalkManufacturingSn'] = stub[:sidewalk_manufacturing_sn] unless stub[:sidewalk_manufacturing_sn].nil?
        data['DeviceCertificates'] = Stubs::DeviceCertificateList.stub(stub[:device_certificates]) unless stub[:device_certificates].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANListDevice
    class LoRaWANListDevice
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANListDevice')
        visited = visited + ['LoRaWANListDevice']
        {
          dev_eui: 'dev_eui',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANListDevice.new
        data = {}
        data['DevEui'] = stub[:dev_eui] unless stub[:dev_eui].nil?
        data
      end
    end

    # Operation Stubber for ListWirelessGatewayTaskDefinitions
    class ListWirelessGatewayTaskDefinitions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          task_definitions: Stubs::WirelessGatewayTaskDefinitionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TaskDefinitions'] = Stubs::WirelessGatewayTaskDefinitionList.stub(stub[:task_definitions]) unless stub[:task_definitions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WirelessGatewayTaskDefinitionList
    class WirelessGatewayTaskDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('WirelessGatewayTaskDefinitionList')
        visited = visited + ['WirelessGatewayTaskDefinitionList']
        [
          Stubs::UpdateWirelessGatewayTaskEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UpdateWirelessGatewayTaskEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpdateWirelessGatewayTaskEntry
    class UpdateWirelessGatewayTaskEntry
      def self.default(visited=[])
        return nil if visited.include?('UpdateWirelessGatewayTaskEntry')
        visited = visited + ['UpdateWirelessGatewayTaskEntry']
        {
          id: 'id',
          lo_ra_wan: Stubs::LoRaWANUpdateGatewayTaskEntry.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateWirelessGatewayTaskEntry.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LoRaWAN'] = Stubs::LoRaWANUpdateGatewayTaskEntry.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for LoRaWANUpdateGatewayTaskEntry
    class LoRaWANUpdateGatewayTaskEntry
      def self.default(visited=[])
        return nil if visited.include?('LoRaWANUpdateGatewayTaskEntry')
        visited = visited + ['LoRaWANUpdateGatewayTaskEntry']
        {
          current_version: Stubs::LoRaWANGatewayVersion.default(visited),
          update_version: Stubs::LoRaWANGatewayVersion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoRaWANUpdateGatewayTaskEntry.new
        data = {}
        data['CurrentVersion'] = Stubs::LoRaWANGatewayVersion.stub(stub[:current_version]) unless stub[:current_version].nil?
        data['UpdateVersion'] = Stubs::LoRaWANGatewayVersion.stub(stub[:update_version]) unless stub[:update_version].nil?
        data
      end
    end

    # Operation Stubber for ListWirelessGateways
    class ListWirelessGateways
      def self.default(visited=[])
        {
          next_token: 'next_token',
          wireless_gateway_list: Stubs::WirelessGatewayStatisticsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['WirelessGatewayList'] = Stubs::WirelessGatewayStatisticsList.stub(stub[:wireless_gateway_list]) unless stub[:wireless_gateway_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WirelessGatewayStatisticsList
    class WirelessGatewayStatisticsList
      def self.default(visited=[])
        return nil if visited.include?('WirelessGatewayStatisticsList')
        visited = visited + ['WirelessGatewayStatisticsList']
        [
          Stubs::WirelessGatewayStatistics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WirelessGatewayStatistics.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WirelessGatewayStatistics
    class WirelessGatewayStatistics
      def self.default(visited=[])
        return nil if visited.include?('WirelessGatewayStatistics')
        visited = visited + ['WirelessGatewayStatistics']
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          description: 'description',
          lo_ra_wan: Stubs::LoRaWANGateway.default(visited),
          last_uplink_received_at: 'last_uplink_received_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::WirelessGatewayStatistics.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LoRaWAN'] = Stubs::LoRaWANGateway.stub(stub[:lo_ra_wan]) unless stub[:lo_ra_wan].nil?
        data['LastUplinkReceivedAt'] = stub[:last_uplink_received_at] unless stub[:last_uplink_received_at].nil?
        data
      end
    end

    # Operation Stubber for PutResourceLogLevel
    class PutResourceLogLevel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetAllResourceLogLevels
    class ResetAllResourceLogLevels
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for ResetResourceLogLevel
    class ResetResourceLogLevel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for SendDataToMulticastGroup
    class SendDataToMulticastGroup
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SendDataToWirelessDevice
    class SendDataToWirelessDevice
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartBulkAssociateWirelessDeviceWithMulticastGroup
    class StartBulkAssociateWirelessDeviceWithMulticastGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for StartBulkDisassociateWirelessDeviceFromMulticastGroup
    class StartBulkDisassociateWirelessDeviceFromMulticastGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for StartFuotaTask
    class StartFuotaTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for StartMulticastGroupSession
    class StartMulticastGroupSession
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
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

    # Operation Stubber for TestWirelessDevice
    class TestWirelessDevice
      def self.default(visited=[])
        {
          result: 'result',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Result'] = stub[:result] unless stub[:result].nil?
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

    # Operation Stubber for UpdateDestination
    class UpdateDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateEventConfigurationByResourceTypes
    class UpdateEventConfigurationByResourceTypes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateFuotaTask
    class UpdateFuotaTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateLogLevelsByResourceTypes
    class UpdateLogLevelsByResourceTypes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMulticastGroup
    class UpdateMulticastGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateNetworkAnalyzerConfiguration
    class UpdateNetworkAnalyzerConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdatePartnerAccount
    class UpdatePartnerAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateResourceEventConfiguration
    class UpdateResourceEventConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateWirelessDevice
    class UpdateWirelessDevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateWirelessGateway
    class UpdateWirelessGateway
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end
  end
end
