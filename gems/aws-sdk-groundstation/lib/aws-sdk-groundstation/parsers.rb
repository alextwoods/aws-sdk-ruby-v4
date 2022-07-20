# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GroundStation
  module Parsers

    # Operation Parser for CancelContact
    class CancelContact
      def self.parse(http_resp)
        data = Types::CancelContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_id = map['contactId']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.parameter_name = map['parameterName']
        data
      end
    end

    # Error Parser for DependencyException
    class DependencyException
      def self.parse(http_resp)
        data = Types::DependencyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.parameter_name = map['parameterName']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateConfig
    class CreateConfig
      def self.parse(http_resp)
        data = Types::CreateConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.config_id = map['configId']
        data.config_type = map['configType']
        data.config_arn = map['configArn']
        data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.parameter_name = map['parameterName']
        data
      end
    end

    # Operation Parser for CreateDataflowEndpointGroup
    class CreateDataflowEndpointGroup
      def self.parse(http_resp)
        data = Types::CreateDataflowEndpointGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataflow_endpoint_group_id = map['dataflowEndpointGroupId']
        data
      end
    end

    # Operation Parser for CreateMissionProfile
    class CreateMissionProfile
      def self.parse(http_resp)
        data = Types::CreateMissionProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.mission_profile_id = map['missionProfileId']
        data
      end
    end

    # Operation Parser for DeleteConfig
    class DeleteConfig
      def self.parse(http_resp)
        data = Types::DeleteConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.config_id = map['configId']
        data.config_type = map['configType']
        data.config_arn = map['configArn']
        data
      end
    end

    # Operation Parser for DeleteDataflowEndpointGroup
    class DeleteDataflowEndpointGroup
      def self.parse(http_resp)
        data = Types::DeleteDataflowEndpointGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataflow_endpoint_group_id = map['dataflowEndpointGroupId']
        data
      end
    end

    # Operation Parser for DeleteMissionProfile
    class DeleteMissionProfile
      def self.parse(http_resp)
        data = Types::DeleteMissionProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.mission_profile_id = map['missionProfileId']
        data
      end
    end

    # Operation Parser for DescribeContact
    class DescribeContact
      def self.parse(http_resp)
        data = Types::DescribeContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_id = map['contactId']
        data.mission_profile_arn = map['missionProfileArn']
        data.satellite_arn = map['satelliteArn']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.pre_pass_start_time = Time.at(map['prePassStartTime'].to_i) if map['prePassStartTime']
        data.post_pass_end_time = Time.at(map['postPassEndTime'].to_i) if map['postPassEndTime']
        data.ground_station = map['groundStation']
        data.contact_status = map['contactStatus']
        data.error_message = map['errorMessage']
        data.maximum_elevation = (Elevation.parse(map['maximumElevation']) unless map['maximumElevation'].nil?)
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.region = map['region']
        data.dataflow_list = (DataflowList.parse(map['dataflowList']) unless map['dataflowList'].nil?)
        data
      end
    end

    class DataflowList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DataflowDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataflowDetail
      def self.parse(map)
        data = Types::DataflowDetail.new
        data.source = (Source.parse(map['source']) unless map['source'].nil?)
        data.destination = (Destination.parse(map['destination']) unless map['destination'].nil?)
        data.error_message = map['errorMessage']
        return data
      end
    end

    class Destination
      def self.parse(map)
        data = Types::Destination.new
        data.config_type = map['configType']
        data.config_id = map['configId']
        data.config_details = (ConfigDetails.parse(map['configDetails']) unless map['configDetails'].nil?)
        data.dataflow_destination_region = map['dataflowDestinationRegion']
        return data
      end
    end

    class ConfigDetails
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'endpointDetails'
          value = (EndpointDetails.parse(value) unless value.nil?)
          Types::ConfigDetails::EndpointDetails.new(value) if value
        when 'antennaDemodDecodeDetails'
          value = (AntennaDemodDecodeDetails.parse(value) unless value.nil?)
          Types::ConfigDetails::AntennaDemodDecodeDetails.new(value) if value
        when 's3RecordingDetails'
          value = (S3RecordingDetails.parse(value) unless value.nil?)
          Types::ConfigDetails::S3RecordingDetails.new(value) if value
        else
          Types::ConfigDetails::Unknown.new({name: key, value: value})
        end
      end
    end

    class S3RecordingDetails
      def self.parse(map)
        data = Types::S3RecordingDetails.new
        data.bucket_arn = map['bucketArn']
        data.key_template = map['keyTemplate']
        return data
      end
    end

    class AntennaDemodDecodeDetails
      def self.parse(map)
        data = Types::AntennaDemodDecodeDetails.new
        data.output_node = map['outputNode']
        return data
      end
    end

    class EndpointDetails
      def self.parse(map)
        data = Types::EndpointDetails.new
        data.security_details = (SecurityDetails.parse(map['securityDetails']) unless map['securityDetails'].nil?)
        data.endpoint = (DataflowEndpoint.parse(map['endpoint']) unless map['endpoint'].nil?)
        return data
      end
    end

    class DataflowEndpoint
      def self.parse(map)
        data = Types::DataflowEndpoint.new
        data.name = map['name']
        data.address = (SocketAddress.parse(map['address']) unless map['address'].nil?)
        data.status = map['status']
        data.mtu = map['mtu']
        return data
      end
    end

    class SocketAddress
      def self.parse(map)
        data = Types::SocketAddress.new
        data.name = map['name']
        data.port = map['port']
        return data
      end
    end

    class SecurityDetails
      def self.parse(map)
        data = Types::SecurityDetails.new
        data.subnet_ids = (SubnetList.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.security_group_ids = (SecurityGroupIdList.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.role_arn = map['roleArn']
        return data
      end
    end

    class SecurityGroupIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SubnetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Source
      def self.parse(map)
        data = Types::Source.new
        data.config_type = map['configType']
        data.config_id = map['configId']
        data.config_details = (ConfigDetails.parse(map['configDetails']) unless map['configDetails'].nil?)
        data.dataflow_source_region = map['dataflowSourceRegion']
        return data
      end
    end

    class TagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Elevation
      def self.parse(map)
        data = Types::Elevation.new
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        data.unit = map['unit']
        return data
      end
    end

    # Operation Parser for GetConfig
    class GetConfig
      def self.parse(http_resp)
        data = Types::GetConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.config_id = map['configId']
        data.config_arn = map['configArn']
        data.name = map['name']
        data.config_type = map['configType']
        data.config_data = (ConfigTypeData.parse(map['configData']) unless map['configData'].nil?)
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class ConfigTypeData
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'antennaDownlinkConfig'
          value = (AntennaDownlinkConfig.parse(value) unless value.nil?)
          Types::ConfigTypeData::AntennaDownlinkConfig.new(value) if value
        when 'trackingConfig'
          value = (TrackingConfig.parse(value) unless value.nil?)
          Types::ConfigTypeData::TrackingConfig.new(value) if value
        when 'dataflowEndpointConfig'
          value = (DataflowEndpointConfig.parse(value) unless value.nil?)
          Types::ConfigTypeData::DataflowEndpointConfig.new(value) if value
        when 'antennaDownlinkDemodDecodeConfig'
          value = (AntennaDownlinkDemodDecodeConfig.parse(value) unless value.nil?)
          Types::ConfigTypeData::AntennaDownlinkDemodDecodeConfig.new(value) if value
        when 'antennaUplinkConfig'
          value = (AntennaUplinkConfig.parse(value) unless value.nil?)
          Types::ConfigTypeData::AntennaUplinkConfig.new(value) if value
        when 'uplinkEchoConfig'
          value = (UplinkEchoConfig.parse(value) unless value.nil?)
          Types::ConfigTypeData::UplinkEchoConfig.new(value) if value
        when 's3RecordingConfig'
          value = (S3RecordingConfig.parse(value) unless value.nil?)
          Types::ConfigTypeData::S3RecordingConfig.new(value) if value
        else
          Types::ConfigTypeData::Unknown.new({name: key, value: value})
        end
      end
    end

    class S3RecordingConfig
      def self.parse(map)
        data = Types::S3RecordingConfig.new
        data.bucket_arn = map['bucketArn']
        data.role_arn = map['roleArn']
        data.prefix = map['prefix']
        return data
      end
    end

    class UplinkEchoConfig
      def self.parse(map)
        data = Types::UplinkEchoConfig.new
        data.enabled = map['enabled']
        data.antenna_uplink_config_arn = map['antennaUplinkConfigArn']
        return data
      end
    end

    class AntennaUplinkConfig
      def self.parse(map)
        data = Types::AntennaUplinkConfig.new
        data.transmit_disabled = map['transmitDisabled']
        data.spectrum_config = (UplinkSpectrumConfig.parse(map['spectrumConfig']) unless map['spectrumConfig'].nil?)
        data.target_eirp = (Eirp.parse(map['targetEirp']) unless map['targetEirp'].nil?)
        return data
      end
    end

    class Eirp
      def self.parse(map)
        data = Types::Eirp.new
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        data.units = map['units']
        return data
      end
    end

    class UplinkSpectrumConfig
      def self.parse(map)
        data = Types::UplinkSpectrumConfig.new
        data.center_frequency = (Frequency.parse(map['centerFrequency']) unless map['centerFrequency'].nil?)
        data.polarization = map['polarization']
        return data
      end
    end

    class Frequency
      def self.parse(map)
        data = Types::Frequency.new
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        data.units = map['units']
        return data
      end
    end

    class AntennaDownlinkDemodDecodeConfig
      def self.parse(map)
        data = Types::AntennaDownlinkDemodDecodeConfig.new
        data.spectrum_config = (SpectrumConfig.parse(map['spectrumConfig']) unless map['spectrumConfig'].nil?)
        data.demodulation_config = (DemodulationConfig.parse(map['demodulationConfig']) unless map['demodulationConfig'].nil?)
        data.decode_config = (DecodeConfig.parse(map['decodeConfig']) unless map['decodeConfig'].nil?)
        return data
      end
    end

    class DecodeConfig
      def self.parse(map)
        data = Types::DecodeConfig.new
        data.unvalidated_json = map['unvalidatedJSON']
        return data
      end
    end

    class DemodulationConfig
      def self.parse(map)
        data = Types::DemodulationConfig.new
        data.unvalidated_json = map['unvalidatedJSON']
        return data
      end
    end

    class SpectrumConfig
      def self.parse(map)
        data = Types::SpectrumConfig.new
        data.center_frequency = (Frequency.parse(map['centerFrequency']) unless map['centerFrequency'].nil?)
        data.bandwidth = (FrequencyBandwidth.parse(map['bandwidth']) unless map['bandwidth'].nil?)
        data.polarization = map['polarization']
        return data
      end
    end

    class FrequencyBandwidth
      def self.parse(map)
        data = Types::FrequencyBandwidth.new
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        data.units = map['units']
        return data
      end
    end

    class DataflowEndpointConfig
      def self.parse(map)
        data = Types::DataflowEndpointConfig.new
        data.dataflow_endpoint_name = map['dataflowEndpointName']
        data.dataflow_endpoint_region = map['dataflowEndpointRegion']
        return data
      end
    end

    class TrackingConfig
      def self.parse(map)
        data = Types::TrackingConfig.new
        data.autotrack = map['autotrack']
        return data
      end
    end

    class AntennaDownlinkConfig
      def self.parse(map)
        data = Types::AntennaDownlinkConfig.new
        data.spectrum_config = (SpectrumConfig.parse(map['spectrumConfig']) unless map['spectrumConfig'].nil?)
        return data
      end
    end

    # Operation Parser for GetDataflowEndpointGroup
    class GetDataflowEndpointGroup
      def self.parse(http_resp)
        data = Types::GetDataflowEndpointGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataflow_endpoint_group_id = map['dataflowEndpointGroupId']
        data.dataflow_endpoint_group_arn = map['dataflowEndpointGroupArn']
        data.endpoints_details = (EndpointDetailsList.parse(map['endpointsDetails']) unless map['endpointsDetails'].nil?)
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class EndpointDetailsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << EndpointDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetMinuteUsage
    class GetMinuteUsage
      def self.parse(http_resp)
        data = Types::GetMinuteUsageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.is_reserved_minutes_customer = map['isReservedMinutesCustomer']
        data.total_reserved_minute_allocation = map['totalReservedMinuteAllocation']
        data.upcoming_minutes_scheduled = map['upcomingMinutesScheduled']
        data.total_scheduled_minutes = map['totalScheduledMinutes']
        data.estimated_minutes_remaining = map['estimatedMinutesRemaining']
        data
      end
    end

    # Operation Parser for GetMissionProfile
    class GetMissionProfile
      def self.parse(http_resp)
        data = Types::GetMissionProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.mission_profile_id = map['missionProfileId']
        data.mission_profile_arn = map['missionProfileArn']
        data.name = map['name']
        data.region = map['region']
        data.contact_pre_pass_duration_seconds = map['contactPrePassDurationSeconds']
        data.contact_post_pass_duration_seconds = map['contactPostPassDurationSeconds']
        data.minimum_viable_contact_duration_seconds = map['minimumViableContactDurationSeconds']
        data.dataflow_edges = (DataflowEdgeList.parse(map['dataflowEdges']) unless map['dataflowEdges'].nil?)
        data.tracking_config_arn = map['trackingConfigArn']
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class DataflowEdgeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DataflowEdge.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataflowEdge
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetSatellite
    class GetSatellite
      def self.parse(http_resp)
        data = Types::GetSatelliteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.satellite_id = map['satelliteId']
        data.satellite_arn = map['satelliteArn']
        data.norad_satellite_id = map['noradSatelliteID']
        data.ground_stations = (GroundStationIdList.parse(map['groundStations']) unless map['groundStations'].nil?)
        data
      end
    end

    class GroundStationIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListConfigs
    class ListConfigs
      def self.parse(http_resp)
        data = Types::ListConfigsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.config_list = (ConfigList.parse(map['configList']) unless map['configList'].nil?)
        data
      end
    end

    class ConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ConfigListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConfigListItem
      def self.parse(map)
        data = Types::ConfigListItem.new
        data.config_id = map['configId']
        data.config_type = map['configType']
        data.config_arn = map['configArn']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for ListContacts
    class ListContacts
      def self.parse(http_resp)
        data = Types::ListContactsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.contact_list = (ContactList.parse(map['contactList']) unless map['contactList'].nil?)
        data
      end
    end

    class ContactList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ContactData.parse(value) unless value.nil?
        end
        data
      end
    end

    class ContactData
      def self.parse(map)
        data = Types::ContactData.new
        data.contact_id = map['contactId']
        data.mission_profile_arn = map['missionProfileArn']
        data.satellite_arn = map['satelliteArn']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.pre_pass_start_time = Time.at(map['prePassStartTime'].to_i) if map['prePassStartTime']
        data.post_pass_end_time = Time.at(map['postPassEndTime'].to_i) if map['postPassEndTime']
        data.ground_station = map['groundStation']
        data.contact_status = map['contactStatus']
        data.error_message = map['errorMessage']
        data.maximum_elevation = (Elevation.parse(map['maximumElevation']) unless map['maximumElevation'].nil?)
        data.region = map['region']
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListDataflowEndpointGroups
    class ListDataflowEndpointGroups
      def self.parse(http_resp)
        data = Types::ListDataflowEndpointGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.dataflow_endpoint_group_list = (DataflowEndpointGroupList.parse(map['dataflowEndpointGroupList']) unless map['dataflowEndpointGroupList'].nil?)
        data
      end
    end

    class DataflowEndpointGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DataflowEndpointListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataflowEndpointListItem
      def self.parse(map)
        data = Types::DataflowEndpointListItem.new
        data.dataflow_endpoint_group_id = map['dataflowEndpointGroupId']
        data.dataflow_endpoint_group_arn = map['dataflowEndpointGroupArn']
        return data
      end
    end

    # Operation Parser for ListGroundStations
    class ListGroundStations
      def self.parse(http_resp)
        data = Types::ListGroundStationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.ground_station_list = (GroundStationList.parse(map['groundStationList']) unless map['groundStationList'].nil?)
        data
      end
    end

    class GroundStationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << GroundStationData.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroundStationData
      def self.parse(map)
        data = Types::GroundStationData.new
        data.ground_station_id = map['groundStationId']
        data.ground_station_name = map['groundStationName']
        data.region = map['region']
        return data
      end
    end

    # Operation Parser for ListMissionProfiles
    class ListMissionProfiles
      def self.parse(http_resp)
        data = Types::ListMissionProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.mission_profile_list = (MissionProfileList.parse(map['missionProfileList']) unless map['missionProfileList'].nil?)
        data
      end
    end

    class MissionProfileList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MissionProfileListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class MissionProfileListItem
      def self.parse(map)
        data = Types::MissionProfileListItem.new
        data.mission_profile_id = map['missionProfileId']
        data.mission_profile_arn = map['missionProfileArn']
        data.region = map['region']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for ListSatellites
    class ListSatellites
      def self.parse(http_resp)
        data = Types::ListSatellitesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.satellites = (SatelliteList.parse(map['satellites']) unless map['satellites'].nil?)
        data
      end
    end

    class SatelliteList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SatelliteListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class SatelliteListItem
      def self.parse(map)
        data = Types::SatelliteListItem.new
        data.satellite_id = map['satelliteId']
        data.satellite_arn = map['satelliteArn']
        data.norad_satellite_id = map['noradSatelliteID']
        data.ground_stations = (GroundStationIdList.parse(map['groundStations']) unless map['groundStations'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ReserveContact
    class ReserveContact
      def self.parse(http_resp)
        data = Types::ReserveContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_id = map['contactId']
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

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateConfig
    class UpdateConfig
      def self.parse(http_resp)
        data = Types::UpdateConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.config_id = map['configId']
        data.config_type = map['configType']
        data.config_arn = map['configArn']
        data
      end
    end

    # Operation Parser for UpdateMissionProfile
    class UpdateMissionProfile
      def self.parse(http_resp)
        data = Types::UpdateMissionProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.mission_profile_id = map['missionProfileId']
        data
      end
    end
  end
end
