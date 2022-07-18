# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MediaLive
  module Validators

    class AacSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AacSettings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Float, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:coding_mode], ::String, context: "#{context}[:coding_mode]")
        Hearth::Validator.validate!(input[:input_type], ::String, context: "#{context}[:input_type]")
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
        Hearth::Validator.validate!(input[:raw_format], ::String, context: "#{context}[:raw_format]")
        Hearth::Validator.validate!(input[:sample_rate], ::Float, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
        Hearth::Validator.validate!(input[:vbr_quality], ::String, context: "#{context}[:vbr_quality]")
      end
    end

    class Ac3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ac3Settings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Float, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:bitstream_mode], ::String, context: "#{context}[:bitstream_mode]")
        Hearth::Validator.validate!(input[:coding_mode], ::String, context: "#{context}[:coding_mode]")
        Hearth::Validator.validate!(input[:dialnorm], ::Integer, context: "#{context}[:dialnorm]")
        Hearth::Validator.validate!(input[:drc_profile], ::String, context: "#{context}[:drc_profile]")
        Hearth::Validator.validate!(input[:lfe_filter], ::String, context: "#{context}[:lfe_filter]")
        Hearth::Validator.validate!(input[:metadata_control], ::String, context: "#{context}[:metadata_control]")
      end
    end

    class AcceptInputDeviceTransferInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInputDeviceTransferInput, context: context)
        Hearth::Validator.validate!(input[:input_device_id], ::String, context: "#{context}[:input_device_id]")
      end
    end

    class AcceptInputDeviceTransferOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInputDeviceTransferOutput, context: context)
      end
    end

    class AncillarySourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AncillarySourceSettings, context: context)
        Hearth::Validator.validate!(input[:source_ancillary_channel_number], ::Integer, context: "#{context}[:source_ancillary_channel_number]")
      end
    end

    class ArchiveCdnSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArchiveCdnSettings, context: context)
        ArchiveS3Settings.validate!(input[:archive_s3_settings], context: "#{context}[:archive_s3_settings]") unless input[:archive_s3_settings].nil?
      end
    end

    class ArchiveContainerSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArchiveContainerSettings, context: context)
        M2tsSettings.validate!(input[:m2ts_settings], context: "#{context}[:m2ts_settings]") unless input[:m2ts_settings].nil?
        RawSettings.validate!(input[:raw_settings], context: "#{context}[:raw_settings]") unless input[:raw_settings].nil?
      end
    end

    class ArchiveGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArchiveGroupSettings, context: context)
        ArchiveCdnSettings.validate!(input[:archive_cdn_settings], context: "#{context}[:archive_cdn_settings]") unless input[:archive_cdn_settings].nil?
        OutputLocationRef.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:rollover_interval], ::Integer, context: "#{context}[:rollover_interval]")
      end
    end

    class ArchiveOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArchiveOutputSettings, context: context)
        ArchiveContainerSettings.validate!(input[:container_settings], context: "#{context}[:container_settings]") unless input[:container_settings].nil?
        Hearth::Validator.validate!(input[:extension], ::String, context: "#{context}[:extension]")
        Hearth::Validator.validate!(input[:name_modifier], ::String, context: "#{context}[:name_modifier]")
      end
    end

    class ArchiveS3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArchiveS3Settings, context: context)
        Hearth::Validator.validate!(input[:canned_acl], ::String, context: "#{context}[:canned_acl]")
      end
    end

    class AribDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AribDestinationSettings, context: context)
      end
    end

    class AribSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AribSourceSettings, context: context)
      end
    end

    class AudioChannelMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioChannelMapping, context: context)
        List____listOfInputChannelLevel.validate!(input[:input_channel_levels], context: "#{context}[:input_channel_levels]") unless input[:input_channel_levels].nil?
        Hearth::Validator.validate!(input[:output_channel], ::Integer, context: "#{context}[:output_channel]")
      end
    end

    class AudioCodecSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioCodecSettings, context: context)
        AacSettings.validate!(input[:aac_settings], context: "#{context}[:aac_settings]") unless input[:aac_settings].nil?
        Ac3Settings.validate!(input[:ac3_settings], context: "#{context}[:ac3_settings]") unless input[:ac3_settings].nil?
        Eac3Settings.validate!(input[:eac3_settings], context: "#{context}[:eac3_settings]") unless input[:eac3_settings].nil?
        Mp2Settings.validate!(input[:mp2_settings], context: "#{context}[:mp2_settings]") unless input[:mp2_settings].nil?
        PassThroughSettings.validate!(input[:pass_through_settings], context: "#{context}[:pass_through_settings]") unless input[:pass_through_settings].nil?
        WavSettings.validate!(input[:wav_settings], context: "#{context}[:wav_settings]") unless input[:wav_settings].nil?
      end
    end

    class AudioDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioDescription, context: context)
        AudioNormalizationSettings.validate!(input[:audio_normalization_settings], context: "#{context}[:audio_normalization_settings]") unless input[:audio_normalization_settings].nil?
        Hearth::Validator.validate!(input[:audio_selector_name], ::String, context: "#{context}[:audio_selector_name]")
        Hearth::Validator.validate!(input[:audio_type], ::String, context: "#{context}[:audio_type]")
        Hearth::Validator.validate!(input[:audio_type_control], ::String, context: "#{context}[:audio_type_control]")
        AudioWatermarkSettings.validate!(input[:audio_watermarking_settings], context: "#{context}[:audio_watermarking_settings]") unless input[:audio_watermarking_settings].nil?
        AudioCodecSettings.validate!(input[:codec_settings], context: "#{context}[:codec_settings]") unless input[:codec_settings].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:language_code_control], ::String, context: "#{context}[:language_code_control]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RemixSettings.validate!(input[:remix_settings], context: "#{context}[:remix_settings]") unless input[:remix_settings].nil?
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class AudioHlsRenditionSelection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioHlsRenditionSelection, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AudioLanguageSelection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioLanguageSelection, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:language_selection_policy], ::String, context: "#{context}[:language_selection_policy]")
      end
    end

    class AudioNormalizationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioNormalizationSettings, context: context)
        Hearth::Validator.validate!(input[:algorithm], ::String, context: "#{context}[:algorithm]")
        Hearth::Validator.validate!(input[:algorithm_control], ::String, context: "#{context}[:algorithm_control]")
        Hearth::Validator.validate!(input[:target_lkfs], ::Float, context: "#{context}[:target_lkfs]")
      end
    end

    class AudioOnlyHlsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioOnlyHlsSettings, context: context)
        Hearth::Validator.validate!(input[:audio_group_id], ::String, context: "#{context}[:audio_group_id]")
        InputLocation.validate!(input[:audio_only_image], context: "#{context}[:audio_only_image]") unless input[:audio_only_image].nil?
        Hearth::Validator.validate!(input[:audio_track_type], ::String, context: "#{context}[:audio_track_type]")
        Hearth::Validator.validate!(input[:segment_type], ::String, context: "#{context}[:segment_type]")
      end
    end

    class AudioPidSelection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioPidSelection, context: context)
        Hearth::Validator.validate!(input[:pid], ::Integer, context: "#{context}[:pid]")
      end
    end

    class AudioSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioSelector, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        AudioSelectorSettings.validate!(input[:selector_settings], context: "#{context}[:selector_settings]") unless input[:selector_settings].nil?
      end
    end

    class AudioSelectorSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioSelectorSettings, context: context)
        AudioHlsRenditionSelection.validate!(input[:audio_hls_rendition_selection], context: "#{context}[:audio_hls_rendition_selection]") unless input[:audio_hls_rendition_selection].nil?
        AudioLanguageSelection.validate!(input[:audio_language_selection], context: "#{context}[:audio_language_selection]") unless input[:audio_language_selection].nil?
        AudioPidSelection.validate!(input[:audio_pid_selection], context: "#{context}[:audio_pid_selection]") unless input[:audio_pid_selection].nil?
        AudioTrackSelection.validate!(input[:audio_track_selection], context: "#{context}[:audio_track_selection]") unless input[:audio_track_selection].nil?
      end
    end

    class AudioSilenceFailoverSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioSilenceFailoverSettings, context: context)
        Hearth::Validator.validate!(input[:audio_selector_name], ::String, context: "#{context}[:audio_selector_name]")
        Hearth::Validator.validate!(input[:audio_silence_threshold_msec], ::Integer, context: "#{context}[:audio_silence_threshold_msec]")
      end
    end

    class AudioTrack
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioTrack, context: context)
        Hearth::Validator.validate!(input[:track], ::Integer, context: "#{context}[:track]")
      end
    end

    class AudioTrackSelection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioTrackSelection, context: context)
        List____listOfAudioTrack.validate!(input[:tracks], context: "#{context}[:tracks]") unless input[:tracks].nil?
      end
    end

    class AudioWatermarkSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioWatermarkSettings, context: context)
        NielsenWatermarksSettings.validate!(input[:nielsen_watermarks_settings], context: "#{context}[:nielsen_watermarks_settings]") unless input[:nielsen_watermarks_settings].nil?
      end
    end

    class AutomaticInputFailoverSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomaticInputFailoverSettings, context: context)
        Hearth::Validator.validate!(input[:error_clear_time_msec], ::Integer, context: "#{context}[:error_clear_time_msec]")
        List____listOfFailoverCondition.validate!(input[:failover_conditions], context: "#{context}[:failover_conditions]") unless input[:failover_conditions].nil?
        Hearth::Validator.validate!(input[:input_preference], ::String, context: "#{context}[:input_preference]")
        Hearth::Validator.validate!(input[:secondary_input_id], ::String, context: "#{context}[:secondary_input_id]")
      end
    end

    class AvailBlanking
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailBlanking, context: context)
        InputLocation.validate!(input[:avail_blanking_image], context: "#{context}[:avail_blanking_image]") unless input[:avail_blanking_image].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class AvailConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailConfiguration, context: context)
        AvailSettings.validate!(input[:avail_settings], context: "#{context}[:avail_settings]") unless input[:avail_settings].nil?
      end
    end

    class AvailSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailSettings, context: context)
        Scte35SpliceInsert.validate!(input[:scte35_splice_insert], context: "#{context}[:scte35_splice_insert]") unless input[:scte35_splice_insert].nil?
        Scte35TimeSignalApos.validate!(input[:scte35_time_signal_apos], context: "#{context}[:scte35_time_signal_apos]") unless input[:scte35_time_signal_apos].nil?
      end
    end

    class BadGatewayException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadGatewayException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchDeleteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteInput, context: context)
        List____listOf__string.validate!(input[:channel_ids], context: "#{context}[:channel_ids]") unless input[:channel_ids].nil?
        List____listOf__string.validate!(input[:input_ids], context: "#{context}[:input_ids]") unless input[:input_ids].nil?
        List____listOf__string.validate!(input[:input_security_group_ids], context: "#{context}[:input_security_group_ids]") unless input[:input_security_group_ids].nil?
        List____listOf__string.validate!(input[:multiplex_ids], context: "#{context}[:multiplex_ids]") unless input[:multiplex_ids].nil?
      end
    end

    class BatchDeleteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteOutput, context: context)
        List____listOfBatchFailedResultModel.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
        List____listOfBatchSuccessfulResultModel.validate!(input[:successful], context: "#{context}[:successful]") unless input[:successful].nil?
      end
    end

    class BatchFailedResultModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchFailedResultModel, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchScheduleActionCreateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchScheduleActionCreateRequest, context: context)
        List____listOfScheduleAction.validate!(input[:schedule_actions], context: "#{context}[:schedule_actions]") unless input[:schedule_actions].nil?
      end
    end

    class BatchScheduleActionCreateResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchScheduleActionCreateResult, context: context)
        List____listOfScheduleAction.validate!(input[:schedule_actions], context: "#{context}[:schedule_actions]") unless input[:schedule_actions].nil?
      end
    end

    class BatchScheduleActionDeleteRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchScheduleActionDeleteRequest, context: context)
        List____listOf__string.validate!(input[:action_names], context: "#{context}[:action_names]") unless input[:action_names].nil?
      end
    end

    class BatchScheduleActionDeleteResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchScheduleActionDeleteResult, context: context)
        List____listOfScheduleAction.validate!(input[:schedule_actions], context: "#{context}[:schedule_actions]") unless input[:schedule_actions].nil?
      end
    end

    class BatchStartInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStartInput, context: context)
        List____listOf__string.validate!(input[:channel_ids], context: "#{context}[:channel_ids]") unless input[:channel_ids].nil?
        List____listOf__string.validate!(input[:multiplex_ids], context: "#{context}[:multiplex_ids]") unless input[:multiplex_ids].nil?
      end
    end

    class BatchStartOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStartOutput, context: context)
        List____listOfBatchFailedResultModel.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
        List____listOfBatchSuccessfulResultModel.validate!(input[:successful], context: "#{context}[:successful]") unless input[:successful].nil?
      end
    end

    class BatchStopInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStopInput, context: context)
        List____listOf__string.validate!(input[:channel_ids], context: "#{context}[:channel_ids]") unless input[:channel_ids].nil?
        List____listOf__string.validate!(input[:multiplex_ids], context: "#{context}[:multiplex_ids]") unless input[:multiplex_ids].nil?
      end
    end

    class BatchStopOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStopOutput, context: context)
        List____listOfBatchFailedResultModel.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
        List____listOfBatchSuccessfulResultModel.validate!(input[:successful], context: "#{context}[:successful]") unless input[:successful].nil?
      end
    end

    class BatchSuccessfulResultModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSuccessfulResultModel, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class BatchUpdateScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateScheduleInput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        BatchScheduleActionCreateRequest.validate!(input[:creates], context: "#{context}[:creates]") unless input[:creates].nil?
        BatchScheduleActionDeleteRequest.validate!(input[:deletes], context: "#{context}[:deletes]") unless input[:deletes].nil?
      end
    end

    class BatchUpdateScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateScheduleOutput, context: context)
        BatchScheduleActionCreateResult.validate!(input[:creates], context: "#{context}[:creates]") unless input[:creates].nil?
        BatchScheduleActionDeleteResult.validate!(input[:deletes], context: "#{context}[:deletes]") unless input[:deletes].nil?
      end
    end

    class BlackoutSlate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlackoutSlate, context: context)
        InputLocation.validate!(input[:blackout_slate_image], context: "#{context}[:blackout_slate_image]") unless input[:blackout_slate_image].nil?
        Hearth::Validator.validate!(input[:network_end_blackout], ::String, context: "#{context}[:network_end_blackout]")
        InputLocation.validate!(input[:network_end_blackout_image], context: "#{context}[:network_end_blackout_image]") unless input[:network_end_blackout_image].nil?
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class BurnInDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BurnInDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:alignment], ::String, context: "#{context}[:alignment]")
        Hearth::Validator.validate!(input[:background_color], ::String, context: "#{context}[:background_color]")
        Hearth::Validator.validate!(input[:background_opacity], ::Integer, context: "#{context}[:background_opacity]")
        InputLocation.validate!(input[:font], context: "#{context}[:font]") unless input[:font].nil?
        Hearth::Validator.validate!(input[:font_color], ::String, context: "#{context}[:font_color]")
        Hearth::Validator.validate!(input[:font_opacity], ::Integer, context: "#{context}[:font_opacity]")
        Hearth::Validator.validate!(input[:font_resolution], ::Integer, context: "#{context}[:font_resolution]")
        Hearth::Validator.validate!(input[:font_size], ::String, context: "#{context}[:font_size]")
        Hearth::Validator.validate!(input[:outline_color], ::String, context: "#{context}[:outline_color]")
        Hearth::Validator.validate!(input[:outline_size], ::Integer, context: "#{context}[:outline_size]")
        Hearth::Validator.validate!(input[:shadow_color], ::String, context: "#{context}[:shadow_color]")
        Hearth::Validator.validate!(input[:shadow_opacity], ::Integer, context: "#{context}[:shadow_opacity]")
        Hearth::Validator.validate!(input[:shadow_x_offset], ::Integer, context: "#{context}[:shadow_x_offset]")
        Hearth::Validator.validate!(input[:shadow_y_offset], ::Integer, context: "#{context}[:shadow_y_offset]")
        Hearth::Validator.validate!(input[:teletext_grid_control], ::String, context: "#{context}[:teletext_grid_control]")
        Hearth::Validator.validate!(input[:x_position], ::Integer, context: "#{context}[:x_position]")
        Hearth::Validator.validate!(input[:y_position], ::Integer, context: "#{context}[:y_position]")
      end
    end

    class CancelInputDeviceTransferInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelInputDeviceTransferInput, context: context)
        Hearth::Validator.validate!(input[:input_device_id], ::String, context: "#{context}[:input_device_id]")
      end
    end

    class CancelInputDeviceTransferOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelInputDeviceTransferOutput, context: context)
      end
    end

    class CaptionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionDescription, context: context)
        Hearth::Validator.validate!(input[:caption_selector_name], ::String, context: "#{context}[:caption_selector_name]")
        CaptionDestinationSettings.validate!(input[:destination_settings], context: "#{context}[:destination_settings]") unless input[:destination_settings].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:language_description], ::String, context: "#{context}[:language_description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CaptionDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionDestinationSettings, context: context)
        AribDestinationSettings.validate!(input[:arib_destination_settings], context: "#{context}[:arib_destination_settings]") unless input[:arib_destination_settings].nil?
        BurnInDestinationSettings.validate!(input[:burn_in_destination_settings], context: "#{context}[:burn_in_destination_settings]") unless input[:burn_in_destination_settings].nil?
        DvbSubDestinationSettings.validate!(input[:dvb_sub_destination_settings], context: "#{context}[:dvb_sub_destination_settings]") unless input[:dvb_sub_destination_settings].nil?
        EbuTtDDestinationSettings.validate!(input[:ebu_tt_d_destination_settings], context: "#{context}[:ebu_tt_d_destination_settings]") unless input[:ebu_tt_d_destination_settings].nil?
        EmbeddedDestinationSettings.validate!(input[:embedded_destination_settings], context: "#{context}[:embedded_destination_settings]") unless input[:embedded_destination_settings].nil?
        EmbeddedPlusScte20DestinationSettings.validate!(input[:embedded_plus_scte20_destination_settings], context: "#{context}[:embedded_plus_scte20_destination_settings]") unless input[:embedded_plus_scte20_destination_settings].nil?
        RtmpCaptionInfoDestinationSettings.validate!(input[:rtmp_caption_info_destination_settings], context: "#{context}[:rtmp_caption_info_destination_settings]") unless input[:rtmp_caption_info_destination_settings].nil?
        Scte20PlusEmbeddedDestinationSettings.validate!(input[:scte20_plus_embedded_destination_settings], context: "#{context}[:scte20_plus_embedded_destination_settings]") unless input[:scte20_plus_embedded_destination_settings].nil?
        Scte27DestinationSettings.validate!(input[:scte27_destination_settings], context: "#{context}[:scte27_destination_settings]") unless input[:scte27_destination_settings].nil?
        SmpteTtDestinationSettings.validate!(input[:smpte_tt_destination_settings], context: "#{context}[:smpte_tt_destination_settings]") unless input[:smpte_tt_destination_settings].nil?
        TeletextDestinationSettings.validate!(input[:teletext_destination_settings], context: "#{context}[:teletext_destination_settings]") unless input[:teletext_destination_settings].nil?
        TtmlDestinationSettings.validate!(input[:ttml_destination_settings], context: "#{context}[:ttml_destination_settings]") unless input[:ttml_destination_settings].nil?
        WebvttDestinationSettings.validate!(input[:webvtt_destination_settings], context: "#{context}[:webvtt_destination_settings]") unless input[:webvtt_destination_settings].nil?
      end
    end

    class CaptionLanguageMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionLanguageMapping, context: context)
        Hearth::Validator.validate!(input[:caption_channel], ::Integer, context: "#{context}[:caption_channel]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:language_description], ::String, context: "#{context}[:language_description]")
      end
    end

    class CaptionRectangle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionRectangle, context: context)
        Hearth::Validator.validate!(input[:height], ::Float, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:left_offset], ::Float, context: "#{context}[:left_offset]")
        Hearth::Validator.validate!(input[:top_offset], ::Float, context: "#{context}[:top_offset]")
        Hearth::Validator.validate!(input[:width], ::Float, context: "#{context}[:width]")
      end
    end

    class CaptionSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionSelector, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CaptionSelectorSettings.validate!(input[:selector_settings], context: "#{context}[:selector_settings]") unless input[:selector_settings].nil?
      end
    end

    class CaptionSelectorSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionSelectorSettings, context: context)
        AncillarySourceSettings.validate!(input[:ancillary_source_settings], context: "#{context}[:ancillary_source_settings]") unless input[:ancillary_source_settings].nil?
        AribSourceSettings.validate!(input[:arib_source_settings], context: "#{context}[:arib_source_settings]") unless input[:arib_source_settings].nil?
        DvbSubSourceSettings.validate!(input[:dvb_sub_source_settings], context: "#{context}[:dvb_sub_source_settings]") unless input[:dvb_sub_source_settings].nil?
        EmbeddedSourceSettings.validate!(input[:embedded_source_settings], context: "#{context}[:embedded_source_settings]") unless input[:embedded_source_settings].nil?
        Scte20SourceSettings.validate!(input[:scte20_source_settings], context: "#{context}[:scte20_source_settings]") unless input[:scte20_source_settings].nil?
        Scte27SourceSettings.validate!(input[:scte27_source_settings], context: "#{context}[:scte27_source_settings]") unless input[:scte27_source_settings].nil?
        TeletextSourceSettings.validate!(input[:teletext_source_settings], context: "#{context}[:teletext_source_settings]") unless input[:teletext_source_settings].nil?
      end
    end

    class CdiInputSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CdiInputSpecification, context: context)
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
      end
    end

    class Channel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Channel, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        CdiInputSpecification.validate!(input[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless input[:cdi_input_specification].nil?
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        List____listOfOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        List____listOfChannelEgressEndpoint.validate!(input[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless input[:egress_endpoints].nil?
        EncoderSettings.validate!(input[:encoder_settings], context: "#{context}[:encoder_settings]") unless input[:encoder_settings].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOfInputAttachment.validate!(input[:input_attachments], context: "#{context}[:input_attachments]") unless input[:input_attachments].nil?
        InputSpecification.validate!(input[:input_specification], context: "#{context}[:input_specification]") unless input[:input_specification].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        MaintenanceStatus.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOfPipelineDetail.validate!(input[:pipeline_details], context: "#{context}[:pipeline_details]") unless input[:pipeline_details].nil?
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcOutputSettingsDescription.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class ChannelEgressEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelEgressEndpoint, context: context)
        Hearth::Validator.validate!(input[:source_ip], ::String, context: "#{context}[:source_ip]")
      end
    end

    class ChannelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        CdiInputSpecification.validate!(input[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless input[:cdi_input_specification].nil?
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        List____listOfOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        List____listOfChannelEgressEndpoint.validate!(input[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless input[:egress_endpoints].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOfInputAttachment.validate!(input[:input_attachments], context: "#{context}[:input_attachments]") unless input[:input_attachments].nil?
        InputSpecification.validate!(input[:input_specification], context: "#{context}[:input_specification]") unless input[:input_specification].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        MaintenanceStatus.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcOutputSettingsDescription.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class ClaimDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClaimDeviceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ClaimDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClaimDeviceOutput, context: context)
      end
    end

    class ColorSpacePassthroughSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColorSpacePassthroughSettings, context: context)
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelInput, context: context)
        CdiInputSpecification.validate!(input[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless input[:cdi_input_specification].nil?
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        List____listOfOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        EncoderSettings.validate!(input[:encoder_settings], context: "#{context}[:encoder_settings]") unless input[:encoder_settings].nil?
        List____listOfInputAttachment.validate!(input[:input_attachments], context: "#{context}[:input_attachments]") unless input[:input_attachments].nil?
        InputSpecification.validate!(input[:input_specification], context: "#{context}[:input_specification]") unless input[:input_specification].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        MaintenanceCreateSettings.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:reserved], ::String, context: "#{context}[:reserved]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcOutputSettings.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class CreateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelOutput, context: context)
        Channel.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
      end
    end

    class CreateInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInputInput, context: context)
        List____listOfInputDestinationRequest.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        List____listOfInputDeviceSettings.validate!(input[:input_devices], context: "#{context}[:input_devices]") unless input[:input_devices].nil?
        List____listOf__string.validate!(input[:input_security_groups], context: "#{context}[:input_security_groups]") unless input[:input_security_groups].nil?
        List____listOfMediaConnectFlowRequest.validate!(input[:media_connect_flows], context: "#{context}[:media_connect_flows]") unless input[:media_connect_flows].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        List____listOfInputSourceRequest.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        InputVpcRequest.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class CreateInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInputOutput, context: context)
        Input.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
      end
    end

    class CreateInputSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInputSecurityGroupInput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        List____listOfInputWhitelistRuleCidr.validate!(input[:whitelist_rules], context: "#{context}[:whitelist_rules]") unless input[:whitelist_rules].nil?
      end
    end

    class CreateInputSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInputSecurityGroupOutput, context: context)
        InputSecurityGroup.validate!(input[:security_group], context: "#{context}[:security_group]") unless input[:security_group].nil?
      end
    end

    class CreateMultiplexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMultiplexInput, context: context)
        List____listOf__string.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        MultiplexSettings.validate!(input[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless input[:multiplex_settings].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMultiplexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMultiplexOutput, context: context)
        Multiplex.validate!(input[:multiplex], context: "#{context}[:multiplex]") unless input[:multiplex].nil?
      end
    end

    class CreateMultiplexProgramInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMultiplexProgramInput, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
        MultiplexProgramSettings.validate!(input[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless input[:multiplex_program_settings].nil?
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateMultiplexProgramOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMultiplexProgramOutput, context: context)
        MultiplexProgram.validate!(input[:multiplex_program], context: "#{context}[:multiplex_program]") unless input[:multiplex_program].nil?
      end
    end

    class CreatePartnerInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePartnerInputInput, context: context)
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePartnerInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePartnerInputOutput, context: context)
        Input.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
      end
    end

    class CreateTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsOutput, context: context)
      end
    end

    class DeleteChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
      end
    end

    class DeleteChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        CdiInputSpecification.validate!(input[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless input[:cdi_input_specification].nil?
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        List____listOfOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        List____listOfChannelEgressEndpoint.validate!(input[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless input[:egress_endpoints].nil?
        EncoderSettings.validate!(input[:encoder_settings], context: "#{context}[:encoder_settings]") unless input[:encoder_settings].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOfInputAttachment.validate!(input[:input_attachments], context: "#{context}[:input_attachments]") unless input[:input_attachments].nil?
        InputSpecification.validate!(input[:input_specification], context: "#{context}[:input_specification]") unless input[:input_specification].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        MaintenanceStatus.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOfPipelineDetail.validate!(input[:pipeline_details], context: "#{context}[:pipeline_details]") unless input[:pipeline_details].nil?
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcOutputSettingsDescription.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class DeleteInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInputInput, context: context)
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
      end
    end

    class DeleteInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInputOutput, context: context)
      end
    end

    class DeleteInputSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInputSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:input_security_group_id], ::String, context: "#{context}[:input_security_group_id]")
      end
    end

    class DeleteInputSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInputSecurityGroupOutput, context: context)
      end
    end

    class DeleteMultiplexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMultiplexInput, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
      end
    end

    class DeleteMultiplexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMultiplexOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        List____listOf__string.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        List____listOfMultiplexOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MultiplexSettings.validate!(input[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless input[:multiplex_settings].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:program_count], ::Integer, context: "#{context}[:program_count]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeleteMultiplexProgramInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMultiplexProgramInput, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class DeleteMultiplexProgramOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMultiplexProgramOutput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        MultiplexProgramSettings.validate!(input[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless input[:multiplex_program_settings].nil?
        MultiplexProgramPacketIdentifiersMap.validate!(input[:packet_identifiers_map], context: "#{context}[:packet_identifiers_map]") unless input[:packet_identifiers_map].nil?
        List____listOfMultiplexProgramPipelineDetail.validate!(input[:pipeline_details], context: "#{context}[:pipeline_details]") unless input[:pipeline_details].nil?
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class DeleteReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReservationInput, context: context)
        Hearth::Validator.validate!(input[:reservation_id], ::String, context: "#{context}[:reservation_id]")
      end
    end

    class DeleteReservationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReservationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:duration_units], ::String, context: "#{context}[:duration_units]")
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:offering_description], ::String, context: "#{context}[:offering_description]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:reservation_id], ::String, context: "#{context}[:reservation_id]")
        ReservationResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
      end
    end

    class DeleteScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduleInput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
      end
    end

    class DeleteScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduleOutput, context: context)
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class DeleteTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsOutput, context: context)
      end
    end

    class DescribeChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
      end
    end

    class DescribeChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        CdiInputSpecification.validate!(input[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless input[:cdi_input_specification].nil?
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        List____listOfOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        List____listOfChannelEgressEndpoint.validate!(input[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless input[:egress_endpoints].nil?
        EncoderSettings.validate!(input[:encoder_settings], context: "#{context}[:encoder_settings]") unless input[:encoder_settings].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOfInputAttachment.validate!(input[:input_attachments], context: "#{context}[:input_attachments]") unless input[:input_attachments].nil?
        InputSpecification.validate!(input[:input_specification], context: "#{context}[:input_specification]") unless input[:input_specification].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        MaintenanceStatus.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOfPipelineDetail.validate!(input[:pipeline_details], context: "#{context}[:pipeline_details]") unless input[:pipeline_details].nil?
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcOutputSettingsDescription.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class DescribeInputDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputDeviceInput, context: context)
        Hearth::Validator.validate!(input[:input_device_id], ::String, context: "#{context}[:input_device_id]")
      end
    end

    class DescribeInputDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:device_settings_sync_state], ::String, context: "#{context}[:device_settings_sync_state]")
        Hearth::Validator.validate!(input[:device_update_status], ::String, context: "#{context}[:device_update_status]")
        InputDeviceHdSettings.validate!(input[:hd_device_settings], context: "#{context}[:hd_device_settings]") unless input[:hd_device_settings].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        InputDeviceNetworkSettings.validate!(input[:network_settings], context: "#{context}[:network_settings]") unless input[:network_settings].nil?
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        InputDeviceUhdSettings.validate!(input[:uhd_device_settings], context: "#{context}[:uhd_device_settings]") unless input[:uhd_device_settings].nil?
      end
    end

    class DescribeInputDeviceThumbnailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputDeviceThumbnailInput, context: context)
        Hearth::Validator.validate!(input[:input_device_id], ::String, context: "#{context}[:input_device_id]")
        Hearth::Validator.validate!(input[:accept], ::String, context: "#{context}[:accept]")
      end
    end

    class DescribeInputDeviceThumbnailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputDeviceThumbnailOutput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
      end
    end

    class DescribeInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputInput, context: context)
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
      end
    end

    class DescribeInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        List____listOf__string.validate!(input[:attached_channels], context: "#{context}[:attached_channels]") unless input[:attached_channels].nil?
        List____listOfInputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:input_class], ::String, context: "#{context}[:input_class]")
        List____listOfInputDeviceSettings.validate!(input[:input_devices], context: "#{context}[:input_devices]") unless input[:input_devices].nil?
        List____listOf__string.validate!(input[:input_partner_ids], context: "#{context}[:input_partner_ids]") unless input[:input_partner_ids].nil?
        Hearth::Validator.validate!(input[:input_source_type], ::String, context: "#{context}[:input_source_type]")
        List____listOfMediaConnectFlow.validate!(input[:media_connect_flows], context: "#{context}[:media_connect_flows]") unless input[:media_connect_flows].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        List____listOf__string.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        List____listOfInputSource.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DescribeInputSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:input_security_group_id], ::String, context: "#{context}[:input_security_group_id]")
      end
    end

    class DescribeInputSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputSecurityGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOf__string.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        List____listOfInputWhitelistRule.validate!(input[:whitelist_rules], context: "#{context}[:whitelist_rules]") unless input[:whitelist_rules].nil?
      end
    end

    class DescribeMultiplexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMultiplexInput, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
      end
    end

    class DescribeMultiplexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMultiplexOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        List____listOf__string.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        List____listOfMultiplexOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MultiplexSettings.validate!(input[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless input[:multiplex_settings].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:program_count], ::Integer, context: "#{context}[:program_count]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeMultiplexProgramInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMultiplexProgramInput, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class DescribeMultiplexProgramOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMultiplexProgramOutput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        MultiplexProgramSettings.validate!(input[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless input[:multiplex_program_settings].nil?
        MultiplexProgramPacketIdentifiersMap.validate!(input[:packet_identifiers_map], context: "#{context}[:packet_identifiers_map]") unless input[:packet_identifiers_map].nil?
        List____listOfMultiplexProgramPipelineDetail.validate!(input[:pipeline_details], context: "#{context}[:pipeline_details]") unless input[:pipeline_details].nil?
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class DescribeOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOfferingInput, context: context)
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
      end
    end

    class DescribeOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOfferingOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:duration_units], ::String, context: "#{context}[:duration_units]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:offering_description], ::String, context: "#{context}[:offering_description]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        ReservationResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
      end
    end

    class DescribeReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservationInput, context: context)
        Hearth::Validator.validate!(input[:reservation_id], ::String, context: "#{context}[:reservation_id]")
      end
    end

    class DescribeReservationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:duration_units], ::String, context: "#{context}[:duration_units]")
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:offering_description], ::String, context: "#{context}[:offering_description]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:reservation_id], ::String, context: "#{context}[:reservation_id]")
        ReservationResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
      end
    end

    class DescribeScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduleInput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfScheduleAction.validate!(input[:schedule_actions], context: "#{context}[:schedule_actions]") unless input[:schedule_actions].nil?
      end
    end

    class DvbNitSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbNitSettings, context: context)
        Hearth::Validator.validate!(input[:network_id], ::Integer, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:network_name], ::String, context: "#{context}[:network_name]")
        Hearth::Validator.validate!(input[:rep_interval], ::Integer, context: "#{context}[:rep_interval]")
      end
    end

    class DvbSdtSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbSdtSettings, context: context)
        Hearth::Validator.validate!(input[:output_sdt], ::String, context: "#{context}[:output_sdt]")
        Hearth::Validator.validate!(input[:rep_interval], ::Integer, context: "#{context}[:rep_interval]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_provider_name], ::String, context: "#{context}[:service_provider_name]")
      end
    end

    class DvbSubDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbSubDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:alignment], ::String, context: "#{context}[:alignment]")
        Hearth::Validator.validate!(input[:background_color], ::String, context: "#{context}[:background_color]")
        Hearth::Validator.validate!(input[:background_opacity], ::Integer, context: "#{context}[:background_opacity]")
        InputLocation.validate!(input[:font], context: "#{context}[:font]") unless input[:font].nil?
        Hearth::Validator.validate!(input[:font_color], ::String, context: "#{context}[:font_color]")
        Hearth::Validator.validate!(input[:font_opacity], ::Integer, context: "#{context}[:font_opacity]")
        Hearth::Validator.validate!(input[:font_resolution], ::Integer, context: "#{context}[:font_resolution]")
        Hearth::Validator.validate!(input[:font_size], ::String, context: "#{context}[:font_size]")
        Hearth::Validator.validate!(input[:outline_color], ::String, context: "#{context}[:outline_color]")
        Hearth::Validator.validate!(input[:outline_size], ::Integer, context: "#{context}[:outline_size]")
        Hearth::Validator.validate!(input[:shadow_color], ::String, context: "#{context}[:shadow_color]")
        Hearth::Validator.validate!(input[:shadow_opacity], ::Integer, context: "#{context}[:shadow_opacity]")
        Hearth::Validator.validate!(input[:shadow_x_offset], ::Integer, context: "#{context}[:shadow_x_offset]")
        Hearth::Validator.validate!(input[:shadow_y_offset], ::Integer, context: "#{context}[:shadow_y_offset]")
        Hearth::Validator.validate!(input[:teletext_grid_control], ::String, context: "#{context}[:teletext_grid_control]")
        Hearth::Validator.validate!(input[:x_position], ::Integer, context: "#{context}[:x_position]")
        Hearth::Validator.validate!(input[:y_position], ::Integer, context: "#{context}[:y_position]")
      end
    end

    class DvbSubSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbSubSourceSettings, context: context)
        Hearth::Validator.validate!(input[:ocr_language], ::String, context: "#{context}[:ocr_language]")
        Hearth::Validator.validate!(input[:pid], ::Integer, context: "#{context}[:pid]")
      end
    end

    class DvbTdtSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbTdtSettings, context: context)
        Hearth::Validator.validate!(input[:rep_interval], ::Integer, context: "#{context}[:rep_interval]")
      end
    end

    class Eac3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Eac3Settings, context: context)
        Hearth::Validator.validate!(input[:attenuation_control], ::String, context: "#{context}[:attenuation_control]")
        Hearth::Validator.validate!(input[:bitrate], ::Float, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:bitstream_mode], ::String, context: "#{context}[:bitstream_mode]")
        Hearth::Validator.validate!(input[:coding_mode], ::String, context: "#{context}[:coding_mode]")
        Hearth::Validator.validate!(input[:dc_filter], ::String, context: "#{context}[:dc_filter]")
        Hearth::Validator.validate!(input[:dialnorm], ::Integer, context: "#{context}[:dialnorm]")
        Hearth::Validator.validate!(input[:drc_line], ::String, context: "#{context}[:drc_line]")
        Hearth::Validator.validate!(input[:drc_rf], ::String, context: "#{context}[:drc_rf]")
        Hearth::Validator.validate!(input[:lfe_control], ::String, context: "#{context}[:lfe_control]")
        Hearth::Validator.validate!(input[:lfe_filter], ::String, context: "#{context}[:lfe_filter]")
        Hearth::Validator.validate!(input[:lo_ro_center_mix_level], ::Float, context: "#{context}[:lo_ro_center_mix_level]")
        Hearth::Validator.validate!(input[:lo_ro_surround_mix_level], ::Float, context: "#{context}[:lo_ro_surround_mix_level]")
        Hearth::Validator.validate!(input[:lt_rt_center_mix_level], ::Float, context: "#{context}[:lt_rt_center_mix_level]")
        Hearth::Validator.validate!(input[:lt_rt_surround_mix_level], ::Float, context: "#{context}[:lt_rt_surround_mix_level]")
        Hearth::Validator.validate!(input[:metadata_control], ::String, context: "#{context}[:metadata_control]")
        Hearth::Validator.validate!(input[:passthrough_control], ::String, context: "#{context}[:passthrough_control]")
        Hearth::Validator.validate!(input[:phase_control], ::String, context: "#{context}[:phase_control]")
        Hearth::Validator.validate!(input[:stereo_downmix], ::String, context: "#{context}[:stereo_downmix]")
        Hearth::Validator.validate!(input[:surround_ex_mode], ::String, context: "#{context}[:surround_ex_mode]")
        Hearth::Validator.validate!(input[:surround_mode], ::String, context: "#{context}[:surround_mode]")
      end
    end

    class EbuTtDDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbuTtDDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:copyright_holder], ::String, context: "#{context}[:copyright_holder]")
        Hearth::Validator.validate!(input[:fill_line_gap], ::String, context: "#{context}[:fill_line_gap]")
        Hearth::Validator.validate!(input[:font_family], ::String, context: "#{context}[:font_family]")
        Hearth::Validator.validate!(input[:style_control], ::String, context: "#{context}[:style_control]")
      end
    end

    class EmbeddedDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmbeddedDestinationSettings, context: context)
      end
    end

    class EmbeddedPlusScte20DestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmbeddedPlusScte20DestinationSettings, context: context)
      end
    end

    class EmbeddedSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmbeddedSourceSettings, context: context)
        Hearth::Validator.validate!(input[:convert608_to708], ::String, context: "#{context}[:convert608_to708]")
        Hearth::Validator.validate!(input[:scte20_detection], ::String, context: "#{context}[:scte20_detection]")
        Hearth::Validator.validate!(input[:source608_channel_number], ::Integer, context: "#{context}[:source608_channel_number]")
        Hearth::Validator.validate!(input[:source608_track_number], ::Integer, context: "#{context}[:source608_track_number]")
      end
    end

    class EncoderSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncoderSettings, context: context)
        List____listOfAudioDescription.validate!(input[:audio_descriptions], context: "#{context}[:audio_descriptions]") unless input[:audio_descriptions].nil?
        AvailBlanking.validate!(input[:avail_blanking], context: "#{context}[:avail_blanking]") unless input[:avail_blanking].nil?
        AvailConfiguration.validate!(input[:avail_configuration], context: "#{context}[:avail_configuration]") unless input[:avail_configuration].nil?
        BlackoutSlate.validate!(input[:blackout_slate], context: "#{context}[:blackout_slate]") unless input[:blackout_slate].nil?
        List____listOfCaptionDescription.validate!(input[:caption_descriptions], context: "#{context}[:caption_descriptions]") unless input[:caption_descriptions].nil?
        FeatureActivations.validate!(input[:feature_activations], context: "#{context}[:feature_activations]") unless input[:feature_activations].nil?
        GlobalConfiguration.validate!(input[:global_configuration], context: "#{context}[:global_configuration]") unless input[:global_configuration].nil?
        MotionGraphicsConfiguration.validate!(input[:motion_graphics_configuration], context: "#{context}[:motion_graphics_configuration]") unless input[:motion_graphics_configuration].nil?
        NielsenConfiguration.validate!(input[:nielsen_configuration], context: "#{context}[:nielsen_configuration]") unless input[:nielsen_configuration].nil?
        List____listOfOutputGroup.validate!(input[:output_groups], context: "#{context}[:output_groups]") unless input[:output_groups].nil?
        TimecodeConfig.validate!(input[:timecode_config], context: "#{context}[:timecode_config]") unless input[:timecode_config].nil?
        List____listOfVideoDescription.validate!(input[:video_descriptions], context: "#{context}[:video_descriptions]") unless input[:video_descriptions].nil?
      end
    end

    class FailoverCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverCondition, context: context)
        FailoverConditionSettings.validate!(input[:failover_condition_settings], context: "#{context}[:failover_condition_settings]") unless input[:failover_condition_settings].nil?
      end
    end

    class FailoverConditionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverConditionSettings, context: context)
        AudioSilenceFailoverSettings.validate!(input[:audio_silence_settings], context: "#{context}[:audio_silence_settings]") unless input[:audio_silence_settings].nil?
        InputLossFailoverSettings.validate!(input[:input_loss_settings], context: "#{context}[:input_loss_settings]") unless input[:input_loss_settings].nil?
        VideoBlackFailoverSettings.validate!(input[:video_black_settings], context: "#{context}[:video_black_settings]") unless input[:video_black_settings].nil?
      end
    end

    class FeatureActivations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeatureActivations, context: context)
        Hearth::Validator.validate!(input[:input_prepare_schedule_actions], ::String, context: "#{context}[:input_prepare_schedule_actions]")
      end
    end

    class FecOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FecOutputSettings, context: context)
        Hearth::Validator.validate!(input[:column_depth], ::Integer, context: "#{context}[:column_depth]")
        Hearth::Validator.validate!(input[:include_fec], ::String, context: "#{context}[:include_fec]")
        Hearth::Validator.validate!(input[:row_length], ::Integer, context: "#{context}[:row_length]")
      end
    end

    class FixedModeScheduleActionStartSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FixedModeScheduleActionStartSettings, context: context)
        Hearth::Validator.validate!(input[:time], ::String, context: "#{context}[:time]")
      end
    end

    class Fmp4HlsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Fmp4HlsSettings, context: context)
        Hearth::Validator.validate!(input[:audio_rendition_sets], ::String, context: "#{context}[:audio_rendition_sets]")
        Hearth::Validator.validate!(input[:nielsen_id3_behavior], ::String, context: "#{context}[:nielsen_id3_behavior]")
        Hearth::Validator.validate!(input[:timed_metadata_behavior], ::String, context: "#{context}[:timed_metadata_behavior]")
      end
    end

    class FollowModeScheduleActionStartSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FollowModeScheduleActionStartSettings, context: context)
        Hearth::Validator.validate!(input[:follow_point], ::String, context: "#{context}[:follow_point]")
        Hearth::Validator.validate!(input[:reference_action_name], ::String, context: "#{context}[:reference_action_name]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FrameCaptureCdnSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameCaptureCdnSettings, context: context)
        FrameCaptureS3Settings.validate!(input[:frame_capture_s3_settings], context: "#{context}[:frame_capture_s3_settings]") unless input[:frame_capture_s3_settings].nil?
      end
    end

    class FrameCaptureGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameCaptureGroupSettings, context: context)
        OutputLocationRef.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        FrameCaptureCdnSettings.validate!(input[:frame_capture_cdn_settings], context: "#{context}[:frame_capture_cdn_settings]") unless input[:frame_capture_cdn_settings].nil?
      end
    end

    class FrameCaptureHlsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameCaptureHlsSettings, context: context)
      end
    end

    class FrameCaptureOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameCaptureOutputSettings, context: context)
        Hearth::Validator.validate!(input[:name_modifier], ::String, context: "#{context}[:name_modifier]")
      end
    end

    class FrameCaptureS3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameCaptureS3Settings, context: context)
        Hearth::Validator.validate!(input[:canned_acl], ::String, context: "#{context}[:canned_acl]")
      end
    end

    class FrameCaptureSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameCaptureSettings, context: context)
        Hearth::Validator.validate!(input[:capture_interval], ::Integer, context: "#{context}[:capture_interval]")
        Hearth::Validator.validate!(input[:capture_interval_units], ::String, context: "#{context}[:capture_interval_units]")
      end
    end

    class GatewayTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GlobalConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalConfiguration, context: context)
        Hearth::Validator.validate!(input[:initial_audio_gain], ::Integer, context: "#{context}[:initial_audio_gain]")
        Hearth::Validator.validate!(input[:input_end_action], ::String, context: "#{context}[:input_end_action]")
        InputLossBehavior.validate!(input[:input_loss_behavior], context: "#{context}[:input_loss_behavior]") unless input[:input_loss_behavior].nil?
        Hearth::Validator.validate!(input[:output_locking_mode], ::String, context: "#{context}[:output_locking_mode]")
        Hearth::Validator.validate!(input[:output_timing_source], ::String, context: "#{context}[:output_timing_source]")
        Hearth::Validator.validate!(input[:support_low_framerate_inputs], ::String, context: "#{context}[:support_low_framerate_inputs]")
      end
    end

    class H264ColorSpaceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H264ColorSpaceSettings, context: context)
        ColorSpacePassthroughSettings.validate!(input[:color_space_passthrough_settings], context: "#{context}[:color_space_passthrough_settings]") unless input[:color_space_passthrough_settings].nil?
        Rec601Settings.validate!(input[:rec601_settings], context: "#{context}[:rec601_settings]") unless input[:rec601_settings].nil?
        Rec709Settings.validate!(input[:rec709_settings], context: "#{context}[:rec709_settings]") unless input[:rec709_settings].nil?
      end
    end

    class H264FilterSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H264FilterSettings, context: context)
        TemporalFilterSettings.validate!(input[:temporal_filter_settings], context: "#{context}[:temporal_filter_settings]") unless input[:temporal_filter_settings].nil?
      end
    end

    class H264Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H264Settings, context: context)
        Hearth::Validator.validate!(input[:adaptive_quantization], ::String, context: "#{context}[:adaptive_quantization]")
        Hearth::Validator.validate!(input[:afd_signaling], ::String, context: "#{context}[:afd_signaling]")
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:buf_fill_pct], ::Integer, context: "#{context}[:buf_fill_pct]")
        Hearth::Validator.validate!(input[:buf_size], ::Integer, context: "#{context}[:buf_size]")
        Hearth::Validator.validate!(input[:color_metadata], ::String, context: "#{context}[:color_metadata]")
        H264ColorSpaceSettings.validate!(input[:color_space_settings], context: "#{context}[:color_space_settings]") unless input[:color_space_settings].nil?
        Hearth::Validator.validate!(input[:entropy_encoding], ::String, context: "#{context}[:entropy_encoding]")
        H264FilterSettings.validate!(input[:filter_settings], context: "#{context}[:filter_settings]") unless input[:filter_settings].nil?
        Hearth::Validator.validate!(input[:fixed_afd], ::String, context: "#{context}[:fixed_afd]")
        Hearth::Validator.validate!(input[:flicker_aq], ::String, context: "#{context}[:flicker_aq]")
        Hearth::Validator.validate!(input[:force_field_pictures], ::String, context: "#{context}[:force_field_pictures]")
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:gop_b_reference], ::String, context: "#{context}[:gop_b_reference]")
        Hearth::Validator.validate!(input[:gop_closed_cadence], ::Integer, context: "#{context}[:gop_closed_cadence]")
        Hearth::Validator.validate!(input[:gop_num_b_frames], ::Integer, context: "#{context}[:gop_num_b_frames]")
        Hearth::Validator.validate!(input[:gop_size], ::Float, context: "#{context}[:gop_size]")
        Hearth::Validator.validate!(input[:gop_size_units], ::String, context: "#{context}[:gop_size_units]")
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
        Hearth::Validator.validate!(input[:look_ahead_rate_control], ::String, context: "#{context}[:look_ahead_rate_control]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:min_i_interval], ::Integer, context: "#{context}[:min_i_interval]")
        Hearth::Validator.validate!(input[:num_ref_frames], ::Integer, context: "#{context}[:num_ref_frames]")
        Hearth::Validator.validate!(input[:par_control], ::String, context: "#{context}[:par_control]")
        Hearth::Validator.validate!(input[:par_denominator], ::Integer, context: "#{context}[:par_denominator]")
        Hearth::Validator.validate!(input[:par_numerator], ::Integer, context: "#{context}[:par_numerator]")
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
        Hearth::Validator.validate!(input[:quality_level], ::String, context: "#{context}[:quality_level]")
        Hearth::Validator.validate!(input[:qvbr_quality_level], ::Integer, context: "#{context}[:qvbr_quality_level]")
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
        Hearth::Validator.validate!(input[:scan_type], ::String, context: "#{context}[:scan_type]")
        Hearth::Validator.validate!(input[:scene_change_detect], ::String, context: "#{context}[:scene_change_detect]")
        Hearth::Validator.validate!(input[:slices], ::Integer, context: "#{context}[:slices]")
        Hearth::Validator.validate!(input[:softness], ::Integer, context: "#{context}[:softness]")
        Hearth::Validator.validate!(input[:spatial_aq], ::String, context: "#{context}[:spatial_aq]")
        Hearth::Validator.validate!(input[:subgop_length], ::String, context: "#{context}[:subgop_length]")
        Hearth::Validator.validate!(input[:syntax], ::String, context: "#{context}[:syntax]")
        Hearth::Validator.validate!(input[:temporal_aq], ::String, context: "#{context}[:temporal_aq]")
        Hearth::Validator.validate!(input[:timecode_insertion], ::String, context: "#{context}[:timecode_insertion]")
      end
    end

    class H265ColorSpaceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H265ColorSpaceSettings, context: context)
        ColorSpacePassthroughSettings.validate!(input[:color_space_passthrough_settings], context: "#{context}[:color_space_passthrough_settings]") unless input[:color_space_passthrough_settings].nil?
        Hdr10Settings.validate!(input[:hdr10_settings], context: "#{context}[:hdr10_settings]") unless input[:hdr10_settings].nil?
        Rec601Settings.validate!(input[:rec601_settings], context: "#{context}[:rec601_settings]") unless input[:rec601_settings].nil?
        Rec709Settings.validate!(input[:rec709_settings], context: "#{context}[:rec709_settings]") unless input[:rec709_settings].nil?
      end
    end

    class H265FilterSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H265FilterSettings, context: context)
        TemporalFilterSettings.validate!(input[:temporal_filter_settings], context: "#{context}[:temporal_filter_settings]") unless input[:temporal_filter_settings].nil?
      end
    end

    class H265Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H265Settings, context: context)
        Hearth::Validator.validate!(input[:adaptive_quantization], ::String, context: "#{context}[:adaptive_quantization]")
        Hearth::Validator.validate!(input[:afd_signaling], ::String, context: "#{context}[:afd_signaling]")
        Hearth::Validator.validate!(input[:alternative_transfer_function], ::String, context: "#{context}[:alternative_transfer_function]")
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:buf_size], ::Integer, context: "#{context}[:buf_size]")
        Hearth::Validator.validate!(input[:color_metadata], ::String, context: "#{context}[:color_metadata]")
        H265ColorSpaceSettings.validate!(input[:color_space_settings], context: "#{context}[:color_space_settings]") unless input[:color_space_settings].nil?
        H265FilterSettings.validate!(input[:filter_settings], context: "#{context}[:filter_settings]") unless input[:filter_settings].nil?
        Hearth::Validator.validate!(input[:fixed_afd], ::String, context: "#{context}[:fixed_afd]")
        Hearth::Validator.validate!(input[:flicker_aq], ::String, context: "#{context}[:flicker_aq]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:gop_closed_cadence], ::Integer, context: "#{context}[:gop_closed_cadence]")
        Hearth::Validator.validate!(input[:gop_size], ::Float, context: "#{context}[:gop_size]")
        Hearth::Validator.validate!(input[:gop_size_units], ::String, context: "#{context}[:gop_size_units]")
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
        Hearth::Validator.validate!(input[:look_ahead_rate_control], ::String, context: "#{context}[:look_ahead_rate_control]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:min_i_interval], ::Integer, context: "#{context}[:min_i_interval]")
        Hearth::Validator.validate!(input[:par_denominator], ::Integer, context: "#{context}[:par_denominator]")
        Hearth::Validator.validate!(input[:par_numerator], ::Integer, context: "#{context}[:par_numerator]")
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
        Hearth::Validator.validate!(input[:qvbr_quality_level], ::Integer, context: "#{context}[:qvbr_quality_level]")
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
        Hearth::Validator.validate!(input[:scan_type], ::String, context: "#{context}[:scan_type]")
        Hearth::Validator.validate!(input[:scene_change_detect], ::String, context: "#{context}[:scene_change_detect]")
        Hearth::Validator.validate!(input[:slices], ::Integer, context: "#{context}[:slices]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Hearth::Validator.validate!(input[:timecode_insertion], ::String, context: "#{context}[:timecode_insertion]")
      end
    end

    class Hdr10Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Hdr10Settings, context: context)
        Hearth::Validator.validate!(input[:max_cll], ::Integer, context: "#{context}[:max_cll]")
        Hearth::Validator.validate!(input[:max_fall], ::Integer, context: "#{context}[:max_fall]")
      end
    end

    class HlsAkamaiSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsAkamaiSettings, context: context)
        Hearth::Validator.validate!(input[:connection_retry_interval], ::Integer, context: "#{context}[:connection_retry_interval]")
        Hearth::Validator.validate!(input[:filecache_duration], ::Integer, context: "#{context}[:filecache_duration]")
        Hearth::Validator.validate!(input[:http_transfer_mode], ::String, context: "#{context}[:http_transfer_mode]")
        Hearth::Validator.validate!(input[:num_retries], ::Integer, context: "#{context}[:num_retries]")
        Hearth::Validator.validate!(input[:restart_delay], ::Integer, context: "#{context}[:restart_delay]")
        Hearth::Validator.validate!(input[:salt], ::String, context: "#{context}[:salt]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class HlsBasicPutSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsBasicPutSettings, context: context)
        Hearth::Validator.validate!(input[:connection_retry_interval], ::Integer, context: "#{context}[:connection_retry_interval]")
        Hearth::Validator.validate!(input[:filecache_duration], ::Integer, context: "#{context}[:filecache_duration]")
        Hearth::Validator.validate!(input[:num_retries], ::Integer, context: "#{context}[:num_retries]")
        Hearth::Validator.validate!(input[:restart_delay], ::Integer, context: "#{context}[:restart_delay]")
      end
    end

    class HlsCdnSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsCdnSettings, context: context)
        HlsAkamaiSettings.validate!(input[:hls_akamai_settings], context: "#{context}[:hls_akamai_settings]") unless input[:hls_akamai_settings].nil?
        HlsBasicPutSettings.validate!(input[:hls_basic_put_settings], context: "#{context}[:hls_basic_put_settings]") unless input[:hls_basic_put_settings].nil?
        HlsMediaStoreSettings.validate!(input[:hls_media_store_settings], context: "#{context}[:hls_media_store_settings]") unless input[:hls_media_store_settings].nil?
        HlsS3Settings.validate!(input[:hls_s3_settings], context: "#{context}[:hls_s3_settings]") unless input[:hls_s3_settings].nil?
        HlsWebdavSettings.validate!(input[:hls_webdav_settings], context: "#{context}[:hls_webdav_settings]") unless input[:hls_webdav_settings].nil?
      end
    end

    class HlsGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsGroupSettings, context: context)
        List____listOfHlsAdMarkers.validate!(input[:ad_markers], context: "#{context}[:ad_markers]") unless input[:ad_markers].nil?
        Hearth::Validator.validate!(input[:base_url_content], ::String, context: "#{context}[:base_url_content]")
        Hearth::Validator.validate!(input[:base_url_content1], ::String, context: "#{context}[:base_url_content1]")
        Hearth::Validator.validate!(input[:base_url_manifest], ::String, context: "#{context}[:base_url_manifest]")
        Hearth::Validator.validate!(input[:base_url_manifest1], ::String, context: "#{context}[:base_url_manifest1]")
        List____listOfCaptionLanguageMapping.validate!(input[:caption_language_mappings], context: "#{context}[:caption_language_mappings]") unless input[:caption_language_mappings].nil?
        Hearth::Validator.validate!(input[:caption_language_setting], ::String, context: "#{context}[:caption_language_setting]")
        Hearth::Validator.validate!(input[:client_cache], ::String, context: "#{context}[:client_cache]")
        Hearth::Validator.validate!(input[:codec_specification], ::String, context: "#{context}[:codec_specification]")
        Hearth::Validator.validate!(input[:constant_iv], ::String, context: "#{context}[:constant_iv]")
        OutputLocationRef.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:directory_structure], ::String, context: "#{context}[:directory_structure]")
        Hearth::Validator.validate!(input[:discontinuity_tags], ::String, context: "#{context}[:discontinuity_tags]")
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        HlsCdnSettings.validate!(input[:hls_cdn_settings], context: "#{context}[:hls_cdn_settings]") unless input[:hls_cdn_settings].nil?
        Hearth::Validator.validate!(input[:hls_id3_segment_tagging], ::String, context: "#{context}[:hls_id3_segment_tagging]")
        Hearth::Validator.validate!(input[:i_frame_only_playlists], ::String, context: "#{context}[:i_frame_only_playlists]")
        Hearth::Validator.validate!(input[:incomplete_segment_behavior], ::String, context: "#{context}[:incomplete_segment_behavior]")
        Hearth::Validator.validate!(input[:index_n_segments], ::Integer, context: "#{context}[:index_n_segments]")
        Hearth::Validator.validate!(input[:input_loss_action], ::String, context: "#{context}[:input_loss_action]")
        Hearth::Validator.validate!(input[:iv_in_manifest], ::String, context: "#{context}[:iv_in_manifest]")
        Hearth::Validator.validate!(input[:iv_source], ::String, context: "#{context}[:iv_source]")
        Hearth::Validator.validate!(input[:keep_segments], ::Integer, context: "#{context}[:keep_segments]")
        Hearth::Validator.validate!(input[:key_format], ::String, context: "#{context}[:key_format]")
        Hearth::Validator.validate!(input[:key_format_versions], ::String, context: "#{context}[:key_format_versions]")
        KeyProviderSettings.validate!(input[:key_provider_settings], context: "#{context}[:key_provider_settings]") unless input[:key_provider_settings].nil?
        Hearth::Validator.validate!(input[:manifest_compression], ::String, context: "#{context}[:manifest_compression]")
        Hearth::Validator.validate!(input[:manifest_duration_format], ::String, context: "#{context}[:manifest_duration_format]")
        Hearth::Validator.validate!(input[:min_segment_length], ::Integer, context: "#{context}[:min_segment_length]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:output_selection], ::String, context: "#{context}[:output_selection]")
        Hearth::Validator.validate!(input[:program_date_time], ::String, context: "#{context}[:program_date_time]")
        Hearth::Validator.validate!(input[:program_date_time_clock], ::String, context: "#{context}[:program_date_time_clock]")
        Hearth::Validator.validate!(input[:program_date_time_period], ::Integer, context: "#{context}[:program_date_time_period]")
        Hearth::Validator.validate!(input[:redundant_manifest], ::String, context: "#{context}[:redundant_manifest]")
        Hearth::Validator.validate!(input[:segment_length], ::Integer, context: "#{context}[:segment_length]")
        Hearth::Validator.validate!(input[:segmentation_mode], ::String, context: "#{context}[:segmentation_mode]")
        Hearth::Validator.validate!(input[:segments_per_subdirectory], ::Integer, context: "#{context}[:segments_per_subdirectory]")
        Hearth::Validator.validate!(input[:stream_inf_resolution], ::String, context: "#{context}[:stream_inf_resolution]")
        Hearth::Validator.validate!(input[:timed_metadata_id3_frame], ::String, context: "#{context}[:timed_metadata_id3_frame]")
        Hearth::Validator.validate!(input[:timed_metadata_id3_period], ::Integer, context: "#{context}[:timed_metadata_id3_period]")
        Hearth::Validator.validate!(input[:timestamp_delta_milliseconds], ::Integer, context: "#{context}[:timestamp_delta_milliseconds]")
        Hearth::Validator.validate!(input[:ts_file_mode], ::String, context: "#{context}[:ts_file_mode]")
      end
    end

    class HlsId3SegmentTaggingScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsId3SegmentTaggingScheduleActionSettings, context: context)
        Hearth::Validator.validate!(input[:tag], ::String, context: "#{context}[:tag]")
      end
    end

    class HlsInputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsInputSettings, context: context)
        Hearth::Validator.validate!(input[:bandwidth], ::Integer, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:buffer_segments], ::Integer, context: "#{context}[:buffer_segments]")
        Hearth::Validator.validate!(input[:retries], ::Integer, context: "#{context}[:retries]")
        Hearth::Validator.validate!(input[:retry_interval], ::Integer, context: "#{context}[:retry_interval]")
        Hearth::Validator.validate!(input[:scte35_source], ::String, context: "#{context}[:scte35_source]")
      end
    end

    class HlsMediaStoreSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsMediaStoreSettings, context: context)
        Hearth::Validator.validate!(input[:connection_retry_interval], ::Integer, context: "#{context}[:connection_retry_interval]")
        Hearth::Validator.validate!(input[:filecache_duration], ::Integer, context: "#{context}[:filecache_duration]")
        Hearth::Validator.validate!(input[:media_store_storage_class], ::String, context: "#{context}[:media_store_storage_class]")
        Hearth::Validator.validate!(input[:num_retries], ::Integer, context: "#{context}[:num_retries]")
        Hearth::Validator.validate!(input[:restart_delay], ::Integer, context: "#{context}[:restart_delay]")
      end
    end

    class HlsOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsOutputSettings, context: context)
        Hearth::Validator.validate!(input[:h265_packaging_type], ::String, context: "#{context}[:h265_packaging_type]")
        HlsSettings.validate!(input[:hls_settings], context: "#{context}[:hls_settings]") unless input[:hls_settings].nil?
        Hearth::Validator.validate!(input[:name_modifier], ::String, context: "#{context}[:name_modifier]")
        Hearth::Validator.validate!(input[:segment_modifier], ::String, context: "#{context}[:segment_modifier]")
      end
    end

    class HlsS3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsS3Settings, context: context)
        Hearth::Validator.validate!(input[:canned_acl], ::String, context: "#{context}[:canned_acl]")
      end
    end

    class HlsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsSettings, context: context)
        AudioOnlyHlsSettings.validate!(input[:audio_only_hls_settings], context: "#{context}[:audio_only_hls_settings]") unless input[:audio_only_hls_settings].nil?
        Fmp4HlsSettings.validate!(input[:fmp4_hls_settings], context: "#{context}[:fmp4_hls_settings]") unless input[:fmp4_hls_settings].nil?
        FrameCaptureHlsSettings.validate!(input[:frame_capture_hls_settings], context: "#{context}[:frame_capture_hls_settings]") unless input[:frame_capture_hls_settings].nil?
        StandardHlsSettings.validate!(input[:standard_hls_settings], context: "#{context}[:standard_hls_settings]") unless input[:standard_hls_settings].nil?
      end
    end

    class HlsTimedMetadataScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsTimedMetadataScheduleActionSettings, context: context)
        Hearth::Validator.validate!(input[:id3], ::String, context: "#{context}[:id3]")
      end
    end

    class HlsWebdavSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsWebdavSettings, context: context)
        Hearth::Validator.validate!(input[:connection_retry_interval], ::Integer, context: "#{context}[:connection_retry_interval]")
        Hearth::Validator.validate!(input[:filecache_duration], ::Integer, context: "#{context}[:filecache_duration]")
        Hearth::Validator.validate!(input[:http_transfer_mode], ::String, context: "#{context}[:http_transfer_mode]")
        Hearth::Validator.validate!(input[:num_retries], ::Integer, context: "#{context}[:num_retries]")
        Hearth::Validator.validate!(input[:restart_delay], ::Integer, context: "#{context}[:restart_delay]")
      end
    end

    class HtmlMotionGraphicsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HtmlMotionGraphicsSettings, context: context)
      end
    end

    class ImmediateModeScheduleActionStartSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImmediateModeScheduleActionStartSettings, context: context)
      end
    end

    class Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Input, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        List____listOf__string.validate!(input[:attached_channels], context: "#{context}[:attached_channels]") unless input[:attached_channels].nil?
        List____listOfInputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:input_class], ::String, context: "#{context}[:input_class]")
        List____listOfInputDeviceSettings.validate!(input[:input_devices], context: "#{context}[:input_devices]") unless input[:input_devices].nil?
        List____listOf__string.validate!(input[:input_partner_ids], context: "#{context}[:input_partner_ids]") unless input[:input_partner_ids].nil?
        Hearth::Validator.validate!(input[:input_source_type], ::String, context: "#{context}[:input_source_type]")
        List____listOfMediaConnectFlow.validate!(input[:media_connect_flows], context: "#{context}[:media_connect_flows]") unless input[:media_connect_flows].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        List____listOf__string.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        List____listOfInputSource.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class InputAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputAttachment, context: context)
        AutomaticInputFailoverSettings.validate!(input[:automatic_input_failover_settings], context: "#{context}[:automatic_input_failover_settings]") unless input[:automatic_input_failover_settings].nil?
        Hearth::Validator.validate!(input[:input_attachment_name], ::String, context: "#{context}[:input_attachment_name]")
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
        InputSettings.validate!(input[:input_settings], context: "#{context}[:input_settings]") unless input[:input_settings].nil?
      end
    end

    class InputChannelLevel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputChannelLevel, context: context)
        Hearth::Validator.validate!(input[:gain], ::Integer, context: "#{context}[:gain]")
        Hearth::Validator.validate!(input[:input_channel], ::Integer, context: "#{context}[:input_channel]")
      end
    end

    class InputClippingSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputClippingSettings, context: context)
        Hearth::Validator.validate!(input[:input_timecode_source], ::String, context: "#{context}[:input_timecode_source]")
        StartTimecode.validate!(input[:start_timecode], context: "#{context}[:start_timecode]") unless input[:start_timecode].nil?
        StopTimecode.validate!(input[:stop_timecode], context: "#{context}[:stop_timecode]") unless input[:stop_timecode].nil?
      end
    end

    class InputDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDestination, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:port], ::String, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        InputDestinationVpc.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class InputDestinationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDestinationRequest, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class InputDestinationVpc
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDestinationVpc, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
      end
    end

    class InputDeviceConfigurableSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDeviceConfigurableSettings, context: context)
        Hearth::Validator.validate!(input[:configured_input], ::String, context: "#{context}[:configured_input]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
      end
    end

    class InputDeviceHdSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDeviceHdSettings, context: context)
        Hearth::Validator.validate!(input[:active_input], ::String, context: "#{context}[:active_input]")
        Hearth::Validator.validate!(input[:configured_input], ::String, context: "#{context}[:configured_input]")
        Hearth::Validator.validate!(input[:device_state], ::String, context: "#{context}[:device_state]")
        Hearth::Validator.validate!(input[:framerate], ::Float, context: "#{context}[:framerate]")
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:scan_type], ::String, context: "#{context}[:scan_type]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class InputDeviceNetworkSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDeviceNetworkSettings, context: context)
        List____listOf__string.validate!(input[:dns_addresses], context: "#{context}[:dns_addresses]") unless input[:dns_addresses].nil?
        Hearth::Validator.validate!(input[:gateway], ::String, context: "#{context}[:gateway]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:ip_scheme], ::String, context: "#{context}[:ip_scheme]")
        Hearth::Validator.validate!(input[:subnet_mask], ::String, context: "#{context}[:subnet_mask]")
      end
    end

    class InputDeviceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDeviceRequest, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class InputDeviceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDeviceSettings, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class InputDeviceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDeviceSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:device_settings_sync_state], ::String, context: "#{context}[:device_settings_sync_state]")
        Hearth::Validator.validate!(input[:device_update_status], ::String, context: "#{context}[:device_update_status]")
        InputDeviceHdSettings.validate!(input[:hd_device_settings], context: "#{context}[:hd_device_settings]") unless input[:hd_device_settings].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        InputDeviceNetworkSettings.validate!(input[:network_settings], context: "#{context}[:network_settings]") unless input[:network_settings].nil?
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        InputDeviceUhdSettings.validate!(input[:uhd_device_settings], context: "#{context}[:uhd_device_settings]") unless input[:uhd_device_settings].nil?
      end
    end

    class InputDeviceUhdSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDeviceUhdSettings, context: context)
        Hearth::Validator.validate!(input[:active_input], ::String, context: "#{context}[:active_input]")
        Hearth::Validator.validate!(input[:configured_input], ::String, context: "#{context}[:configured_input]")
        Hearth::Validator.validate!(input[:device_state], ::String, context: "#{context}[:device_state]")
        Hearth::Validator.validate!(input[:framerate], ::Float, context: "#{context}[:framerate]")
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:scan_type], ::String, context: "#{context}[:scan_type]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class InputLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputLocation, context: context)
        Hearth::Validator.validate!(input[:password_param], ::String, context: "#{context}[:password_param]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class InputLossBehavior
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputLossBehavior, context: context)
        Hearth::Validator.validate!(input[:black_frame_msec], ::Integer, context: "#{context}[:black_frame_msec]")
        Hearth::Validator.validate!(input[:input_loss_image_color], ::String, context: "#{context}[:input_loss_image_color]")
        InputLocation.validate!(input[:input_loss_image_slate], context: "#{context}[:input_loss_image_slate]") unless input[:input_loss_image_slate].nil?
        Hearth::Validator.validate!(input[:input_loss_image_type], ::String, context: "#{context}[:input_loss_image_type]")
        Hearth::Validator.validate!(input[:repeat_frame_msec], ::Integer, context: "#{context}[:repeat_frame_msec]")
      end
    end

    class InputLossFailoverSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputLossFailoverSettings, context: context)
        Hearth::Validator.validate!(input[:input_loss_threshold_msec], ::Integer, context: "#{context}[:input_loss_threshold_msec]")
      end
    end

    class InputPrepareScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputPrepareScheduleActionSettings, context: context)
        Hearth::Validator.validate!(input[:input_attachment_name_reference], ::String, context: "#{context}[:input_attachment_name_reference]")
        InputClippingSettings.validate!(input[:input_clipping_settings], context: "#{context}[:input_clipping_settings]") unless input[:input_clipping_settings].nil?
        List____listOf__string.validate!(input[:url_path], context: "#{context}[:url_path]") unless input[:url_path].nil?
      end
    end

    class InputSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOf__string.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        List____listOfInputWhitelistRule.validate!(input[:whitelist_rules], context: "#{context}[:whitelist_rules]") unless input[:whitelist_rules].nil?
      end
    end

    class InputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSettings, context: context)
        List____listOfAudioSelector.validate!(input[:audio_selectors], context: "#{context}[:audio_selectors]") unless input[:audio_selectors].nil?
        List____listOfCaptionSelector.validate!(input[:caption_selectors], context: "#{context}[:caption_selectors]") unless input[:caption_selectors].nil?
        Hearth::Validator.validate!(input[:deblock_filter], ::String, context: "#{context}[:deblock_filter]")
        Hearth::Validator.validate!(input[:denoise_filter], ::String, context: "#{context}[:denoise_filter]")
        Hearth::Validator.validate!(input[:filter_strength], ::Integer, context: "#{context}[:filter_strength]")
        Hearth::Validator.validate!(input[:input_filter], ::String, context: "#{context}[:input_filter]")
        NetworkInputSettings.validate!(input[:network_input_settings], context: "#{context}[:network_input_settings]") unless input[:network_input_settings].nil?
        Hearth::Validator.validate!(input[:scte35_pid], ::Integer, context: "#{context}[:scte35_pid]")
        Hearth::Validator.validate!(input[:smpte2038_data_preference], ::String, context: "#{context}[:smpte2038_data_preference]")
        Hearth::Validator.validate!(input[:source_end_behavior], ::String, context: "#{context}[:source_end_behavior]")
        VideoSelector.validate!(input[:video_selector], context: "#{context}[:video_selector]") unless input[:video_selector].nil?
      end
    end

    class InputSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSource, context: context)
        Hearth::Validator.validate!(input[:password_param], ::String, context: "#{context}[:password_param]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class InputSourceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSourceRequest, context: context)
        Hearth::Validator.validate!(input[:password_param], ::String, context: "#{context}[:password_param]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class InputSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSpecification, context: context)
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Hearth::Validator.validate!(input[:maximum_bitrate], ::String, context: "#{context}[:maximum_bitrate]")
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
      end
    end

    class InputSwitchScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSwitchScheduleActionSettings, context: context)
        Hearth::Validator.validate!(input[:input_attachment_name_reference], ::String, context: "#{context}[:input_attachment_name_reference]")
        InputClippingSettings.validate!(input[:input_clipping_settings], context: "#{context}[:input_clipping_settings]") unless input[:input_clipping_settings].nil?
        List____listOf__string.validate!(input[:url_path], context: "#{context}[:url_path]") unless input[:url_path].nil?
      end
    end

    class InputVpcRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputVpcRequest, context: context)
        List____listOf__string.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        List____listOf__string.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class InputWhitelistRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputWhitelistRule, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class InputWhitelistRuleCidr
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputWhitelistRuleCidr, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyProviderSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyProviderSettings, context: context)
        StaticKeySettings.validate!(input[:static_key_settings], context: "#{context}[:static_key_settings]") unless input[:static_key_settings].nil?
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
        List____listOfChannelSummary.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputDeviceTransfersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputDeviceTransfersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:transfer_type], ::String, context: "#{context}[:transfer_type]")
      end
    end

    class ListInputDeviceTransfersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputDeviceTransfersOutput, context: context)
        List____listOfTransferringInputDeviceSummary.validate!(input[:input_device_transfers], context: "#{context}[:input_device_transfers]") unless input[:input_device_transfers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputDevicesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputDevicesOutput, context: context)
        List____listOfInputDeviceSummary.validate!(input[:input_devices], context: "#{context}[:input_devices]") unless input[:input_devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputSecurityGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputSecurityGroupsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputSecurityGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputSecurityGroupsOutput, context: context)
        List____listOfInputSecurityGroup.validate!(input[:input_security_groups], context: "#{context}[:input_security_groups]") unless input[:input_security_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputsOutput, context: context)
        List____listOfInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMultiplexProgramsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultiplexProgramsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMultiplexProgramsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultiplexProgramsOutput, context: context)
        List____listOfMultiplexProgramSummary.validate!(input[:multiplex_programs], context: "#{context}[:multiplex_programs]") unless input[:multiplex_programs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMultiplexesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultiplexesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMultiplexesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultiplexesOutput, context: context)
        List____listOfMultiplexSummary.validate!(input[:multiplexes], context: "#{context}[:multiplexes]") unless input[:multiplexes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        Hearth::Validator.validate!(input[:channel_configuration], ::String, context: "#{context}[:channel_configuration]")
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Hearth::Validator.validate!(input[:duration], ::String, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:maximum_bitrate], ::String, context: "#{context}[:maximum_bitrate]")
        Hearth::Validator.validate!(input[:maximum_framerate], ::String, context: "#{context}[:maximum_framerate]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:special_feature], ::String, context: "#{context}[:special_feature]")
        Hearth::Validator.validate!(input[:video_quality], ::String, context: "#{context}[:video_quality]")
      end
    end

    class ListOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfOffering.validate!(input[:offerings], context: "#{context}[:offerings]") unless input[:offerings].nil?
      end
    end

    class ListReservationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReservationsInput, context: context)
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:maximum_bitrate], ::String, context: "#{context}[:maximum_bitrate]")
        Hearth::Validator.validate!(input[:maximum_framerate], ::String, context: "#{context}[:maximum_framerate]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:special_feature], ::String, context: "#{context}[:special_feature]")
        Hearth::Validator.validate!(input[:video_quality], ::String, context: "#{context}[:video_quality]")
      end
    end

    class ListReservationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReservationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfReservation.validate!(input[:reservations], context: "#{context}[:reservations]") unless input[:reservations].nil?
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
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class M2tsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::M2tsSettings, context: context)
        Hearth::Validator.validate!(input[:absent_input_audio_behavior], ::String, context: "#{context}[:absent_input_audio_behavior]")
        Hearth::Validator.validate!(input[:arib], ::String, context: "#{context}[:arib]")
        Hearth::Validator.validate!(input[:arib_captions_pid], ::String, context: "#{context}[:arib_captions_pid]")
        Hearth::Validator.validate!(input[:arib_captions_pid_control], ::String, context: "#{context}[:arib_captions_pid_control]")
        Hearth::Validator.validate!(input[:audio_buffer_model], ::String, context: "#{context}[:audio_buffer_model]")
        Hearth::Validator.validate!(input[:audio_frames_per_pes], ::Integer, context: "#{context}[:audio_frames_per_pes]")
        Hearth::Validator.validate!(input[:audio_pids], ::String, context: "#{context}[:audio_pids]")
        Hearth::Validator.validate!(input[:audio_stream_type], ::String, context: "#{context}[:audio_stream_type]")
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:buffer_model], ::String, context: "#{context}[:buffer_model]")
        Hearth::Validator.validate!(input[:cc_descriptor], ::String, context: "#{context}[:cc_descriptor]")
        DvbNitSettings.validate!(input[:dvb_nit_settings], context: "#{context}[:dvb_nit_settings]") unless input[:dvb_nit_settings].nil?
        DvbSdtSettings.validate!(input[:dvb_sdt_settings], context: "#{context}[:dvb_sdt_settings]") unless input[:dvb_sdt_settings].nil?
        Hearth::Validator.validate!(input[:dvb_sub_pids], ::String, context: "#{context}[:dvb_sub_pids]")
        DvbTdtSettings.validate!(input[:dvb_tdt_settings], context: "#{context}[:dvb_tdt_settings]") unless input[:dvb_tdt_settings].nil?
        Hearth::Validator.validate!(input[:dvb_teletext_pid], ::String, context: "#{context}[:dvb_teletext_pid]")
        Hearth::Validator.validate!(input[:ebif], ::String, context: "#{context}[:ebif]")
        Hearth::Validator.validate!(input[:ebp_audio_interval], ::String, context: "#{context}[:ebp_audio_interval]")
        Hearth::Validator.validate!(input[:ebp_lookahead_ms], ::Integer, context: "#{context}[:ebp_lookahead_ms]")
        Hearth::Validator.validate!(input[:ebp_placement], ::String, context: "#{context}[:ebp_placement]")
        Hearth::Validator.validate!(input[:ecm_pid], ::String, context: "#{context}[:ecm_pid]")
        Hearth::Validator.validate!(input[:es_rate_in_pes], ::String, context: "#{context}[:es_rate_in_pes]")
        Hearth::Validator.validate!(input[:etv_platform_pid], ::String, context: "#{context}[:etv_platform_pid]")
        Hearth::Validator.validate!(input[:etv_signal_pid], ::String, context: "#{context}[:etv_signal_pid]")
        Hearth::Validator.validate!(input[:fragment_time], ::Float, context: "#{context}[:fragment_time]")
        Hearth::Validator.validate!(input[:klv], ::String, context: "#{context}[:klv]")
        Hearth::Validator.validate!(input[:klv_data_pids], ::String, context: "#{context}[:klv_data_pids]")
        Hearth::Validator.validate!(input[:nielsen_id3_behavior], ::String, context: "#{context}[:nielsen_id3_behavior]")
        Hearth::Validator.validate!(input[:null_packet_bitrate], ::Float, context: "#{context}[:null_packet_bitrate]")
        Hearth::Validator.validate!(input[:pat_interval], ::Integer, context: "#{context}[:pat_interval]")
        Hearth::Validator.validate!(input[:pcr_control], ::String, context: "#{context}[:pcr_control]")
        Hearth::Validator.validate!(input[:pcr_period], ::Integer, context: "#{context}[:pcr_period]")
        Hearth::Validator.validate!(input[:pcr_pid], ::String, context: "#{context}[:pcr_pid]")
        Hearth::Validator.validate!(input[:pmt_interval], ::Integer, context: "#{context}[:pmt_interval]")
        Hearth::Validator.validate!(input[:pmt_pid], ::String, context: "#{context}[:pmt_pid]")
        Hearth::Validator.validate!(input[:program_num], ::Integer, context: "#{context}[:program_num]")
        Hearth::Validator.validate!(input[:rate_mode], ::String, context: "#{context}[:rate_mode]")
        Hearth::Validator.validate!(input[:scte27_pids], ::String, context: "#{context}[:scte27_pids]")
        Hearth::Validator.validate!(input[:scte35_control], ::String, context: "#{context}[:scte35_control]")
        Hearth::Validator.validate!(input[:scte35_pid], ::String, context: "#{context}[:scte35_pid]")
        Hearth::Validator.validate!(input[:segmentation_markers], ::String, context: "#{context}[:segmentation_markers]")
        Hearth::Validator.validate!(input[:segmentation_style], ::String, context: "#{context}[:segmentation_style]")
        Hearth::Validator.validate!(input[:segmentation_time], ::Float, context: "#{context}[:segmentation_time]")
        Hearth::Validator.validate!(input[:timed_metadata_behavior], ::String, context: "#{context}[:timed_metadata_behavior]")
        Hearth::Validator.validate!(input[:timed_metadata_pid], ::String, context: "#{context}[:timed_metadata_pid]")
        Hearth::Validator.validate!(input[:transport_stream_id], ::Integer, context: "#{context}[:transport_stream_id]")
        Hearth::Validator.validate!(input[:video_pid], ::String, context: "#{context}[:video_pid]")
      end
    end

    class M3u8Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::M3u8Settings, context: context)
        Hearth::Validator.validate!(input[:audio_frames_per_pes], ::Integer, context: "#{context}[:audio_frames_per_pes]")
        Hearth::Validator.validate!(input[:audio_pids], ::String, context: "#{context}[:audio_pids]")
        Hearth::Validator.validate!(input[:ecm_pid], ::String, context: "#{context}[:ecm_pid]")
        Hearth::Validator.validate!(input[:nielsen_id3_behavior], ::String, context: "#{context}[:nielsen_id3_behavior]")
        Hearth::Validator.validate!(input[:pat_interval], ::Integer, context: "#{context}[:pat_interval]")
        Hearth::Validator.validate!(input[:pcr_control], ::String, context: "#{context}[:pcr_control]")
        Hearth::Validator.validate!(input[:pcr_period], ::Integer, context: "#{context}[:pcr_period]")
        Hearth::Validator.validate!(input[:pcr_pid], ::String, context: "#{context}[:pcr_pid]")
        Hearth::Validator.validate!(input[:pmt_interval], ::Integer, context: "#{context}[:pmt_interval]")
        Hearth::Validator.validate!(input[:pmt_pid], ::String, context: "#{context}[:pmt_pid]")
        Hearth::Validator.validate!(input[:program_num], ::Integer, context: "#{context}[:program_num]")
        Hearth::Validator.validate!(input[:scte35_behavior], ::String, context: "#{context}[:scte35_behavior]")
        Hearth::Validator.validate!(input[:scte35_pid], ::String, context: "#{context}[:scte35_pid]")
        Hearth::Validator.validate!(input[:timed_metadata_behavior], ::String, context: "#{context}[:timed_metadata_behavior]")
        Hearth::Validator.validate!(input[:timed_metadata_pid], ::String, context: "#{context}[:timed_metadata_pid]")
        Hearth::Validator.validate!(input[:transport_stream_id], ::Integer, context: "#{context}[:transport_stream_id]")
        Hearth::Validator.validate!(input[:video_pid], ::String, context: "#{context}[:video_pid]")
      end
    end

    class MaintenanceCreateSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceCreateSettings, context: context)
        Hearth::Validator.validate!(input[:maintenance_day], ::String, context: "#{context}[:maintenance_day]")
        Hearth::Validator.validate!(input[:maintenance_start_time], ::String, context: "#{context}[:maintenance_start_time]")
      end
    end

    class MaintenanceStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceStatus, context: context)
        Hearth::Validator.validate!(input[:maintenance_day], ::String, context: "#{context}[:maintenance_day]")
        Hearth::Validator.validate!(input[:maintenance_deadline], ::String, context: "#{context}[:maintenance_deadline]")
        Hearth::Validator.validate!(input[:maintenance_scheduled_date], ::String, context: "#{context}[:maintenance_scheduled_date]")
        Hearth::Validator.validate!(input[:maintenance_start_time], ::String, context: "#{context}[:maintenance_start_time]")
      end
    end

    class MaintenanceUpdateSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceUpdateSettings, context: context)
        Hearth::Validator.validate!(input[:maintenance_day], ::String, context: "#{context}[:maintenance_day]")
        Hearth::Validator.validate!(input[:maintenance_scheduled_date], ::String, context: "#{context}[:maintenance_scheduled_date]")
        Hearth::Validator.validate!(input[:maintenance_start_time], ::String, context: "#{context}[:maintenance_start_time]")
      end
    end

    class MediaConnectFlow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaConnectFlow, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class MediaConnectFlowRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaConnectFlowRequest, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
      end
    end

    class MediaPackageGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaPackageGroupSettings, context: context)
        OutputLocationRef.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class MediaPackageOutputDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaPackageOutputDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
      end
    end

    class MediaPackageOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaPackageOutputSettings, context: context)
      end
    end

    class MotionGraphicsActivateScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MotionGraphicsActivateScheduleActionSettings, context: context)
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:password_param], ::String, context: "#{context}[:password_param]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class MotionGraphicsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MotionGraphicsConfiguration, context: context)
        Hearth::Validator.validate!(input[:motion_graphics_insertion], ::String, context: "#{context}[:motion_graphics_insertion]")
        MotionGraphicsSettings.validate!(input[:motion_graphics_settings], context: "#{context}[:motion_graphics_settings]") unless input[:motion_graphics_settings].nil?
      end
    end

    class MotionGraphicsDeactivateScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MotionGraphicsDeactivateScheduleActionSettings, context: context)
      end
    end

    class MotionGraphicsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MotionGraphicsSettings, context: context)
        HtmlMotionGraphicsSettings.validate!(input[:html_motion_graphics_settings], context: "#{context}[:html_motion_graphics_settings]") unless input[:html_motion_graphics_settings].nil?
      end
    end

    class Mp2Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mp2Settings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Float, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:coding_mode], ::String, context: "#{context}[:coding_mode]")
        Hearth::Validator.validate!(input[:sample_rate], ::Float, context: "#{context}[:sample_rate]")
      end
    end

    class Mpeg2FilterSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mpeg2FilterSettings, context: context)
        TemporalFilterSettings.validate!(input[:temporal_filter_settings], context: "#{context}[:temporal_filter_settings]") unless input[:temporal_filter_settings].nil?
      end
    end

    class Mpeg2Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mpeg2Settings, context: context)
        Hearth::Validator.validate!(input[:adaptive_quantization], ::String, context: "#{context}[:adaptive_quantization]")
        Hearth::Validator.validate!(input[:afd_signaling], ::String, context: "#{context}[:afd_signaling]")
        Hearth::Validator.validate!(input[:color_metadata], ::String, context: "#{context}[:color_metadata]")
        Hearth::Validator.validate!(input[:color_space], ::String, context: "#{context}[:color_space]")
        Hearth::Validator.validate!(input[:display_aspect_ratio], ::String, context: "#{context}[:display_aspect_ratio]")
        Mpeg2FilterSettings.validate!(input[:filter_settings], context: "#{context}[:filter_settings]") unless input[:filter_settings].nil?
        Hearth::Validator.validate!(input[:fixed_afd], ::String, context: "#{context}[:fixed_afd]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:gop_closed_cadence], ::Integer, context: "#{context}[:gop_closed_cadence]")
        Hearth::Validator.validate!(input[:gop_num_b_frames], ::Integer, context: "#{context}[:gop_num_b_frames]")
        Hearth::Validator.validate!(input[:gop_size], ::Float, context: "#{context}[:gop_size]")
        Hearth::Validator.validate!(input[:gop_size_units], ::String, context: "#{context}[:gop_size_units]")
        Hearth::Validator.validate!(input[:scan_type], ::String, context: "#{context}[:scan_type]")
        Hearth::Validator.validate!(input[:subgop_length], ::String, context: "#{context}[:subgop_length]")
        Hearth::Validator.validate!(input[:timecode_insertion], ::String, context: "#{context}[:timecode_insertion]")
      end
    end

    class MsSmoothGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MsSmoothGroupSettings, context: context)
        Hearth::Validator.validate!(input[:acquisition_point_id], ::String, context: "#{context}[:acquisition_point_id]")
        Hearth::Validator.validate!(input[:audio_only_timecode_control], ::String, context: "#{context}[:audio_only_timecode_control]")
        Hearth::Validator.validate!(input[:certificate_mode], ::String, context: "#{context}[:certificate_mode]")
        Hearth::Validator.validate!(input[:connection_retry_interval], ::Integer, context: "#{context}[:connection_retry_interval]")
        OutputLocationRef.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_id_mode], ::String, context: "#{context}[:event_id_mode]")
        Hearth::Validator.validate!(input[:event_stop_behavior], ::String, context: "#{context}[:event_stop_behavior]")
        Hearth::Validator.validate!(input[:filecache_duration], ::Integer, context: "#{context}[:filecache_duration]")
        Hearth::Validator.validate!(input[:fragment_length], ::Integer, context: "#{context}[:fragment_length]")
        Hearth::Validator.validate!(input[:input_loss_action], ::String, context: "#{context}[:input_loss_action]")
        Hearth::Validator.validate!(input[:num_retries], ::Integer, context: "#{context}[:num_retries]")
        Hearth::Validator.validate!(input[:restart_delay], ::Integer, context: "#{context}[:restart_delay]")
        Hearth::Validator.validate!(input[:segmentation_mode], ::String, context: "#{context}[:segmentation_mode]")
        Hearth::Validator.validate!(input[:send_delay_ms], ::Integer, context: "#{context}[:send_delay_ms]")
        Hearth::Validator.validate!(input[:sparse_track_type], ::String, context: "#{context}[:sparse_track_type]")
        Hearth::Validator.validate!(input[:stream_manifest_behavior], ::String, context: "#{context}[:stream_manifest_behavior]")
        Hearth::Validator.validate!(input[:timestamp_offset], ::String, context: "#{context}[:timestamp_offset]")
        Hearth::Validator.validate!(input[:timestamp_offset_mode], ::String, context: "#{context}[:timestamp_offset_mode]")
      end
    end

    class MsSmoothOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MsSmoothOutputSettings, context: context)
        Hearth::Validator.validate!(input[:h265_packaging_type], ::String, context: "#{context}[:h265_packaging_type]")
        Hearth::Validator.validate!(input[:name_modifier], ::String, context: "#{context}[:name_modifier]")
      end
    end

    class Multiplex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Multiplex, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        List____listOf__string.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        List____listOfMultiplexOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MultiplexSettings.validate!(input[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless input[:multiplex_settings].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:program_count], ::Integer, context: "#{context}[:program_count]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MultiplexGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexGroupSettings, context: context)
      end
    end

    class MultiplexMediaConnectOutputDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexMediaConnectOutputDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:entitlement_arn], ::String, context: "#{context}[:entitlement_arn]")
      end
    end

    class MultiplexOutputDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexOutputDestination, context: context)
        MultiplexMediaConnectOutputDestinationSettings.validate!(input[:media_connect_settings], context: "#{context}[:media_connect_settings]") unless input[:media_connect_settings].nil?
      end
    end

    class MultiplexOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexOutputSettings, context: context)
        OutputLocationRef.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class MultiplexProgram
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexProgram, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        MultiplexProgramSettings.validate!(input[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless input[:multiplex_program_settings].nil?
        MultiplexProgramPacketIdentifiersMap.validate!(input[:packet_identifiers_map], context: "#{context}[:packet_identifiers_map]") unless input[:packet_identifiers_map].nil?
        List____listOfMultiplexProgramPipelineDetail.validate!(input[:pipeline_details], context: "#{context}[:pipeline_details]") unless input[:pipeline_details].nil?
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class MultiplexProgramChannelDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexProgramChannelDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class MultiplexProgramPacketIdentifiersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexProgramPacketIdentifiersMap, context: context)
        List____listOf__integer.validate!(input[:audio_pids], context: "#{context}[:audio_pids]") unless input[:audio_pids].nil?
        List____listOf__integer.validate!(input[:dvb_sub_pids], context: "#{context}[:dvb_sub_pids]") unless input[:dvb_sub_pids].nil?
        Hearth::Validator.validate!(input[:dvb_teletext_pid], ::Integer, context: "#{context}[:dvb_teletext_pid]")
        Hearth::Validator.validate!(input[:etv_platform_pid], ::Integer, context: "#{context}[:etv_platform_pid]")
        Hearth::Validator.validate!(input[:etv_signal_pid], ::Integer, context: "#{context}[:etv_signal_pid]")
        List____listOf__integer.validate!(input[:klv_data_pids], context: "#{context}[:klv_data_pids]") unless input[:klv_data_pids].nil?
        Hearth::Validator.validate!(input[:pcr_pid], ::Integer, context: "#{context}[:pcr_pid]")
        Hearth::Validator.validate!(input[:pmt_pid], ::Integer, context: "#{context}[:pmt_pid]")
        Hearth::Validator.validate!(input[:private_metadata_pid], ::Integer, context: "#{context}[:private_metadata_pid]")
        List____listOf__integer.validate!(input[:scte27_pids], context: "#{context}[:scte27_pids]") unless input[:scte27_pids].nil?
        Hearth::Validator.validate!(input[:scte35_pid], ::Integer, context: "#{context}[:scte35_pid]")
        Hearth::Validator.validate!(input[:timed_metadata_pid], ::Integer, context: "#{context}[:timed_metadata_pid]")
        Hearth::Validator.validate!(input[:video_pid], ::Integer, context: "#{context}[:video_pid]")
      end
    end

    class MultiplexProgramPipelineDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexProgramPipelineDetail, context: context)
        Hearth::Validator.validate!(input[:active_channel_pipeline], ::String, context: "#{context}[:active_channel_pipeline]")
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
      end
    end

    class MultiplexProgramServiceDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexProgramServiceDescriptor, context: context)
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class MultiplexProgramSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexProgramSettings, context: context)
        Hearth::Validator.validate!(input[:preferred_channel_pipeline], ::String, context: "#{context}[:preferred_channel_pipeline]")
        Hearth::Validator.validate!(input[:program_number], ::Integer, context: "#{context}[:program_number]")
        MultiplexProgramServiceDescriptor.validate!(input[:service_descriptor], context: "#{context}[:service_descriptor]") unless input[:service_descriptor].nil?
        MultiplexVideoSettings.validate!(input[:video_settings], context: "#{context}[:video_settings]") unless input[:video_settings].nil?
      end
    end

    class MultiplexProgramSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexProgramSummary, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class MultiplexSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexSettings, context: context)
        Hearth::Validator.validate!(input[:maximum_video_buffer_delay_milliseconds], ::Integer, context: "#{context}[:maximum_video_buffer_delay_milliseconds]")
        Hearth::Validator.validate!(input[:transport_stream_bitrate], ::Integer, context: "#{context}[:transport_stream_bitrate]")
        Hearth::Validator.validate!(input[:transport_stream_id], ::Integer, context: "#{context}[:transport_stream_id]")
        Hearth::Validator.validate!(input[:transport_stream_reserved_bitrate], ::Integer, context: "#{context}[:transport_stream_reserved_bitrate]")
      end
    end

    class MultiplexSettingsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexSettingsSummary, context: context)
        Hearth::Validator.validate!(input[:transport_stream_bitrate], ::Integer, context: "#{context}[:transport_stream_bitrate]")
      end
    end

    class MultiplexStatmuxVideoSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexStatmuxVideoSettings, context: context)
        Hearth::Validator.validate!(input[:maximum_bitrate], ::Integer, context: "#{context}[:maximum_bitrate]")
        Hearth::Validator.validate!(input[:minimum_bitrate], ::Integer, context: "#{context}[:minimum_bitrate]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class MultiplexSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        List____listOf__string.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MultiplexSettingsSummary.validate!(input[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless input[:multiplex_settings].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:program_count], ::Integer, context: "#{context}[:program_count]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MultiplexVideoSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiplexVideoSettings, context: context)
        Hearth::Validator.validate!(input[:constant_bitrate], ::Integer, context: "#{context}[:constant_bitrate]")
        MultiplexStatmuxVideoSettings.validate!(input[:statmux_settings], context: "#{context}[:statmux_settings]") unless input[:statmux_settings].nil?
      end
    end

    class NetworkInputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInputSettings, context: context)
        HlsInputSettings.validate!(input[:hls_input_settings], context: "#{context}[:hls_input_settings]") unless input[:hls_input_settings].nil?
        Hearth::Validator.validate!(input[:server_validation], ::String, context: "#{context}[:server_validation]")
      end
    end

    class NielsenCBET
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NielsenCBET, context: context)
        Hearth::Validator.validate!(input[:cbet_check_digit_string], ::String, context: "#{context}[:cbet_check_digit_string]")
        Hearth::Validator.validate!(input[:cbet_stepaside], ::String, context: "#{context}[:cbet_stepaside]")
        Hearth::Validator.validate!(input[:csid], ::String, context: "#{context}[:csid]")
      end
    end

    class NielsenConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NielsenConfiguration, context: context)
        Hearth::Validator.validate!(input[:distributor_id], ::String, context: "#{context}[:distributor_id]")
        Hearth::Validator.validate!(input[:nielsen_pcm_to_id3_tagging], ::String, context: "#{context}[:nielsen_pcm_to_id3_tagging]")
      end
    end

    class NielsenNaesIiNw
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NielsenNaesIiNw, context: context)
        Hearth::Validator.validate!(input[:check_digit_string], ::String, context: "#{context}[:check_digit_string]")
        Hearth::Validator.validate!(input[:sid], ::Float, context: "#{context}[:sid]")
      end
    end

    class NielsenWatermarksSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NielsenWatermarksSettings, context: context)
        NielsenCBET.validate!(input[:nielsen_cbet_settings], context: "#{context}[:nielsen_cbet_settings]") unless input[:nielsen_cbet_settings].nil?
        Hearth::Validator.validate!(input[:nielsen_distribution_type], ::String, context: "#{context}[:nielsen_distribution_type]")
        NielsenNaesIiNw.validate!(input[:nielsen_naes_ii_nw_settings], context: "#{context}[:nielsen_naes_ii_nw_settings]") unless input[:nielsen_naes_ii_nw_settings].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Offering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Offering, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:duration_units], ::String, context: "#{context}[:duration_units]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:offering_description], ::String, context: "#{context}[:offering_description]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        ReservationResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
      end
    end

    class Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Output, context: context)
        List____listOf__string.validate!(input[:audio_description_names], context: "#{context}[:audio_description_names]") unless input[:audio_description_names].nil?
        List____listOf__string.validate!(input[:caption_description_names], context: "#{context}[:caption_description_names]") unless input[:caption_description_names].nil?
        Hearth::Validator.validate!(input[:output_name], ::String, context: "#{context}[:output_name]")
        OutputSettings.validate!(input[:output_settings], context: "#{context}[:output_settings]") unless input[:output_settings].nil?
        Hearth::Validator.validate!(input[:video_description_name], ::String, context: "#{context}[:video_description_name]")
      end
    end

    class OutputDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputDestination, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOfMediaPackageOutputDestinationSettings.validate!(input[:media_package_settings], context: "#{context}[:media_package_settings]") unless input[:media_package_settings].nil?
        MultiplexProgramChannelDestinationSettings.validate!(input[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless input[:multiplex_settings].nil?
        List____listOfOutputDestinationSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class OutputDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:password_param], ::String, context: "#{context}[:password_param]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class OutputGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OutputGroupSettings.validate!(input[:output_group_settings], context: "#{context}[:output_group_settings]") unless input[:output_group_settings].nil?
        List____listOfOutput.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class OutputGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputGroupSettings, context: context)
        ArchiveGroupSettings.validate!(input[:archive_group_settings], context: "#{context}[:archive_group_settings]") unless input[:archive_group_settings].nil?
        FrameCaptureGroupSettings.validate!(input[:frame_capture_group_settings], context: "#{context}[:frame_capture_group_settings]") unless input[:frame_capture_group_settings].nil?
        HlsGroupSettings.validate!(input[:hls_group_settings], context: "#{context}[:hls_group_settings]") unless input[:hls_group_settings].nil?
        MediaPackageGroupSettings.validate!(input[:media_package_group_settings], context: "#{context}[:media_package_group_settings]") unless input[:media_package_group_settings].nil?
        MsSmoothGroupSettings.validate!(input[:ms_smooth_group_settings], context: "#{context}[:ms_smooth_group_settings]") unless input[:ms_smooth_group_settings].nil?
        MultiplexGroupSettings.validate!(input[:multiplex_group_settings], context: "#{context}[:multiplex_group_settings]") unless input[:multiplex_group_settings].nil?
        RtmpGroupSettings.validate!(input[:rtmp_group_settings], context: "#{context}[:rtmp_group_settings]") unless input[:rtmp_group_settings].nil?
        UdpGroupSettings.validate!(input[:udp_group_settings], context: "#{context}[:udp_group_settings]") unless input[:udp_group_settings].nil?
      end
    end

    class OutputLocationRef
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputLocationRef, context: context)
        Hearth::Validator.validate!(input[:destination_ref_id], ::String, context: "#{context}[:destination_ref_id]")
      end
    end

    class OutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputSettings, context: context)
        ArchiveOutputSettings.validate!(input[:archive_output_settings], context: "#{context}[:archive_output_settings]") unless input[:archive_output_settings].nil?
        FrameCaptureOutputSettings.validate!(input[:frame_capture_output_settings], context: "#{context}[:frame_capture_output_settings]") unless input[:frame_capture_output_settings].nil?
        HlsOutputSettings.validate!(input[:hls_output_settings], context: "#{context}[:hls_output_settings]") unless input[:hls_output_settings].nil?
        MediaPackageOutputSettings.validate!(input[:media_package_output_settings], context: "#{context}[:media_package_output_settings]") unless input[:media_package_output_settings].nil?
        MsSmoothOutputSettings.validate!(input[:ms_smooth_output_settings], context: "#{context}[:ms_smooth_output_settings]") unless input[:ms_smooth_output_settings].nil?
        MultiplexOutputSettings.validate!(input[:multiplex_output_settings], context: "#{context}[:multiplex_output_settings]") unless input[:multiplex_output_settings].nil?
        RtmpOutputSettings.validate!(input[:rtmp_output_settings], context: "#{context}[:rtmp_output_settings]") unless input[:rtmp_output_settings].nil?
        UdpOutputSettings.validate!(input[:udp_output_settings], context: "#{context}[:udp_output_settings]") unless input[:udp_output_settings].nil?
      end
    end

    class PassThroughSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PassThroughSettings, context: context)
      end
    end

    class PauseStateScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PauseStateScheduleActionSettings, context: context)
        List____listOfPipelinePauseStateSettings.validate!(input[:pipelines], context: "#{context}[:pipelines]") unless input[:pipelines].nil?
      end
    end

    class PipelineDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineDetail, context: context)
        Hearth::Validator.validate!(input[:active_input_attachment_name], ::String, context: "#{context}[:active_input_attachment_name]")
        Hearth::Validator.validate!(input[:active_input_switch_action_name], ::String, context: "#{context}[:active_input_switch_action_name]")
        Hearth::Validator.validate!(input[:active_motion_graphics_action_name], ::String, context: "#{context}[:active_motion_graphics_action_name]")
        Hearth::Validator.validate!(input[:active_motion_graphics_uri], ::String, context: "#{context}[:active_motion_graphics_uri]")
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
      end
    end

    class PipelinePauseStateSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelinePauseStateSettings, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
      end
    end

    class PurchaseOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseOfferingInput, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PurchaseOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseOfferingOutput, context: context)
        Reservation.validate!(input[:reservation], context: "#{context}[:reservation]") unless input[:reservation].nil?
      end
    end

    class RawSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RawSettings, context: context)
      end
    end

    class Rec601Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rec601Settings, context: context)
      end
    end

    class Rec709Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rec709Settings, context: context)
      end
    end

    class RejectInputDeviceTransferInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectInputDeviceTransferInput, context: context)
        Hearth::Validator.validate!(input[:input_device_id], ::String, context: "#{context}[:input_device_id]")
      end
    end

    class RejectInputDeviceTransferOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectInputDeviceTransferOutput, context: context)
      end
    end

    class RemixSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemixSettings, context: context)
        List____listOfAudioChannelMapping.validate!(input[:channel_mappings], context: "#{context}[:channel_mappings]") unless input[:channel_mappings].nil?
        Hearth::Validator.validate!(input[:channels_in], ::Integer, context: "#{context}[:channels_in]")
        Hearth::Validator.validate!(input[:channels_out], ::Integer, context: "#{context}[:channels_out]")
      end
    end

    class Reservation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Reservation, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:duration_units], ::String, context: "#{context}[:duration_units]")
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:offering_description], ::String, context: "#{context}[:offering_description]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:reservation_id], ::String, context: "#{context}[:reservation_id]")
        ReservationResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
      end
    end

    class ReservationResourceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationResourceSpecification, context: context)
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Hearth::Validator.validate!(input[:maximum_bitrate], ::String, context: "#{context}[:maximum_bitrate]")
        Hearth::Validator.validate!(input[:maximum_framerate], ::String, context: "#{context}[:maximum_framerate]")
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:special_feature], ::String, context: "#{context}[:special_feature]")
        Hearth::Validator.validate!(input[:video_quality], ::String, context: "#{context}[:video_quality]")
      end
    end

    class RtmpCaptionInfoDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RtmpCaptionInfoDestinationSettings, context: context)
      end
    end

    class RtmpGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RtmpGroupSettings, context: context)
        List____listOfRtmpAdMarkers.validate!(input[:ad_markers], context: "#{context}[:ad_markers]") unless input[:ad_markers].nil?
        Hearth::Validator.validate!(input[:authentication_scheme], ::String, context: "#{context}[:authentication_scheme]")
        Hearth::Validator.validate!(input[:cache_full_behavior], ::String, context: "#{context}[:cache_full_behavior]")
        Hearth::Validator.validate!(input[:cache_length], ::Integer, context: "#{context}[:cache_length]")
        Hearth::Validator.validate!(input[:caption_data], ::String, context: "#{context}[:caption_data]")
        Hearth::Validator.validate!(input[:input_loss_action], ::String, context: "#{context}[:input_loss_action]")
        Hearth::Validator.validate!(input[:restart_delay], ::Integer, context: "#{context}[:restart_delay]")
      end
    end

    class RtmpOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RtmpOutputSettings, context: context)
        Hearth::Validator.validate!(input[:certificate_mode], ::String, context: "#{context}[:certificate_mode]")
        Hearth::Validator.validate!(input[:connection_retry_interval], ::Integer, context: "#{context}[:connection_retry_interval]")
        OutputLocationRef.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:num_retries], ::Integer, context: "#{context}[:num_retries]")
      end
    end

    class ScheduleAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleAction, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        ScheduleActionSettings.validate!(input[:schedule_action_settings], context: "#{context}[:schedule_action_settings]") unless input[:schedule_action_settings].nil?
        ScheduleActionStartSettings.validate!(input[:schedule_action_start_settings], context: "#{context}[:schedule_action_start_settings]") unless input[:schedule_action_start_settings].nil?
      end
    end

    class ScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleActionSettings, context: context)
        HlsId3SegmentTaggingScheduleActionSettings.validate!(input[:hls_id3_segment_tagging_settings], context: "#{context}[:hls_id3_segment_tagging_settings]") unless input[:hls_id3_segment_tagging_settings].nil?
        HlsTimedMetadataScheduleActionSettings.validate!(input[:hls_timed_metadata_settings], context: "#{context}[:hls_timed_metadata_settings]") unless input[:hls_timed_metadata_settings].nil?
        InputPrepareScheduleActionSettings.validate!(input[:input_prepare_settings], context: "#{context}[:input_prepare_settings]") unless input[:input_prepare_settings].nil?
        InputSwitchScheduleActionSettings.validate!(input[:input_switch_settings], context: "#{context}[:input_switch_settings]") unless input[:input_switch_settings].nil?
        MotionGraphicsActivateScheduleActionSettings.validate!(input[:motion_graphics_image_activate_settings], context: "#{context}[:motion_graphics_image_activate_settings]") unless input[:motion_graphics_image_activate_settings].nil?
        MotionGraphicsDeactivateScheduleActionSettings.validate!(input[:motion_graphics_image_deactivate_settings], context: "#{context}[:motion_graphics_image_deactivate_settings]") unless input[:motion_graphics_image_deactivate_settings].nil?
        PauseStateScheduleActionSettings.validate!(input[:pause_state_settings], context: "#{context}[:pause_state_settings]") unless input[:pause_state_settings].nil?
        Scte35ReturnToNetworkScheduleActionSettings.validate!(input[:scte35_return_to_network_settings], context: "#{context}[:scte35_return_to_network_settings]") unless input[:scte35_return_to_network_settings].nil?
        Scte35SpliceInsertScheduleActionSettings.validate!(input[:scte35_splice_insert_settings], context: "#{context}[:scte35_splice_insert_settings]") unless input[:scte35_splice_insert_settings].nil?
        Scte35TimeSignalScheduleActionSettings.validate!(input[:scte35_time_signal_settings], context: "#{context}[:scte35_time_signal_settings]") unless input[:scte35_time_signal_settings].nil?
        StaticImageActivateScheduleActionSettings.validate!(input[:static_image_activate_settings], context: "#{context}[:static_image_activate_settings]") unless input[:static_image_activate_settings].nil?
        StaticImageDeactivateScheduleActionSettings.validate!(input[:static_image_deactivate_settings], context: "#{context}[:static_image_deactivate_settings]") unless input[:static_image_deactivate_settings].nil?
      end
    end

    class ScheduleActionStartSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleActionStartSettings, context: context)
        FixedModeScheduleActionStartSettings.validate!(input[:fixed_mode_schedule_action_start_settings], context: "#{context}[:fixed_mode_schedule_action_start_settings]") unless input[:fixed_mode_schedule_action_start_settings].nil?
        FollowModeScheduleActionStartSettings.validate!(input[:follow_mode_schedule_action_start_settings], context: "#{context}[:follow_mode_schedule_action_start_settings]") unless input[:follow_mode_schedule_action_start_settings].nil?
        ImmediateModeScheduleActionStartSettings.validate!(input[:immediate_mode_schedule_action_start_settings], context: "#{context}[:immediate_mode_schedule_action_start_settings]") unless input[:immediate_mode_schedule_action_start_settings].nil?
      end
    end

    class Scte20PlusEmbeddedDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte20PlusEmbeddedDestinationSettings, context: context)
      end
    end

    class Scte20SourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte20SourceSettings, context: context)
        Hearth::Validator.validate!(input[:convert608_to708], ::String, context: "#{context}[:convert608_to708]")
        Hearth::Validator.validate!(input[:source608_channel_number], ::Integer, context: "#{context}[:source608_channel_number]")
      end
    end

    class Scte27DestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte27DestinationSettings, context: context)
      end
    end

    class Scte27SourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte27SourceSettings, context: context)
        Hearth::Validator.validate!(input[:ocr_language], ::String, context: "#{context}[:ocr_language]")
        Hearth::Validator.validate!(input[:pid], ::Integer, context: "#{context}[:pid]")
      end
    end

    class Scte35DeliveryRestrictions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte35DeliveryRestrictions, context: context)
        Hearth::Validator.validate!(input[:archive_allowed_flag], ::String, context: "#{context}[:archive_allowed_flag]")
        Hearth::Validator.validate!(input[:device_restrictions], ::String, context: "#{context}[:device_restrictions]")
        Hearth::Validator.validate!(input[:no_regional_blackout_flag], ::String, context: "#{context}[:no_regional_blackout_flag]")
        Hearth::Validator.validate!(input[:web_delivery_allowed_flag], ::String, context: "#{context}[:web_delivery_allowed_flag]")
      end
    end

    class Scte35Descriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte35Descriptor, context: context)
        Scte35DescriptorSettings.validate!(input[:scte35_descriptor_settings], context: "#{context}[:scte35_descriptor_settings]") unless input[:scte35_descriptor_settings].nil?
      end
    end

    class Scte35DescriptorSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte35DescriptorSettings, context: context)
        Scte35SegmentationDescriptor.validate!(input[:segmentation_descriptor_scte35_descriptor_settings], context: "#{context}[:segmentation_descriptor_scte35_descriptor_settings]") unless input[:segmentation_descriptor_scte35_descriptor_settings].nil?
      end
    end

    class Scte35ReturnToNetworkScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte35ReturnToNetworkScheduleActionSettings, context: context)
        Hearth::Validator.validate!(input[:splice_event_id], ::Integer, context: "#{context}[:splice_event_id]")
      end
    end

    class Scte35SegmentationDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte35SegmentationDescriptor, context: context)
        Scte35DeliveryRestrictions.validate!(input[:delivery_restrictions], context: "#{context}[:delivery_restrictions]") unless input[:delivery_restrictions].nil?
        Hearth::Validator.validate!(input[:segment_num], ::Integer, context: "#{context}[:segment_num]")
        Hearth::Validator.validate!(input[:segmentation_cancel_indicator], ::String, context: "#{context}[:segmentation_cancel_indicator]")
        Hearth::Validator.validate!(input[:segmentation_duration], ::Integer, context: "#{context}[:segmentation_duration]")
        Hearth::Validator.validate!(input[:segmentation_event_id], ::Integer, context: "#{context}[:segmentation_event_id]")
        Hearth::Validator.validate!(input[:segmentation_type_id], ::Integer, context: "#{context}[:segmentation_type_id]")
        Hearth::Validator.validate!(input[:segmentation_upid], ::String, context: "#{context}[:segmentation_upid]")
        Hearth::Validator.validate!(input[:segmentation_upid_type], ::Integer, context: "#{context}[:segmentation_upid_type]")
        Hearth::Validator.validate!(input[:segments_expected], ::Integer, context: "#{context}[:segments_expected]")
        Hearth::Validator.validate!(input[:sub_segment_num], ::Integer, context: "#{context}[:sub_segment_num]")
        Hearth::Validator.validate!(input[:sub_segments_expected], ::Integer, context: "#{context}[:sub_segments_expected]")
      end
    end

    class Scte35SpliceInsert
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte35SpliceInsert, context: context)
        Hearth::Validator.validate!(input[:ad_avail_offset], ::Integer, context: "#{context}[:ad_avail_offset]")
        Hearth::Validator.validate!(input[:no_regional_blackout_flag], ::String, context: "#{context}[:no_regional_blackout_flag]")
        Hearth::Validator.validate!(input[:web_delivery_allowed_flag], ::String, context: "#{context}[:web_delivery_allowed_flag]")
      end
    end

    class Scte35SpliceInsertScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte35SpliceInsertScheduleActionSettings, context: context)
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:splice_event_id], ::Integer, context: "#{context}[:splice_event_id]")
      end
    end

    class Scte35TimeSignalApos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte35TimeSignalApos, context: context)
        Hearth::Validator.validate!(input[:ad_avail_offset], ::Integer, context: "#{context}[:ad_avail_offset]")
        Hearth::Validator.validate!(input[:no_regional_blackout_flag], ::String, context: "#{context}[:no_regional_blackout_flag]")
        Hearth::Validator.validate!(input[:web_delivery_allowed_flag], ::String, context: "#{context}[:web_delivery_allowed_flag]")
      end
    end

    class Scte35TimeSignalScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scte35TimeSignalScheduleActionSettings, context: context)
        List____listOfScte35Descriptor.validate!(input[:scte35_descriptors], context: "#{context}[:scte35_descriptors]") unless input[:scte35_descriptors].nil?
      end
    end

    class SmpteTtDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SmpteTtDestinationSettings, context: context)
      end
    end

    class StandardHlsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StandardHlsSettings, context: context)
        Hearth::Validator.validate!(input[:audio_rendition_sets], ::String, context: "#{context}[:audio_rendition_sets]")
        M3u8Settings.validate!(input[:m3u8_settings], context: "#{context}[:m3u8_settings]") unless input[:m3u8_settings].nil?
      end
    end

    class StartChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
      end
    end

    class StartChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        CdiInputSpecification.validate!(input[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless input[:cdi_input_specification].nil?
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        List____listOfOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        List____listOfChannelEgressEndpoint.validate!(input[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless input[:egress_endpoints].nil?
        EncoderSettings.validate!(input[:encoder_settings], context: "#{context}[:encoder_settings]") unless input[:encoder_settings].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOfInputAttachment.validate!(input[:input_attachments], context: "#{context}[:input_attachments]") unless input[:input_attachments].nil?
        InputSpecification.validate!(input[:input_specification], context: "#{context}[:input_specification]") unless input[:input_specification].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        MaintenanceStatus.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOfPipelineDetail.validate!(input[:pipeline_details], context: "#{context}[:pipeline_details]") unless input[:pipeline_details].nil?
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcOutputSettingsDescription.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class StartMultiplexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMultiplexInput, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
      end
    end

    class StartMultiplexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMultiplexOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        List____listOf__string.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        List____listOfMultiplexOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MultiplexSettings.validate!(input[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless input[:multiplex_settings].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:program_count], ::Integer, context: "#{context}[:program_count]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartTimecode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTimecode, context: context)
        Hearth::Validator.validate!(input[:timecode], ::String, context: "#{context}[:timecode]")
      end
    end

    class StaticImageActivateScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaticImageActivateScheduleActionSettings, context: context)
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fade_in], ::Integer, context: "#{context}[:fade_in]")
        Hearth::Validator.validate!(input[:fade_out], ::Integer, context: "#{context}[:fade_out]")
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        InputLocation.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Hearth::Validator.validate!(input[:image_x], ::Integer, context: "#{context}[:image_x]")
        Hearth::Validator.validate!(input[:image_y], ::Integer, context: "#{context}[:image_y]")
        Hearth::Validator.validate!(input[:layer], ::Integer, context: "#{context}[:layer]")
        Hearth::Validator.validate!(input[:opacity], ::Integer, context: "#{context}[:opacity]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class StaticImageDeactivateScheduleActionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaticImageDeactivateScheduleActionSettings, context: context)
        Hearth::Validator.validate!(input[:fade_out], ::Integer, context: "#{context}[:fade_out]")
        Hearth::Validator.validate!(input[:layer], ::Integer, context: "#{context}[:layer]")
      end
    end

    class StaticKeySettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaticKeySettings, context: context)
        InputLocation.validate!(input[:key_provider_server], context: "#{context}[:key_provider_server]") unless input[:key_provider_server].nil?
        Hearth::Validator.validate!(input[:static_key_value], ::String, context: "#{context}[:static_key_value]")
      end
    end

    class StopChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
      end
    end

    class StopChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopChannelOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        CdiInputSpecification.validate!(input[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless input[:cdi_input_specification].nil?
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        List____listOfOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        List____listOfChannelEgressEndpoint.validate!(input[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless input[:egress_endpoints].nil?
        EncoderSettings.validate!(input[:encoder_settings], context: "#{context}[:encoder_settings]") unless input[:encoder_settings].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOfInputAttachment.validate!(input[:input_attachments], context: "#{context}[:input_attachments]") unless input[:input_attachments].nil?
        InputSpecification.validate!(input[:input_specification], context: "#{context}[:input_specification]") unless input[:input_specification].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        MaintenanceStatus.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOfPipelineDetail.validate!(input[:pipeline_details], context: "#{context}[:pipeline_details]") unless input[:pipeline_details].nil?
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcOutputSettingsDescription.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class StopMultiplexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMultiplexInput, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
      end
    end

    class StopMultiplexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMultiplexOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        List____listOf__string.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        List____listOfMultiplexOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MultiplexSettings.validate!(input[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless input[:multiplex_settings].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:pipelines_running_count], ::Integer, context: "#{context}[:pipelines_running_count]")
        Hearth::Validator.validate!(input[:program_count], ::Integer, context: "#{context}[:program_count]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StopTimecode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTimecode, context: context)
        Hearth::Validator.validate!(input[:last_frame_clipping_behavior], ::String, context: "#{context}[:last_frame_clipping_behavior]")
        Hearth::Validator.validate!(input[:timecode], ::String, context: "#{context}[:timecode]")
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TeletextDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TeletextDestinationSettings, context: context)
      end
    end

    class TeletextSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TeletextSourceSettings, context: context)
        CaptionRectangle.validate!(input[:output_rectangle], context: "#{context}[:output_rectangle]") unless input[:output_rectangle].nil?
        Hearth::Validator.validate!(input[:page_number], ::String, context: "#{context}[:page_number]")
      end
    end

    class TemporalFilterSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemporalFilterSettings, context: context)
        Hearth::Validator.validate!(input[:post_filter_sharpening], ::String, context: "#{context}[:post_filter_sharpening]")
        Hearth::Validator.validate!(input[:strength], ::String, context: "#{context}[:strength]")
      end
    end

    class TimecodeConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimecodeConfig, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:sync_threshold], ::Integer, context: "#{context}[:sync_threshold]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransferInputDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferInputDeviceInput, context: context)
        Hearth::Validator.validate!(input[:input_device_id], ::String, context: "#{context}[:input_device_id]")
        Hearth::Validator.validate!(input[:target_customer_id], ::String, context: "#{context}[:target_customer_id]")
        Hearth::Validator.validate!(input[:target_region], ::String, context: "#{context}[:target_region]")
        Hearth::Validator.validate!(input[:transfer_message], ::String, context: "#{context}[:transfer_message]")
      end
    end

    class TransferInputDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferInputDeviceOutput, context: context)
      end
    end

    class TransferringInputDeviceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferringInputDeviceSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:target_customer_id], ::String, context: "#{context}[:target_customer_id]")
        Hearth::Validator.validate!(input[:transfer_type], ::String, context: "#{context}[:transfer_type]")
      end
    end

    class TtmlDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TtmlDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:style_control], ::String, context: "#{context}[:style_control]")
      end
    end

    class UdpContainerSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UdpContainerSettings, context: context)
        M2tsSettings.validate!(input[:m2ts_settings], context: "#{context}[:m2ts_settings]") unless input[:m2ts_settings].nil?
      end
    end

    class UdpGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UdpGroupSettings, context: context)
        Hearth::Validator.validate!(input[:input_loss_action], ::String, context: "#{context}[:input_loss_action]")
        Hearth::Validator.validate!(input[:timed_metadata_id3_frame], ::String, context: "#{context}[:timed_metadata_id3_frame]")
        Hearth::Validator.validate!(input[:timed_metadata_id3_period], ::Integer, context: "#{context}[:timed_metadata_id3_period]")
      end
    end

    class UdpOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UdpOutputSettings, context: context)
        Hearth::Validator.validate!(input[:buffer_msec], ::Integer, context: "#{context}[:buffer_msec]")
        UdpContainerSettings.validate!(input[:container_settings], context: "#{context}[:container_settings]") unless input[:container_settings].nil?
        OutputLocationRef.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        FecOutputSettings.validate!(input[:fec_output_settings], context: "#{context}[:fec_output_settings]") unless input[:fec_output_settings].nil?
      end
    end

    class UnprocessableEntityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessableEntityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        List____listOfValidationError.validate!(input[:validation_errors], context: "#{context}[:validation_errors]") unless input[:validation_errors].nil?
      end
    end

    class UpdateChannelClassInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelClassInput, context: context)
        Hearth::Validator.validate!(input[:channel_class], ::String, context: "#{context}[:channel_class]")
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        List____listOfOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
      end
    end

    class UpdateChannelClassOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelClassOutput, context: context)
        Channel.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
      end
    end

    class UpdateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelInput, context: context)
        CdiInputSpecification.validate!(input[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless input[:cdi_input_specification].nil?
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        List____listOfOutputDestination.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        EncoderSettings.validate!(input[:encoder_settings], context: "#{context}[:encoder_settings]") unless input[:encoder_settings].nil?
        List____listOfInputAttachment.validate!(input[:input_attachments], context: "#{context}[:input_attachments]") unless input[:input_attachments].nil?
        InputSpecification.validate!(input[:input_specification], context: "#{context}[:input_specification]") unless input[:input_specification].nil?
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        MaintenanceUpdateSettings.validate!(input[:maintenance], context: "#{context}[:maintenance]") unless input[:maintenance].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class UpdateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelOutput, context: context)
        Channel.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
      end
    end

    class UpdateInputDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInputDeviceInput, context: context)
        InputDeviceConfigurableSettings.validate!(input[:hd_device_settings], context: "#{context}[:hd_device_settings]") unless input[:hd_device_settings].nil?
        Hearth::Validator.validate!(input[:input_device_id], ::String, context: "#{context}[:input_device_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        InputDeviceConfigurableSettings.validate!(input[:uhd_device_settings], context: "#{context}[:uhd_device_settings]") unless input[:uhd_device_settings].nil?
      end
    end

    class UpdateInputDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInputDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:device_settings_sync_state], ::String, context: "#{context}[:device_settings_sync_state]")
        Hearth::Validator.validate!(input[:device_update_status], ::String, context: "#{context}[:device_update_status]")
        InputDeviceHdSettings.validate!(input[:hd_device_settings], context: "#{context}[:hd_device_settings]") unless input[:hd_device_settings].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        InputDeviceNetworkSettings.validate!(input[:network_settings], context: "#{context}[:network_settings]") unless input[:network_settings].nil?
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        InputDeviceUhdSettings.validate!(input[:uhd_device_settings], context: "#{context}[:uhd_device_settings]") unless input[:uhd_device_settings].nil?
      end
    end

    class UpdateInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInputInput, context: context)
        List____listOfInputDestinationRequest.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        List____listOfInputDeviceRequest.validate!(input[:input_devices], context: "#{context}[:input_devices]") unless input[:input_devices].nil?
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
        List____listOf__string.validate!(input[:input_security_groups], context: "#{context}[:input_security_groups]") unless input[:input_security_groups].nil?
        List____listOfMediaConnectFlowRequest.validate!(input[:media_connect_flows], context: "#{context}[:media_connect_flows]") unless input[:media_connect_flows].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        List____listOfInputSourceRequest.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
      end
    end

    class UpdateInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInputOutput, context: context)
        Input.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
      end
    end

    class UpdateInputSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInputSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:input_security_group_id], ::String, context: "#{context}[:input_security_group_id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        List____listOfInputWhitelistRuleCidr.validate!(input[:whitelist_rules], context: "#{context}[:whitelist_rules]") unless input[:whitelist_rules].nil?
      end
    end

    class UpdateInputSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInputSecurityGroupOutput, context: context)
        InputSecurityGroup.validate!(input[:security_group], context: "#{context}[:security_group]") unless input[:security_group].nil?
      end
    end

    class UpdateMultiplexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMultiplexInput, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
        MultiplexSettings.validate!(input[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless input[:multiplex_settings].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateMultiplexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMultiplexOutput, context: context)
        Multiplex.validate!(input[:multiplex], context: "#{context}[:multiplex]") unless input[:multiplex].nil?
      end
    end

    class UpdateMultiplexProgramInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMultiplexProgramInput, context: context)
        Hearth::Validator.validate!(input[:multiplex_id], ::String, context: "#{context}[:multiplex_id]")
        MultiplexProgramSettings.validate!(input[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless input[:multiplex_program_settings].nil?
        Hearth::Validator.validate!(input[:program_name], ::String, context: "#{context}[:program_name]")
      end
    end

    class UpdateMultiplexProgramOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMultiplexProgramOutput, context: context)
        MultiplexProgram.validate!(input[:multiplex_program], context: "#{context}[:multiplex_program]") unless input[:multiplex_program].nil?
      end
    end

    class UpdateReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReservationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:reservation_id], ::String, context: "#{context}[:reservation_id]")
      end
    end

    class UpdateReservationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReservationOutput, context: context)
        Reservation.validate!(input[:reservation], context: "#{context}[:reservation]") unless input[:reservation].nil?
      end
    end

    class ValidationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationError, context: context)
        Hearth::Validator.validate!(input[:element_path], ::String, context: "#{context}[:element_path]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class VideoBlackFailoverSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoBlackFailoverSettings, context: context)
        Hearth::Validator.validate!(input[:black_detect_threshold], ::Float, context: "#{context}[:black_detect_threshold]")
        Hearth::Validator.validate!(input[:video_black_threshold_msec], ::Integer, context: "#{context}[:video_black_threshold_msec]")
      end
    end

    class VideoCodecSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoCodecSettings, context: context)
        FrameCaptureSettings.validate!(input[:frame_capture_settings], context: "#{context}[:frame_capture_settings]") unless input[:frame_capture_settings].nil?
        H264Settings.validate!(input[:h264_settings], context: "#{context}[:h264_settings]") unless input[:h264_settings].nil?
        H265Settings.validate!(input[:h265_settings], context: "#{context}[:h265_settings]") unless input[:h265_settings].nil?
        Mpeg2Settings.validate!(input[:mpeg2_settings], context: "#{context}[:mpeg2_settings]") unless input[:mpeg2_settings].nil?
      end
    end

    class VideoDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoDescription, context: context)
        VideoCodecSettings.validate!(input[:codec_settings], context: "#{context}[:codec_settings]") unless input[:codec_settings].nil?
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:respond_to_afd], ::String, context: "#{context}[:respond_to_afd]")
        Hearth::Validator.validate!(input[:scaling_behavior], ::String, context: "#{context}[:scaling_behavior]")
        Hearth::Validator.validate!(input[:sharpness], ::Integer, context: "#{context}[:sharpness]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class VideoSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoSelector, context: context)
        Hearth::Validator.validate!(input[:color_space], ::String, context: "#{context}[:color_space]")
        VideoSelectorColorSpaceSettings.validate!(input[:color_space_settings], context: "#{context}[:color_space_settings]") unless input[:color_space_settings].nil?
        Hearth::Validator.validate!(input[:color_space_usage], ::String, context: "#{context}[:color_space_usage]")
        VideoSelectorSettings.validate!(input[:selector_settings], context: "#{context}[:selector_settings]") unless input[:selector_settings].nil?
      end
    end

    class VideoSelectorColorSpaceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoSelectorColorSpaceSettings, context: context)
        Hdr10Settings.validate!(input[:hdr10_settings], context: "#{context}[:hdr10_settings]") unless input[:hdr10_settings].nil?
      end
    end

    class VideoSelectorPid
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoSelectorPid, context: context)
        Hearth::Validator.validate!(input[:pid], ::Integer, context: "#{context}[:pid]")
      end
    end

    class VideoSelectorProgramId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoSelectorProgramId, context: context)
        Hearth::Validator.validate!(input[:program_id], ::Integer, context: "#{context}[:program_id]")
      end
    end

    class VideoSelectorSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoSelectorSettings, context: context)
        VideoSelectorPid.validate!(input[:video_selector_pid], context: "#{context}[:video_selector_pid]") unless input[:video_selector_pid].nil?
        VideoSelectorProgramId.validate!(input[:video_selector_program_id], context: "#{context}[:video_selector_program_id]") unless input[:video_selector_program_id].nil?
      end
    end

    class VpcOutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcOutputSettings, context: context)
        List____listOf__string.validate!(input[:public_address_allocation_ids], context: "#{context}[:public_address_allocation_ids]") unless input[:public_address_allocation_ids].nil?
        List____listOf__string.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        List____listOf__string.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class VpcOutputSettingsDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcOutputSettingsDescription, context: context)
        List____listOf__string.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        List____listOf__string.validate!(input[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless input[:network_interface_ids].nil?
        List____listOf__string.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        List____listOf__string.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class WavSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WavSettings, context: context)
        Hearth::Validator.validate!(input[:bit_depth], ::Float, context: "#{context}[:bit_depth]")
        Hearth::Validator.validate!(input[:coding_mode], ::String, context: "#{context}[:coding_mode]")
        Hearth::Validator.validate!(input[:sample_rate], ::Float, context: "#{context}[:sample_rate]")
      end
    end

    class WebvttDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebvttDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:style_control], ::String, context: "#{context}[:style_control]")
      end
    end

    class List____listOfAudioChannelMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AudioChannelMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfAudioDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AudioDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfAudioSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AudioSelector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfAudioTrack
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AudioTrack.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfBatchFailedResultModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchFailedResultModel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfBatchSuccessfulResultModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchSuccessfulResultModel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCaptionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CaptionDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCaptionLanguageMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CaptionLanguageMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCaptionSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CaptionSelector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfChannelEgressEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelEgressEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfChannelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfFailoverCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FailoverCondition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfHlsAdMarkers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOfInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Input.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputAttachment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputChannelLevel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputChannelLevel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputDestinationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputDestinationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputDeviceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputDeviceRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputDeviceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputDeviceSettings.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputDeviceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputDeviceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputSecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputSourceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputSourceRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputWhitelistRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputWhitelistRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputWhitelistRuleCidr
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputWhitelistRuleCidr.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMediaConnectFlow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaConnectFlow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMediaConnectFlowRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaConnectFlowRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMediaPackageOutputDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaPackageOutputDestinationSettings.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMultiplexOutputDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MultiplexOutputDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMultiplexProgramPipelineDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MultiplexProgramPipelineDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMultiplexProgramSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MultiplexProgramSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMultiplexSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MultiplexSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfOffering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Offering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Output.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfOutputDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OutputDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfOutputDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OutputDestinationSettings.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfOutputGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OutputGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfPipelineDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PipelineDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfPipelinePauseStateSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PipelinePauseStateSettings.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfReservation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Reservation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfRtmpAdMarkers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOfScheduleAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScheduleAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfScte35Descriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Scte35Descriptor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfTransferringInputDeviceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TransferringInputDeviceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfValidationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ValidationError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfVideoDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VideoDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__integer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
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

  end
end
