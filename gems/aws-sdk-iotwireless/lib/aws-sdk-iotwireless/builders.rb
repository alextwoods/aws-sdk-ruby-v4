# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTWireless
  module Builders

    # Operation Builder for AssociateAwsAccountWithPartnerAccount
    class AssociateAwsAccountWithPartnerAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/partner-accounts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Sidewalk'] = Builders::SidewalkAccountInfo.build(input[:sidewalk]) unless input[:sidewalk].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for SidewalkAccountInfo
    class SidewalkAccountInfo
      def self.build(input)
        data = {}
        data['AmazonId'] = input[:amazon_id] unless input[:amazon_id].nil?
        data['AppServerPrivateKey'] = input[:app_server_private_key] unless input[:app_server_private_key].nil?
        data
      end
    end

    # Operation Builder for AssociateMulticastGroupWithFuotaTask
    class AssociateMulticastGroupWithFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fuota-tasks/%<Id>s/multicast-group',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MulticastGroupId'] = input[:multicast_group_id] unless input[:multicast_group_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateWirelessDeviceWithFuotaTask
    class AssociateWirelessDeviceWithFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fuota-tasks/%<Id>s/wireless-device',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WirelessDeviceId'] = input[:wireless_device_id] unless input[:wireless_device_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateWirelessDeviceWithMulticastGroup
    class AssociateWirelessDeviceWithMulticastGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s/wireless-device',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WirelessDeviceId'] = input[:wireless_device_id] unless input[:wireless_device_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateWirelessDeviceWithThing
    class AssociateWirelessDeviceWithThing
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<Id>s/thing',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ThingArn'] = input[:thing_arn] unless input[:thing_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateWirelessGatewayWithCertificate
    class AssociateWirelessGatewayWithCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s/certificate',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IotCertificateId'] = input[:iot_certificate_id] unless input[:iot_certificate_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateWirelessGatewayWithThing
    class AssociateWirelessGatewayWithThing
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s/thing',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ThingArn'] = input[:thing_arn] unless input[:thing_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelMulticastGroupSession
    class CancelMulticastGroupSession
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s/session',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateDestination
    class CreateDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/destinations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ExpressionType'] = input[:expression_type] unless input[:expression_type].nil?
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDeviceProfile
    class CreateDeviceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/device-profiles')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['LoRaWAN'] = Builders::LoRaWANDeviceProfile.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoRaWANDeviceProfile
    class LoRaWANDeviceProfile
      def self.build(input)
        data = {}
        data['SupportsClassB'] = input[:supports_class_b] unless input[:supports_class_b].nil?
        data['ClassBTimeout'] = input[:class_b_timeout] unless input[:class_b_timeout].nil?
        data['PingSlotPeriod'] = input[:ping_slot_period] unless input[:ping_slot_period].nil?
        data['PingSlotDr'] = input[:ping_slot_dr] unless input[:ping_slot_dr].nil?
        data['PingSlotFreq'] = input[:ping_slot_freq] unless input[:ping_slot_freq].nil?
        data['SupportsClassC'] = input[:supports_class_c] unless input[:supports_class_c].nil?
        data['ClassCTimeout'] = input[:class_c_timeout] unless input[:class_c_timeout].nil?
        data['MacVersion'] = input[:mac_version] unless input[:mac_version].nil?
        data['RegParamsRevision'] = input[:reg_params_revision] unless input[:reg_params_revision].nil?
        data['RxDelay1'] = input[:rx_delay1] unless input[:rx_delay1].nil?
        data['RxDrOffset1'] = input[:rx_dr_offset1] unless input[:rx_dr_offset1].nil?
        data['RxDataRate2'] = input[:rx_data_rate2] unless input[:rx_data_rate2].nil?
        data['RxFreq2'] = input[:rx_freq2] unless input[:rx_freq2].nil?
        data['FactoryPresetFreqsList'] = Builders::FactoryPresetFreqsList.build(input[:factory_preset_freqs_list]) unless input[:factory_preset_freqs_list].nil?
        data['MaxEirp'] = input[:max_eirp] unless input[:max_eirp].nil?
        data['MaxDutyCycle'] = input[:max_duty_cycle] unless input[:max_duty_cycle].nil?
        data['RfRegion'] = input[:rf_region] unless input[:rf_region].nil?
        data['SupportsJoin'] = input[:supports_join] unless input[:supports_join].nil?
        data['Supports32BitFCnt'] = input[:supports32_bit_f_cnt] unless input[:supports32_bit_f_cnt].nil?
        data
      end
    end

    # List Builder for FactoryPresetFreqsList
    class FactoryPresetFreqsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateFuotaTask
    class CreateFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/fuota-tasks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['LoRaWAN'] = Builders::LoRaWANFuotaTask.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['FirmwareUpdateImage'] = input[:firmware_update_image] unless input[:firmware_update_image].nil?
        data['FirmwareUpdateRole'] = input[:firmware_update_role] unless input[:firmware_update_role].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoRaWANFuotaTask
    class LoRaWANFuotaTask
      def self.build(input)
        data = {}
        data['RfRegion'] = input[:rf_region] unless input[:rf_region].nil?
        data
      end
    end

    # Operation Builder for CreateMulticastGroup
    class CreateMulticastGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/multicast-groups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['LoRaWAN'] = Builders::LoRaWANMulticast.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoRaWANMulticast
    class LoRaWANMulticast
      def self.build(input)
        data = {}
        data['RfRegion'] = input[:rf_region] unless input[:rf_region].nil?
        data['DlClass'] = input[:dl_class] unless input[:dl_class].nil?
        data
      end
    end

    # Operation Builder for CreateNetworkAnalyzerConfiguration
    class CreateNetworkAnalyzerConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/network-analyzer-configurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['TraceContent'] = Builders::TraceContent.build(input[:trace_content]) unless input[:trace_content].nil?
        data['WirelessDevices'] = Builders::WirelessDeviceList.build(input[:wireless_devices]) unless input[:wireless_devices].nil?
        data['WirelessGateways'] = Builders::WirelessGatewayList.build(input[:wireless_gateways]) unless input[:wireless_gateways].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for WirelessGatewayList
    class WirelessGatewayList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for WirelessDeviceList
    class WirelessDeviceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TraceContent
    class TraceContent
      def self.build(input)
        data = {}
        data['WirelessDeviceFrameInfo'] = input[:wireless_device_frame_info] unless input[:wireless_device_frame_info].nil?
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        data
      end
    end

    # Operation Builder for CreateServiceProfile
    class CreateServiceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/service-profiles')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['LoRaWAN'] = Builders::LoRaWANServiceProfile.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoRaWANServiceProfile
    class LoRaWANServiceProfile
      def self.build(input)
        data = {}
        data['AddGwMetadata'] = input[:add_gw_metadata] unless input[:add_gw_metadata].nil?
        data
      end
    end

    # Operation Builder for CreateWirelessDevice
    class CreateWirelessDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/wireless-devices')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DestinationName'] = input[:destination_name] unless input[:destination_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['LoRaWAN'] = Builders::LoRaWANDevice.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoRaWANDevice
    class LoRaWANDevice
      def self.build(input)
        data = {}
        data['DevEui'] = input[:dev_eui] unless input[:dev_eui].nil?
        data['DeviceProfileId'] = input[:device_profile_id] unless input[:device_profile_id].nil?
        data['ServiceProfileId'] = input[:service_profile_id] unless input[:service_profile_id].nil?
        data['OtaaV1_1'] = Builders::OtaaV1_1.build(input[:otaa_v1_1]) unless input[:otaa_v1_1].nil?
        data['OtaaV1_0_x'] = Builders::OtaaV1_0_x.build(input[:otaa_v1_0_x]) unless input[:otaa_v1_0_x].nil?
        data['AbpV1_1'] = Builders::AbpV1_1.build(input[:abp_v1_1]) unless input[:abp_v1_1].nil?
        data['AbpV1_0_x'] = Builders::AbpV1_0_x.build(input[:abp_v1_0_x]) unless input[:abp_v1_0_x].nil?
        data['FPorts'] = Builders::FPorts.build(input[:f_ports]) unless input[:f_ports].nil?
        data
      end
    end

    # Structure Builder for FPorts
    class FPorts
      def self.build(input)
        data = {}
        data['Fuota'] = input[:fuota] unless input[:fuota].nil?
        data['Multicast'] = input[:multicast] unless input[:multicast].nil?
        data['ClockSync'] = input[:clock_sync] unless input[:clock_sync].nil?
        data
      end
    end

    # Structure Builder for AbpV1_0_x
    class AbpV1_0_x
      def self.build(input)
        data = {}
        data['DevAddr'] = input[:dev_addr] unless input[:dev_addr].nil?
        data['SessionKeys'] = Builders::SessionKeysAbpV1_0_x.build(input[:session_keys]) unless input[:session_keys].nil?
        data['FCntStart'] = input[:f_cnt_start] unless input[:f_cnt_start].nil?
        data
      end
    end

    # Structure Builder for SessionKeysAbpV1_0_x
    class SessionKeysAbpV1_0_x
      def self.build(input)
        data = {}
        data['NwkSKey'] = input[:nwk_s_key] unless input[:nwk_s_key].nil?
        data['AppSKey'] = input[:app_s_key] unless input[:app_s_key].nil?
        data
      end
    end

    # Structure Builder for AbpV1_1
    class AbpV1_1
      def self.build(input)
        data = {}
        data['DevAddr'] = input[:dev_addr] unless input[:dev_addr].nil?
        data['SessionKeys'] = Builders::SessionKeysAbpV1_1.build(input[:session_keys]) unless input[:session_keys].nil?
        data['FCntStart'] = input[:f_cnt_start] unless input[:f_cnt_start].nil?
        data
      end
    end

    # Structure Builder for SessionKeysAbpV1_1
    class SessionKeysAbpV1_1
      def self.build(input)
        data = {}
        data['FNwkSIntKey'] = input[:f_nwk_s_int_key] unless input[:f_nwk_s_int_key].nil?
        data['SNwkSIntKey'] = input[:s_nwk_s_int_key] unless input[:s_nwk_s_int_key].nil?
        data['NwkSEncKey'] = input[:nwk_s_enc_key] unless input[:nwk_s_enc_key].nil?
        data['AppSKey'] = input[:app_s_key] unless input[:app_s_key].nil?
        data
      end
    end

    # Structure Builder for OtaaV1_0_x
    class OtaaV1_0_x
      def self.build(input)
        data = {}
        data['AppKey'] = input[:app_key] unless input[:app_key].nil?
        data['AppEui'] = input[:app_eui] unless input[:app_eui].nil?
        data['GenAppKey'] = input[:gen_app_key] unless input[:gen_app_key].nil?
        data
      end
    end

    # Structure Builder for OtaaV1_1
    class OtaaV1_1
      def self.build(input)
        data = {}
        data['AppKey'] = input[:app_key] unless input[:app_key].nil?
        data['NwkKey'] = input[:nwk_key] unless input[:nwk_key].nil?
        data['JoinEui'] = input[:join_eui] unless input[:join_eui].nil?
        data
      end
    end

    # Operation Builder for CreateWirelessGateway
    class CreateWirelessGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/wireless-gateways')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['LoRaWAN'] = Builders::LoRaWANGateway.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoRaWANGateway
    class LoRaWANGateway
      def self.build(input)
        data = {}
        data['GatewayEui'] = input[:gateway_eui] unless input[:gateway_eui].nil?
        data['RfRegion'] = input[:rf_region] unless input[:rf_region].nil?
        data['JoinEuiFilters'] = Builders::JoinEuiFilters.build(input[:join_eui_filters]) unless input[:join_eui_filters].nil?
        data['NetIdFilters'] = Builders::NetIdFilters.build(input[:net_id_filters]) unless input[:net_id_filters].nil?
        data['SubBands'] = Builders::SubBands.build(input[:sub_bands]) unless input[:sub_bands].nil?
        data
      end
    end

    # List Builder for SubBands
    class SubBands
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for NetIdFilters
    class NetIdFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for JoinEuiFilters
    class JoinEuiFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::JoinEuiRange.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for JoinEuiRange
    class JoinEuiRange
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateWirelessGatewayTask
    class CreateWirelessGatewayTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s/tasks',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WirelessGatewayTaskDefinitionId'] = input[:wireless_gateway_task_definition_id] unless input[:wireless_gateway_task_definition_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateWirelessGatewayTaskDefinition
    class CreateWirelessGatewayTaskDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/wireless-gateway-task-definitions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AutoCreateTasks'] = input[:auto_create_tasks] unless input[:auto_create_tasks].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Update'] = Builders::UpdateWirelessGatewayTaskCreate.build(input[:update]) unless input[:update].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateWirelessGatewayTaskCreate
    class UpdateWirelessGatewayTaskCreate
      def self.build(input)
        data = {}
        data['UpdateDataSource'] = input[:update_data_source] unless input[:update_data_source].nil?
        data['UpdateDataRole'] = input[:update_data_role] unless input[:update_data_role].nil?
        data['LoRaWAN'] = Builders::LoRaWANUpdateGatewayTaskCreate.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data
      end
    end

    # Structure Builder for LoRaWANUpdateGatewayTaskCreate
    class LoRaWANUpdateGatewayTaskCreate
      def self.build(input)
        data = {}
        data['UpdateSignature'] = input[:update_signature] unless input[:update_signature].nil?
        data['SigKeyCrc'] = input[:sig_key_crc] unless input[:sig_key_crc].nil?
        data['CurrentVersion'] = Builders::LoRaWANGatewayVersion.build(input[:current_version]) unless input[:current_version].nil?
        data['UpdateVersion'] = Builders::LoRaWANGatewayVersion.build(input[:update_version]) unless input[:update_version].nil?
        data
      end
    end

    # Structure Builder for LoRaWANGatewayVersion
    class LoRaWANGatewayVersion
      def self.build(input)
        data = {}
        data['PackageVersion'] = input[:package_version] unless input[:package_version].nil?
        data['Model'] = input[:model] unless input[:model].nil?
        data['Station'] = input[:station] unless input[:station].nil?
        data
      end
    end

    # Operation Builder for DeleteDestination
    class DeleteDestination
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/destinations/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDeviceProfile
    class DeleteDeviceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/device-profiles/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFuotaTask
    class DeleteFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fuota-tasks/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMulticastGroup
    class DeleteMulticastGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteNetworkAnalyzerConfiguration
    class DeleteNetworkAnalyzerConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/network-analyzer-configurations/%<ConfigurationName>s',
            ConfigurationName: Hearth::HTTP.uri_escape(input[:configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteQueuedMessages
    class DeleteQueuedMessages
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<Id>s/data',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['messageId'] = input[:message_id].to_s unless input[:message_id].nil?
        params['WirelessDeviceType'] = input[:wireless_device_type].to_s unless input[:wireless_device_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteServiceProfile
    class DeleteServiceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/service-profiles/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWirelessDevice
    class DeleteWirelessDevice
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWirelessGateway
    class DeleteWirelessGateway
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWirelessGatewayTask
    class DeleteWirelessGatewayTask
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s/tasks',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWirelessGatewayTaskDefinition
    class DeleteWirelessGatewayTaskDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateway-task-definitions/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateAwsAccountFromPartnerAccount
    class DisassociateAwsAccountFromPartnerAccount
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:partner_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :partner_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/partner-accounts/%<PartnerAccountId>s',
            PartnerAccountId: Hearth::HTTP.uri_escape(input[:partner_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['partnerType'] = input[:partner_type].to_s unless input[:partner_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateMulticastGroupFromFuotaTask
    class DisassociateMulticastGroupFromFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:multicast_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :multicast_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fuota-tasks/%<Id>s/multicast-groups/%<MulticastGroupId>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s),
            MulticastGroupId: Hearth::HTTP.uri_escape(input[:multicast_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateWirelessDeviceFromFuotaTask
    class DisassociateWirelessDeviceFromFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:wireless_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :wireless_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fuota-tasks/%<Id>s/wireless-devices/%<WirelessDeviceId>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s),
            WirelessDeviceId: Hearth::HTTP.uri_escape(input[:wireless_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateWirelessDeviceFromMulticastGroup
    class DisassociateWirelessDeviceFromMulticastGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:wireless_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :wireless_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s/wireless-devices/%<WirelessDeviceId>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s),
            WirelessDeviceId: Hearth::HTTP.uri_escape(input[:wireless_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateWirelessDeviceFromThing
    class DisassociateWirelessDeviceFromThing
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<Id>s/thing',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateWirelessGatewayFromCertificate
    class DisassociateWirelessGatewayFromCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s/certificate',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateWirelessGatewayFromThing
    class DisassociateWirelessGatewayFromThing
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s/thing',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDestination
    class GetDestination
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/destinations/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeviceProfile
    class GetDeviceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/device-profiles/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEventConfigurationByResourceTypes
    class GetEventConfigurationByResourceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/event-configurations-resource-types')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFuotaTask
    class GetFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fuota-tasks/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLogLevelsByResourceTypes
    class GetLogLevelsByResourceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/log-levels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMulticastGroup
    class GetMulticastGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMulticastGroupSession
    class GetMulticastGroupSession
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s/session',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetNetworkAnalyzerConfiguration
    class GetNetworkAnalyzerConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/network-analyzer-configurations/%<ConfigurationName>s',
            ConfigurationName: Hearth::HTTP.uri_escape(input[:configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPartnerAccount
    class GetPartnerAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:partner_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :partner_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/partner-accounts/%<PartnerAccountId>s',
            PartnerAccountId: Hearth::HTTP.uri_escape(input[:partner_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['partnerType'] = input[:partner_type].to_s unless input[:partner_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResourceEventConfiguration
    class GetResourceEventConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/event-configurations/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['identifierType'] = input[:identifier_type].to_s unless input[:identifier_type].nil?
        params['partnerType'] = input[:partner_type].to_s unless input[:partner_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResourceLogLevel
    class GetResourceLogLevel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :resource_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/log-levels/%<ResourceIdentifier>s',
            ResourceIdentifier: Hearth::HTTP.uri_escape(input[:resource_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetServiceEndpoint
    class GetServiceEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/service-endpoint')
        params = Hearth::Query::ParamList.new
        params['serviceType'] = input[:service_type].to_s unless input[:service_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetServiceProfile
    class GetServiceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/service-profiles/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWirelessDevice
    class GetWirelessDevice
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['identifierType'] = input[:identifier_type].to_s unless input[:identifier_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWirelessDeviceStatistics
    class GetWirelessDeviceStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:wireless_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :wireless_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<WirelessDeviceId>s/statistics',
            WirelessDeviceId: Hearth::HTTP.uri_escape(input[:wireless_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWirelessGateway
    class GetWirelessGateway
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['identifierType'] = input[:identifier_type].to_s unless input[:identifier_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWirelessGatewayCertificate
    class GetWirelessGatewayCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s/certificate',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWirelessGatewayFirmwareInformation
    class GetWirelessGatewayFirmwareInformation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s/firmware-information',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWirelessGatewayStatistics
    class GetWirelessGatewayStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:wireless_gateway_id].to_s.empty?
          raise ArgumentError, "HTTP label :wireless_gateway_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<WirelessGatewayId>s/statistics',
            WirelessGatewayId: Hearth::HTTP.uri_escape(input[:wireless_gateway_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWirelessGatewayTask
    class GetWirelessGatewayTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s/tasks',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWirelessGatewayTaskDefinition
    class GetWirelessGatewayTaskDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateway-task-definitions/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDestinations
    class ListDestinations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/destinations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeviceProfiles
    class ListDeviceProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/device-profiles')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEventConfigurations
    class ListEventConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/event-configurations')
        params = Hearth::Query::ParamList.new
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFuotaTasks
    class ListFuotaTasks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/fuota-tasks')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMulticastGroups
    class ListMulticastGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/multicast-groups')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMulticastGroupsByFuotaTask
    class ListMulticastGroupsByFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fuota-tasks/%<Id>s/multicast-groups',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNetworkAnalyzerConfigurations
    class ListNetworkAnalyzerConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/network-analyzer-configurations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPartnerAccounts
    class ListPartnerAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/partner-accounts')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListQueuedMessages
    class ListQueuedMessages
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<Id>s/data',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['WirelessDeviceType'] = input[:wireless_device_type].to_s unless input[:wireless_device_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListServiceProfiles
    class ListServiceProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/service-profiles')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWirelessDevices
    class ListWirelessDevices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/wireless-devices')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['destinationName'] = input[:destination_name].to_s unless input[:destination_name].nil?
        params['deviceProfileId'] = input[:device_profile_id].to_s unless input[:device_profile_id].nil?
        params['serviceProfileId'] = input[:service_profile_id].to_s unless input[:service_profile_id].nil?
        params['wirelessDeviceType'] = input[:wireless_device_type].to_s unless input[:wireless_device_type].nil?
        params['fuotaTaskId'] = input[:fuota_task_id].to_s unless input[:fuota_task_id].nil?
        params['multicastGroupId'] = input[:multicast_group_id].to_s unless input[:multicast_group_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWirelessGatewayTaskDefinitions
    class ListWirelessGatewayTaskDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/wireless-gateway-task-definitions')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['taskDefinitionType'] = input[:task_definition_type].to_s unless input[:task_definition_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWirelessGateways
    class ListWirelessGateways
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/wireless-gateways')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutResourceLogLevel
    class PutResourceLogLevel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:resource_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :resource_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/log-levels/%<ResourceIdentifier>s',
            ResourceIdentifier: Hearth::HTTP.uri_escape(input[:resource_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResetAllResourceLogLevels
    class ResetAllResourceLogLevels
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/log-levels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ResetResourceLogLevel
    class ResetResourceLogLevel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :resource_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/log-levels/%<ResourceIdentifier>s',
            ResourceIdentifier: Hearth::HTTP.uri_escape(input[:resource_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SendDataToMulticastGroup
    class SendDataToMulticastGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s/data',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PayloadData'] = input[:payload_data] unless input[:payload_data].nil?
        data['WirelessMetadata'] = Builders::MulticastWirelessMetadata.build(input[:wireless_metadata]) unless input[:wireless_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MulticastWirelessMetadata
    class MulticastWirelessMetadata
      def self.build(input)
        data = {}
        data['LoRaWAN'] = Builders::LoRaWANMulticastMetadata.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data
      end
    end

    # Structure Builder for LoRaWANMulticastMetadata
    class LoRaWANMulticastMetadata
      def self.build(input)
        data = {}
        data['FPort'] = input[:f_port] unless input[:f_port].nil?
        data
      end
    end

    # Operation Builder for SendDataToWirelessDevice
    class SendDataToWirelessDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<Id>s/data',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TransmitMode'] = input[:transmit_mode] unless input[:transmit_mode].nil?
        data['PayloadData'] = input[:payload_data] unless input[:payload_data].nil?
        data['WirelessMetadata'] = Builders::WirelessMetadata.build(input[:wireless_metadata]) unless input[:wireless_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WirelessMetadata
    class WirelessMetadata
      def self.build(input)
        data = {}
        data['LoRaWAN'] = Builders::LoRaWANSendDataToDevice.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['Sidewalk'] = Builders::SidewalkSendDataToDevice.build(input[:sidewalk]) unless input[:sidewalk].nil?
        data
      end
    end

    # Structure Builder for SidewalkSendDataToDevice
    class SidewalkSendDataToDevice
      def self.build(input)
        data = {}
        data['Seq'] = input[:seq] unless input[:seq].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data
      end
    end

    # Structure Builder for LoRaWANSendDataToDevice
    class LoRaWANSendDataToDevice
      def self.build(input)
        data = {}
        data['FPort'] = input[:f_port] unless input[:f_port].nil?
        data
      end
    end

    # Operation Builder for StartBulkAssociateWirelessDeviceWithMulticastGroup
    class StartBulkAssociateWirelessDeviceWithMulticastGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s/bulk',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartBulkDisassociateWirelessDeviceFromMulticastGroup
    class StartBulkDisassociateWirelessDeviceFromMulticastGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s/bulk',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartFuotaTask
    class StartFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fuota-tasks/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LoRaWAN'] = Builders::LoRaWANStartFuotaTask.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoRaWANStartFuotaTask
    class LoRaWANStartFuotaTask
      def self.build(input)
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        data
      end
    end

    # Operation Builder for StartMulticastGroupSession
    class StartMulticastGroupSession
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s/session',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LoRaWAN'] = Builders::LoRaWANMulticastSession.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoRaWANMulticastSession
    class LoRaWANMulticastSession
      def self.build(input)
        data = {}
        data['DlDr'] = input[:dl_dr] unless input[:dl_dr].nil?
        data['DlFreq'] = input[:dl_freq] unless input[:dl_freq].nil?
        data['SessionStartTime'] = Hearth::TimeHelper.to_date_time(input[:session_start_time]) unless input[:session_start_time].nil?
        data['SessionTimeout'] = input[:session_timeout] unless input[:session_timeout].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TestWirelessDevice
    class TestWirelessDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<Id>s/test',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDestination
    class UpdateDestination
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/destinations/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ExpressionType'] = input[:expression_type] unless input[:expression_type].nil?
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEventConfigurationByResourceTypes
    class UpdateEventConfigurationByResourceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/event-configurations-resource-types')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceRegistrationState'] = Builders::DeviceRegistrationStateResourceTypeEventConfiguration.build(input[:device_registration_state]) unless input[:device_registration_state].nil?
        data['Proximity'] = Builders::ProximityResourceTypeEventConfiguration.build(input[:proximity]) unless input[:proximity].nil?
        data['Join'] = Builders::JoinResourceTypeEventConfiguration.build(input[:join]) unless input[:join].nil?
        data['ConnectionStatus'] = Builders::ConnectionStatusResourceTypeEventConfiguration.build(input[:connection_status]) unless input[:connection_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConnectionStatusResourceTypeEventConfiguration
    class ConnectionStatusResourceTypeEventConfiguration
      def self.build(input)
        data = {}
        data['LoRaWAN'] = Builders::LoRaWANConnectionStatusResourceTypeEventConfiguration.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data
      end
    end

    # Structure Builder for LoRaWANConnectionStatusResourceTypeEventConfiguration
    class LoRaWANConnectionStatusResourceTypeEventConfiguration
      def self.build(input)
        data = {}
        data['WirelessGatewayEventTopic'] = input[:wireless_gateway_event_topic] unless input[:wireless_gateway_event_topic].nil?
        data
      end
    end

    # Structure Builder for JoinResourceTypeEventConfiguration
    class JoinResourceTypeEventConfiguration
      def self.build(input)
        data = {}
        data['LoRaWAN'] = Builders::LoRaWANJoinResourceTypeEventConfiguration.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data
      end
    end

    # Structure Builder for LoRaWANJoinResourceTypeEventConfiguration
    class LoRaWANJoinResourceTypeEventConfiguration
      def self.build(input)
        data = {}
        data['WirelessDeviceEventTopic'] = input[:wireless_device_event_topic] unless input[:wireless_device_event_topic].nil?
        data
      end
    end

    # Structure Builder for ProximityResourceTypeEventConfiguration
    class ProximityResourceTypeEventConfiguration
      def self.build(input)
        data = {}
        data['Sidewalk'] = Builders::SidewalkResourceTypeEventConfiguration.build(input[:sidewalk]) unless input[:sidewalk].nil?
        data
      end
    end

    # Structure Builder for SidewalkResourceTypeEventConfiguration
    class SidewalkResourceTypeEventConfiguration
      def self.build(input)
        data = {}
        data['WirelessDeviceEventTopic'] = input[:wireless_device_event_topic] unless input[:wireless_device_event_topic].nil?
        data
      end
    end

    # Structure Builder for DeviceRegistrationStateResourceTypeEventConfiguration
    class DeviceRegistrationStateResourceTypeEventConfiguration
      def self.build(input)
        data = {}
        data['Sidewalk'] = Builders::SidewalkResourceTypeEventConfiguration.build(input[:sidewalk]) unless input[:sidewalk].nil?
        data
      end
    end

    # Operation Builder for UpdateFuotaTask
    class UpdateFuotaTask
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fuota-tasks/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['LoRaWAN'] = Builders::LoRaWANFuotaTask.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['FirmwareUpdateImage'] = input[:firmware_update_image] unless input[:firmware_update_image].nil?
        data['FirmwareUpdateRole'] = input[:firmware_update_role] unless input[:firmware_update_role].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLogLevelsByResourceTypes
    class UpdateLogLevelsByResourceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/log-levels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DefaultLogLevel'] = input[:default_log_level] unless input[:default_log_level].nil?
        data['WirelessDeviceLogOptions'] = Builders::WirelessDeviceLogOptionList.build(input[:wireless_device_log_options]) unless input[:wireless_device_log_options].nil?
        data['WirelessGatewayLogOptions'] = Builders::WirelessGatewayLogOptionList.build(input[:wireless_gateway_log_options]) unless input[:wireless_gateway_log_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for WirelessGatewayLogOptionList
    class WirelessGatewayLogOptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WirelessGatewayLogOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WirelessGatewayLogOption
    class WirelessGatewayLogOption
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        data['Events'] = Builders::WirelessGatewayEventLogOptionList.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # List Builder for WirelessGatewayEventLogOptionList
    class WirelessGatewayEventLogOptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WirelessGatewayEventLogOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WirelessGatewayEventLogOption
    class WirelessGatewayEventLogOption
      def self.build(input)
        data = {}
        data['Event'] = input[:event] unless input[:event].nil?
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        data
      end
    end

    # List Builder for WirelessDeviceLogOptionList
    class WirelessDeviceLogOptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WirelessDeviceLogOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WirelessDeviceLogOption
    class WirelessDeviceLogOption
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        data['Events'] = Builders::WirelessDeviceEventLogOptionList.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # List Builder for WirelessDeviceEventLogOptionList
    class WirelessDeviceEventLogOptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WirelessDeviceEventLogOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WirelessDeviceEventLogOption
    class WirelessDeviceEventLogOption
      def self.build(input)
        data = {}
        data['Event'] = input[:event] unless input[:event].nil?
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        data
      end
    end

    # Operation Builder for UpdateMulticastGroup
    class UpdateMulticastGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/multicast-groups/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['LoRaWAN'] = Builders::LoRaWANMulticast.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNetworkAnalyzerConfiguration
    class UpdateNetworkAnalyzerConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/network-analyzer-configurations/%<ConfigurationName>s',
            ConfigurationName: Hearth::HTTP.uri_escape(input[:configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TraceContent'] = Builders::TraceContent.build(input[:trace_content]) unless input[:trace_content].nil?
        data['WirelessDevicesToAdd'] = Builders::WirelessDeviceList.build(input[:wireless_devices_to_add]) unless input[:wireless_devices_to_add].nil?
        data['WirelessDevicesToRemove'] = Builders::WirelessDeviceList.build(input[:wireless_devices_to_remove]) unless input[:wireless_devices_to_remove].nil?
        data['WirelessGatewaysToAdd'] = Builders::WirelessGatewayList.build(input[:wireless_gateways_to_add]) unless input[:wireless_gateways_to_add].nil?
        data['WirelessGatewaysToRemove'] = Builders::WirelessGatewayList.build(input[:wireless_gateways_to_remove]) unless input[:wireless_gateways_to_remove].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePartnerAccount
    class UpdatePartnerAccount
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:partner_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :partner_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/partner-accounts/%<PartnerAccountId>s',
            PartnerAccountId: Hearth::HTTP.uri_escape(input[:partner_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['partnerType'] = input[:partner_type].to_s unless input[:partner_type].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Sidewalk'] = Builders::SidewalkUpdateAccount.build(input[:sidewalk]) unless input[:sidewalk].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SidewalkUpdateAccount
    class SidewalkUpdateAccount
      def self.build(input)
        data = {}
        data['AppServerPrivateKey'] = input[:app_server_private_key] unless input[:app_server_private_key].nil?
        data
      end
    end

    # Operation Builder for UpdateResourceEventConfiguration
    class UpdateResourceEventConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/event-configurations/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['identifierType'] = input[:identifier_type].to_s unless input[:identifier_type].nil?
        params['partnerType'] = input[:partner_type].to_s unless input[:partner_type].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceRegistrationState'] = Builders::DeviceRegistrationStateEventConfiguration.build(input[:device_registration_state]) unless input[:device_registration_state].nil?
        data['Proximity'] = Builders::ProximityEventConfiguration.build(input[:proximity]) unless input[:proximity].nil?
        data['Join'] = Builders::JoinEventConfiguration.build(input[:join]) unless input[:join].nil?
        data['ConnectionStatus'] = Builders::ConnectionStatusEventConfiguration.build(input[:connection_status]) unless input[:connection_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConnectionStatusEventConfiguration
    class ConnectionStatusEventConfiguration
      def self.build(input)
        data = {}
        data['LoRaWAN'] = Builders::LoRaWANConnectionStatusEventNotificationConfigurations.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['WirelessGatewayIdEventTopic'] = input[:wireless_gateway_id_event_topic] unless input[:wireless_gateway_id_event_topic].nil?
        data
      end
    end

    # Structure Builder for LoRaWANConnectionStatusEventNotificationConfigurations
    class LoRaWANConnectionStatusEventNotificationConfigurations
      def self.build(input)
        data = {}
        data['GatewayEuiEventTopic'] = input[:gateway_eui_event_topic] unless input[:gateway_eui_event_topic].nil?
        data
      end
    end

    # Structure Builder for JoinEventConfiguration
    class JoinEventConfiguration
      def self.build(input)
        data = {}
        data['LoRaWAN'] = Builders::LoRaWANJoinEventNotificationConfigurations.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        data['WirelessDeviceIdEventTopic'] = input[:wireless_device_id_event_topic] unless input[:wireless_device_id_event_topic].nil?
        data
      end
    end

    # Structure Builder for LoRaWANJoinEventNotificationConfigurations
    class LoRaWANJoinEventNotificationConfigurations
      def self.build(input)
        data = {}
        data['DevEuiEventTopic'] = input[:dev_eui_event_topic] unless input[:dev_eui_event_topic].nil?
        data
      end
    end

    # Structure Builder for ProximityEventConfiguration
    class ProximityEventConfiguration
      def self.build(input)
        data = {}
        data['Sidewalk'] = Builders::SidewalkEventNotificationConfigurations.build(input[:sidewalk]) unless input[:sidewalk].nil?
        data['WirelessDeviceIdEventTopic'] = input[:wireless_device_id_event_topic] unless input[:wireless_device_id_event_topic].nil?
        data
      end
    end

    # Structure Builder for SidewalkEventNotificationConfigurations
    class SidewalkEventNotificationConfigurations
      def self.build(input)
        data = {}
        data['AmazonIdEventTopic'] = input[:amazon_id_event_topic] unless input[:amazon_id_event_topic].nil?
        data
      end
    end

    # Structure Builder for DeviceRegistrationStateEventConfiguration
    class DeviceRegistrationStateEventConfiguration
      def self.build(input)
        data = {}
        data['Sidewalk'] = Builders::SidewalkEventNotificationConfigurations.build(input[:sidewalk]) unless input[:sidewalk].nil?
        data['WirelessDeviceIdEventTopic'] = input[:wireless_device_id_event_topic] unless input[:wireless_device_id_event_topic].nil?
        data
      end
    end

    # Operation Builder for UpdateWirelessDevice
    class UpdateWirelessDevice
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-devices/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DestinationName'] = input[:destination_name] unless input[:destination_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['LoRaWAN'] = Builders::LoRaWANUpdateDevice.build(input[:lo_ra_wan]) unless input[:lo_ra_wan].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoRaWANUpdateDevice
    class LoRaWANUpdateDevice
      def self.build(input)
        data = {}
        data['DeviceProfileId'] = input[:device_profile_id] unless input[:device_profile_id].nil?
        data['ServiceProfileId'] = input[:service_profile_id] unless input[:service_profile_id].nil?
        data['AbpV1_1'] = Builders::UpdateAbpV1_1.build(input[:abp_v1_1]) unless input[:abp_v1_1].nil?
        data['AbpV1_0_x'] = Builders::UpdateAbpV1_0_x.build(input[:abp_v1_0_x]) unless input[:abp_v1_0_x].nil?
        data
      end
    end

    # Structure Builder for UpdateAbpV1_0_x
    class UpdateAbpV1_0_x
      def self.build(input)
        data = {}
        data['FCntStart'] = input[:f_cnt_start] unless input[:f_cnt_start].nil?
        data
      end
    end

    # Structure Builder for UpdateAbpV1_1
    class UpdateAbpV1_1
      def self.build(input)
        data = {}
        data['FCntStart'] = input[:f_cnt_start] unless input[:f_cnt_start].nil?
        data
      end
    end

    # Operation Builder for UpdateWirelessGateway
    class UpdateWirelessGateway
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/wireless-gateways/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['JoinEuiFilters'] = Builders::JoinEuiFilters.build(input[:join_eui_filters]) unless input[:join_eui_filters].nil?
        data['NetIdFilters'] = Builders::NetIdFilters.build(input[:net_id_filters]) unless input[:net_id_filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
