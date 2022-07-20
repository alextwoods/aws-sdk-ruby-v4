# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MediaConvert
  module Params

    module AacSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AacSettings, context: context)
        type = Types::AacSettings.new
        type.audio_description_broadcaster_mix = params[:audio_description_broadcaster_mix]
        type.bitrate = params[:bitrate]
        type.codec_profile = params[:codec_profile]
        type.coding_mode = params[:coding_mode]
        type.rate_control_mode = params[:rate_control_mode]
        type.raw_format = params[:raw_format]
        type.sample_rate = params[:sample_rate]
        type.specification = params[:specification]
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
        type.dynamic_range_compression_line = params[:dynamic_range_compression_line]
        type.dynamic_range_compression_profile = params[:dynamic_range_compression_profile]
        type.dynamic_range_compression_rf = params[:dynamic_range_compression_rf]
        type.lfe_filter = params[:lfe_filter]
        type.metadata_control = params[:metadata_control]
        type.sample_rate = params[:sample_rate]
        type
      end
    end

    module AccelerationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccelerationSettings, context: context)
        type = Types::AccelerationSettings.new
        type.mode = params[:mode]
        type
      end
    end

    module AiffSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AiffSettings, context: context)
        type = Types::AiffSettings.new
        type.bit_depth = params[:bit_depth]
        type.channels = params[:channels]
        type.sample_rate = params[:sample_rate]
        type
      end
    end

    module AllowedRenditionSize
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllowedRenditionSize, context: context)
        type = Types::AllowedRenditionSize.new
        type.height = params[:height]
        type.required = params[:required]
        type.width = params[:width]
        type
      end
    end

    module AncillarySourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AncillarySourceSettings, context: context)
        type = Types::AncillarySourceSettings.new
        type.convert608_to708 = params[:convert608_to708]
        type.source_ancillary_channel_number = params[:source_ancillary_channel_number]
        type.terminate_captions = params[:terminate_captions]
        type
      end
    end

    module AssociateCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateCertificateInput, context: context)
        type = Types::AssociateCertificateInput.new
        type.arn = params[:arn]
        type
      end
    end

    module AssociateCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateCertificateOutput, context: context)
        type = Types::AssociateCertificateOutput.new
        type
      end
    end

    module AudioChannelTaggingSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioChannelTaggingSettings, context: context)
        type = Types::AudioChannelTaggingSettings.new
        type.channel_tag = params[:channel_tag]
        type
      end
    end

    module AudioCodecSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioCodecSettings, context: context)
        type = Types::AudioCodecSettings.new
        type.aac_settings = AacSettings.build(params[:aac_settings], context: "#{context}[:aac_settings]") unless params[:aac_settings].nil?
        type.ac3_settings = Ac3Settings.build(params[:ac3_settings], context: "#{context}[:ac3_settings]") unless params[:ac3_settings].nil?
        type.aiff_settings = AiffSettings.build(params[:aiff_settings], context: "#{context}[:aiff_settings]") unless params[:aiff_settings].nil?
        type.codec = params[:codec]
        type.eac3_atmos_settings = Eac3AtmosSettings.build(params[:eac3_atmos_settings], context: "#{context}[:eac3_atmos_settings]") unless params[:eac3_atmos_settings].nil?
        type.eac3_settings = Eac3Settings.build(params[:eac3_settings], context: "#{context}[:eac3_settings]") unless params[:eac3_settings].nil?
        type.mp2_settings = Mp2Settings.build(params[:mp2_settings], context: "#{context}[:mp2_settings]") unless params[:mp2_settings].nil?
        type.mp3_settings = Mp3Settings.build(params[:mp3_settings], context: "#{context}[:mp3_settings]") unless params[:mp3_settings].nil?
        type.opus_settings = OpusSettings.build(params[:opus_settings], context: "#{context}[:opus_settings]") unless params[:opus_settings].nil?
        type.vorbis_settings = VorbisSettings.build(params[:vorbis_settings], context: "#{context}[:vorbis_settings]") unless params[:vorbis_settings].nil?
        type.wav_settings = WavSettings.build(params[:wav_settings], context: "#{context}[:wav_settings]") unless params[:wav_settings].nil?
        type
      end
    end

    module AudioDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioDescription, context: context)
        type = Types::AudioDescription.new
        type.audio_channel_tagging_settings = AudioChannelTaggingSettings.build(params[:audio_channel_tagging_settings], context: "#{context}[:audio_channel_tagging_settings]") unless params[:audio_channel_tagging_settings].nil?
        type.audio_normalization_settings = AudioNormalizationSettings.build(params[:audio_normalization_settings], context: "#{context}[:audio_normalization_settings]") unless params[:audio_normalization_settings].nil?
        type.audio_source_name = params[:audio_source_name]
        type.audio_type = params[:audio_type]
        type.audio_type_control = params[:audio_type_control]
        type.codec_settings = AudioCodecSettings.build(params[:codec_settings], context: "#{context}[:codec_settings]") unless params[:codec_settings].nil?
        type.custom_language_code = params[:custom_language_code]
        type.language_code = params[:language_code]
        type.language_code_control = params[:language_code_control]
        type.remix_settings = RemixSettings.build(params[:remix_settings], context: "#{context}[:remix_settings]") unless params[:remix_settings].nil?
        type.stream_name = params[:stream_name]
        type
      end
    end

    module AudioNormalizationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioNormalizationSettings, context: context)
        type = Types::AudioNormalizationSettings.new
        type.algorithm = params[:algorithm]
        type.algorithm_control = params[:algorithm_control]
        type.correction_gate_level = params[:correction_gate_level]
        type.loudness_logging = params[:loudness_logging]
        type.peak_calculation = params[:peak_calculation]
        type.target_lkfs = params[:target_lkfs]
        type
      end
    end

    module AudioSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioSelector, context: context)
        type = Types::AudioSelector.new
        type.custom_language_code = params[:custom_language_code]
        type.default_selection = params[:default_selection]
        type.external_audio_file_input = params[:external_audio_file_input]
        type.hls_rendition_group_settings = HlsRenditionGroupSettings.build(params[:hls_rendition_group_settings], context: "#{context}[:hls_rendition_group_settings]") unless params[:hls_rendition_group_settings].nil?
        type.language_code = params[:language_code]
        type.offset = params[:offset]
        type.pids = List____listOf__integerMin1Max2147483647.build(params[:pids], context: "#{context}[:pids]") unless params[:pids].nil?
        type.program_selection = params[:program_selection]
        type.remix_settings = RemixSettings.build(params[:remix_settings], context: "#{context}[:remix_settings]") unless params[:remix_settings].nil?
        type.selector_type = params[:selector_type]
        type.tracks = List____listOf__integerMin1Max2147483647.build(params[:tracks], context: "#{context}[:tracks]") unless params[:tracks].nil?
        type
      end
    end

    module AudioSelectorGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioSelectorGroup, context: context)
        type = Types::AudioSelectorGroup.new
        type.audio_selector_names = List____listOf__stringMin1.build(params[:audio_selector_names], context: "#{context}[:audio_selector_names]") unless params[:audio_selector_names].nil?
        type
      end
    end

    module AutomatedAbrRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomatedAbrRule, context: context)
        type = Types::AutomatedAbrRule.new
        type.allowed_renditions = List____listOfAllowedRenditionSize.build(params[:allowed_renditions], context: "#{context}[:allowed_renditions]") unless params[:allowed_renditions].nil?
        type.force_include_renditions = List____listOfForceIncludeRenditionSize.build(params[:force_include_renditions], context: "#{context}[:force_include_renditions]") unless params[:force_include_renditions].nil?
        type.min_bottom_rendition_size = MinBottomRenditionSize.build(params[:min_bottom_rendition_size], context: "#{context}[:min_bottom_rendition_size]") unless params[:min_bottom_rendition_size].nil?
        type.min_top_rendition_size = MinTopRenditionSize.build(params[:min_top_rendition_size], context: "#{context}[:min_top_rendition_size]") unless params[:min_top_rendition_size].nil?
        type.type = params[:type]
        type
      end
    end

    module AutomatedAbrSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomatedAbrSettings, context: context)
        type = Types::AutomatedAbrSettings.new
        type.max_abr_bitrate = params[:max_abr_bitrate]
        type.max_renditions = params[:max_renditions]
        type.min_abr_bitrate = params[:min_abr_bitrate]
        type.rules = List____listOfAutomatedAbrRule.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module AutomatedEncodingSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomatedEncodingSettings, context: context)
        type = Types::AutomatedEncodingSettings.new
        type.abr_settings = AutomatedAbrSettings.build(params[:abr_settings], context: "#{context}[:abr_settings]") unless params[:abr_settings].nil?
        type
      end
    end

    module Av1QvbrSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Av1QvbrSettings, context: context)
        type = Types::Av1QvbrSettings.new
        type.qvbr_quality_level = params[:qvbr_quality_level]
        type.qvbr_quality_level_fine_tune = params[:qvbr_quality_level_fine_tune]
        type
      end
    end

    module Av1Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Av1Settings, context: context)
        type = Types::Av1Settings.new
        type.adaptive_quantization = params[:adaptive_quantization]
        type.bit_depth = params[:bit_depth]
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.gop_size = params[:gop_size]
        type.max_bitrate = params[:max_bitrate]
        type.number_b_frames_between_reference_frames = params[:number_b_frames_between_reference_frames]
        type.qvbr_settings = Av1QvbrSettings.build(params[:qvbr_settings], context: "#{context}[:qvbr_settings]") unless params[:qvbr_settings].nil?
        type.rate_control_mode = params[:rate_control_mode]
        type.slices = params[:slices]
        type.spatial_adaptive_quantization = params[:spatial_adaptive_quantization]
        type
      end
    end

    module AvailBlanking
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailBlanking, context: context)
        type = Types::AvailBlanking.new
        type.avail_blanking_image = params[:avail_blanking_image]
        type
      end
    end

    module AvcIntraSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvcIntraSettings, context: context)
        type = Types::AvcIntraSettings.new
        type.avc_intra_class = params[:avc_intra_class]
        type.avc_intra_uhd_settings = AvcIntraUhdSettings.build(params[:avc_intra_uhd_settings], context: "#{context}[:avc_intra_uhd_settings]") unless params[:avc_intra_uhd_settings].nil?
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.interlace_mode = params[:interlace_mode]
        type.scan_type_conversion_mode = params[:scan_type_conversion_mode]
        type.slow_pal = params[:slow_pal]
        type.telecine = params[:telecine]
        type
      end
    end

    module AvcIntraUhdSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvcIntraUhdSettings, context: context)
        type = Types::AvcIntraUhdSettings.new
        type.quality_tuning_level = params[:quality_tuning_level]
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

    module BurninDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BurninDestinationSettings, context: context)
        type = Types::BurninDestinationSettings.new
        type.alignment = params[:alignment]
        type.apply_font_color = params[:apply_font_color]
        type.background_color = params[:background_color]
        type.background_opacity = params[:background_opacity]
        type.fallback_font = params[:fallback_font]
        type.font_color = params[:font_color]
        type.font_opacity = params[:font_opacity]
        type.font_resolution = params[:font_resolution]
        type.font_script = params[:font_script]
        type.font_size = params[:font_size]
        type.hex_font_color = params[:hex_font_color]
        type.outline_color = params[:outline_color]
        type.outline_size = params[:outline_size]
        type.shadow_color = params[:shadow_color]
        type.shadow_opacity = params[:shadow_opacity]
        type.shadow_x_offset = params[:shadow_x_offset]
        type.shadow_y_offset = params[:shadow_y_offset]
        type.style_passthrough = params[:style_passthrough]
        type.teletext_spacing = params[:teletext_spacing]
        type.x_position = params[:x_position]
        type.y_position = params[:y_position]
        type
      end
    end

    module CancelJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobInput, context: context)
        type = Types::CancelJobInput.new
        type.id = params[:id]
        type
      end
    end

    module CancelJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobOutput, context: context)
        type = Types::CancelJobOutput.new
        type
      end
    end

    module CaptionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionDescription, context: context)
        type = Types::CaptionDescription.new
        type.caption_selector_name = params[:caption_selector_name]
        type.custom_language_code = params[:custom_language_code]
        type.destination_settings = CaptionDestinationSettings.build(params[:destination_settings], context: "#{context}[:destination_settings]") unless params[:destination_settings].nil?
        type.language_code = params[:language_code]
        type.language_description = params[:language_description]
        type
      end
    end

    module CaptionDescriptionPreset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionDescriptionPreset, context: context)
        type = Types::CaptionDescriptionPreset.new
        type.custom_language_code = params[:custom_language_code]
        type.destination_settings = CaptionDestinationSettings.build(params[:destination_settings], context: "#{context}[:destination_settings]") unless params[:destination_settings].nil?
        type.language_code = params[:language_code]
        type.language_description = params[:language_description]
        type
      end
    end

    module CaptionDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionDestinationSettings, context: context)
        type = Types::CaptionDestinationSettings.new
        type.burnin_destination_settings = BurninDestinationSettings.build(params[:burnin_destination_settings], context: "#{context}[:burnin_destination_settings]") unless params[:burnin_destination_settings].nil?
        type.destination_type = params[:destination_type]
        type.dvb_sub_destination_settings = DvbSubDestinationSettings.build(params[:dvb_sub_destination_settings], context: "#{context}[:dvb_sub_destination_settings]") unless params[:dvb_sub_destination_settings].nil?
        type.embedded_destination_settings = EmbeddedDestinationSettings.build(params[:embedded_destination_settings], context: "#{context}[:embedded_destination_settings]") unless params[:embedded_destination_settings].nil?
        type.imsc_destination_settings = ImscDestinationSettings.build(params[:imsc_destination_settings], context: "#{context}[:imsc_destination_settings]") unless params[:imsc_destination_settings].nil?
        type.scc_destination_settings = SccDestinationSettings.build(params[:scc_destination_settings], context: "#{context}[:scc_destination_settings]") unless params[:scc_destination_settings].nil?
        type.srt_destination_settings = SrtDestinationSettings.build(params[:srt_destination_settings], context: "#{context}[:srt_destination_settings]") unless params[:srt_destination_settings].nil?
        type.teletext_destination_settings = TeletextDestinationSettings.build(params[:teletext_destination_settings], context: "#{context}[:teletext_destination_settings]") unless params[:teletext_destination_settings].nil?
        type.ttml_destination_settings = TtmlDestinationSettings.build(params[:ttml_destination_settings], context: "#{context}[:ttml_destination_settings]") unless params[:ttml_destination_settings].nil?
        type.webvtt_destination_settings = WebvttDestinationSettings.build(params[:webvtt_destination_settings], context: "#{context}[:webvtt_destination_settings]") unless params[:webvtt_destination_settings].nil?
        type
      end
    end

    module CaptionSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionSelector, context: context)
        type = Types::CaptionSelector.new
        type.custom_language_code = params[:custom_language_code]
        type.language_code = params[:language_code]
        type.source_settings = CaptionSourceSettings.build(params[:source_settings], context: "#{context}[:source_settings]") unless params[:source_settings].nil?
        type
      end
    end

    module CaptionSourceFramerate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionSourceFramerate, context: context)
        type = Types::CaptionSourceFramerate.new
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type
      end
    end

    module CaptionSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptionSourceSettings, context: context)
        type = Types::CaptionSourceSettings.new
        type.ancillary_source_settings = AncillarySourceSettings.build(params[:ancillary_source_settings], context: "#{context}[:ancillary_source_settings]") unless params[:ancillary_source_settings].nil?
        type.dvb_sub_source_settings = DvbSubSourceSettings.build(params[:dvb_sub_source_settings], context: "#{context}[:dvb_sub_source_settings]") unless params[:dvb_sub_source_settings].nil?
        type.embedded_source_settings = EmbeddedSourceSettings.build(params[:embedded_source_settings], context: "#{context}[:embedded_source_settings]") unless params[:embedded_source_settings].nil?
        type.file_source_settings = FileSourceSettings.build(params[:file_source_settings], context: "#{context}[:file_source_settings]") unless params[:file_source_settings].nil?
        type.source_type = params[:source_type]
        type.teletext_source_settings = TeletextSourceSettings.build(params[:teletext_source_settings], context: "#{context}[:teletext_source_settings]") unless params[:teletext_source_settings].nil?
        type.track_source_settings = TrackSourceSettings.build(params[:track_source_settings], context: "#{context}[:track_source_settings]") unless params[:track_source_settings].nil?
        type.webvtt_hls_source_settings = WebvttHlsSourceSettings.build(params[:webvtt_hls_source_settings], context: "#{context}[:webvtt_hls_source_settings]") unless params[:webvtt_hls_source_settings].nil?
        type
      end
    end

    module ChannelMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMapping, context: context)
        type = Types::ChannelMapping.new
        type.output_channels = List____listOfOutputChannelMapping.build(params[:output_channels], context: "#{context}[:output_channels]") unless params[:output_channels].nil?
        type
      end
    end

    module CmafAdditionalManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CmafAdditionalManifest, context: context)
        type = Types::CmafAdditionalManifest.new
        type.manifest_name_modifier = params[:manifest_name_modifier]
        type.selected_outputs = List____listOf__stringMin1.build(params[:selected_outputs], context: "#{context}[:selected_outputs]") unless params[:selected_outputs].nil?
        type
      end
    end

    module CmafEncryptionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CmafEncryptionSettings, context: context)
        type = Types::CmafEncryptionSettings.new
        type.constant_initialization_vector = params[:constant_initialization_vector]
        type.encryption_method = params[:encryption_method]
        type.initialization_vector_in_manifest = params[:initialization_vector_in_manifest]
        type.speke_key_provider = SpekeKeyProviderCmaf.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type.static_key_provider = StaticKeyProvider.build(params[:static_key_provider], context: "#{context}[:static_key_provider]") unless params[:static_key_provider].nil?
        type.type = params[:type]
        type
      end
    end

    module CmafGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CmafGroupSettings, context: context)
        type = Types::CmafGroupSettings.new
        type.additional_manifests = List____listOfCmafAdditionalManifest.build(params[:additional_manifests], context: "#{context}[:additional_manifests]") unless params[:additional_manifests].nil?
        type.base_url = params[:base_url]
        type.client_cache = params[:client_cache]
        type.codec_specification = params[:codec_specification]
        type.destination = params[:destination]
        type.destination_settings = DestinationSettings.build(params[:destination_settings], context: "#{context}[:destination_settings]") unless params[:destination_settings].nil?
        type.encryption = CmafEncryptionSettings.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.fragment_length = params[:fragment_length]
        type.image_based_trick_play = params[:image_based_trick_play]
        type.image_based_trick_play_settings = CmafImageBasedTrickPlaySettings.build(params[:image_based_trick_play_settings], context: "#{context}[:image_based_trick_play_settings]") unless params[:image_based_trick_play_settings].nil?
        type.manifest_compression = params[:manifest_compression]
        type.manifest_duration_format = params[:manifest_duration_format]
        type.min_buffer_time = params[:min_buffer_time]
        type.min_final_segment_length = params[:min_final_segment_length]
        type.mpd_profile = params[:mpd_profile]
        type.pts_offset_handling_for_b_frames = params[:pts_offset_handling_for_b_frames]
        type.segment_control = params[:segment_control]
        type.segment_length = params[:segment_length]
        type.segment_length_control = params[:segment_length_control]
        type.stream_inf_resolution = params[:stream_inf_resolution]
        type.target_duration_compatibility_mode = params[:target_duration_compatibility_mode]
        type.write_dash_manifest = params[:write_dash_manifest]
        type.write_hls_manifest = params[:write_hls_manifest]
        type.write_segment_timeline_in_representation = params[:write_segment_timeline_in_representation]
        type
      end
    end

    module CmafImageBasedTrickPlaySettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CmafImageBasedTrickPlaySettings, context: context)
        type = Types::CmafImageBasedTrickPlaySettings.new
        type.interval_cadence = params[:interval_cadence]
        type.thumbnail_height = params[:thumbnail_height]
        type.thumbnail_interval = params[:thumbnail_interval]
        type.thumbnail_width = params[:thumbnail_width]
        type.tile_height = params[:tile_height]
        type.tile_width = params[:tile_width]
        type
      end
    end

    module CmfcSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CmfcSettings, context: context)
        type = Types::CmfcSettings.new
        type.audio_duration = params[:audio_duration]
        type.audio_group_id = params[:audio_group_id]
        type.audio_rendition_sets = params[:audio_rendition_sets]
        type.audio_track_type = params[:audio_track_type]
        type.descriptive_video_service_flag = params[:descriptive_video_service_flag]
        type.i_frame_only_manifest = params[:i_frame_only_manifest]
        type.klv_metadata = params[:klv_metadata]
        type.scte35_esam = params[:scte35_esam]
        type.scte35_source = params[:scte35_source]
        type.timed_metadata = params[:timed_metadata]
        type
      end
    end

    module ColorCorrector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColorCorrector, context: context)
        type = Types::ColorCorrector.new
        type.brightness = params[:brightness]
        type.color_space_conversion = params[:color_space_conversion]
        type.contrast = params[:contrast]
        type.hdr10_metadata = Hdr10Metadata.build(params[:hdr10_metadata], context: "#{context}[:hdr10_metadata]") unless params[:hdr10_metadata].nil?
        type.hue = params[:hue]
        type.sample_range_conversion = params[:sample_range_conversion]
        type.saturation = params[:saturation]
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

    module ContainerSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerSettings, context: context)
        type = Types::ContainerSettings.new
        type.cmfc_settings = CmfcSettings.build(params[:cmfc_settings], context: "#{context}[:cmfc_settings]") unless params[:cmfc_settings].nil?
        type.container = params[:container]
        type.f4v_settings = F4vSettings.build(params[:f4v_settings], context: "#{context}[:f4v_settings]") unless params[:f4v_settings].nil?
        type.m2ts_settings = M2tsSettings.build(params[:m2ts_settings], context: "#{context}[:m2ts_settings]") unless params[:m2ts_settings].nil?
        type.m3u8_settings = M3u8Settings.build(params[:m3u8_settings], context: "#{context}[:m3u8_settings]") unless params[:m3u8_settings].nil?
        type.mov_settings = MovSettings.build(params[:mov_settings], context: "#{context}[:mov_settings]") unless params[:mov_settings].nil?
        type.mp4_settings = Mp4Settings.build(params[:mp4_settings], context: "#{context}[:mp4_settings]") unless params[:mp4_settings].nil?
        type.mpd_settings = MpdSettings.build(params[:mpd_settings], context: "#{context}[:mpd_settings]") unless params[:mpd_settings].nil?
        type.mxf_settings = MxfSettings.build(params[:mxf_settings], context: "#{context}[:mxf_settings]") unless params[:mxf_settings].nil?
        type
      end
    end

    module CreateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobInput, context: context)
        type = Types::CreateJobInput.new
        type.acceleration_settings = AccelerationSettings.build(params[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless params[:acceleration_settings].nil?
        type.billing_tags_source = params[:billing_tags_source]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.hop_destinations = List____listOfHopDestination.build(params[:hop_destinations], context: "#{context}[:hop_destinations]") unless params[:hop_destinations].nil?
        type.job_template = params[:job_template]
        type.priority = params[:priority]
        type.queue = params[:queue]
        type.role = params[:role]
        type.settings = JobSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.simulate_reserved_queue = params[:simulate_reserved_queue]
        type.status_update_interval = params[:status_update_interval]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.user_metadata = Map____mapOf__string.build(params[:user_metadata], context: "#{context}[:user_metadata]") unless params[:user_metadata].nil?
        type
      end
    end

    module CreateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobOutput, context: context)
        type = Types::CreateJobOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module CreateJobTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobTemplateInput, context: context)
        type = Types::CreateJobTemplateInput.new
        type.acceleration_settings = AccelerationSettings.build(params[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless params[:acceleration_settings].nil?
        type.category = params[:category]
        type.description = params[:description]
        type.hop_destinations = List____listOfHopDestination.build(params[:hop_destinations], context: "#{context}[:hop_destinations]") unless params[:hop_destinations].nil?
        type.name = params[:name]
        type.priority = params[:priority]
        type.queue = params[:queue]
        type.settings = JobTemplateSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.status_update_interval = params[:status_update_interval]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateJobTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobTemplateOutput, context: context)
        type = Types::CreateJobTemplateOutput.new
        type.job_template = JobTemplate.build(params[:job_template], context: "#{context}[:job_template]") unless params[:job_template].nil?
        type
      end
    end

    module CreatePresetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePresetInput, context: context)
        type = Types::CreatePresetInput.new
        type.category = params[:category]
        type.description = params[:description]
        type.name = params[:name]
        type.settings = PresetSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePresetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePresetOutput, context: context)
        type = Types::CreatePresetOutput.new
        type.preset = Preset.build(params[:preset], context: "#{context}[:preset]") unless params[:preset].nil?
        type
      end
    end

    module CreateQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQueueInput, context: context)
        type = Types::CreateQueueInput.new
        type.description = params[:description]
        type.name = params[:name]
        type.pricing_plan = params[:pricing_plan]
        type.reservation_plan_settings = ReservationPlanSettings.build(params[:reservation_plan_settings], context: "#{context}[:reservation_plan_settings]") unless params[:reservation_plan_settings].nil?
        type.status = params[:status]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQueueOutput, context: context)
        type = Types::CreateQueueOutput.new
        type.queue = Queue.build(params[:queue], context: "#{context}[:queue]") unless params[:queue].nil?
        type
      end
    end

    module DashAdditionalManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashAdditionalManifest, context: context)
        type = Types::DashAdditionalManifest.new
        type.manifest_name_modifier = params[:manifest_name_modifier]
        type.selected_outputs = List____listOf__stringMin1.build(params[:selected_outputs], context: "#{context}[:selected_outputs]") unless params[:selected_outputs].nil?
        type
      end
    end

    module DashIsoEncryptionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashIsoEncryptionSettings, context: context)
        type = Types::DashIsoEncryptionSettings.new
        type.playback_device_compatibility = params[:playback_device_compatibility]
        type.speke_key_provider = SpekeKeyProvider.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type
      end
    end

    module DashIsoGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashIsoGroupSettings, context: context)
        type = Types::DashIsoGroupSettings.new
        type.additional_manifests = List____listOfDashAdditionalManifest.build(params[:additional_manifests], context: "#{context}[:additional_manifests]") unless params[:additional_manifests].nil?
        type.audio_channel_config_scheme_id_uri = params[:audio_channel_config_scheme_id_uri]
        type.base_url = params[:base_url]
        type.destination = params[:destination]
        type.destination_settings = DestinationSettings.build(params[:destination_settings], context: "#{context}[:destination_settings]") unless params[:destination_settings].nil?
        type.encryption = DashIsoEncryptionSettings.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.fragment_length = params[:fragment_length]
        type.hbbtv_compliance = params[:hbbtv_compliance]
        type.image_based_trick_play = params[:image_based_trick_play]
        type.image_based_trick_play_settings = DashIsoImageBasedTrickPlaySettings.build(params[:image_based_trick_play_settings], context: "#{context}[:image_based_trick_play_settings]") unless params[:image_based_trick_play_settings].nil?
        type.min_buffer_time = params[:min_buffer_time]
        type.min_final_segment_length = params[:min_final_segment_length]
        type.mpd_profile = params[:mpd_profile]
        type.pts_offset_handling_for_b_frames = params[:pts_offset_handling_for_b_frames]
        type.segment_control = params[:segment_control]
        type.segment_length = params[:segment_length]
        type.segment_length_control = params[:segment_length_control]
        type.write_segment_timeline_in_representation = params[:write_segment_timeline_in_representation]
        type
      end
    end

    module DashIsoImageBasedTrickPlaySettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashIsoImageBasedTrickPlaySettings, context: context)
        type = Types::DashIsoImageBasedTrickPlaySettings.new
        type.interval_cadence = params[:interval_cadence]
        type.thumbnail_height = params[:thumbnail_height]
        type.thumbnail_interval = params[:thumbnail_interval]
        type.thumbnail_width = params[:thumbnail_width]
        type.tile_height = params[:tile_height]
        type.tile_width = params[:tile_width]
        type
      end
    end

    module Deinterlacer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Deinterlacer, context: context)
        type = Types::Deinterlacer.new
        type.algorithm = params[:algorithm]
        type.control = params[:control]
        type.mode = params[:mode]
        type
      end
    end

    module DeleteJobTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobTemplateInput, context: context)
        type = Types::DeleteJobTemplateInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteJobTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobTemplateOutput, context: context)
        type = Types::DeleteJobTemplateOutput.new
        type
      end
    end

    module DeletePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyInput, context: context)
        type = Types::DeletePolicyInput.new
        type
      end
    end

    module DeletePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyOutput, context: context)
        type = Types::DeletePolicyOutput.new
        type
      end
    end

    module DeletePresetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePresetInput, context: context)
        type = Types::DeletePresetInput.new
        type.name = params[:name]
        type
      end
    end

    module DeletePresetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePresetOutput, context: context)
        type = Types::DeletePresetOutput.new
        type
      end
    end

    module DeleteQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueueInput, context: context)
        type = Types::DeleteQueueInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueueOutput, context: context)
        type = Types::DeleteQueueOutput.new
        type
      end
    end

    module DescribeEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointsInput, context: context)
        type = Types::DescribeEndpointsInput.new
        type.max_results = params[:max_results]
        type.mode = params[:mode]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointsOutput, context: context)
        type = Types::DescribeEndpointsOutput.new
        type.endpoints = List____listOfEndpoint.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationSettings, context: context)
        type = Types::DestinationSettings.new
        type.s3_settings = S3DestinationSettings.build(params[:s3_settings], context: "#{context}[:s3_settings]") unless params[:s3_settings].nil?
        type
      end
    end

    module DisassociateCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateCertificateInput, context: context)
        type = Types::DisassociateCertificateInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DisassociateCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateCertificateOutput, context: context)
        type = Types::DisassociateCertificateOutput.new
        type
      end
    end

    module DolbyVision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DolbyVision, context: context)
        type = Types::DolbyVision.new
        type.l6_metadata = DolbyVisionLevel6Metadata.build(params[:l6_metadata], context: "#{context}[:l6_metadata]") unless params[:l6_metadata].nil?
        type.l6_mode = params[:l6_mode]
        type.mapping = params[:mapping]
        type.profile = params[:profile]
        type
      end
    end

    module DolbyVisionLevel6Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DolbyVisionLevel6Metadata, context: context)
        type = Types::DolbyVisionLevel6Metadata.new
        type.max_cll = params[:max_cll]
        type.max_fall = params[:max_fall]
        type
      end
    end

    module DvbNitSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DvbNitSettings, context: context)
        type = Types::DvbNitSettings.new
        type.network_id = params[:network_id]
        type.network_name = params[:network_name]
        type.nit_interval = params[:nit_interval]
        type
      end
    end

    module DvbSdtSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DvbSdtSettings, context: context)
        type = Types::DvbSdtSettings.new
        type.output_sdt = params[:output_sdt]
        type.sdt_interval = params[:sdt_interval]
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
        type.apply_font_color = params[:apply_font_color]
        type.background_color = params[:background_color]
        type.background_opacity = params[:background_opacity]
        type.dds_handling = params[:dds_handling]
        type.dds_x_coordinate = params[:dds_x_coordinate]
        type.dds_y_coordinate = params[:dds_y_coordinate]
        type.fallback_font = params[:fallback_font]
        type.font_color = params[:font_color]
        type.font_opacity = params[:font_opacity]
        type.font_resolution = params[:font_resolution]
        type.font_script = params[:font_script]
        type.font_size = params[:font_size]
        type.height = params[:height]
        type.hex_font_color = params[:hex_font_color]
        type.outline_color = params[:outline_color]
        type.outline_size = params[:outline_size]
        type.shadow_color = params[:shadow_color]
        type.shadow_opacity = params[:shadow_opacity]
        type.shadow_x_offset = params[:shadow_x_offset]
        type.shadow_y_offset = params[:shadow_y_offset]
        type.style_passthrough = params[:style_passthrough]
        type.subtitling_type = params[:subtitling_type]
        type.teletext_spacing = params[:teletext_spacing]
        type.width = params[:width]
        type.x_position = params[:x_position]
        type.y_position = params[:y_position]
        type
      end
    end

    module DvbSubSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DvbSubSourceSettings, context: context)
        type = Types::DvbSubSourceSettings.new
        type.pid = params[:pid]
        type
      end
    end

    module DvbTdtSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DvbTdtSettings, context: context)
        type = Types::DvbTdtSettings.new
        type.tdt_interval = params[:tdt_interval]
        type
      end
    end

    module Eac3AtmosSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Eac3AtmosSettings, context: context)
        type = Types::Eac3AtmosSettings.new
        type.bitrate = params[:bitrate]
        type.bitstream_mode = params[:bitstream_mode]
        type.coding_mode = params[:coding_mode]
        type.dialogue_intelligence = params[:dialogue_intelligence]
        type.downmix_control = params[:downmix_control]
        type.dynamic_range_compression_line = params[:dynamic_range_compression_line]
        type.dynamic_range_compression_rf = params[:dynamic_range_compression_rf]
        type.dynamic_range_control = params[:dynamic_range_control]
        type.lo_ro_center_mix_level = params[:lo_ro_center_mix_level]
        type.lo_ro_surround_mix_level = params[:lo_ro_surround_mix_level]
        type.lt_rt_center_mix_level = params[:lt_rt_center_mix_level]
        type.lt_rt_surround_mix_level = params[:lt_rt_surround_mix_level]
        type.metering_mode = params[:metering_mode]
        type.sample_rate = params[:sample_rate]
        type.speech_threshold = params[:speech_threshold]
        type.stereo_downmix = params[:stereo_downmix]
        type.surround_ex_mode = params[:surround_ex_mode]
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
        type.dynamic_range_compression_line = params[:dynamic_range_compression_line]
        type.dynamic_range_compression_rf = params[:dynamic_range_compression_rf]
        type.lfe_control = params[:lfe_control]
        type.lfe_filter = params[:lfe_filter]
        type.lo_ro_center_mix_level = params[:lo_ro_center_mix_level]
        type.lo_ro_surround_mix_level = params[:lo_ro_surround_mix_level]
        type.lt_rt_center_mix_level = params[:lt_rt_center_mix_level]
        type.lt_rt_surround_mix_level = params[:lt_rt_surround_mix_level]
        type.metadata_control = params[:metadata_control]
        type.passthrough_control = params[:passthrough_control]
        type.phase_control = params[:phase_control]
        type.sample_rate = params[:sample_rate]
        type.stereo_downmix = params[:stereo_downmix]
        type.surround_ex_mode = params[:surround_ex_mode]
        type.surround_mode = params[:surround_mode]
        type
      end
    end

    module EmbeddedDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmbeddedDestinationSettings, context: context)
        type = Types::EmbeddedDestinationSettings.new
        type.destination608_channel_number = params[:destination608_channel_number]
        type.destination708_service_number = params[:destination708_service_number]
        type
      end
    end

    module EmbeddedSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmbeddedSourceSettings, context: context)
        type = Types::EmbeddedSourceSettings.new
        type.convert608_to708 = params[:convert608_to708]
        type.source608_channel_number = params[:source608_channel_number]
        type.source608_track_number = params[:source608_track_number]
        type.terminate_captions = params[:terminate_captions]
        type
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.url = params[:url]
        type
      end
    end

    module EsamManifestConfirmConditionNotification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EsamManifestConfirmConditionNotification, context: context)
        type = Types::EsamManifestConfirmConditionNotification.new
        type.mcc_xml = params[:mcc_xml]
        type
      end
    end

    module EsamSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EsamSettings, context: context)
        type = Types::EsamSettings.new
        type.manifest_confirm_condition_notification = EsamManifestConfirmConditionNotification.build(params[:manifest_confirm_condition_notification], context: "#{context}[:manifest_confirm_condition_notification]") unless params[:manifest_confirm_condition_notification].nil?
        type.response_signal_preroll = params[:response_signal_preroll]
        type.signal_processing_notification = EsamSignalProcessingNotification.build(params[:signal_processing_notification], context: "#{context}[:signal_processing_notification]") unless params[:signal_processing_notification].nil?
        type
      end
    end

    module EsamSignalProcessingNotification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EsamSignalProcessingNotification, context: context)
        type = Types::EsamSignalProcessingNotification.new
        type.scc_xml = params[:scc_xml]
        type
      end
    end

    module ExtendedDataServices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendedDataServices, context: context)
        type = Types::ExtendedDataServices.new
        type.copy_protection_action = params[:copy_protection_action]
        type.vchip_action = params[:vchip_action]
        type
      end
    end

    module F4vSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::F4vSettings, context: context)
        type = Types::F4vSettings.new
        type.moov_placement = params[:moov_placement]
        type
      end
    end

    module FileGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileGroupSettings, context: context)
        type = Types::FileGroupSettings.new
        type.destination = params[:destination]
        type.destination_settings = DestinationSettings.build(params[:destination_settings], context: "#{context}[:destination_settings]") unless params[:destination_settings].nil?
        type
      end
    end

    module FileSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSourceSettings, context: context)
        type = Types::FileSourceSettings.new
        type.convert608_to708 = params[:convert608_to708]
        type.framerate = CaptionSourceFramerate.build(params[:framerate], context: "#{context}[:framerate]") unless params[:framerate].nil?
        type.source_file = params[:source_file]
        type.time_delta = params[:time_delta]
        type.time_delta_units = params[:time_delta_units]
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

    module ForceIncludeRenditionSize
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForceIncludeRenditionSize, context: context)
        type = Types::ForceIncludeRenditionSize.new
        type.height = params[:height]
        type.width = params[:width]
        type
      end
    end

    module FrameCaptureSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameCaptureSettings, context: context)
        type = Types::FrameCaptureSettings.new
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.max_captures = params[:max_captures]
        type.quality = params[:quality]
        type
      end
    end

    module GetJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobInput, context: context)
        type = Types::GetJobInput.new
        type.id = params[:id]
        type
      end
    end

    module GetJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobOutput, context: context)
        type = Types::GetJobOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module GetJobTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobTemplateInput, context: context)
        type = Types::GetJobTemplateInput.new
        type.name = params[:name]
        type
      end
    end

    module GetJobTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobTemplateOutput, context: context)
        type = Types::GetJobTemplateOutput.new
        type.job_template = JobTemplate.build(params[:job_template], context: "#{context}[:job_template]") unless params[:job_template].nil?
        type
      end
    end

    module GetPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyInput, context: context)
        type = Types::GetPolicyInput.new
        type
      end
    end

    module GetPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyOutput, context: context)
        type = Types::GetPolicyOutput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module GetPresetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPresetInput, context: context)
        type = Types::GetPresetInput.new
        type.name = params[:name]
        type
      end
    end

    module GetPresetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPresetOutput, context: context)
        type = Types::GetPresetOutput.new
        type.preset = Preset.build(params[:preset], context: "#{context}[:preset]") unless params[:preset].nil?
        type
      end
    end

    module GetQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueueInput, context: context)
        type = Types::GetQueueInput.new
        type.name = params[:name]
        type
      end
    end

    module GetQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueueOutput, context: context)
        type = Types::GetQueueOutput.new
        type.queue = Queue.build(params[:queue], context: "#{context}[:queue]") unless params[:queue].nil?
        type
      end
    end

    module H264QvbrSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H264QvbrSettings, context: context)
        type = Types::H264QvbrSettings.new
        type.max_average_bitrate = params[:max_average_bitrate]
        type.qvbr_quality_level = params[:qvbr_quality_level]
        type.qvbr_quality_level_fine_tune = params[:qvbr_quality_level_fine_tune]
        type
      end
    end

    module H264Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H264Settings, context: context)
        type = Types::H264Settings.new
        type.adaptive_quantization = params[:adaptive_quantization]
        type.bitrate = params[:bitrate]
        type.codec_level = params[:codec_level]
        type.codec_profile = params[:codec_profile]
        type.dynamic_sub_gop = params[:dynamic_sub_gop]
        type.entropy_encoding = params[:entropy_encoding]
        type.field_encoding = params[:field_encoding]
        type.flicker_adaptive_quantization = params[:flicker_adaptive_quantization]
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.gop_b_reference = params[:gop_b_reference]
        type.gop_closed_cadence = params[:gop_closed_cadence]
        type.gop_size = params[:gop_size]
        type.gop_size_units = params[:gop_size_units]
        type.hrd_buffer_initial_fill_percentage = params[:hrd_buffer_initial_fill_percentage]
        type.hrd_buffer_size = params[:hrd_buffer_size]
        type.interlace_mode = params[:interlace_mode]
        type.max_bitrate = params[:max_bitrate]
        type.min_i_interval = params[:min_i_interval]
        type.number_b_frames_between_reference_frames = params[:number_b_frames_between_reference_frames]
        type.number_reference_frames = params[:number_reference_frames]
        type.par_control = params[:par_control]
        type.par_denominator = params[:par_denominator]
        type.par_numerator = params[:par_numerator]
        type.quality_tuning_level = params[:quality_tuning_level]
        type.qvbr_settings = H264QvbrSettings.build(params[:qvbr_settings], context: "#{context}[:qvbr_settings]") unless params[:qvbr_settings].nil?
        type.rate_control_mode = params[:rate_control_mode]
        type.repeat_pps = params[:repeat_pps]
        type.scan_type_conversion_mode = params[:scan_type_conversion_mode]
        type.scene_change_detect = params[:scene_change_detect]
        type.slices = params[:slices]
        type.slow_pal = params[:slow_pal]
        type.softness = params[:softness]
        type.spatial_adaptive_quantization = params[:spatial_adaptive_quantization]
        type.syntax = params[:syntax]
        type.telecine = params[:telecine]
        type.temporal_adaptive_quantization = params[:temporal_adaptive_quantization]
        type.unregistered_sei_timecode = params[:unregistered_sei_timecode]
        type
      end
    end

    module H265QvbrSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H265QvbrSettings, context: context)
        type = Types::H265QvbrSettings.new
        type.max_average_bitrate = params[:max_average_bitrate]
        type.qvbr_quality_level = params[:qvbr_quality_level]
        type.qvbr_quality_level_fine_tune = params[:qvbr_quality_level_fine_tune]
        type
      end
    end

    module H265Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::H265Settings, context: context)
        type = Types::H265Settings.new
        type.adaptive_quantization = params[:adaptive_quantization]
        type.alternate_transfer_function_sei = params[:alternate_transfer_function_sei]
        type.bitrate = params[:bitrate]
        type.codec_level = params[:codec_level]
        type.codec_profile = params[:codec_profile]
        type.dynamic_sub_gop = params[:dynamic_sub_gop]
        type.flicker_adaptive_quantization = params[:flicker_adaptive_quantization]
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.gop_b_reference = params[:gop_b_reference]
        type.gop_closed_cadence = params[:gop_closed_cadence]
        type.gop_size = params[:gop_size]
        type.gop_size_units = params[:gop_size_units]
        type.hrd_buffer_initial_fill_percentage = params[:hrd_buffer_initial_fill_percentage]
        type.hrd_buffer_size = params[:hrd_buffer_size]
        type.interlace_mode = params[:interlace_mode]
        type.max_bitrate = params[:max_bitrate]
        type.min_i_interval = params[:min_i_interval]
        type.number_b_frames_between_reference_frames = params[:number_b_frames_between_reference_frames]
        type.number_reference_frames = params[:number_reference_frames]
        type.par_control = params[:par_control]
        type.par_denominator = params[:par_denominator]
        type.par_numerator = params[:par_numerator]
        type.quality_tuning_level = params[:quality_tuning_level]
        type.qvbr_settings = H265QvbrSettings.build(params[:qvbr_settings], context: "#{context}[:qvbr_settings]") unless params[:qvbr_settings].nil?
        type.rate_control_mode = params[:rate_control_mode]
        type.sample_adaptive_offset_filter_mode = params[:sample_adaptive_offset_filter_mode]
        type.scan_type_conversion_mode = params[:scan_type_conversion_mode]
        type.scene_change_detect = params[:scene_change_detect]
        type.slices = params[:slices]
        type.slow_pal = params[:slow_pal]
        type.spatial_adaptive_quantization = params[:spatial_adaptive_quantization]
        type.telecine = params[:telecine]
        type.temporal_adaptive_quantization = params[:temporal_adaptive_quantization]
        type.temporal_ids = params[:temporal_ids]
        type.tiles = params[:tiles]
        type.unregistered_sei_timecode = params[:unregistered_sei_timecode]
        type.write_mp4_packaging_type = params[:write_mp4_packaging_type]
        type
      end
    end

    module Hdr10Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Hdr10Metadata, context: context)
        type = Types::Hdr10Metadata.new
        type.blue_primary_x = params[:blue_primary_x]
        type.blue_primary_y = params[:blue_primary_y]
        type.green_primary_x = params[:green_primary_x]
        type.green_primary_y = params[:green_primary_y]
        type.max_content_light_level = params[:max_content_light_level]
        type.max_frame_average_light_level = params[:max_frame_average_light_level]
        type.max_luminance = params[:max_luminance]
        type.min_luminance = params[:min_luminance]
        type.red_primary_x = params[:red_primary_x]
        type.red_primary_y = params[:red_primary_y]
        type.white_point_x = params[:white_point_x]
        type.white_point_y = params[:white_point_y]
        type
      end
    end

    module Hdr10Plus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Hdr10Plus, context: context)
        type = Types::Hdr10Plus.new
        type.mastering_monitor_nits = params[:mastering_monitor_nits]
        type.target_monitor_nits = params[:target_monitor_nits]
        type
      end
    end

    module HlsAdditionalManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsAdditionalManifest, context: context)
        type = Types::HlsAdditionalManifest.new
        type.manifest_name_modifier = params[:manifest_name_modifier]
        type.selected_outputs = List____listOf__stringMin1.build(params[:selected_outputs], context: "#{context}[:selected_outputs]") unless params[:selected_outputs].nil?
        type
      end
    end

    module HlsCaptionLanguageMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsCaptionLanguageMapping, context: context)
        type = Types::HlsCaptionLanguageMapping.new
        type.caption_channel = params[:caption_channel]
        type.custom_language_code = params[:custom_language_code]
        type.language_code = params[:language_code]
        type.language_description = params[:language_description]
        type
      end
    end

    module HlsEncryptionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsEncryptionSettings, context: context)
        type = Types::HlsEncryptionSettings.new
        type.constant_initialization_vector = params[:constant_initialization_vector]
        type.encryption_method = params[:encryption_method]
        type.initialization_vector_in_manifest = params[:initialization_vector_in_manifest]
        type.offline_encrypted = params[:offline_encrypted]
        type.speke_key_provider = SpekeKeyProvider.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type.static_key_provider = StaticKeyProvider.build(params[:static_key_provider], context: "#{context}[:static_key_provider]") unless params[:static_key_provider].nil?
        type.type = params[:type]
        type
      end
    end

    module HlsGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsGroupSettings, context: context)
        type = Types::HlsGroupSettings.new
        type.ad_markers = List____listOfHlsAdMarkers.build(params[:ad_markers], context: "#{context}[:ad_markers]") unless params[:ad_markers].nil?
        type.additional_manifests = List____listOfHlsAdditionalManifest.build(params[:additional_manifests], context: "#{context}[:additional_manifests]") unless params[:additional_manifests].nil?
        type.audio_only_header = params[:audio_only_header]
        type.base_url = params[:base_url]
        type.caption_language_mappings = List____listOfHlsCaptionLanguageMapping.build(params[:caption_language_mappings], context: "#{context}[:caption_language_mappings]") unless params[:caption_language_mappings].nil?
        type.caption_language_setting = params[:caption_language_setting]
        type.caption_segment_length_control = params[:caption_segment_length_control]
        type.client_cache = params[:client_cache]
        type.codec_specification = params[:codec_specification]
        type.destination = params[:destination]
        type.destination_settings = DestinationSettings.build(params[:destination_settings], context: "#{context}[:destination_settings]") unless params[:destination_settings].nil?
        type.directory_structure = params[:directory_structure]
        type.encryption = HlsEncryptionSettings.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.image_based_trick_play = params[:image_based_trick_play]
        type.image_based_trick_play_settings = HlsImageBasedTrickPlaySettings.build(params[:image_based_trick_play_settings], context: "#{context}[:image_based_trick_play_settings]") unless params[:image_based_trick_play_settings].nil?
        type.manifest_compression = params[:manifest_compression]
        type.manifest_duration_format = params[:manifest_duration_format]
        type.min_final_segment_length = params[:min_final_segment_length]
        type.min_segment_length = params[:min_segment_length]
        type.output_selection = params[:output_selection]
        type.program_date_time = params[:program_date_time]
        type.program_date_time_period = params[:program_date_time_period]
        type.segment_control = params[:segment_control]
        type.segment_length = params[:segment_length]
        type.segment_length_control = params[:segment_length_control]
        type.segments_per_subdirectory = params[:segments_per_subdirectory]
        type.stream_inf_resolution = params[:stream_inf_resolution]
        type.target_duration_compatibility_mode = params[:target_duration_compatibility_mode]
        type.timed_metadata_id3_frame = params[:timed_metadata_id3_frame]
        type.timed_metadata_id3_period = params[:timed_metadata_id3_period]
        type.timestamp_delta_milliseconds = params[:timestamp_delta_milliseconds]
        type
      end
    end

    module HlsImageBasedTrickPlaySettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsImageBasedTrickPlaySettings, context: context)
        type = Types::HlsImageBasedTrickPlaySettings.new
        type.interval_cadence = params[:interval_cadence]
        type.thumbnail_height = params[:thumbnail_height]
        type.thumbnail_interval = params[:thumbnail_interval]
        type.thumbnail_width = params[:thumbnail_width]
        type.tile_height = params[:tile_height]
        type.tile_width = params[:tile_width]
        type
      end
    end

    module HlsRenditionGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsRenditionGroupSettings, context: context)
        type = Types::HlsRenditionGroupSettings.new
        type.rendition_group_id = params[:rendition_group_id]
        type.rendition_language_code = params[:rendition_language_code]
        type.rendition_name = params[:rendition_name]
        type
      end
    end

    module HlsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HlsSettings, context: context)
        type = Types::HlsSettings.new
        type.audio_group_id = params[:audio_group_id]
        type.audio_only_container = params[:audio_only_container]
        type.audio_rendition_sets = params[:audio_rendition_sets]
        type.audio_track_type = params[:audio_track_type]
        type.descriptive_video_service_flag = params[:descriptive_video_service_flag]
        type.i_frame_only_manifest = params[:i_frame_only_manifest]
        type.segment_modifier = params[:segment_modifier]
        type
      end
    end

    module HopDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HopDestination, context: context)
        type = Types::HopDestination.new
        type.priority = params[:priority]
        type.queue = params[:queue]
        type.wait_minutes = params[:wait_minutes]
        type
      end
    end

    module Id3Insertion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Id3Insertion, context: context)
        type = Types::Id3Insertion.new
        type.id3 = params[:id3]
        type.timecode = params[:timecode]
        type
      end
    end

    module ImageInserter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageInserter, context: context)
        type = Types::ImageInserter.new
        type.insertable_images = List____listOfInsertableImage.build(params[:insertable_images], context: "#{context}[:insertable_images]") unless params[:insertable_images].nil?
        type
      end
    end

    module ImscDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImscDestinationSettings, context: context)
        type = Types::ImscDestinationSettings.new
        type.accessibility = params[:accessibility]
        type.style_passthrough = params[:style_passthrough]
        type
      end
    end

    module Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Input, context: context)
        type = Types::Input.new
        type.audio_selector_groups = Map____mapOfAudioSelectorGroup.build(params[:audio_selector_groups], context: "#{context}[:audio_selector_groups]") unless params[:audio_selector_groups].nil?
        type.audio_selectors = Map____mapOfAudioSelector.build(params[:audio_selectors], context: "#{context}[:audio_selectors]") unless params[:audio_selectors].nil?
        type.caption_selectors = Map____mapOfCaptionSelector.build(params[:caption_selectors], context: "#{context}[:caption_selectors]") unless params[:caption_selectors].nil?
        type.crop = Rectangle.build(params[:crop], context: "#{context}[:crop]") unless params[:crop].nil?
        type.deblock_filter = params[:deblock_filter]
        type.decryption_settings = InputDecryptionSettings.build(params[:decryption_settings], context: "#{context}[:decryption_settings]") unless params[:decryption_settings].nil?
        type.denoise_filter = params[:denoise_filter]
        type.dolby_vision_metadata_xml = params[:dolby_vision_metadata_xml]
        type.file_input = params[:file_input]
        type.filter_enable = params[:filter_enable]
        type.filter_strength = params[:filter_strength]
        type.image_inserter = ImageInserter.build(params[:image_inserter], context: "#{context}[:image_inserter]") unless params[:image_inserter].nil?
        type.input_clippings = List____listOfInputClipping.build(params[:input_clippings], context: "#{context}[:input_clippings]") unless params[:input_clippings].nil?
        type.input_scan_type = params[:input_scan_type]
        type.position = Rectangle.build(params[:position], context: "#{context}[:position]") unless params[:position].nil?
        type.program_number = params[:program_number]
        type.psi_control = params[:psi_control]
        type.supplemental_imps = List____listOf__stringPatternS3ASSETMAPXml.build(params[:supplemental_imps], context: "#{context}[:supplemental_imps]") unless params[:supplemental_imps].nil?
        type.timecode_source = params[:timecode_source]
        type.timecode_start = params[:timecode_start]
        type.video_generator = InputVideoGenerator.build(params[:video_generator], context: "#{context}[:video_generator]") unless params[:video_generator].nil?
        type.video_selector = VideoSelector.build(params[:video_selector], context: "#{context}[:video_selector]") unless params[:video_selector].nil?
        type
      end
    end

    module InputClipping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputClipping, context: context)
        type = Types::InputClipping.new
        type.end_timecode = params[:end_timecode]
        type.start_timecode = params[:start_timecode]
        type
      end
    end

    module InputDecryptionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDecryptionSettings, context: context)
        type = Types::InputDecryptionSettings.new
        type.decryption_mode = params[:decryption_mode]
        type.encrypted_decryption_key = params[:encrypted_decryption_key]
        type.initialization_vector = params[:initialization_vector]
        type.kms_key_region = params[:kms_key_region]
        type
      end
    end

    module InputTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputTemplate, context: context)
        type = Types::InputTemplate.new
        type.audio_selector_groups = Map____mapOfAudioSelectorGroup.build(params[:audio_selector_groups], context: "#{context}[:audio_selector_groups]") unless params[:audio_selector_groups].nil?
        type.audio_selectors = Map____mapOfAudioSelector.build(params[:audio_selectors], context: "#{context}[:audio_selectors]") unless params[:audio_selectors].nil?
        type.caption_selectors = Map____mapOfCaptionSelector.build(params[:caption_selectors], context: "#{context}[:caption_selectors]") unless params[:caption_selectors].nil?
        type.crop = Rectangle.build(params[:crop], context: "#{context}[:crop]") unless params[:crop].nil?
        type.deblock_filter = params[:deblock_filter]
        type.denoise_filter = params[:denoise_filter]
        type.dolby_vision_metadata_xml = params[:dolby_vision_metadata_xml]
        type.filter_enable = params[:filter_enable]
        type.filter_strength = params[:filter_strength]
        type.image_inserter = ImageInserter.build(params[:image_inserter], context: "#{context}[:image_inserter]") unless params[:image_inserter].nil?
        type.input_clippings = List____listOfInputClipping.build(params[:input_clippings], context: "#{context}[:input_clippings]") unless params[:input_clippings].nil?
        type.input_scan_type = params[:input_scan_type]
        type.position = Rectangle.build(params[:position], context: "#{context}[:position]") unless params[:position].nil?
        type.program_number = params[:program_number]
        type.psi_control = params[:psi_control]
        type.timecode_source = params[:timecode_source]
        type.timecode_start = params[:timecode_start]
        type.video_selector = VideoSelector.build(params[:video_selector], context: "#{context}[:video_selector]") unless params[:video_selector].nil?
        type
      end
    end

    module InputVideoGenerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputVideoGenerator, context: context)
        type = Types::InputVideoGenerator.new
        type.duration = params[:duration]
        type
      end
    end

    module InsertableImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsertableImage, context: context)
        type = Types::InsertableImage.new
        type.duration = params[:duration]
        type.fade_in = params[:fade_in]
        type.fade_out = params[:fade_out]
        type.height = params[:height]
        type.image_inserter_input = params[:image_inserter_input]
        type.image_x = params[:image_x]
        type.image_y = params[:image_y]
        type.layer = params[:layer]
        type.opacity = params[:opacity]
        type.start_time = params[:start_time]
        type.width = params[:width]
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

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.acceleration_settings = AccelerationSettings.build(params[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless params[:acceleration_settings].nil?
        type.acceleration_status = params[:acceleration_status]
        type.arn = params[:arn]
        type.billing_tags_source = params[:billing_tags_source]
        type.created_at = params[:created_at]
        type.current_phase = params[:current_phase]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.hop_destinations = List____listOfHopDestination.build(params[:hop_destinations], context: "#{context}[:hop_destinations]") unless params[:hop_destinations].nil?
        type.id = params[:id]
        type.job_percent_complete = params[:job_percent_complete]
        type.job_template = params[:job_template]
        type.messages = JobMessages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.output_group_details = List____listOfOutputGroupDetail.build(params[:output_group_details], context: "#{context}[:output_group_details]") unless params[:output_group_details].nil?
        type.priority = params[:priority]
        type.queue = params[:queue]
        type.queue_transitions = List____listOfQueueTransition.build(params[:queue_transitions], context: "#{context}[:queue_transitions]") unless params[:queue_transitions].nil?
        type.retry_count = params[:retry_count]
        type.role = params[:role]
        type.settings = JobSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.simulate_reserved_queue = params[:simulate_reserved_queue]
        type.status = params[:status]
        type.status_update_interval = params[:status_update_interval]
        type.timing = Timing.build(params[:timing], context: "#{context}[:timing]") unless params[:timing].nil?
        type.user_metadata = Map____mapOf__string.build(params[:user_metadata], context: "#{context}[:user_metadata]") unless params[:user_metadata].nil?
        type
      end
    end

    module JobMessages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobMessages, context: context)
        type = Types::JobMessages.new
        type.info = List____listOf__string.build(params[:info], context: "#{context}[:info]") unless params[:info].nil?
        type.warning = List____listOf__string.build(params[:warning], context: "#{context}[:warning]") unless params[:warning].nil?
        type
      end
    end

    module JobSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobSettings, context: context)
        type = Types::JobSettings.new
        type.ad_avail_offset = params[:ad_avail_offset]
        type.avail_blanking = AvailBlanking.build(params[:avail_blanking], context: "#{context}[:avail_blanking]") unless params[:avail_blanking].nil?
        type.esam = EsamSettings.build(params[:esam], context: "#{context}[:esam]") unless params[:esam].nil?
        type.extended_data_services = ExtendedDataServices.build(params[:extended_data_services], context: "#{context}[:extended_data_services]") unless params[:extended_data_services].nil?
        type.inputs = List____listOfInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.kantar_watermark = KantarWatermarkSettings.build(params[:kantar_watermark], context: "#{context}[:kantar_watermark]") unless params[:kantar_watermark].nil?
        type.motion_image_inserter = MotionImageInserter.build(params[:motion_image_inserter], context: "#{context}[:motion_image_inserter]") unless params[:motion_image_inserter].nil?
        type.nielsen_configuration = NielsenConfiguration.build(params[:nielsen_configuration], context: "#{context}[:nielsen_configuration]") unless params[:nielsen_configuration].nil?
        type.nielsen_non_linear_watermark = NielsenNonLinearWatermarkSettings.build(params[:nielsen_non_linear_watermark], context: "#{context}[:nielsen_non_linear_watermark]") unless params[:nielsen_non_linear_watermark].nil?
        type.output_groups = List____listOfOutputGroup.build(params[:output_groups], context: "#{context}[:output_groups]") unless params[:output_groups].nil?
        type.timecode_config = TimecodeConfig.build(params[:timecode_config], context: "#{context}[:timecode_config]") unless params[:timecode_config].nil?
        type.timed_metadata_insertion = TimedMetadataInsertion.build(params[:timed_metadata_insertion], context: "#{context}[:timed_metadata_insertion]") unless params[:timed_metadata_insertion].nil?
        type
      end
    end

    module JobTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobTemplate, context: context)
        type = Types::JobTemplate.new
        type.acceleration_settings = AccelerationSettings.build(params[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless params[:acceleration_settings].nil?
        type.arn = params[:arn]
        type.category = params[:category]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.hop_destinations = List____listOfHopDestination.build(params[:hop_destinations], context: "#{context}[:hop_destinations]") unless params[:hop_destinations].nil?
        type.last_updated = params[:last_updated]
        type.name = params[:name]
        type.priority = params[:priority]
        type.queue = params[:queue]
        type.settings = JobTemplateSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.status_update_interval = params[:status_update_interval]
        type.type = params[:type]
        type
      end
    end

    module JobTemplateSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobTemplateSettings, context: context)
        type = Types::JobTemplateSettings.new
        type.ad_avail_offset = params[:ad_avail_offset]
        type.avail_blanking = AvailBlanking.build(params[:avail_blanking], context: "#{context}[:avail_blanking]") unless params[:avail_blanking].nil?
        type.esam = EsamSettings.build(params[:esam], context: "#{context}[:esam]") unless params[:esam].nil?
        type.extended_data_services = ExtendedDataServices.build(params[:extended_data_services], context: "#{context}[:extended_data_services]") unless params[:extended_data_services].nil?
        type.inputs = List____listOfInputTemplate.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.kantar_watermark = KantarWatermarkSettings.build(params[:kantar_watermark], context: "#{context}[:kantar_watermark]") unless params[:kantar_watermark].nil?
        type.motion_image_inserter = MotionImageInserter.build(params[:motion_image_inserter], context: "#{context}[:motion_image_inserter]") unless params[:motion_image_inserter].nil?
        type.nielsen_configuration = NielsenConfiguration.build(params[:nielsen_configuration], context: "#{context}[:nielsen_configuration]") unless params[:nielsen_configuration].nil?
        type.nielsen_non_linear_watermark = NielsenNonLinearWatermarkSettings.build(params[:nielsen_non_linear_watermark], context: "#{context}[:nielsen_non_linear_watermark]") unless params[:nielsen_non_linear_watermark].nil?
        type.output_groups = List____listOfOutputGroup.build(params[:output_groups], context: "#{context}[:output_groups]") unless params[:output_groups].nil?
        type.timecode_config = TimecodeConfig.build(params[:timecode_config], context: "#{context}[:timecode_config]") unless params[:timecode_config].nil?
        type.timed_metadata_insertion = TimedMetadataInsertion.build(params[:timed_metadata_insertion], context: "#{context}[:timed_metadata_insertion]") unless params[:timed_metadata_insertion].nil?
        type
      end
    end

    module KantarWatermarkSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KantarWatermarkSettings, context: context)
        type = Types::KantarWatermarkSettings.new
        type.channel_name = params[:channel_name]
        type.content_reference = params[:content_reference]
        type.credentials_secret_name = params[:credentials_secret_name]
        type.file_offset = params[:file_offset]
        type.kantar_license_id = params[:kantar_license_id]
        type.kantar_server_url = params[:kantar_server_url]
        type.log_destination = params[:log_destination]
        type.metadata3 = params[:metadata3]
        type.metadata4 = params[:metadata4]
        type.metadata5 = params[:metadata5]
        type.metadata6 = params[:metadata6]
        type.metadata7 = params[:metadata7]
        type.metadata8 = params[:metadata8]
        type
      end
    end

    module ListJobTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobTemplatesInput, context: context)
        type = Types::ListJobTemplatesInput.new
        type.category = params[:category]
        type.list_by = params[:list_by]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.order = params[:order]
        type
      end
    end

    module ListJobTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobTemplatesOutput, context: context)
        type = Types::ListJobTemplatesOutput.new
        type.job_templates = List____listOfJobTemplate.build(params[:job_templates], context: "#{context}[:job_templates]") unless params[:job_templates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.order = params[:order]
        type.queue = params[:queue]
        type.status = params[:status]
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.jobs = List____listOfJob.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPresetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPresetsInput, context: context)
        type = Types::ListPresetsInput.new
        type.category = params[:category]
        type.list_by = params[:list_by]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.order = params[:order]
        type
      end
    end

    module ListPresetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPresetsOutput, context: context)
        type = Types::ListPresetsOutput.new
        type.next_token = params[:next_token]
        type.presets = List____listOfPreset.build(params[:presets], context: "#{context}[:presets]") unless params[:presets].nil?
        type
      end
    end

    module ListQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueuesInput, context: context)
        type = Types::ListQueuesInput.new
        type.list_by = params[:list_by]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.order = params[:order]
        type
      end
    end

    module ListQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueuesOutput, context: context)
        type = Types::ListQueuesOutput.new
        type.next_token = params[:next_token]
        type.queues = List____listOfQueue.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.arn = params[:arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.resource_tags = ResourceTags.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module M2tsScte35Esam
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::M2tsScte35Esam, context: context)
        type = Types::M2tsScte35Esam.new
        type.scte35_esam_pid = params[:scte35_esam_pid]
        type
      end
    end

    module M2tsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::M2tsSettings, context: context)
        type = Types::M2tsSettings.new
        type.audio_buffer_model = params[:audio_buffer_model]
        type.audio_duration = params[:audio_duration]
        type.audio_frames_per_pes = params[:audio_frames_per_pes]
        type.audio_pids = List____listOf__integerMin32Max8182.build(params[:audio_pids], context: "#{context}[:audio_pids]") unless params[:audio_pids].nil?
        type.bitrate = params[:bitrate]
        type.buffer_model = params[:buffer_model]
        type.data_pts_control = params[:data_pts_control]
        type.dvb_nit_settings = DvbNitSettings.build(params[:dvb_nit_settings], context: "#{context}[:dvb_nit_settings]") unless params[:dvb_nit_settings].nil?
        type.dvb_sdt_settings = DvbSdtSettings.build(params[:dvb_sdt_settings], context: "#{context}[:dvb_sdt_settings]") unless params[:dvb_sdt_settings].nil?
        type.dvb_sub_pids = List____listOf__integerMin32Max8182.build(params[:dvb_sub_pids], context: "#{context}[:dvb_sub_pids]") unless params[:dvb_sub_pids].nil?
        type.dvb_tdt_settings = DvbTdtSettings.build(params[:dvb_tdt_settings], context: "#{context}[:dvb_tdt_settings]") unless params[:dvb_tdt_settings].nil?
        type.dvb_teletext_pid = params[:dvb_teletext_pid]
        type.ebp_audio_interval = params[:ebp_audio_interval]
        type.ebp_placement = params[:ebp_placement]
        type.es_rate_in_pes = params[:es_rate_in_pes]
        type.force_ts_video_ebp_order = params[:force_ts_video_ebp_order]
        type.fragment_time = params[:fragment_time]
        type.klv_metadata = params[:klv_metadata]
        type.max_pcr_interval = params[:max_pcr_interval]
        type.min_ebp_interval = params[:min_ebp_interval]
        type.nielsen_id3 = params[:nielsen_id3]
        type.null_packet_bitrate = params[:null_packet_bitrate]
        type.pat_interval = params[:pat_interval]
        type.pcr_control = params[:pcr_control]
        type.pcr_pid = params[:pcr_pid]
        type.pmt_interval = params[:pmt_interval]
        type.pmt_pid = params[:pmt_pid]
        type.private_metadata_pid = params[:private_metadata_pid]
        type.program_number = params[:program_number]
        type.rate_mode = params[:rate_mode]
        type.scte35_esam = M2tsScte35Esam.build(params[:scte35_esam], context: "#{context}[:scte35_esam]") unless params[:scte35_esam].nil?
        type.scte35_pid = params[:scte35_pid]
        type.scte35_source = params[:scte35_source]
        type.segmentation_markers = params[:segmentation_markers]
        type.segmentation_style = params[:segmentation_style]
        type.segmentation_time = params[:segmentation_time]
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
        type.audio_duration = params[:audio_duration]
        type.audio_frames_per_pes = params[:audio_frames_per_pes]
        type.audio_pids = List____listOf__integerMin32Max8182.build(params[:audio_pids], context: "#{context}[:audio_pids]") unless params[:audio_pids].nil?
        type.data_pts_control = params[:data_pts_control]
        type.max_pcr_interval = params[:max_pcr_interval]
        type.nielsen_id3 = params[:nielsen_id3]
        type.pat_interval = params[:pat_interval]
        type.pcr_control = params[:pcr_control]
        type.pcr_pid = params[:pcr_pid]
        type.pmt_interval = params[:pmt_interval]
        type.pmt_pid = params[:pmt_pid]
        type.private_metadata_pid = params[:private_metadata_pid]
        type.program_number = params[:program_number]
        type.scte35_pid = params[:scte35_pid]
        type.scte35_source = params[:scte35_source]
        type.timed_metadata = params[:timed_metadata]
        type.timed_metadata_pid = params[:timed_metadata_pid]
        type.transport_stream_id = params[:transport_stream_id]
        type.video_pid = params[:video_pid]
        type
      end
    end

    module MinBottomRenditionSize
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MinBottomRenditionSize, context: context)
        type = Types::MinBottomRenditionSize.new
        type.height = params[:height]
        type.width = params[:width]
        type
      end
    end

    module MinTopRenditionSize
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MinTopRenditionSize, context: context)
        type = Types::MinTopRenditionSize.new
        type.height = params[:height]
        type.width = params[:width]
        type
      end
    end

    module MotionImageInserter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MotionImageInserter, context: context)
        type = Types::MotionImageInserter.new
        type.framerate = MotionImageInsertionFramerate.build(params[:framerate], context: "#{context}[:framerate]") unless params[:framerate].nil?
        type.input = params[:input]
        type.insertion_mode = params[:insertion_mode]
        type.offset = MotionImageInsertionOffset.build(params[:offset], context: "#{context}[:offset]") unless params[:offset].nil?
        type.playback = params[:playback]
        type.start_time = params[:start_time]
        type
      end
    end

    module MotionImageInsertionFramerate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MotionImageInsertionFramerate, context: context)
        type = Types::MotionImageInsertionFramerate.new
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type
      end
    end

    module MotionImageInsertionOffset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MotionImageInsertionOffset, context: context)
        type = Types::MotionImageInsertionOffset.new
        type.image_x = params[:image_x]
        type.image_y = params[:image_y]
        type
      end
    end

    module MovSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MovSettings, context: context)
        type = Types::MovSettings.new
        type.clap_atom = params[:clap_atom]
        type.cslg_atom = params[:cslg_atom]
        type.mpeg2_four_cc_control = params[:mpeg2_four_cc_control]
        type.padding_control = params[:padding_control]
        type.reference = params[:reference]
        type
      end
    end

    module Mp2Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mp2Settings, context: context)
        type = Types::Mp2Settings.new
        type.bitrate = params[:bitrate]
        type.channels = params[:channels]
        type.sample_rate = params[:sample_rate]
        type
      end
    end

    module Mp3Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mp3Settings, context: context)
        type = Types::Mp3Settings.new
        type.bitrate = params[:bitrate]
        type.channels = params[:channels]
        type.rate_control_mode = params[:rate_control_mode]
        type.sample_rate = params[:sample_rate]
        type.vbr_quality = params[:vbr_quality]
        type
      end
    end

    module Mp4Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mp4Settings, context: context)
        type = Types::Mp4Settings.new
        type.audio_duration = params[:audio_duration]
        type.cslg_atom = params[:cslg_atom]
        type.ctts_version = params[:ctts_version]
        type.free_space_box = params[:free_space_box]
        type.moov_placement = params[:moov_placement]
        type.mp4_major_brand = params[:mp4_major_brand]
        type
      end
    end

    module MpdSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MpdSettings, context: context)
        type = Types::MpdSettings.new
        type.accessibility_caption_hints = params[:accessibility_caption_hints]
        type.audio_duration = params[:audio_duration]
        type.caption_container_type = params[:caption_container_type]
        type.klv_metadata = params[:klv_metadata]
        type.scte35_esam = params[:scte35_esam]
        type.scte35_source = params[:scte35_source]
        type.timed_metadata = params[:timed_metadata]
        type
      end
    end

    module Mpeg2Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mpeg2Settings, context: context)
        type = Types::Mpeg2Settings.new
        type.adaptive_quantization = params[:adaptive_quantization]
        type.bitrate = params[:bitrate]
        type.codec_level = params[:codec_level]
        type.codec_profile = params[:codec_profile]
        type.dynamic_sub_gop = params[:dynamic_sub_gop]
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.gop_closed_cadence = params[:gop_closed_cadence]
        type.gop_size = params[:gop_size]
        type.gop_size_units = params[:gop_size_units]
        type.hrd_buffer_initial_fill_percentage = params[:hrd_buffer_initial_fill_percentage]
        type.hrd_buffer_size = params[:hrd_buffer_size]
        type.interlace_mode = params[:interlace_mode]
        type.intra_dc_precision = params[:intra_dc_precision]
        type.max_bitrate = params[:max_bitrate]
        type.min_i_interval = params[:min_i_interval]
        type.number_b_frames_between_reference_frames = params[:number_b_frames_between_reference_frames]
        type.par_control = params[:par_control]
        type.par_denominator = params[:par_denominator]
        type.par_numerator = params[:par_numerator]
        type.quality_tuning_level = params[:quality_tuning_level]
        type.rate_control_mode = params[:rate_control_mode]
        type.scan_type_conversion_mode = params[:scan_type_conversion_mode]
        type.scene_change_detect = params[:scene_change_detect]
        type.slow_pal = params[:slow_pal]
        type.softness = params[:softness]
        type.spatial_adaptive_quantization = params[:spatial_adaptive_quantization]
        type.syntax = params[:syntax]
        type.telecine = params[:telecine]
        type.temporal_adaptive_quantization = params[:temporal_adaptive_quantization]
        type
      end
    end

    module MsSmoothAdditionalManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MsSmoothAdditionalManifest, context: context)
        type = Types::MsSmoothAdditionalManifest.new
        type.manifest_name_modifier = params[:manifest_name_modifier]
        type.selected_outputs = List____listOf__stringMin1.build(params[:selected_outputs], context: "#{context}[:selected_outputs]") unless params[:selected_outputs].nil?
        type
      end
    end

    module MsSmoothEncryptionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MsSmoothEncryptionSettings, context: context)
        type = Types::MsSmoothEncryptionSettings.new
        type.speke_key_provider = SpekeKeyProvider.build(params[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless params[:speke_key_provider].nil?
        type
      end
    end

    module MsSmoothGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MsSmoothGroupSettings, context: context)
        type = Types::MsSmoothGroupSettings.new
        type.additional_manifests = List____listOfMsSmoothAdditionalManifest.build(params[:additional_manifests], context: "#{context}[:additional_manifests]") unless params[:additional_manifests].nil?
        type.audio_deduplication = params[:audio_deduplication]
        type.destination = params[:destination]
        type.destination_settings = DestinationSettings.build(params[:destination_settings], context: "#{context}[:destination_settings]") unless params[:destination_settings].nil?
        type.encryption = MsSmoothEncryptionSettings.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.fragment_length = params[:fragment_length]
        type.fragment_length_control = params[:fragment_length_control]
        type.manifest_encoding = params[:manifest_encoding]
        type
      end
    end

    module MxfSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MxfSettings, context: context)
        type = Types::MxfSettings.new
        type.afd_signaling = params[:afd_signaling]
        type.profile = params[:profile]
        type.xavc_profile_settings = MxfXavcProfileSettings.build(params[:xavc_profile_settings], context: "#{context}[:xavc_profile_settings]") unless params[:xavc_profile_settings].nil?
        type
      end
    end

    module MxfXavcProfileSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MxfXavcProfileSettings, context: context)
        type = Types::MxfXavcProfileSettings.new
        type.duration_mode = params[:duration_mode]
        type.max_anc_data_size = params[:max_anc_data_size]
        type
      end
    end

    module NexGuardFileMarkerSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NexGuardFileMarkerSettings, context: context)
        type = Types::NexGuardFileMarkerSettings.new
        type.license = params[:license]
        type.payload = params[:payload]
        type.preset = params[:preset]
        type.strength = params[:strength]
        type
      end
    end

    module NielsenConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NielsenConfiguration, context: context)
        type = Types::NielsenConfiguration.new
        type.breakout_code = params[:breakout_code]
        type.distributor_id = params[:distributor_id]
        type
      end
    end

    module NielsenNonLinearWatermarkSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NielsenNonLinearWatermarkSettings, context: context)
        type = Types::NielsenNonLinearWatermarkSettings.new
        type.active_watermark_process = params[:active_watermark_process]
        type.adi_filename = params[:adi_filename]
        type.asset_id = params[:asset_id]
        type.asset_name = params[:asset_name]
        type.cbet_source_id = params[:cbet_source_id]
        type.episode_id = params[:episode_id]
        type.metadata_destination = params[:metadata_destination]
        type.source_id = params[:source_id]
        type.source_watermark_status = params[:source_watermark_status]
        type.tic_server_url = params[:tic_server_url]
        type.unique_tic_per_audio_track = params[:unique_tic_per_audio_track]
        type
      end
    end

    module NoiseReducer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoiseReducer, context: context)
        type = Types::NoiseReducer.new
        type.filter = params[:filter]
        type.filter_settings = NoiseReducerFilterSettings.build(params[:filter_settings], context: "#{context}[:filter_settings]") unless params[:filter_settings].nil?
        type.spatial_filter_settings = NoiseReducerSpatialFilterSettings.build(params[:spatial_filter_settings], context: "#{context}[:spatial_filter_settings]") unless params[:spatial_filter_settings].nil?
        type.temporal_filter_settings = NoiseReducerTemporalFilterSettings.build(params[:temporal_filter_settings], context: "#{context}[:temporal_filter_settings]") unless params[:temporal_filter_settings].nil?
        type
      end
    end

    module NoiseReducerFilterSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoiseReducerFilterSettings, context: context)
        type = Types::NoiseReducerFilterSettings.new
        type.strength = params[:strength]
        type
      end
    end

    module NoiseReducerSpatialFilterSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoiseReducerSpatialFilterSettings, context: context)
        type = Types::NoiseReducerSpatialFilterSettings.new
        type.post_filter_sharpen_strength = params[:post_filter_sharpen_strength]
        type.speed = params[:speed]
        type.strength = params[:strength]
        type
      end
    end

    module NoiseReducerTemporalFilterSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoiseReducerTemporalFilterSettings, context: context)
        type = Types::NoiseReducerTemporalFilterSettings.new
        type.aggressive_mode = params[:aggressive_mode]
        type.post_temporal_sharpening = params[:post_temporal_sharpening]
        type.post_temporal_sharpening_strength = params[:post_temporal_sharpening_strength]
        type.speed = params[:speed]
        type.strength = params[:strength]
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

    module OpusSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpusSettings, context: context)
        type = Types::OpusSettings.new
        type.bitrate = params[:bitrate]
        type.channels = params[:channels]
        type.sample_rate = params[:sample_rate]
        type
      end
    end

    module Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Output, context: context)
        type = Types::Output.new
        type.audio_descriptions = List____listOfAudioDescription.build(params[:audio_descriptions], context: "#{context}[:audio_descriptions]") unless params[:audio_descriptions].nil?
        type.caption_descriptions = List____listOfCaptionDescription.build(params[:caption_descriptions], context: "#{context}[:caption_descriptions]") unless params[:caption_descriptions].nil?
        type.container_settings = ContainerSettings.build(params[:container_settings], context: "#{context}[:container_settings]") unless params[:container_settings].nil?
        type.extension = params[:extension]
        type.name_modifier = params[:name_modifier]
        type.output_settings = OutputSettings.build(params[:output_settings], context: "#{context}[:output_settings]") unless params[:output_settings].nil?
        type.preset = params[:preset]
        type.video_description = VideoDescription.build(params[:video_description], context: "#{context}[:video_description]") unless params[:video_description].nil?
        type
      end
    end

    module OutputChannelMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputChannelMapping, context: context)
        type = Types::OutputChannelMapping.new
        type.input_channels = List____listOf__integerMinNegative60Max6.build(params[:input_channels], context: "#{context}[:input_channels]") unless params[:input_channels].nil?
        type.input_channels_fine_tune = List____listOf__doubleMinNegative60Max6.build(params[:input_channels_fine_tune], context: "#{context}[:input_channels_fine_tune]") unless params[:input_channels_fine_tune].nil?
        type
      end
    end

    module OutputDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDetail, context: context)
        type = Types::OutputDetail.new
        type.duration_in_ms = params[:duration_in_ms]
        type.video_details = VideoDetail.build(params[:video_details], context: "#{context}[:video_details]") unless params[:video_details].nil?
        type
      end
    end

    module OutputGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputGroup, context: context)
        type = Types::OutputGroup.new
        type.automated_encoding_settings = AutomatedEncodingSettings.build(params[:automated_encoding_settings], context: "#{context}[:automated_encoding_settings]") unless params[:automated_encoding_settings].nil?
        type.custom_name = params[:custom_name]
        type.name = params[:name]
        type.output_group_settings = OutputGroupSettings.build(params[:output_group_settings], context: "#{context}[:output_group_settings]") unless params[:output_group_settings].nil?
        type.outputs = List____listOfOutput.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module OutputGroupDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputGroupDetail, context: context)
        type = Types::OutputGroupDetail.new
        type.output_details = List____listOfOutputDetail.build(params[:output_details], context: "#{context}[:output_details]") unless params[:output_details].nil?
        type
      end
    end

    module OutputGroupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputGroupSettings, context: context)
        type = Types::OutputGroupSettings.new
        type.cmaf_group_settings = CmafGroupSettings.build(params[:cmaf_group_settings], context: "#{context}[:cmaf_group_settings]") unless params[:cmaf_group_settings].nil?
        type.dash_iso_group_settings = DashIsoGroupSettings.build(params[:dash_iso_group_settings], context: "#{context}[:dash_iso_group_settings]") unless params[:dash_iso_group_settings].nil?
        type.file_group_settings = FileGroupSettings.build(params[:file_group_settings], context: "#{context}[:file_group_settings]") unless params[:file_group_settings].nil?
        type.hls_group_settings = HlsGroupSettings.build(params[:hls_group_settings], context: "#{context}[:hls_group_settings]") unless params[:hls_group_settings].nil?
        type.ms_smooth_group_settings = MsSmoothGroupSettings.build(params[:ms_smooth_group_settings], context: "#{context}[:ms_smooth_group_settings]") unless params[:ms_smooth_group_settings].nil?
        type.type = params[:type]
        type
      end
    end

    module OutputSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputSettings, context: context)
        type = Types::OutputSettings.new
        type.hls_settings = HlsSettings.build(params[:hls_settings], context: "#{context}[:hls_settings]") unless params[:hls_settings].nil?
        type
      end
    end

    module PartnerWatermarking
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartnerWatermarking, context: context)
        type = Types::PartnerWatermarking.new
        type.nexguard_file_marker_settings = NexGuardFileMarkerSettings.build(params[:nexguard_file_marker_settings], context: "#{context}[:nexguard_file_marker_settings]") unless params[:nexguard_file_marker_settings].nil?
        type
      end
    end

    module Policy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Policy, context: context)
        type = Types::Policy.new
        type.http_inputs = params[:http_inputs]
        type.https_inputs = params[:https_inputs]
        type.s3_inputs = params[:s3_inputs]
        type
      end
    end

    module Preset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Preset, context: context)
        type = Types::Preset.new
        type.arn = params[:arn]
        type.category = params[:category]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.last_updated = params[:last_updated]
        type.name = params[:name]
        type.settings = PresetSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.type = params[:type]
        type
      end
    end

    module PresetSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PresetSettings, context: context)
        type = Types::PresetSettings.new
        type.audio_descriptions = List____listOfAudioDescription.build(params[:audio_descriptions], context: "#{context}[:audio_descriptions]") unless params[:audio_descriptions].nil?
        type.caption_descriptions = List____listOfCaptionDescriptionPreset.build(params[:caption_descriptions], context: "#{context}[:caption_descriptions]") unless params[:caption_descriptions].nil?
        type.container_settings = ContainerSettings.build(params[:container_settings], context: "#{context}[:container_settings]") unless params[:container_settings].nil?
        type.video_description = VideoDescription.build(params[:video_description], context: "#{context}[:video_description]") unless params[:video_description].nil?
        type
      end
    end

    module ProresSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProresSettings, context: context)
        type = Types::ProresSettings.new
        type.chroma_sampling = params[:chroma_sampling]
        type.codec_profile = params[:codec_profile]
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.interlace_mode = params[:interlace_mode]
        type.par_control = params[:par_control]
        type.par_denominator = params[:par_denominator]
        type.par_numerator = params[:par_numerator]
        type.scan_type_conversion_mode = params[:scan_type_conversion_mode]
        type.slow_pal = params[:slow_pal]
        type.telecine = params[:telecine]
        type
      end
    end

    module PutPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPolicyInput, context: context)
        type = Types::PutPolicyInput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module PutPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPolicyOutput, context: context)
        type = Types::PutPolicyOutput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module Queue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Queue, context: context)
        type = Types::Queue.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.last_updated = params[:last_updated]
        type.name = params[:name]
        type.pricing_plan = params[:pricing_plan]
        type.progressing_jobs_count = params[:progressing_jobs_count]
        type.reservation_plan = ReservationPlan.build(params[:reservation_plan], context: "#{context}[:reservation_plan]") unless params[:reservation_plan].nil?
        type.status = params[:status]
        type.submitted_jobs_count = params[:submitted_jobs_count]
        type.type = params[:type]
        type
      end
    end

    module QueueTransition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueueTransition, context: context)
        type = Types::QueueTransition.new
        type.destination_queue = params[:destination_queue]
        type.source_queue = params[:source_queue]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module Rectangle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rectangle, context: context)
        type = Types::Rectangle.new
        type.height = params[:height]
        type.width = params[:width]
        type.x = params[:x]
        type.y = params[:y]
        type
      end
    end

    module RemixSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemixSettings, context: context)
        type = Types::RemixSettings.new
        type.channel_mapping = ChannelMapping.build(params[:channel_mapping], context: "#{context}[:channel_mapping]") unless params[:channel_mapping].nil?
        type.channels_in = params[:channels_in]
        type.channels_out = params[:channels_out]
        type
      end
    end

    module ReservationPlan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationPlan, context: context)
        type = Types::ReservationPlan.new
        type.commitment = params[:commitment]
        type.expires_at = params[:expires_at]
        type.purchased_at = params[:purchased_at]
        type.renewal_type = params[:renewal_type]
        type.reserved_slots = params[:reserved_slots]
        type.status = params[:status]
        type
      end
    end

    module ReservationPlanSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationPlanSettings, context: context)
        type = Types::ReservationPlanSettings.new
        type.commitment = params[:commitment]
        type.renewal_type = params[:renewal_type]
        type.reserved_slots = params[:reserved_slots]
        type
      end
    end

    module ResourceTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTags, context: context)
        type = Types::ResourceTags.new
        type.arn = params[:arn]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module S3DestinationAccessControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationAccessControl, context: context)
        type = Types::S3DestinationAccessControl.new
        type.canned_acl = params[:canned_acl]
        type
      end
    end

    module S3DestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationSettings, context: context)
        type = Types::S3DestinationSettings.new
        type.access_control = S3DestinationAccessControl.build(params[:access_control], context: "#{context}[:access_control]") unless params[:access_control].nil?
        type.encryption = S3EncryptionSettings.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type
      end
    end

    module S3EncryptionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3EncryptionSettings, context: context)
        type = Types::S3EncryptionSettings.new
        type.encryption_type = params[:encryption_type]
        type.kms_encryption_context = params[:kms_encryption_context]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module SccDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SccDestinationSettings, context: context)
        type = Types::SccDestinationSettings.new
        type.framerate = params[:framerate]
        type
      end
    end

    module SpekeKeyProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpekeKeyProvider, context: context)
        type = Types::SpekeKeyProvider.new
        type.certificate_arn = params[:certificate_arn]
        type.resource_id = params[:resource_id]
        type.system_ids = List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12.build(params[:system_ids], context: "#{context}[:system_ids]") unless params[:system_ids].nil?
        type.url = params[:url]
        type
      end
    end

    module SpekeKeyProviderCmaf
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpekeKeyProviderCmaf, context: context)
        type = Types::SpekeKeyProviderCmaf.new
        type.certificate_arn = params[:certificate_arn]
        type.dash_signaled_system_ids = List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.build(params[:dash_signaled_system_ids], context: "#{context}[:dash_signaled_system_ids]") unless params[:dash_signaled_system_ids].nil?
        type.hls_signaled_system_ids = List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.build(params[:hls_signaled_system_ids], context: "#{context}[:hls_signaled_system_ids]") unless params[:hls_signaled_system_ids].nil?
        type.resource_id = params[:resource_id]
        type.url = params[:url]
        type
      end
    end

    module SrtDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SrtDestinationSettings, context: context)
        type = Types::SrtDestinationSettings.new
        type.style_passthrough = params[:style_passthrough]
        type
      end
    end

    module StaticKeyProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaticKeyProvider, context: context)
        type = Types::StaticKeyProvider.new
        type.key_format = params[:key_format]
        type.key_format_versions = params[:key_format_versions]
        type.static_key_value = params[:static_key_value]
        type.url = params[:url]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.arn = params[:arn]
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

    module TeletextDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TeletextDestinationSettings, context: context)
        type = Types::TeletextDestinationSettings.new
        type.page_number = params[:page_number]
        type.page_types = List____listOfTeletextPageType.build(params[:page_types], context: "#{context}[:page_types]") unless params[:page_types].nil?
        type
      end
    end

    module TeletextSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TeletextSourceSettings, context: context)
        type = Types::TeletextSourceSettings.new
        type.page_number = params[:page_number]
        type
      end
    end

    module TimecodeBurnin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimecodeBurnin, context: context)
        type = Types::TimecodeBurnin.new
        type.font_size = params[:font_size]
        type.position = params[:position]
        type.prefix = params[:prefix]
        type
      end
    end

    module TimecodeConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimecodeConfig, context: context)
        type = Types::TimecodeConfig.new
        type.anchor = params[:anchor]
        type.source = params[:source]
        type.start = params[:start]
        type.timestamp_offset = params[:timestamp_offset]
        type
      end
    end

    module TimedMetadataInsertion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimedMetadataInsertion, context: context)
        type = Types::TimedMetadataInsertion.new
        type.id3_insertions = List____listOfId3Insertion.build(params[:id3_insertions], context: "#{context}[:id3_insertions]") unless params[:id3_insertions].nil?
        type
      end
    end

    module Timing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Timing, context: context)
        type = Types::Timing.new
        type.finish_time = params[:finish_time]
        type.start_time = params[:start_time]
        type.submit_time = params[:submit_time]
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

    module TrackSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrackSourceSettings, context: context)
        type = Types::TrackSourceSettings.new
        type.track_number = params[:track_number]
        type
      end
    end

    module TtmlDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TtmlDestinationSettings, context: context)
        type = Types::TtmlDestinationSettings.new
        type.style_passthrough = params[:style_passthrough]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.arn = params[:arn]
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

    module UpdateJobTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobTemplateInput, context: context)
        type = Types::UpdateJobTemplateInput.new
        type.acceleration_settings = AccelerationSettings.build(params[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless params[:acceleration_settings].nil?
        type.category = params[:category]
        type.description = params[:description]
        type.hop_destinations = List____listOfHopDestination.build(params[:hop_destinations], context: "#{context}[:hop_destinations]") unless params[:hop_destinations].nil?
        type.name = params[:name]
        type.priority = params[:priority]
        type.queue = params[:queue]
        type.settings = JobTemplateSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.status_update_interval = params[:status_update_interval]
        type
      end
    end

    module UpdateJobTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobTemplateOutput, context: context)
        type = Types::UpdateJobTemplateOutput.new
        type.job_template = JobTemplate.build(params[:job_template], context: "#{context}[:job_template]") unless params[:job_template].nil?
        type
      end
    end

    module UpdatePresetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePresetInput, context: context)
        type = Types::UpdatePresetInput.new
        type.category = params[:category]
        type.description = params[:description]
        type.name = params[:name]
        type.settings = PresetSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module UpdatePresetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePresetOutput, context: context)
        type = Types::UpdatePresetOutput.new
        type.preset = Preset.build(params[:preset], context: "#{context}[:preset]") unless params[:preset].nil?
        type
      end
    end

    module UpdateQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueInput, context: context)
        type = Types::UpdateQueueInput.new
        type.description = params[:description]
        type.name = params[:name]
        type.reservation_plan_settings = ReservationPlanSettings.build(params[:reservation_plan_settings], context: "#{context}[:reservation_plan_settings]") unless params[:reservation_plan_settings].nil?
        type.status = params[:status]
        type
      end
    end

    module UpdateQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueOutput, context: context)
        type = Types::UpdateQueueOutput.new
        type.queue = Queue.build(params[:queue], context: "#{context}[:queue]") unless params[:queue].nil?
        type
      end
    end

    module Vc3Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Vc3Settings, context: context)
        type = Types::Vc3Settings.new
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.interlace_mode = params[:interlace_mode]
        type.scan_type_conversion_mode = params[:scan_type_conversion_mode]
        type.slow_pal = params[:slow_pal]
        type.telecine = params[:telecine]
        type.vc3_class = params[:vc3_class]
        type
      end
    end

    module VideoCodecSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoCodecSettings, context: context)
        type = Types::VideoCodecSettings.new
        type.av1_settings = Av1Settings.build(params[:av1_settings], context: "#{context}[:av1_settings]") unless params[:av1_settings].nil?
        type.avc_intra_settings = AvcIntraSettings.build(params[:avc_intra_settings], context: "#{context}[:avc_intra_settings]") unless params[:avc_intra_settings].nil?
        type.codec = params[:codec]
        type.frame_capture_settings = FrameCaptureSettings.build(params[:frame_capture_settings], context: "#{context}[:frame_capture_settings]") unless params[:frame_capture_settings].nil?
        type.h264_settings = H264Settings.build(params[:h264_settings], context: "#{context}[:h264_settings]") unless params[:h264_settings].nil?
        type.h265_settings = H265Settings.build(params[:h265_settings], context: "#{context}[:h265_settings]") unless params[:h265_settings].nil?
        type.mpeg2_settings = Mpeg2Settings.build(params[:mpeg2_settings], context: "#{context}[:mpeg2_settings]") unless params[:mpeg2_settings].nil?
        type.prores_settings = ProresSettings.build(params[:prores_settings], context: "#{context}[:prores_settings]") unless params[:prores_settings].nil?
        type.vc3_settings = Vc3Settings.build(params[:vc3_settings], context: "#{context}[:vc3_settings]") unless params[:vc3_settings].nil?
        type.vp8_settings = Vp8Settings.build(params[:vp8_settings], context: "#{context}[:vp8_settings]") unless params[:vp8_settings].nil?
        type.vp9_settings = Vp9Settings.build(params[:vp9_settings], context: "#{context}[:vp9_settings]") unless params[:vp9_settings].nil?
        type.xavc_settings = XavcSettings.build(params[:xavc_settings], context: "#{context}[:xavc_settings]") unless params[:xavc_settings].nil?
        type
      end
    end

    module VideoDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoDescription, context: context)
        type = Types::VideoDescription.new
        type.afd_signaling = params[:afd_signaling]
        type.anti_alias = params[:anti_alias]
        type.codec_settings = VideoCodecSettings.build(params[:codec_settings], context: "#{context}[:codec_settings]") unless params[:codec_settings].nil?
        type.color_metadata = params[:color_metadata]
        type.crop = Rectangle.build(params[:crop], context: "#{context}[:crop]") unless params[:crop].nil?
        type.drop_frame_timecode = params[:drop_frame_timecode]
        type.fixed_afd = params[:fixed_afd]
        type.height = params[:height]
        type.position = Rectangle.build(params[:position], context: "#{context}[:position]") unless params[:position].nil?
        type.respond_to_afd = params[:respond_to_afd]
        type.scaling_behavior = params[:scaling_behavior]
        type.sharpness = params[:sharpness]
        type.timecode_insertion = params[:timecode_insertion]
        type.video_preprocessors = VideoPreprocessor.build(params[:video_preprocessors], context: "#{context}[:video_preprocessors]") unless params[:video_preprocessors].nil?
        type.width = params[:width]
        type
      end
    end

    module VideoDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoDetail, context: context)
        type = Types::VideoDetail.new
        type.height_in_px = params[:height_in_px]
        type.width_in_px = params[:width_in_px]
        type
      end
    end

    module VideoPreprocessor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoPreprocessor, context: context)
        type = Types::VideoPreprocessor.new
        type.color_corrector = ColorCorrector.build(params[:color_corrector], context: "#{context}[:color_corrector]") unless params[:color_corrector].nil?
        type.deinterlacer = Deinterlacer.build(params[:deinterlacer], context: "#{context}[:deinterlacer]") unless params[:deinterlacer].nil?
        type.dolby_vision = DolbyVision.build(params[:dolby_vision], context: "#{context}[:dolby_vision]") unless params[:dolby_vision].nil?
        type.hdr10_plus = Hdr10Plus.build(params[:hdr10_plus], context: "#{context}[:hdr10_plus]") unless params[:hdr10_plus].nil?
        type.image_inserter = ImageInserter.build(params[:image_inserter], context: "#{context}[:image_inserter]") unless params[:image_inserter].nil?
        type.noise_reducer = NoiseReducer.build(params[:noise_reducer], context: "#{context}[:noise_reducer]") unless params[:noise_reducer].nil?
        type.partner_watermarking = PartnerWatermarking.build(params[:partner_watermarking], context: "#{context}[:partner_watermarking]") unless params[:partner_watermarking].nil?
        type.timecode_burnin = TimecodeBurnin.build(params[:timecode_burnin], context: "#{context}[:timecode_burnin]") unless params[:timecode_burnin].nil?
        type
      end
    end

    module VideoSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoSelector, context: context)
        type = Types::VideoSelector.new
        type.alpha_behavior = params[:alpha_behavior]
        type.color_space = params[:color_space]
        type.color_space_usage = params[:color_space_usage]
        type.embedded_timecode_override = params[:embedded_timecode_override]
        type.hdr10_metadata = Hdr10Metadata.build(params[:hdr10_metadata], context: "#{context}[:hdr10_metadata]") unless params[:hdr10_metadata].nil?
        type.pad_video = params[:pad_video]
        type.pid = params[:pid]
        type.program_number = params[:program_number]
        type.rotate = params[:rotate]
        type.sample_range = params[:sample_range]
        type
      end
    end

    module VorbisSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VorbisSettings, context: context)
        type = Types::VorbisSettings.new
        type.channels = params[:channels]
        type.sample_rate = params[:sample_rate]
        type.vbr_quality = params[:vbr_quality]
        type
      end
    end

    module Vp8Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Vp8Settings, context: context)
        type = Types::Vp8Settings.new
        type.bitrate = params[:bitrate]
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.gop_size = params[:gop_size]
        type.hrd_buffer_size = params[:hrd_buffer_size]
        type.max_bitrate = params[:max_bitrate]
        type.par_control = params[:par_control]
        type.par_denominator = params[:par_denominator]
        type.par_numerator = params[:par_numerator]
        type.quality_tuning_level = params[:quality_tuning_level]
        type.rate_control_mode = params[:rate_control_mode]
        type
      end
    end

    module Vp9Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Vp9Settings, context: context)
        type = Types::Vp9Settings.new
        type.bitrate = params[:bitrate]
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.gop_size = params[:gop_size]
        type.hrd_buffer_size = params[:hrd_buffer_size]
        type.max_bitrate = params[:max_bitrate]
        type.par_control = params[:par_control]
        type.par_denominator = params[:par_denominator]
        type.par_numerator = params[:par_numerator]
        type.quality_tuning_level = params[:quality_tuning_level]
        type.rate_control_mode = params[:rate_control_mode]
        type
      end
    end

    module WavSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WavSettings, context: context)
        type = Types::WavSettings.new
        type.bit_depth = params[:bit_depth]
        type.channels = params[:channels]
        type.format = params[:format]
        type.sample_rate = params[:sample_rate]
        type
      end
    end

    module WebvttDestinationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebvttDestinationSettings, context: context)
        type = Types::WebvttDestinationSettings.new
        type.accessibility = params[:accessibility]
        type.style_passthrough = params[:style_passthrough]
        type
      end
    end

    module WebvttHlsSourceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebvttHlsSourceSettings, context: context)
        type = Types::WebvttHlsSourceSettings.new
        type.rendition_group_id = params[:rendition_group_id]
        type.rendition_language_code = params[:rendition_language_code]
        type.rendition_name = params[:rendition_name]
        type
      end
    end

    module Xavc4kIntraCbgProfileSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Xavc4kIntraCbgProfileSettings, context: context)
        type = Types::Xavc4kIntraCbgProfileSettings.new
        type.xavc_class = params[:xavc_class]
        type
      end
    end

    module Xavc4kIntraVbrProfileSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Xavc4kIntraVbrProfileSettings, context: context)
        type = Types::Xavc4kIntraVbrProfileSettings.new
        type.xavc_class = params[:xavc_class]
        type
      end
    end

    module Xavc4kProfileSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Xavc4kProfileSettings, context: context)
        type = Types::Xavc4kProfileSettings.new
        type.bitrate_class = params[:bitrate_class]
        type.codec_profile = params[:codec_profile]
        type.flicker_adaptive_quantization = params[:flicker_adaptive_quantization]
        type.gop_b_reference = params[:gop_b_reference]
        type.gop_closed_cadence = params[:gop_closed_cadence]
        type.hrd_buffer_size = params[:hrd_buffer_size]
        type.quality_tuning_level = params[:quality_tuning_level]
        type.slices = params[:slices]
        type
      end
    end

    module XavcHdIntraCbgProfileSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::XavcHdIntraCbgProfileSettings, context: context)
        type = Types::XavcHdIntraCbgProfileSettings.new
        type.xavc_class = params[:xavc_class]
        type
      end
    end

    module XavcHdProfileSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::XavcHdProfileSettings, context: context)
        type = Types::XavcHdProfileSettings.new
        type.bitrate_class = params[:bitrate_class]
        type.flicker_adaptive_quantization = params[:flicker_adaptive_quantization]
        type.gop_b_reference = params[:gop_b_reference]
        type.gop_closed_cadence = params[:gop_closed_cadence]
        type.hrd_buffer_size = params[:hrd_buffer_size]
        type.interlace_mode = params[:interlace_mode]
        type.quality_tuning_level = params[:quality_tuning_level]
        type.slices = params[:slices]
        type.telecine = params[:telecine]
        type
      end
    end

    module XavcSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::XavcSettings, context: context)
        type = Types::XavcSettings.new
        type.adaptive_quantization = params[:adaptive_quantization]
        type.entropy_encoding = params[:entropy_encoding]
        type.framerate_control = params[:framerate_control]
        type.framerate_conversion_algorithm = params[:framerate_conversion_algorithm]
        type.framerate_denominator = params[:framerate_denominator]
        type.framerate_numerator = params[:framerate_numerator]
        type.profile = params[:profile]
        type.slow_pal = params[:slow_pal]
        type.softness = params[:softness]
        type.spatial_adaptive_quantization = params[:spatial_adaptive_quantization]
        type.temporal_adaptive_quantization = params[:temporal_adaptive_quantization]
        type.xavc4k_intra_cbg_profile_settings = Xavc4kIntraCbgProfileSettings.build(params[:xavc4k_intra_cbg_profile_settings], context: "#{context}[:xavc4k_intra_cbg_profile_settings]") unless params[:xavc4k_intra_cbg_profile_settings].nil?
        type.xavc4k_intra_vbr_profile_settings = Xavc4kIntraVbrProfileSettings.build(params[:xavc4k_intra_vbr_profile_settings], context: "#{context}[:xavc4k_intra_vbr_profile_settings]") unless params[:xavc4k_intra_vbr_profile_settings].nil?
        type.xavc4k_profile_settings = Xavc4kProfileSettings.build(params[:xavc4k_profile_settings], context: "#{context}[:xavc4k_profile_settings]") unless params[:xavc4k_profile_settings].nil?
        type.xavc_hd_intra_cbg_profile_settings = XavcHdIntraCbgProfileSettings.build(params[:xavc_hd_intra_cbg_profile_settings], context: "#{context}[:xavc_hd_intra_cbg_profile_settings]") unless params[:xavc_hd_intra_cbg_profile_settings].nil?
        type.xavc_hd_profile_settings = XavcHdProfileSettings.build(params[:xavc_hd_profile_settings], context: "#{context}[:xavc_hd_profile_settings]") unless params[:xavc_hd_profile_settings].nil?
        type
      end
    end

    module List____listOfAllowedRenditionSize
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AllowedRenditionSize.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module List____listOfAutomatedAbrRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutomatedAbrRule.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module List____listOfCaptionDescriptionPreset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CaptionDescriptionPreset.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCmafAdditionalManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CmafAdditionalManifest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDashAdditionalManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashAdditionalManifest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Endpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfForceIncludeRenditionSize
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ForceIncludeRenditionSize.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module List____listOfHlsAdditionalManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HlsAdditionalManifest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfHlsCaptionLanguageMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HlsCaptionLanguageMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfHopDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HopDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfId3Insertion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Id3Insertion.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module List____listOfInputClipping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputClipping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInputTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputTemplate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInsertableImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsertableImage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Job.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfJobTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobTemplate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMsSmoothAdditionalManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MsSmoothAdditionalManifest.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module List____listOfOutputChannelMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputChannelMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfOutputDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module List____listOfOutputGroupDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputGroupDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfPreset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Preset.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfQueue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Queue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfQueueTransition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueueTransition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfTeletextPageType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__doubleMinNegative60Max6
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__integerMin1Max2147483647
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__integerMin32Max8182
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__integerMinNegative60Max6
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

    module List____listOf__stringMin1
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__stringPatternS3ASSETMAPXml
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Map____mapOfAudioSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AudioSelector.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Map____mapOfAudioSelectorGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AudioSelectorGroup.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Map____mapOfCaptionSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = CaptionSelector.build(value, context: "#{context}[:#{key}]") unless value.nil?
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
