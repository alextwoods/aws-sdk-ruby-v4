# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MediaTailor
  module Params

    module AccessConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessConfiguration, context: context)
        type = Types::AccessConfiguration.new
        type.access_type = params[:access_type]
        type.secrets_manager_access_token_configuration = SecretsManagerAccessTokenConfiguration.build(params[:secrets_manager_access_token_configuration], context: "#{context}[:secrets_manager_access_token_configuration]") unless params[:secrets_manager_access_token_configuration].nil?
        type
      end
    end

    module AdBreak
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdBreak, context: context)
        type = Types::AdBreak.new
        type.message_type = params[:message_type]
        type.offset_millis = params[:offset_millis]
        type.slate = SlateSource.build(params[:slate], context: "#{context}[:slate]") unless params[:slate].nil?
        type.splice_insert_message = SpliceInsertMessage.build(params[:splice_insert_message], context: "#{context}[:splice_insert_message]") unless params[:splice_insert_message].nil?
        type
      end
    end

    module AdMarkerPassthrough
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdMarkerPassthrough, context: context)
        type = Types::AdMarkerPassthrough.new
        type.enabled = params[:enabled]
        type
      end
    end

    module Alert
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alert, context: context)
        type = Types::Alert.new
        type.alert_code = params[:alert_code]
        type.alert_message = params[:alert_message]
        type.last_modified_time = params[:last_modified_time]
        type.related_resource_arns = List____listOf__string.build(params[:related_resource_arns], context: "#{context}[:related_resource_arns]") unless params[:related_resource_arns].nil?
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module AvailMatchingCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailMatchingCriteria, context: context)
        type = Types::AvailMatchingCriteria.new
        type.dynamic_variable = params[:dynamic_variable]
        type.operator = params[:operator]
        type
      end
    end

    module AvailSuppression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailSuppression, context: context)
        type = Types::AvailSuppression.new
        type.mode = params[:mode]
        type.value = params[:value]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Bumper
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Bumper, context: context)
        type = Types::Bumper.new
        type.end_url = params[:end_url]
        type.start_url = params[:start_url]
        type
      end
    end

    module CdnConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CdnConfiguration, context: context)
        type = Types::CdnConfiguration.new
        type.ad_segment_url_prefix = params[:ad_segment_url_prefix]
        type.content_segment_url_prefix = params[:content_segment_url_prefix]
        type
      end
    end

    module Channel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Channel, context: context)
        type = Types::Channel.new
        type.arn = params[:arn]
        type.channel_name = params[:channel_name]
        type.channel_state = params[:channel_state]
        type.creation_time = params[:creation_time]
        type.filler_slate = SlateSource.build(params[:filler_slate], context: "#{context}[:filler_slate]") unless params[:filler_slate].nil?
        type.last_modified_time = params[:last_modified_time]
        type.outputs = ResponseOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.playback_mode = params[:playback_mode]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.tier = params[:tier]
        type
      end
    end

    module ConfigurationAliasesRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Map____mapOf__string.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ConfigurationAliasesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Map____mapOf__string.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ConfigureLogsForPlaybackConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureLogsForPlaybackConfigurationInput, context: context)
        type = Types::ConfigureLogsForPlaybackConfigurationInput.new
        type.percent_enabled = params[:percent_enabled]
        type.playback_configuration_name = params[:playback_configuration_name]
        type
      end
    end

    module ConfigureLogsForPlaybackConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureLogsForPlaybackConfigurationOutput, context: context)
        type = Types::ConfigureLogsForPlaybackConfigurationOutput.new
        type.percent_enabled = params[:percent_enabled]
        type.playback_configuration_name = params[:playback_configuration_name]
        type
      end
    end

    module CreateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelInput, context: context)
        type = Types::CreateChannelInput.new
        type.channel_name = params[:channel_name]
        type.filler_slate = SlateSource.build(params[:filler_slate], context: "#{context}[:filler_slate]") unless params[:filler_slate].nil?
        type.outputs = RequestOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.playback_mode = params[:playback_mode]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.tier = params[:tier]
        type
      end
    end

    module CreateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelOutput, context: context)
        type = Types::CreateChannelOutput.new
        type.arn = params[:arn]
        type.channel_name = params[:channel_name]
        type.channel_state = params[:channel_state]
        type.creation_time = params[:creation_time]
        type.filler_slate = SlateSource.build(params[:filler_slate], context: "#{context}[:filler_slate]") unless params[:filler_slate].nil?
        type.last_modified_time = params[:last_modified_time]
        type.outputs = ResponseOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.playback_mode = params[:playback_mode]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.tier = params[:tier]
        type
      end
    end

    module CreateLiveSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLiveSourceInput, context: context)
        type = Types::CreateLiveSourceInput.new
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.live_source_name = params[:live_source_name]
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLiveSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLiveSourceOutput, context: context)
        type = Types::CreateLiveSourceOutput.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.last_modified_time = params[:last_modified_time]
        type.live_source_name = params[:live_source_name]
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePrefetchScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePrefetchScheduleInput, context: context)
        type = Types::CreatePrefetchScheduleInput.new
        type.consumption = PrefetchConsumption.build(params[:consumption], context: "#{context}[:consumption]") unless params[:consumption].nil?
        type.name = params[:name]
        type.playback_configuration_name = params[:playback_configuration_name]
        type.retrieval = PrefetchRetrieval.build(params[:retrieval], context: "#{context}[:retrieval]") unless params[:retrieval].nil?
        type.stream_id = params[:stream_id]
        type
      end
    end

    module CreatePrefetchScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePrefetchScheduleOutput, context: context)
        type = Types::CreatePrefetchScheduleOutput.new
        type.arn = params[:arn]
        type.consumption = PrefetchConsumption.build(params[:consumption], context: "#{context}[:consumption]") unless params[:consumption].nil?
        type.name = params[:name]
        type.playback_configuration_name = params[:playback_configuration_name]
        type.retrieval = PrefetchRetrieval.build(params[:retrieval], context: "#{context}[:retrieval]") unless params[:retrieval].nil?
        type.stream_id = params[:stream_id]
        type
      end
    end

    module CreateProgramInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProgramInput, context: context)
        type = Types::CreateProgramInput.new
        type.ad_breaks = List____listOfAdBreak.build(params[:ad_breaks], context: "#{context}[:ad_breaks]") unless params[:ad_breaks].nil?
        type.channel_name = params[:channel_name]
        type.live_source_name = params[:live_source_name]
        type.program_name = params[:program_name]
        type.schedule_configuration = ScheduleConfiguration.build(params[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless params[:schedule_configuration].nil?
        type.source_location_name = params[:source_location_name]
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module CreateProgramOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProgramOutput, context: context)
        type = Types::CreateProgramOutput.new
        type.ad_breaks = List____listOfAdBreak.build(params[:ad_breaks], context: "#{context}[:ad_breaks]") unless params[:ad_breaks].nil?
        type.arn = params[:arn]
        type.channel_name = params[:channel_name]
        type.creation_time = params[:creation_time]
        type.live_source_name = params[:live_source_name]
        type.program_name = params[:program_name]
        type.scheduled_start_time = params[:scheduled_start_time]
        type.source_location_name = params[:source_location_name]
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module CreateSourceLocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSourceLocationInput, context: context)
        type = Types::CreateSourceLocationInput.new
        type.access_configuration = AccessConfiguration.build(params[:access_configuration], context: "#{context}[:access_configuration]") unless params[:access_configuration].nil?
        type.default_segment_delivery_configuration = DefaultSegmentDeliveryConfiguration.build(params[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless params[:default_segment_delivery_configuration].nil?
        type.http_configuration = HttpConfiguration.build(params[:http_configuration], context: "#{context}[:http_configuration]") unless params[:http_configuration].nil?
        type.segment_delivery_configurations = List____listOfSegmentDeliveryConfiguration.build(params[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless params[:segment_delivery_configurations].nil?
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSourceLocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSourceLocationOutput, context: context)
        type = Types::CreateSourceLocationOutput.new
        type.access_configuration = AccessConfiguration.build(params[:access_configuration], context: "#{context}[:access_configuration]") unless params[:access_configuration].nil?
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.default_segment_delivery_configuration = DefaultSegmentDeliveryConfiguration.build(params[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless params[:default_segment_delivery_configuration].nil?
        type.http_configuration = HttpConfiguration.build(params[:http_configuration], context: "#{context}[:http_configuration]") unless params[:http_configuration].nil?
        type.last_modified_time = params[:last_modified_time]
        type.segment_delivery_configurations = List____listOfSegmentDeliveryConfiguration.build(params[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless params[:segment_delivery_configurations].nil?
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVodSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVodSourceInput, context: context)
        type = Types::CreateVodSourceInput.new
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module CreateVodSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVodSourceOutput, context: context)
        type = Types::CreateVodSourceOutput.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.last_modified_time = params[:last_modified_time]
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module DashConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashConfiguration, context: context)
        type = Types::DashConfiguration.new
        type.manifest_endpoint_prefix = params[:manifest_endpoint_prefix]
        type.mpd_location = params[:mpd_location]
        type.origin_manifest_type = params[:origin_manifest_type]
        type
      end
    end

    module DashConfigurationForPut
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashConfigurationForPut, context: context)
        type = Types::DashConfigurationForPut.new
        type.mpd_location = params[:mpd_location]
        type.origin_manifest_type = params[:origin_manifest_type]
        type
      end
    end

    module DashPlaylistSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashPlaylistSettings, context: context)
        type = Types::DashPlaylistSettings.new
        type.manifest_window_seconds = params[:manifest_window_seconds]
        type.min_buffer_time_seconds = params[:min_buffer_time_seconds]
        type.min_update_period_seconds = params[:min_update_period_seconds]
        type.suggested_presentation_delay_seconds = params[:suggested_presentation_delay_seconds]
        type
      end
    end

    module DefaultSegmentDeliveryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultSegmentDeliveryConfiguration, context: context)
        type = Types::DefaultSegmentDeliveryConfiguration.new
        type.base_url = params[:base_url]
        type
      end
    end

    module DeleteChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelInput, context: context)
        type = Types::DeleteChannelInput.new
        type.channel_name = params[:channel_name]
        type
      end
    end

    module DeleteChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelOutput, context: context)
        type = Types::DeleteChannelOutput.new
        type
      end
    end

    module DeleteChannelPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelPolicyInput, context: context)
        type = Types::DeleteChannelPolicyInput.new
        type.channel_name = params[:channel_name]
        type
      end
    end

    module DeleteChannelPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelPolicyOutput, context: context)
        type = Types::DeleteChannelPolicyOutput.new
        type
      end
    end

    module DeleteLiveSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLiveSourceInput, context: context)
        type = Types::DeleteLiveSourceInput.new
        type.live_source_name = params[:live_source_name]
        type.source_location_name = params[:source_location_name]
        type
      end
    end

    module DeleteLiveSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLiveSourceOutput, context: context)
        type = Types::DeleteLiveSourceOutput.new
        type
      end
    end

    module DeletePlaybackConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlaybackConfigurationInput, context: context)
        type = Types::DeletePlaybackConfigurationInput.new
        type.name = params[:name]
        type
      end
    end

    module DeletePlaybackConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlaybackConfigurationOutput, context: context)
        type = Types::DeletePlaybackConfigurationOutput.new
        type
      end
    end

    module DeletePrefetchScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePrefetchScheduleInput, context: context)
        type = Types::DeletePrefetchScheduleInput.new
        type.name = params[:name]
        type.playback_configuration_name = params[:playback_configuration_name]
        type
      end
    end

    module DeletePrefetchScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePrefetchScheduleOutput, context: context)
        type = Types::DeletePrefetchScheduleOutput.new
        type
      end
    end

    module DeleteProgramInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProgramInput, context: context)
        type = Types::DeleteProgramInput.new
        type.channel_name = params[:channel_name]
        type.program_name = params[:program_name]
        type
      end
    end

    module DeleteProgramOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProgramOutput, context: context)
        type = Types::DeleteProgramOutput.new
        type
      end
    end

    module DeleteSourceLocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSourceLocationInput, context: context)
        type = Types::DeleteSourceLocationInput.new
        type.source_location_name = params[:source_location_name]
        type
      end
    end

    module DeleteSourceLocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSourceLocationOutput, context: context)
        type = Types::DeleteSourceLocationOutput.new
        type
      end
    end

    module DeleteVodSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVodSourceInput, context: context)
        type = Types::DeleteVodSourceInput.new
        type.source_location_name = params[:source_location_name]
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module DeleteVodSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVodSourceOutput, context: context)
        type = Types::DeleteVodSourceOutput.new
        type
      end
    end

    module DescribeChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelInput, context: context)
        type = Types::DescribeChannelInput.new
        type.channel_name = params[:channel_name]
        type
      end
    end

    module DescribeChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelOutput, context: context)
        type = Types::DescribeChannelOutput.new
        type.arn = params[:arn]
        type.channel_name = params[:channel_name]
        type.channel_state = params[:channel_state]
        type.creation_time = params[:creation_time]
        type.filler_slate = SlateSource.build(params[:filler_slate], context: "#{context}[:filler_slate]") unless params[:filler_slate].nil?
        type.last_modified_time = params[:last_modified_time]
        type.outputs = ResponseOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.playback_mode = params[:playback_mode]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.tier = params[:tier]
        type
      end
    end

    module DescribeLiveSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLiveSourceInput, context: context)
        type = Types::DescribeLiveSourceInput.new
        type.live_source_name = params[:live_source_name]
        type.source_location_name = params[:source_location_name]
        type
      end
    end

    module DescribeLiveSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLiveSourceOutput, context: context)
        type = Types::DescribeLiveSourceOutput.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.last_modified_time = params[:last_modified_time]
        type.live_source_name = params[:live_source_name]
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeProgramInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProgramInput, context: context)
        type = Types::DescribeProgramInput.new
        type.channel_name = params[:channel_name]
        type.program_name = params[:program_name]
        type
      end
    end

    module DescribeProgramOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProgramOutput, context: context)
        type = Types::DescribeProgramOutput.new
        type.ad_breaks = List____listOfAdBreak.build(params[:ad_breaks], context: "#{context}[:ad_breaks]") unless params[:ad_breaks].nil?
        type.arn = params[:arn]
        type.channel_name = params[:channel_name]
        type.creation_time = params[:creation_time]
        type.live_source_name = params[:live_source_name]
        type.program_name = params[:program_name]
        type.scheduled_start_time = params[:scheduled_start_time]
        type.source_location_name = params[:source_location_name]
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module DescribeSourceLocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSourceLocationInput, context: context)
        type = Types::DescribeSourceLocationInput.new
        type.source_location_name = params[:source_location_name]
        type
      end
    end

    module DescribeSourceLocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSourceLocationOutput, context: context)
        type = Types::DescribeSourceLocationOutput.new
        type.access_configuration = AccessConfiguration.build(params[:access_configuration], context: "#{context}[:access_configuration]") unless params[:access_configuration].nil?
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.default_segment_delivery_configuration = DefaultSegmentDeliveryConfiguration.build(params[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless params[:default_segment_delivery_configuration].nil?
        type.http_configuration = HttpConfiguration.build(params[:http_configuration], context: "#{context}[:http_configuration]") unless params[:http_configuration].nil?
        type.last_modified_time = params[:last_modified_time]
        type.segment_delivery_configurations = List____listOfSegmentDeliveryConfiguration.build(params[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless params[:segment_delivery_configurations].nil?
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeVodSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVodSourceInput, context: context)
        type = Types::DescribeVodSourceInput.new
        type.source_location_name = params[:source_location_name]
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module DescribeVodSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVodSourceOutput, context: context)
        type = Types::DescribeVodSourceOutput.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.last_modified_time = params[:last_modified_time]
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module GetChannelPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelPolicyInput, context: context)
        type = Types::GetChannelPolicyInput.new
        type.channel_name = params[:channel_name]
        type
      end
    end

    module GetChannelPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelPolicyOutput, context: context)
        type = Types::GetChannelPolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module GetChannelScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelScheduleInput, context: context)
        type = Types::GetChannelScheduleInput.new
        type.channel_name = params[:channel_name]
        type.duration_minutes = params[:duration_minutes]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetChannelScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelScheduleOutput, context: context)
        type = Types::GetChannelScheduleOutput.new
        type.items = List____listOfScheduleEntry.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetPlaybackConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlaybackConfigurationInput, context: context)
        type = Types::GetPlaybackConfigurationInput.new
        type.name = params[:name]
        type
      end
    end

    module GetPlaybackConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlaybackConfigurationOutput, context: context)
        type = Types::GetPlaybackConfigurationOutput.new
        type.ad_decision_server_url = params[:ad_decision_server_url]
        type.avail_suppression = AvailSuppression.build(params[:avail_suppression], context: "#{context}[:avail_suppression]") unless params[:avail_suppression].nil?
        type.bumper = Bumper.build(params[:bumper], context: "#{context}[:bumper]") unless params[:bumper].nil?
        type.cdn_configuration = CdnConfiguration.build(params[:cdn_configuration], context: "#{context}[:cdn_configuration]") unless params[:cdn_configuration].nil?
        type.configuration_aliases = ConfigurationAliasesResponse.build(params[:configuration_aliases], context: "#{context}[:configuration_aliases]") unless params[:configuration_aliases].nil?
        type.dash_configuration = DashConfiguration.build(params[:dash_configuration], context: "#{context}[:dash_configuration]") unless params[:dash_configuration].nil?
        type.hls_configuration = HlsConfiguration.build(params[:hls_configuration], context: "#{context}[:hls_configuration]") unless params[:hls_configuration].nil?
        type.live_pre_roll_configuration = LivePreRollConfiguration.build(params[:live_pre_roll_configuration], context: "#{context}[:live_pre_roll_configuration]") unless params[:live_pre_roll_configuration].nil?
        type.log_configuration = LogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.manifest_processing_rules = ManifestProcessingRules.build(params[:manifest_processing_rules], context: "#{context}[:manifest_processing_rules]") unless params[:manifest_processing_rules].nil?
        type.name = params[:name]
        type.personalization_threshold_seconds = params[:personalization_threshold_seconds]
        type.playback_configuration_arn = params[:playback_configuration_arn]
        type.playback_endpoint_prefix = params[:playback_endpoint_prefix]
        type.session_initialization_endpoint_prefix = params[:session_initialization_endpoint_prefix]
        type.slate_ad_url = params[:slate_ad_url]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.transcode_profile_name = params[:transcode_profile_name]
        type.video_content_source_url = params[:video_content_source_url]
        type
      end
    end

    module GetPrefetchScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPrefetchScheduleInput, context: context)
        type = Types::GetPrefetchScheduleInput.new
        type.name = params[:name]
        type.playback_configuration_name = params[:playback_configuration_name]
        type
      end
    end

    module GetPrefetchScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPrefetchScheduleOutput, context: context)
        type = Types::GetPrefetchScheduleOutput.new
        type.arn = params[:arn]
        type.consumption = PrefetchConsumption.build(params[:consumption], context: "#{context}[:consumption]") unless params[:consumption].nil?
        type.name = params[:name]
        type.playback_configuration_name = params[:playback_configuration_name]
        type.retrieval = PrefetchRetrieval.build(params[:retrieval], context: "#{context}[:retrieval]") unless params[:retrieval].nil?
        type.stream_id = params[:stream_id]
        type
      end
    end

    module HlsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsConfiguration, context: context)
        type = Types::HlsConfiguration.new
        type.manifest_endpoint_prefix = params[:manifest_endpoint_prefix]
        type
      end
    end

    module HlsPlaylistSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsPlaylistSettings, context: context)
        type = Types::HlsPlaylistSettings.new
        type.manifest_window_seconds = params[:manifest_window_seconds]
        type
      end
    end

    module HttpConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpConfiguration, context: context)
        type = Types::HttpConfiguration.new
        type.base_url = params[:base_url]
        type
      end
    end

    module HttpPackageConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpPackageConfiguration, context: context)
        type = Types::HttpPackageConfiguration.new
        type.path = params[:path]
        type.source_group = params[:source_group]
        type.type = params[:type]
        type
      end
    end

    module HttpPackageConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HttpPackageConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListAlertsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlertsInput, context: context)
        type = Types::ListAlertsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListAlertsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlertsOutput, context: context)
        type = Types::ListAlertsOutput.new
        type.items = List____listOfAlert.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsInput, context: context)
        type = Types::ListChannelsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsOutput, context: context)
        type = Types::ListChannelsOutput.new
        type.items = List____listOfChannel.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLiveSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLiveSourcesInput, context: context)
        type = Types::ListLiveSourcesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.source_location_name = params[:source_location_name]
        type
      end
    end

    module ListLiveSourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLiveSourcesOutput, context: context)
        type = Types::ListLiveSourcesOutput.new
        type.items = List____listOfLiveSource.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlaybackConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlaybackConfigurationsInput, context: context)
        type = Types::ListPlaybackConfigurationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlaybackConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlaybackConfigurationsOutput, context: context)
        type = Types::ListPlaybackConfigurationsOutput.new
        type.items = List____listOfPlaybackConfiguration.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPrefetchSchedulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrefetchSchedulesInput, context: context)
        type = Types::ListPrefetchSchedulesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.playback_configuration_name = params[:playback_configuration_name]
        type.stream_id = params[:stream_id]
        type
      end
    end

    module ListPrefetchSchedulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrefetchSchedulesOutput, context: context)
        type = Types::ListPrefetchSchedulesOutput.new
        type.items = List____listOfPrefetchSchedule.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSourceLocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSourceLocationsInput, context: context)
        type = Types::ListSourceLocationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSourceLocationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSourceLocationsOutput, context: context)
        type = Types::ListSourceLocationsOutput.new
        type.items = List____listOfSourceLocation.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
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
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListVodSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVodSourcesInput, context: context)
        type = Types::ListVodSourcesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.source_location_name = params[:source_location_name]
        type
      end
    end

    module ListVodSourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVodSourcesOutput, context: context)
        type = Types::ListVodSourcesOutput.new
        type.items = List____listOfVodSource.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LivePreRollConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LivePreRollConfiguration, context: context)
        type = Types::LivePreRollConfiguration.new
        type.ad_decision_server_url = params[:ad_decision_server_url]
        type.max_duration_seconds = params[:max_duration_seconds]
        type
      end
    end

    module LiveSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LiveSource, context: context)
        type = Types::LiveSource.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.last_modified_time = params[:last_modified_time]
        type.live_source_name = params[:live_source_name]
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogConfiguration, context: context)
        type = Types::LogConfiguration.new
        type.percent_enabled = params[:percent_enabled]
        type
      end
    end

    module ManifestProcessingRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManifestProcessingRules, context: context)
        type = Types::ManifestProcessingRules.new
        type.ad_marker_passthrough = AdMarkerPassthrough.build(params[:ad_marker_passthrough], context: "#{context}[:ad_marker_passthrough]") unless params[:ad_marker_passthrough].nil?
        type
      end
    end

    module PlaybackConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlaybackConfiguration, context: context)
        type = Types::PlaybackConfiguration.new
        type.ad_decision_server_url = params[:ad_decision_server_url]
        type.avail_suppression = AvailSuppression.build(params[:avail_suppression], context: "#{context}[:avail_suppression]") unless params[:avail_suppression].nil?
        type.bumper = Bumper.build(params[:bumper], context: "#{context}[:bumper]") unless params[:bumper].nil?
        type.cdn_configuration = CdnConfiguration.build(params[:cdn_configuration], context: "#{context}[:cdn_configuration]") unless params[:cdn_configuration].nil?
        type.configuration_aliases = ConfigurationAliasesResponse.build(params[:configuration_aliases], context: "#{context}[:configuration_aliases]") unless params[:configuration_aliases].nil?
        type.dash_configuration = DashConfiguration.build(params[:dash_configuration], context: "#{context}[:dash_configuration]") unless params[:dash_configuration].nil?
        type.hls_configuration = HlsConfiguration.build(params[:hls_configuration], context: "#{context}[:hls_configuration]") unless params[:hls_configuration].nil?
        type.live_pre_roll_configuration = LivePreRollConfiguration.build(params[:live_pre_roll_configuration], context: "#{context}[:live_pre_roll_configuration]") unless params[:live_pre_roll_configuration].nil?
        type.log_configuration = LogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.manifest_processing_rules = ManifestProcessingRules.build(params[:manifest_processing_rules], context: "#{context}[:manifest_processing_rules]") unless params[:manifest_processing_rules].nil?
        type.name = params[:name]
        type.personalization_threshold_seconds = params[:personalization_threshold_seconds]
        type.playback_configuration_arn = params[:playback_configuration_arn]
        type.playback_endpoint_prefix = params[:playback_endpoint_prefix]
        type.session_initialization_endpoint_prefix = params[:session_initialization_endpoint_prefix]
        type.slate_ad_url = params[:slate_ad_url]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.transcode_profile_name = params[:transcode_profile_name]
        type.video_content_source_url = params[:video_content_source_url]
        type
      end
    end

    module PrefetchConsumption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrefetchConsumption, context: context)
        type = Types::PrefetchConsumption.new
        type.avail_matching_criteria = List____listOfAvailMatchingCriteria.build(params[:avail_matching_criteria], context: "#{context}[:avail_matching_criteria]") unless params[:avail_matching_criteria].nil?
        type.end_time = params[:end_time]
        type.start_time = params[:start_time]
        type
      end
    end

    module PrefetchRetrieval
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrefetchRetrieval, context: context)
        type = Types::PrefetchRetrieval.new
        type.dynamic_variables = Map____mapOf__string.build(params[:dynamic_variables], context: "#{context}[:dynamic_variables]") unless params[:dynamic_variables].nil?
        type.end_time = params[:end_time]
        type.start_time = params[:start_time]
        type
      end
    end

    module PrefetchSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrefetchSchedule, context: context)
        type = Types::PrefetchSchedule.new
        type.arn = params[:arn]
        type.consumption = PrefetchConsumption.build(params[:consumption], context: "#{context}[:consumption]") unless params[:consumption].nil?
        type.name = params[:name]
        type.playback_configuration_name = params[:playback_configuration_name]
        type.retrieval = PrefetchRetrieval.build(params[:retrieval], context: "#{context}[:retrieval]") unless params[:retrieval].nil?
        type.stream_id = params[:stream_id]
        type
      end
    end

    module PutChannelPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutChannelPolicyInput, context: context)
        type = Types::PutChannelPolicyInput.new
        type.channel_name = params[:channel_name]
        type.policy = params[:policy]
        type
      end
    end

    module PutChannelPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutChannelPolicyOutput, context: context)
        type = Types::PutChannelPolicyOutput.new
        type
      end
    end

    module PutPlaybackConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPlaybackConfigurationInput, context: context)
        type = Types::PutPlaybackConfigurationInput.new
        type.ad_decision_server_url = params[:ad_decision_server_url]
        type.avail_suppression = AvailSuppression.build(params[:avail_suppression], context: "#{context}[:avail_suppression]") unless params[:avail_suppression].nil?
        type.bumper = Bumper.build(params[:bumper], context: "#{context}[:bumper]") unless params[:bumper].nil?
        type.cdn_configuration = CdnConfiguration.build(params[:cdn_configuration], context: "#{context}[:cdn_configuration]") unless params[:cdn_configuration].nil?
        type.configuration_aliases = ConfigurationAliasesRequest.build(params[:configuration_aliases], context: "#{context}[:configuration_aliases]") unless params[:configuration_aliases].nil?
        type.dash_configuration = DashConfigurationForPut.build(params[:dash_configuration], context: "#{context}[:dash_configuration]") unless params[:dash_configuration].nil?
        type.live_pre_roll_configuration = LivePreRollConfiguration.build(params[:live_pre_roll_configuration], context: "#{context}[:live_pre_roll_configuration]") unless params[:live_pre_roll_configuration].nil?
        type.manifest_processing_rules = ManifestProcessingRules.build(params[:manifest_processing_rules], context: "#{context}[:manifest_processing_rules]") unless params[:manifest_processing_rules].nil?
        type.name = params[:name]
        type.personalization_threshold_seconds = params[:personalization_threshold_seconds]
        type.slate_ad_url = params[:slate_ad_url]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.transcode_profile_name = params[:transcode_profile_name]
        type.video_content_source_url = params[:video_content_source_url]
        type
      end
    end

    module PutPlaybackConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPlaybackConfigurationOutput, context: context)
        type = Types::PutPlaybackConfigurationOutput.new
        type.ad_decision_server_url = params[:ad_decision_server_url]
        type.avail_suppression = AvailSuppression.build(params[:avail_suppression], context: "#{context}[:avail_suppression]") unless params[:avail_suppression].nil?
        type.bumper = Bumper.build(params[:bumper], context: "#{context}[:bumper]") unless params[:bumper].nil?
        type.cdn_configuration = CdnConfiguration.build(params[:cdn_configuration], context: "#{context}[:cdn_configuration]") unless params[:cdn_configuration].nil?
        type.configuration_aliases = ConfigurationAliasesResponse.build(params[:configuration_aliases], context: "#{context}[:configuration_aliases]") unless params[:configuration_aliases].nil?
        type.dash_configuration = DashConfiguration.build(params[:dash_configuration], context: "#{context}[:dash_configuration]") unless params[:dash_configuration].nil?
        type.hls_configuration = HlsConfiguration.build(params[:hls_configuration], context: "#{context}[:hls_configuration]") unless params[:hls_configuration].nil?
        type.live_pre_roll_configuration = LivePreRollConfiguration.build(params[:live_pre_roll_configuration], context: "#{context}[:live_pre_roll_configuration]") unless params[:live_pre_roll_configuration].nil?
        type.log_configuration = LogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.manifest_processing_rules = ManifestProcessingRules.build(params[:manifest_processing_rules], context: "#{context}[:manifest_processing_rules]") unless params[:manifest_processing_rules].nil?
        type.name = params[:name]
        type.personalization_threshold_seconds = params[:personalization_threshold_seconds]
        type.playback_configuration_arn = params[:playback_configuration_arn]
        type.playback_endpoint_prefix = params[:playback_endpoint_prefix]
        type.session_initialization_endpoint_prefix = params[:session_initialization_endpoint_prefix]
        type.slate_ad_url = params[:slate_ad_url]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.transcode_profile_name = params[:transcode_profile_name]
        type.video_content_source_url = params[:video_content_source_url]
        type
      end
    end

    module RequestOutputItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestOutputItem, context: context)
        type = Types::RequestOutputItem.new
        type.dash_playlist_settings = DashPlaylistSettings.build(params[:dash_playlist_settings], context: "#{context}[:dash_playlist_settings]") unless params[:dash_playlist_settings].nil?
        type.hls_playlist_settings = HlsPlaylistSettings.build(params[:hls_playlist_settings], context: "#{context}[:hls_playlist_settings]") unless params[:hls_playlist_settings].nil?
        type.manifest_name = params[:manifest_name]
        type.source_group = params[:source_group]
        type
      end
    end

    module RequestOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RequestOutputItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResponseOutputItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseOutputItem, context: context)
        type = Types::ResponseOutputItem.new
        type.dash_playlist_settings = DashPlaylistSettings.build(params[:dash_playlist_settings], context: "#{context}[:dash_playlist_settings]") unless params[:dash_playlist_settings].nil?
        type.hls_playlist_settings = HlsPlaylistSettings.build(params[:hls_playlist_settings], context: "#{context}[:hls_playlist_settings]") unless params[:hls_playlist_settings].nil?
        type.manifest_name = params[:manifest_name]
        type.playback_url = params[:playback_url]
        type.source_group = params[:source_group]
        type
      end
    end

    module ResponseOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResponseOutputItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduleAdBreak
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleAdBreak, context: context)
        type = Types::ScheduleAdBreak.new
        type.approximate_duration_seconds = params[:approximate_duration_seconds]
        type.approximate_start_time = params[:approximate_start_time]
        type.source_location_name = params[:source_location_name]
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module ScheduleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleConfiguration, context: context)
        type = Types::ScheduleConfiguration.new
        type.transition = Transition.build(params[:transition], context: "#{context}[:transition]") unless params[:transition].nil?
        type
      end
    end

    module ScheduleEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleEntry, context: context)
        type = Types::ScheduleEntry.new
        type.approximate_duration_seconds = params[:approximate_duration_seconds]
        type.approximate_start_time = params[:approximate_start_time]
        type.arn = params[:arn]
        type.channel_name = params[:channel_name]
        type.live_source_name = params[:live_source_name]
        type.program_name = params[:program_name]
        type.schedule_ad_breaks = List____listOfScheduleAdBreak.build(params[:schedule_ad_breaks], context: "#{context}[:schedule_ad_breaks]") unless params[:schedule_ad_breaks].nil?
        type.schedule_entry_type = params[:schedule_entry_type]
        type.source_location_name = params[:source_location_name]
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module SecretsManagerAccessTokenConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecretsManagerAccessTokenConfiguration, context: context)
        type = Types::SecretsManagerAccessTokenConfiguration.new
        type.header_name = params[:header_name]
        type.secret_arn = params[:secret_arn]
        type.secret_string_key = params[:secret_string_key]
        type
      end
    end

    module SegmentDeliveryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentDeliveryConfiguration, context: context)
        type = Types::SegmentDeliveryConfiguration.new
        type.base_url = params[:base_url]
        type.name = params[:name]
        type
      end
    end

    module SlateSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlateSource, context: context)
        type = Types::SlateSource.new
        type.source_location_name = params[:source_location_name]
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module SourceLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceLocation, context: context)
        type = Types::SourceLocation.new
        type.access_configuration = AccessConfiguration.build(params[:access_configuration], context: "#{context}[:access_configuration]") unless params[:access_configuration].nil?
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.default_segment_delivery_configuration = DefaultSegmentDeliveryConfiguration.build(params[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless params[:default_segment_delivery_configuration].nil?
        type.http_configuration = HttpConfiguration.build(params[:http_configuration], context: "#{context}[:http_configuration]") unless params[:http_configuration].nil?
        type.last_modified_time = params[:last_modified_time]
        type.segment_delivery_configurations = List____listOfSegmentDeliveryConfiguration.build(params[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless params[:segment_delivery_configurations].nil?
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SpliceInsertMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpliceInsertMessage, context: context)
        type = Types::SpliceInsertMessage.new
        type.avail_num = params[:avail_num]
        type.avails_expected = params[:avails_expected]
        type.splice_event_id = params[:splice_event_id]
        type.unique_program_id = params[:unique_program_id]
        type
      end
    end

    module StartChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChannelInput, context: context)
        type = Types::StartChannelInput.new
        type.channel_name = params[:channel_name]
        type
      end
    end

    module StartChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChannelOutput, context: context)
        type = Types::StartChannelOutput.new
        type
      end
    end

    module StopChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopChannelInput, context: context)
        type = Types::StopChannelInput.new
        type.channel_name = params[:channel_name]
        type
      end
    end

    module StopChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopChannelOutput, context: context)
        type = Types::StopChannelOutput.new
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Transition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Transition, context: context)
        type = Types::Transition.new
        type.duration_millis = params[:duration_millis]
        type.relative_position = params[:relative_position]
        type.relative_program = params[:relative_program]
        type.scheduled_start_time_millis = params[:scheduled_start_time_millis]
        type.type = params[:type]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelInput, context: context)
        type = Types::UpdateChannelInput.new
        type.channel_name = params[:channel_name]
        type.filler_slate = SlateSource.build(params[:filler_slate], context: "#{context}[:filler_slate]") unless params[:filler_slate].nil?
        type.outputs = RequestOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module UpdateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelOutput, context: context)
        type = Types::UpdateChannelOutput.new
        type.arn = params[:arn]
        type.channel_name = params[:channel_name]
        type.channel_state = params[:channel_state]
        type.creation_time = params[:creation_time]
        type.filler_slate = SlateSource.build(params[:filler_slate], context: "#{context}[:filler_slate]") unless params[:filler_slate].nil?
        type.last_modified_time = params[:last_modified_time]
        type.outputs = ResponseOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.playback_mode = params[:playback_mode]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.tier = params[:tier]
        type
      end
    end

    module UpdateLiveSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLiveSourceInput, context: context)
        type = Types::UpdateLiveSourceInput.new
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.live_source_name = params[:live_source_name]
        type.source_location_name = params[:source_location_name]
        type
      end
    end

    module UpdateLiveSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLiveSourceOutput, context: context)
        type = Types::UpdateLiveSourceOutput.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.last_modified_time = params[:last_modified_time]
        type.live_source_name = params[:live_source_name]
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateSourceLocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSourceLocationInput, context: context)
        type = Types::UpdateSourceLocationInput.new
        type.access_configuration = AccessConfiguration.build(params[:access_configuration], context: "#{context}[:access_configuration]") unless params[:access_configuration].nil?
        type.default_segment_delivery_configuration = DefaultSegmentDeliveryConfiguration.build(params[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless params[:default_segment_delivery_configuration].nil?
        type.http_configuration = HttpConfiguration.build(params[:http_configuration], context: "#{context}[:http_configuration]") unless params[:http_configuration].nil?
        type.segment_delivery_configurations = List____listOfSegmentDeliveryConfiguration.build(params[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless params[:segment_delivery_configurations].nil?
        type.source_location_name = params[:source_location_name]
        type
      end
    end

    module UpdateSourceLocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSourceLocationOutput, context: context)
        type = Types::UpdateSourceLocationOutput.new
        type.access_configuration = AccessConfiguration.build(params[:access_configuration], context: "#{context}[:access_configuration]") unless params[:access_configuration].nil?
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.default_segment_delivery_configuration = DefaultSegmentDeliveryConfiguration.build(params[:default_segment_delivery_configuration], context: "#{context}[:default_segment_delivery_configuration]") unless params[:default_segment_delivery_configuration].nil?
        type.http_configuration = HttpConfiguration.build(params[:http_configuration], context: "#{context}[:http_configuration]") unless params[:http_configuration].nil?
        type.last_modified_time = params[:last_modified_time]
        type.segment_delivery_configurations = List____listOfSegmentDeliveryConfiguration.build(params[:segment_delivery_configurations], context: "#{context}[:segment_delivery_configurations]") unless params[:segment_delivery_configurations].nil?
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateVodSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVodSourceInput, context: context)
        type = Types::UpdateVodSourceInput.new
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.source_location_name = params[:source_location_name]
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module UpdateVodSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVodSourceOutput, context: context)
        type = Types::UpdateVodSourceOutput.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.last_modified_time = params[:last_modified_time]
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module VodSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VodSource, context: context)
        type = Types::VodSource.new
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type.http_package_configurations = HttpPackageConfigurations.build(params[:http_package_configurations], context: "#{context}[:http_package_configurations]") unless params[:http_package_configurations].nil?
        type.last_modified_time = params[:last_modified_time]
        type.source_location_name = params[:source_location_name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vod_source_name = params[:vod_source_name]
        type
      end
    end

    module List____listOfAdBreak
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdBreak.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfAlert
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alert.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfAvailMatchingCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailMatchingCriteria.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Channel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfLiveSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LiveSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfPlaybackConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlaybackConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfPrefetchSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PrefetchSchedule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfScheduleAdBreak
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduleAdBreak.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfScheduleEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduleEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSegmentDeliveryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SegmentDeliveryConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSourceLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceLocation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfVodSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VodSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Map____mapOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
