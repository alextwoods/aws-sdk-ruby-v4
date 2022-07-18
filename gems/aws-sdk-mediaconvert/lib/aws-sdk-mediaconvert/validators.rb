# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MediaConvert
  module Validators

    class AacSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AacSettings, context: context)
        Hearth::Validator.validate!(input[:audio_description_broadcaster_mix], ::String, context: "#{context}[:audio_description_broadcaster_mix]")
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:codec_profile], ::String, context: "#{context}[:codec_profile]")
        Hearth::Validator.validate!(input[:coding_mode], ::String, context: "#{context}[:coding_mode]")
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
        Hearth::Validator.validate!(input[:raw_format], ::String, context: "#{context}[:raw_format]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:specification], ::String, context: "#{context}[:specification]")
        Hearth::Validator.validate!(input[:vbr_quality], ::String, context: "#{context}[:vbr_quality]")
      end
    end

    class Ac3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ac3Settings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:bitstream_mode], ::String, context: "#{context}[:bitstream_mode]")
        Hearth::Validator.validate!(input[:coding_mode], ::String, context: "#{context}[:coding_mode]")
        Hearth::Validator.validate!(input[:dialnorm], ::Integer, context: "#{context}[:dialnorm]")
        Hearth::Validator.validate!(input[:dynamic_range_compression_line], ::String, context: "#{context}[:dynamic_range_compression_line]")
        Hearth::Validator.validate!(input[:dynamic_range_compression_profile], ::String, context: "#{context}[:dynamic_range_compression_profile]")
        Hearth::Validator.validate!(input[:dynamic_range_compression_rf], ::String, context: "#{context}[:dynamic_range_compression_rf]")
        Hearth::Validator.validate!(input[:lfe_filter], ::String, context: "#{context}[:lfe_filter]")
        Hearth::Validator.validate!(input[:metadata_control], ::String, context: "#{context}[:metadata_control]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
      end
    end

    class AccelerationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccelerationSettings, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class AiffSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AiffSettings, context: context)
        Hearth::Validator.validate!(input[:bit_depth], ::Integer, context: "#{context}[:bit_depth]")
        Hearth::Validator.validate!(input[:channels], ::Integer, context: "#{context}[:channels]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
      end
    end

    class AllowedRenditionSize
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllowedRenditionSize, context: context)
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:required], ::String, context: "#{context}[:required]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class AncillarySourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AncillarySourceSettings, context: context)
        Hearth::Validator.validate!(input[:convert608_to708], ::String, context: "#{context}[:convert608_to708]")
        Hearth::Validator.validate!(input[:source_ancillary_channel_number], ::Integer, context: "#{context}[:source_ancillary_channel_number]")
        Hearth::Validator.validate!(input[:terminate_captions], ::String, context: "#{context}[:terminate_captions]")
      end
    end

    class AssociateCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateCertificateInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class AssociateCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateCertificateOutput, context: context)
      end
    end

    class AudioChannelTaggingSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioChannelTaggingSettings, context: context)
        Hearth::Validator.validate!(input[:channel_tag], ::String, context: "#{context}[:channel_tag]")
      end
    end

    class AudioCodecSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioCodecSettings, context: context)
        AacSettings.validate!(input[:aac_settings], context: "#{context}[:aac_settings]") unless input[:aac_settings].nil?
        Ac3Settings.validate!(input[:ac3_settings], context: "#{context}[:ac3_settings]") unless input[:ac3_settings].nil?
        AiffSettings.validate!(input[:aiff_settings], context: "#{context}[:aiff_settings]") unless input[:aiff_settings].nil?
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Eac3AtmosSettings.validate!(input[:eac3_atmos_settings], context: "#{context}[:eac3_atmos_settings]") unless input[:eac3_atmos_settings].nil?
        Eac3Settings.validate!(input[:eac3_settings], context: "#{context}[:eac3_settings]") unless input[:eac3_settings].nil?
        Mp2Settings.validate!(input[:mp2_settings], context: "#{context}[:mp2_settings]") unless input[:mp2_settings].nil?
        Mp3Settings.validate!(input[:mp3_settings], context: "#{context}[:mp3_settings]") unless input[:mp3_settings].nil?
        OpusSettings.validate!(input[:opus_settings], context: "#{context}[:opus_settings]") unless input[:opus_settings].nil?
        VorbisSettings.validate!(input[:vorbis_settings], context: "#{context}[:vorbis_settings]") unless input[:vorbis_settings].nil?
        WavSettings.validate!(input[:wav_settings], context: "#{context}[:wav_settings]") unless input[:wav_settings].nil?
      end
    end

    class AudioDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioDescription, context: context)
        AudioChannelTaggingSettings.validate!(input[:audio_channel_tagging_settings], context: "#{context}[:audio_channel_tagging_settings]") unless input[:audio_channel_tagging_settings].nil?
        AudioNormalizationSettings.validate!(input[:audio_normalization_settings], context: "#{context}[:audio_normalization_settings]") unless input[:audio_normalization_settings].nil?
        Hearth::Validator.validate!(input[:audio_source_name], ::String, context: "#{context}[:audio_source_name]")
        Hearth::Validator.validate!(input[:audio_type], ::Integer, context: "#{context}[:audio_type]")
        Hearth::Validator.validate!(input[:audio_type_control], ::String, context: "#{context}[:audio_type_control]")
        AudioCodecSettings.validate!(input[:codec_settings], context: "#{context}[:codec_settings]") unless input[:codec_settings].nil?
        Hearth::Validator.validate!(input[:custom_language_code], ::String, context: "#{context}[:custom_language_code]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:language_code_control], ::String, context: "#{context}[:language_code_control]")
        RemixSettings.validate!(input[:remix_settings], context: "#{context}[:remix_settings]") unless input[:remix_settings].nil?
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class AudioNormalizationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioNormalizationSettings, context: context)
        Hearth::Validator.validate!(input[:algorithm], ::String, context: "#{context}[:algorithm]")
        Hearth::Validator.validate!(input[:algorithm_control], ::String, context: "#{context}[:algorithm_control]")
        Hearth::Validator.validate!(input[:correction_gate_level], ::Integer, context: "#{context}[:correction_gate_level]")
        Hearth::Validator.validate!(input[:loudness_logging], ::String, context: "#{context}[:loudness_logging]")
        Hearth::Validator.validate!(input[:peak_calculation], ::String, context: "#{context}[:peak_calculation]")
        Hearth::Validator.validate!(input[:target_lkfs], ::Float, context: "#{context}[:target_lkfs]")
      end
    end

    class AudioSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioSelector, context: context)
        Hearth::Validator.validate!(input[:custom_language_code], ::String, context: "#{context}[:custom_language_code]")
        Hearth::Validator.validate!(input[:default_selection], ::String, context: "#{context}[:default_selection]")
        Hearth::Validator.validate!(input[:external_audio_file_input], ::String, context: "#{context}[:external_audio_file_input]")
        HlsRenditionGroupSettings.validate!(input[:hls_rendition_group_settings], context: "#{context}[:hls_rendition_group_settings]") unless input[:hls_rendition_group_settings].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:offset], ::Integer, context: "#{context}[:offset]")
        List____listOf__integerMin1Max2147483647.validate!(input[:pids], context: "#{context}[:pids]") unless input[:pids].nil?
        Hearth::Validator.validate!(input[:program_selection], ::Integer, context: "#{context}[:program_selection]")
        RemixSettings.validate!(input[:remix_settings], context: "#{context}[:remix_settings]") unless input[:remix_settings].nil?
        Hearth::Validator.validate!(input[:selector_type], ::String, context: "#{context}[:selector_type]")
        List____listOf__integerMin1Max2147483647.validate!(input[:tracks], context: "#{context}[:tracks]") unless input[:tracks].nil?
      end
    end

    class AudioSelectorGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioSelectorGroup, context: context)
        List____listOf__stringMin1.validate!(input[:audio_selector_names], context: "#{context}[:audio_selector_names]") unless input[:audio_selector_names].nil?
      end
    end

    class AutomatedAbrRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomatedAbrRule, context: context)
        List____listOfAllowedRenditionSize.validate!(input[:allowed_renditions], context: "#{context}[:allowed_renditions]") unless input[:allowed_renditions].nil?
        List____listOfForceIncludeRenditionSize.validate!(input[:force_include_renditions], context: "#{context}[:force_include_renditions]") unless input[:force_include_renditions].nil?
        MinBottomRenditionSize.validate!(input[:min_bottom_rendition_size], context: "#{context}[:min_bottom_rendition_size]") unless input[:min_bottom_rendition_size].nil?
        MinTopRenditionSize.validate!(input[:min_top_rendition_size], context: "#{context}[:min_top_rendition_size]") unless input[:min_top_rendition_size].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AutomatedAbrSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomatedAbrSettings, context: context)
        Hearth::Validator.validate!(input[:max_abr_bitrate], ::Integer, context: "#{context}[:max_abr_bitrate]")
        Hearth::Validator.validate!(input[:max_renditions], ::Integer, context: "#{context}[:max_renditions]")
        Hearth::Validator.validate!(input[:min_abr_bitrate], ::Integer, context: "#{context}[:min_abr_bitrate]")
        List____listOfAutomatedAbrRule.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class AutomatedEncodingSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomatedEncodingSettings, context: context)
        AutomatedAbrSettings.validate!(input[:abr_settings], context: "#{context}[:abr_settings]") unless input[:abr_settings].nil?
      end
    end

    class Av1QvbrSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Av1QvbrSettings, context: context)
        Hearth::Validator.validate!(input[:qvbr_quality_level], ::Integer, context: "#{context}[:qvbr_quality_level]")
        Hearth::Validator.validate!(input[:qvbr_quality_level_fine_tune], ::Float, context: "#{context}[:qvbr_quality_level_fine_tune]")
      end
    end

    class Av1Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Av1Settings, context: context)
        Hearth::Validator.validate!(input[:adaptive_quantization], ::String, context: "#{context}[:adaptive_quantization]")
        Hearth::Validator.validate!(input[:bit_depth], ::String, context: "#{context}[:bit_depth]")
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:gop_size], ::Float, context: "#{context}[:gop_size]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:number_b_frames_between_reference_frames], ::Integer, context: "#{context}[:number_b_frames_between_reference_frames]")
        Av1QvbrSettings.validate!(input[:qvbr_settings], context: "#{context}[:qvbr_settings]") unless input[:qvbr_settings].nil?
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
        Hearth::Validator.validate!(input[:slices], ::Integer, context: "#{context}[:slices]")
        Hearth::Validator.validate!(input[:spatial_adaptive_quantization], ::String, context: "#{context}[:spatial_adaptive_quantization]")
      end
    end

    class AvailBlanking
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailBlanking, context: context)
        Hearth::Validator.validate!(input[:avail_blanking_image], ::String, context: "#{context}[:avail_blanking_image]")
      end
    end

    class AvcIntraSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvcIntraSettings, context: context)
        Hearth::Validator.validate!(input[:avc_intra_class], ::String, context: "#{context}[:avc_intra_class]")
        AvcIntraUhdSettings.validate!(input[:avc_intra_uhd_settings], context: "#{context}[:avc_intra_uhd_settings]") unless input[:avc_intra_uhd_settings].nil?
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:interlace_mode], ::String, context: "#{context}[:interlace_mode]")
        Hearth::Validator.validate!(input[:scan_type_conversion_mode], ::String, context: "#{context}[:scan_type_conversion_mode]")
        Hearth::Validator.validate!(input[:slow_pal], ::String, context: "#{context}[:slow_pal]")
        Hearth::Validator.validate!(input[:telecine], ::String, context: "#{context}[:telecine]")
      end
    end

    class AvcIntraUhdSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvcIntraUhdSettings, context: context)
        Hearth::Validator.validate!(input[:quality_tuning_level], ::String, context: "#{context}[:quality_tuning_level]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BurninDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BurninDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:alignment], ::String, context: "#{context}[:alignment]")
        Hearth::Validator.validate!(input[:apply_font_color], ::String, context: "#{context}[:apply_font_color]")
        Hearth::Validator.validate!(input[:background_color], ::String, context: "#{context}[:background_color]")
        Hearth::Validator.validate!(input[:background_opacity], ::Integer, context: "#{context}[:background_opacity]")
        Hearth::Validator.validate!(input[:fallback_font], ::String, context: "#{context}[:fallback_font]")
        Hearth::Validator.validate!(input[:font_color], ::String, context: "#{context}[:font_color]")
        Hearth::Validator.validate!(input[:font_opacity], ::Integer, context: "#{context}[:font_opacity]")
        Hearth::Validator.validate!(input[:font_resolution], ::Integer, context: "#{context}[:font_resolution]")
        Hearth::Validator.validate!(input[:font_script], ::String, context: "#{context}[:font_script]")
        Hearth::Validator.validate!(input[:font_size], ::Integer, context: "#{context}[:font_size]")
        Hearth::Validator.validate!(input[:hex_font_color], ::String, context: "#{context}[:hex_font_color]")
        Hearth::Validator.validate!(input[:outline_color], ::String, context: "#{context}[:outline_color]")
        Hearth::Validator.validate!(input[:outline_size], ::Integer, context: "#{context}[:outline_size]")
        Hearth::Validator.validate!(input[:shadow_color], ::String, context: "#{context}[:shadow_color]")
        Hearth::Validator.validate!(input[:shadow_opacity], ::Integer, context: "#{context}[:shadow_opacity]")
        Hearth::Validator.validate!(input[:shadow_x_offset], ::Integer, context: "#{context}[:shadow_x_offset]")
        Hearth::Validator.validate!(input[:shadow_y_offset], ::Integer, context: "#{context}[:shadow_y_offset]")
        Hearth::Validator.validate!(input[:style_passthrough], ::String, context: "#{context}[:style_passthrough]")
        Hearth::Validator.validate!(input[:teletext_spacing], ::String, context: "#{context}[:teletext_spacing]")
        Hearth::Validator.validate!(input[:x_position], ::Integer, context: "#{context}[:x_position]")
        Hearth::Validator.validate!(input[:y_position], ::Integer, context: "#{context}[:y_position]")
      end
    end

    class CancelJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CancelJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobOutput, context: context)
      end
    end

    class CaptionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionDescription, context: context)
        Hearth::Validator.validate!(input[:caption_selector_name], ::String, context: "#{context}[:caption_selector_name]")
        Hearth::Validator.validate!(input[:custom_language_code], ::String, context: "#{context}[:custom_language_code]")
        CaptionDestinationSettings.validate!(input[:destination_settings], context: "#{context}[:destination_settings]") unless input[:destination_settings].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:language_description], ::String, context: "#{context}[:language_description]")
      end
    end

    class CaptionDescriptionPreset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionDescriptionPreset, context: context)
        Hearth::Validator.validate!(input[:custom_language_code], ::String, context: "#{context}[:custom_language_code]")
        CaptionDestinationSettings.validate!(input[:destination_settings], context: "#{context}[:destination_settings]") unless input[:destination_settings].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:language_description], ::String, context: "#{context}[:language_description]")
      end
    end

    class CaptionDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionDestinationSettings, context: context)
        BurninDestinationSettings.validate!(input[:burnin_destination_settings], context: "#{context}[:burnin_destination_settings]") unless input[:burnin_destination_settings].nil?
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        DvbSubDestinationSettings.validate!(input[:dvb_sub_destination_settings], context: "#{context}[:dvb_sub_destination_settings]") unless input[:dvb_sub_destination_settings].nil?
        EmbeddedDestinationSettings.validate!(input[:embedded_destination_settings], context: "#{context}[:embedded_destination_settings]") unless input[:embedded_destination_settings].nil?
        ImscDestinationSettings.validate!(input[:imsc_destination_settings], context: "#{context}[:imsc_destination_settings]") unless input[:imsc_destination_settings].nil?
        SccDestinationSettings.validate!(input[:scc_destination_settings], context: "#{context}[:scc_destination_settings]") unless input[:scc_destination_settings].nil?
        SrtDestinationSettings.validate!(input[:srt_destination_settings], context: "#{context}[:srt_destination_settings]") unless input[:srt_destination_settings].nil?
        TeletextDestinationSettings.validate!(input[:teletext_destination_settings], context: "#{context}[:teletext_destination_settings]") unless input[:teletext_destination_settings].nil?
        TtmlDestinationSettings.validate!(input[:ttml_destination_settings], context: "#{context}[:ttml_destination_settings]") unless input[:ttml_destination_settings].nil?
        WebvttDestinationSettings.validate!(input[:webvtt_destination_settings], context: "#{context}[:webvtt_destination_settings]") unless input[:webvtt_destination_settings].nil?
      end
    end

    class CaptionSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionSelector, context: context)
        Hearth::Validator.validate!(input[:custom_language_code], ::String, context: "#{context}[:custom_language_code]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        CaptionSourceSettings.validate!(input[:source_settings], context: "#{context}[:source_settings]") unless input[:source_settings].nil?
      end
    end

    class CaptionSourceFramerate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionSourceFramerate, context: context)
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
      end
    end

    class CaptionSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptionSourceSettings, context: context)
        AncillarySourceSettings.validate!(input[:ancillary_source_settings], context: "#{context}[:ancillary_source_settings]") unless input[:ancillary_source_settings].nil?
        DvbSubSourceSettings.validate!(input[:dvb_sub_source_settings], context: "#{context}[:dvb_sub_source_settings]") unless input[:dvb_sub_source_settings].nil?
        EmbeddedSourceSettings.validate!(input[:embedded_source_settings], context: "#{context}[:embedded_source_settings]") unless input[:embedded_source_settings].nil?
        FileSourceSettings.validate!(input[:file_source_settings], context: "#{context}[:file_source_settings]") unless input[:file_source_settings].nil?
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        TeletextSourceSettings.validate!(input[:teletext_source_settings], context: "#{context}[:teletext_source_settings]") unless input[:teletext_source_settings].nil?
        TrackSourceSettings.validate!(input[:track_source_settings], context: "#{context}[:track_source_settings]") unless input[:track_source_settings].nil?
        WebvttHlsSourceSettings.validate!(input[:webvtt_hls_source_settings], context: "#{context}[:webvtt_hls_source_settings]") unless input[:webvtt_hls_source_settings].nil?
      end
    end

    class ChannelMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMapping, context: context)
        List____listOfOutputChannelMapping.validate!(input[:output_channels], context: "#{context}[:output_channels]") unless input[:output_channels].nil?
      end
    end

    class CmafAdditionalManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmafAdditionalManifest, context: context)
        Hearth::Validator.validate!(input[:manifest_name_modifier], ::String, context: "#{context}[:manifest_name_modifier]")
        List____listOf__stringMin1.validate!(input[:selected_outputs], context: "#{context}[:selected_outputs]") unless input[:selected_outputs].nil?
      end
    end

    class CmafEncryptionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmafEncryptionSettings, context: context)
        Hearth::Validator.validate!(input[:constant_initialization_vector], ::String, context: "#{context}[:constant_initialization_vector]")
        Hearth::Validator.validate!(input[:encryption_method], ::String, context: "#{context}[:encryption_method]")
        Hearth::Validator.validate!(input[:initialization_vector_in_manifest], ::String, context: "#{context}[:initialization_vector_in_manifest]")
        SpekeKeyProviderCmaf.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
        StaticKeyProvider.validate!(input[:static_key_provider], context: "#{context}[:static_key_provider]") unless input[:static_key_provider].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CmafGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmafGroupSettings, context: context)
        List____listOfCmafAdditionalManifest.validate!(input[:additional_manifests], context: "#{context}[:additional_manifests]") unless input[:additional_manifests].nil?
        Hearth::Validator.validate!(input[:base_url], ::String, context: "#{context}[:base_url]")
        Hearth::Validator.validate!(input[:client_cache], ::String, context: "#{context}[:client_cache]")
        Hearth::Validator.validate!(input[:codec_specification], ::String, context: "#{context}[:codec_specification]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        DestinationSettings.validate!(input[:destination_settings], context: "#{context}[:destination_settings]") unless input[:destination_settings].nil?
        CmafEncryptionSettings.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:fragment_length], ::Integer, context: "#{context}[:fragment_length]")
        Hearth::Validator.validate!(input[:image_based_trick_play], ::String, context: "#{context}[:image_based_trick_play]")
        CmafImageBasedTrickPlaySettings.validate!(input[:image_based_trick_play_settings], context: "#{context}[:image_based_trick_play_settings]") unless input[:image_based_trick_play_settings].nil?
        Hearth::Validator.validate!(input[:manifest_compression], ::String, context: "#{context}[:manifest_compression]")
        Hearth::Validator.validate!(input[:manifest_duration_format], ::String, context: "#{context}[:manifest_duration_format]")
        Hearth::Validator.validate!(input[:min_buffer_time], ::Integer, context: "#{context}[:min_buffer_time]")
        Hearth::Validator.validate!(input[:min_final_segment_length], ::Float, context: "#{context}[:min_final_segment_length]")
        Hearth::Validator.validate!(input[:mpd_profile], ::String, context: "#{context}[:mpd_profile]")
        Hearth::Validator.validate!(input[:pts_offset_handling_for_b_frames], ::String, context: "#{context}[:pts_offset_handling_for_b_frames]")
        Hearth::Validator.validate!(input[:segment_control], ::String, context: "#{context}[:segment_control]")
        Hearth::Validator.validate!(input[:segment_length], ::Integer, context: "#{context}[:segment_length]")
        Hearth::Validator.validate!(input[:segment_length_control], ::String, context: "#{context}[:segment_length_control]")
        Hearth::Validator.validate!(input[:stream_inf_resolution], ::String, context: "#{context}[:stream_inf_resolution]")
        Hearth::Validator.validate!(input[:target_duration_compatibility_mode], ::String, context: "#{context}[:target_duration_compatibility_mode]")
        Hearth::Validator.validate!(input[:write_dash_manifest], ::String, context: "#{context}[:write_dash_manifest]")
        Hearth::Validator.validate!(input[:write_hls_manifest], ::String, context: "#{context}[:write_hls_manifest]")
        Hearth::Validator.validate!(input[:write_segment_timeline_in_representation], ::String, context: "#{context}[:write_segment_timeline_in_representation]")
      end
    end

    class CmafImageBasedTrickPlaySettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmafImageBasedTrickPlaySettings, context: context)
        Hearth::Validator.validate!(input[:interval_cadence], ::String, context: "#{context}[:interval_cadence]")
        Hearth::Validator.validate!(input[:thumbnail_height], ::Integer, context: "#{context}[:thumbnail_height]")
        Hearth::Validator.validate!(input[:thumbnail_interval], ::Float, context: "#{context}[:thumbnail_interval]")
        Hearth::Validator.validate!(input[:thumbnail_width], ::Integer, context: "#{context}[:thumbnail_width]")
        Hearth::Validator.validate!(input[:tile_height], ::Integer, context: "#{context}[:tile_height]")
        Hearth::Validator.validate!(input[:tile_width], ::Integer, context: "#{context}[:tile_width]")
      end
    end

    class CmfcSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CmfcSettings, context: context)
        Hearth::Validator.validate!(input[:audio_duration], ::String, context: "#{context}[:audio_duration]")
        Hearth::Validator.validate!(input[:audio_group_id], ::String, context: "#{context}[:audio_group_id]")
        Hearth::Validator.validate!(input[:audio_rendition_sets], ::String, context: "#{context}[:audio_rendition_sets]")
        Hearth::Validator.validate!(input[:audio_track_type], ::String, context: "#{context}[:audio_track_type]")
        Hearth::Validator.validate!(input[:descriptive_video_service_flag], ::String, context: "#{context}[:descriptive_video_service_flag]")
        Hearth::Validator.validate!(input[:i_frame_only_manifest], ::String, context: "#{context}[:i_frame_only_manifest]")
        Hearth::Validator.validate!(input[:klv_metadata], ::String, context: "#{context}[:klv_metadata]")
        Hearth::Validator.validate!(input[:scte35_esam], ::String, context: "#{context}[:scte35_esam]")
        Hearth::Validator.validate!(input[:scte35_source], ::String, context: "#{context}[:scte35_source]")
        Hearth::Validator.validate!(input[:timed_metadata], ::String, context: "#{context}[:timed_metadata]")
      end
    end

    class ColorCorrector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColorCorrector, context: context)
        Hearth::Validator.validate!(input[:brightness], ::Integer, context: "#{context}[:brightness]")
        Hearth::Validator.validate!(input[:color_space_conversion], ::String, context: "#{context}[:color_space_conversion]")
        Hearth::Validator.validate!(input[:contrast], ::Integer, context: "#{context}[:contrast]")
        Hdr10Metadata.validate!(input[:hdr10_metadata], context: "#{context}[:hdr10_metadata]") unless input[:hdr10_metadata].nil?
        Hearth::Validator.validate!(input[:hue], ::Integer, context: "#{context}[:hue]")
        Hearth::Validator.validate!(input[:sample_range_conversion], ::String, context: "#{context}[:sample_range_conversion]")
        Hearth::Validator.validate!(input[:saturation], ::Integer, context: "#{context}[:saturation]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContainerSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerSettings, context: context)
        CmfcSettings.validate!(input[:cmfc_settings], context: "#{context}[:cmfc_settings]") unless input[:cmfc_settings].nil?
        Hearth::Validator.validate!(input[:container], ::String, context: "#{context}[:container]")
        F4vSettings.validate!(input[:f4v_settings], context: "#{context}[:f4v_settings]") unless input[:f4v_settings].nil?
        M2tsSettings.validate!(input[:m2ts_settings], context: "#{context}[:m2ts_settings]") unless input[:m2ts_settings].nil?
        M3u8Settings.validate!(input[:m3u8_settings], context: "#{context}[:m3u8_settings]") unless input[:m3u8_settings].nil?
        MovSettings.validate!(input[:mov_settings], context: "#{context}[:mov_settings]") unless input[:mov_settings].nil?
        Mp4Settings.validate!(input[:mp4_settings], context: "#{context}[:mp4_settings]") unless input[:mp4_settings].nil?
        MpdSettings.validate!(input[:mpd_settings], context: "#{context}[:mpd_settings]") unless input[:mpd_settings].nil?
        MxfSettings.validate!(input[:mxf_settings], context: "#{context}[:mxf_settings]") unless input[:mxf_settings].nil?
      end
    end

    class CreateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobInput, context: context)
        AccelerationSettings.validate!(input[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless input[:acceleration_settings].nil?
        Hearth::Validator.validate!(input[:billing_tags_source], ::String, context: "#{context}[:billing_tags_source]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        List____listOfHopDestination.validate!(input[:hop_destinations], context: "#{context}[:hop_destinations]") unless input[:hop_destinations].nil?
        Hearth::Validator.validate!(input[:job_template], ::String, context: "#{context}[:job_template]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:queue], ::String, context: "#{context}[:queue]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        JobSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:simulate_reserved_queue], ::String, context: "#{context}[:simulate_reserved_queue]")
        Hearth::Validator.validate!(input[:status_update_interval], ::String, context: "#{context}[:status_update_interval]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Map____mapOf__string.validate!(input[:user_metadata], context: "#{context}[:user_metadata]") unless input[:user_metadata].nil?
      end
    end

    class CreateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobOutput, context: context)
        Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class CreateJobTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobTemplateInput, context: context)
        AccelerationSettings.validate!(input[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless input[:acceleration_settings].nil?
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        List____listOfHopDestination.validate!(input[:hop_destinations], context: "#{context}[:hop_destinations]") unless input[:hop_destinations].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:queue], ::String, context: "#{context}[:queue]")
        JobTemplateSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:status_update_interval], ::String, context: "#{context}[:status_update_interval]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateJobTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobTemplateOutput, context: context)
        JobTemplate.validate!(input[:job_template], context: "#{context}[:job_template]") unless input[:job_template].nil?
      end
    end

    class CreatePresetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePresetInput, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PresetSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePresetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePresetOutput, context: context)
        Preset.validate!(input[:preset], context: "#{context}[:preset]") unless input[:preset].nil?
      end
    end

    class CreateQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQueueInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        ReservationPlanSettings.validate!(input[:reservation_plan_settings], context: "#{context}[:reservation_plan_settings]") unless input[:reservation_plan_settings].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQueueOutput, context: context)
        Queue.validate!(input[:queue], context: "#{context}[:queue]") unless input[:queue].nil?
      end
    end

    class DashAdditionalManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashAdditionalManifest, context: context)
        Hearth::Validator.validate!(input[:manifest_name_modifier], ::String, context: "#{context}[:manifest_name_modifier]")
        List____listOf__stringMin1.validate!(input[:selected_outputs], context: "#{context}[:selected_outputs]") unless input[:selected_outputs].nil?
      end
    end

    class DashIsoEncryptionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashIsoEncryptionSettings, context: context)
        Hearth::Validator.validate!(input[:playback_device_compatibility], ::String, context: "#{context}[:playback_device_compatibility]")
        SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class DashIsoGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashIsoGroupSettings, context: context)
        List____listOfDashAdditionalManifest.validate!(input[:additional_manifests], context: "#{context}[:additional_manifests]") unless input[:additional_manifests].nil?
        Hearth::Validator.validate!(input[:audio_channel_config_scheme_id_uri], ::String, context: "#{context}[:audio_channel_config_scheme_id_uri]")
        Hearth::Validator.validate!(input[:base_url], ::String, context: "#{context}[:base_url]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        DestinationSettings.validate!(input[:destination_settings], context: "#{context}[:destination_settings]") unless input[:destination_settings].nil?
        DashIsoEncryptionSettings.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:fragment_length], ::Integer, context: "#{context}[:fragment_length]")
        Hearth::Validator.validate!(input[:hbbtv_compliance], ::String, context: "#{context}[:hbbtv_compliance]")
        Hearth::Validator.validate!(input[:image_based_trick_play], ::String, context: "#{context}[:image_based_trick_play]")
        DashIsoImageBasedTrickPlaySettings.validate!(input[:image_based_trick_play_settings], context: "#{context}[:image_based_trick_play_settings]") unless input[:image_based_trick_play_settings].nil?
        Hearth::Validator.validate!(input[:min_buffer_time], ::Integer, context: "#{context}[:min_buffer_time]")
        Hearth::Validator.validate!(input[:min_final_segment_length], ::Float, context: "#{context}[:min_final_segment_length]")
        Hearth::Validator.validate!(input[:mpd_profile], ::String, context: "#{context}[:mpd_profile]")
        Hearth::Validator.validate!(input[:pts_offset_handling_for_b_frames], ::String, context: "#{context}[:pts_offset_handling_for_b_frames]")
        Hearth::Validator.validate!(input[:segment_control], ::String, context: "#{context}[:segment_control]")
        Hearth::Validator.validate!(input[:segment_length], ::Integer, context: "#{context}[:segment_length]")
        Hearth::Validator.validate!(input[:segment_length_control], ::String, context: "#{context}[:segment_length_control]")
        Hearth::Validator.validate!(input[:write_segment_timeline_in_representation], ::String, context: "#{context}[:write_segment_timeline_in_representation]")
      end
    end

    class DashIsoImageBasedTrickPlaySettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashIsoImageBasedTrickPlaySettings, context: context)
        Hearth::Validator.validate!(input[:interval_cadence], ::String, context: "#{context}[:interval_cadence]")
        Hearth::Validator.validate!(input[:thumbnail_height], ::Integer, context: "#{context}[:thumbnail_height]")
        Hearth::Validator.validate!(input[:thumbnail_interval], ::Float, context: "#{context}[:thumbnail_interval]")
        Hearth::Validator.validate!(input[:thumbnail_width], ::Integer, context: "#{context}[:thumbnail_width]")
        Hearth::Validator.validate!(input[:tile_height], ::Integer, context: "#{context}[:tile_height]")
        Hearth::Validator.validate!(input[:tile_width], ::Integer, context: "#{context}[:tile_width]")
      end
    end

    class Deinterlacer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Deinterlacer, context: context)
        Hearth::Validator.validate!(input[:algorithm], ::String, context: "#{context}[:algorithm]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class DeleteJobTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteJobTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobTemplateOutput, context: context)
      end
    end

    class DeletePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyInput, context: context)
      end
    end

    class DeletePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyOutput, context: context)
      end
    end

    class DeletePresetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePresetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeletePresetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePresetOutput, context: context)
      end
    end

    class DeleteQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueueInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueueOutput, context: context)
      end
    end

    class DescribeEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsOutput, context: context)
        List____listOfEndpoint.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationSettings, context: context)
        S3DestinationSettings.validate!(input[:s3_settings], context: "#{context}[:s3_settings]") unless input[:s3_settings].nil?
      end
    end

    class DisassociateCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateCertificateInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DisassociateCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateCertificateOutput, context: context)
      end
    end

    class DolbyVision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DolbyVision, context: context)
        DolbyVisionLevel6Metadata.validate!(input[:l6_metadata], context: "#{context}[:l6_metadata]") unless input[:l6_metadata].nil?
        Hearth::Validator.validate!(input[:l6_mode], ::String, context: "#{context}[:l6_mode]")
        Hearth::Validator.validate!(input[:mapping], ::String, context: "#{context}[:mapping]")
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
      end
    end

    class DolbyVisionLevel6Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DolbyVisionLevel6Metadata, context: context)
        Hearth::Validator.validate!(input[:max_cll], ::Integer, context: "#{context}[:max_cll]")
        Hearth::Validator.validate!(input[:max_fall], ::Integer, context: "#{context}[:max_fall]")
      end
    end

    class DvbNitSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbNitSettings, context: context)
        Hearth::Validator.validate!(input[:network_id], ::Integer, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:network_name], ::String, context: "#{context}[:network_name]")
        Hearth::Validator.validate!(input[:nit_interval], ::Integer, context: "#{context}[:nit_interval]")
      end
    end

    class DvbSdtSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbSdtSettings, context: context)
        Hearth::Validator.validate!(input[:output_sdt], ::String, context: "#{context}[:output_sdt]")
        Hearth::Validator.validate!(input[:sdt_interval], ::Integer, context: "#{context}[:sdt_interval]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_provider_name], ::String, context: "#{context}[:service_provider_name]")
      end
    end

    class DvbSubDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbSubDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:alignment], ::String, context: "#{context}[:alignment]")
        Hearth::Validator.validate!(input[:apply_font_color], ::String, context: "#{context}[:apply_font_color]")
        Hearth::Validator.validate!(input[:background_color], ::String, context: "#{context}[:background_color]")
        Hearth::Validator.validate!(input[:background_opacity], ::Integer, context: "#{context}[:background_opacity]")
        Hearth::Validator.validate!(input[:dds_handling], ::String, context: "#{context}[:dds_handling]")
        Hearth::Validator.validate!(input[:dds_x_coordinate], ::Integer, context: "#{context}[:dds_x_coordinate]")
        Hearth::Validator.validate!(input[:dds_y_coordinate], ::Integer, context: "#{context}[:dds_y_coordinate]")
        Hearth::Validator.validate!(input[:fallback_font], ::String, context: "#{context}[:fallback_font]")
        Hearth::Validator.validate!(input[:font_color], ::String, context: "#{context}[:font_color]")
        Hearth::Validator.validate!(input[:font_opacity], ::Integer, context: "#{context}[:font_opacity]")
        Hearth::Validator.validate!(input[:font_resolution], ::Integer, context: "#{context}[:font_resolution]")
        Hearth::Validator.validate!(input[:font_script], ::String, context: "#{context}[:font_script]")
        Hearth::Validator.validate!(input[:font_size], ::Integer, context: "#{context}[:font_size]")
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:hex_font_color], ::String, context: "#{context}[:hex_font_color]")
        Hearth::Validator.validate!(input[:outline_color], ::String, context: "#{context}[:outline_color]")
        Hearth::Validator.validate!(input[:outline_size], ::Integer, context: "#{context}[:outline_size]")
        Hearth::Validator.validate!(input[:shadow_color], ::String, context: "#{context}[:shadow_color]")
        Hearth::Validator.validate!(input[:shadow_opacity], ::Integer, context: "#{context}[:shadow_opacity]")
        Hearth::Validator.validate!(input[:shadow_x_offset], ::Integer, context: "#{context}[:shadow_x_offset]")
        Hearth::Validator.validate!(input[:shadow_y_offset], ::Integer, context: "#{context}[:shadow_y_offset]")
        Hearth::Validator.validate!(input[:style_passthrough], ::String, context: "#{context}[:style_passthrough]")
        Hearth::Validator.validate!(input[:subtitling_type], ::String, context: "#{context}[:subtitling_type]")
        Hearth::Validator.validate!(input[:teletext_spacing], ::String, context: "#{context}[:teletext_spacing]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
        Hearth::Validator.validate!(input[:x_position], ::Integer, context: "#{context}[:x_position]")
        Hearth::Validator.validate!(input[:y_position], ::Integer, context: "#{context}[:y_position]")
      end
    end

    class DvbSubSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbSubSourceSettings, context: context)
        Hearth::Validator.validate!(input[:pid], ::Integer, context: "#{context}[:pid]")
      end
    end

    class DvbTdtSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DvbTdtSettings, context: context)
        Hearth::Validator.validate!(input[:tdt_interval], ::Integer, context: "#{context}[:tdt_interval]")
      end
    end

    class Eac3AtmosSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Eac3AtmosSettings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:bitstream_mode], ::String, context: "#{context}[:bitstream_mode]")
        Hearth::Validator.validate!(input[:coding_mode], ::String, context: "#{context}[:coding_mode]")
        Hearth::Validator.validate!(input[:dialogue_intelligence], ::String, context: "#{context}[:dialogue_intelligence]")
        Hearth::Validator.validate!(input[:downmix_control], ::String, context: "#{context}[:downmix_control]")
        Hearth::Validator.validate!(input[:dynamic_range_compression_line], ::String, context: "#{context}[:dynamic_range_compression_line]")
        Hearth::Validator.validate!(input[:dynamic_range_compression_rf], ::String, context: "#{context}[:dynamic_range_compression_rf]")
        Hearth::Validator.validate!(input[:dynamic_range_control], ::String, context: "#{context}[:dynamic_range_control]")
        Hearth::Validator.validate!(input[:lo_ro_center_mix_level], ::Float, context: "#{context}[:lo_ro_center_mix_level]")
        Hearth::Validator.validate!(input[:lo_ro_surround_mix_level], ::Float, context: "#{context}[:lo_ro_surround_mix_level]")
        Hearth::Validator.validate!(input[:lt_rt_center_mix_level], ::Float, context: "#{context}[:lt_rt_center_mix_level]")
        Hearth::Validator.validate!(input[:lt_rt_surround_mix_level], ::Float, context: "#{context}[:lt_rt_surround_mix_level]")
        Hearth::Validator.validate!(input[:metering_mode], ::String, context: "#{context}[:metering_mode]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:speech_threshold], ::Integer, context: "#{context}[:speech_threshold]")
        Hearth::Validator.validate!(input[:stereo_downmix], ::String, context: "#{context}[:stereo_downmix]")
        Hearth::Validator.validate!(input[:surround_ex_mode], ::String, context: "#{context}[:surround_ex_mode]")
      end
    end

    class Eac3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Eac3Settings, context: context)
        Hearth::Validator.validate!(input[:attenuation_control], ::String, context: "#{context}[:attenuation_control]")
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:bitstream_mode], ::String, context: "#{context}[:bitstream_mode]")
        Hearth::Validator.validate!(input[:coding_mode], ::String, context: "#{context}[:coding_mode]")
        Hearth::Validator.validate!(input[:dc_filter], ::String, context: "#{context}[:dc_filter]")
        Hearth::Validator.validate!(input[:dialnorm], ::Integer, context: "#{context}[:dialnorm]")
        Hearth::Validator.validate!(input[:dynamic_range_compression_line], ::String, context: "#{context}[:dynamic_range_compression_line]")
        Hearth::Validator.validate!(input[:dynamic_range_compression_rf], ::String, context: "#{context}[:dynamic_range_compression_rf]")
        Hearth::Validator.validate!(input[:lfe_control], ::String, context: "#{context}[:lfe_control]")
        Hearth::Validator.validate!(input[:lfe_filter], ::String, context: "#{context}[:lfe_filter]")
        Hearth::Validator.validate!(input[:lo_ro_center_mix_level], ::Float, context: "#{context}[:lo_ro_center_mix_level]")
        Hearth::Validator.validate!(input[:lo_ro_surround_mix_level], ::Float, context: "#{context}[:lo_ro_surround_mix_level]")
        Hearth::Validator.validate!(input[:lt_rt_center_mix_level], ::Float, context: "#{context}[:lt_rt_center_mix_level]")
        Hearth::Validator.validate!(input[:lt_rt_surround_mix_level], ::Float, context: "#{context}[:lt_rt_surround_mix_level]")
        Hearth::Validator.validate!(input[:metadata_control], ::String, context: "#{context}[:metadata_control]")
        Hearth::Validator.validate!(input[:passthrough_control], ::String, context: "#{context}[:passthrough_control]")
        Hearth::Validator.validate!(input[:phase_control], ::String, context: "#{context}[:phase_control]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:stereo_downmix], ::String, context: "#{context}[:stereo_downmix]")
        Hearth::Validator.validate!(input[:surround_ex_mode], ::String, context: "#{context}[:surround_ex_mode]")
        Hearth::Validator.validate!(input[:surround_mode], ::String, context: "#{context}[:surround_mode]")
      end
    end

    class EmbeddedDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmbeddedDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:destination608_channel_number], ::Integer, context: "#{context}[:destination608_channel_number]")
        Hearth::Validator.validate!(input[:destination708_service_number], ::Integer, context: "#{context}[:destination708_service_number]")
      end
    end

    class EmbeddedSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmbeddedSourceSettings, context: context)
        Hearth::Validator.validate!(input[:convert608_to708], ::String, context: "#{context}[:convert608_to708]")
        Hearth::Validator.validate!(input[:source608_channel_number], ::Integer, context: "#{context}[:source608_channel_number]")
        Hearth::Validator.validate!(input[:source608_track_number], ::Integer, context: "#{context}[:source608_track_number]")
        Hearth::Validator.validate!(input[:terminate_captions], ::String, context: "#{context}[:terminate_captions]")
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class EsamManifestConfirmConditionNotification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EsamManifestConfirmConditionNotification, context: context)
        Hearth::Validator.validate!(input[:mcc_xml], ::String, context: "#{context}[:mcc_xml]")
      end
    end

    class EsamSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EsamSettings, context: context)
        EsamManifestConfirmConditionNotification.validate!(input[:manifest_confirm_condition_notification], context: "#{context}[:manifest_confirm_condition_notification]") unless input[:manifest_confirm_condition_notification].nil?
        Hearth::Validator.validate!(input[:response_signal_preroll], ::Integer, context: "#{context}[:response_signal_preroll]")
        EsamSignalProcessingNotification.validate!(input[:signal_processing_notification], context: "#{context}[:signal_processing_notification]") unless input[:signal_processing_notification].nil?
      end
    end

    class EsamSignalProcessingNotification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EsamSignalProcessingNotification, context: context)
        Hearth::Validator.validate!(input[:scc_xml], ::String, context: "#{context}[:scc_xml]")
      end
    end

    class ExtendedDataServices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendedDataServices, context: context)
        Hearth::Validator.validate!(input[:copy_protection_action], ::String, context: "#{context}[:copy_protection_action]")
        Hearth::Validator.validate!(input[:vchip_action], ::String, context: "#{context}[:vchip_action]")
      end
    end

    class F4vSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::F4vSettings, context: context)
        Hearth::Validator.validate!(input[:moov_placement], ::String, context: "#{context}[:moov_placement]")
      end
    end

    class FileGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileGroupSettings, context: context)
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        DestinationSettings.validate!(input[:destination_settings], context: "#{context}[:destination_settings]") unless input[:destination_settings].nil?
      end
    end

    class FileSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSourceSettings, context: context)
        Hearth::Validator.validate!(input[:convert608_to708], ::String, context: "#{context}[:convert608_to708]")
        CaptionSourceFramerate.validate!(input[:framerate], context: "#{context}[:framerate]") unless input[:framerate].nil?
        Hearth::Validator.validate!(input[:source_file], ::String, context: "#{context}[:source_file]")
        Hearth::Validator.validate!(input[:time_delta], ::Integer, context: "#{context}[:time_delta]")
        Hearth::Validator.validate!(input[:time_delta_units], ::String, context: "#{context}[:time_delta_units]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ForceIncludeRenditionSize
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForceIncludeRenditionSize, context: context)
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class FrameCaptureSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameCaptureSettings, context: context)
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:max_captures], ::Integer, context: "#{context}[:max_captures]")
        Hearth::Validator.validate!(input[:quality], ::Integer, context: "#{context}[:quality]")
      end
    end

    class GetJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobOutput, context: context)
        Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class GetJobTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetJobTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobTemplateOutput, context: context)
        JobTemplate.validate!(input[:job_template], context: "#{context}[:job_template]") unless input[:job_template].nil?
      end
    end

    class GetPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyInput, context: context)
      end
    end

    class GetPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyOutput, context: context)
        Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class GetPresetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPresetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetPresetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPresetOutput, context: context)
        Preset.validate!(input[:preset], context: "#{context}[:preset]") unless input[:preset].nil?
      end
    end

    class GetQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueueInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueueOutput, context: context)
        Queue.validate!(input[:queue], context: "#{context}[:queue]") unless input[:queue].nil?
      end
    end

    class H264QvbrSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H264QvbrSettings, context: context)
        Hearth::Validator.validate!(input[:max_average_bitrate], ::Integer, context: "#{context}[:max_average_bitrate]")
        Hearth::Validator.validate!(input[:qvbr_quality_level], ::Integer, context: "#{context}[:qvbr_quality_level]")
        Hearth::Validator.validate!(input[:qvbr_quality_level_fine_tune], ::Float, context: "#{context}[:qvbr_quality_level_fine_tune]")
      end
    end

    class H264Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H264Settings, context: context)
        Hearth::Validator.validate!(input[:adaptive_quantization], ::String, context: "#{context}[:adaptive_quantization]")
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:codec_level], ::String, context: "#{context}[:codec_level]")
        Hearth::Validator.validate!(input[:codec_profile], ::String, context: "#{context}[:codec_profile]")
        Hearth::Validator.validate!(input[:dynamic_sub_gop], ::String, context: "#{context}[:dynamic_sub_gop]")
        Hearth::Validator.validate!(input[:entropy_encoding], ::String, context: "#{context}[:entropy_encoding]")
        Hearth::Validator.validate!(input[:field_encoding], ::String, context: "#{context}[:field_encoding]")
        Hearth::Validator.validate!(input[:flicker_adaptive_quantization], ::String, context: "#{context}[:flicker_adaptive_quantization]")
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:gop_b_reference], ::String, context: "#{context}[:gop_b_reference]")
        Hearth::Validator.validate!(input[:gop_closed_cadence], ::Integer, context: "#{context}[:gop_closed_cadence]")
        Hearth::Validator.validate!(input[:gop_size], ::Float, context: "#{context}[:gop_size]")
        Hearth::Validator.validate!(input[:gop_size_units], ::String, context: "#{context}[:gop_size_units]")
        Hearth::Validator.validate!(input[:hrd_buffer_initial_fill_percentage], ::Integer, context: "#{context}[:hrd_buffer_initial_fill_percentage]")
        Hearth::Validator.validate!(input[:hrd_buffer_size], ::Integer, context: "#{context}[:hrd_buffer_size]")
        Hearth::Validator.validate!(input[:interlace_mode], ::String, context: "#{context}[:interlace_mode]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:min_i_interval], ::Integer, context: "#{context}[:min_i_interval]")
        Hearth::Validator.validate!(input[:number_b_frames_between_reference_frames], ::Integer, context: "#{context}[:number_b_frames_between_reference_frames]")
        Hearth::Validator.validate!(input[:number_reference_frames], ::Integer, context: "#{context}[:number_reference_frames]")
        Hearth::Validator.validate!(input[:par_control], ::String, context: "#{context}[:par_control]")
        Hearth::Validator.validate!(input[:par_denominator], ::Integer, context: "#{context}[:par_denominator]")
        Hearth::Validator.validate!(input[:par_numerator], ::Integer, context: "#{context}[:par_numerator]")
        Hearth::Validator.validate!(input[:quality_tuning_level], ::String, context: "#{context}[:quality_tuning_level]")
        H264QvbrSettings.validate!(input[:qvbr_settings], context: "#{context}[:qvbr_settings]") unless input[:qvbr_settings].nil?
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
        Hearth::Validator.validate!(input[:repeat_pps], ::String, context: "#{context}[:repeat_pps]")
        Hearth::Validator.validate!(input[:scan_type_conversion_mode], ::String, context: "#{context}[:scan_type_conversion_mode]")
        Hearth::Validator.validate!(input[:scene_change_detect], ::String, context: "#{context}[:scene_change_detect]")
        Hearth::Validator.validate!(input[:slices], ::Integer, context: "#{context}[:slices]")
        Hearth::Validator.validate!(input[:slow_pal], ::String, context: "#{context}[:slow_pal]")
        Hearth::Validator.validate!(input[:softness], ::Integer, context: "#{context}[:softness]")
        Hearth::Validator.validate!(input[:spatial_adaptive_quantization], ::String, context: "#{context}[:spatial_adaptive_quantization]")
        Hearth::Validator.validate!(input[:syntax], ::String, context: "#{context}[:syntax]")
        Hearth::Validator.validate!(input[:telecine], ::String, context: "#{context}[:telecine]")
        Hearth::Validator.validate!(input[:temporal_adaptive_quantization], ::String, context: "#{context}[:temporal_adaptive_quantization]")
        Hearth::Validator.validate!(input[:unregistered_sei_timecode], ::String, context: "#{context}[:unregistered_sei_timecode]")
      end
    end

    class H265QvbrSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H265QvbrSettings, context: context)
        Hearth::Validator.validate!(input[:max_average_bitrate], ::Integer, context: "#{context}[:max_average_bitrate]")
        Hearth::Validator.validate!(input[:qvbr_quality_level], ::Integer, context: "#{context}[:qvbr_quality_level]")
        Hearth::Validator.validate!(input[:qvbr_quality_level_fine_tune], ::Float, context: "#{context}[:qvbr_quality_level_fine_tune]")
      end
    end

    class H265Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::H265Settings, context: context)
        Hearth::Validator.validate!(input[:adaptive_quantization], ::String, context: "#{context}[:adaptive_quantization]")
        Hearth::Validator.validate!(input[:alternate_transfer_function_sei], ::String, context: "#{context}[:alternate_transfer_function_sei]")
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:codec_level], ::String, context: "#{context}[:codec_level]")
        Hearth::Validator.validate!(input[:codec_profile], ::String, context: "#{context}[:codec_profile]")
        Hearth::Validator.validate!(input[:dynamic_sub_gop], ::String, context: "#{context}[:dynamic_sub_gop]")
        Hearth::Validator.validate!(input[:flicker_adaptive_quantization], ::String, context: "#{context}[:flicker_adaptive_quantization]")
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:gop_b_reference], ::String, context: "#{context}[:gop_b_reference]")
        Hearth::Validator.validate!(input[:gop_closed_cadence], ::Integer, context: "#{context}[:gop_closed_cadence]")
        Hearth::Validator.validate!(input[:gop_size], ::Float, context: "#{context}[:gop_size]")
        Hearth::Validator.validate!(input[:gop_size_units], ::String, context: "#{context}[:gop_size_units]")
        Hearth::Validator.validate!(input[:hrd_buffer_initial_fill_percentage], ::Integer, context: "#{context}[:hrd_buffer_initial_fill_percentage]")
        Hearth::Validator.validate!(input[:hrd_buffer_size], ::Integer, context: "#{context}[:hrd_buffer_size]")
        Hearth::Validator.validate!(input[:interlace_mode], ::String, context: "#{context}[:interlace_mode]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:min_i_interval], ::Integer, context: "#{context}[:min_i_interval]")
        Hearth::Validator.validate!(input[:number_b_frames_between_reference_frames], ::Integer, context: "#{context}[:number_b_frames_between_reference_frames]")
        Hearth::Validator.validate!(input[:number_reference_frames], ::Integer, context: "#{context}[:number_reference_frames]")
        Hearth::Validator.validate!(input[:par_control], ::String, context: "#{context}[:par_control]")
        Hearth::Validator.validate!(input[:par_denominator], ::Integer, context: "#{context}[:par_denominator]")
        Hearth::Validator.validate!(input[:par_numerator], ::Integer, context: "#{context}[:par_numerator]")
        Hearth::Validator.validate!(input[:quality_tuning_level], ::String, context: "#{context}[:quality_tuning_level]")
        H265QvbrSettings.validate!(input[:qvbr_settings], context: "#{context}[:qvbr_settings]") unless input[:qvbr_settings].nil?
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
        Hearth::Validator.validate!(input[:sample_adaptive_offset_filter_mode], ::String, context: "#{context}[:sample_adaptive_offset_filter_mode]")
        Hearth::Validator.validate!(input[:scan_type_conversion_mode], ::String, context: "#{context}[:scan_type_conversion_mode]")
        Hearth::Validator.validate!(input[:scene_change_detect], ::String, context: "#{context}[:scene_change_detect]")
        Hearth::Validator.validate!(input[:slices], ::Integer, context: "#{context}[:slices]")
        Hearth::Validator.validate!(input[:slow_pal], ::String, context: "#{context}[:slow_pal]")
        Hearth::Validator.validate!(input[:spatial_adaptive_quantization], ::String, context: "#{context}[:spatial_adaptive_quantization]")
        Hearth::Validator.validate!(input[:telecine], ::String, context: "#{context}[:telecine]")
        Hearth::Validator.validate!(input[:temporal_adaptive_quantization], ::String, context: "#{context}[:temporal_adaptive_quantization]")
        Hearth::Validator.validate!(input[:temporal_ids], ::String, context: "#{context}[:temporal_ids]")
        Hearth::Validator.validate!(input[:tiles], ::String, context: "#{context}[:tiles]")
        Hearth::Validator.validate!(input[:unregistered_sei_timecode], ::String, context: "#{context}[:unregistered_sei_timecode]")
        Hearth::Validator.validate!(input[:write_mp4_packaging_type], ::String, context: "#{context}[:write_mp4_packaging_type]")
      end
    end

    class Hdr10Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Hdr10Metadata, context: context)
        Hearth::Validator.validate!(input[:blue_primary_x], ::Integer, context: "#{context}[:blue_primary_x]")
        Hearth::Validator.validate!(input[:blue_primary_y], ::Integer, context: "#{context}[:blue_primary_y]")
        Hearth::Validator.validate!(input[:green_primary_x], ::Integer, context: "#{context}[:green_primary_x]")
        Hearth::Validator.validate!(input[:green_primary_y], ::Integer, context: "#{context}[:green_primary_y]")
        Hearth::Validator.validate!(input[:max_content_light_level], ::Integer, context: "#{context}[:max_content_light_level]")
        Hearth::Validator.validate!(input[:max_frame_average_light_level], ::Integer, context: "#{context}[:max_frame_average_light_level]")
        Hearth::Validator.validate!(input[:max_luminance], ::Integer, context: "#{context}[:max_luminance]")
        Hearth::Validator.validate!(input[:min_luminance], ::Integer, context: "#{context}[:min_luminance]")
        Hearth::Validator.validate!(input[:red_primary_x], ::Integer, context: "#{context}[:red_primary_x]")
        Hearth::Validator.validate!(input[:red_primary_y], ::Integer, context: "#{context}[:red_primary_y]")
        Hearth::Validator.validate!(input[:white_point_x], ::Integer, context: "#{context}[:white_point_x]")
        Hearth::Validator.validate!(input[:white_point_y], ::Integer, context: "#{context}[:white_point_y]")
      end
    end

    class Hdr10Plus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Hdr10Plus, context: context)
        Hearth::Validator.validate!(input[:mastering_monitor_nits], ::Integer, context: "#{context}[:mastering_monitor_nits]")
        Hearth::Validator.validate!(input[:target_monitor_nits], ::Integer, context: "#{context}[:target_monitor_nits]")
      end
    end

    class HlsAdditionalManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsAdditionalManifest, context: context)
        Hearth::Validator.validate!(input[:manifest_name_modifier], ::String, context: "#{context}[:manifest_name_modifier]")
        List____listOf__stringMin1.validate!(input[:selected_outputs], context: "#{context}[:selected_outputs]") unless input[:selected_outputs].nil?
      end
    end

    class HlsCaptionLanguageMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsCaptionLanguageMapping, context: context)
        Hearth::Validator.validate!(input[:caption_channel], ::Integer, context: "#{context}[:caption_channel]")
        Hearth::Validator.validate!(input[:custom_language_code], ::String, context: "#{context}[:custom_language_code]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:language_description], ::String, context: "#{context}[:language_description]")
      end
    end

    class HlsEncryptionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsEncryptionSettings, context: context)
        Hearth::Validator.validate!(input[:constant_initialization_vector], ::String, context: "#{context}[:constant_initialization_vector]")
        Hearth::Validator.validate!(input[:encryption_method], ::String, context: "#{context}[:encryption_method]")
        Hearth::Validator.validate!(input[:initialization_vector_in_manifest], ::String, context: "#{context}[:initialization_vector_in_manifest]")
        Hearth::Validator.validate!(input[:offline_encrypted], ::String, context: "#{context}[:offline_encrypted]")
        SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
        StaticKeyProvider.validate!(input[:static_key_provider], context: "#{context}[:static_key_provider]") unless input[:static_key_provider].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class HlsGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsGroupSettings, context: context)
        List____listOfHlsAdMarkers.validate!(input[:ad_markers], context: "#{context}[:ad_markers]") unless input[:ad_markers].nil?
        List____listOfHlsAdditionalManifest.validate!(input[:additional_manifests], context: "#{context}[:additional_manifests]") unless input[:additional_manifests].nil?
        Hearth::Validator.validate!(input[:audio_only_header], ::String, context: "#{context}[:audio_only_header]")
        Hearth::Validator.validate!(input[:base_url], ::String, context: "#{context}[:base_url]")
        List____listOfHlsCaptionLanguageMapping.validate!(input[:caption_language_mappings], context: "#{context}[:caption_language_mappings]") unless input[:caption_language_mappings].nil?
        Hearth::Validator.validate!(input[:caption_language_setting], ::String, context: "#{context}[:caption_language_setting]")
        Hearth::Validator.validate!(input[:caption_segment_length_control], ::String, context: "#{context}[:caption_segment_length_control]")
        Hearth::Validator.validate!(input[:client_cache], ::String, context: "#{context}[:client_cache]")
        Hearth::Validator.validate!(input[:codec_specification], ::String, context: "#{context}[:codec_specification]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        DestinationSettings.validate!(input[:destination_settings], context: "#{context}[:destination_settings]") unless input[:destination_settings].nil?
        Hearth::Validator.validate!(input[:directory_structure], ::String, context: "#{context}[:directory_structure]")
        HlsEncryptionSettings.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:image_based_trick_play], ::String, context: "#{context}[:image_based_trick_play]")
        HlsImageBasedTrickPlaySettings.validate!(input[:image_based_trick_play_settings], context: "#{context}[:image_based_trick_play_settings]") unless input[:image_based_trick_play_settings].nil?
        Hearth::Validator.validate!(input[:manifest_compression], ::String, context: "#{context}[:manifest_compression]")
        Hearth::Validator.validate!(input[:manifest_duration_format], ::String, context: "#{context}[:manifest_duration_format]")
        Hearth::Validator.validate!(input[:min_final_segment_length], ::Float, context: "#{context}[:min_final_segment_length]")
        Hearth::Validator.validate!(input[:min_segment_length], ::Integer, context: "#{context}[:min_segment_length]")
        Hearth::Validator.validate!(input[:output_selection], ::String, context: "#{context}[:output_selection]")
        Hearth::Validator.validate!(input[:program_date_time], ::String, context: "#{context}[:program_date_time]")
        Hearth::Validator.validate!(input[:program_date_time_period], ::Integer, context: "#{context}[:program_date_time_period]")
        Hearth::Validator.validate!(input[:segment_control], ::String, context: "#{context}[:segment_control]")
        Hearth::Validator.validate!(input[:segment_length], ::Integer, context: "#{context}[:segment_length]")
        Hearth::Validator.validate!(input[:segment_length_control], ::String, context: "#{context}[:segment_length_control]")
        Hearth::Validator.validate!(input[:segments_per_subdirectory], ::Integer, context: "#{context}[:segments_per_subdirectory]")
        Hearth::Validator.validate!(input[:stream_inf_resolution], ::String, context: "#{context}[:stream_inf_resolution]")
        Hearth::Validator.validate!(input[:target_duration_compatibility_mode], ::String, context: "#{context}[:target_duration_compatibility_mode]")
        Hearth::Validator.validate!(input[:timed_metadata_id3_frame], ::String, context: "#{context}[:timed_metadata_id3_frame]")
        Hearth::Validator.validate!(input[:timed_metadata_id3_period], ::Integer, context: "#{context}[:timed_metadata_id3_period]")
        Hearth::Validator.validate!(input[:timestamp_delta_milliseconds], ::Integer, context: "#{context}[:timestamp_delta_milliseconds]")
      end
    end

    class HlsImageBasedTrickPlaySettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsImageBasedTrickPlaySettings, context: context)
        Hearth::Validator.validate!(input[:interval_cadence], ::String, context: "#{context}[:interval_cadence]")
        Hearth::Validator.validate!(input[:thumbnail_height], ::Integer, context: "#{context}[:thumbnail_height]")
        Hearth::Validator.validate!(input[:thumbnail_interval], ::Float, context: "#{context}[:thumbnail_interval]")
        Hearth::Validator.validate!(input[:thumbnail_width], ::Integer, context: "#{context}[:thumbnail_width]")
        Hearth::Validator.validate!(input[:tile_height], ::Integer, context: "#{context}[:tile_height]")
        Hearth::Validator.validate!(input[:tile_width], ::Integer, context: "#{context}[:tile_width]")
      end
    end

    class HlsRenditionGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsRenditionGroupSettings, context: context)
        Hearth::Validator.validate!(input[:rendition_group_id], ::String, context: "#{context}[:rendition_group_id]")
        Hearth::Validator.validate!(input[:rendition_language_code], ::String, context: "#{context}[:rendition_language_code]")
        Hearth::Validator.validate!(input[:rendition_name], ::String, context: "#{context}[:rendition_name]")
      end
    end

    class HlsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HlsSettings, context: context)
        Hearth::Validator.validate!(input[:audio_group_id], ::String, context: "#{context}[:audio_group_id]")
        Hearth::Validator.validate!(input[:audio_only_container], ::String, context: "#{context}[:audio_only_container]")
        Hearth::Validator.validate!(input[:audio_rendition_sets], ::String, context: "#{context}[:audio_rendition_sets]")
        Hearth::Validator.validate!(input[:audio_track_type], ::String, context: "#{context}[:audio_track_type]")
        Hearth::Validator.validate!(input[:descriptive_video_service_flag], ::String, context: "#{context}[:descriptive_video_service_flag]")
        Hearth::Validator.validate!(input[:i_frame_only_manifest], ::String, context: "#{context}[:i_frame_only_manifest]")
        Hearth::Validator.validate!(input[:segment_modifier], ::String, context: "#{context}[:segment_modifier]")
      end
    end

    class HopDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HopDestination, context: context)
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:queue], ::String, context: "#{context}[:queue]")
        Hearth::Validator.validate!(input[:wait_minutes], ::Integer, context: "#{context}[:wait_minutes]")
      end
    end

    class Id3Insertion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Id3Insertion, context: context)
        Hearth::Validator.validate!(input[:id3], ::String, context: "#{context}[:id3]")
        Hearth::Validator.validate!(input[:timecode], ::String, context: "#{context}[:timecode]")
      end
    end

    class ImageInserter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageInserter, context: context)
        List____listOfInsertableImage.validate!(input[:insertable_images], context: "#{context}[:insertable_images]") unless input[:insertable_images].nil?
      end
    end

    class ImscDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImscDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:accessibility], ::String, context: "#{context}[:accessibility]")
        Hearth::Validator.validate!(input[:style_passthrough], ::String, context: "#{context}[:style_passthrough]")
      end
    end

    class Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Input, context: context)
        Map____mapOfAudioSelectorGroup.validate!(input[:audio_selector_groups], context: "#{context}[:audio_selector_groups]") unless input[:audio_selector_groups].nil?
        Map____mapOfAudioSelector.validate!(input[:audio_selectors], context: "#{context}[:audio_selectors]") unless input[:audio_selectors].nil?
        Map____mapOfCaptionSelector.validate!(input[:caption_selectors], context: "#{context}[:caption_selectors]") unless input[:caption_selectors].nil?
        Rectangle.validate!(input[:crop], context: "#{context}[:crop]") unless input[:crop].nil?
        Hearth::Validator.validate!(input[:deblock_filter], ::String, context: "#{context}[:deblock_filter]")
        InputDecryptionSettings.validate!(input[:decryption_settings], context: "#{context}[:decryption_settings]") unless input[:decryption_settings].nil?
        Hearth::Validator.validate!(input[:denoise_filter], ::String, context: "#{context}[:denoise_filter]")
        Hearth::Validator.validate!(input[:dolby_vision_metadata_xml], ::String, context: "#{context}[:dolby_vision_metadata_xml]")
        Hearth::Validator.validate!(input[:file_input], ::String, context: "#{context}[:file_input]")
        Hearth::Validator.validate!(input[:filter_enable], ::String, context: "#{context}[:filter_enable]")
        Hearth::Validator.validate!(input[:filter_strength], ::Integer, context: "#{context}[:filter_strength]")
        ImageInserter.validate!(input[:image_inserter], context: "#{context}[:image_inserter]") unless input[:image_inserter].nil?
        List____listOfInputClipping.validate!(input[:input_clippings], context: "#{context}[:input_clippings]") unless input[:input_clippings].nil?
        Hearth::Validator.validate!(input[:input_scan_type], ::String, context: "#{context}[:input_scan_type]")
        Rectangle.validate!(input[:position], context: "#{context}[:position]") unless input[:position].nil?
        Hearth::Validator.validate!(input[:program_number], ::Integer, context: "#{context}[:program_number]")
        Hearth::Validator.validate!(input[:psi_control], ::String, context: "#{context}[:psi_control]")
        List____listOf__stringPatternS3ASSETMAPXml.validate!(input[:supplemental_imps], context: "#{context}[:supplemental_imps]") unless input[:supplemental_imps].nil?
        Hearth::Validator.validate!(input[:timecode_source], ::String, context: "#{context}[:timecode_source]")
        Hearth::Validator.validate!(input[:timecode_start], ::String, context: "#{context}[:timecode_start]")
        InputVideoGenerator.validate!(input[:video_generator], context: "#{context}[:video_generator]") unless input[:video_generator].nil?
        VideoSelector.validate!(input[:video_selector], context: "#{context}[:video_selector]") unless input[:video_selector].nil?
      end
    end

    class InputClipping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputClipping, context: context)
        Hearth::Validator.validate!(input[:end_timecode], ::String, context: "#{context}[:end_timecode]")
        Hearth::Validator.validate!(input[:start_timecode], ::String, context: "#{context}[:start_timecode]")
      end
    end

    class InputDecryptionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDecryptionSettings, context: context)
        Hearth::Validator.validate!(input[:decryption_mode], ::String, context: "#{context}[:decryption_mode]")
        Hearth::Validator.validate!(input[:encrypted_decryption_key], ::String, context: "#{context}[:encrypted_decryption_key]")
        Hearth::Validator.validate!(input[:initialization_vector], ::String, context: "#{context}[:initialization_vector]")
        Hearth::Validator.validate!(input[:kms_key_region], ::String, context: "#{context}[:kms_key_region]")
      end
    end

    class InputTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputTemplate, context: context)
        Map____mapOfAudioSelectorGroup.validate!(input[:audio_selector_groups], context: "#{context}[:audio_selector_groups]") unless input[:audio_selector_groups].nil?
        Map____mapOfAudioSelector.validate!(input[:audio_selectors], context: "#{context}[:audio_selectors]") unless input[:audio_selectors].nil?
        Map____mapOfCaptionSelector.validate!(input[:caption_selectors], context: "#{context}[:caption_selectors]") unless input[:caption_selectors].nil?
        Rectangle.validate!(input[:crop], context: "#{context}[:crop]") unless input[:crop].nil?
        Hearth::Validator.validate!(input[:deblock_filter], ::String, context: "#{context}[:deblock_filter]")
        Hearth::Validator.validate!(input[:denoise_filter], ::String, context: "#{context}[:denoise_filter]")
        Hearth::Validator.validate!(input[:dolby_vision_metadata_xml], ::String, context: "#{context}[:dolby_vision_metadata_xml]")
        Hearth::Validator.validate!(input[:filter_enable], ::String, context: "#{context}[:filter_enable]")
        Hearth::Validator.validate!(input[:filter_strength], ::Integer, context: "#{context}[:filter_strength]")
        ImageInserter.validate!(input[:image_inserter], context: "#{context}[:image_inserter]") unless input[:image_inserter].nil?
        List____listOfInputClipping.validate!(input[:input_clippings], context: "#{context}[:input_clippings]") unless input[:input_clippings].nil?
        Hearth::Validator.validate!(input[:input_scan_type], ::String, context: "#{context}[:input_scan_type]")
        Rectangle.validate!(input[:position], context: "#{context}[:position]") unless input[:position].nil?
        Hearth::Validator.validate!(input[:program_number], ::Integer, context: "#{context}[:program_number]")
        Hearth::Validator.validate!(input[:psi_control], ::String, context: "#{context}[:psi_control]")
        Hearth::Validator.validate!(input[:timecode_source], ::String, context: "#{context}[:timecode_source]")
        Hearth::Validator.validate!(input[:timecode_start], ::String, context: "#{context}[:timecode_start]")
        VideoSelector.validate!(input[:video_selector], context: "#{context}[:video_selector]") unless input[:video_selector].nil?
      end
    end

    class InputVideoGenerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputVideoGenerator, context: context)
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
      end
    end

    class InsertableImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsertableImage, context: context)
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fade_in], ::Integer, context: "#{context}[:fade_in]")
        Hearth::Validator.validate!(input[:fade_out], ::Integer, context: "#{context}[:fade_out]")
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:image_inserter_input], ::String, context: "#{context}[:image_inserter_input]")
        Hearth::Validator.validate!(input[:image_x], ::Integer, context: "#{context}[:image_x]")
        Hearth::Validator.validate!(input[:image_y], ::Integer, context: "#{context}[:image_y]")
        Hearth::Validator.validate!(input[:layer], ::Integer, context: "#{context}[:layer]")
        Hearth::Validator.validate!(input[:opacity], ::Integer, context: "#{context}[:opacity]")
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        AccelerationSettings.validate!(input[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless input[:acceleration_settings].nil?
        Hearth::Validator.validate!(input[:acceleration_status], ::String, context: "#{context}[:acceleration_status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:billing_tags_source], ::String, context: "#{context}[:billing_tags_source]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:current_phase], ::String, context: "#{context}[:current_phase]")
        Hearth::Validator.validate!(input[:error_code], ::Integer, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        List____listOfHopDestination.validate!(input[:hop_destinations], context: "#{context}[:hop_destinations]") unless input[:hop_destinations].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:job_percent_complete], ::Integer, context: "#{context}[:job_percent_complete]")
        Hearth::Validator.validate!(input[:job_template], ::String, context: "#{context}[:job_template]")
        JobMessages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        List____listOfOutputGroupDetail.validate!(input[:output_group_details], context: "#{context}[:output_group_details]") unless input[:output_group_details].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:queue], ::String, context: "#{context}[:queue]")
        List____listOfQueueTransition.validate!(input[:queue_transitions], context: "#{context}[:queue_transitions]") unless input[:queue_transitions].nil?
        Hearth::Validator.validate!(input[:retry_count], ::Integer, context: "#{context}[:retry_count]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        JobSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:simulate_reserved_queue], ::String, context: "#{context}[:simulate_reserved_queue]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_update_interval], ::String, context: "#{context}[:status_update_interval]")
        Timing.validate!(input[:timing], context: "#{context}[:timing]") unless input[:timing].nil?
        Map____mapOf__string.validate!(input[:user_metadata], context: "#{context}[:user_metadata]") unless input[:user_metadata].nil?
      end
    end

    class JobMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobMessages, context: context)
        List____listOf__string.validate!(input[:info], context: "#{context}[:info]") unless input[:info].nil?
        List____listOf__string.validate!(input[:warning], context: "#{context}[:warning]") unless input[:warning].nil?
      end
    end

    class JobSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobSettings, context: context)
        Hearth::Validator.validate!(input[:ad_avail_offset], ::Integer, context: "#{context}[:ad_avail_offset]")
        AvailBlanking.validate!(input[:avail_blanking], context: "#{context}[:avail_blanking]") unless input[:avail_blanking].nil?
        EsamSettings.validate!(input[:esam], context: "#{context}[:esam]") unless input[:esam].nil?
        ExtendedDataServices.validate!(input[:extended_data_services], context: "#{context}[:extended_data_services]") unless input[:extended_data_services].nil?
        List____listOfInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        KantarWatermarkSettings.validate!(input[:kantar_watermark], context: "#{context}[:kantar_watermark]") unless input[:kantar_watermark].nil?
        MotionImageInserter.validate!(input[:motion_image_inserter], context: "#{context}[:motion_image_inserter]") unless input[:motion_image_inserter].nil?
        NielsenConfiguration.validate!(input[:nielsen_configuration], context: "#{context}[:nielsen_configuration]") unless input[:nielsen_configuration].nil?
        NielsenNonLinearWatermarkSettings.validate!(input[:nielsen_non_linear_watermark], context: "#{context}[:nielsen_non_linear_watermark]") unless input[:nielsen_non_linear_watermark].nil?
        List____listOfOutputGroup.validate!(input[:output_groups], context: "#{context}[:output_groups]") unless input[:output_groups].nil?
        TimecodeConfig.validate!(input[:timecode_config], context: "#{context}[:timecode_config]") unless input[:timecode_config].nil?
        TimedMetadataInsertion.validate!(input[:timed_metadata_insertion], context: "#{context}[:timed_metadata_insertion]") unless input[:timed_metadata_insertion].nil?
      end
    end

    class JobTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobTemplate, context: context)
        AccelerationSettings.validate!(input[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless input[:acceleration_settings].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        List____listOfHopDestination.validate!(input[:hop_destinations], context: "#{context}[:hop_destinations]") unless input[:hop_destinations].nil?
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:queue], ::String, context: "#{context}[:queue]")
        JobTemplateSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:status_update_interval], ::String, context: "#{context}[:status_update_interval]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class JobTemplateSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobTemplateSettings, context: context)
        Hearth::Validator.validate!(input[:ad_avail_offset], ::Integer, context: "#{context}[:ad_avail_offset]")
        AvailBlanking.validate!(input[:avail_blanking], context: "#{context}[:avail_blanking]") unless input[:avail_blanking].nil?
        EsamSettings.validate!(input[:esam], context: "#{context}[:esam]") unless input[:esam].nil?
        ExtendedDataServices.validate!(input[:extended_data_services], context: "#{context}[:extended_data_services]") unless input[:extended_data_services].nil?
        List____listOfInputTemplate.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        KantarWatermarkSettings.validate!(input[:kantar_watermark], context: "#{context}[:kantar_watermark]") unless input[:kantar_watermark].nil?
        MotionImageInserter.validate!(input[:motion_image_inserter], context: "#{context}[:motion_image_inserter]") unless input[:motion_image_inserter].nil?
        NielsenConfiguration.validate!(input[:nielsen_configuration], context: "#{context}[:nielsen_configuration]") unless input[:nielsen_configuration].nil?
        NielsenNonLinearWatermarkSettings.validate!(input[:nielsen_non_linear_watermark], context: "#{context}[:nielsen_non_linear_watermark]") unless input[:nielsen_non_linear_watermark].nil?
        List____listOfOutputGroup.validate!(input[:output_groups], context: "#{context}[:output_groups]") unless input[:output_groups].nil?
        TimecodeConfig.validate!(input[:timecode_config], context: "#{context}[:timecode_config]") unless input[:timecode_config].nil?
        TimedMetadataInsertion.validate!(input[:timed_metadata_insertion], context: "#{context}[:timed_metadata_insertion]") unless input[:timed_metadata_insertion].nil?
      end
    end

    class KantarWatermarkSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KantarWatermarkSettings, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:content_reference], ::String, context: "#{context}[:content_reference]")
        Hearth::Validator.validate!(input[:credentials_secret_name], ::String, context: "#{context}[:credentials_secret_name]")
        Hearth::Validator.validate!(input[:file_offset], ::Float, context: "#{context}[:file_offset]")
        Hearth::Validator.validate!(input[:kantar_license_id], ::Integer, context: "#{context}[:kantar_license_id]")
        Hearth::Validator.validate!(input[:kantar_server_url], ::String, context: "#{context}[:kantar_server_url]")
        Hearth::Validator.validate!(input[:log_destination], ::String, context: "#{context}[:log_destination]")
        Hearth::Validator.validate!(input[:metadata3], ::String, context: "#{context}[:metadata3]")
        Hearth::Validator.validate!(input[:metadata4], ::String, context: "#{context}[:metadata4]")
        Hearth::Validator.validate!(input[:metadata5], ::String, context: "#{context}[:metadata5]")
        Hearth::Validator.validate!(input[:metadata6], ::String, context: "#{context}[:metadata6]")
        Hearth::Validator.validate!(input[:metadata7], ::String, context: "#{context}[:metadata7]")
        Hearth::Validator.validate!(input[:metadata8], ::String, context: "#{context}[:metadata8]")
      end
    end

    class ListJobTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:list_by], ::String, context: "#{context}[:list_by]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class ListJobTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobTemplatesOutput, context: context)
        List____listOfJobTemplate.validate!(input[:job_templates], context: "#{context}[:job_templates]") unless input[:job_templates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
        Hearth::Validator.validate!(input[:queue], ::String, context: "#{context}[:queue]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        List____listOfJob.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPresetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPresetsInput, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:list_by], ::String, context: "#{context}[:list_by]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class ListPresetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPresetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfPreset.validate!(input[:presets], context: "#{context}[:presets]") unless input[:presets].nil?
      end
    end

    class ListQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueuesInput, context: context)
        Hearth::Validator.validate!(input[:list_by], ::String, context: "#{context}[:list_by]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class ListQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueuesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfQueue.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        ResourceTags.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class M2tsScte35Esam
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::M2tsScte35Esam, context: context)
        Hearth::Validator.validate!(input[:scte35_esam_pid], ::Integer, context: "#{context}[:scte35_esam_pid]")
      end
    end

    class M2tsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::M2tsSettings, context: context)
        Hearth::Validator.validate!(input[:audio_buffer_model], ::String, context: "#{context}[:audio_buffer_model]")
        Hearth::Validator.validate!(input[:audio_duration], ::String, context: "#{context}[:audio_duration]")
        Hearth::Validator.validate!(input[:audio_frames_per_pes], ::Integer, context: "#{context}[:audio_frames_per_pes]")
        List____listOf__integerMin32Max8182.validate!(input[:audio_pids], context: "#{context}[:audio_pids]") unless input[:audio_pids].nil?
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:buffer_model], ::String, context: "#{context}[:buffer_model]")
        Hearth::Validator.validate!(input[:data_pts_control], ::String, context: "#{context}[:data_pts_control]")
        DvbNitSettings.validate!(input[:dvb_nit_settings], context: "#{context}[:dvb_nit_settings]") unless input[:dvb_nit_settings].nil?
        DvbSdtSettings.validate!(input[:dvb_sdt_settings], context: "#{context}[:dvb_sdt_settings]") unless input[:dvb_sdt_settings].nil?
        List____listOf__integerMin32Max8182.validate!(input[:dvb_sub_pids], context: "#{context}[:dvb_sub_pids]") unless input[:dvb_sub_pids].nil?
        DvbTdtSettings.validate!(input[:dvb_tdt_settings], context: "#{context}[:dvb_tdt_settings]") unless input[:dvb_tdt_settings].nil?
        Hearth::Validator.validate!(input[:dvb_teletext_pid], ::Integer, context: "#{context}[:dvb_teletext_pid]")
        Hearth::Validator.validate!(input[:ebp_audio_interval], ::String, context: "#{context}[:ebp_audio_interval]")
        Hearth::Validator.validate!(input[:ebp_placement], ::String, context: "#{context}[:ebp_placement]")
        Hearth::Validator.validate!(input[:es_rate_in_pes], ::String, context: "#{context}[:es_rate_in_pes]")
        Hearth::Validator.validate!(input[:force_ts_video_ebp_order], ::String, context: "#{context}[:force_ts_video_ebp_order]")
        Hearth::Validator.validate!(input[:fragment_time], ::Float, context: "#{context}[:fragment_time]")
        Hearth::Validator.validate!(input[:klv_metadata], ::String, context: "#{context}[:klv_metadata]")
        Hearth::Validator.validate!(input[:max_pcr_interval], ::Integer, context: "#{context}[:max_pcr_interval]")
        Hearth::Validator.validate!(input[:min_ebp_interval], ::Integer, context: "#{context}[:min_ebp_interval]")
        Hearth::Validator.validate!(input[:nielsen_id3], ::String, context: "#{context}[:nielsen_id3]")
        Hearth::Validator.validate!(input[:null_packet_bitrate], ::Float, context: "#{context}[:null_packet_bitrate]")
        Hearth::Validator.validate!(input[:pat_interval], ::Integer, context: "#{context}[:pat_interval]")
        Hearth::Validator.validate!(input[:pcr_control], ::String, context: "#{context}[:pcr_control]")
        Hearth::Validator.validate!(input[:pcr_pid], ::Integer, context: "#{context}[:pcr_pid]")
        Hearth::Validator.validate!(input[:pmt_interval], ::Integer, context: "#{context}[:pmt_interval]")
        Hearth::Validator.validate!(input[:pmt_pid], ::Integer, context: "#{context}[:pmt_pid]")
        Hearth::Validator.validate!(input[:private_metadata_pid], ::Integer, context: "#{context}[:private_metadata_pid]")
        Hearth::Validator.validate!(input[:program_number], ::Integer, context: "#{context}[:program_number]")
        Hearth::Validator.validate!(input[:rate_mode], ::String, context: "#{context}[:rate_mode]")
        M2tsScte35Esam.validate!(input[:scte35_esam], context: "#{context}[:scte35_esam]") unless input[:scte35_esam].nil?
        Hearth::Validator.validate!(input[:scte35_pid], ::Integer, context: "#{context}[:scte35_pid]")
        Hearth::Validator.validate!(input[:scte35_source], ::String, context: "#{context}[:scte35_source]")
        Hearth::Validator.validate!(input[:segmentation_markers], ::String, context: "#{context}[:segmentation_markers]")
        Hearth::Validator.validate!(input[:segmentation_style], ::String, context: "#{context}[:segmentation_style]")
        Hearth::Validator.validate!(input[:segmentation_time], ::Float, context: "#{context}[:segmentation_time]")
        Hearth::Validator.validate!(input[:timed_metadata_pid], ::Integer, context: "#{context}[:timed_metadata_pid]")
        Hearth::Validator.validate!(input[:transport_stream_id], ::Integer, context: "#{context}[:transport_stream_id]")
        Hearth::Validator.validate!(input[:video_pid], ::Integer, context: "#{context}[:video_pid]")
      end
    end

    class M3u8Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::M3u8Settings, context: context)
        Hearth::Validator.validate!(input[:audio_duration], ::String, context: "#{context}[:audio_duration]")
        Hearth::Validator.validate!(input[:audio_frames_per_pes], ::Integer, context: "#{context}[:audio_frames_per_pes]")
        List____listOf__integerMin32Max8182.validate!(input[:audio_pids], context: "#{context}[:audio_pids]") unless input[:audio_pids].nil?
        Hearth::Validator.validate!(input[:data_pts_control], ::String, context: "#{context}[:data_pts_control]")
        Hearth::Validator.validate!(input[:max_pcr_interval], ::Integer, context: "#{context}[:max_pcr_interval]")
        Hearth::Validator.validate!(input[:nielsen_id3], ::String, context: "#{context}[:nielsen_id3]")
        Hearth::Validator.validate!(input[:pat_interval], ::Integer, context: "#{context}[:pat_interval]")
        Hearth::Validator.validate!(input[:pcr_control], ::String, context: "#{context}[:pcr_control]")
        Hearth::Validator.validate!(input[:pcr_pid], ::Integer, context: "#{context}[:pcr_pid]")
        Hearth::Validator.validate!(input[:pmt_interval], ::Integer, context: "#{context}[:pmt_interval]")
        Hearth::Validator.validate!(input[:pmt_pid], ::Integer, context: "#{context}[:pmt_pid]")
        Hearth::Validator.validate!(input[:private_metadata_pid], ::Integer, context: "#{context}[:private_metadata_pid]")
        Hearth::Validator.validate!(input[:program_number], ::Integer, context: "#{context}[:program_number]")
        Hearth::Validator.validate!(input[:scte35_pid], ::Integer, context: "#{context}[:scte35_pid]")
        Hearth::Validator.validate!(input[:scte35_source], ::String, context: "#{context}[:scte35_source]")
        Hearth::Validator.validate!(input[:timed_metadata], ::String, context: "#{context}[:timed_metadata]")
        Hearth::Validator.validate!(input[:timed_metadata_pid], ::Integer, context: "#{context}[:timed_metadata_pid]")
        Hearth::Validator.validate!(input[:transport_stream_id], ::Integer, context: "#{context}[:transport_stream_id]")
        Hearth::Validator.validate!(input[:video_pid], ::Integer, context: "#{context}[:video_pid]")
      end
    end

    class MinBottomRenditionSize
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MinBottomRenditionSize, context: context)
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class MinTopRenditionSize
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MinTopRenditionSize, context: context)
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class MotionImageInserter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MotionImageInserter, context: context)
        MotionImageInsertionFramerate.validate!(input[:framerate], context: "#{context}[:framerate]") unless input[:framerate].nil?
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:insertion_mode], ::String, context: "#{context}[:insertion_mode]")
        MotionImageInsertionOffset.validate!(input[:offset], context: "#{context}[:offset]") unless input[:offset].nil?
        Hearth::Validator.validate!(input[:playback], ::String, context: "#{context}[:playback]")
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
      end
    end

    class MotionImageInsertionFramerate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MotionImageInsertionFramerate, context: context)
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
      end
    end

    class MotionImageInsertionOffset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MotionImageInsertionOffset, context: context)
        Hearth::Validator.validate!(input[:image_x], ::Integer, context: "#{context}[:image_x]")
        Hearth::Validator.validate!(input[:image_y], ::Integer, context: "#{context}[:image_y]")
      end
    end

    class MovSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MovSettings, context: context)
        Hearth::Validator.validate!(input[:clap_atom], ::String, context: "#{context}[:clap_atom]")
        Hearth::Validator.validate!(input[:cslg_atom], ::String, context: "#{context}[:cslg_atom]")
        Hearth::Validator.validate!(input[:mpeg2_four_cc_control], ::String, context: "#{context}[:mpeg2_four_cc_control]")
        Hearth::Validator.validate!(input[:padding_control], ::String, context: "#{context}[:padding_control]")
        Hearth::Validator.validate!(input[:reference], ::String, context: "#{context}[:reference]")
      end
    end

    class Mp2Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mp2Settings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:channels], ::Integer, context: "#{context}[:channels]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
      end
    end

    class Mp3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mp3Settings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:channels], ::Integer, context: "#{context}[:channels]")
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:vbr_quality], ::Integer, context: "#{context}[:vbr_quality]")
      end
    end

    class Mp4Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mp4Settings, context: context)
        Hearth::Validator.validate!(input[:audio_duration], ::String, context: "#{context}[:audio_duration]")
        Hearth::Validator.validate!(input[:cslg_atom], ::String, context: "#{context}[:cslg_atom]")
        Hearth::Validator.validate!(input[:ctts_version], ::Integer, context: "#{context}[:ctts_version]")
        Hearth::Validator.validate!(input[:free_space_box], ::String, context: "#{context}[:free_space_box]")
        Hearth::Validator.validate!(input[:moov_placement], ::String, context: "#{context}[:moov_placement]")
        Hearth::Validator.validate!(input[:mp4_major_brand], ::String, context: "#{context}[:mp4_major_brand]")
      end
    end

    class MpdSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MpdSettings, context: context)
        Hearth::Validator.validate!(input[:accessibility_caption_hints], ::String, context: "#{context}[:accessibility_caption_hints]")
        Hearth::Validator.validate!(input[:audio_duration], ::String, context: "#{context}[:audio_duration]")
        Hearth::Validator.validate!(input[:caption_container_type], ::String, context: "#{context}[:caption_container_type]")
        Hearth::Validator.validate!(input[:klv_metadata], ::String, context: "#{context}[:klv_metadata]")
        Hearth::Validator.validate!(input[:scte35_esam], ::String, context: "#{context}[:scte35_esam]")
        Hearth::Validator.validate!(input[:scte35_source], ::String, context: "#{context}[:scte35_source]")
        Hearth::Validator.validate!(input[:timed_metadata], ::String, context: "#{context}[:timed_metadata]")
      end
    end

    class Mpeg2Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mpeg2Settings, context: context)
        Hearth::Validator.validate!(input[:adaptive_quantization], ::String, context: "#{context}[:adaptive_quantization]")
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:codec_level], ::String, context: "#{context}[:codec_level]")
        Hearth::Validator.validate!(input[:codec_profile], ::String, context: "#{context}[:codec_profile]")
        Hearth::Validator.validate!(input[:dynamic_sub_gop], ::String, context: "#{context}[:dynamic_sub_gop]")
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:gop_closed_cadence], ::Integer, context: "#{context}[:gop_closed_cadence]")
        Hearth::Validator.validate!(input[:gop_size], ::Float, context: "#{context}[:gop_size]")
        Hearth::Validator.validate!(input[:gop_size_units], ::String, context: "#{context}[:gop_size_units]")
        Hearth::Validator.validate!(input[:hrd_buffer_initial_fill_percentage], ::Integer, context: "#{context}[:hrd_buffer_initial_fill_percentage]")
        Hearth::Validator.validate!(input[:hrd_buffer_size], ::Integer, context: "#{context}[:hrd_buffer_size]")
        Hearth::Validator.validate!(input[:interlace_mode], ::String, context: "#{context}[:interlace_mode]")
        Hearth::Validator.validate!(input[:intra_dc_precision], ::String, context: "#{context}[:intra_dc_precision]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:min_i_interval], ::Integer, context: "#{context}[:min_i_interval]")
        Hearth::Validator.validate!(input[:number_b_frames_between_reference_frames], ::Integer, context: "#{context}[:number_b_frames_between_reference_frames]")
        Hearth::Validator.validate!(input[:par_control], ::String, context: "#{context}[:par_control]")
        Hearth::Validator.validate!(input[:par_denominator], ::Integer, context: "#{context}[:par_denominator]")
        Hearth::Validator.validate!(input[:par_numerator], ::Integer, context: "#{context}[:par_numerator]")
        Hearth::Validator.validate!(input[:quality_tuning_level], ::String, context: "#{context}[:quality_tuning_level]")
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
        Hearth::Validator.validate!(input[:scan_type_conversion_mode], ::String, context: "#{context}[:scan_type_conversion_mode]")
        Hearth::Validator.validate!(input[:scene_change_detect], ::String, context: "#{context}[:scene_change_detect]")
        Hearth::Validator.validate!(input[:slow_pal], ::String, context: "#{context}[:slow_pal]")
        Hearth::Validator.validate!(input[:softness], ::Integer, context: "#{context}[:softness]")
        Hearth::Validator.validate!(input[:spatial_adaptive_quantization], ::String, context: "#{context}[:spatial_adaptive_quantization]")
        Hearth::Validator.validate!(input[:syntax], ::String, context: "#{context}[:syntax]")
        Hearth::Validator.validate!(input[:telecine], ::String, context: "#{context}[:telecine]")
        Hearth::Validator.validate!(input[:temporal_adaptive_quantization], ::String, context: "#{context}[:temporal_adaptive_quantization]")
      end
    end

    class MsSmoothAdditionalManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MsSmoothAdditionalManifest, context: context)
        Hearth::Validator.validate!(input[:manifest_name_modifier], ::String, context: "#{context}[:manifest_name_modifier]")
        List____listOf__stringMin1.validate!(input[:selected_outputs], context: "#{context}[:selected_outputs]") unless input[:selected_outputs].nil?
      end
    end

    class MsSmoothEncryptionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MsSmoothEncryptionSettings, context: context)
        SpekeKeyProvider.validate!(input[:speke_key_provider], context: "#{context}[:speke_key_provider]") unless input[:speke_key_provider].nil?
      end
    end

    class MsSmoothGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MsSmoothGroupSettings, context: context)
        List____listOfMsSmoothAdditionalManifest.validate!(input[:additional_manifests], context: "#{context}[:additional_manifests]") unless input[:additional_manifests].nil?
        Hearth::Validator.validate!(input[:audio_deduplication], ::String, context: "#{context}[:audio_deduplication]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        DestinationSettings.validate!(input[:destination_settings], context: "#{context}[:destination_settings]") unless input[:destination_settings].nil?
        MsSmoothEncryptionSettings.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:fragment_length], ::Integer, context: "#{context}[:fragment_length]")
        Hearth::Validator.validate!(input[:fragment_length_control], ::String, context: "#{context}[:fragment_length_control]")
        Hearth::Validator.validate!(input[:manifest_encoding], ::String, context: "#{context}[:manifest_encoding]")
      end
    end

    class MxfSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MxfSettings, context: context)
        Hearth::Validator.validate!(input[:afd_signaling], ::String, context: "#{context}[:afd_signaling]")
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
        MxfXavcProfileSettings.validate!(input[:xavc_profile_settings], context: "#{context}[:xavc_profile_settings]") unless input[:xavc_profile_settings].nil?
      end
    end

    class MxfXavcProfileSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MxfXavcProfileSettings, context: context)
        Hearth::Validator.validate!(input[:duration_mode], ::String, context: "#{context}[:duration_mode]")
        Hearth::Validator.validate!(input[:max_anc_data_size], ::Integer, context: "#{context}[:max_anc_data_size]")
      end
    end

    class NexGuardFileMarkerSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NexGuardFileMarkerSettings, context: context)
        Hearth::Validator.validate!(input[:license], ::String, context: "#{context}[:license]")
        Hearth::Validator.validate!(input[:payload], ::Integer, context: "#{context}[:payload]")
        Hearth::Validator.validate!(input[:preset], ::String, context: "#{context}[:preset]")
        Hearth::Validator.validate!(input[:strength], ::String, context: "#{context}[:strength]")
      end
    end

    class NielsenConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NielsenConfiguration, context: context)
        Hearth::Validator.validate!(input[:breakout_code], ::Integer, context: "#{context}[:breakout_code]")
        Hearth::Validator.validate!(input[:distributor_id], ::String, context: "#{context}[:distributor_id]")
      end
    end

    class NielsenNonLinearWatermarkSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NielsenNonLinearWatermarkSettings, context: context)
        Hearth::Validator.validate!(input[:active_watermark_process], ::String, context: "#{context}[:active_watermark_process]")
        Hearth::Validator.validate!(input[:adi_filename], ::String, context: "#{context}[:adi_filename]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
        Hearth::Validator.validate!(input[:cbet_source_id], ::String, context: "#{context}[:cbet_source_id]")
        Hearth::Validator.validate!(input[:episode_id], ::String, context: "#{context}[:episode_id]")
        Hearth::Validator.validate!(input[:metadata_destination], ::String, context: "#{context}[:metadata_destination]")
        Hearth::Validator.validate!(input[:source_id], ::Integer, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:source_watermark_status], ::String, context: "#{context}[:source_watermark_status]")
        Hearth::Validator.validate!(input[:tic_server_url], ::String, context: "#{context}[:tic_server_url]")
        Hearth::Validator.validate!(input[:unique_tic_per_audio_track], ::String, context: "#{context}[:unique_tic_per_audio_track]")
      end
    end

    class NoiseReducer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoiseReducer, context: context)
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
        NoiseReducerFilterSettings.validate!(input[:filter_settings], context: "#{context}[:filter_settings]") unless input[:filter_settings].nil?
        NoiseReducerSpatialFilterSettings.validate!(input[:spatial_filter_settings], context: "#{context}[:spatial_filter_settings]") unless input[:spatial_filter_settings].nil?
        NoiseReducerTemporalFilterSettings.validate!(input[:temporal_filter_settings], context: "#{context}[:temporal_filter_settings]") unless input[:temporal_filter_settings].nil?
      end
    end

    class NoiseReducerFilterSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoiseReducerFilterSettings, context: context)
        Hearth::Validator.validate!(input[:strength], ::Integer, context: "#{context}[:strength]")
      end
    end

    class NoiseReducerSpatialFilterSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoiseReducerSpatialFilterSettings, context: context)
        Hearth::Validator.validate!(input[:post_filter_sharpen_strength], ::Integer, context: "#{context}[:post_filter_sharpen_strength]")
        Hearth::Validator.validate!(input[:speed], ::Integer, context: "#{context}[:speed]")
        Hearth::Validator.validate!(input[:strength], ::Integer, context: "#{context}[:strength]")
      end
    end

    class NoiseReducerTemporalFilterSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoiseReducerTemporalFilterSettings, context: context)
        Hearth::Validator.validate!(input[:aggressive_mode], ::Integer, context: "#{context}[:aggressive_mode]")
        Hearth::Validator.validate!(input[:post_temporal_sharpening], ::String, context: "#{context}[:post_temporal_sharpening]")
        Hearth::Validator.validate!(input[:post_temporal_sharpening_strength], ::String, context: "#{context}[:post_temporal_sharpening_strength]")
        Hearth::Validator.validate!(input[:speed], ::Integer, context: "#{context}[:speed]")
        Hearth::Validator.validate!(input[:strength], ::Integer, context: "#{context}[:strength]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpusSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpusSettings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:channels], ::Integer, context: "#{context}[:channels]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
      end
    end

    class Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Output, context: context)
        List____listOfAudioDescription.validate!(input[:audio_descriptions], context: "#{context}[:audio_descriptions]") unless input[:audio_descriptions].nil?
        List____listOfCaptionDescription.validate!(input[:caption_descriptions], context: "#{context}[:caption_descriptions]") unless input[:caption_descriptions].nil?
        ContainerSettings.validate!(input[:container_settings], context: "#{context}[:container_settings]") unless input[:container_settings].nil?
        Hearth::Validator.validate!(input[:extension], ::String, context: "#{context}[:extension]")
        Hearth::Validator.validate!(input[:name_modifier], ::String, context: "#{context}[:name_modifier]")
        OutputSettings.validate!(input[:output_settings], context: "#{context}[:output_settings]") unless input[:output_settings].nil?
        Hearth::Validator.validate!(input[:preset], ::String, context: "#{context}[:preset]")
        VideoDescription.validate!(input[:video_description], context: "#{context}[:video_description]") unless input[:video_description].nil?
      end
    end

    class OutputChannelMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputChannelMapping, context: context)
        List____listOf__integerMinNegative60Max6.validate!(input[:input_channels], context: "#{context}[:input_channels]") unless input[:input_channels].nil?
        List____listOf__doubleMinNegative60Max6.validate!(input[:input_channels_fine_tune], context: "#{context}[:input_channels_fine_tune]") unless input[:input_channels_fine_tune].nil?
      end
    end

    class OutputDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputDetail, context: context)
        Hearth::Validator.validate!(input[:duration_in_ms], ::Integer, context: "#{context}[:duration_in_ms]")
        VideoDetail.validate!(input[:video_details], context: "#{context}[:video_details]") unless input[:video_details].nil?
      end
    end

    class OutputGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputGroup, context: context)
        AutomatedEncodingSettings.validate!(input[:automated_encoding_settings], context: "#{context}[:automated_encoding_settings]") unless input[:automated_encoding_settings].nil?
        Hearth::Validator.validate!(input[:custom_name], ::String, context: "#{context}[:custom_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OutputGroupSettings.validate!(input[:output_group_settings], context: "#{context}[:output_group_settings]") unless input[:output_group_settings].nil?
        List____listOfOutput.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class OutputGroupDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputGroupDetail, context: context)
        List____listOfOutputDetail.validate!(input[:output_details], context: "#{context}[:output_details]") unless input[:output_details].nil?
      end
    end

    class OutputGroupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputGroupSettings, context: context)
        CmafGroupSettings.validate!(input[:cmaf_group_settings], context: "#{context}[:cmaf_group_settings]") unless input[:cmaf_group_settings].nil?
        DashIsoGroupSettings.validate!(input[:dash_iso_group_settings], context: "#{context}[:dash_iso_group_settings]") unless input[:dash_iso_group_settings].nil?
        FileGroupSettings.validate!(input[:file_group_settings], context: "#{context}[:file_group_settings]") unless input[:file_group_settings].nil?
        HlsGroupSettings.validate!(input[:hls_group_settings], context: "#{context}[:hls_group_settings]") unless input[:hls_group_settings].nil?
        MsSmoothGroupSettings.validate!(input[:ms_smooth_group_settings], context: "#{context}[:ms_smooth_group_settings]") unless input[:ms_smooth_group_settings].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class OutputSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputSettings, context: context)
        HlsSettings.validate!(input[:hls_settings], context: "#{context}[:hls_settings]") unless input[:hls_settings].nil?
      end
    end

    class PartnerWatermarking
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartnerWatermarking, context: context)
        NexGuardFileMarkerSettings.validate!(input[:nexguard_file_marker_settings], context: "#{context}[:nexguard_file_marker_settings]") unless input[:nexguard_file_marker_settings].nil?
      end
    end

    class Policy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Policy, context: context)
        Hearth::Validator.validate!(input[:http_inputs], ::String, context: "#{context}[:http_inputs]")
        Hearth::Validator.validate!(input[:https_inputs], ::String, context: "#{context}[:https_inputs]")
        Hearth::Validator.validate!(input[:s3_inputs], ::String, context: "#{context}[:s3_inputs]")
      end
    end

    class Preset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Preset, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PresetSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class PresetSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PresetSettings, context: context)
        List____listOfAudioDescription.validate!(input[:audio_descriptions], context: "#{context}[:audio_descriptions]") unless input[:audio_descriptions].nil?
        List____listOfCaptionDescriptionPreset.validate!(input[:caption_descriptions], context: "#{context}[:caption_descriptions]") unless input[:caption_descriptions].nil?
        ContainerSettings.validate!(input[:container_settings], context: "#{context}[:container_settings]") unless input[:container_settings].nil?
        VideoDescription.validate!(input[:video_description], context: "#{context}[:video_description]") unless input[:video_description].nil?
      end
    end

    class ProresSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProresSettings, context: context)
        Hearth::Validator.validate!(input[:chroma_sampling], ::String, context: "#{context}[:chroma_sampling]")
        Hearth::Validator.validate!(input[:codec_profile], ::String, context: "#{context}[:codec_profile]")
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:interlace_mode], ::String, context: "#{context}[:interlace_mode]")
        Hearth::Validator.validate!(input[:par_control], ::String, context: "#{context}[:par_control]")
        Hearth::Validator.validate!(input[:par_denominator], ::Integer, context: "#{context}[:par_denominator]")
        Hearth::Validator.validate!(input[:par_numerator], ::Integer, context: "#{context}[:par_numerator]")
        Hearth::Validator.validate!(input[:scan_type_conversion_mode], ::String, context: "#{context}[:scan_type_conversion_mode]")
        Hearth::Validator.validate!(input[:slow_pal], ::String, context: "#{context}[:slow_pal]")
        Hearth::Validator.validate!(input[:telecine], ::String, context: "#{context}[:telecine]")
      end
    end

    class PutPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPolicyInput, context: context)
        Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class PutPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPolicyOutput, context: context)
        Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class Queue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Queue, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:progressing_jobs_count], ::Integer, context: "#{context}[:progressing_jobs_count]")
        ReservationPlan.validate!(input[:reservation_plan], context: "#{context}[:reservation_plan]") unless input[:reservation_plan].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:submitted_jobs_count], ::Integer, context: "#{context}[:submitted_jobs_count]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class QueueTransition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueueTransition, context: context)
        Hearth::Validator.validate!(input[:destination_queue], ::String, context: "#{context}[:destination_queue]")
        Hearth::Validator.validate!(input[:source_queue], ::String, context: "#{context}[:source_queue]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class Rectangle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rectangle, context: context)
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
        Hearth::Validator.validate!(input[:x], ::Integer, context: "#{context}[:x]")
        Hearth::Validator.validate!(input[:y], ::Integer, context: "#{context}[:y]")
      end
    end

    class RemixSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemixSettings, context: context)
        ChannelMapping.validate!(input[:channel_mapping], context: "#{context}[:channel_mapping]") unless input[:channel_mapping].nil?
        Hearth::Validator.validate!(input[:channels_in], ::Integer, context: "#{context}[:channels_in]")
        Hearth::Validator.validate!(input[:channels_out], ::Integer, context: "#{context}[:channels_out]")
      end
    end

    class ReservationPlan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationPlan, context: context)
        Hearth::Validator.validate!(input[:commitment], ::String, context: "#{context}[:commitment]")
        Hearth::Validator.validate!(input[:expires_at], ::Time, context: "#{context}[:expires_at]")
        Hearth::Validator.validate!(input[:purchased_at], ::Time, context: "#{context}[:purchased_at]")
        Hearth::Validator.validate!(input[:renewal_type], ::String, context: "#{context}[:renewal_type]")
        Hearth::Validator.validate!(input[:reserved_slots], ::Integer, context: "#{context}[:reserved_slots]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ReservationPlanSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationPlanSettings, context: context)
        Hearth::Validator.validate!(input[:commitment], ::String, context: "#{context}[:commitment]")
        Hearth::Validator.validate!(input[:renewal_type], ::String, context: "#{context}[:renewal_type]")
        Hearth::Validator.validate!(input[:reserved_slots], ::Integer, context: "#{context}[:reserved_slots]")
      end
    end

    class ResourceTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTags, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class S3DestinationAccessControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationAccessControl, context: context)
        Hearth::Validator.validate!(input[:canned_acl], ::String, context: "#{context}[:canned_acl]")
      end
    end

    class S3DestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationSettings, context: context)
        S3DestinationAccessControl.validate!(input[:access_control], context: "#{context}[:access_control]") unless input[:access_control].nil?
        S3EncryptionSettings.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
      end
    end

    class S3EncryptionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3EncryptionSettings, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:kms_encryption_context], ::String, context: "#{context}[:kms_encryption_context]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class SccDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SccDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:framerate], ::String, context: "#{context}[:framerate]")
      end
    end

    class SpekeKeyProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpekeKeyProvider, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12.validate!(input[:system_ids], context: "#{context}[:system_ids]") unless input[:system_ids].nil?
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class SpekeKeyProviderCmaf
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpekeKeyProviderCmaf, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.validate!(input[:dash_signaled_system_ids], context: "#{context}[:dash_signaled_system_ids]") unless input[:dash_signaled_system_ids].nil?
        List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.validate!(input[:hls_signaled_system_ids], context: "#{context}[:hls_signaled_system_ids]") unless input[:hls_signaled_system_ids].nil?
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class SrtDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SrtDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:style_passthrough], ::String, context: "#{context}[:style_passthrough]")
      end
    end

    class StaticKeyProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaticKeyProvider, context: context)
        Hearth::Validator.validate!(input[:key_format], ::String, context: "#{context}[:key_format]")
        Hearth::Validator.validate!(input[:key_format_versions], ::String, context: "#{context}[:key_format_versions]")
        Hearth::Validator.validate!(input[:static_key_value], ::String, context: "#{context}[:static_key_value]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TeletextDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TeletextDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:page_number], ::String, context: "#{context}[:page_number]")
        List____listOfTeletextPageType.validate!(input[:page_types], context: "#{context}[:page_types]") unless input[:page_types].nil?
      end
    end

    class TeletextSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TeletextSourceSettings, context: context)
        Hearth::Validator.validate!(input[:page_number], ::String, context: "#{context}[:page_number]")
      end
    end

    class TimecodeBurnin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimecodeBurnin, context: context)
        Hearth::Validator.validate!(input[:font_size], ::Integer, context: "#{context}[:font_size]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class TimecodeConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimecodeConfig, context: context)
        Hearth::Validator.validate!(input[:anchor], ::String, context: "#{context}[:anchor]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:timestamp_offset], ::String, context: "#{context}[:timestamp_offset]")
      end
    end

    class TimedMetadataInsertion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimedMetadataInsertion, context: context)
        List____listOfId3Insertion.validate!(input[:id3_insertions], context: "#{context}[:id3_insertions]") unless input[:id3_insertions].nil?
      end
    end

    class Timing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Timing, context: context)
        Hearth::Validator.validate!(input[:finish_time], ::Time, context: "#{context}[:finish_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrackSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrackSourceSettings, context: context)
        Hearth::Validator.validate!(input[:track_number], ::Integer, context: "#{context}[:track_number]")
      end
    end

    class TtmlDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TtmlDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:style_passthrough], ::String, context: "#{context}[:style_passthrough]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateJobTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobTemplateInput, context: context)
        AccelerationSettings.validate!(input[:acceleration_settings], context: "#{context}[:acceleration_settings]") unless input[:acceleration_settings].nil?
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        List____listOfHopDestination.validate!(input[:hop_destinations], context: "#{context}[:hop_destinations]") unless input[:hop_destinations].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:queue], ::String, context: "#{context}[:queue]")
        JobTemplateSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:status_update_interval], ::String, context: "#{context}[:status_update_interval]")
      end
    end

    class UpdateJobTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobTemplateOutput, context: context)
        JobTemplate.validate!(input[:job_template], context: "#{context}[:job_template]") unless input[:job_template].nil?
      end
    end

    class UpdatePresetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePresetInput, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PresetSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class UpdatePresetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePresetOutput, context: context)
        Preset.validate!(input[:preset], context: "#{context}[:preset]") unless input[:preset].nil?
      end
    end

    class UpdateQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ReservationPlanSettings.validate!(input[:reservation_plan_settings], context: "#{context}[:reservation_plan_settings]") unless input[:reservation_plan_settings].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueOutput, context: context)
        Queue.validate!(input[:queue], context: "#{context}[:queue]") unless input[:queue].nil?
      end
    end

    class Vc3Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Vc3Settings, context: context)
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:interlace_mode], ::String, context: "#{context}[:interlace_mode]")
        Hearth::Validator.validate!(input[:scan_type_conversion_mode], ::String, context: "#{context}[:scan_type_conversion_mode]")
        Hearth::Validator.validate!(input[:slow_pal], ::String, context: "#{context}[:slow_pal]")
        Hearth::Validator.validate!(input[:telecine], ::String, context: "#{context}[:telecine]")
        Hearth::Validator.validate!(input[:vc3_class], ::String, context: "#{context}[:vc3_class]")
      end
    end

    class VideoCodecSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoCodecSettings, context: context)
        Av1Settings.validate!(input[:av1_settings], context: "#{context}[:av1_settings]") unless input[:av1_settings].nil?
        AvcIntraSettings.validate!(input[:avc_intra_settings], context: "#{context}[:avc_intra_settings]") unless input[:avc_intra_settings].nil?
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        FrameCaptureSettings.validate!(input[:frame_capture_settings], context: "#{context}[:frame_capture_settings]") unless input[:frame_capture_settings].nil?
        H264Settings.validate!(input[:h264_settings], context: "#{context}[:h264_settings]") unless input[:h264_settings].nil?
        H265Settings.validate!(input[:h265_settings], context: "#{context}[:h265_settings]") unless input[:h265_settings].nil?
        Mpeg2Settings.validate!(input[:mpeg2_settings], context: "#{context}[:mpeg2_settings]") unless input[:mpeg2_settings].nil?
        ProresSettings.validate!(input[:prores_settings], context: "#{context}[:prores_settings]") unless input[:prores_settings].nil?
        Vc3Settings.validate!(input[:vc3_settings], context: "#{context}[:vc3_settings]") unless input[:vc3_settings].nil?
        Vp8Settings.validate!(input[:vp8_settings], context: "#{context}[:vp8_settings]") unless input[:vp8_settings].nil?
        Vp9Settings.validate!(input[:vp9_settings], context: "#{context}[:vp9_settings]") unless input[:vp9_settings].nil?
        XavcSettings.validate!(input[:xavc_settings], context: "#{context}[:xavc_settings]") unless input[:xavc_settings].nil?
      end
    end

    class VideoDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoDescription, context: context)
        Hearth::Validator.validate!(input[:afd_signaling], ::String, context: "#{context}[:afd_signaling]")
        Hearth::Validator.validate!(input[:anti_alias], ::String, context: "#{context}[:anti_alias]")
        VideoCodecSettings.validate!(input[:codec_settings], context: "#{context}[:codec_settings]") unless input[:codec_settings].nil?
        Hearth::Validator.validate!(input[:color_metadata], ::String, context: "#{context}[:color_metadata]")
        Rectangle.validate!(input[:crop], context: "#{context}[:crop]") unless input[:crop].nil?
        Hearth::Validator.validate!(input[:drop_frame_timecode], ::String, context: "#{context}[:drop_frame_timecode]")
        Hearth::Validator.validate!(input[:fixed_afd], ::Integer, context: "#{context}[:fixed_afd]")
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
        Rectangle.validate!(input[:position], context: "#{context}[:position]") unless input[:position].nil?
        Hearth::Validator.validate!(input[:respond_to_afd], ::String, context: "#{context}[:respond_to_afd]")
        Hearth::Validator.validate!(input[:scaling_behavior], ::String, context: "#{context}[:scaling_behavior]")
        Hearth::Validator.validate!(input[:sharpness], ::Integer, context: "#{context}[:sharpness]")
        Hearth::Validator.validate!(input[:timecode_insertion], ::String, context: "#{context}[:timecode_insertion]")
        VideoPreprocessor.validate!(input[:video_preprocessors], context: "#{context}[:video_preprocessors]") unless input[:video_preprocessors].nil?
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
      end
    end

    class VideoDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoDetail, context: context)
        Hearth::Validator.validate!(input[:height_in_px], ::Integer, context: "#{context}[:height_in_px]")
        Hearth::Validator.validate!(input[:width_in_px], ::Integer, context: "#{context}[:width_in_px]")
      end
    end

    class VideoPreprocessor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoPreprocessor, context: context)
        ColorCorrector.validate!(input[:color_corrector], context: "#{context}[:color_corrector]") unless input[:color_corrector].nil?
        Deinterlacer.validate!(input[:deinterlacer], context: "#{context}[:deinterlacer]") unless input[:deinterlacer].nil?
        DolbyVision.validate!(input[:dolby_vision], context: "#{context}[:dolby_vision]") unless input[:dolby_vision].nil?
        Hdr10Plus.validate!(input[:hdr10_plus], context: "#{context}[:hdr10_plus]") unless input[:hdr10_plus].nil?
        ImageInserter.validate!(input[:image_inserter], context: "#{context}[:image_inserter]") unless input[:image_inserter].nil?
        NoiseReducer.validate!(input[:noise_reducer], context: "#{context}[:noise_reducer]") unless input[:noise_reducer].nil?
        PartnerWatermarking.validate!(input[:partner_watermarking], context: "#{context}[:partner_watermarking]") unless input[:partner_watermarking].nil?
        TimecodeBurnin.validate!(input[:timecode_burnin], context: "#{context}[:timecode_burnin]") unless input[:timecode_burnin].nil?
      end
    end

    class VideoSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoSelector, context: context)
        Hearth::Validator.validate!(input[:alpha_behavior], ::String, context: "#{context}[:alpha_behavior]")
        Hearth::Validator.validate!(input[:color_space], ::String, context: "#{context}[:color_space]")
        Hearth::Validator.validate!(input[:color_space_usage], ::String, context: "#{context}[:color_space_usage]")
        Hearth::Validator.validate!(input[:embedded_timecode_override], ::String, context: "#{context}[:embedded_timecode_override]")
        Hdr10Metadata.validate!(input[:hdr10_metadata], context: "#{context}[:hdr10_metadata]") unless input[:hdr10_metadata].nil?
        Hearth::Validator.validate!(input[:pad_video], ::String, context: "#{context}[:pad_video]")
        Hearth::Validator.validate!(input[:pid], ::Integer, context: "#{context}[:pid]")
        Hearth::Validator.validate!(input[:program_number], ::Integer, context: "#{context}[:program_number]")
        Hearth::Validator.validate!(input[:rotate], ::String, context: "#{context}[:rotate]")
        Hearth::Validator.validate!(input[:sample_range], ::String, context: "#{context}[:sample_range]")
      end
    end

    class VorbisSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VorbisSettings, context: context)
        Hearth::Validator.validate!(input[:channels], ::Integer, context: "#{context}[:channels]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:vbr_quality], ::Integer, context: "#{context}[:vbr_quality]")
      end
    end

    class Vp8Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Vp8Settings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:gop_size], ::Float, context: "#{context}[:gop_size]")
        Hearth::Validator.validate!(input[:hrd_buffer_size], ::Integer, context: "#{context}[:hrd_buffer_size]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:par_control], ::String, context: "#{context}[:par_control]")
        Hearth::Validator.validate!(input[:par_denominator], ::Integer, context: "#{context}[:par_denominator]")
        Hearth::Validator.validate!(input[:par_numerator], ::Integer, context: "#{context}[:par_numerator]")
        Hearth::Validator.validate!(input[:quality_tuning_level], ::String, context: "#{context}[:quality_tuning_level]")
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
      end
    end

    class Vp9Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Vp9Settings, context: context)
        Hearth::Validator.validate!(input[:bitrate], ::Integer, context: "#{context}[:bitrate]")
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:gop_size], ::Float, context: "#{context}[:gop_size]")
        Hearth::Validator.validate!(input[:hrd_buffer_size], ::Integer, context: "#{context}[:hrd_buffer_size]")
        Hearth::Validator.validate!(input[:max_bitrate], ::Integer, context: "#{context}[:max_bitrate]")
        Hearth::Validator.validate!(input[:par_control], ::String, context: "#{context}[:par_control]")
        Hearth::Validator.validate!(input[:par_denominator], ::Integer, context: "#{context}[:par_denominator]")
        Hearth::Validator.validate!(input[:par_numerator], ::Integer, context: "#{context}[:par_numerator]")
        Hearth::Validator.validate!(input[:quality_tuning_level], ::String, context: "#{context}[:quality_tuning_level]")
        Hearth::Validator.validate!(input[:rate_control_mode], ::String, context: "#{context}[:rate_control_mode]")
      end
    end

    class WavSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WavSettings, context: context)
        Hearth::Validator.validate!(input[:bit_depth], ::Integer, context: "#{context}[:bit_depth]")
        Hearth::Validator.validate!(input[:channels], ::Integer, context: "#{context}[:channels]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
      end
    end

    class WebvttDestinationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebvttDestinationSettings, context: context)
        Hearth::Validator.validate!(input[:accessibility], ::String, context: "#{context}[:accessibility]")
        Hearth::Validator.validate!(input[:style_passthrough], ::String, context: "#{context}[:style_passthrough]")
      end
    end

    class WebvttHlsSourceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebvttHlsSourceSettings, context: context)
        Hearth::Validator.validate!(input[:rendition_group_id], ::String, context: "#{context}[:rendition_group_id]")
        Hearth::Validator.validate!(input[:rendition_language_code], ::String, context: "#{context}[:rendition_language_code]")
        Hearth::Validator.validate!(input[:rendition_name], ::String, context: "#{context}[:rendition_name]")
      end
    end

    class Xavc4kIntraCbgProfileSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Xavc4kIntraCbgProfileSettings, context: context)
        Hearth::Validator.validate!(input[:xavc_class], ::String, context: "#{context}[:xavc_class]")
      end
    end

    class Xavc4kIntraVbrProfileSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Xavc4kIntraVbrProfileSettings, context: context)
        Hearth::Validator.validate!(input[:xavc_class], ::String, context: "#{context}[:xavc_class]")
      end
    end

    class Xavc4kProfileSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Xavc4kProfileSettings, context: context)
        Hearth::Validator.validate!(input[:bitrate_class], ::String, context: "#{context}[:bitrate_class]")
        Hearth::Validator.validate!(input[:codec_profile], ::String, context: "#{context}[:codec_profile]")
        Hearth::Validator.validate!(input[:flicker_adaptive_quantization], ::String, context: "#{context}[:flicker_adaptive_quantization]")
        Hearth::Validator.validate!(input[:gop_b_reference], ::String, context: "#{context}[:gop_b_reference]")
        Hearth::Validator.validate!(input[:gop_closed_cadence], ::Integer, context: "#{context}[:gop_closed_cadence]")
        Hearth::Validator.validate!(input[:hrd_buffer_size], ::Integer, context: "#{context}[:hrd_buffer_size]")
        Hearth::Validator.validate!(input[:quality_tuning_level], ::String, context: "#{context}[:quality_tuning_level]")
        Hearth::Validator.validate!(input[:slices], ::Integer, context: "#{context}[:slices]")
      end
    end

    class XavcHdIntraCbgProfileSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::XavcHdIntraCbgProfileSettings, context: context)
        Hearth::Validator.validate!(input[:xavc_class], ::String, context: "#{context}[:xavc_class]")
      end
    end

    class XavcHdProfileSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::XavcHdProfileSettings, context: context)
        Hearth::Validator.validate!(input[:bitrate_class], ::String, context: "#{context}[:bitrate_class]")
        Hearth::Validator.validate!(input[:flicker_adaptive_quantization], ::String, context: "#{context}[:flicker_adaptive_quantization]")
        Hearth::Validator.validate!(input[:gop_b_reference], ::String, context: "#{context}[:gop_b_reference]")
        Hearth::Validator.validate!(input[:gop_closed_cadence], ::Integer, context: "#{context}[:gop_closed_cadence]")
        Hearth::Validator.validate!(input[:hrd_buffer_size], ::Integer, context: "#{context}[:hrd_buffer_size]")
        Hearth::Validator.validate!(input[:interlace_mode], ::String, context: "#{context}[:interlace_mode]")
        Hearth::Validator.validate!(input[:quality_tuning_level], ::String, context: "#{context}[:quality_tuning_level]")
        Hearth::Validator.validate!(input[:slices], ::Integer, context: "#{context}[:slices]")
        Hearth::Validator.validate!(input[:telecine], ::String, context: "#{context}[:telecine]")
      end
    end

    class XavcSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::XavcSettings, context: context)
        Hearth::Validator.validate!(input[:adaptive_quantization], ::String, context: "#{context}[:adaptive_quantization]")
        Hearth::Validator.validate!(input[:entropy_encoding], ::String, context: "#{context}[:entropy_encoding]")
        Hearth::Validator.validate!(input[:framerate_control], ::String, context: "#{context}[:framerate_control]")
        Hearth::Validator.validate!(input[:framerate_conversion_algorithm], ::String, context: "#{context}[:framerate_conversion_algorithm]")
        Hearth::Validator.validate!(input[:framerate_denominator], ::Integer, context: "#{context}[:framerate_denominator]")
        Hearth::Validator.validate!(input[:framerate_numerator], ::Integer, context: "#{context}[:framerate_numerator]")
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
        Hearth::Validator.validate!(input[:slow_pal], ::String, context: "#{context}[:slow_pal]")
        Hearth::Validator.validate!(input[:softness], ::Integer, context: "#{context}[:softness]")
        Hearth::Validator.validate!(input[:spatial_adaptive_quantization], ::String, context: "#{context}[:spatial_adaptive_quantization]")
        Hearth::Validator.validate!(input[:temporal_adaptive_quantization], ::String, context: "#{context}[:temporal_adaptive_quantization]")
        Xavc4kIntraCbgProfileSettings.validate!(input[:xavc4k_intra_cbg_profile_settings], context: "#{context}[:xavc4k_intra_cbg_profile_settings]") unless input[:xavc4k_intra_cbg_profile_settings].nil?
        Xavc4kIntraVbrProfileSettings.validate!(input[:xavc4k_intra_vbr_profile_settings], context: "#{context}[:xavc4k_intra_vbr_profile_settings]") unless input[:xavc4k_intra_vbr_profile_settings].nil?
        Xavc4kProfileSettings.validate!(input[:xavc4k_profile_settings], context: "#{context}[:xavc4k_profile_settings]") unless input[:xavc4k_profile_settings].nil?
        XavcHdIntraCbgProfileSettings.validate!(input[:xavc_hd_intra_cbg_profile_settings], context: "#{context}[:xavc_hd_intra_cbg_profile_settings]") unless input[:xavc_hd_intra_cbg_profile_settings].nil?
        XavcHdProfileSettings.validate!(input[:xavc_hd_profile_settings], context: "#{context}[:xavc_hd_profile_settings]") unless input[:xavc_hd_profile_settings].nil?
      end
    end

    class List____listOfAllowedRenditionSize
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AllowedRenditionSize.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class List____listOfAutomatedAbrRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutomatedAbrRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class List____listOfCaptionDescriptionPreset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CaptionDescriptionPreset.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCmafAdditionalManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CmafAdditionalManifest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDashAdditionalManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DashAdditionalManifest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Endpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfForceIncludeRenditionSize
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ForceIncludeRenditionSize.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class List____listOfHlsAdditionalManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HlsAdditionalManifest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfHlsCaptionLanguageMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HlsCaptionLanguageMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfHopDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HopDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfId3Insertion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Id3Insertion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class List____listOfInputClipping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputClipping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInputTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InputTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInsertableImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InsertableImage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Job.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfJobTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMsSmoothAdditionalManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MsSmoothAdditionalManifest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class List____listOfOutputChannelMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OutputChannelMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfOutputDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OutputDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class List____listOfOutputGroupDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OutputGroupDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfPreset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Preset.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfQueue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Queue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfQueueTransition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QueueTransition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfTeletextPageType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__doubleMinNegative60Max6
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__integerMin1Max2147483647
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__integerMin32Max8182
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__integerMinNegative60Max6
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

    class List____listOf__stringMin1
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__stringPatternS3ASSETMAPXml
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Map____mapOfAudioSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AudioSelector.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Map____mapOfAudioSelectorGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AudioSelectorGroup.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Map____mapOfCaptionSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          CaptionSelector.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
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
