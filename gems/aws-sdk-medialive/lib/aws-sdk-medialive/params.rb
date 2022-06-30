# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MediaLive
  module Params

    module AacSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AacSettings, context: context)
        type = Types::AacSettings.new
        type.bitrate = params[:bitrate]
        type.coding_mode = params[:coding_mode]
        type.input_type = params[:input_type]
        type.profile = params[:profile]
        type.rate_control_mode = params[:rate_control_mode]
        type.raw_format = params[:raw_format]
        type.sample_rate = params[:sample_rate]
        type.spec = params[:spec]
        type.vbr_quality = params[:vbr_quality]
        type
      end
    end

    module Ac3Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ac3Settings, context: context)
        type = Types::Ac3Settings.new
        type.bitrate = params[:bitrate]
        type.bitstream_mode = params[:bitstream_mode]
        type.coding_mode = params[:coding_mode]
        type.dialnorm = params[:dialnorm]
        type.drc_profile = params[:drc_profile]
        type.lfe_filter = params[:lfe_filter]
        type.metadata_control = params[:metadata_control]
        type
      end
    end

    module AcceptInputDeviceTransferInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInputDeviceTransferInput, context: context)
        type = Types::AcceptInputDeviceTransferInput.new
        type.input_device_id = params[:input_device_id]
        type
      end
    end

    module AcceptInputDeviceTransferOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInputDeviceTransferOutput, context: context)
        type = Types::AcceptInputDeviceTransferOutput.new
        type
      end
    end

    module AncillarySourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AncillarySourceSettings, context: context)
        type = Types::AncillarySourceSettings.new
        type.source_ancillary_channel_number = params[:source_ancillary_channel_number]
        type
      end
    end

    module ArchiveCdnSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArchiveCdnSettings, context: context)
        type = Types::ArchiveCdnSettings.new
        type.archive_s3_settings = ArchiveS3Settings.build(params[:archive_s3_settings], context: "#{context}[:archive_s3_settings]") unless params[:archive_s3_settings].nil?
        type
      end
    end

    module ArchiveContainerSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArchiveContainerSettings, context: context)
        type = Types::ArchiveContainerSettings.new
        type.m2ts_settings = M2tsSettings.build(params[:m2ts_settings], context: "#{context}[:m2ts_settings]") unless params[:m2ts_settings].nil?
        type.raw_settings = RawSettings.build(params[:raw_settings], context: "#{context}[:raw_settings]") unless params[:raw_settings].nil?
        type
      end
    end

    module ArchiveGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArchiveGroupSettings, context: context)
        type = Types::ArchiveGroupSettings.new
        type.archive_cdn_settings = ArchiveCdnSettings.build(params[:archive_cdn_settings], context: "#{context}[:archive_cdn_settings]") unless params[:archive_cdn_settings].nil?
        type.destination = OutputLocationRef.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.rollover_interval = params[:rollover_interval]
        type
      end
    end

    module ArchiveOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArchiveOutputSettings, context: context)
        type = Types::ArchiveOutputSettings.new
        type.container_settings = ArchiveContainerSettings.build(params[:container_settings], context: "#{context}[:container_settings]") unless params[:container_settings].nil?
        type.extension = params[:extension]
        type.name_modifier = params[:name_modifier]
        type
      end
    end

    module ArchiveS3Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArchiveS3Settings, context: context)
        type = Types::ArchiveS3Settings.new
        type.canned_acl = params[:canned_acl]
        type
      end
    end

    module AribDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AribDestinationSettings, context: context)
        type = Types::AribDestinationSettings.new
        type
      end
    end

    module AribSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AribSourceSettings, context: context)
        type = Types::AribSourceSettings.new
        type
      end
    end

    module AudioChannelMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioChannelMapping, context: context)
        type = Types::AudioChannelMapping.new
        type.input_channel_levels = List____listOfInputChannelLevel.build(params[:input_channel_levels], context: "#{context}[:input_channel_levels]") unless params[:input_channel_levels].nil?
        type.output_channel = params[:output_channel]
        type
      end
    end

    module AudioCodecSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioCodecSettings, context: context)
        type = Types::AudioCodecSettings.new
        type.aac_settings = AacSettings.build(params[:aac_settings], context: "#{context}[:aac_settings]") unless params[:aac_settings].nil?
        type.ac3_settings = Ac3Settings.build(params[:ac3_settings], context: "#{context}[:ac3_settings]") unless params[:ac3_settings].nil?
        type.eac3_settings = Eac3Settings.build(params[:eac3_settings], context: "#{context}[:eac3_settings]") unless params[:eac3_settings].nil?
        type.mp2_settings = Mp2Settings.build(params[:mp2_settings], context: "#{context}[:mp2_settings]") unless params[:mp2_settings].nil?
        type.pass_through_settings = PassThroughSettings.build(params[:pass_through_settings], context: "#{context}[:pass_through_settings]") unless params[:pass_through_settings].nil?
        type.wav_settings = WavSettings.build(params[:wav_settings], context: "#{context}[:wav_settings]") unless params[:wav_settings].nil?
        type
      end
    end

    module AudioDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioDescription, context: context)
        type = Types::AudioDescription.new
        type.audio_normalization_settings = AudioNormalizationSettings.build(params[:audio_normalization_settings], context: "#{context}[:audio_normalization_settings]") unless params[:audio_normalization_settings].nil?
        type.audio_selector_name = params[:audio_selector_name]
        type.audio_type = params[:audio_type]
        type.audio_type_control = params[:audio_type_control]
        type.audio_watermarking_settings = AudioWatermarkSettings.build(params[:audio_watermarking_settings], context: "#{context}[:audio_watermarking_settings]") unless params[:audio_watermarking_settings].nil?
        type.codec_settings = AudioCodecSettings.build(params[:codec_settings], context: "#{context}[:codec_settings]") unless params[:codec_settings].nil?
        type.language_code = params[:language_code]
        type.language_code_control = params[:language_code_control]
        type.name = params[:name]
        type.remix_settings = RemixSettings.build(params[:remix_settings], context: "#{context}[:remix_settings]") unless params[:remix_settings].nil?
        type.stream_name = params[:stream_name]
        type
      end
    end

    module AudioHlsRenditionSelection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioHlsRenditionSelection, context: context)
        type = Types::AudioHlsRenditionSelection.new
        type.group_id = params[:group_id]
        type.name = params[:name]
        type
      end
    end

    module AudioLanguageSelection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioLanguageSelection, context: context)
        type = Types::AudioLanguageSelection.new
        type.language_code = params[:language_code]
        type.language_selection_policy = params[:language_selection_policy]
        type
      end
    end

    module AudioNormalizationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioNormalizationSettings, context: context)
        type = Types::AudioNormalizationSettings.new
        type.algorithm = params[:algorithm]
        type.algorithm_control = params[:algorithm_control]
        type.target_lkfs = params[:target_lkfs]
        type
      end
    end

    module AudioOnlyHlsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioOnlyHlsSettings, context: context)
        type = Types::AudioOnlyHlsSettings.new
        type.audio_group_id = params[:audio_group_id]
        type.audio_only_image = InputLocation.build(params[:audio_only_image], context: "#{context}[:audio_only_image]") unless params[:audio_only_image].nil?
        type.audio_track_type = params[:audio_track_type]
        type.segment_type = params[:segment_type]
        type
      end
    end

    module AudioPidSelection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioPidSelection, context: context)
        type = Types::AudioPidSelection.new
        type.pid = params[:pid]
        type
      end
    end

    module AudioSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioSelector, context: context)
        type = Types::AudioSelector.new
        type.name = params[:name]
        type.selector_settings = AudioSelectorSettings.build(params[:selector_settings], context: "#{context}[:selector_settings]") unless params[:selector_settings].nil?
        type
      end
    end

    module AudioSelectorSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioSelectorSettings, context: context)
        type = Types::AudioSelectorSettings.new
        type.audio_hls_rendition_selection = AudioHlsRenditionSelection.build(params[:audio_hls_rendition_selection], context: "#{context}[:audio_hls_rendition_selection]") unless params[:audio_hls_rendition_selection].nil?
        type.audio_language_selection = AudioLanguageSelection.build(params[:audio_language_selection], context: "#{context}[:audio_language_selection]") unless params[:audio_language_selection].nil?
        type.audio_pid_selection = AudioPidSelection.build(params[:audio_pid_selection], context: "#{context}[:audio_pid_selection]") unless params[:audio_pid_selection].nil?
        type.audio_track_selection = AudioTrackSelection.build(params[:audio_track_selection], context: "#{context}[:audio_track_selection]") unless params[:audio_track_selection].nil?
        type
      end
    end

    module AudioSilenceFailoverSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioSilenceFailoverSettings, context: context)
        type = Types::AudioSilenceFailoverSettings.new
        type.audio_selector_name = params[:audio_selector_name]
        type.audio_silence_threshold_msec = params[:audio_silence_threshold_msec]
        type
      end
    end

    module AudioTrack
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioTrack, context: context)
        type = Types::AudioTrack.new
        type.track = params[:track]
        type
      end
    end

    module AudioTrackSelection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioTrackSelection, context: context)
        type = Types::AudioTrackSelection.new
        type.tracks = List____listOfAudioTrack.build(params[:tracks], context: "#{context}[:tracks]") unless params[:tracks].nil?
        type
      end
    end

    module AudioWatermarkSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioWatermarkSettings, context: context)
        type = Types::AudioWatermarkSettings.new
        type.nielsen_watermarks_settings = NielsenWatermarksSettings.build(params[:nielsen_watermarks_settings], context: "#{context}[:nielsen_watermarks_settings]") unless params[:nielsen_watermarks_settings].nil?
        type
      end
    end

    module AutomaticInputFailoverSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomaticInputFailoverSettings, context: context)
        type = Types::AutomaticInputFailoverSettings.new
        type.error_clear_time_msec = params[:error_clear_time_msec]
        type.failover_conditions = List____listOfFailoverCondition.build(params[:failover_conditions], context: "#{context}[:failover_conditions]") unless params[:failover_conditions].nil?
        type.input_preference = params[:input_preference]
        type.secondary_input_id = params[:secondary_input_id]
        type
      end
    end

    module AvailBlanking
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailBlanking, context: context)
        type = Types::AvailBlanking.new
        type.avail_blanking_image = InputLocation.build(params[:avail_blanking_image], context: "#{context}[:avail_blanking_image]") unless params[:avail_blanking_image].nil?
        type.state = params[:state]
        type
      end
    end

    module AvailConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailConfiguration, context: context)
        type = Types::AvailConfiguration.new
        type.avail_settings = AvailSettings.build(params[:avail_settings], context: "#{context}[:avail_settings]") unless params[:avail_settings].nil?
        type
      end
    end

    module AvailSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailSettings, context: context)
        type = Types::AvailSettings.new
        type.scte35_splice_insert = Scte35SpliceInsert.build(params[:scte35_splice_insert], context: "#{context}[:scte35_splice_insert]") unless params[:scte35_splice_insert].nil?
        type.scte35_time_signal_apos = Scte35TimeSignalApos.build(params[:scte35_time_signal_apos], context: "#{context}[:scte35_time_signal_apos]") unless params[:scte35_time_signal_apos].nil?
        type
      end
    end

    module BadGatewayException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadGatewayException, context: context)
        type = Types::BadGatewayException.new
        type.message = params[:message]
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

    module BatchDeleteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteInput, context: context)
        type = Types::BatchDeleteInput.new
        type.channel_ids = List____listOf__string.build(params[:channel_ids], context: "#{context}[:channel_ids]") unless params[:channel_ids].nil?
        type.input_ids = List____listOf__string.build(params[:input_ids], context: "#{context}[:input_ids]") unless params[:input_ids].nil?
        type.input_security_group_ids = List____listOf__string.build(params[:input_security_group_ids], context: "#{context}[:input_security_group_ids]") unless params[:input_security_group_ids].nil?
        type.multiplex_ids = List____listOf__string.build(params[:multiplex_ids], context: "#{context}[:multiplex_ids]") unless params[:multiplex_ids].nil?
        type
      end
    end

    module BatchDeleteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteOutput, context: context)
        type = Types::BatchDeleteOutput.new
        type.failed = List____listOfBatchFailedResultModel.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type.successful = List____listOfBatchSuccessfulResultModel.build(params[:successful], context: "#{context}[:successful]") unless params[:successful].nil?
        type
      end
    end

    module BatchFailedResultModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchFailedResultModel, context: context)
        type = Types::BatchFailedResultModel.new
        type.arn = params[:arn]
        type.code = params[:code]
        type.id = params[:id]
        type.message = params[:message]
        type
      end
    end

    module BatchScheduleActionCreateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchScheduleActionCreateRequest, context: context)
        type = Types::BatchScheduleActionCreateRequest.new
        type.schedule_actions = List____listOfScheduleAction.build(params[:schedule_actions], context: "#{context}[:schedule_actions]") unless params[:schedule_actions].nil?
        type
      end
    end

    module BatchScheduleActionCreateResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchScheduleActionCreateResult, context: context)
        type = Types::BatchScheduleActionCreateResult.new
        type.schedule_actions = List____listOfScheduleAction.build(params[:schedule_actions], context: "#{context}[:schedule_actions]") unless params[:schedule_actions].nil?
        type
      end
    end

    module BatchScheduleActionDeleteRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchScheduleActionDeleteRequest, context: context)
        type = Types::BatchScheduleActionDeleteRequest.new
        type.action_names = List____listOf__string.build(params[:action_names], context: "#{context}[:action_names]") unless params[:action_names].nil?
        type
      end
    end

    module BatchScheduleActionDeleteResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchScheduleActionDeleteResult, context: context)
        type = Types::BatchScheduleActionDeleteResult.new
        type.schedule_actions = List____listOfScheduleAction.build(params[:schedule_actions], context: "#{context}[:schedule_actions]") unless params[:schedule_actions].nil?
        type
      end
    end

    module BatchStartInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStartInput, context: context)
        type = Types::BatchStartInput.new
        type.channel_ids = List____listOf__string.build(params[:channel_ids], context: "#{context}[:channel_ids]") unless params[:channel_ids].nil?
        type.multiplex_ids = List____listOf__string.build(params[:multiplex_ids], context: "#{context}[:multiplex_ids]") unless params[:multiplex_ids].nil?
        type
      end
    end

    module BatchStartOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStartOutput, context: context)
        type = Types::BatchStartOutput.new
        type.failed = List____listOfBatchFailedResultModel.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type.successful = List____listOfBatchSuccessfulResultModel.build(params[:successful], context: "#{context}[:successful]") unless params[:successful].nil?
        type
      end
    end

    module BatchStopInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStopInput, context: context)
        type = Types::BatchStopInput.new
        type.channel_ids = List____listOf__string.build(params[:channel_ids], context: "#{context}[:channel_ids]") unless params[:channel_ids].nil?
        type.multiplex_ids = List____listOf__string.build(params[:multiplex_ids], context: "#{context}[:multiplex_ids]") unless params[:multiplex_ids].nil?
        type
      end
    end

    module BatchStopOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStopOutput, context: context)
        type = Types::BatchStopOutput.new
        type.failed = List____listOfBatchFailedResultModel.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type.successful = List____listOfBatchSuccessfulResultModel.build(params[:successful], context: "#{context}[:successful]") unless params[:successful].nil?
        type
      end
    end

    module BatchSuccessfulResultModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSuccessfulResultModel, context: context)
        type = Types::BatchSuccessfulResultModel.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.state = params[:state]
        type
      end
    end

    module BatchUpdateScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateScheduleInput, context: context)
        type = Types::BatchUpdateScheduleInput.new
        type.channel_id = params[:channel_id]
        type.creates = BatchScheduleActionCreateRequest.build(params[:creates], context: "#{context}[:creates]") unless params[:creates].nil?
        type.deletes = BatchScheduleActionDeleteRequest.build(params[:deletes], context: "#{context}[:deletes]") unless params[:deletes].nil?
        type
      end
    end

    module BatchUpdateScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateScheduleOutput, context: context)
        type = Types::BatchUpdateScheduleOutput.new
        type.creates = BatchScheduleActionCreateResult.build(params[:creates], context: "#{context}[:creates]") unless params[:creates].nil?
        type.deletes = BatchScheduleActionDeleteResult.build(params[:deletes], context: "#{context}[:deletes]") unless params[:deletes].nil?
        type
      end
    end

    module BlackoutSlate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlackoutSlate, context: context)
        type = Types::BlackoutSlate.new
        type.blackout_slate_image = InputLocation.build(params[:blackout_slate_image], context: "#{context}[:blackout_slate_image]") unless params[:blackout_slate_image].nil?
        type.network_end_blackout = params[:network_end_blackout]
        type.network_end_blackout_image = InputLocation.build(params[:network_end_blackout_image], context: "#{context}[:network_end_blackout_image]") unless params[:network_end_blackout_image].nil?
        type.network_id = params[:network_id]
        type.state = params[:state]
        type
      end
    end

    module BurnInDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BurnInDestinationSettings, context: context)
        type = Types::BurnInDestinationSettings.new
        type.alignment = params[:alignment]
        type.background_color = params[:background_color]
        type.background_opacity = params[:background_opacity]
        type.font = InputLocation.build(params[:font], context: "#{context}[:font]") unless params[:font].nil?
        type.font_color = params[:font_color]
        type.font_opacity = params[:font_opacity]
        type.font_resolution = params[:font_resolution]
        type.font_size = params[:font_size]
        type.outline_color = params[:outline_color]
        type.outline_size = params[:outline_size]
        type.shadow_color = params[:shadow_color]
        type.shadow_opacity = params[:shadow_opacity]
        type.shadow_x_offset = params[:shadow_x_offset]
        type.shadow_y_offset = params[:shadow_y_offset]
        type.teletext_grid_control = params[:teletext_grid_control]
        type.x_position = params[:x_position]
        type.y_position = params[:y_position]
        type
      end
    end

    module CancelInputDeviceTransferInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelInputDeviceTransferInput, context: context)
        type = Types::CancelInputDeviceTransferInput.new
        type.input_device_id = params[:input_device_id]
        type
      end
    end

    module CancelInputDeviceTransferOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelInputDeviceTransferOutput, context: context)
        type = Types::CancelInputDeviceTransferOutput.new
        type
      end
    end

    module CaptionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionDescription, context: context)
        type = Types::CaptionDescription.new
        type.caption_selector_name = params[:caption_selector_name]
        type.destination_settings = CaptionDestinationSettings.build(params[:destination_settings], context: "#{context}[:destination_settings]") unless params[:destination_settings].nil?
        type.language_code = params[:language_code]
        type.language_description = params[:language_description]
        type.name = params[:name]
        type
      end
    end

    module CaptionDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionDestinationSettings, context: context)
        type = Types::CaptionDestinationSettings.new
        type.arib_destination_settings = AribDestinationSettings.build(params[:arib_destination_settings], context: "#{context}[:arib_destination_settings]") unless params[:arib_destination_settings].nil?
        type.burn_in_destination_settings = BurnInDestinationSettings.build(params[:burn_in_destination_settings], context: "#{context}[:burn_in_destination_settings]") unless params[:burn_in_destination_settings].nil?
        type.dvb_sub_destination_settings = DvbSubDestinationSettings.build(params[:dvb_sub_destination_settings], context: "#{context}[:dvb_sub_destination_settings]") unless params[:dvb_sub_destination_settings].nil?
        type.ebu_tt_d_destination_settings = EbuTtDDestinationSettings.build(params[:ebu_tt_d_destination_settings], context: "#{context}[:ebu_tt_d_destination_settings]") unless params[:ebu_tt_d_destination_settings].nil?
        type.embedded_destination_settings = EmbeddedDestinationSettings.build(params[:embedded_destination_settings], context: "#{context}[:embedded_destination_settings]") unless params[:embedded_destination_settings].nil?
        type.embedded_plus_scte20_destination_settings = EmbeddedPlusScte20DestinationSettings.build(params[:embedded_plus_scte20_destination_settings], context: "#{context}[:embedded_plus_scte20_destination_settings]") unless params[:embedded_plus_scte20_destination_settings].nil?
        type.rtmp_caption_info_destination_settings = RtmpCaptionInfoDestinationSettings.build(params[:rtmp_caption_info_destination_settings], context: "#{context}[:rtmp_caption_info_destination_settings]") unless params[:rtmp_caption_info_destination_settings].nil?
        type.scte20_plus_embedded_destination_settings = Scte20PlusEmbeddedDestinationSettings.build(params[:scte20_plus_embedded_destination_settings], context: "#{context}[:scte20_plus_embedded_destination_settings]") unless params[:scte20_plus_embedded_destination_settings].nil?
        type.scte27_destination_settings = Scte27DestinationSettings.build(params[:scte27_destination_settings], context: "#{context}[:scte27_destination_settings]") unless params[:scte27_destination_settings].nil?
        type.smpte_tt_destination_settings = SmpteTtDestinationSettings.build(params[:smpte_tt_destination_settings], context: "#{context}[:smpte_tt_destination_settings]") unless params[:smpte_tt_destination_settings].nil?
        type.teletext_destination_settings = TeletextDestinationSettings.build(params[:teletext_destination_settings], context: "#{context}[:teletext_destination_settings]") unless params[:teletext_destination_settings].nil?
        type.ttml_destination_settings = TtmlDestinationSettings.build(params[:ttml_destination_settings], context: "#{context}[:ttml_destination_settings]") unless params[:ttml_destination_settings].nil?
        type.webvtt_destination_settings = WebvttDestinationSettings.build(params[:webvtt_destination_settings], context: "#{context}[:webvtt_destination_settings]") unless params[:webvtt_destination_settings].nil?
        type
      end
    end

    module CaptionLanguageMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionLanguageMapping, context: context)
        type = Types::CaptionLanguageMapping.new
        type.caption_channel = params[:caption_channel]
        type.language_code = params[:language_code]
        type.language_description = params[:language_description]
        type
      end
    end

    module CaptionRectangle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionRectangle, context: context)
        type = Types::CaptionRectangle.new
        type.height = params[:height]
        type.left_offset = params[:left_offset]
        type.top_offset = params[:top_offset]
        type.width = params[:width]
        type
      end
    end

    module CaptionSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionSelector, context: context)
        type = Types::CaptionSelector.new
        type.language_code = params[:language_code]
        type.name = params[:name]
        type.selector_settings = CaptionSelectorSettings.build(params[:selector_settings], context: "#{context}[:selector_settings]") unless params[:selector_settings].nil?
        type
      end
    end

    module CaptionSelectorSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionSelectorSettings, context: context)
        type = Types::CaptionSelectorSettings.new
        type.ancillary_source_settings = AncillarySourceSettings.build(params[:ancillary_source_settings], context: "#{context}[:ancillary_source_settings]") unless params[:ancillary_source_settings].nil?
        type.arib_source_settings = AribSourceSettings.build(params[:arib_source_settings], context: "#{context}[:arib_source_settings]") unless params[:arib_source_settings].nil?
        type.dvb_sub_source_settings = DvbSubSourceSettings.build(params[:dvb_sub_source_settings], context: "#{context}[:dvb_sub_source_settings]") unless params[:dvb_sub_source_settings].nil?
        type.embedded_source_settings = EmbeddedSourceSettings.build(params[:embedded_source_settings], context: "#{context}[:embedded_source_settings]") unless params[:embedded_source_settings].nil?
        type.scte20_source_settings = Scte20SourceSettings.build(params[:scte20_source_settings], context: "#{context}[:scte20_source_settings]") unless params[:scte20_source_settings].nil?
        type.scte27_source_settings = Scte27SourceSettings.build(params[:scte27_source_settings], context: "#{context}[:scte27_source_settings]") unless params[:scte27_source_settings].nil?
        type.teletext_source_settings = TeletextSourceSettings.build(params[:teletext_source_settings], context: "#{context}[:teletext_source_settings]") unless params[:teletext_source_settings].nil?
        type
      end
    end

    module CdiInputSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CdiInputSpecification, context: context)
        type = Types::CdiInputSpecification.new
        type.resolution = params[:resolution]
        type
      end
    end

    module Channel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Channel, context: context)
        type = Types::Channel.new
        type.arn = params[:arn]
        type.cdi_input_specification = CdiInputSpecification.build(params[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless params[:cdi_input_specification].nil?
        type.channel_class = params[:channel_class]
        type.destinations = List____listOfOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.egress_endpoints = List____listOfChannelEgressEndpoint.build(params[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless params[:egress_endpoints].nil?
        type.encoder_settings = EncoderSettings.build(params[:encoder_settings], context: "#{context}[:encoder_settings]") unless params[:encoder_settings].nil?
        type.id = params[:id]
        type.input_attachments = List____listOfInputAttachment.build(params[:input_attachments], context: "#{context}[:input_attachments]") unless params[:input_attachments].nil?
        type.input_specification = InputSpecification.build(params[:input_specification], context: "#{context}[:input_specification]") unless params[:input_specification].nil?
        type.log_level = params[:log_level]
        type.maintenance = MaintenanceStatus.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type.name = params[:name]
        type.pipeline_details = List____listOfPipelineDetail.build(params[:pipeline_details], context: "#{context}[:pipeline_details]") unless params[:pipeline_details].nil?
        type.pipelines_running_count = params[:pipelines_running_count]
        type.role_arn = params[:role_arn]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc = VpcOutputSettingsDescription.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module ChannelEgressEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelEgressEndpoint, context: context)
        type = Types::ChannelEgressEndpoint.new
        type.source_ip = params[:source_ip]
        type
      end
    end

    module ChannelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelSummary, context: context)
        type = Types::ChannelSummary.new
        type.arn = params[:arn]
        type.cdi_input_specification = CdiInputSpecification.build(params[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless params[:cdi_input_specification].nil?
        type.channel_class = params[:channel_class]
        type.destinations = List____listOfOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.egress_endpoints = List____listOfChannelEgressEndpoint.build(params[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless params[:egress_endpoints].nil?
        type.id = params[:id]
        type.input_attachments = List____listOfInputAttachment.build(params[:input_attachments], context: "#{context}[:input_attachments]") unless params[:input_attachments].nil?
        type.input_specification = InputSpecification.build(params[:input_specification], context: "#{context}[:input_specification]") unless params[:input_specification].nil?
        type.log_level = params[:log_level]
        type.maintenance = MaintenanceStatus.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type.name = params[:name]
        type.pipelines_running_count = params[:pipelines_running_count]
        type.role_arn = params[:role_arn]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc = VpcOutputSettingsDescription.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module ClaimDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClaimDeviceInput, context: context)
        type = Types::ClaimDeviceInput.new
        type.id = params[:id]
        type
      end
    end

    module ClaimDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClaimDeviceOutput, context: context)
        type = Types::ClaimDeviceOutput.new
        type
      end
    end

    module ColorSpacePassthroughSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColorSpacePassthroughSettings, context: context)
        type = Types::ColorSpacePassthroughSettings.new
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelInput, context: context)
        type = Types::CreateChannelInput.new
        type.cdi_input_specification = CdiInputSpecification.build(params[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless params[:cdi_input_specification].nil?
        type.channel_class = params[:channel_class]
        type.destinations = List____listOfOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.encoder_settings = EncoderSettings.build(params[:encoder_settings], context: "#{context}[:encoder_settings]") unless params[:encoder_settings].nil?
        type.input_attachments = List____listOfInputAttachment.build(params[:input_attachments], context: "#{context}[:input_attachments]") unless params[:input_attachments].nil?
        type.input_specification = InputSpecification.build(params[:input_specification], context: "#{context}[:input_specification]") unless params[:input_specification].nil?
        type.log_level = params[:log_level]
        type.maintenance = MaintenanceCreateSettings.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type.name = params[:name]
        type.request_id = params[:request_id] || SecureRandom.uuid
        type.reserved = params[:reserved]
        type.role_arn = params[:role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc = VpcOutputSettings.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module CreateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelOutput, context: context)
        type = Types::CreateChannelOutput.new
        type.channel = Channel.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type
      end
    end

    module CreateInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInputInput, context: context)
        type = Types::CreateInputInput.new
        type.destinations = List____listOfInputDestinationRequest.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.input_devices = List____listOfInputDeviceSettings.build(params[:input_devices], context: "#{context}[:input_devices]") unless params[:input_devices].nil?
        type.input_security_groups = List____listOf__string.build(params[:input_security_groups], context: "#{context}[:input_security_groups]") unless params[:input_security_groups].nil?
        type.media_connect_flows = List____listOfMediaConnectFlowRequest.build(params[:media_connect_flows], context: "#{context}[:media_connect_flows]") unless params[:media_connect_flows].nil?
        type.name = params[:name]
        type.request_id = params[:request_id] || SecureRandom.uuid
        type.role_arn = params[:role_arn]
        type.sources = List____listOfInputSourceRequest.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type.vpc = InputVpcRequest.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module CreateInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInputOutput, context: context)
        type = Types::CreateInputOutput.new
        type.input = Input.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type
      end
    end

    module CreateInputSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInputSecurityGroupInput, context: context)
        type = Types::CreateInputSecurityGroupInput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.whitelist_rules = List____listOfInputWhitelistRuleCidr.build(params[:whitelist_rules], context: "#{context}[:whitelist_rules]") unless params[:whitelist_rules].nil?
        type
      end
    end

    module CreateInputSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInputSecurityGroupOutput, context: context)
        type = Types::CreateInputSecurityGroupOutput.new
        type.security_group = InputSecurityGroup.build(params[:security_group], context: "#{context}[:security_group]") unless params[:security_group].nil?
        type
      end
    end

    module CreateMultiplexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMultiplexInput, context: context)
        type = Types::CreateMultiplexInput.new
        type.availability_zones = List____listOf__string.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.multiplex_settings = MultiplexSettings.build(params[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless params[:multiplex_settings].nil?
        type.name = params[:name]
        type.request_id = params[:request_id] || SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMultiplexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMultiplexOutput, context: context)
        type = Types::CreateMultiplexOutput.new
        type.multiplex = Multiplex.build(params[:multiplex], context: "#{context}[:multiplex]") unless params[:multiplex].nil?
        type
      end
    end

    module CreateMultiplexProgramInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMultiplexProgramInput, context: context)
        type = Types::CreateMultiplexProgramInput.new
        type.multiplex_id = params[:multiplex_id]
        type.multiplex_program_settings = MultiplexProgramSettings.build(params[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless params[:multiplex_program_settings].nil?
        type.program_name = params[:program_name]
        type.request_id = params[:request_id] || SecureRandom.uuid
        type
      end
    end

    module CreateMultiplexProgramOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMultiplexProgramOutput, context: context)
        type = Types::CreateMultiplexProgramOutput.new
        type.multiplex_program = MultiplexProgram.build(params[:multiplex_program], context: "#{context}[:multiplex_program]") unless params[:multiplex_program].nil?
        type
      end
    end

    module CreatePartnerInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePartnerInputInput, context: context)
        type = Types::CreatePartnerInputInput.new
        type.input_id = params[:input_id]
        type.request_id = params[:request_id] || SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePartnerInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePartnerInputOutput, context: context)
        type = Types::CreatePartnerInputOutput.new
        type.input = Input.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type
      end
    end

    module CreateTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsInput, context: context)
        type = Types::CreateTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsOutput, context: context)
        type = Types::CreateTagsOutput.new
        type
      end
    end

    module DeleteChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelInput, context: context)
        type = Types::DeleteChannelInput.new
        type.channel_id = params[:channel_id]
        type
      end
    end

    module DeleteChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelOutput, context: context)
        type = Types::DeleteChannelOutput.new
        type.arn = params[:arn]
        type.cdi_input_specification = CdiInputSpecification.build(params[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless params[:cdi_input_specification].nil?
        type.channel_class = params[:channel_class]
        type.destinations = List____listOfOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.egress_endpoints = List____listOfChannelEgressEndpoint.build(params[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless params[:egress_endpoints].nil?
        type.encoder_settings = EncoderSettings.build(params[:encoder_settings], context: "#{context}[:encoder_settings]") unless params[:encoder_settings].nil?
        type.id = params[:id]
        type.input_attachments = List____listOfInputAttachment.build(params[:input_attachments], context: "#{context}[:input_attachments]") unless params[:input_attachments].nil?
        type.input_specification = InputSpecification.build(params[:input_specification], context: "#{context}[:input_specification]") unless params[:input_specification].nil?
        type.log_level = params[:log_level]
        type.maintenance = MaintenanceStatus.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type.name = params[:name]
        type.pipeline_details = List____listOfPipelineDetail.build(params[:pipeline_details], context: "#{context}[:pipeline_details]") unless params[:pipeline_details].nil?
        type.pipelines_running_count = params[:pipelines_running_count]
        type.role_arn = params[:role_arn]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc = VpcOutputSettingsDescription.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module DeleteInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInputInput, context: context)
        type = Types::DeleteInputInput.new
        type.input_id = params[:input_id]
        type
      end
    end

    module DeleteInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInputOutput, context: context)
        type = Types::DeleteInputOutput.new
        type
      end
    end

    module DeleteInputSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInputSecurityGroupInput, context: context)
        type = Types::DeleteInputSecurityGroupInput.new
        type.input_security_group_id = params[:input_security_group_id]
        type
      end
    end

    module DeleteInputSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInputSecurityGroupOutput, context: context)
        type = Types::DeleteInputSecurityGroupOutput.new
        type
      end
    end

    module DeleteMultiplexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMultiplexInput, context: context)
        type = Types::DeleteMultiplexInput.new
        type.multiplex_id = params[:multiplex_id]
        type
      end
    end

    module DeleteMultiplexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMultiplexOutput, context: context)
        type = Types::DeleteMultiplexOutput.new
        type.arn = params[:arn]
        type.availability_zones = List____listOf__string.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.destinations = List____listOfMultiplexOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.id = params[:id]
        type.multiplex_settings = MultiplexSettings.build(params[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless params[:multiplex_settings].nil?
        type.name = params[:name]
        type.pipelines_running_count = params[:pipelines_running_count]
        type.program_count = params[:program_count]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeleteMultiplexProgramInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMultiplexProgramInput, context: context)
        type = Types::DeleteMultiplexProgramInput.new
        type.multiplex_id = params[:multiplex_id]
        type.program_name = params[:program_name]
        type
      end
    end

    module DeleteMultiplexProgramOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMultiplexProgramOutput, context: context)
        type = Types::DeleteMultiplexProgramOutput.new
        type.channel_id = params[:channel_id]
        type.multiplex_program_settings = MultiplexProgramSettings.build(params[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless params[:multiplex_program_settings].nil?
        type.packet_identifiers_map = MultiplexProgramPacketIdentifiersMap.build(params[:packet_identifiers_map], context: "#{context}[:packet_identifiers_map]") unless params[:packet_identifiers_map].nil?
        type.pipeline_details = List____listOfMultiplexProgramPipelineDetail.build(params[:pipeline_details], context: "#{context}[:pipeline_details]") unless params[:pipeline_details].nil?
        type.program_name = params[:program_name]
        type
      end
    end

    module DeleteReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReservationInput, context: context)
        type = Types::DeleteReservationInput.new
        type.reservation_id = params[:reservation_id]
        type
      end
    end

    module DeleteReservationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReservationOutput, context: context)
        type = Types::DeleteReservationOutput.new
        type.arn = params[:arn]
        type.count = params[:count]
        type.currency_code = params[:currency_code]
        type.duration = params[:duration]
        type.duration_units = params[:duration_units]
        type.end = params[:end]
        type.fixed_price = params[:fixed_price]
        type.name = params[:name]
        type.offering_description = params[:offering_description]
        type.offering_id = params[:offering_id]
        type.offering_type = params[:offering_type]
        type.region = params[:region]
        type.reservation_id = params[:reservation_id]
        type.resource_specification = ReservationResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.start = params[:start]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.usage_price = params[:usage_price]
        type
      end
    end

    module DeleteScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduleInput, context: context)
        type = Types::DeleteScheduleInput.new
        type.channel_id = params[:channel_id]
        type
      end
    end

    module DeleteScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduleOutput, context: context)
        type = Types::DeleteScheduleOutput.new
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module DeleteTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsOutput, context: context)
        type = Types::DeleteTagsOutput.new
        type
      end
    end

    module DescribeChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelInput, context: context)
        type = Types::DescribeChannelInput.new
        type.channel_id = params[:channel_id]
        type
      end
    end

    module DescribeChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelOutput, context: context)
        type = Types::DescribeChannelOutput.new
        type.arn = params[:arn]
        type.cdi_input_specification = CdiInputSpecification.build(params[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless params[:cdi_input_specification].nil?
        type.channel_class = params[:channel_class]
        type.destinations = List____listOfOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.egress_endpoints = List____listOfChannelEgressEndpoint.build(params[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless params[:egress_endpoints].nil?
        type.encoder_settings = EncoderSettings.build(params[:encoder_settings], context: "#{context}[:encoder_settings]") unless params[:encoder_settings].nil?
        type.id = params[:id]
        type.input_attachments = List____listOfInputAttachment.build(params[:input_attachments], context: "#{context}[:input_attachments]") unless params[:input_attachments].nil?
        type.input_specification = InputSpecification.build(params[:input_specification], context: "#{context}[:input_specification]") unless params[:input_specification].nil?
        type.log_level = params[:log_level]
        type.maintenance = MaintenanceStatus.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type.name = params[:name]
        type.pipeline_details = List____listOfPipelineDetail.build(params[:pipeline_details], context: "#{context}[:pipeline_details]") unless params[:pipeline_details].nil?
        type.pipelines_running_count = params[:pipelines_running_count]
        type.role_arn = params[:role_arn]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc = VpcOutputSettingsDescription.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module DescribeInputDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputDeviceInput, context: context)
        type = Types::DescribeInputDeviceInput.new
        type.input_device_id = params[:input_device_id]
        type
      end
    end

    module DescribeInputDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputDeviceOutput, context: context)
        type = Types::DescribeInputDeviceOutput.new
        type.arn = params[:arn]
        type.connection_state = params[:connection_state]
        type.device_settings_sync_state = params[:device_settings_sync_state]
        type.device_update_status = params[:device_update_status]
        type.hd_device_settings = InputDeviceHdSettings.build(params[:hd_device_settings], context: "#{context}[:hd_device_settings]") unless params[:hd_device_settings].nil?
        type.id = params[:id]
        type.mac_address = params[:mac_address]
        type.name = params[:name]
        type.network_settings = InputDeviceNetworkSettings.build(params[:network_settings], context: "#{context}[:network_settings]") unless params[:network_settings].nil?
        type.serial_number = params[:serial_number]
        type.type = params[:type]
        type.uhd_device_settings = InputDeviceUhdSettings.build(params[:uhd_device_settings], context: "#{context}[:uhd_device_settings]") unless params[:uhd_device_settings].nil?
        type
      end
    end

    module DescribeInputDeviceThumbnailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputDeviceThumbnailInput, context: context)
        type = Types::DescribeInputDeviceThumbnailInput.new
        type.input_device_id = params[:input_device_id]
        type.accept = params[:accept]
        type
      end
    end

    module DescribeInputDeviceThumbnailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputDeviceThumbnailOutput, context: context)
        type = Types::DescribeInputDeviceThumbnailOutput.new
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.content_type = params[:content_type]
        type.content_length = params[:content_length]
        type.e_tag = params[:e_tag]
        type.last_modified = params[:last_modified]
        type
      end
    end

    module DescribeInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputInput, context: context)
        type = Types::DescribeInputInput.new
        type.input_id = params[:input_id]
        type
      end
    end

    module DescribeInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputOutput, context: context)
        type = Types::DescribeInputOutput.new
        type.arn = params[:arn]
        type.attached_channels = List____listOf__string.build(params[:attached_channels], context: "#{context}[:attached_channels]") unless params[:attached_channels].nil?
        type.destinations = List____listOfInputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.id = params[:id]
        type.input_class = params[:input_class]
        type.input_devices = List____listOfInputDeviceSettings.build(params[:input_devices], context: "#{context}[:input_devices]") unless params[:input_devices].nil?
        type.input_partner_ids = List____listOf__string.build(params[:input_partner_ids], context: "#{context}[:input_partner_ids]") unless params[:input_partner_ids].nil?
        type.input_source_type = params[:input_source_type]
        type.media_connect_flows = List____listOfMediaConnectFlow.build(params[:media_connect_flows], context: "#{context}[:media_connect_flows]") unless params[:media_connect_flows].nil?
        type.name = params[:name]
        type.role_arn = params[:role_arn]
        type.security_groups = List____listOf__string.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.sources = List____listOfInputSource.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type
      end
    end

    module DescribeInputSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputSecurityGroupInput, context: context)
        type = Types::DescribeInputSecurityGroupInput.new
        type.input_security_group_id = params[:input_security_group_id]
        type
      end
    end

    module DescribeInputSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputSecurityGroupOutput, context: context)
        type = Types::DescribeInputSecurityGroupOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.inputs = List____listOf__string.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.whitelist_rules = List____listOfInputWhitelistRule.build(params[:whitelist_rules], context: "#{context}[:whitelist_rules]") unless params[:whitelist_rules].nil?
        type
      end
    end

    module DescribeMultiplexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMultiplexInput, context: context)
        type = Types::DescribeMultiplexInput.new
        type.multiplex_id = params[:multiplex_id]
        type
      end
    end

    module DescribeMultiplexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMultiplexOutput, context: context)
        type = Types::DescribeMultiplexOutput.new
        type.arn = params[:arn]
        type.availability_zones = List____listOf__string.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.destinations = List____listOfMultiplexOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.id = params[:id]
        type.multiplex_settings = MultiplexSettings.build(params[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless params[:multiplex_settings].nil?
        type.name = params[:name]
        type.pipelines_running_count = params[:pipelines_running_count]
        type.program_count = params[:program_count]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeMultiplexProgramInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMultiplexProgramInput, context: context)
        type = Types::DescribeMultiplexProgramInput.new
        type.multiplex_id = params[:multiplex_id]
        type.program_name = params[:program_name]
        type
      end
    end

    module DescribeMultiplexProgramOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMultiplexProgramOutput, context: context)
        type = Types::DescribeMultiplexProgramOutput.new
        type.channel_id = params[:channel_id]
        type.multiplex_program_settings = MultiplexProgramSettings.build(params[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless params[:multiplex_program_settings].nil?
        type.packet_identifiers_map = MultiplexProgramPacketIdentifiersMap.build(params[:packet_identifiers_map], context: "#{context}[:packet_identifiers_map]") unless params[:packet_identifiers_map].nil?
        type.pipeline_details = List____listOfMultiplexProgramPipelineDetail.build(params[:pipeline_details], context: "#{context}[:pipeline_details]") unless params[:pipeline_details].nil?
        type.program_name = params[:program_name]
        type
      end
    end

    module DescribeOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOfferingInput, context: context)
        type = Types::DescribeOfferingInput.new
        type.offering_id = params[:offering_id]
        type
      end
    end

    module DescribeOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOfferingOutput, context: context)
        type = Types::DescribeOfferingOutput.new
        type.arn = params[:arn]
        type.currency_code = params[:currency_code]
        type.duration = params[:duration]
        type.duration_units = params[:duration_units]
        type.fixed_price = params[:fixed_price]
        type.offering_description = params[:offering_description]
        type.offering_id = params[:offering_id]
        type.offering_type = params[:offering_type]
        type.region = params[:region]
        type.resource_specification = ReservationResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.usage_price = params[:usage_price]
        type
      end
    end

    module DescribeReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservationInput, context: context)
        type = Types::DescribeReservationInput.new
        type.reservation_id = params[:reservation_id]
        type
      end
    end

    module DescribeReservationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservationOutput, context: context)
        type = Types::DescribeReservationOutput.new
        type.arn = params[:arn]
        type.count = params[:count]
        type.currency_code = params[:currency_code]
        type.duration = params[:duration]
        type.duration_units = params[:duration_units]
        type.end = params[:end]
        type.fixed_price = params[:fixed_price]
        type.name = params[:name]
        type.offering_description = params[:offering_description]
        type.offering_id = params[:offering_id]
        type.offering_type = params[:offering_type]
        type.region = params[:region]
        type.reservation_id = params[:reservation_id]
        type.resource_specification = ReservationResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.start = params[:start]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.usage_price = params[:usage_price]
        type
      end
    end

    module DescribeScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduleInput, context: context)
        type = Types::DescribeScheduleInput.new
        type.channel_id = params[:channel_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduleOutput, context: context)
        type = Types::DescribeScheduleOutput.new
        type.next_token = params[:next_token]
        type.schedule_actions = List____listOfScheduleAction.build(params[:schedule_actions], context: "#{context}[:schedule_actions]") unless params[:schedule_actions].nil?
        type
      end
    end

    module DvbNitSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DvbNitSettings, context: context)
        type = Types::DvbNitSettings.new
        type.network_id = params[:network_id]
        type.network_name = params[:network_name]
        type.rep_interval = params[:rep_interval]
        type
      end
    end

    module DvbSdtSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DvbSdtSettings, context: context)
        type = Types::DvbSdtSettings.new
        type.output_sdt = params[:output_sdt]
        type.rep_interval = params[:rep_interval]
        type.service_name = params[:service_name]
        type.service_provider_name = params[:service_provider_name]
        type
      end
    end

    module DvbSubDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DvbSubDestinationSettings, context: context)
        type = Types::DvbSubDestinationSettings.new
        type.alignment = params[:alignment]
        type.background_color = params[:background_color]
        type.background_opacity = params[:background_opacity]
        type.font = InputLocation.build(params[:font], context: "#{context}[:font]") unless params[:font].nil?
        type.font_color = params[:font_color]
        type.font_opacity = params[:font_opacity]
        type.font_resolution = params[:font_resolution]
        type.font_size = params[:font_size]
        type.outline_color = params[:outline_color]
        type.outline_size = params[:outline_size]
        type.shadow_color = params[:shadow_color]
        type.shadow_opacity = params[:shadow_opacity]
        type.shadow_x_offset = params[:shadow_x_offset]
        type.shadow_y_offset = params[:shadow_y_offset]
        type.teletext_grid_control = params[:teletext_grid_control]
        type.x_position = params[:x_position]
        type.y_position = params[:y_position]
        type
      end
    end

    module DvbSubSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DvbSubSourceSettings, context: context)
        type = Types::DvbSubSourceSettings.new
        type.ocr_language = params[:ocr_language]
        type.pid = params[:pid]
        type
      end
    end

    module DvbTdtSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DvbTdtSettings, context: context)
        type = Types::DvbTdtSettings.new
        type.rep_interval = params[:rep_interval]
        type
      end
    end

    module Eac3Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Eac3Settings, context: context)
        type = Types::Eac3Settings.new
        type.attenuation_control = params[:attenuation_control]
        type.bitrate = params[:bitrate]
        type.bitstream_mode = params[:bitstream_mode]
        type.coding_mode = params[:coding_mode]
        type.dc_filter = params[:dc_filter]
        type.dialnorm = params[:dialnorm]
        type.drc_line = params[:drc_line]
        type.drc_rf = params[:drc_rf]
        type.lfe_control = params[:lfe_control]
        type.lfe_filter = params[:lfe_filter]
        type.lo_ro_center_mix_level = params[:lo_ro_center_mix_level]
        type.lo_ro_surround_mix_level = params[:lo_ro_surround_mix_level]
        type.lt_rt_center_mix_level = params[:lt_rt_center_mix_level]
        type.lt_rt_surround_mix_level = params[:lt_rt_surround_mix_level]
        type.metadata_control = params[:metadata_control]
        type.passthrough_control = params[:passthrough_control]
        type.phase_control = params[:phase_control]
        type.stereo_downmix = params[:stereo_downmix]
        type.surround_ex_mode = params[:surround_ex_mode]
        type.surround_mode = params[:surround_mode]
        type
      end
    end

    module EbuTtDDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbuTtDDestinationSettings, context: context)
        type = Types::EbuTtDDestinationSettings.new
        type.copyright_holder = params[:copyright_holder]
        type.fill_line_gap = params[:fill_line_gap]
        type.font_family = params[:font_family]
        type.style_control = params[:style_control]
        type
      end
    end

    module EmbeddedDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmbeddedDestinationSettings, context: context)
        type = Types::EmbeddedDestinationSettings.new
        type
      end
    end

    module EmbeddedPlusScte20DestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmbeddedPlusScte20DestinationSettings, context: context)
        type = Types::EmbeddedPlusScte20DestinationSettings.new
        type
      end
    end

    module EmbeddedSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmbeddedSourceSettings, context: context)
        type = Types::EmbeddedSourceSettings.new
        type.convert608_to708 = params[:convert608_to708]
        type.scte20_detection = params[:scte20_detection]
        type.source608_channel_number = params[:source608_channel_number]
        type.source608_track_number = params[:source608_track_number]
        type
      end
    end

    module EncoderSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncoderSettings, context: context)
        type = Types::EncoderSettings.new
        type.audio_descriptions = List____listOfAudioDescription.build(params[:audio_descriptions], context: "#{context}[:audio_descriptions]") unless params[:audio_descriptions].nil?
        type.avail_blanking = AvailBlanking.build(params[:avail_blanking], context: "#{context}[:avail_blanking]") unless params[:avail_blanking].nil?
        type.avail_configuration = AvailConfiguration.build(params[:avail_configuration], context: "#{context}[:avail_configuration]") unless params[:avail_configuration].nil?
        type.blackout_slate = BlackoutSlate.build(params[:blackout_slate], context: "#{context}[:blackout_slate]") unless params[:blackout_slate].nil?
        type.caption_descriptions = List____listOfCaptionDescription.build(params[:caption_descriptions], context: "#{context}[:caption_descriptions]") unless params[:caption_descriptions].nil?
        type.feature_activations = FeatureActivations.build(params[:feature_activations], context: "#{context}[:feature_activations]") unless params[:feature_activations].nil?
        type.global_configuration = GlobalConfiguration.build(params[:global_configuration], context: "#{context}[:global_configuration]") unless params[:global_configuration].nil?
        type.motion_graphics_configuration = MotionGraphicsConfiguration.build(params[:motion_graphics_configuration], context: "#{context}[:motion_graphics_configuration]") unless params[:motion_graphics_configuration].nil?
        type.nielsen_configuration = NielsenConfiguration.build(params[:nielsen_configuration], context: "#{context}[:nielsen_configuration]") unless params[:nielsen_configuration].nil?
        type.output_groups = List____listOfOutputGroup.build(params[:output_groups], context: "#{context}[:output_groups]") unless params[:output_groups].nil?
        type.timecode_config = TimecodeConfig.build(params[:timecode_config], context: "#{context}[:timecode_config]") unless params[:timecode_config].nil?
        type.video_descriptions = List____listOfVideoDescription.build(params[:video_descriptions], context: "#{context}[:video_descriptions]") unless params[:video_descriptions].nil?
        type
      end
    end

    module FailoverCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverCondition, context: context)
        type = Types::FailoverCondition.new
        type.failover_condition_settings = FailoverConditionSettings.build(params[:failover_condition_settings], context: "#{context}[:failover_condition_settings]") unless params[:failover_condition_settings].nil?
        type
      end
    end

    module FailoverConditionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverConditionSettings, context: context)
        type = Types::FailoverConditionSettings.new
        type.audio_silence_settings = AudioSilenceFailoverSettings.build(params[:audio_silence_settings], context: "#{context}[:audio_silence_settings]") unless params[:audio_silence_settings].nil?
        type.input_loss_settings = InputLossFailoverSettings.build(params[:input_loss_settings], context: "#{context}[:input_loss_settings]") unless params[:input_loss_settings].nil?
        type.video_black_settings = VideoBlackFailoverSettings.build(params[:video_black_settings], context: "#{context}[:video_black_settings]") unless params[:video_black_settings].nil?
        type
      end
    end

    module FeatureActivations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeatureActivations, context: context)
        type = Types::FeatureActivations.new
        type.input_prepare_schedule_actions = params[:input_prepare_schedule_actions]
        type
      end
    end

    module FecOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FecOutputSettings, context: context)
        type = Types::FecOutputSettings.new
        type.column_depth = params[:column_depth]
        type.include_fec = params[:include_fec]
        type.row_length = params[:row_length]
        type
      end
    end

    module FixedModeScheduleActionStartSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FixedModeScheduleActionStartSettings, context: context)
        type = Types::FixedModeScheduleActionStartSettings.new
        type.time = params[:time]
        type
      end
    end

    module Fmp4HlsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Fmp4HlsSettings, context: context)
        type = Types::Fmp4HlsSettings.new
        type.audio_rendition_sets = params[:audio_rendition_sets]
        type.nielsen_id3_behavior = params[:nielsen_id3_behavior]
        type.timed_metadata_behavior = params[:timed_metadata_behavior]
        type
      end
    end

    module FollowModeScheduleActionStartSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FollowModeScheduleActionStartSettings, context: context)
        type = Types::FollowModeScheduleActionStartSettings.new
        type.follow_point = params[:follow_point]
        type.reference_action_name = params[:reference_action_name]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.message = params[:message]
        type
      end
    end

    module FrameCaptureCdnSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameCaptureCdnSettings, context: context)
        type = Types::FrameCaptureCdnSettings.new
        type.frame_capture_s3_settings = FrameCaptureS3Settings.build(params[:frame_capture_s3_settings], context: "#{context}[:frame_capture_s3_settings]") unless params[:frame_capture_s3_settings].nil?
        type
      end
    end

    module FrameCaptureGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameCaptureGroupSettings, context: context)
        type = Types::FrameCaptureGroupSettings.new
        type.destination = OutputLocationRef.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.frame_capture_cdn_settings = FrameCaptureCdnSettings.build(params[:frame_capture_cdn_settings], context: "#{context}[:frame_capture_cdn_settings]") unless params[:frame_capture_cdn_settings].nil?
        type
      end
    end

    module FrameCaptureHlsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameCaptureHlsSettings, context: context)
        type = Types::FrameCaptureHlsSettings.new
        type
      end
    end

    module FrameCaptureOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameCaptureOutputSettings, context: context)
        type = Types::FrameCaptureOutputSettings.new
        type.name_modifier = params[:name_modifier]
        type
      end
    end

    module FrameCaptureS3Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameCaptureS3Settings, context: context)
        type = Types::FrameCaptureS3Settings.new
        type.canned_acl = params[:canned_acl]
        type
      end
    end

    module FrameCaptureSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameCaptureSettings, context: context)
        type = Types::FrameCaptureSettings.new
        type.capture_interval = params[:capture_interval]
        type.capture_interval_units = params[:capture_interval_units]
        type
      end
    end

    module GatewayTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayTimeoutException, context: context)
        type = Types::GatewayTimeoutException.new
        type.message = params[:message]
        type
      end
    end

    module GlobalConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalConfiguration, context: context)
        type = Types::GlobalConfiguration.new
        type.initial_audio_gain = params[:initial_audio_gain]
        type.input_end_action = params[:input_end_action]
        type.input_loss_behavior = InputLossBehavior.build(params[:input_loss_behavior], context: "#{context}[:input_loss_behavior]") unless params[:input_loss_behavior].nil?
        type.output_locking_mode = params[:output_locking_mode]
        type.output_timing_source = params[:output_timing_source]
        type.support_low_framerate_inputs = params[:support_low_framerate_inputs]
        type
      end
    end

    module H264ColorSpaceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H264ColorSpaceSettings, context: context)
        type = Types::H264ColorSpaceSettings.new
        type.color_space_passthrough_settings = ColorSpacePassthroughSettings.build(params[:color_space_passthrough_settings], context: "#{context}[:color_space_passthrough_settings]") unless params[:color_space_passthrough_settings].nil?
        type.rec601_settings = Rec601Settings.build(params[:rec601_settings], context: "#{context}[:rec601_settings]") unless params[:rec601_settings].nil?
        type.rec709_settings = Rec709Settings.build(params[:rec709_settings], context: "#{context}[:rec709_settings]") unless params[:rec709_settings].nil?
        type
      end
    end

    module H264FilterSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H264FilterSettings, context: context)
        type = Types::H264FilterSettings.new
        type.temporal_filter_settings = TemporalFilterSettings.build(params[:temporal_filter_settings], context: "#{context}[:temporal_filter_settings]") unless params[:temporal_filter_settings].nil?
        type
      end
    end

    module H264Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H264Settings, context: context)
        type = Types::H264Settings.new
        type.adaptive_quantization = params[:adaptive_quantization]
        type.afd_signaling = params[:afd_signaling]
        type.bitrate = params[:bitrate]
        type.buf_fill_pct = params[:buf_fill_pct]
        type.buf_size = params[:buf_size]
        type.color_metadata = params[:color_metadata]
        type.color_space_settings = H264ColorSpaceSettings.build(params[:color_space_settings], context: "#{context}[:color_space_settings]") unless params[:color_space_settings].nil?
        type.entropy_encoding = params[:entropy_encoding]
        type.filter_settings = H264FilterSettings.build(params[:filter_settings], context: "#{context}[:filter_settings]") unless params[:filter_settings].nil?
        type.fixed_afd = params[:fixed_afd]
        type.flicker_aq = params[:flicker_aq]
        type.force_field_pictures = params[:force_field_pictures]
        type.framerate_control = params[:framerate_control]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.gop_b_reference = params[:gop_b_reference]
        type.gop_closed_cadence = params[:gop_closed_cadence]
        type.gop_num_b_frames = params[:gop_num_b_frames]
        type.gop_size = params[:gop_size]
        type.gop_size_units = params[:gop_size_units]
        type.level = params[:level]
        type.look_ahead_rate_control = params[:look_ahead_rate_control]
        type.max_bitrate = params[:max_bitrate]
        type.min_i_interval = params[:min_i_interval]
        type.num_ref_frames = params[:num_ref_frames]
        type.par_control = params[:par_control]
        type.par_denominator = params[:par_denominator]
        type.par_numerator = params[:par_numerator]
        type.profile = params[:profile]
        type.quality_level = params[:quality_level]
        type.qvbr_quality_level = params[:qvbr_quality_level]
        type.rate_control_mode = params[:rate_control_mode]
        type.scan_type = params[:scan_type]
        type.scene_change_detect = params[:scene_change_detect]
        type.slices = params[:slices]
        type.softness = params[:softness]
        type.spatial_aq = params[:spatial_aq]
        type.subgop_length = params[:subgop_length]
        type.syntax = params[:syntax]
        type.temporal_aq = params[:temporal_aq]
        type.timecode_insertion = params[:timecode_insertion]
        type
      end
    end

    module H265ColorSpaceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H265ColorSpaceSettings, context: context)
        type = Types::H265ColorSpaceSettings.new
        type.color_space_passthrough_settings = ColorSpacePassthroughSettings.build(params[:color_space_passthrough_settings], context: "#{context}[:color_space_passthrough_settings]") unless params[:color_space_passthrough_settings].nil?
        type.hdr10_settings = Hdr10Settings.build(params[:hdr10_settings], context: "#{context}[:hdr10_settings]") unless params[:hdr10_settings].nil?
        type.rec601_settings = Rec601Settings.build(params[:rec601_settings], context: "#{context}[:rec601_settings]") unless params[:rec601_settings].nil?
        type.rec709_settings = Rec709Settings.build(params[:rec709_settings], context: "#{context}[:rec709_settings]") unless params[:rec709_settings].nil?
        type
      end
    end

    module H265FilterSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H265FilterSettings, context: context)
        type = Types::H265FilterSettings.new
        type.temporal_filter_settings = TemporalFilterSettings.build(params[:temporal_filter_settings], context: "#{context}[:temporal_filter_settings]") unless params[:temporal_filter_settings].nil?
        type
      end
    end

    module H265Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H265Settings, context: context)
        type = Types::H265Settings.new
        type.adaptive_quantization = params[:adaptive_quantization]
        type.afd_signaling = params[:afd_signaling]
        type.alternative_transfer_function = params[:alternative_transfer_function]
        type.bitrate = params[:bitrate]
        type.buf_size = params[:buf_size]
        type.color_metadata = params[:color_metadata]
        type.color_space_settings = H265ColorSpaceSettings.build(params[:color_space_settings], context: "#{context}[:color_space_settings]") unless params[:color_space_settings].nil?
        type.filter_settings = H265FilterSettings.build(params[:filter_settings], context: "#{context}[:filter_settings]") unless params[:filter_settings].nil?
        type.fixed_afd = params[:fixed_afd]
        type.flicker_aq = params[:flicker_aq]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.gop_closed_cadence = params[:gop_closed_cadence]
        type.gop_size = params[:gop_size]
        type.gop_size_units = params[:gop_size_units]
        type.level = params[:level]
        type.look_ahead_rate_control = params[:look_ahead_rate_control]
        type.max_bitrate = params[:max_bitrate]
        type.min_i_interval = params[:min_i_interval]
        type.par_denominator = params[:par_denominator]
        type.par_numerator = params[:par_numerator]
        type.profile = params[:profile]
        type.qvbr_quality_level = params[:qvbr_quality_level]
        type.rate_control_mode = params[:rate_control_mode]
        type.scan_type = params[:scan_type]
        type.scene_change_detect = params[:scene_change_detect]
        type.slices = params[:slices]
        type.tier = params[:tier]
        type.timecode_insertion = params[:timecode_insertion]
        type
      end
    end

    module Hdr10Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Hdr10Settings, context: context)
        type = Types::Hdr10Settings.new
        type.max_cll = params[:max_cll]
        type.max_fall = params[:max_fall]
        type
      end
    end

    module HlsAkamaiSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsAkamaiSettings, context: context)
        type = Types::HlsAkamaiSettings.new
        type.connection_retry_interval = params[:connection_retry_interval]
        type.filecache_duration = params[:filecache_duration]
        type.http_transfer_mode = params[:http_transfer_mode]
        type.num_retries = params[:num_retries]
        type.restart_delay = params[:restart_delay]
        type.salt = params[:salt]
        type.token = params[:token]
        type
      end
    end

    module HlsBasicPutSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsBasicPutSettings, context: context)
        type = Types::HlsBasicPutSettings.new
        type.connection_retry_interval = params[:connection_retry_interval]
        type.filecache_duration = params[:filecache_duration]
        type.num_retries = params[:num_retries]
        type.restart_delay = params[:restart_delay]
        type
      end
    end

    module HlsCdnSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsCdnSettings, context: context)
        type = Types::HlsCdnSettings.new
        type.hls_akamai_settings = HlsAkamaiSettings.build(params[:hls_akamai_settings], context: "#{context}[:hls_akamai_settings]") unless params[:hls_akamai_settings].nil?
        type.hls_basic_put_settings = HlsBasicPutSettings.build(params[:hls_basic_put_settings], context: "#{context}[:hls_basic_put_settings]") unless params[:hls_basic_put_settings].nil?
        type.hls_media_store_settings = HlsMediaStoreSettings.build(params[:hls_media_store_settings], context: "#{context}[:hls_media_store_settings]") unless params[:hls_media_store_settings].nil?
        type.hls_s3_settings = HlsS3Settings.build(params[:hls_s3_settings], context: "#{context}[:hls_s3_settings]") unless params[:hls_s3_settings].nil?
        type.hls_webdav_settings = HlsWebdavSettings.build(params[:hls_webdav_settings], context: "#{context}[:hls_webdav_settings]") unless params[:hls_webdav_settings].nil?
        type
      end
    end

    module HlsGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsGroupSettings, context: context)
        type = Types::HlsGroupSettings.new
        type.ad_markers = List____listOfHlsAdMarkers.build(params[:ad_markers], context: "#{context}[:ad_markers]") unless params[:ad_markers].nil?
        type.base_url_content = params[:base_url_content]
        type.base_url_content1 = params[:base_url_content1]
        type.base_url_manifest = params[:base_url_manifest]
        type.base_url_manifest1 = params[:base_url_manifest1]
        type.caption_language_mappings = List____listOfCaptionLanguageMapping.build(params[:caption_language_mappings], context: "#{context}[:caption_language_mappings]") unless params[:caption_language_mappings].nil?
        type.caption_language_setting = params[:caption_language_setting]
        type.client_cache = params[:client_cache]
        type.codec_specification = params[:codec_specification]
        type.constant_iv = params[:constant_iv]
        type.destination = OutputLocationRef.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.directory_structure = params[:directory_structure]
        type.discontinuity_tags = params[:discontinuity_tags]
        type.encryption_type = params[:encryption_type]
        type.hls_cdn_settings = HlsCdnSettings.build(params[:hls_cdn_settings], context: "#{context}[:hls_cdn_settings]") unless params[:hls_cdn_settings].nil?
        type.hls_id3_segment_tagging = params[:hls_id3_segment_tagging]
        type.i_frame_only_playlists = params[:i_frame_only_playlists]
        type.incomplete_segment_behavior = params[:incomplete_segment_behavior]
        type.index_n_segments = params[:index_n_segments]
        type.input_loss_action = params[:input_loss_action]
        type.iv_in_manifest = params[:iv_in_manifest]
        type.iv_source = params[:iv_source]
        type.keep_segments = params[:keep_segments]
        type.key_format = params[:key_format]
        type.key_format_versions = params[:key_format_versions]
        type.key_provider_settings = KeyProviderSettings.build(params[:key_provider_settings], context: "#{context}[:key_provider_settings]") unless params[:key_provider_settings].nil?
        type.manifest_compression = params[:manifest_compression]
        type.manifest_duration_format = params[:manifest_duration_format]
        type.min_segment_length = params[:min_segment_length]
        type.mode = params[:mode]
        type.output_selection = params[:output_selection]
        type.program_date_time = params[:program_date_time]
        type.program_date_time_clock = params[:program_date_time_clock]
        type.program_date_time_period = params[:program_date_time_period]
        type.redundant_manifest = params[:redundant_manifest]
        type.segment_length = params[:segment_length]
        type.segmentation_mode = params[:segmentation_mode]
        type.segments_per_subdirectory = params[:segments_per_subdirectory]
        type.stream_inf_resolution = params[:stream_inf_resolution]
        type.timed_metadata_id3_frame = params[:timed_metadata_id3_frame]
        type.timed_metadata_id3_period = params[:timed_metadata_id3_period]
        type.timestamp_delta_milliseconds = params[:timestamp_delta_milliseconds]
        type.ts_file_mode = params[:ts_file_mode]
        type
      end
    end

    module HlsId3SegmentTaggingScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsId3SegmentTaggingScheduleActionSettings, context: context)
        type = Types::HlsId3SegmentTaggingScheduleActionSettings.new
        type.tag = params[:tag]
        type
      end
    end

    module HlsInputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsInputSettings, context: context)
        type = Types::HlsInputSettings.new
        type.bandwidth = params[:bandwidth]
        type.buffer_segments = params[:buffer_segments]
        type.retries = params[:retries]
        type.retry_interval = params[:retry_interval]
        type.scte35_source = params[:scte35_source]
        type
      end
    end

    module HlsMediaStoreSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsMediaStoreSettings, context: context)
        type = Types::HlsMediaStoreSettings.new
        type.connection_retry_interval = params[:connection_retry_interval]
        type.filecache_duration = params[:filecache_duration]
        type.media_store_storage_class = params[:media_store_storage_class]
        type.num_retries = params[:num_retries]
        type.restart_delay = params[:restart_delay]
        type
      end
    end

    module HlsOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsOutputSettings, context: context)
        type = Types::HlsOutputSettings.new
        type.h265_packaging_type = params[:h265_packaging_type]
        type.hls_settings = HlsSettings.build(params[:hls_settings], context: "#{context}[:hls_settings]") unless params[:hls_settings].nil?
        type.name_modifier = params[:name_modifier]
        type.segment_modifier = params[:segment_modifier]
        type
      end
    end

    module HlsS3Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsS3Settings, context: context)
        type = Types::HlsS3Settings.new
        type.canned_acl = params[:canned_acl]
        type
      end
    end

    module HlsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsSettings, context: context)
        type = Types::HlsSettings.new
        type.audio_only_hls_settings = AudioOnlyHlsSettings.build(params[:audio_only_hls_settings], context: "#{context}[:audio_only_hls_settings]") unless params[:audio_only_hls_settings].nil?
        type.fmp4_hls_settings = Fmp4HlsSettings.build(params[:fmp4_hls_settings], context: "#{context}[:fmp4_hls_settings]") unless params[:fmp4_hls_settings].nil?
        type.frame_capture_hls_settings = FrameCaptureHlsSettings.build(params[:frame_capture_hls_settings], context: "#{context}[:frame_capture_hls_settings]") unless params[:frame_capture_hls_settings].nil?
        type.standard_hls_settings = StandardHlsSettings.build(params[:standard_hls_settings], context: "#{context}[:standard_hls_settings]") unless params[:standard_hls_settings].nil?
        type
      end
    end

    module HlsTimedMetadataScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsTimedMetadataScheduleActionSettings, context: context)
        type = Types::HlsTimedMetadataScheduleActionSettings.new
        type.id3 = params[:id3]
        type
      end
    end

    module HlsWebdavSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsWebdavSettings, context: context)
        type = Types::HlsWebdavSettings.new
        type.connection_retry_interval = params[:connection_retry_interval]
        type.filecache_duration = params[:filecache_duration]
        type.http_transfer_mode = params[:http_transfer_mode]
        type.num_retries = params[:num_retries]
        type.restart_delay = params[:restart_delay]
        type
      end
    end

    module HtmlMotionGraphicsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HtmlMotionGraphicsSettings, context: context)
        type = Types::HtmlMotionGraphicsSettings.new
        type
      end
    end

    module ImmediateModeScheduleActionStartSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImmediateModeScheduleActionStartSettings, context: context)
        type = Types::ImmediateModeScheduleActionStartSettings.new
        type
      end
    end

    module Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Input, context: context)
        type = Types::Input.new
        type.arn = params[:arn]
        type.attached_channels = List____listOf__string.build(params[:attached_channels], context: "#{context}[:attached_channels]") unless params[:attached_channels].nil?
        type.destinations = List____listOfInputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.id = params[:id]
        type.input_class = params[:input_class]
        type.input_devices = List____listOfInputDeviceSettings.build(params[:input_devices], context: "#{context}[:input_devices]") unless params[:input_devices].nil?
        type.input_partner_ids = List____listOf__string.build(params[:input_partner_ids], context: "#{context}[:input_partner_ids]") unless params[:input_partner_ids].nil?
        type.input_source_type = params[:input_source_type]
        type.media_connect_flows = List____listOfMediaConnectFlow.build(params[:media_connect_flows], context: "#{context}[:media_connect_flows]") unless params[:media_connect_flows].nil?
        type.name = params[:name]
        type.role_arn = params[:role_arn]
        type.security_groups = List____listOf__string.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.sources = List____listOfInputSource.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type
      end
    end

    module InputAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputAttachment, context: context)
        type = Types::InputAttachment.new
        type.automatic_input_failover_settings = AutomaticInputFailoverSettings.build(params[:automatic_input_failover_settings], context: "#{context}[:automatic_input_failover_settings]") unless params[:automatic_input_failover_settings].nil?
        type.input_attachment_name = params[:input_attachment_name]
        type.input_id = params[:input_id]
        type.input_settings = InputSettings.build(params[:input_settings], context: "#{context}[:input_settings]") unless params[:input_settings].nil?
        type
      end
    end

    module InputChannelLevel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputChannelLevel, context: context)
        type = Types::InputChannelLevel.new
        type.gain = params[:gain]
        type.input_channel = params[:input_channel]
        type
      end
    end

    module InputClippingSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputClippingSettings, context: context)
        type = Types::InputClippingSettings.new
        type.input_timecode_source = params[:input_timecode_source]
        type.start_timecode = StartTimecode.build(params[:start_timecode], context: "#{context}[:start_timecode]") unless params[:start_timecode].nil?
        type.stop_timecode = StopTimecode.build(params[:stop_timecode], context: "#{context}[:stop_timecode]") unless params[:stop_timecode].nil?
        type
      end
    end

    module InputDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDestination, context: context)
        type = Types::InputDestination.new
        type.ip = params[:ip]
        type.port = params[:port]
        type.url = params[:url]
        type.vpc = InputDestinationVpc.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module InputDestinationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDestinationRequest, context: context)
        type = Types::InputDestinationRequest.new
        type.stream_name = params[:stream_name]
        type
      end
    end

    module InputDestinationVpc
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDestinationVpc, context: context)
        type = Types::InputDestinationVpc.new
        type.availability_zone = params[:availability_zone]
        type.network_interface_id = params[:network_interface_id]
        type
      end
    end

    module InputDeviceConfigurableSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDeviceConfigurableSettings, context: context)
        type = Types::InputDeviceConfigurableSettings.new
        type.configured_input = params[:configured_input]
        type.max_bitrate = params[:max_bitrate]
        type
      end
    end

    module InputDeviceHdSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDeviceHdSettings, context: context)
        type = Types::InputDeviceHdSettings.new
        type.active_input = params[:active_input]
        type.configured_input = params[:configured_input]
        type.device_state = params[:device_state]
        type.framerate = params[:framerate]
        type.height = params[:height]
        type.max_bitrate = params[:max_bitrate]
        type.scan_type = params[:scan_type]
        type.width = params[:width]
        type
      end
    end

    module InputDeviceNetworkSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDeviceNetworkSettings, context: context)
        type = Types::InputDeviceNetworkSettings.new
        type.dns_addresses = List____listOf__string.build(params[:dns_addresses], context: "#{context}[:dns_addresses]") unless params[:dns_addresses].nil?
        type.gateway = params[:gateway]
        type.ip_address = params[:ip_address]
        type.ip_scheme = params[:ip_scheme]
        type.subnet_mask = params[:subnet_mask]
        type
      end
    end

    module InputDeviceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDeviceRequest, context: context)
        type = Types::InputDeviceRequest.new
        type.id = params[:id]
        type
      end
    end

    module InputDeviceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDeviceSettings, context: context)
        type = Types::InputDeviceSettings.new
        type.id = params[:id]
        type
      end
    end

    module InputDeviceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDeviceSummary, context: context)
        type = Types::InputDeviceSummary.new
        type.arn = params[:arn]
        type.connection_state = params[:connection_state]
        type.device_settings_sync_state = params[:device_settings_sync_state]
        type.device_update_status = params[:device_update_status]
        type.hd_device_settings = InputDeviceHdSettings.build(params[:hd_device_settings], context: "#{context}[:hd_device_settings]") unless params[:hd_device_settings].nil?
        type.id = params[:id]
        type.mac_address = params[:mac_address]
        type.name = params[:name]
        type.network_settings = InputDeviceNetworkSettings.build(params[:network_settings], context: "#{context}[:network_settings]") unless params[:network_settings].nil?
        type.serial_number = params[:serial_number]
        type.type = params[:type]
        type.uhd_device_settings = InputDeviceUhdSettings.build(params[:uhd_device_settings], context: "#{context}[:uhd_device_settings]") unless params[:uhd_device_settings].nil?
        type
      end
    end

    module InputDeviceUhdSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDeviceUhdSettings, context: context)
        type = Types::InputDeviceUhdSettings.new
        type.active_input = params[:active_input]
        type.configured_input = params[:configured_input]
        type.device_state = params[:device_state]
        type.framerate = params[:framerate]
        type.height = params[:height]
        type.max_bitrate = params[:max_bitrate]
        type.scan_type = params[:scan_type]
        type.width = params[:width]
        type
      end
    end

    module InputLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputLocation, context: context)
        type = Types::InputLocation.new
        type.password_param = params[:password_param]
        type.uri = params[:uri]
        type.username = params[:username]
        type
      end
    end

    module InputLossBehavior
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputLossBehavior, context: context)
        type = Types::InputLossBehavior.new
        type.black_frame_msec = params[:black_frame_msec]
        type.input_loss_image_color = params[:input_loss_image_color]
        type.input_loss_image_slate = InputLocation.build(params[:input_loss_image_slate], context: "#{context}[:input_loss_image_slate]") unless params[:input_loss_image_slate].nil?
        type.input_loss_image_type = params[:input_loss_image_type]
        type.repeat_frame_msec = params[:repeat_frame_msec]
        type
      end
    end

    module InputLossFailoverSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputLossFailoverSettings, context: context)
        type = Types::InputLossFailoverSettings.new
        type.input_loss_threshold_msec = params[:input_loss_threshold_msec]
        type
      end
    end

    module InputPrepareScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputPrepareScheduleActionSettings, context: context)
        type = Types::InputPrepareScheduleActionSettings.new
        type.input_attachment_name_reference = params[:input_attachment_name_reference]
        type.input_clipping_settings = InputClippingSettings.build(params[:input_clipping_settings], context: "#{context}[:input_clipping_settings]") unless params[:input_clipping_settings].nil?
        type.url_path = List____listOf__string.build(params[:url_path], context: "#{context}[:url_path]") unless params[:url_path].nil?
        type
      end
    end

    module InputSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputSecurityGroup, context: context)
        type = Types::InputSecurityGroup.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.inputs = List____listOf__string.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.whitelist_rules = List____listOfInputWhitelistRule.build(params[:whitelist_rules], context: "#{context}[:whitelist_rules]") unless params[:whitelist_rules].nil?
        type
      end
    end

    module InputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputSettings, context: context)
        type = Types::InputSettings.new
        type.audio_selectors = List____listOfAudioSelector.build(params[:audio_selectors], context: "#{context}[:audio_selectors]") unless params[:audio_selectors].nil?
        type.caption_selectors = List____listOfCaptionSelector.build(params[:caption_selectors], context: "#{context}[:caption_selectors]") unless params[:caption_selectors].nil?
        type.deblock_filter = params[:deblock_filter]
        type.denoise_filter = params[:denoise_filter]
        type.filter_strength = params[:filter_strength]
        type.input_filter = params[:input_filter]
        type.network_input_settings = NetworkInputSettings.build(params[:network_input_settings], context: "#{context}[:network_input_settings]") unless params[:network_input_settings].nil?
        type.scte35_pid = params[:scte35_pid]
        type.smpte2038_data_preference = params[:smpte2038_data_preference]
        type.source_end_behavior = params[:source_end_behavior]
        type.video_selector = VideoSelector.build(params[:video_selector], context: "#{context}[:video_selector]") unless params[:video_selector].nil?
        type
      end
    end

    module InputSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputSource, context: context)
        type = Types::InputSource.new
        type.password_param = params[:password_param]
        type.url = params[:url]
        type.username = params[:username]
        type
      end
    end

    module InputSourceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputSourceRequest, context: context)
        type = Types::InputSourceRequest.new
        type.password_param = params[:password_param]
        type.url = params[:url]
        type.username = params[:username]
        type
      end
    end

    module InputSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputSpecification, context: context)
        type = Types::InputSpecification.new
        type.codec = params[:codec]
        type.maximum_bitrate = params[:maximum_bitrate]
        type.resolution = params[:resolution]
        type
      end
    end

    module InputSwitchScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputSwitchScheduleActionSettings, context: context)
        type = Types::InputSwitchScheduleActionSettings.new
        type.input_attachment_name_reference = params[:input_attachment_name_reference]
        type.input_clipping_settings = InputClippingSettings.build(params[:input_clipping_settings], context: "#{context}[:input_clipping_settings]") unless params[:input_clipping_settings].nil?
        type.url_path = List____listOf__string.build(params[:url_path], context: "#{context}[:url_path]") unless params[:url_path].nil?
        type
      end
    end

    module InputVpcRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputVpcRequest, context: context)
        type = Types::InputVpcRequest.new
        type.security_group_ids = List____listOf__string.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = List____listOf__string.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module InputWhitelistRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputWhitelistRule, context: context)
        type = Types::InputWhitelistRule.new
        type.cidr = params[:cidr]
        type
      end
    end

    module InputWhitelistRuleCidr
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputWhitelistRuleCidr, context: context)
        type = Types::InputWhitelistRuleCidr.new
        type.cidr = params[:cidr]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.message = params[:message]
        type
      end
    end

    module KeyProviderSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyProviderSettings, context: context)
        type = Types::KeyProviderSettings.new
        type.static_key_settings = StaticKeySettings.build(params[:static_key_settings], context: "#{context}[:static_key_settings]") unless params[:static_key_settings].nil?
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
        type.channels = List____listOfChannelSummary.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputDeviceTransfersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputDeviceTransfersInput, context: context)
        type = Types::ListInputDeviceTransfersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.transfer_type = params[:transfer_type]
        type
      end
    end

    module ListInputDeviceTransfersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputDeviceTransfersOutput, context: context)
        type = Types::ListInputDeviceTransfersOutput.new
        type.input_device_transfers = List____listOfTransferringInputDeviceSummary.build(params[:input_device_transfers], context: "#{context}[:input_device_transfers]") unless params[:input_device_transfers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputDevicesInput, context: context)
        type = Types::ListInputDevicesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputDevicesOutput, context: context)
        type = Types::ListInputDevicesOutput.new
        type.input_devices = List____listOfInputDeviceSummary.build(params[:input_devices], context: "#{context}[:input_devices]") unless params[:input_devices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputSecurityGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputSecurityGroupsInput, context: context)
        type = Types::ListInputSecurityGroupsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputSecurityGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputSecurityGroupsOutput, context: context)
        type = Types::ListInputSecurityGroupsOutput.new
        type.input_security_groups = List____listOfInputSecurityGroup.build(params[:input_security_groups], context: "#{context}[:input_security_groups]") unless params[:input_security_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputsInput, context: context)
        type = Types::ListInputsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputsOutput, context: context)
        type = Types::ListInputsOutput.new
        type.inputs = List____listOfInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMultiplexProgramsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMultiplexProgramsInput, context: context)
        type = Types::ListMultiplexProgramsInput.new
        type.max_results = params[:max_results]
        type.multiplex_id = params[:multiplex_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMultiplexProgramsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMultiplexProgramsOutput, context: context)
        type = Types::ListMultiplexProgramsOutput.new
        type.multiplex_programs = List____listOfMultiplexProgramSummary.build(params[:multiplex_programs], context: "#{context}[:multiplex_programs]") unless params[:multiplex_programs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMultiplexesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMultiplexesInput, context: context)
        type = Types::ListMultiplexesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMultiplexesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMultiplexesOutput, context: context)
        type = Types::ListMultiplexesOutput.new
        type.multiplexes = List____listOfMultiplexSummary.build(params[:multiplexes], context: "#{context}[:multiplexes]") unless params[:multiplexes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingsInput, context: context)
        type = Types::ListOfferingsInput.new
        type.channel_class = params[:channel_class]
        type.channel_configuration = params[:channel_configuration]
        type.codec = params[:codec]
        type.duration = params[:duration]
        type.max_results = params[:max_results]
        type.maximum_bitrate = params[:maximum_bitrate]
        type.maximum_framerate = params[:maximum_framerate]
        type.next_token = params[:next_token]
        type.resolution = params[:resolution]
        type.resource_type = params[:resource_type]
        type.special_feature = params[:special_feature]
        type.video_quality = params[:video_quality]
        type
      end
    end

    module ListOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingsOutput, context: context)
        type = Types::ListOfferingsOutput.new
        type.next_token = params[:next_token]
        type.offerings = List____listOfOffering.build(params[:offerings], context: "#{context}[:offerings]") unless params[:offerings].nil?
        type
      end
    end

    module ListReservationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReservationsInput, context: context)
        type = Types::ListReservationsInput.new
        type.channel_class = params[:channel_class]
        type.codec = params[:codec]
        type.max_results = params[:max_results]
        type.maximum_bitrate = params[:maximum_bitrate]
        type.maximum_framerate = params[:maximum_framerate]
        type.next_token = params[:next_token]
        type.resolution = params[:resolution]
        type.resource_type = params[:resource_type]
        type.special_feature = params[:special_feature]
        type.video_quality = params[:video_quality]
        type
      end
    end

    module ListReservationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReservationsOutput, context: context)
        type = Types::ListReservationsOutput.new
        type.next_token = params[:next_token]
        type.reservations = List____listOfReservation.build(params[:reservations], context: "#{context}[:reservations]") unless params[:reservations].nil?
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
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module M2tsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::M2tsSettings, context: context)
        type = Types::M2tsSettings.new
        type.absent_input_audio_behavior = params[:absent_input_audio_behavior]
        type.arib = params[:arib]
        type.arib_captions_pid = params[:arib_captions_pid]
        type.arib_captions_pid_control = params[:arib_captions_pid_control]
        type.audio_buffer_model = params[:audio_buffer_model]
        type.audio_frames_per_pes = params[:audio_frames_per_pes]
        type.audio_pids = params[:audio_pids]
        type.audio_stream_type = params[:audio_stream_type]
        type.bitrate = params[:bitrate]
        type.buffer_model = params[:buffer_model]
        type.cc_descriptor = params[:cc_descriptor]
        type.dvb_nit_settings = DvbNitSettings.build(params[:dvb_nit_settings], context: "#{context}[:dvb_nit_settings]") unless params[:dvb_nit_settings].nil?
        type.dvb_sdt_settings = DvbSdtSettings.build(params[:dvb_sdt_settings], context: "#{context}[:dvb_sdt_settings]") unless params[:dvb_sdt_settings].nil?
        type.dvb_sub_pids = params[:dvb_sub_pids]
        type.dvb_tdt_settings = DvbTdtSettings.build(params[:dvb_tdt_settings], context: "#{context}[:dvb_tdt_settings]") unless params[:dvb_tdt_settings].nil?
        type.dvb_teletext_pid = params[:dvb_teletext_pid]
        type.ebif = params[:ebif]
        type.ebp_audio_interval = params[:ebp_audio_interval]
        type.ebp_lookahead_ms = params[:ebp_lookahead_ms]
        type.ebp_placement = params[:ebp_placement]
        type.ecm_pid = params[:ecm_pid]
        type.es_rate_in_pes = params[:es_rate_in_pes]
        type.etv_platform_pid = params[:etv_platform_pid]
        type.etv_signal_pid = params[:etv_signal_pid]
        type.fragment_time = params[:fragment_time]
        type.klv = params[:klv]
        type.klv_data_pids = params[:klv_data_pids]
        type.nielsen_id3_behavior = params[:nielsen_id3_behavior]
        type.null_packet_bitrate = params[:null_packet_bitrate]
        type.pat_interval = params[:pat_interval]
        type.pcr_control = params[:pcr_control]
        type.pcr_period = params[:pcr_period]
        type.pcr_pid = params[:pcr_pid]
        type.pmt_interval = params[:pmt_interval]
        type.pmt_pid = params[:pmt_pid]
        type.program_num = params[:program_num]
        type.rate_mode = params[:rate_mode]
        type.scte27_pids = params[:scte27_pids]
        type.scte35_control = params[:scte35_control]
        type.scte35_pid = params[:scte35_pid]
        type.segmentation_markers = params[:segmentation_markers]
        type.segmentation_style = params[:segmentation_style]
        type.segmentation_time = params[:segmentation_time]
        type.timed_metadata_behavior = params[:timed_metadata_behavior]
        type.timed_metadata_pid = params[:timed_metadata_pid]
        type.transport_stream_id = params[:transport_stream_id]
        type.video_pid = params[:video_pid]
        type
      end
    end

    module M3u8Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::M3u8Settings, context: context)
        type = Types::M3u8Settings.new
        type.audio_frames_per_pes = params[:audio_frames_per_pes]
        type.audio_pids = params[:audio_pids]
        type.ecm_pid = params[:ecm_pid]
        type.nielsen_id3_behavior = params[:nielsen_id3_behavior]
        type.pat_interval = params[:pat_interval]
        type.pcr_control = params[:pcr_control]
        type.pcr_period = params[:pcr_period]
        type.pcr_pid = params[:pcr_pid]
        type.pmt_interval = params[:pmt_interval]
        type.pmt_pid = params[:pmt_pid]
        type.program_num = params[:program_num]
        type.scte35_behavior = params[:scte35_behavior]
        type.scte35_pid = params[:scte35_pid]
        type.timed_metadata_behavior = params[:timed_metadata_behavior]
        type.timed_metadata_pid = params[:timed_metadata_pid]
        type.transport_stream_id = params[:transport_stream_id]
        type.video_pid = params[:video_pid]
        type
      end
    end

    module MaintenanceCreateSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceCreateSettings, context: context)
        type = Types::MaintenanceCreateSettings.new
        type.maintenance_day = params[:maintenance_day]
        type.maintenance_start_time = params[:maintenance_start_time]
        type
      end
    end

    module MaintenanceStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceStatus, context: context)
        type = Types::MaintenanceStatus.new
        type.maintenance_day = params[:maintenance_day]
        type.maintenance_deadline = params[:maintenance_deadline]
        type.maintenance_scheduled_date = params[:maintenance_scheduled_date]
        type.maintenance_start_time = params[:maintenance_start_time]
        type
      end
    end

    module MaintenanceUpdateSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceUpdateSettings, context: context)
        type = Types::MaintenanceUpdateSettings.new
        type.maintenance_day = params[:maintenance_day]
        type.maintenance_scheduled_date = params[:maintenance_scheduled_date]
        type.maintenance_start_time = params[:maintenance_start_time]
        type
      end
    end

    module MediaConnectFlow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaConnectFlow, context: context)
        type = Types::MediaConnectFlow.new
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module MediaConnectFlowRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaConnectFlowRequest, context: context)
        type = Types::MediaConnectFlowRequest.new
        type.flow_arn = params[:flow_arn]
        type
      end
    end

    module MediaPackageGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaPackageGroupSettings, context: context)
        type = Types::MediaPackageGroupSettings.new
        type.destination = OutputLocationRef.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module MediaPackageOutputDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaPackageOutputDestinationSettings, context: context)
        type = Types::MediaPackageOutputDestinationSettings.new
        type.channel_id = params[:channel_id]
        type
      end
    end

    module MediaPackageOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaPackageOutputSettings, context: context)
        type = Types::MediaPackageOutputSettings.new
        type
      end
    end

    module MotionGraphicsActivateScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MotionGraphicsActivateScheduleActionSettings, context: context)
        type = Types::MotionGraphicsActivateScheduleActionSettings.new
        type.duration = params[:duration]
        type.password_param = params[:password_param]
        type.url = params[:url]
        type.username = params[:username]
        type
      end
    end

    module MotionGraphicsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MotionGraphicsConfiguration, context: context)
        type = Types::MotionGraphicsConfiguration.new
        type.motion_graphics_insertion = params[:motion_graphics_insertion]
        type.motion_graphics_settings = MotionGraphicsSettings.build(params[:motion_graphics_settings], context: "#{context}[:motion_graphics_settings]") unless params[:motion_graphics_settings].nil?
        type
      end
    end

    module MotionGraphicsDeactivateScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MotionGraphicsDeactivateScheduleActionSettings, context: context)
        type = Types::MotionGraphicsDeactivateScheduleActionSettings.new
        type
      end
    end

    module MotionGraphicsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MotionGraphicsSettings, context: context)
        type = Types::MotionGraphicsSettings.new
        type.html_motion_graphics_settings = HtmlMotionGraphicsSettings.build(params[:html_motion_graphics_settings], context: "#{context}[:html_motion_graphics_settings]") unless params[:html_motion_graphics_settings].nil?
        type
      end
    end

    module Mp2Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mp2Settings, context: context)
        type = Types::Mp2Settings.new
        type.bitrate = params[:bitrate]
        type.coding_mode = params[:coding_mode]
        type.sample_rate = params[:sample_rate]
        type
      end
    end

    module Mpeg2FilterSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mpeg2FilterSettings, context: context)
        type = Types::Mpeg2FilterSettings.new
        type.temporal_filter_settings = TemporalFilterSettings.build(params[:temporal_filter_settings], context: "#{context}[:temporal_filter_settings]") unless params[:temporal_filter_settings].nil?
        type
      end
    end

    module Mpeg2Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mpeg2Settings, context: context)
        type = Types::Mpeg2Settings.new
        type.adaptive_quantization = params[:adaptive_quantization]
        type.afd_signaling = params[:afd_signaling]
        type.color_metadata = params[:color_metadata]
        type.color_space = params[:color_space]
        type.display_aspect_ratio = params[:display_aspect_ratio]
        type.filter_settings = Mpeg2FilterSettings.build(params[:filter_settings], context: "#{context}[:filter_settings]") unless params[:filter_settings].nil?
        type.fixed_afd = params[:fixed_afd]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.gop_closed_cadence = params[:gop_closed_cadence]
        type.gop_num_b_frames = params[:gop_num_b_frames]
        type.gop_size = params[:gop_size]
        type.gop_size_units = params[:gop_size_units]
        type.scan_type = params[:scan_type]
        type.subgop_length = params[:subgop_length]
        type.timecode_insertion = params[:timecode_insertion]
        type
      end
    end

    module MsSmoothGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MsSmoothGroupSettings, context: context)
        type = Types::MsSmoothGroupSettings.new
        type.acquisition_point_id = params[:acquisition_point_id]
        type.audio_only_timecode_control = params[:audio_only_timecode_control]
        type.certificate_mode = params[:certificate_mode]
        type.connection_retry_interval = params[:connection_retry_interval]
        type.destination = OutputLocationRef.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.event_id = params[:event_id]
        type.event_id_mode = params[:event_id_mode]
        type.event_stop_behavior = params[:event_stop_behavior]
        type.filecache_duration = params[:filecache_duration]
        type.fragment_length = params[:fragment_length]
        type.input_loss_action = params[:input_loss_action]
        type.num_retries = params[:num_retries]
        type.restart_delay = params[:restart_delay]
        type.segmentation_mode = params[:segmentation_mode]
        type.send_delay_ms = params[:send_delay_ms]
        type.sparse_track_type = params[:sparse_track_type]
        type.stream_manifest_behavior = params[:stream_manifest_behavior]
        type.timestamp_offset = params[:timestamp_offset]
        type.timestamp_offset_mode = params[:timestamp_offset_mode]
        type
      end
    end

    module MsSmoothOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MsSmoothOutputSettings, context: context)
        type = Types::MsSmoothOutputSettings.new
        type.h265_packaging_type = params[:h265_packaging_type]
        type.name_modifier = params[:name_modifier]
        type
      end
    end

    module Multiplex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Multiplex, context: context)
        type = Types::Multiplex.new
        type.arn = params[:arn]
        type.availability_zones = List____listOf__string.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.destinations = List____listOfMultiplexOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.id = params[:id]
        type.multiplex_settings = MultiplexSettings.build(params[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless params[:multiplex_settings].nil?
        type.name = params[:name]
        type.pipelines_running_count = params[:pipelines_running_count]
        type.program_count = params[:program_count]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MultiplexGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexGroupSettings, context: context)
        type = Types::MultiplexGroupSettings.new
        type
      end
    end

    module MultiplexMediaConnectOutputDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexMediaConnectOutputDestinationSettings, context: context)
        type = Types::MultiplexMediaConnectOutputDestinationSettings.new
        type.entitlement_arn = params[:entitlement_arn]
        type
      end
    end

    module MultiplexOutputDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexOutputDestination, context: context)
        type = Types::MultiplexOutputDestination.new
        type.media_connect_settings = MultiplexMediaConnectOutputDestinationSettings.build(params[:media_connect_settings], context: "#{context}[:media_connect_settings]") unless params[:media_connect_settings].nil?
        type
      end
    end

    module MultiplexOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexOutputSettings, context: context)
        type = Types::MultiplexOutputSettings.new
        type.destination = OutputLocationRef.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module MultiplexProgram
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexProgram, context: context)
        type = Types::MultiplexProgram.new
        type.channel_id = params[:channel_id]
        type.multiplex_program_settings = MultiplexProgramSettings.build(params[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless params[:multiplex_program_settings].nil?
        type.packet_identifiers_map = MultiplexProgramPacketIdentifiersMap.build(params[:packet_identifiers_map], context: "#{context}[:packet_identifiers_map]") unless params[:packet_identifiers_map].nil?
        type.pipeline_details = List____listOfMultiplexProgramPipelineDetail.build(params[:pipeline_details], context: "#{context}[:pipeline_details]") unless params[:pipeline_details].nil?
        type.program_name = params[:program_name]
        type
      end
    end

    module MultiplexProgramChannelDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexProgramChannelDestinationSettings, context: context)
        type = Types::MultiplexProgramChannelDestinationSettings.new
        type.multiplex_id = params[:multiplex_id]
        type.program_name = params[:program_name]
        type
      end
    end

    module MultiplexProgramPacketIdentifiersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexProgramPacketIdentifiersMap, context: context)
        type = Types::MultiplexProgramPacketIdentifiersMap.new
        type.audio_pids = List____listOf__integer.build(params[:audio_pids], context: "#{context}[:audio_pids]") unless params[:audio_pids].nil?
        type.dvb_sub_pids = List____listOf__integer.build(params[:dvb_sub_pids], context: "#{context}[:dvb_sub_pids]") unless params[:dvb_sub_pids].nil?
        type.dvb_teletext_pid = params[:dvb_teletext_pid]
        type.etv_platform_pid = params[:etv_platform_pid]
        type.etv_signal_pid = params[:etv_signal_pid]
        type.klv_data_pids = List____listOf__integer.build(params[:klv_data_pids], context: "#{context}[:klv_data_pids]") unless params[:klv_data_pids].nil?
        type.pcr_pid = params[:pcr_pid]
        type.pmt_pid = params[:pmt_pid]
        type.private_metadata_pid = params[:private_metadata_pid]
        type.scte27_pids = List____listOf__integer.build(params[:scte27_pids], context: "#{context}[:scte27_pids]") unless params[:scte27_pids].nil?
        type.scte35_pid = params[:scte35_pid]
        type.timed_metadata_pid = params[:timed_metadata_pid]
        type.video_pid = params[:video_pid]
        type
      end
    end

    module MultiplexProgramPipelineDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexProgramPipelineDetail, context: context)
        type = Types::MultiplexProgramPipelineDetail.new
        type.active_channel_pipeline = params[:active_channel_pipeline]
        type.pipeline_id = params[:pipeline_id]
        type
      end
    end

    module MultiplexProgramServiceDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexProgramServiceDescriptor, context: context)
        type = Types::MultiplexProgramServiceDescriptor.new
        type.provider_name = params[:provider_name]
        type.service_name = params[:service_name]
        type
      end
    end

    module MultiplexProgramSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexProgramSettings, context: context)
        type = Types::MultiplexProgramSettings.new
        type.preferred_channel_pipeline = params[:preferred_channel_pipeline]
        type.program_number = params[:program_number]
        type.service_descriptor = MultiplexProgramServiceDescriptor.build(params[:service_descriptor], context: "#{context}[:service_descriptor]") unless params[:service_descriptor].nil?
        type.video_settings = MultiplexVideoSettings.build(params[:video_settings], context: "#{context}[:video_settings]") unless params[:video_settings].nil?
        type
      end
    end

    module MultiplexProgramSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexProgramSummary, context: context)
        type = Types::MultiplexProgramSummary.new
        type.channel_id = params[:channel_id]
        type.program_name = params[:program_name]
        type
      end
    end

    module MultiplexSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexSettings, context: context)
        type = Types::MultiplexSettings.new
        type.maximum_video_buffer_delay_milliseconds = params[:maximum_video_buffer_delay_milliseconds]
        type.transport_stream_bitrate = params[:transport_stream_bitrate]
        type.transport_stream_id = params[:transport_stream_id]
        type.transport_stream_reserved_bitrate = params[:transport_stream_reserved_bitrate]
        type
      end
    end

    module MultiplexSettingsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexSettingsSummary, context: context)
        type = Types::MultiplexSettingsSummary.new
        type.transport_stream_bitrate = params[:transport_stream_bitrate]
        type
      end
    end

    module MultiplexStatmuxVideoSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexStatmuxVideoSettings, context: context)
        type = Types::MultiplexStatmuxVideoSettings.new
        type.maximum_bitrate = params[:maximum_bitrate]
        type.minimum_bitrate = params[:minimum_bitrate]
        type.priority = params[:priority]
        type
      end
    end

    module MultiplexSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexSummary, context: context)
        type = Types::MultiplexSummary.new
        type.arn = params[:arn]
        type.availability_zones = List____listOf__string.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.id = params[:id]
        type.multiplex_settings = MultiplexSettingsSummary.build(params[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless params[:multiplex_settings].nil?
        type.name = params[:name]
        type.pipelines_running_count = params[:pipelines_running_count]
        type.program_count = params[:program_count]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MultiplexVideoSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiplexVideoSettings, context: context)
        type = Types::MultiplexVideoSettings.new
        type.constant_bitrate = params[:constant_bitrate]
        type.statmux_settings = MultiplexStatmuxVideoSettings.build(params[:statmux_settings], context: "#{context}[:statmux_settings]") unless params[:statmux_settings].nil?
        type
      end
    end

    module NetworkInputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInputSettings, context: context)
        type = Types::NetworkInputSettings.new
        type.hls_input_settings = HlsInputSettings.build(params[:hls_input_settings], context: "#{context}[:hls_input_settings]") unless params[:hls_input_settings].nil?
        type.server_validation = params[:server_validation]
        type
      end
    end

    module NielsenCBET
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NielsenCBET, context: context)
        type = Types::NielsenCBET.new
        type.cbet_check_digit_string = params[:cbet_check_digit_string]
        type.cbet_stepaside = params[:cbet_stepaside]
        type.csid = params[:csid]
        type
      end
    end

    module NielsenConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NielsenConfiguration, context: context)
        type = Types::NielsenConfiguration.new
        type.distributor_id = params[:distributor_id]
        type.nielsen_pcm_to_id3_tagging = params[:nielsen_pcm_to_id3_tagging]
        type
      end
    end

    module NielsenNaesIiNw
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NielsenNaesIiNw, context: context)
        type = Types::NielsenNaesIiNw.new
        type.check_digit_string = params[:check_digit_string]
        type.sid = params[:sid]
        type
      end
    end

    module NielsenWatermarksSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NielsenWatermarksSettings, context: context)
        type = Types::NielsenWatermarksSettings.new
        type.nielsen_cbet_settings = NielsenCBET.build(params[:nielsen_cbet_settings], context: "#{context}[:nielsen_cbet_settings]") unless params[:nielsen_cbet_settings].nil?
        type.nielsen_distribution_type = params[:nielsen_distribution_type]
        type.nielsen_naes_ii_nw_settings = NielsenNaesIiNw.build(params[:nielsen_naes_ii_nw_settings], context: "#{context}[:nielsen_naes_ii_nw_settings]") unless params[:nielsen_naes_ii_nw_settings].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Offering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Offering, context: context)
        type = Types::Offering.new
        type.arn = params[:arn]
        type.currency_code = params[:currency_code]
        type.duration = params[:duration]
        type.duration_units = params[:duration_units]
        type.fixed_price = params[:fixed_price]
        type.offering_description = params[:offering_description]
        type.offering_id = params[:offering_id]
        type.offering_type = params[:offering_type]
        type.region = params[:region]
        type.resource_specification = ReservationResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.usage_price = params[:usage_price]
        type
      end
    end

    module Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Output, context: context)
        type = Types::Output.new
        type.audio_description_names = List____listOf__string.build(params[:audio_description_names], context: "#{context}[:audio_description_names]") unless params[:audio_description_names].nil?
        type.caption_description_names = List____listOf__string.build(params[:caption_description_names], context: "#{context}[:caption_description_names]") unless params[:caption_description_names].nil?
        type.output_name = params[:output_name]
        type.output_settings = OutputSettings.build(params[:output_settings], context: "#{context}[:output_settings]") unless params[:output_settings].nil?
        type.video_description_name = params[:video_description_name]
        type
      end
    end

    module OutputDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDestination, context: context)
        type = Types::OutputDestination.new
        type.id = params[:id]
        type.media_package_settings = List____listOfMediaPackageOutputDestinationSettings.build(params[:media_package_settings], context: "#{context}[:media_package_settings]") unless params[:media_package_settings].nil?
        type.multiplex_settings = MultiplexProgramChannelDestinationSettings.build(params[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless params[:multiplex_settings].nil?
        type.settings = List____listOfOutputDestinationSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module OutputDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDestinationSettings, context: context)
        type = Types::OutputDestinationSettings.new
        type.password_param = params[:password_param]
        type.stream_name = params[:stream_name]
        type.url = params[:url]
        type.username = params[:username]
        type
      end
    end

    module OutputGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputGroup, context: context)
        type = Types::OutputGroup.new
        type.name = params[:name]
        type.output_group_settings = OutputGroupSettings.build(params[:output_group_settings], context: "#{context}[:output_group_settings]") unless params[:output_group_settings].nil?
        type.outputs = List____listOfOutput.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module OutputGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputGroupSettings, context: context)
        type = Types::OutputGroupSettings.new
        type.archive_group_settings = ArchiveGroupSettings.build(params[:archive_group_settings], context: "#{context}[:archive_group_settings]") unless params[:archive_group_settings].nil?
        type.frame_capture_group_settings = FrameCaptureGroupSettings.build(params[:frame_capture_group_settings], context: "#{context}[:frame_capture_group_settings]") unless params[:frame_capture_group_settings].nil?
        type.hls_group_settings = HlsGroupSettings.build(params[:hls_group_settings], context: "#{context}[:hls_group_settings]") unless params[:hls_group_settings].nil?
        type.media_package_group_settings = MediaPackageGroupSettings.build(params[:media_package_group_settings], context: "#{context}[:media_package_group_settings]") unless params[:media_package_group_settings].nil?
        type.ms_smooth_group_settings = MsSmoothGroupSettings.build(params[:ms_smooth_group_settings], context: "#{context}[:ms_smooth_group_settings]") unless params[:ms_smooth_group_settings].nil?
        type.multiplex_group_settings = MultiplexGroupSettings.build(params[:multiplex_group_settings], context: "#{context}[:multiplex_group_settings]") unless params[:multiplex_group_settings].nil?
        type.rtmp_group_settings = RtmpGroupSettings.build(params[:rtmp_group_settings], context: "#{context}[:rtmp_group_settings]") unless params[:rtmp_group_settings].nil?
        type.udp_group_settings = UdpGroupSettings.build(params[:udp_group_settings], context: "#{context}[:udp_group_settings]") unless params[:udp_group_settings].nil?
        type
      end
    end

    module OutputLocationRef
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputLocationRef, context: context)
        type = Types::OutputLocationRef.new
        type.destination_ref_id = params[:destination_ref_id]
        type
      end
    end

    module OutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputSettings, context: context)
        type = Types::OutputSettings.new
        type.archive_output_settings = ArchiveOutputSettings.build(params[:archive_output_settings], context: "#{context}[:archive_output_settings]") unless params[:archive_output_settings].nil?
        type.frame_capture_output_settings = FrameCaptureOutputSettings.build(params[:frame_capture_output_settings], context: "#{context}[:frame_capture_output_settings]") unless params[:frame_capture_output_settings].nil?
        type.hls_output_settings = HlsOutputSettings.build(params[:hls_output_settings], context: "#{context}[:hls_output_settings]") unless params[:hls_output_settings].nil?
        type.media_package_output_settings = MediaPackageOutputSettings.build(params[:media_package_output_settings], context: "#{context}[:media_package_output_settings]") unless params[:media_package_output_settings].nil?
        type.ms_smooth_output_settings = MsSmoothOutputSettings.build(params[:ms_smooth_output_settings], context: "#{context}[:ms_smooth_output_settings]") unless params[:ms_smooth_output_settings].nil?
        type.multiplex_output_settings = MultiplexOutputSettings.build(params[:multiplex_output_settings], context: "#{context}[:multiplex_output_settings]") unless params[:multiplex_output_settings].nil?
        type.rtmp_output_settings = RtmpOutputSettings.build(params[:rtmp_output_settings], context: "#{context}[:rtmp_output_settings]") unless params[:rtmp_output_settings].nil?
        type.udp_output_settings = UdpOutputSettings.build(params[:udp_output_settings], context: "#{context}[:udp_output_settings]") unless params[:udp_output_settings].nil?
        type
      end
    end

    module PassThroughSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PassThroughSettings, context: context)
        type = Types::PassThroughSettings.new
        type
      end
    end

    module PauseStateScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PauseStateScheduleActionSettings, context: context)
        type = Types::PauseStateScheduleActionSettings.new
        type.pipelines = List____listOfPipelinePauseStateSettings.build(params[:pipelines], context: "#{context}[:pipelines]") unless params[:pipelines].nil?
        type
      end
    end

    module PipelineDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineDetail, context: context)
        type = Types::PipelineDetail.new
        type.active_input_attachment_name = params[:active_input_attachment_name]
        type.active_input_switch_action_name = params[:active_input_switch_action_name]
        type.active_motion_graphics_action_name = params[:active_motion_graphics_action_name]
        type.active_motion_graphics_uri = params[:active_motion_graphics_uri]
        type.pipeline_id = params[:pipeline_id]
        type
      end
    end

    module PipelinePauseStateSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelinePauseStateSettings, context: context)
        type = Types::PipelinePauseStateSettings.new
        type.pipeline_id = params[:pipeline_id]
        type
      end
    end

    module PurchaseOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseOfferingInput, context: context)
        type = Types::PurchaseOfferingInput.new
        type.count = params[:count]
        type.name = params[:name]
        type.offering_id = params[:offering_id]
        type.request_id = params[:request_id] || SecureRandom.uuid
        type.start = params[:start]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PurchaseOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseOfferingOutput, context: context)
        type = Types::PurchaseOfferingOutput.new
        type.reservation = Reservation.build(params[:reservation], context: "#{context}[:reservation]") unless params[:reservation].nil?
        type
      end
    end

    module RawSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RawSettings, context: context)
        type = Types::RawSettings.new
        type
      end
    end

    module Rec601Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rec601Settings, context: context)
        type = Types::Rec601Settings.new
        type
      end
    end

    module Rec709Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rec709Settings, context: context)
        type = Types::Rec709Settings.new
        type
      end
    end

    module RejectInputDeviceTransferInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectInputDeviceTransferInput, context: context)
        type = Types::RejectInputDeviceTransferInput.new
        type.input_device_id = params[:input_device_id]
        type
      end
    end

    module RejectInputDeviceTransferOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectInputDeviceTransferOutput, context: context)
        type = Types::RejectInputDeviceTransferOutput.new
        type
      end
    end

    module RemixSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemixSettings, context: context)
        type = Types::RemixSettings.new
        type.channel_mappings = List____listOfAudioChannelMapping.build(params[:channel_mappings], context: "#{context}[:channel_mappings]") unless params[:channel_mappings].nil?
        type.channels_in = params[:channels_in]
        type.channels_out = params[:channels_out]
        type
      end
    end

    module Reservation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Reservation, context: context)
        type = Types::Reservation.new
        type.arn = params[:arn]
        type.count = params[:count]
        type.currency_code = params[:currency_code]
        type.duration = params[:duration]
        type.duration_units = params[:duration_units]
        type.end = params[:end]
        type.fixed_price = params[:fixed_price]
        type.name = params[:name]
        type.offering_description = params[:offering_description]
        type.offering_id = params[:offering_id]
        type.offering_type = params[:offering_type]
        type.region = params[:region]
        type.reservation_id = params[:reservation_id]
        type.resource_specification = ReservationResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.start = params[:start]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.usage_price = params[:usage_price]
        type
      end
    end

    module ReservationResourceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationResourceSpecification, context: context)
        type = Types::ReservationResourceSpecification.new
        type.channel_class = params[:channel_class]
        type.codec = params[:codec]
        type.maximum_bitrate = params[:maximum_bitrate]
        type.maximum_framerate = params[:maximum_framerate]
        type.resolution = params[:resolution]
        type.resource_type = params[:resource_type]
        type.special_feature = params[:special_feature]
        type.video_quality = params[:video_quality]
        type
      end
    end

    module RtmpCaptionInfoDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RtmpCaptionInfoDestinationSettings, context: context)
        type = Types::RtmpCaptionInfoDestinationSettings.new
        type
      end
    end

    module RtmpGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RtmpGroupSettings, context: context)
        type = Types::RtmpGroupSettings.new
        type.ad_markers = List____listOfRtmpAdMarkers.build(params[:ad_markers], context: "#{context}[:ad_markers]") unless params[:ad_markers].nil?
        type.authentication_scheme = params[:authentication_scheme]
        type.cache_full_behavior = params[:cache_full_behavior]
        type.cache_length = params[:cache_length]
        type.caption_data = params[:caption_data]
        type.input_loss_action = params[:input_loss_action]
        type.restart_delay = params[:restart_delay]
        type
      end
    end

    module RtmpOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RtmpOutputSettings, context: context)
        type = Types::RtmpOutputSettings.new
        type.certificate_mode = params[:certificate_mode]
        type.connection_retry_interval = params[:connection_retry_interval]
        type.destination = OutputLocationRef.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.num_retries = params[:num_retries]
        type
      end
    end

    module ScheduleAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleAction, context: context)
        type = Types::ScheduleAction.new
        type.action_name = params[:action_name]
        type.schedule_action_settings = ScheduleActionSettings.build(params[:schedule_action_settings], context: "#{context}[:schedule_action_settings]") unless params[:schedule_action_settings].nil?
        type.schedule_action_start_settings = ScheduleActionStartSettings.build(params[:schedule_action_start_settings], context: "#{context}[:schedule_action_start_settings]") unless params[:schedule_action_start_settings].nil?
        type
      end
    end

    module ScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleActionSettings, context: context)
        type = Types::ScheduleActionSettings.new
        type.hls_id3_segment_tagging_settings = HlsId3SegmentTaggingScheduleActionSettings.build(params[:hls_id3_segment_tagging_settings], context: "#{context}[:hls_id3_segment_tagging_settings]") unless params[:hls_id3_segment_tagging_settings].nil?
        type.hls_timed_metadata_settings = HlsTimedMetadataScheduleActionSettings.build(params[:hls_timed_metadata_settings], context: "#{context}[:hls_timed_metadata_settings]") unless params[:hls_timed_metadata_settings].nil?
        type.input_prepare_settings = InputPrepareScheduleActionSettings.build(params[:input_prepare_settings], context: "#{context}[:input_prepare_settings]") unless params[:input_prepare_settings].nil?
        type.input_switch_settings = InputSwitchScheduleActionSettings.build(params[:input_switch_settings], context: "#{context}[:input_switch_settings]") unless params[:input_switch_settings].nil?
        type.motion_graphics_image_activate_settings = MotionGraphicsActivateScheduleActionSettings.build(params[:motion_graphics_image_activate_settings], context: "#{context}[:motion_graphics_image_activate_settings]") unless params[:motion_graphics_image_activate_settings].nil?
        type.motion_graphics_image_deactivate_settings = MotionGraphicsDeactivateScheduleActionSettings.build(params[:motion_graphics_image_deactivate_settings], context: "#{context}[:motion_graphics_image_deactivate_settings]") unless params[:motion_graphics_image_deactivate_settings].nil?
        type.pause_state_settings = PauseStateScheduleActionSettings.build(params[:pause_state_settings], context: "#{context}[:pause_state_settings]") unless params[:pause_state_settings].nil?
        type.scte35_return_to_network_settings = Scte35ReturnToNetworkScheduleActionSettings.build(params[:scte35_return_to_network_settings], context: "#{context}[:scte35_return_to_network_settings]") unless params[:scte35_return_to_network_settings].nil?
        type.scte35_splice_insert_settings = Scte35SpliceInsertScheduleActionSettings.build(params[:scte35_splice_insert_settings], context: "#{context}[:scte35_splice_insert_settings]") unless params[:scte35_splice_insert_settings].nil?
        type.scte35_time_signal_settings = Scte35TimeSignalScheduleActionSettings.build(params[:scte35_time_signal_settings], context: "#{context}[:scte35_time_signal_settings]") unless params[:scte35_time_signal_settings].nil?
        type.static_image_activate_settings = StaticImageActivateScheduleActionSettings.build(params[:static_image_activate_settings], context: "#{context}[:static_image_activate_settings]") unless params[:static_image_activate_settings].nil?
        type.static_image_deactivate_settings = StaticImageDeactivateScheduleActionSettings.build(params[:static_image_deactivate_settings], context: "#{context}[:static_image_deactivate_settings]") unless params[:static_image_deactivate_settings].nil?
        type
      end
    end

    module ScheduleActionStartSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleActionStartSettings, context: context)
        type = Types::ScheduleActionStartSettings.new
        type.fixed_mode_schedule_action_start_settings = FixedModeScheduleActionStartSettings.build(params[:fixed_mode_schedule_action_start_settings], context: "#{context}[:fixed_mode_schedule_action_start_settings]") unless params[:fixed_mode_schedule_action_start_settings].nil?
        type.follow_mode_schedule_action_start_settings = FollowModeScheduleActionStartSettings.build(params[:follow_mode_schedule_action_start_settings], context: "#{context}[:follow_mode_schedule_action_start_settings]") unless params[:follow_mode_schedule_action_start_settings].nil?
        type.immediate_mode_schedule_action_start_settings = ImmediateModeScheduleActionStartSettings.build(params[:immediate_mode_schedule_action_start_settings], context: "#{context}[:immediate_mode_schedule_action_start_settings]") unless params[:immediate_mode_schedule_action_start_settings].nil?
        type
      end
    end

    module Scte20PlusEmbeddedDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte20PlusEmbeddedDestinationSettings, context: context)
        type = Types::Scte20PlusEmbeddedDestinationSettings.new
        type
      end
    end

    module Scte20SourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte20SourceSettings, context: context)
        type = Types::Scte20SourceSettings.new
        type.convert608_to708 = params[:convert608_to708]
        type.source608_channel_number = params[:source608_channel_number]
        type
      end
    end

    module Scte27DestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte27DestinationSettings, context: context)
        type = Types::Scte27DestinationSettings.new
        type
      end
    end

    module Scte27SourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte27SourceSettings, context: context)
        type = Types::Scte27SourceSettings.new
        type.ocr_language = params[:ocr_language]
        type.pid = params[:pid]
        type
      end
    end

    module Scte35DeliveryRestrictions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte35DeliveryRestrictions, context: context)
        type = Types::Scte35DeliveryRestrictions.new
        type.archive_allowed_flag = params[:archive_allowed_flag]
        type.device_restrictions = params[:device_restrictions]
        type.no_regional_blackout_flag = params[:no_regional_blackout_flag]
        type.web_delivery_allowed_flag = params[:web_delivery_allowed_flag]
        type
      end
    end

    module Scte35Descriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte35Descriptor, context: context)
        type = Types::Scte35Descriptor.new
        type.scte35_descriptor_settings = Scte35DescriptorSettings.build(params[:scte35_descriptor_settings], context: "#{context}[:scte35_descriptor_settings]") unless params[:scte35_descriptor_settings].nil?
        type
      end
    end

    module Scte35DescriptorSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte35DescriptorSettings, context: context)
        type = Types::Scte35DescriptorSettings.new
        type.segmentation_descriptor_scte35_descriptor_settings = Scte35SegmentationDescriptor.build(params[:segmentation_descriptor_scte35_descriptor_settings], context: "#{context}[:segmentation_descriptor_scte35_descriptor_settings]") unless params[:segmentation_descriptor_scte35_descriptor_settings].nil?
        type
      end
    end

    module Scte35ReturnToNetworkScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte35ReturnToNetworkScheduleActionSettings, context: context)
        type = Types::Scte35ReturnToNetworkScheduleActionSettings.new
        type.splice_event_id = params[:splice_event_id]
        type
      end
    end

    module Scte35SegmentationDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte35SegmentationDescriptor, context: context)
        type = Types::Scte35SegmentationDescriptor.new
        type.delivery_restrictions = Scte35DeliveryRestrictions.build(params[:delivery_restrictions], context: "#{context}[:delivery_restrictions]") unless params[:delivery_restrictions].nil?
        type.segment_num = params[:segment_num]
        type.segmentation_cancel_indicator = params[:segmentation_cancel_indicator]
        type.segmentation_duration = params[:segmentation_duration]
        type.segmentation_event_id = params[:segmentation_event_id]
        type.segmentation_type_id = params[:segmentation_type_id]
        type.segmentation_upid = params[:segmentation_upid]
        type.segmentation_upid_type = params[:segmentation_upid_type]
        type.segments_expected = params[:segments_expected]
        type.sub_segment_num = params[:sub_segment_num]
        type.sub_segments_expected = params[:sub_segments_expected]
        type
      end
    end

    module Scte35SpliceInsert
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte35SpliceInsert, context: context)
        type = Types::Scte35SpliceInsert.new
        type.ad_avail_offset = params[:ad_avail_offset]
        type.no_regional_blackout_flag = params[:no_regional_blackout_flag]
        type.web_delivery_allowed_flag = params[:web_delivery_allowed_flag]
        type
      end
    end

    module Scte35SpliceInsertScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte35SpliceInsertScheduleActionSettings, context: context)
        type = Types::Scte35SpliceInsertScheduleActionSettings.new
        type.duration = params[:duration]
        type.splice_event_id = params[:splice_event_id]
        type
      end
    end

    module Scte35TimeSignalApos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte35TimeSignalApos, context: context)
        type = Types::Scte35TimeSignalApos.new
        type.ad_avail_offset = params[:ad_avail_offset]
        type.no_regional_blackout_flag = params[:no_regional_blackout_flag]
        type.web_delivery_allowed_flag = params[:web_delivery_allowed_flag]
        type
      end
    end

    module Scte35TimeSignalScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scte35TimeSignalScheduleActionSettings, context: context)
        type = Types::Scte35TimeSignalScheduleActionSettings.new
        type.scte35_descriptors = List____listOfScte35Descriptor.build(params[:scte35_descriptors], context: "#{context}[:scte35_descriptors]") unless params[:scte35_descriptors].nil?
        type
      end
    end

    module SmpteTtDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SmpteTtDestinationSettings, context: context)
        type = Types::SmpteTtDestinationSettings.new
        type
      end
    end

    module StandardHlsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StandardHlsSettings, context: context)
        type = Types::StandardHlsSettings.new
        type.audio_rendition_sets = params[:audio_rendition_sets]
        type.m3u8_settings = M3u8Settings.build(params[:m3u8_settings], context: "#{context}[:m3u8_settings]") unless params[:m3u8_settings].nil?
        type
      end
    end

    module StartChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChannelInput, context: context)
        type = Types::StartChannelInput.new
        type.channel_id = params[:channel_id]
        type
      end
    end

    module StartChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChannelOutput, context: context)
        type = Types::StartChannelOutput.new
        type.arn = params[:arn]
        type.cdi_input_specification = CdiInputSpecification.build(params[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless params[:cdi_input_specification].nil?
        type.channel_class = params[:channel_class]
        type.destinations = List____listOfOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.egress_endpoints = List____listOfChannelEgressEndpoint.build(params[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless params[:egress_endpoints].nil?
        type.encoder_settings = EncoderSettings.build(params[:encoder_settings], context: "#{context}[:encoder_settings]") unless params[:encoder_settings].nil?
        type.id = params[:id]
        type.input_attachments = List____listOfInputAttachment.build(params[:input_attachments], context: "#{context}[:input_attachments]") unless params[:input_attachments].nil?
        type.input_specification = InputSpecification.build(params[:input_specification], context: "#{context}[:input_specification]") unless params[:input_specification].nil?
        type.log_level = params[:log_level]
        type.maintenance = MaintenanceStatus.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type.name = params[:name]
        type.pipeline_details = List____listOfPipelineDetail.build(params[:pipeline_details], context: "#{context}[:pipeline_details]") unless params[:pipeline_details].nil?
        type.pipelines_running_count = params[:pipelines_running_count]
        type.role_arn = params[:role_arn]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc = VpcOutputSettingsDescription.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module StartMultiplexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMultiplexInput, context: context)
        type = Types::StartMultiplexInput.new
        type.multiplex_id = params[:multiplex_id]
        type
      end
    end

    module StartMultiplexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMultiplexOutput, context: context)
        type = Types::StartMultiplexOutput.new
        type.arn = params[:arn]
        type.availability_zones = List____listOf__string.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.destinations = List____listOfMultiplexOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.id = params[:id]
        type.multiplex_settings = MultiplexSettings.build(params[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless params[:multiplex_settings].nil?
        type.name = params[:name]
        type.pipelines_running_count = params[:pipelines_running_count]
        type.program_count = params[:program_count]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartTimecode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTimecode, context: context)
        type = Types::StartTimecode.new
        type.timecode = params[:timecode]
        type
      end
    end

    module StaticImageActivateScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaticImageActivateScheduleActionSettings, context: context)
        type = Types::StaticImageActivateScheduleActionSettings.new
        type.duration = params[:duration]
        type.fade_in = params[:fade_in]
        type.fade_out = params[:fade_out]
        type.height = params[:height]
        type.image = InputLocation.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.image_x = params[:image_x]
        type.image_y = params[:image_y]
        type.layer = params[:layer]
        type.opacity = params[:opacity]
        type.width = params[:width]
        type
      end
    end

    module StaticImageDeactivateScheduleActionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaticImageDeactivateScheduleActionSettings, context: context)
        type = Types::StaticImageDeactivateScheduleActionSettings.new
        type.fade_out = params[:fade_out]
        type.layer = params[:layer]
        type
      end
    end

    module StaticKeySettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaticKeySettings, context: context)
        type = Types::StaticKeySettings.new
        type.key_provider_server = InputLocation.build(params[:key_provider_server], context: "#{context}[:key_provider_server]") unless params[:key_provider_server].nil?
        type.static_key_value = params[:static_key_value]
        type
      end
    end

    module StopChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopChannelInput, context: context)
        type = Types::StopChannelInput.new
        type.channel_id = params[:channel_id]
        type
      end
    end

    module StopChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopChannelOutput, context: context)
        type = Types::StopChannelOutput.new
        type.arn = params[:arn]
        type.cdi_input_specification = CdiInputSpecification.build(params[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless params[:cdi_input_specification].nil?
        type.channel_class = params[:channel_class]
        type.destinations = List____listOfOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.egress_endpoints = List____listOfChannelEgressEndpoint.build(params[:egress_endpoints], context: "#{context}[:egress_endpoints]") unless params[:egress_endpoints].nil?
        type.encoder_settings = EncoderSettings.build(params[:encoder_settings], context: "#{context}[:encoder_settings]") unless params[:encoder_settings].nil?
        type.id = params[:id]
        type.input_attachments = List____listOfInputAttachment.build(params[:input_attachments], context: "#{context}[:input_attachments]") unless params[:input_attachments].nil?
        type.input_specification = InputSpecification.build(params[:input_specification], context: "#{context}[:input_specification]") unless params[:input_specification].nil?
        type.log_level = params[:log_level]
        type.maintenance = MaintenanceStatus.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type.name = params[:name]
        type.pipeline_details = List____listOfPipelineDetail.build(params[:pipeline_details], context: "#{context}[:pipeline_details]") unless params[:pipeline_details].nil?
        type.pipelines_running_count = params[:pipelines_running_count]
        type.role_arn = params[:role_arn]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc = VpcOutputSettingsDescription.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module StopMultiplexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMultiplexInput, context: context)
        type = Types::StopMultiplexInput.new
        type.multiplex_id = params[:multiplex_id]
        type
      end
    end

    module StopMultiplexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMultiplexOutput, context: context)
        type = Types::StopMultiplexOutput.new
        type.arn = params[:arn]
        type.availability_zones = List____listOf__string.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.destinations = List____listOfMultiplexOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.id = params[:id]
        type.multiplex_settings = MultiplexSettings.build(params[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless params[:multiplex_settings].nil?
        type.name = params[:name]
        type.pipelines_running_count = params[:pipelines_running_count]
        type.program_count = params[:program_count]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StopTimecode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTimecode, context: context)
        type = Types::StopTimecode.new
        type.last_frame_clipping_behavior = params[:last_frame_clipping_behavior]
        type.timecode = params[:timecode]
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TeletextDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TeletextDestinationSettings, context: context)
        type = Types::TeletextDestinationSettings.new
        type
      end
    end

    module TeletextSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TeletextSourceSettings, context: context)
        type = Types::TeletextSourceSettings.new
        type.output_rectangle = CaptionRectangle.build(params[:output_rectangle], context: "#{context}[:output_rectangle]") unless params[:output_rectangle].nil?
        type.page_number = params[:page_number]
        type
      end
    end

    module TemporalFilterSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemporalFilterSettings, context: context)
        type = Types::TemporalFilterSettings.new
        type.post_filter_sharpening = params[:post_filter_sharpening]
        type.strength = params[:strength]
        type
      end
    end

    module TimecodeConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimecodeConfig, context: context)
        type = Types::TimecodeConfig.new
        type.source = params[:source]
        type.sync_threshold = params[:sync_threshold]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module TransferInputDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferInputDeviceInput, context: context)
        type = Types::TransferInputDeviceInput.new
        type.input_device_id = params[:input_device_id]
        type.target_customer_id = params[:target_customer_id]
        type.target_region = params[:target_region]
        type.transfer_message = params[:transfer_message]
        type
      end
    end

    module TransferInputDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferInputDeviceOutput, context: context)
        type = Types::TransferInputDeviceOutput.new
        type
      end
    end

    module TransferringInputDeviceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferringInputDeviceSummary, context: context)
        type = Types::TransferringInputDeviceSummary.new
        type.id = params[:id]
        type.message = params[:message]
        type.target_customer_id = params[:target_customer_id]
        type.transfer_type = params[:transfer_type]
        type
      end
    end

    module TtmlDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TtmlDestinationSettings, context: context)
        type = Types::TtmlDestinationSettings.new
        type.style_control = params[:style_control]
        type
      end
    end

    module UdpContainerSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UdpContainerSettings, context: context)
        type = Types::UdpContainerSettings.new
        type.m2ts_settings = M2tsSettings.build(params[:m2ts_settings], context: "#{context}[:m2ts_settings]") unless params[:m2ts_settings].nil?
        type
      end
    end

    module UdpGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UdpGroupSettings, context: context)
        type = Types::UdpGroupSettings.new
        type.input_loss_action = params[:input_loss_action]
        type.timed_metadata_id3_frame = params[:timed_metadata_id3_frame]
        type.timed_metadata_id3_period = params[:timed_metadata_id3_period]
        type
      end
    end

    module UdpOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UdpOutputSettings, context: context)
        type = Types::UdpOutputSettings.new
        type.buffer_msec = params[:buffer_msec]
        type.container_settings = UdpContainerSettings.build(params[:container_settings], context: "#{context}[:container_settings]") unless params[:container_settings].nil?
        type.destination = OutputLocationRef.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.fec_output_settings = FecOutputSettings.build(params[:fec_output_settings], context: "#{context}[:fec_output_settings]") unless params[:fec_output_settings].nil?
        type
      end
    end

    module UnprocessableEntityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessableEntityException, context: context)
        type = Types::UnprocessableEntityException.new
        type.message = params[:message]
        type.validation_errors = List____listOfValidationError.build(params[:validation_errors], context: "#{context}[:validation_errors]") unless params[:validation_errors].nil?
        type
      end
    end

    module UpdateChannelClassInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelClassInput, context: context)
        type = Types::UpdateChannelClassInput.new
        type.channel_class = params[:channel_class]
        type.channel_id = params[:channel_id]
        type.destinations = List____listOfOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type
      end
    end

    module UpdateChannelClassOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelClassOutput, context: context)
        type = Types::UpdateChannelClassOutput.new
        type.channel = Channel.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type
      end
    end

    module UpdateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelInput, context: context)
        type = Types::UpdateChannelInput.new
        type.cdi_input_specification = CdiInputSpecification.build(params[:cdi_input_specification], context: "#{context}[:cdi_input_specification]") unless params[:cdi_input_specification].nil?
        type.channel_id = params[:channel_id]
        type.destinations = List____listOfOutputDestination.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.encoder_settings = EncoderSettings.build(params[:encoder_settings], context: "#{context}[:encoder_settings]") unless params[:encoder_settings].nil?
        type.input_attachments = List____listOfInputAttachment.build(params[:input_attachments], context: "#{context}[:input_attachments]") unless params[:input_attachments].nil?
        type.input_specification = InputSpecification.build(params[:input_specification], context: "#{context}[:input_specification]") unless params[:input_specification].nil?
        type.log_level = params[:log_level]
        type.maintenance = MaintenanceUpdateSettings.build(params[:maintenance], context: "#{context}[:maintenance]") unless params[:maintenance].nil?
        type.name = params[:name]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module UpdateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelOutput, context: context)
        type = Types::UpdateChannelOutput.new
        type.channel = Channel.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type
      end
    end

    module UpdateInputDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInputDeviceInput, context: context)
        type = Types::UpdateInputDeviceInput.new
        type.hd_device_settings = InputDeviceConfigurableSettings.build(params[:hd_device_settings], context: "#{context}[:hd_device_settings]") unless params[:hd_device_settings].nil?
        type.input_device_id = params[:input_device_id]
        type.name = params[:name]
        type.uhd_device_settings = InputDeviceConfigurableSettings.build(params[:uhd_device_settings], context: "#{context}[:uhd_device_settings]") unless params[:uhd_device_settings].nil?
        type
      end
    end

    module UpdateInputDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInputDeviceOutput, context: context)
        type = Types::UpdateInputDeviceOutput.new
        type.arn = params[:arn]
        type.connection_state = params[:connection_state]
        type.device_settings_sync_state = params[:device_settings_sync_state]
        type.device_update_status = params[:device_update_status]
        type.hd_device_settings = InputDeviceHdSettings.build(params[:hd_device_settings], context: "#{context}[:hd_device_settings]") unless params[:hd_device_settings].nil?
        type.id = params[:id]
        type.mac_address = params[:mac_address]
        type.name = params[:name]
        type.network_settings = InputDeviceNetworkSettings.build(params[:network_settings], context: "#{context}[:network_settings]") unless params[:network_settings].nil?
        type.serial_number = params[:serial_number]
        type.type = params[:type]
        type.uhd_device_settings = InputDeviceUhdSettings.build(params[:uhd_device_settings], context: "#{context}[:uhd_device_settings]") unless params[:uhd_device_settings].nil?
        type
      end
    end

    module UpdateInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInputInput, context: context)
        type = Types::UpdateInputInput.new
        type.destinations = List____listOfInputDestinationRequest.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.input_devices = List____listOfInputDeviceRequest.build(params[:input_devices], context: "#{context}[:input_devices]") unless params[:input_devices].nil?
        type.input_id = params[:input_id]
        type.input_security_groups = List____listOf__string.build(params[:input_security_groups], context: "#{context}[:input_security_groups]") unless params[:input_security_groups].nil?
        type.media_connect_flows = List____listOfMediaConnectFlowRequest.build(params[:media_connect_flows], context: "#{context}[:media_connect_flows]") unless params[:media_connect_flows].nil?
        type.name = params[:name]
        type.role_arn = params[:role_arn]
        type.sources = List____listOfInputSourceRequest.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type
      end
    end

    module UpdateInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInputOutput, context: context)
        type = Types::UpdateInputOutput.new
        type.input = Input.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type
      end
    end

    module UpdateInputSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInputSecurityGroupInput, context: context)
        type = Types::UpdateInputSecurityGroupInput.new
        type.input_security_group_id = params[:input_security_group_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.whitelist_rules = List____listOfInputWhitelistRuleCidr.build(params[:whitelist_rules], context: "#{context}[:whitelist_rules]") unless params[:whitelist_rules].nil?
        type
      end
    end

    module UpdateInputSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInputSecurityGroupOutput, context: context)
        type = Types::UpdateInputSecurityGroupOutput.new
        type.security_group = InputSecurityGroup.build(params[:security_group], context: "#{context}[:security_group]") unless params[:security_group].nil?
        type
      end
    end

    module UpdateMultiplexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMultiplexInput, context: context)
        type = Types::UpdateMultiplexInput.new
        type.multiplex_id = params[:multiplex_id]
        type.multiplex_settings = MultiplexSettings.build(params[:multiplex_settings], context: "#{context}[:multiplex_settings]") unless params[:multiplex_settings].nil?
        type.name = params[:name]
        type
      end
    end

    module UpdateMultiplexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMultiplexOutput, context: context)
        type = Types::UpdateMultiplexOutput.new
        type.multiplex = Multiplex.build(params[:multiplex], context: "#{context}[:multiplex]") unless params[:multiplex].nil?
        type
      end
    end

    module UpdateMultiplexProgramInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMultiplexProgramInput, context: context)
        type = Types::UpdateMultiplexProgramInput.new
        type.multiplex_id = params[:multiplex_id]
        type.multiplex_program_settings = MultiplexProgramSettings.build(params[:multiplex_program_settings], context: "#{context}[:multiplex_program_settings]") unless params[:multiplex_program_settings].nil?
        type.program_name = params[:program_name]
        type
      end
    end

    module UpdateMultiplexProgramOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMultiplexProgramOutput, context: context)
        type = Types::UpdateMultiplexProgramOutput.new
        type.multiplex_program = MultiplexProgram.build(params[:multiplex_program], context: "#{context}[:multiplex_program]") unless params[:multiplex_program].nil?
        type
      end
    end

    module UpdateReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReservationInput, context: context)
        type = Types::UpdateReservationInput.new
        type.name = params[:name]
        type.reservation_id = params[:reservation_id]
        type
      end
    end

    module UpdateReservationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReservationOutput, context: context)
        type = Types::UpdateReservationOutput.new
        type.reservation = Reservation.build(params[:reservation], context: "#{context}[:reservation]") unless params[:reservation].nil?
        type
      end
    end

    module ValidationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationError, context: context)
        type = Types::ValidationError.new
        type.element_path = params[:element_path]
        type.error_message = params[:error_message]
        type
      end
    end

    module VideoBlackFailoverSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoBlackFailoverSettings, context: context)
        type = Types::VideoBlackFailoverSettings.new
        type.black_detect_threshold = params[:black_detect_threshold]
        type.video_black_threshold_msec = params[:video_black_threshold_msec]
        type
      end
    end

    module VideoCodecSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoCodecSettings, context: context)
        type = Types::VideoCodecSettings.new
        type.frame_capture_settings = FrameCaptureSettings.build(params[:frame_capture_settings], context: "#{context}[:frame_capture_settings]") unless params[:frame_capture_settings].nil?
        type.h264_settings = H264Settings.build(params[:h264_settings], context: "#{context}[:h264_settings]") unless params[:h264_settings].nil?
        type.h265_settings = H265Settings.build(params[:h265_settings], context: "#{context}[:h265_settings]") unless params[:h265_settings].nil?
        type.mpeg2_settings = Mpeg2Settings.build(params[:mpeg2_settings], context: "#{context}[:mpeg2_settings]") unless params[:mpeg2_settings].nil?
        type
      end
    end

    module VideoDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoDescription, context: context)
        type = Types::VideoDescription.new
        type.codec_settings = VideoCodecSettings.build(params[:codec_settings], context: "#{context}[:codec_settings]") unless params[:codec_settings].nil?
        type.height = params[:height]
        type.name = params[:name]
        type.respond_to_afd = params[:respond_to_afd]
        type.scaling_behavior = params[:scaling_behavior]
        type.sharpness = params[:sharpness]
        type.width = params[:width]
        type
      end
    end

    module VideoSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoSelector, context: context)
        type = Types::VideoSelector.new
        type.color_space = params[:color_space]
        type.color_space_settings = VideoSelectorColorSpaceSettings.build(params[:color_space_settings], context: "#{context}[:color_space_settings]") unless params[:color_space_settings].nil?
        type.color_space_usage = params[:color_space_usage]
        type.selector_settings = VideoSelectorSettings.build(params[:selector_settings], context: "#{context}[:selector_settings]") unless params[:selector_settings].nil?
        type
      end
    end

    module VideoSelectorColorSpaceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoSelectorColorSpaceSettings, context: context)
        type = Types::VideoSelectorColorSpaceSettings.new
        type.hdr10_settings = Hdr10Settings.build(params[:hdr10_settings], context: "#{context}[:hdr10_settings]") unless params[:hdr10_settings].nil?
        type
      end
    end

    module VideoSelectorPid
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoSelectorPid, context: context)
        type = Types::VideoSelectorPid.new
        type.pid = params[:pid]
        type
      end
    end

    module VideoSelectorProgramId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoSelectorProgramId, context: context)
        type = Types::VideoSelectorProgramId.new
        type.program_id = params[:program_id]
        type
      end
    end

    module VideoSelectorSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoSelectorSettings, context: context)
        type = Types::VideoSelectorSettings.new
        type.video_selector_pid = VideoSelectorPid.build(params[:video_selector_pid], context: "#{context}[:video_selector_pid]") unless params[:video_selector_pid].nil?
        type.video_selector_program_id = VideoSelectorProgramId.build(params[:video_selector_program_id], context: "#{context}[:video_selector_program_id]") unless params[:video_selector_program_id].nil?
        type
      end
    end

    module VpcOutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcOutputSettings, context: context)
        type = Types::VpcOutputSettings.new
        type.public_address_allocation_ids = List____listOf__string.build(params[:public_address_allocation_ids], context: "#{context}[:public_address_allocation_ids]") unless params[:public_address_allocation_ids].nil?
        type.security_group_ids = List____listOf__string.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = List____listOf__string.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module VpcOutputSettingsDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcOutputSettingsDescription, context: context)
        type = Types::VpcOutputSettingsDescription.new
        type.availability_zones = List____listOf__string.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.network_interface_ids = List____listOf__string.build(params[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless params[:network_interface_ids].nil?
        type.security_group_ids = List____listOf__string.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = List____listOf__string.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module WavSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WavSettings, context: context)
        type = Types::WavSettings.new
        type.bit_depth = params[:bit_depth]
        type.coding_mode = params[:coding_mode]
        type.sample_rate = params[:sample_rate]
        type
      end
    end

    module WebvttDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebvttDestinationSettings, context: context)
        type = Types::WebvttDestinationSettings.new
        type.style_control = params[:style_control]
        type
      end
    end

    module List____listOfAudioChannelMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AudioChannelMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfAudioDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AudioDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfAudioSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AudioSelector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfAudioTrack
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AudioTrack.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfBatchFailedResultModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchFailedResultModel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfBatchSuccessfulResultModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchSuccessfulResultModel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCaptionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CaptionDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCaptionLanguageMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CaptionLanguageMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCaptionSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CaptionSelector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfChannelEgressEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelEgressEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfChannelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfFailoverCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailoverCondition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfHlsAdMarkers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOfInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Input.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputAttachment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputChannelLevel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputChannelLevel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputDestinationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputDestinationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputDeviceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputDeviceRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputDeviceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputDeviceSettings.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputDeviceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputDeviceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputSecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputSourceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputSourceRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputWhitelistRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputWhitelistRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputWhitelistRuleCidr
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputWhitelistRuleCidr.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMediaConnectFlow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaConnectFlow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMediaConnectFlowRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaConnectFlowRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMediaPackageOutputDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaPackageOutputDestinationSettings.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMultiplexOutputDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiplexOutputDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMultiplexProgramPipelineDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiplexProgramPipelineDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMultiplexProgramSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiplexProgramSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMultiplexSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiplexSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfOffering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Offering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Output.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfOutputDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfOutputDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputDestinationSettings.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfOutputGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfPipelineDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfPipelinePauseStateSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelinePauseStateSettings.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfReservation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Reservation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfRtmpAdMarkers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOfScheduleAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduleAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfScte35Descriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Scte35Descriptor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfTransferringInputDeviceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransferringInputDeviceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfValidationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfVideoDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VideoDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__integer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

  end
end
