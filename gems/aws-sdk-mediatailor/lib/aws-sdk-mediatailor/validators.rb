# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MediaTailor
  module Validators

    class AccessConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessConfiguration, context: context)
        Hearth::Validator.validate!(input[:access_type], ::String, context: "#{context}[:access_type]")
        SecretsManagerAccessTokenConfiguration.validate!(input[:secrets_manager_access_token_configuration], context: "#{context}[:secrets_manager_access_token_configuration]") unless input[:secrets_manager_access_token_configuration].nil?
      end
    end

    class AdBreak
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdBreak, context: context)
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:offset_millis], ::Integer, context: "#{context}[:offset_millis]")
        SlateSource.validate!(input[:slate], context: "#{context}[:slate]") unless input[:slate].nil?
        SpliceInsertMessage.validate!(input[:splice_insert_message], context: "#{context}[:splice_insert_message]") unless input[:splice_insert_message].nil?
      end
    end

    class AdMarkerPassthrough
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdMarkerPassthrough, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class Alert
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alert, context: context)
        Hearth::Validator.validate!(input[:alert_code], ::String, context: "#{context}[:alert_code]")
        Hearth::Validator.validate!(input[:alert_message], ::String, context: "#{context}[:alert_message]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        List____listOf__string.validate!(input[:related_resource_arns], context: "#{context}[:related_resource_arns]") unless input[:related_resource_arns].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class AvailMatchingCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailMatchingCriteria, context: context)
        Hearth::Validator.validate!(input[:dynamic_variable], ::String, context: "#{context}[:dynamic_variable]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class AvailSuppression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailSuppression, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Bumper
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Bumper, context: context)
        Hearth::Validator.validate!(input[:end_url], ::String, context: "#{context}[:end_url]")
        Hearth::Validator.validate!(input[:start_url], ::String, context: "#{context}[:start_url]")
      end
    end

    class CdnConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CdnConfiguration, context: context)
        Hearth::Validator.validate!(input[:ad_segment_url_prefix], ::String, context: "#{context}[:ad_segment_url_prefix]")
        Hearth::Validator.validate!(input[:content_segment_url_prefix], ::String, context: "#{context}[:content_segment_url_prefix]")
      end
    end

    class Channel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Channel, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:channel_state], ::String, context: "#{context}[:channel_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        SlateSource.validate!(input[:filler_slate], context: "#{context}[:filler_slate]") unless input[:filler_slate].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        ResponseOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:playback_mode], ::String, context: "#{context}[:playback_mode]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
      end
    end

    class ConfigurationAliasesRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Map____mapOf__string.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ConfigurationAliasesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Map____mapOf__string.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ConfigureLogsForPlaybackConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureLogsForPlaybackConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:percent_enabled], ::Integer, context: "#{context}[:percent_enabled]")
        Hearth::Validator.validate!(input[:playback_configuration_name], ::String, context: "#{context}[:playback_configuration_name]")
      end
    end

    class ConfigureLogsForPlaybackConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureLogsForPlaybackConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:percent_enabled], ::Integer, context: "#{context}[:percent_enabled]")
        Hearth::Validator.validate!(input[:playback_configuration_name], ::String, context: "#{context}[:playback_configuration_name]")
      end
    end

    class CreateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        SlateSource.validate!(input[:filler_slate], context: "#{context}[:filler_slate]") unless input[:filler_slate].nil?
        RequestOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:playback_mode], ::String, context: "#{context}[:playback_mode]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
      end
    end

    class CreateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:channel_state], ::String, context: "#{context}[:channel_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        SlateSource.validate!(input[:filler_slate], context: "#{context}[:filler_slate]") unless input[:filler_slate].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        ResponseOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:playback_mode], ::String, context: "#{context}[:playback_mode]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
      end
    end

    class CreateLiveSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLiveSourceInput, context: context)
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLiveSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLiveSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePrefetchScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePrefetchScheduleInput, context: context)
        PrefetchConsumption.validate!(input[:consumption], context: "#{context}[:consumption]") unless input[:consumption].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:playback_configuration_name], ::String, context: "#{context}[:playback_configuration_name]")
        PrefetchRetrieval.validate!(input[:retrieval], context: "#{context}[:retrieval]") unless input[:retrieval].nil?
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class CreatePrefetchScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePrefetchScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        PrefetchConsumption.validate!(input[:consumption], context: "#{context}[:consumption]") unless input[:consumption].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:playback_configuration_name], ::String, context: "#{context}[:playback_configuration_name]")
        PrefetchRetrieval.validate!(input[:retrieval], context: "#{context}[:retrieval]") unless input[:retrieval].nil?
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class CreateProgramInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProgramInput, context: context)
        List____listOfAdBreak.validate!(input[:ad_breaks], context: "#{context}[:ad_breaks]") unless input[:ad_breaks].nil?
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
        ScheduleConfiguration.validate!(input[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless input[:schedule_configuration].nil?
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class CreateProgramOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProgramOutput, context: context)
        List____listOfAdBreak.validate!(input[:ad_breaks], context: "#{context}[:ad_breaks]") unless input[:ad_breaks].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
        Hearth::Validator.validate!(input[:scheduled_start_time], ::Time, context: "#{context}[:scheduled_start_time]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class CreateSourceLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSourceLocationInput, context: context)
        AccessConfiguration.validate!(input[:access_configuration], context: "#{context}[:access_configuration]") unless input[:access_configuration].nil?
        DefaultSegmentDeliveryConfiguration.validate!(input[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless input[:default_segment_delivery_configuration].nil?
        HttpConfiguration.validate!(input[:http_configuration], context: "#{context}[:http_configuration]") unless input[:http_configuration].nil?
        List____listOfSegmentDeliveryConfiguration.validate!(input[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless input[:segment_delivery_configurations].nil?
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSourceLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSourceLocationOutput, context: context)
        AccessConfiguration.validate!(input[:access_configuration], context: "#{context}[:access_configuration]") unless input[:access_configuration].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        DefaultSegmentDeliveryConfiguration.validate!(input[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless input[:default_segment_delivery_configuration].nil?
        HttpConfiguration.validate!(input[:http_configuration], context: "#{context}[:http_configuration]") unless input[:http_configuration].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        List____listOfSegmentDeliveryConfiguration.validate!(input[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless input[:segment_delivery_configurations].nil?
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVodSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVodSourceInput, context: context)
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class CreateVodSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVodSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class DashConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashConfiguration, context: context)
        Hearth::Validator.validate!(input[:manifest_endpoint_prefix], ::String, context: "#{context}[:manifest_endpoint_prefix]")
        Hearth::Validator.validate!(input[:mpd_location], ::String, context: "#{context}[:mpd_location]")
        Hearth::Validator.validate!(input[:origin_manifest_type], ::String, context: "#{context}[:origin_manifest_type]")
      end
    end

    class DashConfigurationForPut
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashConfigurationForPut, context: context)
        Hearth::Validator.validate!(input[:mpd_location], ::String, context: "#{context}[:mpd_location]")
        Hearth::Validator.validate!(input[:origin_manifest_type], ::String, context: "#{context}[:origin_manifest_type]")
      end
    end

    class DashPlaylistSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashPlaylistSettings, context: context)
        Hearth::Validator.validate!(input[:manifest_window_seconds], ::Integer, context: "#{context}[:manifest_window_seconds]")
        Hearth::Validator.validate!(input[:min_buffer_time_seconds], ::Integer, context: "#{context}[:min_buffer_time_seconds]")
        Hearth::Validator.validate!(input[:min_update_period_seconds], ::Integer, context: "#{context}[:min_update_period_seconds]")
        Hearth::Validator.validate!(input[:suggested_presentation_delay_seconds], ::Integer, context: "#{context}[:suggested_presentation_delay_seconds]")
      end
    end

    class DefaultSegmentDeliveryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultSegmentDeliveryConfiguration, context: context)
        Hearth::Validator.validate!(input[:base_url], ::String, context: "#{context}[:base_url]")
      end
    end

    class DeleteChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
      end
    end

    class DeleteChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelOutput, context: context)
      end
    end

    class DeleteChannelPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelPolicyInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
      end
    end

    class DeleteChannelPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelPolicyOutput, context: context)
      end
    end

    class DeleteLiveSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLiveSourceInput, context: context)
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
      end
    end

    class DeleteLiveSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLiveSourceOutput, context: context)
      end
    end

    class DeletePlaybackConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlaybackConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeletePlaybackConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlaybackConfigurationOutput, context: context)
      end
    end

    class DeletePrefetchScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePrefetchScheduleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:playback_configuration_name], ::String, context: "#{context}[:playback_configuration_name]")
      end
    end

    class DeletePrefetchScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePrefetchScheduleOutput, context: context)
      end
    end

    class DeleteProgramInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProgramInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class DeleteProgramOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProgramOutput, context: context)
      end
    end

    class DeleteSourceLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSourceLocationInput, context: context)
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
      end
    end

    class DeleteSourceLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSourceLocationOutput, context: context)
      end
    end

    class DeleteVodSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVodSourceInput, context: context)
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class DeleteVodSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVodSourceOutput, context: context)
      end
    end

    class DescribeChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
      end
    end

    class DescribeChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:channel_state], ::String, context: "#{context}[:channel_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        SlateSource.validate!(input[:filler_slate], context: "#{context}[:filler_slate]") unless input[:filler_slate].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        ResponseOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:playback_mode], ::String, context: "#{context}[:playback_mode]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
      end
    end

    class DescribeLiveSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLiveSourceInput, context: context)
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
      end
    end

    class DescribeLiveSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLiveSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeProgramInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProgramInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class DescribeProgramOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProgramOutput, context: context)
        List____listOfAdBreak.validate!(input[:ad_breaks], context: "#{context}[:ad_breaks]") unless input[:ad_breaks].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
        Hearth::Validator.validate!(input[:scheduled_start_time], ::Time, context: "#{context}[:scheduled_start_time]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class DescribeSourceLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceLocationInput, context: context)
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
      end
    end

    class DescribeSourceLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceLocationOutput, context: context)
        AccessConfiguration.validate!(input[:access_configuration], context: "#{context}[:access_configuration]") unless input[:access_configuration].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        DefaultSegmentDeliveryConfiguration.validate!(input[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless input[:default_segment_delivery_configuration].nil?
        HttpConfiguration.validate!(input[:http_configuration], context: "#{context}[:http_configuration]") unless input[:http_configuration].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        List____listOfSegmentDeliveryConfiguration.validate!(input[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless input[:segment_delivery_configurations].nil?
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeVodSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVodSourceInput, context: context)
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class DescribeVodSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVodSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class GetChannelPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelPolicyInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
      end
    end

    class GetChannelPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetChannelScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelScheduleInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:duration_minutes], ::String, context: "#{context}[:duration_minutes]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetChannelScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelScheduleOutput, context: context)
        List____listOfScheduleEntry.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetPlaybackConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlaybackConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetPlaybackConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlaybackConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:ad_decision_server_url], ::String, context: "#{context}[:ad_decision_server_url]")
        AvailSuppression.validate!(input[:avail_suppression], context: "#{context}[:avail_suppression]") unless input[:avail_suppression].nil?
        Bumper.validate!(input[:bumper], context: "#{context}[:bumper]") unless input[:bumper].nil?
        CdnConfiguration.validate!(input[:cdn_configuration], context: "#{context}[:cdn_configuration]") unless input[:cdn_configuration].nil?
        ConfigurationAliasesResponse.validate!(input[:configuration_aliases], context: "#{context}[:configuration_aliases]") unless input[:configuration_aliases].nil?
        DashConfiguration.validate!(input[:dash_configuration], context: "#{context}[:dash_configuration]") unless input[:dash_configuration].nil?
        HlsConfiguration.validate!(input[:hls_configuration], context: "#{context}[:hls_configuration]") unless input[:hls_configuration].nil?
        LivePreRollConfiguration.validate!(input[:live_pre_roll_configuration], context: "#{context}[:live_pre_roll_configuration]") unless input[:live_pre_roll_configuration].nil?
        LogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        ManifestProcessingRules.validate!(input[:manifest_processing_rules], context: "#{context}[:manifest_processing_rules]") unless input[:manifest_processing_rules].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:personalization_threshold_seconds], ::Integer, context: "#{context}[:personalization_threshold_seconds]")
        Hearth::Validator.validate!(input[:playback_configuration_arn], ::String, context: "#{context}[:playback_configuration_arn]")
        Hearth::Validator.validate!(input[:playback_endpoint_prefix], ::String, context: "#{context}[:playback_endpoint_prefix]")
        Hearth::Validator.validate!(input[:session_initialization_endpoint_prefix], ::String, context: "#{context}[:session_initialization_endpoint_prefix]")
        Hearth::Validator.validate!(input[:slate_ad_url], ::String, context: "#{context}[:slate_ad_url]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:transcode_profile_name], ::String, context: "#{context}[:transcode_profile_name]")
        Hearth::Validator.validate!(input[:video_content_source_url], ::String, context: "#{context}[:video_content_source_url]")
      end
    end

    class GetPrefetchScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPrefetchScheduleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:playback_configuration_name], ::String, context: "#{context}[:playback_configuration_name]")
      end
    end

    class GetPrefetchScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPrefetchScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        PrefetchConsumption.validate!(input[:consumption], context: "#{context}[:consumption]") unless input[:consumption].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:playback_configuration_name], ::String, context: "#{context}[:playback_configuration_name]")
        PrefetchRetrieval.validate!(input[:retrieval], context: "#{context}[:retrieval]") unless input[:retrieval].nil?
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class HlsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsConfiguration, context: context)
        Hearth::Validator.validate!(input[:manifest_endpoint_prefix], ::String, context: "#{context}[:manifest_endpoint_prefix]")
      end
    end

    class HlsPlaylistSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsPlaylistSettings, context: context)
        Hearth::Validator.validate!(input[:manifest_window_seconds], ::Integer, context: "#{context}[:manifest_window_seconds]")
      end
    end

    class HttpConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpConfiguration, context: context)
        Hearth::Validator.validate!(input[:base_url], ::String, context: "#{context}[:base_url]")
      end
    end

    class HttpPackageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpPackageConfiguration, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:source_group], ::String, context: "#{context}[:source_group]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class HttpPackageConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HttpPackageConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListAlertsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlertsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListAlertsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlertsOutput, context: context)
        List____listOfAlert.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsOutput, context: context)
        List____listOfChannel.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLiveSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLiveSourcesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
      end
    end

    class ListLiveSourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLiveSourcesOutput, context: context)
        List____listOfLiveSource.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlaybackConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlaybackConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlaybackConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlaybackConfigurationsOutput, context: context)
        List____listOfPlaybackConfiguration.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPrefetchSchedulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrefetchSchedulesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:playback_configuration_name], ::String, context: "#{context}[:playback_configuration_name]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class ListPrefetchSchedulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrefetchSchedulesOutput, context: context)
        List____listOfPrefetchSchedule.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSourceLocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSourceLocationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSourceLocationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSourceLocationsOutput, context: context)
        List____listOfSourceLocation.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListVodSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVodSourcesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
      end
    end

    class ListVodSourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVodSourcesOutput, context: context)
        List____listOfVodSource.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LivePreRollConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LivePreRollConfiguration, context: context)
        Hearth::Validator.validate!(input[:ad_decision_server_url], ::String, context: "#{context}[:ad_decision_server_url]")
        Hearth::Validator.validate!(input[:max_duration_seconds], ::Integer, context: "#{context}[:max_duration_seconds]")
      end
    end

    class LiveSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LiveSource, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogConfiguration, context: context)
        Hearth::Validator.validate!(input[:percent_enabled], ::Integer, context: "#{context}[:percent_enabled]")
      end
    end

    class ManifestProcessingRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManifestProcessingRules, context: context)
        AdMarkerPassthrough.validate!(input[:ad_marker_passthrough], context: "#{context}[:ad_marker_passthrough]") unless input[:ad_marker_passthrough].nil?
      end
    end

    class PlaybackConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlaybackConfiguration, context: context)
        Hearth::Validator.validate!(input[:ad_decision_server_url], ::String, context: "#{context}[:ad_decision_server_url]")
        AvailSuppression.validate!(input[:avail_suppression], context: "#{context}[:avail_suppression]") unless input[:avail_suppression].nil?
        Bumper.validate!(input[:bumper], context: "#{context}[:bumper]") unless input[:bumper].nil?
        CdnConfiguration.validate!(input[:cdn_configuration], context: "#{context}[:cdn_configuration]") unless input[:cdn_configuration].nil?
        ConfigurationAliasesResponse.validate!(input[:configuration_aliases], context: "#{context}[:configuration_aliases]") unless input[:configuration_aliases].nil?
        DashConfiguration.validate!(input[:dash_configuration], context: "#{context}[:dash_configuration]") unless input[:dash_configuration].nil?
        HlsConfiguration.validate!(input[:hls_configuration], context: "#{context}[:hls_configuration]") unless input[:hls_configuration].nil?
        LivePreRollConfiguration.validate!(input[:live_pre_roll_configuration], context: "#{context}[:live_pre_roll_configuration]") unless input[:live_pre_roll_configuration].nil?
        LogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        ManifestProcessingRules.validate!(input[:manifest_processing_rules], context: "#{context}[:manifest_processing_rules]") unless input[:manifest_processing_rules].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:personalization_threshold_seconds], ::Integer, context: "#{context}[:personalization_threshold_seconds]")
        Hearth::Validator.validate!(input[:playback_configuration_arn], ::String, context: "#{context}[:playback_configuration_arn]")
        Hearth::Validator.validate!(input[:playback_endpoint_prefix], ::String, context: "#{context}[:playback_endpoint_prefix]")
        Hearth::Validator.validate!(input[:session_initialization_endpoint_prefix], ::String, context: "#{context}[:session_initialization_endpoint_prefix]")
        Hearth::Validator.validate!(input[:slate_ad_url], ::String, context: "#{context}[:slate_ad_url]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:transcode_profile_name], ::String, context: "#{context}[:transcode_profile_name]")
        Hearth::Validator.validate!(input[:video_content_source_url], ::String, context: "#{context}[:video_content_source_url]")
      end
    end

    class PrefetchConsumption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrefetchConsumption, context: context)
        List____listOfAvailMatchingCriteria.validate!(input[:avail_matching_criteria], context: "#{context}[:avail_matching_criteria]") unless input[:avail_matching_criteria].nil?
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class PrefetchRetrieval
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrefetchRetrieval, context: context)
        Map____mapOf__string.validate!(input[:dynamic_variables], context: "#{context}[:dynamic_variables]") unless input[:dynamic_variables].nil?
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class PrefetchSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrefetchSchedule, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        PrefetchConsumption.validate!(input[:consumption], context: "#{context}[:consumption]") unless input[:consumption].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:playback_configuration_name], ::String, context: "#{context}[:playback_configuration_name]")
        PrefetchRetrieval.validate!(input[:retrieval], context: "#{context}[:retrieval]") unless input[:retrieval].nil?
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class PutChannelPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutChannelPolicyInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutChannelPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutChannelPolicyOutput, context: context)
      end
    end

    class PutPlaybackConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPlaybackConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:ad_decision_server_url], ::String, context: "#{context}[:ad_decision_server_url]")
        AvailSuppression.validate!(input[:avail_suppression], context: "#{context}[:avail_suppression]") unless input[:avail_suppression].nil?
        Bumper.validate!(input[:bumper], context: "#{context}[:bumper]") unless input[:bumper].nil?
        CdnConfiguration.validate!(input[:cdn_configuration], context: "#{context}[:cdn_configuration]") unless input[:cdn_configuration].nil?
        ConfigurationAliasesRequest.validate!(input[:configuration_aliases], context: "#{context}[:configuration_aliases]") unless input[:configuration_aliases].nil?
        DashConfigurationForPut.validate!(input[:dash_configuration], context: "#{context}[:dash_configuration]") unless input[:dash_configuration].nil?
        LivePreRollConfiguration.validate!(input[:live_pre_roll_configuration], context: "#{context}[:live_pre_roll_configuration]") unless input[:live_pre_roll_configuration].nil?
        ManifestProcessingRules.validate!(input[:manifest_processing_rules], context: "#{context}[:manifest_processing_rules]") unless input[:manifest_processing_rules].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:personalization_threshold_seconds], ::Integer, context: "#{context}[:personalization_threshold_seconds]")
        Hearth::Validator.validate!(input[:slate_ad_url], ::String, context: "#{context}[:slate_ad_url]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:transcode_profile_name], ::String, context: "#{context}[:transcode_profile_name]")
        Hearth::Validator.validate!(input[:video_content_source_url], ::String, context: "#{context}[:video_content_source_url]")
      end
    end

    class PutPlaybackConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPlaybackConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:ad_decision_server_url], ::String, context: "#{context}[:ad_decision_server_url]")
        AvailSuppression.validate!(input[:avail_suppression], context: "#{context}[:avail_suppression]") unless input[:avail_suppression].nil?
        Bumper.validate!(input[:bumper], context: "#{context}[:bumper]") unless input[:bumper].nil?
        CdnConfiguration.validate!(input[:cdn_configuration], context: "#{context}[:cdn_configuration]") unless input[:cdn_configuration].nil?
        ConfigurationAliasesResponse.validate!(input[:configuration_aliases], context: "#{context}[:configuration_aliases]") unless input[:configuration_aliases].nil?
        DashConfiguration.validate!(input[:dash_configuration], context: "#{context}[:dash_configuration]") unless input[:dash_configuration].nil?
        HlsConfiguration.validate!(input[:hls_configuration], context: "#{context}[:hls_configuration]") unless input[:hls_configuration].nil?
        LivePreRollConfiguration.validate!(input[:live_pre_roll_configuration], context: "#{context}[:live_pre_roll_configuration]") unless input[:live_pre_roll_configuration].nil?
        LogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        ManifestProcessingRules.validate!(input[:manifest_processing_rules], context: "#{context}[:manifest_processing_rules]") unless input[:manifest_processing_rules].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:personalization_threshold_seconds], ::Integer, context: "#{context}[:personalization_threshold_seconds]")
        Hearth::Validator.validate!(input[:playback_configuration_arn], ::String, context: "#{context}[:playback_configuration_arn]")
        Hearth::Validator.validate!(input[:playback_endpoint_prefix], ::String, context: "#{context}[:playback_endpoint_prefix]")
        Hearth::Validator.validate!(input[:session_initialization_endpoint_prefix], ::String, context: "#{context}[:session_initialization_endpoint_prefix]")
        Hearth::Validator.validate!(input[:slate_ad_url], ::String, context: "#{context}[:slate_ad_url]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:transcode_profile_name], ::String, context: "#{context}[:transcode_profile_name]")
        Hearth::Validator.validate!(input[:video_content_source_url], ::String, context: "#{context}[:video_content_source_url]")
      end
    end

    class RequestOutputItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestOutputItem, context: context)
        DashPlaylistSettings.validate!(input[:dash_playlist_settings], context: "#{context}[:dash_playlist_settings]") unless input[:dash_playlist_settings].nil?
        HlsPlaylistSettings.validate!(input[:hls_playlist_settings], context: "#{context}[:hls_playlist_settings]") unless input[:hls_playlist_settings].nil?
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Hearth::Validator.validate!(input[:source_group], ::String, context: "#{context}[:source_group]")
      end
    end

    class RequestOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RequestOutputItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResponseOutputItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseOutputItem, context: context)
        DashPlaylistSettings.validate!(input[:dash_playlist_settings], context: "#{context}[:dash_playlist_settings]") unless input[:dash_playlist_settings].nil?
        HlsPlaylistSettings.validate!(input[:hls_playlist_settings], context: "#{context}[:hls_playlist_settings]") unless input[:hls_playlist_settings].nil?
        Hearth::Validator.validate!(input[:manifest_name], ::String, context: "#{context}[:manifest_name]")
        Hearth::Validator.validate!(input[:playback_url], ::String, context: "#{context}[:playback_url]")
        Hearth::Validator.validate!(input[:source_group], ::String, context: "#{context}[:source_group]")
      end
    end

    class ResponseOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResponseOutputItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduleAdBreak
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleAdBreak, context: context)
        Hearth::Validator.validate!(input[:approximate_duration_seconds], ::Integer, context: "#{context}[:approximate_duration_seconds]")
        Hearth::Validator.validate!(input[:approximate_start_time], ::Time, context: "#{context}[:approximate_start_time]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class ScheduleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleConfiguration, context: context)
        Transition.validate!(input[:transition], context: "#{context}[:transition]") unless input[:transition].nil?
      end
    end

    class ScheduleEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleEntry, context: context)
        Hearth::Validator.validate!(input[:approximate_duration_seconds], ::Integer, context: "#{context}[:approximate_duration_seconds]")
        Hearth::Validator.validate!(input[:approximate_start_time], ::Time, context: "#{context}[:approximate_start_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
        List____listOfScheduleAdBreak.validate!(input[:schedule_ad_breaks], context: "#{context}[:schedule_ad_breaks]") unless input[:schedule_ad_breaks].nil?
        Hearth::Validator.validate!(input[:schedule_entry_type], ::String, context: "#{context}[:schedule_entry_type]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class SecretsManagerAccessTokenConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecretsManagerAccessTokenConfiguration, context: context)
        Hearth::Validator.validate!(input[:header_name], ::String, context: "#{context}[:header_name]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:secret_string_key], ::String, context: "#{context}[:secret_string_key]")
      end
    end

    class SegmentDeliveryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentDeliveryConfiguration, context: context)
        Hearth::Validator.validate!(input[:base_url], ::String, context: "#{context}[:base_url]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SlateSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlateSource, context: context)
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class SourceLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceLocation, context: context)
        AccessConfiguration.validate!(input[:access_configuration], context: "#{context}[:access_configuration]") unless input[:access_configuration].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        DefaultSegmentDeliveryConfiguration.validate!(input[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless input[:default_segment_delivery_configuration].nil?
        HttpConfiguration.validate!(input[:http_configuration], context: "#{context}[:http_configuration]") unless input[:http_configuration].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        List____listOfSegmentDeliveryConfiguration.validate!(input[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless input[:segment_delivery_configurations].nil?
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SpliceInsertMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpliceInsertMessage, context: context)
        Hearth::Validator.validate!(input[:avail_num], ::Integer, context: "#{context}[:avail_num]")
        Hearth::Validator.validate!(input[:avails_expected], ::Integer, context: "#{context}[:avails_expected]")
        Hearth::Validator.validate!(input[:splice_event_id], ::Integer, context: "#{context}[:splice_event_id]")
        Hearth::Validator.validate!(input[:unique_program_id], ::Integer, context: "#{context}[:unique_program_id]")
      end
    end

    class StartChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
      end
    end

    class StartChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChannelOutput, context: context)
      end
    end

    class StopChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
      end
    end

    class StopChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopChannelOutput, context: context)
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Transition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Transition, context: context)
        Hearth::Validator.validate!(input[:duration_millis], ::Integer, context: "#{context}[:duration_millis]")
        Hearth::Validator.validate!(input[:relative_position], ::String, context: "#{context}[:relative_position]")
        Hearth::Validator.validate!(input[:relative_program], ::String, context: "#{context}[:relative_program]")
        Hearth::Validator.validate!(input[:scheduled_start_time_millis], ::Integer, context: "#{context}[:scheduled_start_time_millis]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        SlateSource.validate!(input[:filler_slate], context: "#{context}[:filler_slate]") unless input[:filler_slate].nil?
        RequestOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class UpdateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:channel_state], ::String, context: "#{context}[:channel_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        SlateSource.validate!(input[:filler_slate], context: "#{context}[:filler_slate]") unless input[:filler_slate].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        ResponseOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:playback_mode], ::String, context: "#{context}[:playback_mode]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
      end
    end

    class UpdateLiveSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLiveSourceInput, context: context)
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
      end
    end

    class UpdateLiveSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLiveSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:live_source_name], ::String, context: "#{context}[:live_source_name]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateSourceLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSourceLocationInput, context: context)
        AccessConfiguration.validate!(input[:access_configuration], context: "#{context}[:access_configuration]") unless input[:access_configuration].nil?
        DefaultSegmentDeliveryConfiguration.validate!(input[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless input[:default_segment_delivery_configuration].nil?
        HttpConfiguration.validate!(input[:http_configuration], context: "#{context}[:http_configuration]") unless input[:http_configuration].nil?
        List____listOfSegmentDeliveryConfiguration.validate!(input[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless input[:segment_delivery_configurations].nil?
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
      end
    end

    class UpdateSourceLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSourceLocationOutput, context: context)
        AccessConfiguration.validate!(input[:access_configuration], context: "#{context}[:access_configuration]") unless input[:access_configuration].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        DefaultSegmentDeliveryConfiguration.validate!(input[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless input[:default_segment_delivery_configuration].nil?
        HttpConfiguration.validate!(input[:http_configuration], context: "#{context}[:http_configuration]") unless input[:http_configuration].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        List____listOfSegmentDeliveryConfiguration.validate!(input[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless input[:segment_delivery_configurations].nil?
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateVodSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVodSourceInput, context: context)
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class UpdateVodSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVodSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class VodSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VodSource, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        HttpPackageConfigurations.validate!(input[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless input[:http_package_configurations].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:source_location_name], ::String, context: "#{context}[:source_location_name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vod_source_name], ::String, context: "#{context}[:vod_source_name]")
      end
    end

    class List____listOfAdBreak
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AdBreak.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfAlert
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Alert.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfAvailMatchingCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AvailMatchingCriteria.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Channel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfLiveSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LiveSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfPlaybackConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlaybackConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfPrefetchSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PrefetchSchedule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfScheduleAdBreak
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScheduleAdBreak.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfScheduleEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScheduleEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSegmentDeliveryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SegmentDeliveryConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSourceLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceLocation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfVodSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VodSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Map____mapOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
