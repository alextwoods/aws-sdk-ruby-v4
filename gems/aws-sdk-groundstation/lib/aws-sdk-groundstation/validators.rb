# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GroundStation
  module Validators

    class AntennaDemodDecodeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AntennaDemodDecodeDetails, context: context)
        Hearth::Validator.validate!(input[:output_node], ::String, context: "#{context}[:output_node]")
      end
    end

    class AntennaDownlinkConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AntennaDownlinkConfig, context: context)
        Validators::SpectrumConfig.validate!(input[:spectrum_config], context: "#{context}[:spectrum_config]") unless input[:spectrum_config].nil?
      end
    end

    class AntennaDownlinkDemodDecodeConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AntennaDownlinkDemodDecodeConfig, context: context)
        Validators::SpectrumConfig.validate!(input[:spectrum_config], context: "#{context}[:spectrum_config]") unless input[:spectrum_config].nil?
        Validators::DemodulationConfig.validate!(input[:demodulation_config], context: "#{context}[:demodulation_config]") unless input[:demodulation_config].nil?
        Validators::DecodeConfig.validate!(input[:decode_config], context: "#{context}[:decode_config]") unless input[:decode_config].nil?
      end
    end

    class AntennaUplinkConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AntennaUplinkConfig, context: context)
        Hearth::Validator.validate!(input[:transmit_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:transmit_disabled]")
        Validators::UplinkSpectrumConfig.validate!(input[:spectrum_config], context: "#{context}[:spectrum_config]") unless input[:spectrum_config].nil?
        Validators::Eirp.validate!(input[:target_eirp], context: "#{context}[:target_eirp]") unless input[:target_eirp].nil?
      end
    end

    class CancelContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
      end
    end

    class CancelContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
      end
    end

    class ConfigDetails
      def self.validate!(input, context:)
        case input
        when Types::ConfigDetails::EndpointDetails
          Validators::EndpointDetails.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ConfigDetails::AntennaDemodDecodeDetails
          Validators::AntennaDemodDecodeDetails.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ConfigDetails::S3RecordingDetails
          Validators::S3RecordingDetails.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ConfigDetails, got #{input.class}."
        end
      end

      class EndpointDetails
        def self.validate!(input, context:)
          Validators::EndpointDetails.validate!(input, context: context) unless input.nil?
        end
      end

      class AntennaDemodDecodeDetails
        def self.validate!(input, context:)
          Validators::AntennaDemodDecodeDetails.validate!(input, context: context) unless input.nil?
        end
      end

      class S3RecordingDetails
        def self.validate!(input, context:)
          Validators::S3RecordingDetails.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConfigListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigListItem, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
        Hearth::Validator.validate!(input[:config_arn], ::String, context: "#{context}[:config_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ConfigTypeData
      def self.validate!(input, context:)
        case input
        when Types::ConfigTypeData::AntennaDownlinkConfig
          Validators::AntennaDownlinkConfig.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ConfigTypeData::TrackingConfig
          Validators::TrackingConfig.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ConfigTypeData::DataflowEndpointConfig
          Validators::DataflowEndpointConfig.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ConfigTypeData::AntennaDownlinkDemodDecodeConfig
          Validators::AntennaDownlinkDemodDecodeConfig.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ConfigTypeData::AntennaUplinkConfig
          Validators::AntennaUplinkConfig.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ConfigTypeData::UplinkEchoConfig
          Validators::UplinkEchoConfig.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ConfigTypeData::S3RecordingConfig
          Validators::S3RecordingConfig.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ConfigTypeData, got #{input.class}."
        end
      end

      class AntennaDownlinkConfig
        def self.validate!(input, context:)
          Validators::AntennaDownlinkConfig.validate!(input, context: context) unless input.nil?
        end
      end

      class TrackingConfig
        def self.validate!(input, context:)
          Validators::TrackingConfig.validate!(input, context: context) unless input.nil?
        end
      end

      class DataflowEndpointConfig
        def self.validate!(input, context:)
          Validators::DataflowEndpointConfig.validate!(input, context: context) unless input.nil?
        end
      end

      class AntennaDownlinkDemodDecodeConfig
        def self.validate!(input, context:)
          Validators::AntennaDownlinkDemodDecodeConfig.validate!(input, context: context) unless input.nil?
        end
      end

      class AntennaUplinkConfig
        def self.validate!(input, context:)
          Validators::AntennaUplinkConfig.validate!(input, context: context) unless input.nil?
        end
      end

      class UplinkEchoConfig
        def self.validate!(input, context:)
          Validators::UplinkEchoConfig.validate!(input, context: context) unless input.nil?
        end
      end

      class S3RecordingConfig
        def self.validate!(input, context:)
          Validators::S3RecordingConfig.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ContactData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactData, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:mission_profile_arn], ::String, context: "#{context}[:mission_profile_arn]")
        Hearth::Validator.validate!(input[:satellite_arn], ::String, context: "#{context}[:satellite_arn]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:pre_pass_start_time], ::Time, context: "#{context}[:pre_pass_start_time]")
        Hearth::Validator.validate!(input[:post_pass_end_time], ::Time, context: "#{context}[:post_pass_end_time]")
        Hearth::Validator.validate!(input[:ground_station], ::String, context: "#{context}[:ground_station]")
        Hearth::Validator.validate!(input[:contact_status], ::String, context: "#{context}[:contact_status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Validators::Elevation.validate!(input[:maximum_elevation], context: "#{context}[:maximum_elevation]") unless input[:maximum_elevation].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ContactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ContactData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ConfigTypeData.validate!(input[:config_data], context: "#{context}[:config_data]") unless input[:config_data].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigOutput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
        Hearth::Validator.validate!(input[:config_arn], ::String, context: "#{context}[:config_arn]")
      end
    end

    class CreateDataflowEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataflowEndpointGroupInput, context: context)
        Validators::EndpointDetailsList.validate!(input[:endpoint_details], context: "#{context}[:endpoint_details]") unless input[:endpoint_details].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDataflowEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataflowEndpointGroupOutput, context: context)
        Hearth::Validator.validate!(input[:dataflow_endpoint_group_id], ::String, context: "#{context}[:dataflow_endpoint_group_id]")
      end
    end

    class CreateMissionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMissionProfileInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:contact_pre_pass_duration_seconds], ::Integer, context: "#{context}[:contact_pre_pass_duration_seconds]")
        Hearth::Validator.validate!(input[:contact_post_pass_duration_seconds], ::Integer, context: "#{context}[:contact_post_pass_duration_seconds]")
        Hearth::Validator.validate!(input[:minimum_viable_contact_duration_seconds], ::Integer, context: "#{context}[:minimum_viable_contact_duration_seconds]")
        Validators::DataflowEdgeList.validate!(input[:dataflow_edges], context: "#{context}[:dataflow_edges]") unless input[:dataflow_edges].nil?
        Hearth::Validator.validate!(input[:tracking_config_arn], ::String, context: "#{context}[:tracking_config_arn]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMissionProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMissionProfileOutput, context: context)
        Hearth::Validator.validate!(input[:mission_profile_id], ::String, context: "#{context}[:mission_profile_id]")
      end
    end

    class DataflowDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataflowDetail, context: context)
        Validators::Source.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Validators::Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class DataflowEdge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DataflowEdgeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataflowEdge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataflowEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataflowEndpoint, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::SocketAddress.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
      end
    end

    class DataflowEndpointConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataflowEndpointConfig, context: context)
        Hearth::Validator.validate!(input[:dataflow_endpoint_name], ::String, context: "#{context}[:dataflow_endpoint_name]")
        Hearth::Validator.validate!(input[:dataflow_endpoint_region], ::String, context: "#{context}[:dataflow_endpoint_region]")
      end
    end

    class DataflowEndpointGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataflowEndpointListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataflowEndpointListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataflowEndpointListItem, context: context)
        Hearth::Validator.validate!(input[:dataflow_endpoint_group_id], ::String, context: "#{context}[:dataflow_endpoint_group_id]")
        Hearth::Validator.validate!(input[:dataflow_endpoint_group_arn], ::String, context: "#{context}[:dataflow_endpoint_group_arn]")
      end
    end

    class DataflowList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataflowDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DecodeConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecodeConfig, context: context)
        Hearth::Validator.validate!(input[:unvalidated_json], ::String, context: "#{context}[:unvalidated_json]")
      end
    end

    class DeleteConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigInput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
      end
    end

    class DeleteConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigOutput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
        Hearth::Validator.validate!(input[:config_arn], ::String, context: "#{context}[:config_arn]")
      end
    end

    class DeleteDataflowEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataflowEndpointGroupInput, context: context)
        Hearth::Validator.validate!(input[:dataflow_endpoint_group_id], ::String, context: "#{context}[:dataflow_endpoint_group_id]")
      end
    end

    class DeleteDataflowEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataflowEndpointGroupOutput, context: context)
        Hearth::Validator.validate!(input[:dataflow_endpoint_group_id], ::String, context: "#{context}[:dataflow_endpoint_group_id]")
      end
    end

    class DeleteMissionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMissionProfileInput, context: context)
        Hearth::Validator.validate!(input[:mission_profile_id], ::String, context: "#{context}[:mission_profile_id]")
      end
    end

    class DeleteMissionProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMissionProfileOutput, context: context)
        Hearth::Validator.validate!(input[:mission_profile_id], ::String, context: "#{context}[:mission_profile_id]")
      end
    end

    class DemodulationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DemodulationConfig, context: context)
        Hearth::Validator.validate!(input[:unvalidated_json], ::String, context: "#{context}[:unvalidated_json]")
      end
    end

    class DependencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
      end
    end

    class DescribeContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
      end
    end

    class DescribeContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:mission_profile_arn], ::String, context: "#{context}[:mission_profile_arn]")
        Hearth::Validator.validate!(input[:satellite_arn], ::String, context: "#{context}[:satellite_arn]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:pre_pass_start_time], ::Time, context: "#{context}[:pre_pass_start_time]")
        Hearth::Validator.validate!(input[:post_pass_end_time], ::Time, context: "#{context}[:post_pass_end_time]")
        Hearth::Validator.validate!(input[:ground_station], ::String, context: "#{context}[:ground_station]")
        Hearth::Validator.validate!(input[:contact_status], ::String, context: "#{context}[:contact_status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Validators::Elevation.validate!(input[:maximum_elevation], context: "#{context}[:maximum_elevation]") unless input[:maximum_elevation].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Validators::DataflowList.validate!(input[:dataflow_list], context: "#{context}[:dataflow_list]") unless input[:dataflow_list].nil?
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Validators::ConfigDetails.validate!(input[:config_details], context: "#{context}[:config_details]") unless input[:config_details].nil?
        Hearth::Validator.validate!(input[:dataflow_destination_region], ::String, context: "#{context}[:dataflow_destination_region]")
      end
    end

    class Eirp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Eirp, context: context)
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:units], ::String, context: "#{context}[:units]")
      end
    end

    class Elevation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Elevation, context: context)
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class EndpointDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointDetails, context: context)
        Validators::SecurityDetails.validate!(input[:security_details], context: "#{context}[:security_details]") unless input[:security_details].nil?
        Validators::DataflowEndpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
      end
    end

    class EndpointDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EndpointDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Frequency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Frequency, context: context)
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:units], ::String, context: "#{context}[:units]")
      end
    end

    class FrequencyBandwidth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrequencyBandwidth, context: context)
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:units], ::String, context: "#{context}[:units]")
      end
    end

    class GetConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigInput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
      end
    end

    class GetConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigOutput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:config_arn], ::String, context: "#{context}[:config_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
        Validators::ConfigTypeData.validate!(input[:config_data], context: "#{context}[:config_data]") unless input[:config_data].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetDataflowEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataflowEndpointGroupInput, context: context)
        Hearth::Validator.validate!(input[:dataflow_endpoint_group_id], ::String, context: "#{context}[:dataflow_endpoint_group_id]")
      end
    end

    class GetDataflowEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataflowEndpointGroupOutput, context: context)
        Hearth::Validator.validate!(input[:dataflow_endpoint_group_id], ::String, context: "#{context}[:dataflow_endpoint_group_id]")
        Hearth::Validator.validate!(input[:dataflow_endpoint_group_arn], ::String, context: "#{context}[:dataflow_endpoint_group_arn]")
        Validators::EndpointDetailsList.validate!(input[:endpoints_details], context: "#{context}[:endpoints_details]") unless input[:endpoints_details].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetMinuteUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMinuteUsageInput, context: context)
        Hearth::Validator.validate!(input[:month], ::Integer, context: "#{context}[:month]")
        Hearth::Validator.validate!(input[:year], ::Integer, context: "#{context}[:year]")
      end
    end

    class GetMinuteUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMinuteUsageOutput, context: context)
        Hearth::Validator.validate!(input[:is_reserved_minutes_customer], ::TrueClass, ::FalseClass, context: "#{context}[:is_reserved_minutes_customer]")
        Hearth::Validator.validate!(input[:total_reserved_minute_allocation], ::Integer, context: "#{context}[:total_reserved_minute_allocation]")
        Hearth::Validator.validate!(input[:upcoming_minutes_scheduled], ::Integer, context: "#{context}[:upcoming_minutes_scheduled]")
        Hearth::Validator.validate!(input[:total_scheduled_minutes], ::Integer, context: "#{context}[:total_scheduled_minutes]")
        Hearth::Validator.validate!(input[:estimated_minutes_remaining], ::Integer, context: "#{context}[:estimated_minutes_remaining]")
      end
    end

    class GetMissionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMissionProfileInput, context: context)
        Hearth::Validator.validate!(input[:mission_profile_id], ::String, context: "#{context}[:mission_profile_id]")
      end
    end

    class GetMissionProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMissionProfileOutput, context: context)
        Hearth::Validator.validate!(input[:mission_profile_id], ::String, context: "#{context}[:mission_profile_id]")
        Hearth::Validator.validate!(input[:mission_profile_arn], ::String, context: "#{context}[:mission_profile_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:contact_pre_pass_duration_seconds], ::Integer, context: "#{context}[:contact_pre_pass_duration_seconds]")
        Hearth::Validator.validate!(input[:contact_post_pass_duration_seconds], ::Integer, context: "#{context}[:contact_post_pass_duration_seconds]")
        Hearth::Validator.validate!(input[:minimum_viable_contact_duration_seconds], ::Integer, context: "#{context}[:minimum_viable_contact_duration_seconds]")
        Validators::DataflowEdgeList.validate!(input[:dataflow_edges], context: "#{context}[:dataflow_edges]") unless input[:dataflow_edges].nil?
        Hearth::Validator.validate!(input[:tracking_config_arn], ::String, context: "#{context}[:tracking_config_arn]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetSatelliteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSatelliteInput, context: context)
        Hearth::Validator.validate!(input[:satellite_id], ::String, context: "#{context}[:satellite_id]")
      end
    end

    class GetSatelliteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSatelliteOutput, context: context)
        Hearth::Validator.validate!(input[:satellite_id], ::String, context: "#{context}[:satellite_id]")
        Hearth::Validator.validate!(input[:satellite_arn], ::String, context: "#{context}[:satellite_arn]")
        Hearth::Validator.validate!(input[:norad_satellite_id], ::Integer, context: "#{context}[:norad_satellite_id]")
        Validators::GroundStationIdList.validate!(input[:ground_stations], context: "#{context}[:ground_stations]") unless input[:ground_stations].nil?
      end
    end

    class GroundStationData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroundStationData, context: context)
        Hearth::Validator.validate!(input[:ground_station_id], ::String, context: "#{context}[:ground_station_id]")
        Hearth::Validator.validate!(input[:ground_station_name], ::String, context: "#{context}[:ground_station_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class GroundStationIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GroundStationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroundStationData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
      end
    end

    class ListConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ConfigList.validate!(input[:config_list], context: "#{context}[:config_list]") unless input[:config_list].nil?
      end
    end

    class ListContactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::StatusList.validate!(input[:status_list], context: "#{context}[:status_list]") unless input[:status_list].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:ground_station], ::String, context: "#{context}[:ground_station]")
        Hearth::Validator.validate!(input[:satellite_arn], ::String, context: "#{context}[:satellite_arn]")
        Hearth::Validator.validate!(input[:mission_profile_arn], ::String, context: "#{context}[:mission_profile_arn]")
      end
    end

    class ListContactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ContactList.validate!(input[:contact_list], context: "#{context}[:contact_list]") unless input[:contact_list].nil?
      end
    end

    class ListDataflowEndpointGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataflowEndpointGroupsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDataflowEndpointGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataflowEndpointGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::DataflowEndpointGroupList.validate!(input[:dataflow_endpoint_group_list], context: "#{context}[:dataflow_endpoint_group_list]") unless input[:dataflow_endpoint_group_list].nil?
      end
    end

    class ListGroundStationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroundStationsInput, context: context)
        Hearth::Validator.validate!(input[:satellite_id], ::String, context: "#{context}[:satellite_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGroundStationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroundStationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::GroundStationList.validate!(input[:ground_station_list], context: "#{context}[:ground_station_list]") unless input[:ground_station_list].nil?
      end
    end

    class ListMissionProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMissionProfilesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMissionProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMissionProfilesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::MissionProfileList.validate!(input[:mission_profile_list], context: "#{context}[:mission_profile_list]") unless input[:mission_profile_list].nil?
      end
    end

    class ListSatellitesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSatellitesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSatellitesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSatellitesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::SatelliteList.validate!(input[:satellites], context: "#{context}[:satellites]") unless input[:satellites].nil?
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
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MissionProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MissionProfileListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MissionProfileListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissionProfileListItem, context: context)
        Hearth::Validator.validate!(input[:mission_profile_id], ::String, context: "#{context}[:mission_profile_id]")
        Hearth::Validator.validate!(input[:mission_profile_arn], ::String, context: "#{context}[:mission_profile_arn]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ReserveContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReserveContactInput, context: context)
        Hearth::Validator.validate!(input[:mission_profile_arn], ::String, context: "#{context}[:mission_profile_arn]")
        Hearth::Validator.validate!(input[:satellite_arn], ::String, context: "#{context}[:satellite_arn]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:ground_station], ::String, context: "#{context}[:ground_station]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ReserveContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReserveContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3RecordingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3RecordingConfig, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class S3RecordingDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3RecordingDetails, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:key_template], ::String, context: "#{context}[:key_template]")
      end
    end

    class SatelliteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SatelliteListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SatelliteListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SatelliteListItem, context: context)
        Hearth::Validator.validate!(input[:satellite_id], ::String, context: "#{context}[:satellite_id]")
        Hearth::Validator.validate!(input[:satellite_arn], ::String, context: "#{context}[:satellite_arn]")
        Hearth::Validator.validate!(input[:norad_satellite_id], ::Integer, context: "#{context}[:norad_satellite_id]")
        Validators::GroundStationIdList.validate!(input[:ground_stations], context: "#{context}[:ground_stations]") unless input[:ground_stations].nil?
      end
    end

    class SecurityDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityDetails, context: context)
        Validators::SubnetList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class SecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SocketAddress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SocketAddress, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class Source
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Source, context: context)
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Validators::ConfigDetails.validate!(input[:config_details], context: "#{context}[:config_details]") unless input[:config_details].nil?
        Hearth::Validator.validate!(input[:dataflow_source_region], ::String, context: "#{context}[:dataflow_source_region]")
      end
    end

    class SpectrumConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpectrumConfig, context: context)
        Validators::Frequency.validate!(input[:center_frequency], context: "#{context}[:center_frequency]") unless input[:center_frequency].nil?
        Validators::FrequencyBandwidth.validate!(input[:bandwidth], context: "#{context}[:bandwidth]") unless input[:bandwidth].nil?
        Hearth::Validator.validate!(input[:polarization], ::String, context: "#{context}[:polarization]")
      end
    end

    class StatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TrackingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrackingConfig, context: context)
        Hearth::Validator.validate!(input[:autotrack], ::String, context: "#{context}[:autotrack]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigInput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
        Validators::ConfigTypeData.validate!(input[:config_data], context: "#{context}[:config_data]") unless input[:config_data].nil?
      end
    end

    class UpdateConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigOutput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
        Hearth::Validator.validate!(input[:config_arn], ::String, context: "#{context}[:config_arn]")
      end
    end

    class UpdateMissionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMissionProfileInput, context: context)
        Hearth::Validator.validate!(input[:mission_profile_id], ::String, context: "#{context}[:mission_profile_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:contact_pre_pass_duration_seconds], ::Integer, context: "#{context}[:contact_pre_pass_duration_seconds]")
        Hearth::Validator.validate!(input[:contact_post_pass_duration_seconds], ::Integer, context: "#{context}[:contact_post_pass_duration_seconds]")
        Hearth::Validator.validate!(input[:minimum_viable_contact_duration_seconds], ::Integer, context: "#{context}[:minimum_viable_contact_duration_seconds]")
        Validators::DataflowEdgeList.validate!(input[:dataflow_edges], context: "#{context}[:dataflow_edges]") unless input[:dataflow_edges].nil?
        Hearth::Validator.validate!(input[:tracking_config_arn], ::String, context: "#{context}[:tracking_config_arn]")
      end
    end

    class UpdateMissionProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMissionProfileOutput, context: context)
        Hearth::Validator.validate!(input[:mission_profile_id], ::String, context: "#{context}[:mission_profile_id]")
      end
    end

    class UplinkEchoConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UplinkEchoConfig, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:antenna_uplink_config_arn], ::String, context: "#{context}[:antenna_uplink_config_arn]")
      end
    end

    class UplinkSpectrumConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UplinkSpectrumConfig, context: context)
        Validators::Frequency.validate!(input[:center_frequency], context: "#{context}[:center_frequency]") unless input[:center_frequency].nil?
        Hearth::Validator.validate!(input[:polarization], ::String, context: "#{context}[:polarization]")
      end
    end

  end
end
