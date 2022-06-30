# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::GroundStation
  module Params

    module AntennaDemodDecodeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AntennaDemodDecodeDetails, context: context)
        type = Types::AntennaDemodDecodeDetails.new
        type.output_node = params[:output_node]
        type
      end
    end

    module AntennaDownlinkConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AntennaDownlinkConfig, context: context)
        type = Types::AntennaDownlinkConfig.new
        type.spectrum_config = SpectrumConfig.build(params[:spectrum_config], context: "#{context}[:spectrum_config]") unless params[:spectrum_config].nil?
        type
      end
    end

    module AntennaDownlinkDemodDecodeConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AntennaDownlinkDemodDecodeConfig, context: context)
        type = Types::AntennaDownlinkDemodDecodeConfig.new
        type.spectrum_config = SpectrumConfig.build(params[:spectrum_config], context: "#{context}[:spectrum_config]") unless params[:spectrum_config].nil?
        type.demodulation_config = DemodulationConfig.build(params[:demodulation_config], context: "#{context}[:demodulation_config]") unless params[:demodulation_config].nil?
        type.decode_config = DecodeConfig.build(params[:decode_config], context: "#{context}[:decode_config]") unless params[:decode_config].nil?
        type
      end
    end

    module AntennaUplinkConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AntennaUplinkConfig, context: context)
        type = Types::AntennaUplinkConfig.new
        type.transmit_disabled = params[:transmit_disabled]
        type.spectrum_config = UplinkSpectrumConfig.build(params[:spectrum_config], context: "#{context}[:spectrum_config]") unless params[:spectrum_config].nil?
        type.target_eirp = Eirp.build(params[:target_eirp], context: "#{context}[:target_eirp]") unless params[:target_eirp].nil?
        type
      end
    end

    module CancelContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelContactInput, context: context)
        type = Types::CancelContactInput.new
        type.contact_id = params[:contact_id]
        type
      end
    end

    module CancelContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelContactOutput, context: context)
        type = Types::CancelContactOutput.new
        type.contact_id = params[:contact_id]
        type
      end
    end

    module ConfigDetails
      def self.build(params, context: '')
        return params if params.is_a?(Types::ConfigDetails)
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigDetails, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :endpoint_details
          Types::ConfigDetails::EndpointDetails.new(
            (EndpointDetails.build(params[:endpoint_details], context: "#{context}[:endpoint_details]") unless params[:endpoint_details].nil?)
          )
        when :antenna_demod_decode_details
          Types::ConfigDetails::AntennaDemodDecodeDetails.new(
            (AntennaDemodDecodeDetails.build(params[:antenna_demod_decode_details], context: "#{context}[:antenna_demod_decode_details]") unless params[:antenna_demod_decode_details].nil?)
          )
        when :s3_recording_details
          Types::ConfigDetails::S3RecordingDetails.new(
            (S3RecordingDetails.build(params[:s3_recording_details], context: "#{context}[:s3_recording_details]") unless params[:s3_recording_details].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :endpoint_details, :antenna_demod_decode_details, :s3_recording_details set"
        end
      end
    end

    module ConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigListItem, context: context)
        type = Types::ConfigListItem.new
        type.config_id = params[:config_id]
        type.config_type = params[:config_type]
        type.config_arn = params[:config_arn]
        type.name = params[:name]
        type
      end
    end

    module ConfigTypeData
      def self.build(params, context: '')
        return params if params.is_a?(Types::ConfigTypeData)
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigTypeData, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :antenna_downlink_config
          Types::ConfigTypeData::AntennaDownlinkConfig.new(
            (AntennaDownlinkConfig.build(params[:antenna_downlink_config], context: "#{context}[:antenna_downlink_config]") unless params[:antenna_downlink_config].nil?)
          )
        when :tracking_config
          Types::ConfigTypeData::TrackingConfig.new(
            (TrackingConfig.build(params[:tracking_config], context: "#{context}[:tracking_config]") unless params[:tracking_config].nil?)
          )
        when :dataflow_endpoint_config
          Types::ConfigTypeData::DataflowEndpointConfig.new(
            (DataflowEndpointConfig.build(params[:dataflow_endpoint_config], context: "#{context}[:dataflow_endpoint_config]") unless params[:dataflow_endpoint_config].nil?)
          )
        when :antenna_downlink_demod_decode_config
          Types::ConfigTypeData::AntennaDownlinkDemodDecodeConfig.new(
            (AntennaDownlinkDemodDecodeConfig.build(params[:antenna_downlink_demod_decode_config], context: "#{context}[:antenna_downlink_demod_decode_config]") unless params[:antenna_downlink_demod_decode_config].nil?)
          )
        when :antenna_uplink_config
          Types::ConfigTypeData::AntennaUplinkConfig.new(
            (AntennaUplinkConfig.build(params[:antenna_uplink_config], context: "#{context}[:antenna_uplink_config]") unless params[:antenna_uplink_config].nil?)
          )
        when :uplink_echo_config
          Types::ConfigTypeData::UplinkEchoConfig.new(
            (UplinkEchoConfig.build(params[:uplink_echo_config], context: "#{context}[:uplink_echo_config]") unless params[:uplink_echo_config].nil?)
          )
        when :s3_recording_config
          Types::ConfigTypeData::S3RecordingConfig.new(
            (S3RecordingConfig.build(params[:s3_recording_config], context: "#{context}[:s3_recording_config]") unless params[:s3_recording_config].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :antenna_downlink_config, :tracking_config, :dataflow_endpoint_config, :antenna_downlink_demod_decode_config, :antenna_uplink_config, :uplink_echo_config, :s3_recording_config set"
        end
      end
    end

    module ContactData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactData, context: context)
        type = Types::ContactData.new
        type.contact_id = params[:contact_id]
        type.mission_profile_arn = params[:mission_profile_arn]
        type.satellite_arn = params[:satellite_arn]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.pre_pass_start_time = params[:pre_pass_start_time]
        type.post_pass_end_time = params[:post_pass_end_time]
        type.ground_station = params[:ground_station]
        type.contact_status = params[:contact_status]
        type.error_message = params[:error_message]
        type.maximum_elevation = Elevation.build(params[:maximum_elevation], context: "#{context}[:maximum_elevation]") unless params[:maximum_elevation].nil?
        type.region = params[:region]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ContactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContactData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigInput, context: context)
        type = Types::CreateConfigInput.new
        type.name = params[:name]
        type.config_data = ConfigTypeData.build(params[:config_data], context: "#{context}[:config_data]") unless params[:config_data].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigOutput, context: context)
        type = Types::CreateConfigOutput.new
        type.config_id = params[:config_id]
        type.config_type = params[:config_type]
        type.config_arn = params[:config_arn]
        type
      end
    end

    module CreateDataflowEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataflowEndpointGroupInput, context: context)
        type = Types::CreateDataflowEndpointGroupInput.new
        type.endpoint_details = EndpointDetailsList.build(params[:endpoint_details], context: "#{context}[:endpoint_details]") unless params[:endpoint_details].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDataflowEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataflowEndpointGroupOutput, context: context)
        type = Types::CreateDataflowEndpointGroupOutput.new
        type.dataflow_endpoint_group_id = params[:dataflow_endpoint_group_id]
        type
      end
    end

    module CreateMissionProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMissionProfileInput, context: context)
        type = Types::CreateMissionProfileInput.new
        type.name = params[:name]
        type.contact_pre_pass_duration_seconds = params[:contact_pre_pass_duration_seconds]
        type.contact_post_pass_duration_seconds = params[:contact_post_pass_duration_seconds]
        type.minimum_viable_contact_duration_seconds = params[:minimum_viable_contact_duration_seconds]
        type.dataflow_edges = DataflowEdgeList.build(params[:dataflow_edges], context: "#{context}[:dataflow_edges]") unless params[:dataflow_edges].nil?
        type.tracking_config_arn = params[:tracking_config_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMissionProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMissionProfileOutput, context: context)
        type = Types::CreateMissionProfileOutput.new
        type.mission_profile_id = params[:mission_profile_id]
        type
      end
    end

    module DataflowDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataflowDetail, context: context)
        type = Types::DataflowDetail.new
        type.source = Source.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.error_message = params[:error_message]
        type
      end
    end

    module DataflowEdge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DataflowEdgeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataflowEdge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataflowEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataflowEndpoint, context: context)
        type = Types::DataflowEndpoint.new
        type.name = params[:name]
        type.address = SocketAddress.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type.status = params[:status]
        type.mtu = params[:mtu]
        type
      end
    end

    module DataflowEndpointConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataflowEndpointConfig, context: context)
        type = Types::DataflowEndpointConfig.new
        type.dataflow_endpoint_name = params[:dataflow_endpoint_name]
        type.dataflow_endpoint_region = params[:dataflow_endpoint_region]
        type
      end
    end

    module DataflowEndpointGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataflowEndpointListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataflowEndpointListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataflowEndpointListItem, context: context)
        type = Types::DataflowEndpointListItem.new
        type.dataflow_endpoint_group_id = params[:dataflow_endpoint_group_id]
        type.dataflow_endpoint_group_arn = params[:dataflow_endpoint_group_arn]
        type
      end
    end

    module DataflowList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataflowDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DecodeConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecodeConfig, context: context)
        type = Types::DecodeConfig.new
        type.unvalidated_json = params[:unvalidated_json]
        type
      end
    end

    module DeleteConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigInput, context: context)
        type = Types::DeleteConfigInput.new
        type.config_id = params[:config_id]
        type.config_type = params[:config_type]
        type
      end
    end

    module DeleteConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigOutput, context: context)
        type = Types::DeleteConfigOutput.new
        type.config_id = params[:config_id]
        type.config_type = params[:config_type]
        type.config_arn = params[:config_arn]
        type
      end
    end

    module DeleteDataflowEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataflowEndpointGroupInput, context: context)
        type = Types::DeleteDataflowEndpointGroupInput.new
        type.dataflow_endpoint_group_id = params[:dataflow_endpoint_group_id]
        type
      end
    end

    module DeleteDataflowEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataflowEndpointGroupOutput, context: context)
        type = Types::DeleteDataflowEndpointGroupOutput.new
        type.dataflow_endpoint_group_id = params[:dataflow_endpoint_group_id]
        type
      end
    end

    module DeleteMissionProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMissionProfileInput, context: context)
        type = Types::DeleteMissionProfileInput.new
        type.mission_profile_id = params[:mission_profile_id]
        type
      end
    end

    module DeleteMissionProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMissionProfileOutput, context: context)
        type = Types::DeleteMissionProfileOutput.new
        type.mission_profile_id = params[:mission_profile_id]
        type
      end
    end

    module DemodulationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DemodulationConfig, context: context)
        type = Types::DemodulationConfig.new
        type.unvalidated_json = params[:unvalidated_json]
        type
      end
    end

    module DependencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependencyException, context: context)
        type = Types::DependencyException.new
        type.message = params[:message]
        type.parameter_name = params[:parameter_name]
        type
      end
    end

    module DescribeContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContactInput, context: context)
        type = Types::DescribeContactInput.new
        type.contact_id = params[:contact_id]
        type
      end
    end

    module DescribeContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContactOutput, context: context)
        type = Types::DescribeContactOutput.new
        type.contact_id = params[:contact_id]
        type.mission_profile_arn = params[:mission_profile_arn]
        type.satellite_arn = params[:satellite_arn]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.pre_pass_start_time = params[:pre_pass_start_time]
        type.post_pass_end_time = params[:post_pass_end_time]
        type.ground_station = params[:ground_station]
        type.contact_status = params[:contact_status]
        type.error_message = params[:error_message]
        type.maximum_elevation = Elevation.build(params[:maximum_elevation], context: "#{context}[:maximum_elevation]") unless params[:maximum_elevation].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.region = params[:region]
        type.dataflow_list = DataflowList.build(params[:dataflow_list], context: "#{context}[:dataflow_list]") unless params[:dataflow_list].nil?
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.config_type = params[:config_type]
        type.config_id = params[:config_id]
        type.config_details = ConfigDetails.build(params[:config_details], context: "#{context}[:config_details]") unless params[:config_details].nil?
        type.dataflow_destination_region = params[:dataflow_destination_region]
        type
      end
    end

    module Eirp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Eirp, context: context)
        type = Types::Eirp.new
        type.value = params[:value]
        type.units = params[:units]
        type
      end
    end

    module Elevation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Elevation, context: context)
        type = Types::Elevation.new
        type.value = params[:value]
        type.unit = params[:unit]
        type
      end
    end

    module EndpointDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointDetails, context: context)
        type = Types::EndpointDetails.new
        type.security_details = SecurityDetails.build(params[:security_details], context: "#{context}[:security_details]") unless params[:security_details].nil?
        type.endpoint = DataflowEndpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type
      end
    end

    module EndpointDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Frequency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Frequency, context: context)
        type = Types::Frequency.new
        type.value = params[:value]
        type.units = params[:units]
        type
      end
    end

    module FrequencyBandwidth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrequencyBandwidth, context: context)
        type = Types::FrequencyBandwidth.new
        type.value = params[:value]
        type.units = params[:units]
        type
      end
    end

    module GetConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigInput, context: context)
        type = Types::GetConfigInput.new
        type.config_id = params[:config_id]
        type.config_type = params[:config_type]
        type
      end
    end

    module GetConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigOutput, context: context)
        type = Types::GetConfigOutput.new
        type.config_id = params[:config_id]
        type.config_arn = params[:config_arn]
        type.name = params[:name]
        type.config_type = params[:config_type]
        type.config_data = ConfigTypeData.build(params[:config_data], context: "#{context}[:config_data]") unless params[:config_data].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetDataflowEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataflowEndpointGroupInput, context: context)
        type = Types::GetDataflowEndpointGroupInput.new
        type.dataflow_endpoint_group_id = params[:dataflow_endpoint_group_id]
        type
      end
    end

    module GetDataflowEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataflowEndpointGroupOutput, context: context)
        type = Types::GetDataflowEndpointGroupOutput.new
        type.dataflow_endpoint_group_id = params[:dataflow_endpoint_group_id]
        type.dataflow_endpoint_group_arn = params[:dataflow_endpoint_group_arn]
        type.endpoints_details = EndpointDetailsList.build(params[:endpoints_details], context: "#{context}[:endpoints_details]") unless params[:endpoints_details].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetMinuteUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMinuteUsageInput, context: context)
        type = Types::GetMinuteUsageInput.new
        type.month = params[:month]
        type.year = params[:year]
        type
      end
    end

    module GetMinuteUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMinuteUsageOutput, context: context)
        type = Types::GetMinuteUsageOutput.new
        type.is_reserved_minutes_customer = params[:is_reserved_minutes_customer]
        type.total_reserved_minute_allocation = params[:total_reserved_minute_allocation]
        type.upcoming_minutes_scheduled = params[:upcoming_minutes_scheduled]
        type.total_scheduled_minutes = params[:total_scheduled_minutes]
        type.estimated_minutes_remaining = params[:estimated_minutes_remaining]
        type
      end
    end

    module GetMissionProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMissionProfileInput, context: context)
        type = Types::GetMissionProfileInput.new
        type.mission_profile_id = params[:mission_profile_id]
        type
      end
    end

    module GetMissionProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMissionProfileOutput, context: context)
        type = Types::GetMissionProfileOutput.new
        type.mission_profile_id = params[:mission_profile_id]
        type.mission_profile_arn = params[:mission_profile_arn]
        type.name = params[:name]
        type.region = params[:region]
        type.contact_pre_pass_duration_seconds = params[:contact_pre_pass_duration_seconds]
        type.contact_post_pass_duration_seconds = params[:contact_post_pass_duration_seconds]
        type.minimum_viable_contact_duration_seconds = params[:minimum_viable_contact_duration_seconds]
        type.dataflow_edges = DataflowEdgeList.build(params[:dataflow_edges], context: "#{context}[:dataflow_edges]") unless params[:dataflow_edges].nil?
        type.tracking_config_arn = params[:tracking_config_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetSatelliteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSatelliteInput, context: context)
        type = Types::GetSatelliteInput.new
        type.satellite_id = params[:satellite_id]
        type
      end
    end

    module GetSatelliteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSatelliteOutput, context: context)
        type = Types::GetSatelliteOutput.new
        type.satellite_id = params[:satellite_id]
        type.satellite_arn = params[:satellite_arn]
        type.norad_satellite_id = params[:norad_satellite_id]
        type.ground_stations = GroundStationIdList.build(params[:ground_stations], context: "#{context}[:ground_stations]") unless params[:ground_stations].nil?
        type
      end
    end

    module GroundStationData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroundStationData, context: context)
        type = Types::GroundStationData.new
        type.ground_station_id = params[:ground_station_id]
        type.ground_station_name = params[:ground_station_name]
        type.region = params[:region]
        type
      end
    end

    module GroundStationIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GroundStationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroundStationData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type.parameter_name = params[:parameter_name]
        type
      end
    end

    module ListConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigsInput, context: context)
        type = Types::ListConfigsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigsOutput, context: context)
        type = Types::ListConfigsOutput.new
        type.next_token = params[:next_token]
        type.config_list = ConfigList.build(params[:config_list], context: "#{context}[:config_list]") unless params[:config_list].nil?
        type
      end
    end

    module ListContactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactsInput, context: context)
        type = Types::ListContactsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.status_list = StatusList.build(params[:status_list], context: "#{context}[:status_list]") unless params[:status_list].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.ground_station = params[:ground_station]
        type.satellite_arn = params[:satellite_arn]
        type.mission_profile_arn = params[:mission_profile_arn]
        type
      end
    end

    module ListContactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactsOutput, context: context)
        type = Types::ListContactsOutput.new
        type.next_token = params[:next_token]
        type.contact_list = ContactList.build(params[:contact_list], context: "#{context}[:contact_list]") unless params[:contact_list].nil?
        type
      end
    end

    module ListDataflowEndpointGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataflowEndpointGroupsInput, context: context)
        type = Types::ListDataflowEndpointGroupsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDataflowEndpointGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataflowEndpointGroupsOutput, context: context)
        type = Types::ListDataflowEndpointGroupsOutput.new
        type.next_token = params[:next_token]
        type.dataflow_endpoint_group_list = DataflowEndpointGroupList.build(params[:dataflow_endpoint_group_list], context: "#{context}[:dataflow_endpoint_group_list]") unless params[:dataflow_endpoint_group_list].nil?
        type
      end
    end

    module ListGroundStationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroundStationsInput, context: context)
        type = Types::ListGroundStationsInput.new
        type.satellite_id = params[:satellite_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGroundStationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroundStationsOutput, context: context)
        type = Types::ListGroundStationsOutput.new
        type.next_token = params[:next_token]
        type.ground_station_list = GroundStationList.build(params[:ground_station_list], context: "#{context}[:ground_station_list]") unless params[:ground_station_list].nil?
        type
      end
    end

    module ListMissionProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMissionProfilesInput, context: context)
        type = Types::ListMissionProfilesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMissionProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMissionProfilesOutput, context: context)
        type = Types::ListMissionProfilesOutput.new
        type.next_token = params[:next_token]
        type.mission_profile_list = MissionProfileList.build(params[:mission_profile_list], context: "#{context}[:mission_profile_list]") unless params[:mission_profile_list].nil?
        type
      end
    end

    module ListSatellitesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSatellitesInput, context: context)
        type = Types::ListSatellitesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSatellitesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSatellitesOutput, context: context)
        type = Types::ListSatellitesOutput.new
        type.next_token = params[:next_token]
        type.satellites = SatelliteList.build(params[:satellites], context: "#{context}[:satellites]") unless params[:satellites].nil?
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
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MissionProfileList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MissionProfileListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MissionProfileListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissionProfileListItem, context: context)
        type = Types::MissionProfileListItem.new
        type.mission_profile_id = params[:mission_profile_id]
        type.mission_profile_arn = params[:mission_profile_arn]
        type.region = params[:region]
        type.name = params[:name]
        type
      end
    end

    module ReserveContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReserveContactInput, context: context)
        type = Types::ReserveContactInput.new
        type.mission_profile_arn = params[:mission_profile_arn]
        type.satellite_arn = params[:satellite_arn]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.ground_station = params[:ground_station]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ReserveContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReserveContactOutput, context: context)
        type = Types::ReserveContactOutput.new
        type.contact_id = params[:contact_id]
        type
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.message = params[:message]
        type.parameter_name = params[:parameter_name]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module S3RecordingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3RecordingConfig, context: context)
        type = Types::S3RecordingConfig.new
        type.bucket_arn = params[:bucket_arn]
        type.role_arn = params[:role_arn]
        type.prefix = params[:prefix]
        type
      end
    end

    module S3RecordingDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3RecordingDetails, context: context)
        type = Types::S3RecordingDetails.new
        type.bucket_arn = params[:bucket_arn]
        type.key_template = params[:key_template]
        type
      end
    end

    module SatelliteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SatelliteListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SatelliteListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SatelliteListItem, context: context)
        type = Types::SatelliteListItem.new
        type.satellite_id = params[:satellite_id]
        type.satellite_arn = params[:satellite_arn]
        type.norad_satellite_id = params[:norad_satellite_id]
        type.ground_stations = GroundStationIdList.build(params[:ground_stations], context: "#{context}[:ground_stations]") unless params[:ground_stations].nil?
        type
      end
    end

    module SecurityDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityDetails, context: context)
        type = Types::SecurityDetails.new
        type.subnet_ids = SubnetList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module SecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SocketAddress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SocketAddress, context: context)
        type = Types::SocketAddress.new
        type.name = params[:name]
        type.port = params[:port]
        type
      end
    end

    module Source
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Source, context: context)
        type = Types::Source.new
        type.config_type = params[:config_type]
        type.config_id = params[:config_id]
        type.config_details = ConfigDetails.build(params[:config_details], context: "#{context}[:config_details]") unless params[:config_details].nil?
        type.dataflow_source_region = params[:dataflow_source_region]
        type
      end
    end

    module SpectrumConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpectrumConfig, context: context)
        type = Types::SpectrumConfig.new
        type.center_frequency = Frequency.build(params[:center_frequency], context: "#{context}[:center_frequency]") unless params[:center_frequency].nil?
        type.bandwidth = FrequencyBandwidth.build(params[:bandwidth], context: "#{context}[:bandwidth]") unless params[:bandwidth].nil?
        type.polarization = params[:polarization]
        type
      end
    end

    module StatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TrackingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrackingConfig, context: context)
        type = Types::TrackingConfig.new
        type.autotrack = params[:autotrack]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigInput, context: context)
        type = Types::UpdateConfigInput.new
        type.config_id = params[:config_id]
        type.name = params[:name]
        type.config_type = params[:config_type]
        type.config_data = ConfigTypeData.build(params[:config_data], context: "#{context}[:config_data]") unless params[:config_data].nil?
        type
      end
    end

    module UpdateConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigOutput, context: context)
        type = Types::UpdateConfigOutput.new
        type.config_id = params[:config_id]
        type.config_type = params[:config_type]
        type.config_arn = params[:config_arn]
        type
      end
    end

    module UpdateMissionProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMissionProfileInput, context: context)
        type = Types::UpdateMissionProfileInput.new
        type.mission_profile_id = params[:mission_profile_id]
        type.name = params[:name]
        type.contact_pre_pass_duration_seconds = params[:contact_pre_pass_duration_seconds]
        type.contact_post_pass_duration_seconds = params[:contact_post_pass_duration_seconds]
        type.minimum_viable_contact_duration_seconds = params[:minimum_viable_contact_duration_seconds]
        type.dataflow_edges = DataflowEdgeList.build(params[:dataflow_edges], context: "#{context}[:dataflow_edges]") unless params[:dataflow_edges].nil?
        type.tracking_config_arn = params[:tracking_config_arn]
        type
      end
    end

    module UpdateMissionProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMissionProfileOutput, context: context)
        type = Types::UpdateMissionProfileOutput.new
        type.mission_profile_id = params[:mission_profile_id]
        type
      end
    end

    module UplinkEchoConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UplinkEchoConfig, context: context)
        type = Types::UplinkEchoConfig.new
        type.enabled = params[:enabled]
        type.antenna_uplink_config_arn = params[:antenna_uplink_config_arn]
        type
      end
    end

    module UplinkSpectrumConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UplinkSpectrumConfig, context: context)
        type = Types::UplinkSpectrumConfig.new
        type.center_frequency = Frequency.build(params[:center_frequency], context: "#{context}[:center_frequency]") unless params[:center_frequency].nil?
        type.polarization = params[:polarization]
        type
      end
    end

  end
end
