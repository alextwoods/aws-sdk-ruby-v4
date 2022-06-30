# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::GroundStation
  module Builders

    # Operation Builder for CancelContact
    class CancelContact
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:contact_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact/%<contactId>s',
            contactId: Hearth::HTTP.uri_escape(input[:contact_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateConfig
    class CreateConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/config')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['configData'] = Builders::ConfigTypeData.build(input[:config_data]) unless input[:config_data].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagsMap
    class TagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ConfigTypeData
    class ConfigTypeData
      def self.build(input)
        data = {}
        case input
        when Types::ConfigTypeData::AntennaDownlinkConfig
          data['antennaDownlinkConfig'] = (Builders::AntennaDownlinkConfig.build(input) unless input.nil?)
        when Types::ConfigTypeData::TrackingConfig
          data['trackingConfig'] = (Builders::TrackingConfig.build(input) unless input.nil?)
        when Types::ConfigTypeData::DataflowEndpointConfig
          data['dataflowEndpointConfig'] = (Builders::DataflowEndpointConfig.build(input) unless input.nil?)
        when Types::ConfigTypeData::AntennaDownlinkDemodDecodeConfig
          data['antennaDownlinkDemodDecodeConfig'] = (Builders::AntennaDownlinkDemodDecodeConfig.build(input) unless input.nil?)
        when Types::ConfigTypeData::AntennaUplinkConfig
          data['antennaUplinkConfig'] = (Builders::AntennaUplinkConfig.build(input) unless input.nil?)
        when Types::ConfigTypeData::UplinkEchoConfig
          data['uplinkEchoConfig'] = (Builders::UplinkEchoConfig.build(input) unless input.nil?)
        when Types::ConfigTypeData::S3RecordingConfig
          data['s3RecordingConfig'] = (Builders::S3RecordingConfig.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ConfigTypeData"
        end

        data
      end
    end

    # Structure Builder for S3RecordingConfig
    class S3RecordingConfig
      def self.build(input)
        data = {}
        data['bucketArn'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Structure Builder for UplinkEchoConfig
    class UplinkEchoConfig
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['antennaUplinkConfigArn'] = input[:antenna_uplink_config_arn] unless input[:antenna_uplink_config_arn].nil?
        data
      end
    end

    # Structure Builder for AntennaUplinkConfig
    class AntennaUplinkConfig
      def self.build(input)
        data = {}
        data['transmitDisabled'] = input[:transmit_disabled] unless input[:transmit_disabled].nil?
        data['spectrumConfig'] = Builders::UplinkSpectrumConfig.build(input[:spectrum_config]) unless input[:spectrum_config].nil?
        data['targetEirp'] = Builders::Eirp.build(input[:target_eirp]) unless input[:target_eirp].nil?
        data
      end
    end

    # Structure Builder for Eirp
    class Eirp
      def self.build(input)
        data = {}
        data['value'] = Hearth::NumberHelper.serialize(input[:value]) unless input[:value].nil?
        data['units'] = input[:units] unless input[:units].nil?
        data
      end
    end

    # Structure Builder for UplinkSpectrumConfig
    class UplinkSpectrumConfig
      def self.build(input)
        data = {}
        data['centerFrequency'] = Builders::Frequency.build(input[:center_frequency]) unless input[:center_frequency].nil?
        data['polarization'] = input[:polarization] unless input[:polarization].nil?
        data
      end
    end

    # Structure Builder for Frequency
    class Frequency
      def self.build(input)
        data = {}
        data['value'] = Hearth::NumberHelper.serialize(input[:value]) unless input[:value].nil?
        data['units'] = input[:units] unless input[:units].nil?
        data
      end
    end

    # Structure Builder for AntennaDownlinkDemodDecodeConfig
    class AntennaDownlinkDemodDecodeConfig
      def self.build(input)
        data = {}
        data['spectrumConfig'] = Builders::SpectrumConfig.build(input[:spectrum_config]) unless input[:spectrum_config].nil?
        data['demodulationConfig'] = Builders::DemodulationConfig.build(input[:demodulation_config]) unless input[:demodulation_config].nil?
        data['decodeConfig'] = Builders::DecodeConfig.build(input[:decode_config]) unless input[:decode_config].nil?
        data
      end
    end

    # Structure Builder for DecodeConfig
    class DecodeConfig
      def self.build(input)
        data = {}
        data['unvalidatedJSON'] = input[:unvalidated_json] unless input[:unvalidated_json].nil?
        data
      end
    end

    # Structure Builder for DemodulationConfig
    class DemodulationConfig
      def self.build(input)
        data = {}
        data['unvalidatedJSON'] = input[:unvalidated_json] unless input[:unvalidated_json].nil?
        data
      end
    end

    # Structure Builder for SpectrumConfig
    class SpectrumConfig
      def self.build(input)
        data = {}
        data['centerFrequency'] = Builders::Frequency.build(input[:center_frequency]) unless input[:center_frequency].nil?
        data['bandwidth'] = Builders::FrequencyBandwidth.build(input[:bandwidth]) unless input[:bandwidth].nil?
        data['polarization'] = input[:polarization] unless input[:polarization].nil?
        data
      end
    end

    # Structure Builder for FrequencyBandwidth
    class FrequencyBandwidth
      def self.build(input)
        data = {}
        data['value'] = Hearth::NumberHelper.serialize(input[:value]) unless input[:value].nil?
        data['units'] = input[:units] unless input[:units].nil?
        data
      end
    end

    # Structure Builder for DataflowEndpointConfig
    class DataflowEndpointConfig
      def self.build(input)
        data = {}
        data['dataflowEndpointName'] = input[:dataflow_endpoint_name] unless input[:dataflow_endpoint_name].nil?
        data['dataflowEndpointRegion'] = input[:dataflow_endpoint_region] unless input[:dataflow_endpoint_region].nil?
        data
      end
    end

    # Structure Builder for TrackingConfig
    class TrackingConfig
      def self.build(input)
        data = {}
        data['autotrack'] = input[:autotrack] unless input[:autotrack].nil?
        data
      end
    end

    # Structure Builder for AntennaDownlinkConfig
    class AntennaDownlinkConfig
      def self.build(input)
        data = {}
        data['spectrumConfig'] = Builders::SpectrumConfig.build(input[:spectrum_config]) unless input[:spectrum_config].nil?
        data
      end
    end

    # Operation Builder for CreateDataflowEndpointGroup
    class CreateDataflowEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/dataflowEndpointGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['endpointDetails'] = Builders::EndpointDetailsList.build(input[:endpoint_details]) unless input[:endpoint_details].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EndpointDetailsList
    class EndpointDetailsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EndpointDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EndpointDetails
    class EndpointDetails
      def self.build(input)
        data = {}
        data['securityDetails'] = Builders::SecurityDetails.build(input[:security_details]) unless input[:security_details].nil?
        data['endpoint'] = Builders::DataflowEndpoint.build(input[:endpoint]) unless input[:endpoint].nil?
        data
      end
    end

    # Structure Builder for DataflowEndpoint
    class DataflowEndpoint
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['address'] = Builders::SocketAddress.build(input[:address]) unless input[:address].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['mtu'] = input[:mtu] unless input[:mtu].nil?
        data
      end
    end

    # Structure Builder for SocketAddress
    class SocketAddress
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['port'] = input[:port] unless input[:port].nil?
        data
      end
    end

    # Structure Builder for SecurityDetails
    class SecurityDetails
      def self.build(input)
        data = {}
        data['subnetIds'] = Builders::SubnetList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['securityGroupIds'] = Builders::SecurityGroupIdList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # List Builder for SecurityGroupIdList
    class SecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetList
    class SubnetList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateMissionProfile
    class CreateMissionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/missionprofile')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['contactPrePassDurationSeconds'] = input[:contact_pre_pass_duration_seconds] unless input[:contact_pre_pass_duration_seconds].nil?
        data['contactPostPassDurationSeconds'] = input[:contact_post_pass_duration_seconds] unless input[:contact_post_pass_duration_seconds].nil?
        data['minimumViableContactDurationSeconds'] = input[:minimum_viable_contact_duration_seconds] unless input[:minimum_viable_contact_duration_seconds].nil?
        data['dataflowEdges'] = Builders::DataflowEdgeList.build(input[:dataflow_edges]) unless input[:dataflow_edges].nil?
        data['trackingConfigArn'] = input[:tracking_config_arn] unless input[:tracking_config_arn].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DataflowEdgeList
    class DataflowEdgeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataflowEdge.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for DataflowEdge
    class DataflowEdge
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteConfig
    class DeleteConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:config_id].to_s.empty?
          raise ArgumentError, "HTTP label :config_id cannot be nil or empty."
        end
        if input[:config_type].to_s.empty?
          raise ArgumentError, "HTTP label :config_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/config/%<configType>s/%<configId>s',
            configId: Hearth::HTTP.uri_escape(input[:config_id].to_s),
            configType: Hearth::HTTP.uri_escape(input[:config_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDataflowEndpointGroup
    class DeleteDataflowEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:dataflow_endpoint_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataflow_endpoint_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dataflowEndpointGroup/%<dataflowEndpointGroupId>s',
            dataflowEndpointGroupId: Hearth::HTTP.uri_escape(input[:dataflow_endpoint_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMissionProfile
    class DeleteMissionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:mission_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :mission_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/missionprofile/%<missionProfileId>s',
            missionProfileId: Hearth::HTTP.uri_escape(input[:mission_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeContact
    class DescribeContact
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:contact_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact/%<contactId>s',
            contactId: Hearth::HTTP.uri_escape(input[:contact_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConfig
    class GetConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:config_id].to_s.empty?
          raise ArgumentError, "HTTP label :config_id cannot be nil or empty."
        end
        if input[:config_type].to_s.empty?
          raise ArgumentError, "HTTP label :config_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/config/%<configType>s/%<configId>s',
            configId: Hearth::HTTP.uri_escape(input[:config_id].to_s),
            configType: Hearth::HTTP.uri_escape(input[:config_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDataflowEndpointGroup
    class GetDataflowEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:dataflow_endpoint_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataflow_endpoint_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dataflowEndpointGroup/%<dataflowEndpointGroupId>s',
            dataflowEndpointGroupId: Hearth::HTTP.uri_escape(input[:dataflow_endpoint_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMinuteUsage
    class GetMinuteUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/minute-usage')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['month'] = input[:month] unless input[:month].nil?
        data['year'] = input[:year] unless input[:year].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMissionProfile
    class GetMissionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:mission_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :mission_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/missionprofile/%<missionProfileId>s',
            missionProfileId: Hearth::HTTP.uri_escape(input[:mission_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSatellite
    class GetSatellite
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:satellite_id].to_s.empty?
          raise ArgumentError, "HTTP label :satellite_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/satellite/%<satelliteId>s',
            satelliteId: Hearth::HTTP.uri_escape(input[:satellite_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConfigs
    class ListConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/config')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListContacts
    class ListContacts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contacts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['statusList'] = Builders::StatusList.build(input[:status_list]) unless input[:status_list].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['groundStation'] = input[:ground_station] unless input[:ground_station].nil?
        data['satelliteArn'] = input[:satellite_arn] unless input[:satellite_arn].nil?
        data['missionProfileArn'] = input[:mission_profile_arn] unless input[:mission_profile_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StatusList
    class StatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListDataflowEndpointGroups
    class ListDataflowEndpointGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/dataflowEndpointGroup')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGroundStations
    class ListGroundStations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/groundstation')
        params = Hearth::Query::ParamList.new
        params['satelliteId'] = input[:satellite_id].to_s unless input[:satellite_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMissionProfiles
    class ListMissionProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/missionprofile')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSatellites
    class ListSatellites
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/satellite')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ReserveContact
    class ReserveContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['missionProfileArn'] = input[:mission_profile_arn] unless input[:mission_profile_arn].nil?
        data['satelliteArn'] = input[:satellite_arn] unless input[:satellite_arn].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['groundStation'] = input[:ground_station] unless input[:ground_station].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateConfig
    class UpdateConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:config_id].to_s.empty?
          raise ArgumentError, "HTTP label :config_id cannot be nil or empty."
        end
        if input[:config_type].to_s.empty?
          raise ArgumentError, "HTTP label :config_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/config/%<configType>s/%<configId>s',
            configId: Hearth::HTTP.uri_escape(input[:config_id].to_s),
            configType: Hearth::HTTP.uri_escape(input[:config_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['configData'] = Builders::ConfigTypeData.build(input[:config_data]) unless input[:config_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMissionProfile
    class UpdateMissionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:mission_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :mission_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/missionprofile/%<missionProfileId>s',
            missionProfileId: Hearth::HTTP.uri_escape(input[:mission_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['contactPrePassDurationSeconds'] = input[:contact_pre_pass_duration_seconds] unless input[:contact_pre_pass_duration_seconds].nil?
        data['contactPostPassDurationSeconds'] = input[:contact_post_pass_duration_seconds] unless input[:contact_post_pass_duration_seconds].nil?
        data['minimumViableContactDurationSeconds'] = input[:minimum_viable_contact_duration_seconds] unless input[:minimum_viable_contact_duration_seconds].nil?
        data['dataflowEdges'] = Builders::DataflowEdgeList.build(input[:dataflow_edges]) unless input[:dataflow_edges].nil?
        data['trackingConfigArn'] = input[:tracking_config_arn] unless input[:tracking_config_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
