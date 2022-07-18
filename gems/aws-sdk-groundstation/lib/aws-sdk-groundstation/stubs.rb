# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GroundStation
  module Stubs

    # Operation Stubber for CancelContact
    class CancelContact
      def self.default(visited=[])
        {
          contact_id: 'contact_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contactId'] = stub[:contact_id] unless stub[:contact_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateConfig
    class CreateConfig
      def self.default(visited=[])
        {
          config_id: 'config_id',
          config_type: 'config_type',
          config_arn: 'config_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configId'] = stub[:config_id] unless stub[:config_id].nil?
        data['configType'] = stub[:config_type] unless stub[:config_type].nil?
        data['configArn'] = stub[:config_arn] unless stub[:config_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDataflowEndpointGroup
    class CreateDataflowEndpointGroup
      def self.default(visited=[])
        {
          dataflow_endpoint_group_id: 'dataflow_endpoint_group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataflowEndpointGroupId'] = stub[:dataflow_endpoint_group_id] unless stub[:dataflow_endpoint_group_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMissionProfile
    class CreateMissionProfile
      def self.default(visited=[])
        {
          mission_profile_id: 'mission_profile_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['missionProfileId'] = stub[:mission_profile_id] unless stub[:mission_profile_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteConfig
    class DeleteConfig
      def self.default(visited=[])
        {
          config_id: 'config_id',
          config_type: 'config_type',
          config_arn: 'config_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configId'] = stub[:config_id] unless stub[:config_id].nil?
        data['configType'] = stub[:config_type] unless stub[:config_type].nil?
        data['configArn'] = stub[:config_arn] unless stub[:config_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDataflowEndpointGroup
    class DeleteDataflowEndpointGroup
      def self.default(visited=[])
        {
          dataflow_endpoint_group_id: 'dataflow_endpoint_group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataflowEndpointGroupId'] = stub[:dataflow_endpoint_group_id] unless stub[:dataflow_endpoint_group_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteMissionProfile
    class DeleteMissionProfile
      def self.default(visited=[])
        {
          mission_profile_id: 'mission_profile_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['missionProfileId'] = stub[:mission_profile_id] unless stub[:mission_profile_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeContact
    class DescribeContact
      def self.default(visited=[])
        {
          contact_id: 'contact_id',
          mission_profile_arn: 'mission_profile_arn',
          satellite_arn: 'satellite_arn',
          start_time: Time.now,
          end_time: Time.now,
          pre_pass_start_time: Time.now,
          post_pass_end_time: Time.now,
          ground_station: 'ground_station',
          contact_status: 'contact_status',
          error_message: 'error_message',
          maximum_elevation: Elevation.default(visited),
          tags: TagsMap.default(visited),
          region: 'region',
          dataflow_list: DataflowList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contactId'] = stub[:contact_id] unless stub[:contact_id].nil?
        data['missionProfileArn'] = stub[:mission_profile_arn] unless stub[:mission_profile_arn].nil?
        data['satelliteArn'] = stub[:satellite_arn] unless stub[:satellite_arn].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['prePassStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:pre_pass_start_time]).to_i unless stub[:pre_pass_start_time].nil?
        data['postPassEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:post_pass_end_time]).to_i unless stub[:post_pass_end_time].nil?
        data['groundStation'] = stub[:ground_station] unless stub[:ground_station].nil?
        data['contactStatus'] = stub[:contact_status] unless stub[:contact_status].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['maximumElevation'] = Stubs::Elevation.stub(stub[:maximum_elevation]) unless stub[:maximum_elevation].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['dataflowList'] = Stubs::DataflowList.stub(stub[:dataflow_list]) unless stub[:dataflow_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataflowList
    class DataflowList
      def self.default(visited=[])
        return nil if visited.include?('DataflowList')
        visited = visited + ['DataflowList']
        [
          DataflowDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataflowDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataflowDetail
    class DataflowDetail
      def self.default(visited=[])
        return nil if visited.include?('DataflowDetail')
        visited = visited + ['DataflowDetail']
        {
          source: Source.default(visited),
          destination: Destination.default(visited),
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataflowDetail.new
        data = {}
        data['source'] = Stubs::Source.stub(stub[:source]) unless stub[:source].nil?
        data['destination'] = Stubs::Destination.stub(stub[:destination]) unless stub[:destination].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for Destination
    class Destination
      def self.default(visited=[])
        return nil if visited.include?('Destination')
        visited = visited + ['Destination']
        {
          config_type: 'config_type',
          config_id: 'config_id',
          config_details: ConfigDetails.default(visited),
          dataflow_destination_region: 'dataflow_destination_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::Destination.new
        data = {}
        data['configType'] = stub[:config_type] unless stub[:config_type].nil?
        data['configId'] = stub[:config_id] unless stub[:config_id].nil?
        data['configDetails'] = Stubs::ConfigDetails.stub(stub[:config_details]) unless stub[:config_details].nil?
        data['dataflowDestinationRegion'] = stub[:dataflow_destination_region] unless stub[:dataflow_destination_region].nil?
        data
      end
    end

    # Union Stubber for ConfigDetails
    class ConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('ConfigDetails')
        visited = visited + ['ConfigDetails']
        {
          endpoint_details: EndpointDetails.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ConfigDetails::EndpointDetails
          data['endpointDetails'] = (Stubs::EndpointDetails.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ConfigDetails::AntennaDemodDecodeDetails
          data['antennaDemodDecodeDetails'] = (Stubs::AntennaDemodDecodeDetails.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ConfigDetails::S3RecordingDetails
          data['s3RecordingDetails'] = (Stubs::S3RecordingDetails.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ConfigDetails"
        end

        data
      end
    end

    # Structure Stubber for S3RecordingDetails
    class S3RecordingDetails
      def self.default(visited=[])
        return nil if visited.include?('S3RecordingDetails')
        visited = visited + ['S3RecordingDetails']
        {
          bucket_arn: 'bucket_arn',
          key_template: 'key_template',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3RecordingDetails.new
        data = {}
        data['bucketArn'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['keyTemplate'] = stub[:key_template] unless stub[:key_template].nil?
        data
      end
    end

    # Structure Stubber for AntennaDemodDecodeDetails
    class AntennaDemodDecodeDetails
      def self.default(visited=[])
        return nil if visited.include?('AntennaDemodDecodeDetails')
        visited = visited + ['AntennaDemodDecodeDetails']
        {
          output_node: 'output_node',
        }
      end

      def self.stub(stub)
        stub ||= Types::AntennaDemodDecodeDetails.new
        data = {}
        data['outputNode'] = stub[:output_node] unless stub[:output_node].nil?
        data
      end
    end

    # Structure Stubber for EndpointDetails
    class EndpointDetails
      def self.default(visited=[])
        return nil if visited.include?('EndpointDetails')
        visited = visited + ['EndpointDetails']
        {
          security_details: SecurityDetails.default(visited),
          endpoint: DataflowEndpoint.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointDetails.new
        data = {}
        data['securityDetails'] = Stubs::SecurityDetails.stub(stub[:security_details]) unless stub[:security_details].nil?
        data['endpoint'] = Stubs::DataflowEndpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        data
      end
    end

    # Structure Stubber for DataflowEndpoint
    class DataflowEndpoint
      def self.default(visited=[])
        return nil if visited.include?('DataflowEndpoint')
        visited = visited + ['DataflowEndpoint']
        {
          name: 'name',
          address: SocketAddress.default(visited),
          status: 'status',
          mtu: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataflowEndpoint.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['address'] = Stubs::SocketAddress.stub(stub[:address]) unless stub[:address].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['mtu'] = stub[:mtu] unless stub[:mtu].nil?
        data
      end
    end

    # Structure Stubber for SocketAddress
    class SocketAddress
      def self.default(visited=[])
        return nil if visited.include?('SocketAddress')
        visited = visited + ['SocketAddress']
        {
          name: 'name',
          port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SocketAddress.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # Structure Stubber for SecurityDetails
    class SecurityDetails
      def self.default(visited=[])
        return nil if visited.include?('SecurityDetails')
        visited = visited + ['SecurityDetails']
        {
          subnet_ids: SubnetList.default(visited),
          security_group_ids: SecurityGroupIdList.default(visited),
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityDetails.new
        data = {}
        data['subnetIds'] = Stubs::SubnetList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['securityGroupIds'] = Stubs::SecurityGroupIdList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIdList
    class SecurityGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdList')
        visited = visited + ['SecurityGroupIdList']
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

    # List Stubber for SubnetList
    class SubnetList
      def self.default(visited=[])
        return nil if visited.include?('SubnetList')
        visited = visited + ['SubnetList']
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

    # Structure Stubber for Source
    class Source
      def self.default(visited=[])
        return nil if visited.include?('Source')
        visited = visited + ['Source']
        {
          config_type: 'config_type',
          config_id: 'config_id',
          config_details: ConfigDetails.default(visited),
          dataflow_source_region: 'dataflow_source_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::Source.new
        data = {}
        data['configType'] = stub[:config_type] unless stub[:config_type].nil?
        data['configId'] = stub[:config_id] unless stub[:config_id].nil?
        data['configDetails'] = Stubs::ConfigDetails.stub(stub[:config_details]) unless stub[:config_details].nil?
        data['dataflowSourceRegion'] = stub[:dataflow_source_region] unless stub[:dataflow_source_region].nil?
        data
      end
    end

    # Map Stubber for TagsMap
    class TagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagsMap')
        visited = visited + ['TagsMap']
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

    # Structure Stubber for Elevation
    class Elevation
      def self.default(visited=[])
        return nil if visited.include?('Elevation')
        visited = visited + ['Elevation']
        {
          value: 1.0,
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::Elevation.new
        data = {}
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Operation Stubber for GetConfig
    class GetConfig
      def self.default(visited=[])
        {
          config_id: 'config_id',
          config_arn: 'config_arn',
          name: 'name',
          config_type: 'config_type',
          config_data: ConfigTypeData.default(visited),
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configId'] = stub[:config_id] unless stub[:config_id].nil?
        data['configArn'] = stub[:config_arn] unless stub[:config_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['configType'] = stub[:config_type] unless stub[:config_type].nil?
        data['configData'] = Stubs::ConfigTypeData.stub(stub[:config_data]) unless stub[:config_data].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Union Stubber for ConfigTypeData
    class ConfigTypeData
      def self.default(visited=[])
        return nil if visited.include?('ConfigTypeData')
        visited = visited + ['ConfigTypeData']
        {
          antenna_downlink_config: AntennaDownlinkConfig.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ConfigTypeData::AntennaDownlinkConfig
          data['antennaDownlinkConfig'] = (Stubs::AntennaDownlinkConfig.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ConfigTypeData::TrackingConfig
          data['trackingConfig'] = (Stubs::TrackingConfig.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ConfigTypeData::DataflowEndpointConfig
          data['dataflowEndpointConfig'] = (Stubs::DataflowEndpointConfig.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ConfigTypeData::AntennaDownlinkDemodDecodeConfig
          data['antennaDownlinkDemodDecodeConfig'] = (Stubs::AntennaDownlinkDemodDecodeConfig.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ConfigTypeData::AntennaUplinkConfig
          data['antennaUplinkConfig'] = (Stubs::AntennaUplinkConfig.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ConfigTypeData::UplinkEchoConfig
          data['uplinkEchoConfig'] = (Stubs::UplinkEchoConfig.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ConfigTypeData::S3RecordingConfig
          data['s3RecordingConfig'] = (Stubs::S3RecordingConfig.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ConfigTypeData"
        end

        data
      end
    end

    # Structure Stubber for S3RecordingConfig
    class S3RecordingConfig
      def self.default(visited=[])
        return nil if visited.include?('S3RecordingConfig')
        visited = visited + ['S3RecordingConfig']
        {
          bucket_arn: 'bucket_arn',
          role_arn: 'role_arn',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3RecordingConfig.new
        data = {}
        data['bucketArn'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for UplinkEchoConfig
    class UplinkEchoConfig
      def self.default(visited=[])
        return nil if visited.include?('UplinkEchoConfig')
        visited = visited + ['UplinkEchoConfig']
        {
          enabled: false,
          antenna_uplink_config_arn: 'antenna_uplink_config_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::UplinkEchoConfig.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['antennaUplinkConfigArn'] = stub[:antenna_uplink_config_arn] unless stub[:antenna_uplink_config_arn].nil?
        data
      end
    end

    # Structure Stubber for AntennaUplinkConfig
    class AntennaUplinkConfig
      def self.default(visited=[])
        return nil if visited.include?('AntennaUplinkConfig')
        visited = visited + ['AntennaUplinkConfig']
        {
          transmit_disabled: false,
          spectrum_config: UplinkSpectrumConfig.default(visited),
          target_eirp: Eirp.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AntennaUplinkConfig.new
        data = {}
        data['transmitDisabled'] = stub[:transmit_disabled] unless stub[:transmit_disabled].nil?
        data['spectrumConfig'] = Stubs::UplinkSpectrumConfig.stub(stub[:spectrum_config]) unless stub[:spectrum_config].nil?
        data['targetEirp'] = Stubs::Eirp.stub(stub[:target_eirp]) unless stub[:target_eirp].nil?
        data
      end
    end

    # Structure Stubber for Eirp
    class Eirp
      def self.default(visited=[])
        return nil if visited.include?('Eirp')
        visited = visited + ['Eirp']
        {
          value: 1.0,
          units: 'units',
        }
      end

      def self.stub(stub)
        stub ||= Types::Eirp.new
        data = {}
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['units'] = stub[:units] unless stub[:units].nil?
        data
      end
    end

    # Structure Stubber for UplinkSpectrumConfig
    class UplinkSpectrumConfig
      def self.default(visited=[])
        return nil if visited.include?('UplinkSpectrumConfig')
        visited = visited + ['UplinkSpectrumConfig']
        {
          center_frequency: Frequency.default(visited),
          polarization: 'polarization',
        }
      end

      def self.stub(stub)
        stub ||= Types::UplinkSpectrumConfig.new
        data = {}
        data['centerFrequency'] = Stubs::Frequency.stub(stub[:center_frequency]) unless stub[:center_frequency].nil?
        data['polarization'] = stub[:polarization] unless stub[:polarization].nil?
        data
      end
    end

    # Structure Stubber for Frequency
    class Frequency
      def self.default(visited=[])
        return nil if visited.include?('Frequency')
        visited = visited + ['Frequency']
        {
          value: 1.0,
          units: 'units',
        }
      end

      def self.stub(stub)
        stub ||= Types::Frequency.new
        data = {}
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['units'] = stub[:units] unless stub[:units].nil?
        data
      end
    end

    # Structure Stubber for AntennaDownlinkDemodDecodeConfig
    class AntennaDownlinkDemodDecodeConfig
      def self.default(visited=[])
        return nil if visited.include?('AntennaDownlinkDemodDecodeConfig')
        visited = visited + ['AntennaDownlinkDemodDecodeConfig']
        {
          spectrum_config: SpectrumConfig.default(visited),
          demodulation_config: DemodulationConfig.default(visited),
          decode_config: DecodeConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AntennaDownlinkDemodDecodeConfig.new
        data = {}
        data['spectrumConfig'] = Stubs::SpectrumConfig.stub(stub[:spectrum_config]) unless stub[:spectrum_config].nil?
        data['demodulationConfig'] = Stubs::DemodulationConfig.stub(stub[:demodulation_config]) unless stub[:demodulation_config].nil?
        data['decodeConfig'] = Stubs::DecodeConfig.stub(stub[:decode_config]) unless stub[:decode_config].nil?
        data
      end
    end

    # Structure Stubber for DecodeConfig
    class DecodeConfig
      def self.default(visited=[])
        return nil if visited.include?('DecodeConfig')
        visited = visited + ['DecodeConfig']
        {
          unvalidated_json: 'unvalidated_json',
        }
      end

      def self.stub(stub)
        stub ||= Types::DecodeConfig.new
        data = {}
        data['unvalidatedJSON'] = stub[:unvalidated_json] unless stub[:unvalidated_json].nil?
        data
      end
    end

    # Structure Stubber for DemodulationConfig
    class DemodulationConfig
      def self.default(visited=[])
        return nil if visited.include?('DemodulationConfig')
        visited = visited + ['DemodulationConfig']
        {
          unvalidated_json: 'unvalidated_json',
        }
      end

      def self.stub(stub)
        stub ||= Types::DemodulationConfig.new
        data = {}
        data['unvalidatedJSON'] = stub[:unvalidated_json] unless stub[:unvalidated_json].nil?
        data
      end
    end

    # Structure Stubber for SpectrumConfig
    class SpectrumConfig
      def self.default(visited=[])
        return nil if visited.include?('SpectrumConfig')
        visited = visited + ['SpectrumConfig']
        {
          center_frequency: Frequency.default(visited),
          bandwidth: FrequencyBandwidth.default(visited),
          polarization: 'polarization',
        }
      end

      def self.stub(stub)
        stub ||= Types::SpectrumConfig.new
        data = {}
        data['centerFrequency'] = Stubs::Frequency.stub(stub[:center_frequency]) unless stub[:center_frequency].nil?
        data['bandwidth'] = Stubs::FrequencyBandwidth.stub(stub[:bandwidth]) unless stub[:bandwidth].nil?
        data['polarization'] = stub[:polarization] unless stub[:polarization].nil?
        data
      end
    end

    # Structure Stubber for FrequencyBandwidth
    class FrequencyBandwidth
      def self.default(visited=[])
        return nil if visited.include?('FrequencyBandwidth')
        visited = visited + ['FrequencyBandwidth']
        {
          value: 1.0,
          units: 'units',
        }
      end

      def self.stub(stub)
        stub ||= Types::FrequencyBandwidth.new
        data = {}
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['units'] = stub[:units] unless stub[:units].nil?
        data
      end
    end

    # Structure Stubber for DataflowEndpointConfig
    class DataflowEndpointConfig
      def self.default(visited=[])
        return nil if visited.include?('DataflowEndpointConfig')
        visited = visited + ['DataflowEndpointConfig']
        {
          dataflow_endpoint_name: 'dataflow_endpoint_name',
          dataflow_endpoint_region: 'dataflow_endpoint_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataflowEndpointConfig.new
        data = {}
        data['dataflowEndpointName'] = stub[:dataflow_endpoint_name] unless stub[:dataflow_endpoint_name].nil?
        data['dataflowEndpointRegion'] = stub[:dataflow_endpoint_region] unless stub[:dataflow_endpoint_region].nil?
        data
      end
    end

    # Structure Stubber for TrackingConfig
    class TrackingConfig
      def self.default(visited=[])
        return nil if visited.include?('TrackingConfig')
        visited = visited + ['TrackingConfig']
        {
          autotrack: 'autotrack',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrackingConfig.new
        data = {}
        data['autotrack'] = stub[:autotrack] unless stub[:autotrack].nil?
        data
      end
    end

    # Structure Stubber for AntennaDownlinkConfig
    class AntennaDownlinkConfig
      def self.default(visited=[])
        return nil if visited.include?('AntennaDownlinkConfig')
        visited = visited + ['AntennaDownlinkConfig']
        {
          spectrum_config: SpectrumConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AntennaDownlinkConfig.new
        data = {}
        data['spectrumConfig'] = Stubs::SpectrumConfig.stub(stub[:spectrum_config]) unless stub[:spectrum_config].nil?
        data
      end
    end

    # Operation Stubber for GetDataflowEndpointGroup
    class GetDataflowEndpointGroup
      def self.default(visited=[])
        {
          dataflow_endpoint_group_id: 'dataflow_endpoint_group_id',
          dataflow_endpoint_group_arn: 'dataflow_endpoint_group_arn',
          endpoints_details: EndpointDetailsList.default(visited),
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataflowEndpointGroupId'] = stub[:dataflow_endpoint_group_id] unless stub[:dataflow_endpoint_group_id].nil?
        data['dataflowEndpointGroupArn'] = stub[:dataflow_endpoint_group_arn] unless stub[:dataflow_endpoint_group_arn].nil?
        data['endpointsDetails'] = Stubs::EndpointDetailsList.stub(stub[:endpoints_details]) unless stub[:endpoints_details].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EndpointDetailsList
    class EndpointDetailsList
      def self.default(visited=[])
        return nil if visited.include?('EndpointDetailsList')
        visited = visited + ['EndpointDetailsList']
        [
          EndpointDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EndpointDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetMinuteUsage
    class GetMinuteUsage
      def self.default(visited=[])
        {
          is_reserved_minutes_customer: false,
          total_reserved_minute_allocation: 1,
          upcoming_minutes_scheduled: 1,
          total_scheduled_minutes: 1,
          estimated_minutes_remaining: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['isReservedMinutesCustomer'] = stub[:is_reserved_minutes_customer] unless stub[:is_reserved_minutes_customer].nil?
        data['totalReservedMinuteAllocation'] = stub[:total_reserved_minute_allocation] unless stub[:total_reserved_minute_allocation].nil?
        data['upcomingMinutesScheduled'] = stub[:upcoming_minutes_scheduled] unless stub[:upcoming_minutes_scheduled].nil?
        data['totalScheduledMinutes'] = stub[:total_scheduled_minutes] unless stub[:total_scheduled_minutes].nil?
        data['estimatedMinutesRemaining'] = stub[:estimated_minutes_remaining] unless stub[:estimated_minutes_remaining].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMissionProfile
    class GetMissionProfile
      def self.default(visited=[])
        {
          mission_profile_id: 'mission_profile_id',
          mission_profile_arn: 'mission_profile_arn',
          name: 'name',
          region: 'region',
          contact_pre_pass_duration_seconds: 1,
          contact_post_pass_duration_seconds: 1,
          minimum_viable_contact_duration_seconds: 1,
          dataflow_edges: DataflowEdgeList.default(visited),
          tracking_config_arn: 'tracking_config_arn',
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['missionProfileId'] = stub[:mission_profile_id] unless stub[:mission_profile_id].nil?
        data['missionProfileArn'] = stub[:mission_profile_arn] unless stub[:mission_profile_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['contactPrePassDurationSeconds'] = stub[:contact_pre_pass_duration_seconds] unless stub[:contact_pre_pass_duration_seconds].nil?
        data['contactPostPassDurationSeconds'] = stub[:contact_post_pass_duration_seconds] unless stub[:contact_post_pass_duration_seconds].nil?
        data['minimumViableContactDurationSeconds'] = stub[:minimum_viable_contact_duration_seconds] unless stub[:minimum_viable_contact_duration_seconds].nil?
        data['dataflowEdges'] = Stubs::DataflowEdgeList.stub(stub[:dataflow_edges]) unless stub[:dataflow_edges].nil?
        data['trackingConfigArn'] = stub[:tracking_config_arn] unless stub[:tracking_config_arn].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataflowEdgeList
    class DataflowEdgeList
      def self.default(visited=[])
        return nil if visited.include?('DataflowEdgeList')
        visited = visited + ['DataflowEdgeList']
        [
          DataflowEdge.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataflowEdge.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for DataflowEdge
    class DataflowEdge
      def self.default(visited=[])
        return nil if visited.include?('DataflowEdge')
        visited = visited + ['DataflowEdge']
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

    # Operation Stubber for GetSatellite
    class GetSatellite
      def self.default(visited=[])
        {
          satellite_id: 'satellite_id',
          satellite_arn: 'satellite_arn',
          norad_satellite_id: 1,
          ground_stations: GroundStationIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['satelliteId'] = stub[:satellite_id] unless stub[:satellite_id].nil?
        data['satelliteArn'] = stub[:satellite_arn] unless stub[:satellite_arn].nil?
        data['noradSatelliteID'] = stub[:norad_satellite_id] unless stub[:norad_satellite_id].nil?
        data['groundStations'] = Stubs::GroundStationIdList.stub(stub[:ground_stations]) unless stub[:ground_stations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GroundStationIdList
    class GroundStationIdList
      def self.default(visited=[])
        return nil if visited.include?('GroundStationIdList')
        visited = visited + ['GroundStationIdList']
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

    # Operation Stubber for ListConfigs
    class ListConfigs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          config_list: ConfigList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['configList'] = Stubs::ConfigList.stub(stub[:config_list]) unless stub[:config_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConfigList
    class ConfigList
      def self.default(visited=[])
        return nil if visited.include?('ConfigList')
        visited = visited + ['ConfigList']
        [
          ConfigListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConfigListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigListItem
    class ConfigListItem
      def self.default(visited=[])
        return nil if visited.include?('ConfigListItem')
        visited = visited + ['ConfigListItem']
        {
          config_id: 'config_id',
          config_type: 'config_type',
          config_arn: 'config_arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigListItem.new
        data = {}
        data['configId'] = stub[:config_id] unless stub[:config_id].nil?
        data['configType'] = stub[:config_type] unless stub[:config_type].nil?
        data['configArn'] = stub[:config_arn] unless stub[:config_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListContacts
    class ListContacts
      def self.default(visited=[])
        {
          next_token: 'next_token',
          contact_list: ContactList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['contactList'] = Stubs::ContactList.stub(stub[:contact_list]) unless stub[:contact_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ContactList
    class ContactList
      def self.default(visited=[])
        return nil if visited.include?('ContactList')
        visited = visited + ['ContactList']
        [
          ContactData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContactData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContactData
    class ContactData
      def self.default(visited=[])
        return nil if visited.include?('ContactData')
        visited = visited + ['ContactData']
        {
          contact_id: 'contact_id',
          mission_profile_arn: 'mission_profile_arn',
          satellite_arn: 'satellite_arn',
          start_time: Time.now,
          end_time: Time.now,
          pre_pass_start_time: Time.now,
          post_pass_end_time: Time.now,
          ground_station: 'ground_station',
          contact_status: 'contact_status',
          error_message: 'error_message',
          maximum_elevation: Elevation.default(visited),
          region: 'region',
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactData.new
        data = {}
        data['contactId'] = stub[:contact_id] unless stub[:contact_id].nil?
        data['missionProfileArn'] = stub[:mission_profile_arn] unless stub[:mission_profile_arn].nil?
        data['satelliteArn'] = stub[:satellite_arn] unless stub[:satellite_arn].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['prePassStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:pre_pass_start_time]).to_i unless stub[:pre_pass_start_time].nil?
        data['postPassEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:post_pass_end_time]).to_i unless stub[:post_pass_end_time].nil?
        data['groundStation'] = stub[:ground_station] unless stub[:ground_station].nil?
        data['contactStatus'] = stub[:contact_status] unless stub[:contact_status].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['maximumElevation'] = Stubs::Elevation.stub(stub[:maximum_elevation]) unless stub[:maximum_elevation].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListDataflowEndpointGroups
    class ListDataflowEndpointGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          dataflow_endpoint_group_list: DataflowEndpointGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['dataflowEndpointGroupList'] = Stubs::DataflowEndpointGroupList.stub(stub[:dataflow_endpoint_group_list]) unless stub[:dataflow_endpoint_group_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataflowEndpointGroupList
    class DataflowEndpointGroupList
      def self.default(visited=[])
        return nil if visited.include?('DataflowEndpointGroupList')
        visited = visited + ['DataflowEndpointGroupList']
        [
          DataflowEndpointListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataflowEndpointListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataflowEndpointListItem
    class DataflowEndpointListItem
      def self.default(visited=[])
        return nil if visited.include?('DataflowEndpointListItem')
        visited = visited + ['DataflowEndpointListItem']
        {
          dataflow_endpoint_group_id: 'dataflow_endpoint_group_id',
          dataflow_endpoint_group_arn: 'dataflow_endpoint_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataflowEndpointListItem.new
        data = {}
        data['dataflowEndpointGroupId'] = stub[:dataflow_endpoint_group_id] unless stub[:dataflow_endpoint_group_id].nil?
        data['dataflowEndpointGroupArn'] = stub[:dataflow_endpoint_group_arn] unless stub[:dataflow_endpoint_group_arn].nil?
        data
      end
    end

    # Operation Stubber for ListGroundStations
    class ListGroundStations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          ground_station_list: GroundStationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['groundStationList'] = Stubs::GroundStationList.stub(stub[:ground_station_list]) unless stub[:ground_station_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GroundStationList
    class GroundStationList
      def self.default(visited=[])
        return nil if visited.include?('GroundStationList')
        visited = visited + ['GroundStationList']
        [
          GroundStationData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GroundStationData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroundStationData
    class GroundStationData
      def self.default(visited=[])
        return nil if visited.include?('GroundStationData')
        visited = visited + ['GroundStationData']
        {
          ground_station_id: 'ground_station_id',
          ground_station_name: 'ground_station_name',
          region: 'region',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroundStationData.new
        data = {}
        data['groundStationId'] = stub[:ground_station_id] unless stub[:ground_station_id].nil?
        data['groundStationName'] = stub[:ground_station_name] unless stub[:ground_station_name].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data
      end
    end

    # Operation Stubber for ListMissionProfiles
    class ListMissionProfiles
      def self.default(visited=[])
        {
          next_token: 'next_token',
          mission_profile_list: MissionProfileList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['missionProfileList'] = Stubs::MissionProfileList.stub(stub[:mission_profile_list]) unless stub[:mission_profile_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MissionProfileList
    class MissionProfileList
      def self.default(visited=[])
        return nil if visited.include?('MissionProfileList')
        visited = visited + ['MissionProfileList']
        [
          MissionProfileListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MissionProfileListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MissionProfileListItem
    class MissionProfileListItem
      def self.default(visited=[])
        return nil if visited.include?('MissionProfileListItem')
        visited = visited + ['MissionProfileListItem']
        {
          mission_profile_id: 'mission_profile_id',
          mission_profile_arn: 'mission_profile_arn',
          region: 'region',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MissionProfileListItem.new
        data = {}
        data['missionProfileId'] = stub[:mission_profile_id] unless stub[:mission_profile_id].nil?
        data['missionProfileArn'] = stub[:mission_profile_arn] unless stub[:mission_profile_arn].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListSatellites
    class ListSatellites
      def self.default(visited=[])
        {
          next_token: 'next_token',
          satellites: SatelliteList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['satellites'] = Stubs::SatelliteList.stub(stub[:satellites]) unless stub[:satellites].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SatelliteList
    class SatelliteList
      def self.default(visited=[])
        return nil if visited.include?('SatelliteList')
        visited = visited + ['SatelliteList']
        [
          SatelliteListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SatelliteListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SatelliteListItem
    class SatelliteListItem
      def self.default(visited=[])
        return nil if visited.include?('SatelliteListItem')
        visited = visited + ['SatelliteListItem']
        {
          satellite_id: 'satellite_id',
          satellite_arn: 'satellite_arn',
          norad_satellite_id: 1,
          ground_stations: GroundStationIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SatelliteListItem.new
        data = {}
        data['satelliteId'] = stub[:satellite_id] unless stub[:satellite_id].nil?
        data['satelliteArn'] = stub[:satellite_arn] unless stub[:satellite_arn].nil?
        data['noradSatelliteID'] = stub[:norad_satellite_id] unless stub[:norad_satellite_id].nil?
        data['groundStations'] = Stubs::GroundStationIdList.stub(stub[:ground_stations]) unless stub[:ground_stations].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ReserveContact
    class ReserveContact
      def self.default(visited=[])
        {
          contact_id: 'contact_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contactId'] = stub[:contact_id] unless stub[:contact_id].nil?
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

    # Operation Stubber for UpdateConfig
    class UpdateConfig
      def self.default(visited=[])
        {
          config_id: 'config_id',
          config_type: 'config_type',
          config_arn: 'config_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configId'] = stub[:config_id] unless stub[:config_id].nil?
        data['configType'] = stub[:config_type] unless stub[:config_type].nil?
        data['configArn'] = stub[:config_arn] unless stub[:config_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMissionProfile
    class UpdateMissionProfile
      def self.default(visited=[])
        {
          mission_profile_id: 'mission_profile_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['missionProfileId'] = stub[:mission_profile_id] unless stub[:mission_profile_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
