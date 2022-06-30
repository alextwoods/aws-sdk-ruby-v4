# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MediaConvert
  module Builders

    # Operation Builder for AssociateCertificate
    class AssociateCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2017-08-29/certificates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelJob
    class CancelJob
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/jobs/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateJob
    class CreateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2017-08-29/jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accelerationSettings'] = Builders::AccelerationSettings.build(input[:acceleration_settings]) unless input[:acceleration_settings].nil?
        data['billingTagsSource'] = input[:billing_tags_source] unless input[:billing_tags_source].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['hopDestinations'] = Builders::List____listOfHopDestination.build(input[:hop_destinations]) unless input[:hop_destinations].nil?
        data['jobTemplate'] = input[:job_template] unless input[:job_template].nil?
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['queue'] = input[:queue] unless input[:queue].nil?
        data['role'] = input[:role] unless input[:role].nil?
        data['settings'] = Builders::JobSettings.build(input[:settings]) unless input[:settings].nil?
        data['simulateReservedQueue'] = input[:simulate_reserved_queue] unless input[:simulate_reserved_queue].nil?
        data['statusUpdateInterval'] = input[:status_update_interval] unless input[:status_update_interval].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['userMetadata'] = Builders::Map____mapOf__string.build(input[:user_metadata]) unless input[:user_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for __mapOf__string
    class Map____mapOf__string
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for JobSettings
    class JobSettings
      def self.build(input)
        data = {}
        data['adAvailOffset'] = input[:ad_avail_offset] unless input[:ad_avail_offset].nil?
        data['availBlanking'] = Builders::AvailBlanking.build(input[:avail_blanking]) unless input[:avail_blanking].nil?
        data['esam'] = Builders::EsamSettings.build(input[:esam]) unless input[:esam].nil?
        data['extendedDataServices'] = Builders::ExtendedDataServices.build(input[:extended_data_services]) unless input[:extended_data_services].nil?
        data['inputs'] = Builders::List____listOfInput.build(input[:inputs]) unless input[:inputs].nil?
        data['kantarWatermark'] = Builders::KantarWatermarkSettings.build(input[:kantar_watermark]) unless input[:kantar_watermark].nil?
        data['motionImageInserter'] = Builders::MotionImageInserter.build(input[:motion_image_inserter]) unless input[:motion_image_inserter].nil?
        data['nielsenConfiguration'] = Builders::NielsenConfiguration.build(input[:nielsen_configuration]) unless input[:nielsen_configuration].nil?
        data['nielsenNonLinearWatermark'] = Builders::NielsenNonLinearWatermarkSettings.build(input[:nielsen_non_linear_watermark]) unless input[:nielsen_non_linear_watermark].nil?
        data['outputGroups'] = Builders::List____listOfOutputGroup.build(input[:output_groups]) unless input[:output_groups].nil?
        data['timecodeConfig'] = Builders::TimecodeConfig.build(input[:timecode_config]) unless input[:timecode_config].nil?
        data['timedMetadataInsertion'] = Builders::TimedMetadataInsertion.build(input[:timed_metadata_insertion]) unless input[:timed_metadata_insertion].nil?
        data
      end
    end

    # Structure Builder for TimedMetadataInsertion
    class TimedMetadataInsertion
      def self.build(input)
        data = {}
        data['id3Insertions'] = Builders::List____listOfId3Insertion.build(input[:id3_insertions]) unless input[:id3_insertions].nil?
        data
      end
    end

    # List Builder for __listOfId3Insertion
    class List____listOfId3Insertion
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Id3Insertion.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Id3Insertion
    class Id3Insertion
      def self.build(input)
        data = {}
        data['id3'] = input[:id3] unless input[:id3].nil?
        data['timecode'] = input[:timecode] unless input[:timecode].nil?
        data
      end
    end

    # Structure Builder for TimecodeConfig
    class TimecodeConfig
      def self.build(input)
        data = {}
        data['anchor'] = input[:anchor] unless input[:anchor].nil?
        data['source'] = input[:source] unless input[:source].nil?
        data['start'] = input[:start] unless input[:start].nil?
        data['timestampOffset'] = input[:timestamp_offset] unless input[:timestamp_offset].nil?
        data
      end
    end

    # List Builder for __listOfOutputGroup
    class List____listOfOutputGroup
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OutputGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputGroup
    class OutputGroup
      def self.build(input)
        data = {}
        data['automatedEncodingSettings'] = Builders::AutomatedEncodingSettings.build(input[:automated_encoding_settings]) unless input[:automated_encoding_settings].nil?
        data['customName'] = input[:custom_name] unless input[:custom_name].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['outputGroupSettings'] = Builders::OutputGroupSettings.build(input[:output_group_settings]) unless input[:output_group_settings].nil?
        data['outputs'] = Builders::List____listOfOutput.build(input[:outputs]) unless input[:outputs].nil?
        data
      end
    end

    # List Builder for __listOfOutput
    class List____listOfOutput
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Output.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Output
    class Output
      def self.build(input)
        data = {}
        data['audioDescriptions'] = Builders::List____listOfAudioDescription.build(input[:audio_descriptions]) unless input[:audio_descriptions].nil?
        data['captionDescriptions'] = Builders::List____listOfCaptionDescription.build(input[:caption_descriptions]) unless input[:caption_descriptions].nil?
        data['containerSettings'] = Builders::ContainerSettings.build(input[:container_settings]) unless input[:container_settings].nil?
        data['extension'] = input[:extension] unless input[:extension].nil?
        data['nameModifier'] = input[:name_modifier] unless input[:name_modifier].nil?
        data['outputSettings'] = Builders::OutputSettings.build(input[:output_settings]) unless input[:output_settings].nil?
        data['preset'] = input[:preset] unless input[:preset].nil?
        data['videoDescription'] = Builders::VideoDescription.build(input[:video_description]) unless input[:video_description].nil?
        data
      end
    end

    # Structure Builder for VideoDescription
    class VideoDescription
      def self.build(input)
        data = {}
        data['afdSignaling'] = input[:afd_signaling] unless input[:afd_signaling].nil?
        data['antiAlias'] = input[:anti_alias] unless input[:anti_alias].nil?
        data['codecSettings'] = Builders::VideoCodecSettings.build(input[:codec_settings]) unless input[:codec_settings].nil?
        data['colorMetadata'] = input[:color_metadata] unless input[:color_metadata].nil?
        data['crop'] = Builders::Rectangle.build(input[:crop]) unless input[:crop].nil?
        data['dropFrameTimecode'] = input[:drop_frame_timecode] unless input[:drop_frame_timecode].nil?
        data['fixedAfd'] = input[:fixed_afd] unless input[:fixed_afd].nil?
        data['height'] = input[:height] unless input[:height].nil?
        data['position'] = Builders::Rectangle.build(input[:position]) unless input[:position].nil?
        data['respondToAfd'] = input[:respond_to_afd] unless input[:respond_to_afd].nil?
        data['scalingBehavior'] = input[:scaling_behavior] unless input[:scaling_behavior].nil?
        data['sharpness'] = input[:sharpness] unless input[:sharpness].nil?
        data['timecodeInsertion'] = input[:timecode_insertion] unless input[:timecode_insertion].nil?
        data['videoPreprocessors'] = Builders::VideoPreprocessor.build(input[:video_preprocessors]) unless input[:video_preprocessors].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data
      end
    end

    # Structure Builder for VideoPreprocessor
    class VideoPreprocessor
      def self.build(input)
        data = {}
        data['colorCorrector'] = Builders::ColorCorrector.build(input[:color_corrector]) unless input[:color_corrector].nil?
        data['deinterlacer'] = Builders::Deinterlacer.build(input[:deinterlacer]) unless input[:deinterlacer].nil?
        data['dolbyVision'] = Builders::DolbyVision.build(input[:dolby_vision]) unless input[:dolby_vision].nil?
        data['hdr10Plus'] = Builders::Hdr10Plus.build(input[:hdr10_plus]) unless input[:hdr10_plus].nil?
        data['imageInserter'] = Builders::ImageInserter.build(input[:image_inserter]) unless input[:image_inserter].nil?
        data['noiseReducer'] = Builders::NoiseReducer.build(input[:noise_reducer]) unless input[:noise_reducer].nil?
        data['partnerWatermarking'] = Builders::PartnerWatermarking.build(input[:partner_watermarking]) unless input[:partner_watermarking].nil?
        data['timecodeBurnin'] = Builders::TimecodeBurnin.build(input[:timecode_burnin]) unless input[:timecode_burnin].nil?
        data
      end
    end

    # Structure Builder for TimecodeBurnin
    class TimecodeBurnin
      def self.build(input)
        data = {}
        data['fontSize'] = input[:font_size] unless input[:font_size].nil?
        data['position'] = input[:position] unless input[:position].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Structure Builder for PartnerWatermarking
    class PartnerWatermarking
      def self.build(input)
        data = {}
        data['nexguardFileMarkerSettings'] = Builders::NexGuardFileMarkerSettings.build(input[:nexguard_file_marker_settings]) unless input[:nexguard_file_marker_settings].nil?
        data
      end
    end

    # Structure Builder for NexGuardFileMarkerSettings
    class NexGuardFileMarkerSettings
      def self.build(input)
        data = {}
        data['license'] = input[:license] unless input[:license].nil?
        data['payload'] = input[:payload] unless input[:payload].nil?
        data['preset'] = input[:preset] unless input[:preset].nil?
        data['strength'] = input[:strength] unless input[:strength].nil?
        data
      end
    end

    # Structure Builder for NoiseReducer
    class NoiseReducer
      def self.build(input)
        data = {}
        data['filter'] = input[:filter] unless input[:filter].nil?
        data['filterSettings'] = Builders::NoiseReducerFilterSettings.build(input[:filter_settings]) unless input[:filter_settings].nil?
        data['spatialFilterSettings'] = Builders::NoiseReducerSpatialFilterSettings.build(input[:spatial_filter_settings]) unless input[:spatial_filter_settings].nil?
        data['temporalFilterSettings'] = Builders::NoiseReducerTemporalFilterSettings.build(input[:temporal_filter_settings]) unless input[:temporal_filter_settings].nil?
        data
      end
    end

    # Structure Builder for NoiseReducerTemporalFilterSettings
    class NoiseReducerTemporalFilterSettings
      def self.build(input)
        data = {}
        data['aggressiveMode'] = input[:aggressive_mode] unless input[:aggressive_mode].nil?
        data['postTemporalSharpening'] = input[:post_temporal_sharpening] unless input[:post_temporal_sharpening].nil?
        data['postTemporalSharpeningStrength'] = input[:post_temporal_sharpening_strength] unless input[:post_temporal_sharpening_strength].nil?
        data['speed'] = input[:speed] unless input[:speed].nil?
        data['strength'] = input[:strength] unless input[:strength].nil?
        data
      end
    end

    # Structure Builder for NoiseReducerSpatialFilterSettings
    class NoiseReducerSpatialFilterSettings
      def self.build(input)
        data = {}
        data['postFilterSharpenStrength'] = input[:post_filter_sharpen_strength] unless input[:post_filter_sharpen_strength].nil?
        data['speed'] = input[:speed] unless input[:speed].nil?
        data['strength'] = input[:strength] unless input[:strength].nil?
        data
      end
    end

    # Structure Builder for NoiseReducerFilterSettings
    class NoiseReducerFilterSettings
      def self.build(input)
        data = {}
        data['strength'] = input[:strength] unless input[:strength].nil?
        data
      end
    end

    # Structure Builder for ImageInserter
    class ImageInserter
      def self.build(input)
        data = {}
        data['insertableImages'] = Builders::List____listOfInsertableImage.build(input[:insertable_images]) unless input[:insertable_images].nil?
        data
      end
    end

    # List Builder for __listOfInsertableImage
    class List____listOfInsertableImage
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InsertableImage.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InsertableImage
    class InsertableImage
      def self.build(input)
        data = {}
        data['duration'] = input[:duration] unless input[:duration].nil?
        data['fadeIn'] = input[:fade_in] unless input[:fade_in].nil?
        data['fadeOut'] = input[:fade_out] unless input[:fade_out].nil?
        data['height'] = input[:height] unless input[:height].nil?
        data['imageInserterInput'] = input[:image_inserter_input] unless input[:image_inserter_input].nil?
        data['imageX'] = input[:image_x] unless input[:image_x].nil?
        data['imageY'] = input[:image_y] unless input[:image_y].nil?
        data['layer'] = input[:layer] unless input[:layer].nil?
        data['opacity'] = input[:opacity] unless input[:opacity].nil?
        data['startTime'] = input[:start_time] unless input[:start_time].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data
      end
    end

    # Structure Builder for Hdr10Plus
    class Hdr10Plus
      def self.build(input)
        data = {}
        data['masteringMonitorNits'] = input[:mastering_monitor_nits] unless input[:mastering_monitor_nits].nil?
        data['targetMonitorNits'] = input[:target_monitor_nits] unless input[:target_monitor_nits].nil?
        data
      end
    end

    # Structure Builder for DolbyVision
    class DolbyVision
      def self.build(input)
        data = {}
        data['l6Metadata'] = Builders::DolbyVisionLevel6Metadata.build(input[:l6_metadata]) unless input[:l6_metadata].nil?
        data['l6Mode'] = input[:l6_mode] unless input[:l6_mode].nil?
        data['mapping'] = input[:mapping] unless input[:mapping].nil?
        data['profile'] = input[:profile] unless input[:profile].nil?
        data
      end
    end

    # Structure Builder for DolbyVisionLevel6Metadata
    class DolbyVisionLevel6Metadata
      def self.build(input)
        data = {}
        data['maxCll'] = input[:max_cll] unless input[:max_cll].nil?
        data['maxFall'] = input[:max_fall] unless input[:max_fall].nil?
        data
      end
    end

    # Structure Builder for Deinterlacer
    class Deinterlacer
      def self.build(input)
        data = {}
        data['algorithm'] = input[:algorithm] unless input[:algorithm].nil?
        data['control'] = input[:control] unless input[:control].nil?
        data['mode'] = input[:mode] unless input[:mode].nil?
        data
      end
    end

    # Structure Builder for ColorCorrector
    class ColorCorrector
      def self.build(input)
        data = {}
        data['brightness'] = input[:brightness] unless input[:brightness].nil?
        data['colorSpaceConversion'] = input[:color_space_conversion] unless input[:color_space_conversion].nil?
        data['contrast'] = input[:contrast] unless input[:contrast].nil?
        data['hdr10Metadata'] = Builders::Hdr10Metadata.build(input[:hdr10_metadata]) unless input[:hdr10_metadata].nil?
        data['hue'] = input[:hue] unless input[:hue].nil?
        data['sampleRangeConversion'] = input[:sample_range_conversion] unless input[:sample_range_conversion].nil?
        data['saturation'] = input[:saturation] unless input[:saturation].nil?
        data
      end
    end

    # Structure Builder for Hdr10Metadata
    class Hdr10Metadata
      def self.build(input)
        data = {}
        data['bluePrimaryX'] = input[:blue_primary_x] unless input[:blue_primary_x].nil?
        data['bluePrimaryY'] = input[:blue_primary_y] unless input[:blue_primary_y].nil?
        data['greenPrimaryX'] = input[:green_primary_x] unless input[:green_primary_x].nil?
        data['greenPrimaryY'] = input[:green_primary_y] unless input[:green_primary_y].nil?
        data['maxContentLightLevel'] = input[:max_content_light_level] unless input[:max_content_light_level].nil?
        data['maxFrameAverageLightLevel'] = input[:max_frame_average_light_level] unless input[:max_frame_average_light_level].nil?
        data['maxLuminance'] = input[:max_luminance] unless input[:max_luminance].nil?
        data['minLuminance'] = input[:min_luminance] unless input[:min_luminance].nil?
        data['redPrimaryX'] = input[:red_primary_x] unless input[:red_primary_x].nil?
        data['redPrimaryY'] = input[:red_primary_y] unless input[:red_primary_y].nil?
        data['whitePointX'] = input[:white_point_x] unless input[:white_point_x].nil?
        data['whitePointY'] = input[:white_point_y] unless input[:white_point_y].nil?
        data
      end
    end

    # Structure Builder for Rectangle
    class Rectangle
      def self.build(input)
        data = {}
        data['height'] = input[:height] unless input[:height].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data['x'] = input[:x] unless input[:x].nil?
        data['y'] = input[:y] unless input[:y].nil?
        data
      end
    end

    # Structure Builder for VideoCodecSettings
    class VideoCodecSettings
      def self.build(input)
        data = {}
        data['av1Settings'] = Builders::Av1Settings.build(input[:av1_settings]) unless input[:av1_settings].nil?
        data['avcIntraSettings'] = Builders::AvcIntraSettings.build(input[:avc_intra_settings]) unless input[:avc_intra_settings].nil?
        data['codec'] = input[:codec] unless input[:codec].nil?
        data['frameCaptureSettings'] = Builders::FrameCaptureSettings.build(input[:frame_capture_settings]) unless input[:frame_capture_settings].nil?
        data['h264Settings'] = Builders::H264Settings.build(input[:h264_settings]) unless input[:h264_settings].nil?
        data['h265Settings'] = Builders::H265Settings.build(input[:h265_settings]) unless input[:h265_settings].nil?
        data['mpeg2Settings'] = Builders::Mpeg2Settings.build(input[:mpeg2_settings]) unless input[:mpeg2_settings].nil?
        data['proresSettings'] = Builders::ProresSettings.build(input[:prores_settings]) unless input[:prores_settings].nil?
        data['vc3Settings'] = Builders::Vc3Settings.build(input[:vc3_settings]) unless input[:vc3_settings].nil?
        data['vp8Settings'] = Builders::Vp8Settings.build(input[:vp8_settings]) unless input[:vp8_settings].nil?
        data['vp9Settings'] = Builders::Vp9Settings.build(input[:vp9_settings]) unless input[:vp9_settings].nil?
        data['xavcSettings'] = Builders::XavcSettings.build(input[:xavc_settings]) unless input[:xavc_settings].nil?
        data
      end
    end

    # Structure Builder for XavcSettings
    class XavcSettings
      def self.build(input)
        data = {}
        data['adaptiveQuantization'] = input[:adaptive_quantization] unless input[:adaptive_quantization].nil?
        data['entropyEncoding'] = input[:entropy_encoding] unless input[:entropy_encoding].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['profile'] = input[:profile] unless input[:profile].nil?
        data['slowPal'] = input[:slow_pal] unless input[:slow_pal].nil?
        data['softness'] = input[:softness] unless input[:softness].nil?
        data['spatialAdaptiveQuantization'] = input[:spatial_adaptive_quantization] unless input[:spatial_adaptive_quantization].nil?
        data['temporalAdaptiveQuantization'] = input[:temporal_adaptive_quantization] unless input[:temporal_adaptive_quantization].nil?
        data['xavc4kIntraCbgProfileSettings'] = Builders::Xavc4kIntraCbgProfileSettings.build(input[:xavc4k_intra_cbg_profile_settings]) unless input[:xavc4k_intra_cbg_profile_settings].nil?
        data['xavc4kIntraVbrProfileSettings'] = Builders::Xavc4kIntraVbrProfileSettings.build(input[:xavc4k_intra_vbr_profile_settings]) unless input[:xavc4k_intra_vbr_profile_settings].nil?
        data['xavc4kProfileSettings'] = Builders::Xavc4kProfileSettings.build(input[:xavc4k_profile_settings]) unless input[:xavc4k_profile_settings].nil?
        data['xavcHdIntraCbgProfileSettings'] = Builders::XavcHdIntraCbgProfileSettings.build(input[:xavc_hd_intra_cbg_profile_settings]) unless input[:xavc_hd_intra_cbg_profile_settings].nil?
        data['xavcHdProfileSettings'] = Builders::XavcHdProfileSettings.build(input[:xavc_hd_profile_settings]) unless input[:xavc_hd_profile_settings].nil?
        data
      end
    end

    # Structure Builder for XavcHdProfileSettings
    class XavcHdProfileSettings
      def self.build(input)
        data = {}
        data['bitrateClass'] = input[:bitrate_class] unless input[:bitrate_class].nil?
        data['flickerAdaptiveQuantization'] = input[:flicker_adaptive_quantization] unless input[:flicker_adaptive_quantization].nil?
        data['gopBReference'] = input[:gop_b_reference] unless input[:gop_b_reference].nil?
        data['gopClosedCadence'] = input[:gop_closed_cadence] unless input[:gop_closed_cadence].nil?
        data['hrdBufferSize'] = input[:hrd_buffer_size] unless input[:hrd_buffer_size].nil?
        data['interlaceMode'] = input[:interlace_mode] unless input[:interlace_mode].nil?
        data['qualityTuningLevel'] = input[:quality_tuning_level] unless input[:quality_tuning_level].nil?
        data['slices'] = input[:slices] unless input[:slices].nil?
        data['telecine'] = input[:telecine] unless input[:telecine].nil?
        data
      end
    end

    # Structure Builder for XavcHdIntraCbgProfileSettings
    class XavcHdIntraCbgProfileSettings
      def self.build(input)
        data = {}
        data['xavcClass'] = input[:xavc_class] unless input[:xavc_class].nil?
        data
      end
    end

    # Structure Builder for Xavc4kProfileSettings
    class Xavc4kProfileSettings
      def self.build(input)
        data = {}
        data['bitrateClass'] = input[:bitrate_class] unless input[:bitrate_class].nil?
        data['codecProfile'] = input[:codec_profile] unless input[:codec_profile].nil?
        data['flickerAdaptiveQuantization'] = input[:flicker_adaptive_quantization] unless input[:flicker_adaptive_quantization].nil?
        data['gopBReference'] = input[:gop_b_reference] unless input[:gop_b_reference].nil?
        data['gopClosedCadence'] = input[:gop_closed_cadence] unless input[:gop_closed_cadence].nil?
        data['hrdBufferSize'] = input[:hrd_buffer_size] unless input[:hrd_buffer_size].nil?
        data['qualityTuningLevel'] = input[:quality_tuning_level] unless input[:quality_tuning_level].nil?
        data['slices'] = input[:slices] unless input[:slices].nil?
        data
      end
    end

    # Structure Builder for Xavc4kIntraVbrProfileSettings
    class Xavc4kIntraVbrProfileSettings
      def self.build(input)
        data = {}
        data['xavcClass'] = input[:xavc_class] unless input[:xavc_class].nil?
        data
      end
    end

    # Structure Builder for Xavc4kIntraCbgProfileSettings
    class Xavc4kIntraCbgProfileSettings
      def self.build(input)
        data = {}
        data['xavcClass'] = input[:xavc_class] unless input[:xavc_class].nil?
        data
      end
    end

    # Structure Builder for Vp9Settings
    class Vp9Settings
      def self.build(input)
        data = {}
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(input[:gop_size]) unless input[:gop_size].nil?
        data['hrdBufferSize'] = input[:hrd_buffer_size] unless input[:hrd_buffer_size].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['parControl'] = input[:par_control] unless input[:par_control].nil?
        data['parDenominator'] = input[:par_denominator] unless input[:par_denominator].nil?
        data['parNumerator'] = input[:par_numerator] unless input[:par_numerator].nil?
        data['qualityTuningLevel'] = input[:quality_tuning_level] unless input[:quality_tuning_level].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data
      end
    end

    # Structure Builder for Vp8Settings
    class Vp8Settings
      def self.build(input)
        data = {}
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(input[:gop_size]) unless input[:gop_size].nil?
        data['hrdBufferSize'] = input[:hrd_buffer_size] unless input[:hrd_buffer_size].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['parControl'] = input[:par_control] unless input[:par_control].nil?
        data['parDenominator'] = input[:par_denominator] unless input[:par_denominator].nil?
        data['parNumerator'] = input[:par_numerator] unless input[:par_numerator].nil?
        data['qualityTuningLevel'] = input[:quality_tuning_level] unless input[:quality_tuning_level].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data
      end
    end

    # Structure Builder for Vc3Settings
    class Vc3Settings
      def self.build(input)
        data = {}
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['interlaceMode'] = input[:interlace_mode] unless input[:interlace_mode].nil?
        data['scanTypeConversionMode'] = input[:scan_type_conversion_mode] unless input[:scan_type_conversion_mode].nil?
        data['slowPal'] = input[:slow_pal] unless input[:slow_pal].nil?
        data['telecine'] = input[:telecine] unless input[:telecine].nil?
        data['vc3Class'] = input[:vc3_class] unless input[:vc3_class].nil?
        data
      end
    end

    # Structure Builder for ProresSettings
    class ProresSettings
      def self.build(input)
        data = {}
        data['chromaSampling'] = input[:chroma_sampling] unless input[:chroma_sampling].nil?
        data['codecProfile'] = input[:codec_profile] unless input[:codec_profile].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['interlaceMode'] = input[:interlace_mode] unless input[:interlace_mode].nil?
        data['parControl'] = input[:par_control] unless input[:par_control].nil?
        data['parDenominator'] = input[:par_denominator] unless input[:par_denominator].nil?
        data['parNumerator'] = input[:par_numerator] unless input[:par_numerator].nil?
        data['scanTypeConversionMode'] = input[:scan_type_conversion_mode] unless input[:scan_type_conversion_mode].nil?
        data['slowPal'] = input[:slow_pal] unless input[:slow_pal].nil?
        data['telecine'] = input[:telecine] unless input[:telecine].nil?
        data
      end
    end

    # Structure Builder for Mpeg2Settings
    class Mpeg2Settings
      def self.build(input)
        data = {}
        data['adaptiveQuantization'] = input[:adaptive_quantization] unless input[:adaptive_quantization].nil?
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['codecLevel'] = input[:codec_level] unless input[:codec_level].nil?
        data['codecProfile'] = input[:codec_profile] unless input[:codec_profile].nil?
        data['dynamicSubGop'] = input[:dynamic_sub_gop] unless input[:dynamic_sub_gop].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['gopClosedCadence'] = input[:gop_closed_cadence] unless input[:gop_closed_cadence].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(input[:gop_size]) unless input[:gop_size].nil?
        data['gopSizeUnits'] = input[:gop_size_units] unless input[:gop_size_units].nil?
        data['hrdBufferInitialFillPercentage'] = input[:hrd_buffer_initial_fill_percentage] unless input[:hrd_buffer_initial_fill_percentage].nil?
        data['hrdBufferSize'] = input[:hrd_buffer_size] unless input[:hrd_buffer_size].nil?
        data['interlaceMode'] = input[:interlace_mode] unless input[:interlace_mode].nil?
        data['intraDcPrecision'] = input[:intra_dc_precision] unless input[:intra_dc_precision].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['minIInterval'] = input[:min_i_interval] unless input[:min_i_interval].nil?
        data['numberBFramesBetweenReferenceFrames'] = input[:number_b_frames_between_reference_frames] unless input[:number_b_frames_between_reference_frames].nil?
        data['parControl'] = input[:par_control] unless input[:par_control].nil?
        data['parDenominator'] = input[:par_denominator] unless input[:par_denominator].nil?
        data['parNumerator'] = input[:par_numerator] unless input[:par_numerator].nil?
        data['qualityTuningLevel'] = input[:quality_tuning_level] unless input[:quality_tuning_level].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data['scanTypeConversionMode'] = input[:scan_type_conversion_mode] unless input[:scan_type_conversion_mode].nil?
        data['sceneChangeDetect'] = input[:scene_change_detect] unless input[:scene_change_detect].nil?
        data['slowPal'] = input[:slow_pal] unless input[:slow_pal].nil?
        data['softness'] = input[:softness] unless input[:softness].nil?
        data['spatialAdaptiveQuantization'] = input[:spatial_adaptive_quantization] unless input[:spatial_adaptive_quantization].nil?
        data['syntax'] = input[:syntax] unless input[:syntax].nil?
        data['telecine'] = input[:telecine] unless input[:telecine].nil?
        data['temporalAdaptiveQuantization'] = input[:temporal_adaptive_quantization] unless input[:temporal_adaptive_quantization].nil?
        data
      end
    end

    # Structure Builder for H265Settings
    class H265Settings
      def self.build(input)
        data = {}
        data['adaptiveQuantization'] = input[:adaptive_quantization] unless input[:adaptive_quantization].nil?
        data['alternateTransferFunctionSei'] = input[:alternate_transfer_function_sei] unless input[:alternate_transfer_function_sei].nil?
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['codecLevel'] = input[:codec_level] unless input[:codec_level].nil?
        data['codecProfile'] = input[:codec_profile] unless input[:codec_profile].nil?
        data['dynamicSubGop'] = input[:dynamic_sub_gop] unless input[:dynamic_sub_gop].nil?
        data['flickerAdaptiveQuantization'] = input[:flicker_adaptive_quantization] unless input[:flicker_adaptive_quantization].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['gopBReference'] = input[:gop_b_reference] unless input[:gop_b_reference].nil?
        data['gopClosedCadence'] = input[:gop_closed_cadence] unless input[:gop_closed_cadence].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(input[:gop_size]) unless input[:gop_size].nil?
        data['gopSizeUnits'] = input[:gop_size_units] unless input[:gop_size_units].nil?
        data['hrdBufferInitialFillPercentage'] = input[:hrd_buffer_initial_fill_percentage] unless input[:hrd_buffer_initial_fill_percentage].nil?
        data['hrdBufferSize'] = input[:hrd_buffer_size] unless input[:hrd_buffer_size].nil?
        data['interlaceMode'] = input[:interlace_mode] unless input[:interlace_mode].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['minIInterval'] = input[:min_i_interval] unless input[:min_i_interval].nil?
        data['numberBFramesBetweenReferenceFrames'] = input[:number_b_frames_between_reference_frames] unless input[:number_b_frames_between_reference_frames].nil?
        data['numberReferenceFrames'] = input[:number_reference_frames] unless input[:number_reference_frames].nil?
        data['parControl'] = input[:par_control] unless input[:par_control].nil?
        data['parDenominator'] = input[:par_denominator] unless input[:par_denominator].nil?
        data['parNumerator'] = input[:par_numerator] unless input[:par_numerator].nil?
        data['qualityTuningLevel'] = input[:quality_tuning_level] unless input[:quality_tuning_level].nil?
        data['qvbrSettings'] = Builders::H265QvbrSettings.build(input[:qvbr_settings]) unless input[:qvbr_settings].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data['sampleAdaptiveOffsetFilterMode'] = input[:sample_adaptive_offset_filter_mode] unless input[:sample_adaptive_offset_filter_mode].nil?
        data['scanTypeConversionMode'] = input[:scan_type_conversion_mode] unless input[:scan_type_conversion_mode].nil?
        data['sceneChangeDetect'] = input[:scene_change_detect] unless input[:scene_change_detect].nil?
        data['slices'] = input[:slices] unless input[:slices].nil?
        data['slowPal'] = input[:slow_pal] unless input[:slow_pal].nil?
        data['spatialAdaptiveQuantization'] = input[:spatial_adaptive_quantization] unless input[:spatial_adaptive_quantization].nil?
        data['telecine'] = input[:telecine] unless input[:telecine].nil?
        data['temporalAdaptiveQuantization'] = input[:temporal_adaptive_quantization] unless input[:temporal_adaptive_quantization].nil?
        data['temporalIds'] = input[:temporal_ids] unless input[:temporal_ids].nil?
        data['tiles'] = input[:tiles] unless input[:tiles].nil?
        data['unregisteredSeiTimecode'] = input[:unregistered_sei_timecode] unless input[:unregistered_sei_timecode].nil?
        data['writeMp4PackagingType'] = input[:write_mp4_packaging_type] unless input[:write_mp4_packaging_type].nil?
        data
      end
    end

    # Structure Builder for H265QvbrSettings
    class H265QvbrSettings
      def self.build(input)
        data = {}
        data['maxAverageBitrate'] = input[:max_average_bitrate] unless input[:max_average_bitrate].nil?
        data['qvbrQualityLevel'] = input[:qvbr_quality_level] unless input[:qvbr_quality_level].nil?
        data['qvbrQualityLevelFineTune'] = Hearth::NumberHelper.serialize(input[:qvbr_quality_level_fine_tune]) unless input[:qvbr_quality_level_fine_tune].nil?
        data
      end
    end

    # Structure Builder for H264Settings
    class H264Settings
      def self.build(input)
        data = {}
        data['adaptiveQuantization'] = input[:adaptive_quantization] unless input[:adaptive_quantization].nil?
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['codecLevel'] = input[:codec_level] unless input[:codec_level].nil?
        data['codecProfile'] = input[:codec_profile] unless input[:codec_profile].nil?
        data['dynamicSubGop'] = input[:dynamic_sub_gop] unless input[:dynamic_sub_gop].nil?
        data['entropyEncoding'] = input[:entropy_encoding] unless input[:entropy_encoding].nil?
        data['fieldEncoding'] = input[:field_encoding] unless input[:field_encoding].nil?
        data['flickerAdaptiveQuantization'] = input[:flicker_adaptive_quantization] unless input[:flicker_adaptive_quantization].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['gopBReference'] = input[:gop_b_reference] unless input[:gop_b_reference].nil?
        data['gopClosedCadence'] = input[:gop_closed_cadence] unless input[:gop_closed_cadence].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(input[:gop_size]) unless input[:gop_size].nil?
        data['gopSizeUnits'] = input[:gop_size_units] unless input[:gop_size_units].nil?
        data['hrdBufferInitialFillPercentage'] = input[:hrd_buffer_initial_fill_percentage] unless input[:hrd_buffer_initial_fill_percentage].nil?
        data['hrdBufferSize'] = input[:hrd_buffer_size] unless input[:hrd_buffer_size].nil?
        data['interlaceMode'] = input[:interlace_mode] unless input[:interlace_mode].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['minIInterval'] = input[:min_i_interval] unless input[:min_i_interval].nil?
        data['numberBFramesBetweenReferenceFrames'] = input[:number_b_frames_between_reference_frames] unless input[:number_b_frames_between_reference_frames].nil?
        data['numberReferenceFrames'] = input[:number_reference_frames] unless input[:number_reference_frames].nil?
        data['parControl'] = input[:par_control] unless input[:par_control].nil?
        data['parDenominator'] = input[:par_denominator] unless input[:par_denominator].nil?
        data['parNumerator'] = input[:par_numerator] unless input[:par_numerator].nil?
        data['qualityTuningLevel'] = input[:quality_tuning_level] unless input[:quality_tuning_level].nil?
        data['qvbrSettings'] = Builders::H264QvbrSettings.build(input[:qvbr_settings]) unless input[:qvbr_settings].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data['repeatPps'] = input[:repeat_pps] unless input[:repeat_pps].nil?
        data['scanTypeConversionMode'] = input[:scan_type_conversion_mode] unless input[:scan_type_conversion_mode].nil?
        data['sceneChangeDetect'] = input[:scene_change_detect] unless input[:scene_change_detect].nil?
        data['slices'] = input[:slices] unless input[:slices].nil?
        data['slowPal'] = input[:slow_pal] unless input[:slow_pal].nil?
        data['softness'] = input[:softness] unless input[:softness].nil?
        data['spatialAdaptiveQuantization'] = input[:spatial_adaptive_quantization] unless input[:spatial_adaptive_quantization].nil?
        data['syntax'] = input[:syntax] unless input[:syntax].nil?
        data['telecine'] = input[:telecine] unless input[:telecine].nil?
        data['temporalAdaptiveQuantization'] = input[:temporal_adaptive_quantization] unless input[:temporal_adaptive_quantization].nil?
        data['unregisteredSeiTimecode'] = input[:unregistered_sei_timecode] unless input[:unregistered_sei_timecode].nil?
        data
      end
    end

    # Structure Builder for H264QvbrSettings
    class H264QvbrSettings
      def self.build(input)
        data = {}
        data['maxAverageBitrate'] = input[:max_average_bitrate] unless input[:max_average_bitrate].nil?
        data['qvbrQualityLevel'] = input[:qvbr_quality_level] unless input[:qvbr_quality_level].nil?
        data['qvbrQualityLevelFineTune'] = Hearth::NumberHelper.serialize(input[:qvbr_quality_level_fine_tune]) unless input[:qvbr_quality_level_fine_tune].nil?
        data
      end
    end

    # Structure Builder for FrameCaptureSettings
    class FrameCaptureSettings
      def self.build(input)
        data = {}
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['maxCaptures'] = input[:max_captures] unless input[:max_captures].nil?
        data['quality'] = input[:quality] unless input[:quality].nil?
        data
      end
    end

    # Structure Builder for AvcIntraSettings
    class AvcIntraSettings
      def self.build(input)
        data = {}
        data['avcIntraClass'] = input[:avc_intra_class] unless input[:avc_intra_class].nil?
        data['avcIntraUhdSettings'] = Builders::AvcIntraUhdSettings.build(input[:avc_intra_uhd_settings]) unless input[:avc_intra_uhd_settings].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['interlaceMode'] = input[:interlace_mode] unless input[:interlace_mode].nil?
        data['scanTypeConversionMode'] = input[:scan_type_conversion_mode] unless input[:scan_type_conversion_mode].nil?
        data['slowPal'] = input[:slow_pal] unless input[:slow_pal].nil?
        data['telecine'] = input[:telecine] unless input[:telecine].nil?
        data
      end
    end

    # Structure Builder for AvcIntraUhdSettings
    class AvcIntraUhdSettings
      def self.build(input)
        data = {}
        data['qualityTuningLevel'] = input[:quality_tuning_level] unless input[:quality_tuning_level].nil?
        data
      end
    end

    # Structure Builder for Av1Settings
    class Av1Settings
      def self.build(input)
        data = {}
        data['adaptiveQuantization'] = input[:adaptive_quantization] unless input[:adaptive_quantization].nil?
        data['bitDepth'] = input[:bit_depth] unless input[:bit_depth].nil?
        data['framerateControl'] = input[:framerate_control] unless input[:framerate_control].nil?
        data['framerateConversionAlgorithm'] = input[:framerate_conversion_algorithm] unless input[:framerate_conversion_algorithm].nil?
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data['gopSize'] = Hearth::NumberHelper.serialize(input[:gop_size]) unless input[:gop_size].nil?
        data['maxBitrate'] = input[:max_bitrate] unless input[:max_bitrate].nil?
        data['numberBFramesBetweenReferenceFrames'] = input[:number_b_frames_between_reference_frames] unless input[:number_b_frames_between_reference_frames].nil?
        data['qvbrSettings'] = Builders::Av1QvbrSettings.build(input[:qvbr_settings]) unless input[:qvbr_settings].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data['slices'] = input[:slices] unless input[:slices].nil?
        data['spatialAdaptiveQuantization'] = input[:spatial_adaptive_quantization] unless input[:spatial_adaptive_quantization].nil?
        data
      end
    end

    # Structure Builder for Av1QvbrSettings
    class Av1QvbrSettings
      def self.build(input)
        data = {}
        data['qvbrQualityLevel'] = input[:qvbr_quality_level] unless input[:qvbr_quality_level].nil?
        data['qvbrQualityLevelFineTune'] = Hearth::NumberHelper.serialize(input[:qvbr_quality_level_fine_tune]) unless input[:qvbr_quality_level_fine_tune].nil?
        data
      end
    end

    # Structure Builder for OutputSettings
    class OutputSettings
      def self.build(input)
        data = {}
        data['hlsSettings'] = Builders::HlsSettings.build(input[:hls_settings]) unless input[:hls_settings].nil?
        data
      end
    end

    # Structure Builder for HlsSettings
    class HlsSettings
      def self.build(input)
        data = {}
        data['audioGroupId'] = input[:audio_group_id] unless input[:audio_group_id].nil?
        data['audioOnlyContainer'] = input[:audio_only_container] unless input[:audio_only_container].nil?
        data['audioRenditionSets'] = input[:audio_rendition_sets] unless input[:audio_rendition_sets].nil?
        data['audioTrackType'] = input[:audio_track_type] unless input[:audio_track_type].nil?
        data['descriptiveVideoServiceFlag'] = input[:descriptive_video_service_flag] unless input[:descriptive_video_service_flag].nil?
        data['iFrameOnlyManifest'] = input[:i_frame_only_manifest] unless input[:i_frame_only_manifest].nil?
        data['segmentModifier'] = input[:segment_modifier] unless input[:segment_modifier].nil?
        data
      end
    end

    # Structure Builder for ContainerSettings
    class ContainerSettings
      def self.build(input)
        data = {}
        data['cmfcSettings'] = Builders::CmfcSettings.build(input[:cmfc_settings]) unless input[:cmfc_settings].nil?
        data['container'] = input[:container] unless input[:container].nil?
        data['f4vSettings'] = Builders::F4vSettings.build(input[:f4v_settings]) unless input[:f4v_settings].nil?
        data['m2tsSettings'] = Builders::M2tsSettings.build(input[:m2ts_settings]) unless input[:m2ts_settings].nil?
        data['m3u8Settings'] = Builders::M3u8Settings.build(input[:m3u8_settings]) unless input[:m3u8_settings].nil?
        data['movSettings'] = Builders::MovSettings.build(input[:mov_settings]) unless input[:mov_settings].nil?
        data['mp4Settings'] = Builders::Mp4Settings.build(input[:mp4_settings]) unless input[:mp4_settings].nil?
        data['mpdSettings'] = Builders::MpdSettings.build(input[:mpd_settings]) unless input[:mpd_settings].nil?
        data['mxfSettings'] = Builders::MxfSettings.build(input[:mxf_settings]) unless input[:mxf_settings].nil?
        data
      end
    end

    # Structure Builder for MxfSettings
    class MxfSettings
      def self.build(input)
        data = {}
        data['afdSignaling'] = input[:afd_signaling] unless input[:afd_signaling].nil?
        data['profile'] = input[:profile] unless input[:profile].nil?
        data['xavcProfileSettings'] = Builders::MxfXavcProfileSettings.build(input[:xavc_profile_settings]) unless input[:xavc_profile_settings].nil?
        data
      end
    end

    # Structure Builder for MxfXavcProfileSettings
    class MxfXavcProfileSettings
      def self.build(input)
        data = {}
        data['durationMode'] = input[:duration_mode] unless input[:duration_mode].nil?
        data['maxAncDataSize'] = input[:max_anc_data_size] unless input[:max_anc_data_size].nil?
        data
      end
    end

    # Structure Builder for MpdSettings
    class MpdSettings
      def self.build(input)
        data = {}
        data['accessibilityCaptionHints'] = input[:accessibility_caption_hints] unless input[:accessibility_caption_hints].nil?
        data['audioDuration'] = input[:audio_duration] unless input[:audio_duration].nil?
        data['captionContainerType'] = input[:caption_container_type] unless input[:caption_container_type].nil?
        data['klvMetadata'] = input[:klv_metadata] unless input[:klv_metadata].nil?
        data['scte35Esam'] = input[:scte35_esam] unless input[:scte35_esam].nil?
        data['scte35Source'] = input[:scte35_source] unless input[:scte35_source].nil?
        data['timedMetadata'] = input[:timed_metadata] unless input[:timed_metadata].nil?
        data
      end
    end

    # Structure Builder for Mp4Settings
    class Mp4Settings
      def self.build(input)
        data = {}
        data['audioDuration'] = input[:audio_duration] unless input[:audio_duration].nil?
        data['cslgAtom'] = input[:cslg_atom] unless input[:cslg_atom].nil?
        data['cttsVersion'] = input[:ctts_version] unless input[:ctts_version].nil?
        data['freeSpaceBox'] = input[:free_space_box] unless input[:free_space_box].nil?
        data['moovPlacement'] = input[:moov_placement] unless input[:moov_placement].nil?
        data['mp4MajorBrand'] = input[:mp4_major_brand] unless input[:mp4_major_brand].nil?
        data
      end
    end

    # Structure Builder for MovSettings
    class MovSettings
      def self.build(input)
        data = {}
        data['clapAtom'] = input[:clap_atom] unless input[:clap_atom].nil?
        data['cslgAtom'] = input[:cslg_atom] unless input[:cslg_atom].nil?
        data['mpeg2FourCCControl'] = input[:mpeg2_four_cc_control] unless input[:mpeg2_four_cc_control].nil?
        data['paddingControl'] = input[:padding_control] unless input[:padding_control].nil?
        data['reference'] = input[:reference] unless input[:reference].nil?
        data
      end
    end

    # Structure Builder for M3u8Settings
    class M3u8Settings
      def self.build(input)
        data = {}
        data['audioDuration'] = input[:audio_duration] unless input[:audio_duration].nil?
        data['audioFramesPerPes'] = input[:audio_frames_per_pes] unless input[:audio_frames_per_pes].nil?
        data['audioPids'] = Builders::List____listOf__integerMin32Max8182.build(input[:audio_pids]) unless input[:audio_pids].nil?
        data['dataPTSControl'] = input[:data_pts_control] unless input[:data_pts_control].nil?
        data['maxPcrInterval'] = input[:max_pcr_interval] unless input[:max_pcr_interval].nil?
        data['nielsenId3'] = input[:nielsen_id3] unless input[:nielsen_id3].nil?
        data['patInterval'] = input[:pat_interval] unless input[:pat_interval].nil?
        data['pcrControl'] = input[:pcr_control] unless input[:pcr_control].nil?
        data['pcrPid'] = input[:pcr_pid] unless input[:pcr_pid].nil?
        data['pmtInterval'] = input[:pmt_interval] unless input[:pmt_interval].nil?
        data['pmtPid'] = input[:pmt_pid] unless input[:pmt_pid].nil?
        data['privateMetadataPid'] = input[:private_metadata_pid] unless input[:private_metadata_pid].nil?
        data['programNumber'] = input[:program_number] unless input[:program_number].nil?
        data['scte35Pid'] = input[:scte35_pid] unless input[:scte35_pid].nil?
        data['scte35Source'] = input[:scte35_source] unless input[:scte35_source].nil?
        data['timedMetadata'] = input[:timed_metadata] unless input[:timed_metadata].nil?
        data['timedMetadataPid'] = input[:timed_metadata_pid] unless input[:timed_metadata_pid].nil?
        data['transportStreamId'] = input[:transport_stream_id] unless input[:transport_stream_id].nil?
        data['videoPid'] = input[:video_pid] unless input[:video_pid].nil?
        data
      end
    end

    # List Builder for __listOf__integerMin32Max8182
    class List____listOf__integerMin32Max8182
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for M2tsSettings
    class M2tsSettings
      def self.build(input)
        data = {}
        data['audioBufferModel'] = input[:audio_buffer_model] unless input[:audio_buffer_model].nil?
        data['audioDuration'] = input[:audio_duration] unless input[:audio_duration].nil?
        data['audioFramesPerPes'] = input[:audio_frames_per_pes] unless input[:audio_frames_per_pes].nil?
        data['audioPids'] = Builders::List____listOf__integerMin32Max8182.build(input[:audio_pids]) unless input[:audio_pids].nil?
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['bufferModel'] = input[:buffer_model] unless input[:buffer_model].nil?
        data['dataPTSControl'] = input[:data_pts_control] unless input[:data_pts_control].nil?
        data['dvbNitSettings'] = Builders::DvbNitSettings.build(input[:dvb_nit_settings]) unless input[:dvb_nit_settings].nil?
        data['dvbSdtSettings'] = Builders::DvbSdtSettings.build(input[:dvb_sdt_settings]) unless input[:dvb_sdt_settings].nil?
        data['dvbSubPids'] = Builders::List____listOf__integerMin32Max8182.build(input[:dvb_sub_pids]) unless input[:dvb_sub_pids].nil?
        data['dvbTdtSettings'] = Builders::DvbTdtSettings.build(input[:dvb_tdt_settings]) unless input[:dvb_tdt_settings].nil?
        data['dvbTeletextPid'] = input[:dvb_teletext_pid] unless input[:dvb_teletext_pid].nil?
        data['ebpAudioInterval'] = input[:ebp_audio_interval] unless input[:ebp_audio_interval].nil?
        data['ebpPlacement'] = input[:ebp_placement] unless input[:ebp_placement].nil?
        data['esRateInPes'] = input[:es_rate_in_pes] unless input[:es_rate_in_pes].nil?
        data['forceTsVideoEbpOrder'] = input[:force_ts_video_ebp_order] unless input[:force_ts_video_ebp_order].nil?
        data['fragmentTime'] = Hearth::NumberHelper.serialize(input[:fragment_time]) unless input[:fragment_time].nil?
        data['klvMetadata'] = input[:klv_metadata] unless input[:klv_metadata].nil?
        data['maxPcrInterval'] = input[:max_pcr_interval] unless input[:max_pcr_interval].nil?
        data['minEbpInterval'] = input[:min_ebp_interval] unless input[:min_ebp_interval].nil?
        data['nielsenId3'] = input[:nielsen_id3] unless input[:nielsen_id3].nil?
        data['nullPacketBitrate'] = Hearth::NumberHelper.serialize(input[:null_packet_bitrate]) unless input[:null_packet_bitrate].nil?
        data['patInterval'] = input[:pat_interval] unless input[:pat_interval].nil?
        data['pcrControl'] = input[:pcr_control] unless input[:pcr_control].nil?
        data['pcrPid'] = input[:pcr_pid] unless input[:pcr_pid].nil?
        data['pmtInterval'] = input[:pmt_interval] unless input[:pmt_interval].nil?
        data['pmtPid'] = input[:pmt_pid] unless input[:pmt_pid].nil?
        data['privateMetadataPid'] = input[:private_metadata_pid] unless input[:private_metadata_pid].nil?
        data['programNumber'] = input[:program_number] unless input[:program_number].nil?
        data['rateMode'] = input[:rate_mode] unless input[:rate_mode].nil?
        data['scte35Esam'] = Builders::M2tsScte35Esam.build(input[:scte35_esam]) unless input[:scte35_esam].nil?
        data['scte35Pid'] = input[:scte35_pid] unless input[:scte35_pid].nil?
        data['scte35Source'] = input[:scte35_source] unless input[:scte35_source].nil?
        data['segmentationMarkers'] = input[:segmentation_markers] unless input[:segmentation_markers].nil?
        data['segmentationStyle'] = input[:segmentation_style] unless input[:segmentation_style].nil?
        data['segmentationTime'] = Hearth::NumberHelper.serialize(input[:segmentation_time]) unless input[:segmentation_time].nil?
        data['timedMetadataPid'] = input[:timed_metadata_pid] unless input[:timed_metadata_pid].nil?
        data['transportStreamId'] = input[:transport_stream_id] unless input[:transport_stream_id].nil?
        data['videoPid'] = input[:video_pid] unless input[:video_pid].nil?
        data
      end
    end

    # Structure Builder for M2tsScte35Esam
    class M2tsScte35Esam
      def self.build(input)
        data = {}
        data['scte35EsamPid'] = input[:scte35_esam_pid] unless input[:scte35_esam_pid].nil?
        data
      end
    end

    # Structure Builder for DvbTdtSettings
    class DvbTdtSettings
      def self.build(input)
        data = {}
        data['tdtInterval'] = input[:tdt_interval] unless input[:tdt_interval].nil?
        data
      end
    end

    # Structure Builder for DvbSdtSettings
    class DvbSdtSettings
      def self.build(input)
        data = {}
        data['outputSdt'] = input[:output_sdt] unless input[:output_sdt].nil?
        data['sdtInterval'] = input[:sdt_interval] unless input[:sdt_interval].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['serviceProviderName'] = input[:service_provider_name] unless input[:service_provider_name].nil?
        data
      end
    end

    # Structure Builder for DvbNitSettings
    class DvbNitSettings
      def self.build(input)
        data = {}
        data['networkId'] = input[:network_id] unless input[:network_id].nil?
        data['networkName'] = input[:network_name] unless input[:network_name].nil?
        data['nitInterval'] = input[:nit_interval] unless input[:nit_interval].nil?
        data
      end
    end

    # Structure Builder for F4vSettings
    class F4vSettings
      def self.build(input)
        data = {}
        data['moovPlacement'] = input[:moov_placement] unless input[:moov_placement].nil?
        data
      end
    end

    # Structure Builder for CmfcSettings
    class CmfcSettings
      def self.build(input)
        data = {}
        data['audioDuration'] = input[:audio_duration] unless input[:audio_duration].nil?
        data['audioGroupId'] = input[:audio_group_id] unless input[:audio_group_id].nil?
        data['audioRenditionSets'] = input[:audio_rendition_sets] unless input[:audio_rendition_sets].nil?
        data['audioTrackType'] = input[:audio_track_type] unless input[:audio_track_type].nil?
        data['descriptiveVideoServiceFlag'] = input[:descriptive_video_service_flag] unless input[:descriptive_video_service_flag].nil?
        data['iFrameOnlyManifest'] = input[:i_frame_only_manifest] unless input[:i_frame_only_manifest].nil?
        data['klvMetadata'] = input[:klv_metadata] unless input[:klv_metadata].nil?
        data['scte35Esam'] = input[:scte35_esam] unless input[:scte35_esam].nil?
        data['scte35Source'] = input[:scte35_source] unless input[:scte35_source].nil?
        data['timedMetadata'] = input[:timed_metadata] unless input[:timed_metadata].nil?
        data
      end
    end

    # List Builder for __listOfCaptionDescription
    class List____listOfCaptionDescription
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CaptionDescription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CaptionDescription
    class CaptionDescription
      def self.build(input)
        data = {}
        data['captionSelectorName'] = input[:caption_selector_name] unless input[:caption_selector_name].nil?
        data['customLanguageCode'] = input[:custom_language_code] unless input[:custom_language_code].nil?
        data['destinationSettings'] = Builders::CaptionDestinationSettings.build(input[:destination_settings]) unless input[:destination_settings].nil?
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['languageDescription'] = input[:language_description] unless input[:language_description].nil?
        data
      end
    end

    # Structure Builder for CaptionDestinationSettings
    class CaptionDestinationSettings
      def self.build(input)
        data = {}
        data['burninDestinationSettings'] = Builders::BurninDestinationSettings.build(input[:burnin_destination_settings]) unless input[:burnin_destination_settings].nil?
        data['destinationType'] = input[:destination_type] unless input[:destination_type].nil?
        data['dvbSubDestinationSettings'] = Builders::DvbSubDestinationSettings.build(input[:dvb_sub_destination_settings]) unless input[:dvb_sub_destination_settings].nil?
        data['embeddedDestinationSettings'] = Builders::EmbeddedDestinationSettings.build(input[:embedded_destination_settings]) unless input[:embedded_destination_settings].nil?
        data['imscDestinationSettings'] = Builders::ImscDestinationSettings.build(input[:imsc_destination_settings]) unless input[:imsc_destination_settings].nil?
        data['sccDestinationSettings'] = Builders::SccDestinationSettings.build(input[:scc_destination_settings]) unless input[:scc_destination_settings].nil?
        data['srtDestinationSettings'] = Builders::SrtDestinationSettings.build(input[:srt_destination_settings]) unless input[:srt_destination_settings].nil?
        data['teletextDestinationSettings'] = Builders::TeletextDestinationSettings.build(input[:teletext_destination_settings]) unless input[:teletext_destination_settings].nil?
        data['ttmlDestinationSettings'] = Builders::TtmlDestinationSettings.build(input[:ttml_destination_settings]) unless input[:ttml_destination_settings].nil?
        data['webvttDestinationSettings'] = Builders::WebvttDestinationSettings.build(input[:webvtt_destination_settings]) unless input[:webvtt_destination_settings].nil?
        data
      end
    end

    # Structure Builder for WebvttDestinationSettings
    class WebvttDestinationSettings
      def self.build(input)
        data = {}
        data['accessibility'] = input[:accessibility] unless input[:accessibility].nil?
        data['stylePassthrough'] = input[:style_passthrough] unless input[:style_passthrough].nil?
        data
      end
    end

    # Structure Builder for TtmlDestinationSettings
    class TtmlDestinationSettings
      def self.build(input)
        data = {}
        data['stylePassthrough'] = input[:style_passthrough] unless input[:style_passthrough].nil?
        data
      end
    end

    # Structure Builder for TeletextDestinationSettings
    class TeletextDestinationSettings
      def self.build(input)
        data = {}
        data['pageNumber'] = input[:page_number] unless input[:page_number].nil?
        data['pageTypes'] = Builders::List____listOfTeletextPageType.build(input[:page_types]) unless input[:page_types].nil?
        data
      end
    end

    # List Builder for __listOfTeletextPageType
    class List____listOfTeletextPageType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SrtDestinationSettings
    class SrtDestinationSettings
      def self.build(input)
        data = {}
        data['stylePassthrough'] = input[:style_passthrough] unless input[:style_passthrough].nil?
        data
      end
    end

    # Structure Builder for SccDestinationSettings
    class SccDestinationSettings
      def self.build(input)
        data = {}
        data['framerate'] = input[:framerate] unless input[:framerate].nil?
        data
      end
    end

    # Structure Builder for ImscDestinationSettings
    class ImscDestinationSettings
      def self.build(input)
        data = {}
        data['accessibility'] = input[:accessibility] unless input[:accessibility].nil?
        data['stylePassthrough'] = input[:style_passthrough] unless input[:style_passthrough].nil?
        data
      end
    end

    # Structure Builder for EmbeddedDestinationSettings
    class EmbeddedDestinationSettings
      def self.build(input)
        data = {}
        data['destination608ChannelNumber'] = input[:destination608_channel_number] unless input[:destination608_channel_number].nil?
        data['destination708ServiceNumber'] = input[:destination708_service_number] unless input[:destination708_service_number].nil?
        data
      end
    end

    # Structure Builder for DvbSubDestinationSettings
    class DvbSubDestinationSettings
      def self.build(input)
        data = {}
        data['alignment'] = input[:alignment] unless input[:alignment].nil?
        data['applyFontColor'] = input[:apply_font_color] unless input[:apply_font_color].nil?
        data['backgroundColor'] = input[:background_color] unless input[:background_color].nil?
        data['backgroundOpacity'] = input[:background_opacity] unless input[:background_opacity].nil?
        data['ddsHandling'] = input[:dds_handling] unless input[:dds_handling].nil?
        data['ddsXCoordinate'] = input[:dds_x_coordinate] unless input[:dds_x_coordinate].nil?
        data['ddsYCoordinate'] = input[:dds_y_coordinate] unless input[:dds_y_coordinate].nil?
        data['fallbackFont'] = input[:fallback_font] unless input[:fallback_font].nil?
        data['fontColor'] = input[:font_color] unless input[:font_color].nil?
        data['fontOpacity'] = input[:font_opacity] unless input[:font_opacity].nil?
        data['fontResolution'] = input[:font_resolution] unless input[:font_resolution].nil?
        data['fontScript'] = input[:font_script] unless input[:font_script].nil?
        data['fontSize'] = input[:font_size] unless input[:font_size].nil?
        data['height'] = input[:height] unless input[:height].nil?
        data['hexFontColor'] = input[:hex_font_color] unless input[:hex_font_color].nil?
        data['outlineColor'] = input[:outline_color] unless input[:outline_color].nil?
        data['outlineSize'] = input[:outline_size] unless input[:outline_size].nil?
        data['shadowColor'] = input[:shadow_color] unless input[:shadow_color].nil?
        data['shadowOpacity'] = input[:shadow_opacity] unless input[:shadow_opacity].nil?
        data['shadowXOffset'] = input[:shadow_x_offset] unless input[:shadow_x_offset].nil?
        data['shadowYOffset'] = input[:shadow_y_offset] unless input[:shadow_y_offset].nil?
        data['stylePassthrough'] = input[:style_passthrough] unless input[:style_passthrough].nil?
        data['subtitlingType'] = input[:subtitling_type] unless input[:subtitling_type].nil?
        data['teletextSpacing'] = input[:teletext_spacing] unless input[:teletext_spacing].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data['xPosition'] = input[:x_position] unless input[:x_position].nil?
        data['yPosition'] = input[:y_position] unless input[:y_position].nil?
        data
      end
    end

    # Structure Builder for BurninDestinationSettings
    class BurninDestinationSettings
      def self.build(input)
        data = {}
        data['alignment'] = input[:alignment] unless input[:alignment].nil?
        data['applyFontColor'] = input[:apply_font_color] unless input[:apply_font_color].nil?
        data['backgroundColor'] = input[:background_color] unless input[:background_color].nil?
        data['backgroundOpacity'] = input[:background_opacity] unless input[:background_opacity].nil?
        data['fallbackFont'] = input[:fallback_font] unless input[:fallback_font].nil?
        data['fontColor'] = input[:font_color] unless input[:font_color].nil?
        data['fontOpacity'] = input[:font_opacity] unless input[:font_opacity].nil?
        data['fontResolution'] = input[:font_resolution] unless input[:font_resolution].nil?
        data['fontScript'] = input[:font_script] unless input[:font_script].nil?
        data['fontSize'] = input[:font_size] unless input[:font_size].nil?
        data['hexFontColor'] = input[:hex_font_color] unless input[:hex_font_color].nil?
        data['outlineColor'] = input[:outline_color] unless input[:outline_color].nil?
        data['outlineSize'] = input[:outline_size] unless input[:outline_size].nil?
        data['shadowColor'] = input[:shadow_color] unless input[:shadow_color].nil?
        data['shadowOpacity'] = input[:shadow_opacity] unless input[:shadow_opacity].nil?
        data['shadowXOffset'] = input[:shadow_x_offset] unless input[:shadow_x_offset].nil?
        data['shadowYOffset'] = input[:shadow_y_offset] unless input[:shadow_y_offset].nil?
        data['stylePassthrough'] = input[:style_passthrough] unless input[:style_passthrough].nil?
        data['teletextSpacing'] = input[:teletext_spacing] unless input[:teletext_spacing].nil?
        data['xPosition'] = input[:x_position] unless input[:x_position].nil?
        data['yPosition'] = input[:y_position] unless input[:y_position].nil?
        data
      end
    end

    # List Builder for __listOfAudioDescription
    class List____listOfAudioDescription
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AudioDescription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AudioDescription
    class AudioDescription
      def self.build(input)
        data = {}
        data['audioChannelTaggingSettings'] = Builders::AudioChannelTaggingSettings.build(input[:audio_channel_tagging_settings]) unless input[:audio_channel_tagging_settings].nil?
        data['audioNormalizationSettings'] = Builders::AudioNormalizationSettings.build(input[:audio_normalization_settings]) unless input[:audio_normalization_settings].nil?
        data['audioSourceName'] = input[:audio_source_name] unless input[:audio_source_name].nil?
        data['audioType'] = input[:audio_type] unless input[:audio_type].nil?
        data['audioTypeControl'] = input[:audio_type_control] unless input[:audio_type_control].nil?
        data['codecSettings'] = Builders::AudioCodecSettings.build(input[:codec_settings]) unless input[:codec_settings].nil?
        data['customLanguageCode'] = input[:custom_language_code] unless input[:custom_language_code].nil?
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['languageCodeControl'] = input[:language_code_control] unless input[:language_code_control].nil?
        data['remixSettings'] = Builders::RemixSettings.build(input[:remix_settings]) unless input[:remix_settings].nil?
        data['streamName'] = input[:stream_name] unless input[:stream_name].nil?
        data
      end
    end

    # Structure Builder for RemixSettings
    class RemixSettings
      def self.build(input)
        data = {}
        data['channelMapping'] = Builders::ChannelMapping.build(input[:channel_mapping]) unless input[:channel_mapping].nil?
        data['channelsIn'] = input[:channels_in] unless input[:channels_in].nil?
        data['channelsOut'] = input[:channels_out] unless input[:channels_out].nil?
        data
      end
    end

    # Structure Builder for ChannelMapping
    class ChannelMapping
      def self.build(input)
        data = {}
        data['outputChannels'] = Builders::List____listOfOutputChannelMapping.build(input[:output_channels]) unless input[:output_channels].nil?
        data
      end
    end

    # List Builder for __listOfOutputChannelMapping
    class List____listOfOutputChannelMapping
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OutputChannelMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputChannelMapping
    class OutputChannelMapping
      def self.build(input)
        data = {}
        data['inputChannels'] = Builders::List____listOf__integerMinNegative60Max6.build(input[:input_channels]) unless input[:input_channels].nil?
        data['inputChannelsFineTune'] = Builders::List____listOf__doubleMinNegative60Max6.build(input[:input_channels_fine_tune]) unless input[:input_channels_fine_tune].nil?
        data
      end
    end

    # List Builder for __listOf__doubleMinNegative60Max6
    class List____listOf__doubleMinNegative60Max6
      def self.build(input)
        data = []
        input.each do |element|
          data << Hearth::NumberHelper.serialize(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for __listOf__integerMinNegative60Max6
    class List____listOf__integerMinNegative60Max6
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AudioCodecSettings
    class AudioCodecSettings
      def self.build(input)
        data = {}
        data['aacSettings'] = Builders::AacSettings.build(input[:aac_settings]) unless input[:aac_settings].nil?
        data['ac3Settings'] = Builders::Ac3Settings.build(input[:ac3_settings]) unless input[:ac3_settings].nil?
        data['aiffSettings'] = Builders::AiffSettings.build(input[:aiff_settings]) unless input[:aiff_settings].nil?
        data['codec'] = input[:codec] unless input[:codec].nil?
        data['eac3AtmosSettings'] = Builders::Eac3AtmosSettings.build(input[:eac3_atmos_settings]) unless input[:eac3_atmos_settings].nil?
        data['eac3Settings'] = Builders::Eac3Settings.build(input[:eac3_settings]) unless input[:eac3_settings].nil?
        data['mp2Settings'] = Builders::Mp2Settings.build(input[:mp2_settings]) unless input[:mp2_settings].nil?
        data['mp3Settings'] = Builders::Mp3Settings.build(input[:mp3_settings]) unless input[:mp3_settings].nil?
        data['opusSettings'] = Builders::OpusSettings.build(input[:opus_settings]) unless input[:opus_settings].nil?
        data['vorbisSettings'] = Builders::VorbisSettings.build(input[:vorbis_settings]) unless input[:vorbis_settings].nil?
        data['wavSettings'] = Builders::WavSettings.build(input[:wav_settings]) unless input[:wav_settings].nil?
        data
      end
    end

    # Structure Builder for WavSettings
    class WavSettings
      def self.build(input)
        data = {}
        data['bitDepth'] = input[:bit_depth] unless input[:bit_depth].nil?
        data['channels'] = input[:channels] unless input[:channels].nil?
        data['format'] = input[:format] unless input[:format].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data
      end
    end

    # Structure Builder for VorbisSettings
    class VorbisSettings
      def self.build(input)
        data = {}
        data['channels'] = input[:channels] unless input[:channels].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data['vbrQuality'] = input[:vbr_quality] unless input[:vbr_quality].nil?
        data
      end
    end

    # Structure Builder for OpusSettings
    class OpusSettings
      def self.build(input)
        data = {}
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['channels'] = input[:channels] unless input[:channels].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data
      end
    end

    # Structure Builder for Mp3Settings
    class Mp3Settings
      def self.build(input)
        data = {}
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['channels'] = input[:channels] unless input[:channels].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data['vbrQuality'] = input[:vbr_quality] unless input[:vbr_quality].nil?
        data
      end
    end

    # Structure Builder for Mp2Settings
    class Mp2Settings
      def self.build(input)
        data = {}
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['channels'] = input[:channels] unless input[:channels].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data
      end
    end

    # Structure Builder for Eac3Settings
    class Eac3Settings
      def self.build(input)
        data = {}
        data['attenuationControl'] = input[:attenuation_control] unless input[:attenuation_control].nil?
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['bitstreamMode'] = input[:bitstream_mode] unless input[:bitstream_mode].nil?
        data['codingMode'] = input[:coding_mode] unless input[:coding_mode].nil?
        data['dcFilter'] = input[:dc_filter] unless input[:dc_filter].nil?
        data['dialnorm'] = input[:dialnorm] unless input[:dialnorm].nil?
        data['dynamicRangeCompressionLine'] = input[:dynamic_range_compression_line] unless input[:dynamic_range_compression_line].nil?
        data['dynamicRangeCompressionRf'] = input[:dynamic_range_compression_rf] unless input[:dynamic_range_compression_rf].nil?
        data['lfeControl'] = input[:lfe_control] unless input[:lfe_control].nil?
        data['lfeFilter'] = input[:lfe_filter] unless input[:lfe_filter].nil?
        data['loRoCenterMixLevel'] = Hearth::NumberHelper.serialize(input[:lo_ro_center_mix_level]) unless input[:lo_ro_center_mix_level].nil?
        data['loRoSurroundMixLevel'] = Hearth::NumberHelper.serialize(input[:lo_ro_surround_mix_level]) unless input[:lo_ro_surround_mix_level].nil?
        data['ltRtCenterMixLevel'] = Hearth::NumberHelper.serialize(input[:lt_rt_center_mix_level]) unless input[:lt_rt_center_mix_level].nil?
        data['ltRtSurroundMixLevel'] = Hearth::NumberHelper.serialize(input[:lt_rt_surround_mix_level]) unless input[:lt_rt_surround_mix_level].nil?
        data['metadataControl'] = input[:metadata_control] unless input[:metadata_control].nil?
        data['passthroughControl'] = input[:passthrough_control] unless input[:passthrough_control].nil?
        data['phaseControl'] = input[:phase_control] unless input[:phase_control].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data['stereoDownmix'] = input[:stereo_downmix] unless input[:stereo_downmix].nil?
        data['surroundExMode'] = input[:surround_ex_mode] unless input[:surround_ex_mode].nil?
        data['surroundMode'] = input[:surround_mode] unless input[:surround_mode].nil?
        data
      end
    end

    # Structure Builder for Eac3AtmosSettings
    class Eac3AtmosSettings
      def self.build(input)
        data = {}
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['bitstreamMode'] = input[:bitstream_mode] unless input[:bitstream_mode].nil?
        data['codingMode'] = input[:coding_mode] unless input[:coding_mode].nil?
        data['dialogueIntelligence'] = input[:dialogue_intelligence] unless input[:dialogue_intelligence].nil?
        data['downmixControl'] = input[:downmix_control] unless input[:downmix_control].nil?
        data['dynamicRangeCompressionLine'] = input[:dynamic_range_compression_line] unless input[:dynamic_range_compression_line].nil?
        data['dynamicRangeCompressionRf'] = input[:dynamic_range_compression_rf] unless input[:dynamic_range_compression_rf].nil?
        data['dynamicRangeControl'] = input[:dynamic_range_control] unless input[:dynamic_range_control].nil?
        data['loRoCenterMixLevel'] = Hearth::NumberHelper.serialize(input[:lo_ro_center_mix_level]) unless input[:lo_ro_center_mix_level].nil?
        data['loRoSurroundMixLevel'] = Hearth::NumberHelper.serialize(input[:lo_ro_surround_mix_level]) unless input[:lo_ro_surround_mix_level].nil?
        data['ltRtCenterMixLevel'] = Hearth::NumberHelper.serialize(input[:lt_rt_center_mix_level]) unless input[:lt_rt_center_mix_level].nil?
        data['ltRtSurroundMixLevel'] = Hearth::NumberHelper.serialize(input[:lt_rt_surround_mix_level]) unless input[:lt_rt_surround_mix_level].nil?
        data['meteringMode'] = input[:metering_mode] unless input[:metering_mode].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data['speechThreshold'] = input[:speech_threshold] unless input[:speech_threshold].nil?
        data['stereoDownmix'] = input[:stereo_downmix] unless input[:stereo_downmix].nil?
        data['surroundExMode'] = input[:surround_ex_mode] unless input[:surround_ex_mode].nil?
        data
      end
    end

    # Structure Builder for AiffSettings
    class AiffSettings
      def self.build(input)
        data = {}
        data['bitDepth'] = input[:bit_depth] unless input[:bit_depth].nil?
        data['channels'] = input[:channels] unless input[:channels].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data
      end
    end

    # Structure Builder for Ac3Settings
    class Ac3Settings
      def self.build(input)
        data = {}
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['bitstreamMode'] = input[:bitstream_mode] unless input[:bitstream_mode].nil?
        data['codingMode'] = input[:coding_mode] unless input[:coding_mode].nil?
        data['dialnorm'] = input[:dialnorm] unless input[:dialnorm].nil?
        data['dynamicRangeCompressionLine'] = input[:dynamic_range_compression_line] unless input[:dynamic_range_compression_line].nil?
        data['dynamicRangeCompressionProfile'] = input[:dynamic_range_compression_profile] unless input[:dynamic_range_compression_profile].nil?
        data['dynamicRangeCompressionRf'] = input[:dynamic_range_compression_rf] unless input[:dynamic_range_compression_rf].nil?
        data['lfeFilter'] = input[:lfe_filter] unless input[:lfe_filter].nil?
        data['metadataControl'] = input[:metadata_control] unless input[:metadata_control].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data
      end
    end

    # Structure Builder for AacSettings
    class AacSettings
      def self.build(input)
        data = {}
        data['audioDescriptionBroadcasterMix'] = input[:audio_description_broadcaster_mix] unless input[:audio_description_broadcaster_mix].nil?
        data['bitrate'] = input[:bitrate] unless input[:bitrate].nil?
        data['codecProfile'] = input[:codec_profile] unless input[:codec_profile].nil?
        data['codingMode'] = input[:coding_mode] unless input[:coding_mode].nil?
        data['rateControlMode'] = input[:rate_control_mode] unless input[:rate_control_mode].nil?
        data['rawFormat'] = input[:raw_format] unless input[:raw_format].nil?
        data['sampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data['specification'] = input[:specification] unless input[:specification].nil?
        data['vbrQuality'] = input[:vbr_quality] unless input[:vbr_quality].nil?
        data
      end
    end

    # Structure Builder for AudioNormalizationSettings
    class AudioNormalizationSettings
      def self.build(input)
        data = {}
        data['algorithm'] = input[:algorithm] unless input[:algorithm].nil?
        data['algorithmControl'] = input[:algorithm_control] unless input[:algorithm_control].nil?
        data['correctionGateLevel'] = input[:correction_gate_level] unless input[:correction_gate_level].nil?
        data['loudnessLogging'] = input[:loudness_logging] unless input[:loudness_logging].nil?
        data['peakCalculation'] = input[:peak_calculation] unless input[:peak_calculation].nil?
        data['targetLkfs'] = Hearth::NumberHelper.serialize(input[:target_lkfs]) unless input[:target_lkfs].nil?
        data
      end
    end

    # Structure Builder for AudioChannelTaggingSettings
    class AudioChannelTaggingSettings
      def self.build(input)
        data = {}
        data['channelTag'] = input[:channel_tag] unless input[:channel_tag].nil?
        data
      end
    end

    # Structure Builder for OutputGroupSettings
    class OutputGroupSettings
      def self.build(input)
        data = {}
        data['cmafGroupSettings'] = Builders::CmafGroupSettings.build(input[:cmaf_group_settings]) unless input[:cmaf_group_settings].nil?
        data['dashIsoGroupSettings'] = Builders::DashIsoGroupSettings.build(input[:dash_iso_group_settings]) unless input[:dash_iso_group_settings].nil?
        data['fileGroupSettings'] = Builders::FileGroupSettings.build(input[:file_group_settings]) unless input[:file_group_settings].nil?
        data['hlsGroupSettings'] = Builders::HlsGroupSettings.build(input[:hls_group_settings]) unless input[:hls_group_settings].nil?
        data['msSmoothGroupSettings'] = Builders::MsSmoothGroupSettings.build(input[:ms_smooth_group_settings]) unless input[:ms_smooth_group_settings].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for MsSmoothGroupSettings
    class MsSmoothGroupSettings
      def self.build(input)
        data = {}
        data['additionalManifests'] = Builders::List____listOfMsSmoothAdditionalManifest.build(input[:additional_manifests]) unless input[:additional_manifests].nil?
        data['audioDeduplication'] = input[:audio_deduplication] unless input[:audio_deduplication].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['destinationSettings'] = Builders::DestinationSettings.build(input[:destination_settings]) unless input[:destination_settings].nil?
        data['encryption'] = Builders::MsSmoothEncryptionSettings.build(input[:encryption]) unless input[:encryption].nil?
        data['fragmentLength'] = input[:fragment_length] unless input[:fragment_length].nil?
        data['fragmentLengthControl'] = input[:fragment_length_control] unless input[:fragment_length_control].nil?
        data['manifestEncoding'] = input[:manifest_encoding] unless input[:manifest_encoding].nil?
        data
      end
    end

    # Structure Builder for MsSmoothEncryptionSettings
    class MsSmoothEncryptionSettings
      def self.build(input)
        data = {}
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data
      end
    end

    # Structure Builder for SpekeKeyProvider
    class SpekeKeyProvider
      def self.build(input)
        data = {}
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['resourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['systemIds'] = Builders::List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12.build(input[:system_ids]) unless input[:system_ids].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # List Builder for __listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12
    class List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DestinationSettings
    class DestinationSettings
      def self.build(input)
        data = {}
        data['s3Settings'] = Builders::S3DestinationSettings.build(input[:s3_settings]) unless input[:s3_settings].nil?
        data
      end
    end

    # Structure Builder for S3DestinationSettings
    class S3DestinationSettings
      def self.build(input)
        data = {}
        data['accessControl'] = Builders::S3DestinationAccessControl.build(input[:access_control]) unless input[:access_control].nil?
        data['encryption'] = Builders::S3EncryptionSettings.build(input[:encryption]) unless input[:encryption].nil?
        data
      end
    end

    # Structure Builder for S3EncryptionSettings
    class S3EncryptionSettings
      def self.build(input)
        data = {}
        data['encryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data['kmsEncryptionContext'] = input[:kms_encryption_context] unless input[:kms_encryption_context].nil?
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Structure Builder for S3DestinationAccessControl
    class S3DestinationAccessControl
      def self.build(input)
        data = {}
        data['cannedAcl'] = input[:canned_acl] unless input[:canned_acl].nil?
        data
      end
    end

    # List Builder for __listOfMsSmoothAdditionalManifest
    class List____listOfMsSmoothAdditionalManifest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MsSmoothAdditionalManifest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MsSmoothAdditionalManifest
    class MsSmoothAdditionalManifest
      def self.build(input)
        data = {}
        data['manifestNameModifier'] = input[:manifest_name_modifier] unless input[:manifest_name_modifier].nil?
        data['selectedOutputs'] = Builders::List____listOf__stringMin1.build(input[:selected_outputs]) unless input[:selected_outputs].nil?
        data
      end
    end

    # List Builder for __listOf__stringMin1
    class List____listOf__stringMin1
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HlsGroupSettings
    class HlsGroupSettings
      def self.build(input)
        data = {}
        data['adMarkers'] = Builders::List____listOfHlsAdMarkers.build(input[:ad_markers]) unless input[:ad_markers].nil?
        data['additionalManifests'] = Builders::List____listOfHlsAdditionalManifest.build(input[:additional_manifests]) unless input[:additional_manifests].nil?
        data['audioOnlyHeader'] = input[:audio_only_header] unless input[:audio_only_header].nil?
        data['baseUrl'] = input[:base_url] unless input[:base_url].nil?
        data['captionLanguageMappings'] = Builders::List____listOfHlsCaptionLanguageMapping.build(input[:caption_language_mappings]) unless input[:caption_language_mappings].nil?
        data['captionLanguageSetting'] = input[:caption_language_setting] unless input[:caption_language_setting].nil?
        data['captionSegmentLengthControl'] = input[:caption_segment_length_control] unless input[:caption_segment_length_control].nil?
        data['clientCache'] = input[:client_cache] unless input[:client_cache].nil?
        data['codecSpecification'] = input[:codec_specification] unless input[:codec_specification].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['destinationSettings'] = Builders::DestinationSettings.build(input[:destination_settings]) unless input[:destination_settings].nil?
        data['directoryStructure'] = input[:directory_structure] unless input[:directory_structure].nil?
        data['encryption'] = Builders::HlsEncryptionSettings.build(input[:encryption]) unless input[:encryption].nil?
        data['imageBasedTrickPlay'] = input[:image_based_trick_play] unless input[:image_based_trick_play].nil?
        data['imageBasedTrickPlaySettings'] = Builders::HlsImageBasedTrickPlaySettings.build(input[:image_based_trick_play_settings]) unless input[:image_based_trick_play_settings].nil?
        data['manifestCompression'] = input[:manifest_compression] unless input[:manifest_compression].nil?
        data['manifestDurationFormat'] = input[:manifest_duration_format] unless input[:manifest_duration_format].nil?
        data['minFinalSegmentLength'] = Hearth::NumberHelper.serialize(input[:min_final_segment_length]) unless input[:min_final_segment_length].nil?
        data['minSegmentLength'] = input[:min_segment_length] unless input[:min_segment_length].nil?
        data['outputSelection'] = input[:output_selection] unless input[:output_selection].nil?
        data['programDateTime'] = input[:program_date_time] unless input[:program_date_time].nil?
        data['programDateTimePeriod'] = input[:program_date_time_period] unless input[:program_date_time_period].nil?
        data['segmentControl'] = input[:segment_control] unless input[:segment_control].nil?
        data['segmentLength'] = input[:segment_length] unless input[:segment_length].nil?
        data['segmentLengthControl'] = input[:segment_length_control] unless input[:segment_length_control].nil?
        data['segmentsPerSubdirectory'] = input[:segments_per_subdirectory] unless input[:segments_per_subdirectory].nil?
        data['streamInfResolution'] = input[:stream_inf_resolution] unless input[:stream_inf_resolution].nil?
        data['targetDurationCompatibilityMode'] = input[:target_duration_compatibility_mode] unless input[:target_duration_compatibility_mode].nil?
        data['timedMetadataId3Frame'] = input[:timed_metadata_id3_frame] unless input[:timed_metadata_id3_frame].nil?
        data['timedMetadataId3Period'] = input[:timed_metadata_id3_period] unless input[:timed_metadata_id3_period].nil?
        data['timestampDeltaMilliseconds'] = input[:timestamp_delta_milliseconds] unless input[:timestamp_delta_milliseconds].nil?
        data
      end
    end

    # Structure Builder for HlsImageBasedTrickPlaySettings
    class HlsImageBasedTrickPlaySettings
      def self.build(input)
        data = {}
        data['intervalCadence'] = input[:interval_cadence] unless input[:interval_cadence].nil?
        data['thumbnailHeight'] = input[:thumbnail_height] unless input[:thumbnail_height].nil?
        data['thumbnailInterval'] = Hearth::NumberHelper.serialize(input[:thumbnail_interval]) unless input[:thumbnail_interval].nil?
        data['thumbnailWidth'] = input[:thumbnail_width] unless input[:thumbnail_width].nil?
        data['tileHeight'] = input[:tile_height] unless input[:tile_height].nil?
        data['tileWidth'] = input[:tile_width] unless input[:tile_width].nil?
        data
      end
    end

    # Structure Builder for HlsEncryptionSettings
    class HlsEncryptionSettings
      def self.build(input)
        data = {}
        data['constantInitializationVector'] = input[:constant_initialization_vector] unless input[:constant_initialization_vector].nil?
        data['encryptionMethod'] = input[:encryption_method] unless input[:encryption_method].nil?
        data['initializationVectorInManifest'] = input[:initialization_vector_in_manifest] unless input[:initialization_vector_in_manifest].nil?
        data['offlineEncrypted'] = input[:offline_encrypted] unless input[:offline_encrypted].nil?
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data['staticKeyProvider'] = Builders::StaticKeyProvider.build(input[:static_key_provider]) unless input[:static_key_provider].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for StaticKeyProvider
    class StaticKeyProvider
      def self.build(input)
        data = {}
        data['keyFormat'] = input[:key_format] unless input[:key_format].nil?
        data['keyFormatVersions'] = input[:key_format_versions] unless input[:key_format_versions].nil?
        data['staticKeyValue'] = input[:static_key_value] unless input[:static_key_value].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # List Builder for __listOfHlsCaptionLanguageMapping
    class List____listOfHlsCaptionLanguageMapping
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HlsCaptionLanguageMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HlsCaptionLanguageMapping
    class HlsCaptionLanguageMapping
      def self.build(input)
        data = {}
        data['captionChannel'] = input[:caption_channel] unless input[:caption_channel].nil?
        data['customLanguageCode'] = input[:custom_language_code] unless input[:custom_language_code].nil?
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['languageDescription'] = input[:language_description] unless input[:language_description].nil?
        data
      end
    end

    # List Builder for __listOfHlsAdditionalManifest
    class List____listOfHlsAdditionalManifest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HlsAdditionalManifest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HlsAdditionalManifest
    class HlsAdditionalManifest
      def self.build(input)
        data = {}
        data['manifestNameModifier'] = input[:manifest_name_modifier] unless input[:manifest_name_modifier].nil?
        data['selectedOutputs'] = Builders::List____listOf__stringMin1.build(input[:selected_outputs]) unless input[:selected_outputs].nil?
        data
      end
    end

    # List Builder for __listOfHlsAdMarkers
    class List____listOfHlsAdMarkers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FileGroupSettings
    class FileGroupSettings
      def self.build(input)
        data = {}
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['destinationSettings'] = Builders::DestinationSettings.build(input[:destination_settings]) unless input[:destination_settings].nil?
        data
      end
    end

    # Structure Builder for DashIsoGroupSettings
    class DashIsoGroupSettings
      def self.build(input)
        data = {}
        data['additionalManifests'] = Builders::List____listOfDashAdditionalManifest.build(input[:additional_manifests]) unless input[:additional_manifests].nil?
        data['audioChannelConfigSchemeIdUri'] = input[:audio_channel_config_scheme_id_uri] unless input[:audio_channel_config_scheme_id_uri].nil?
        data['baseUrl'] = input[:base_url] unless input[:base_url].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['destinationSettings'] = Builders::DestinationSettings.build(input[:destination_settings]) unless input[:destination_settings].nil?
        data['encryption'] = Builders::DashIsoEncryptionSettings.build(input[:encryption]) unless input[:encryption].nil?
        data['fragmentLength'] = input[:fragment_length] unless input[:fragment_length].nil?
        data['hbbtvCompliance'] = input[:hbbtv_compliance] unless input[:hbbtv_compliance].nil?
        data['imageBasedTrickPlay'] = input[:image_based_trick_play] unless input[:image_based_trick_play].nil?
        data['imageBasedTrickPlaySettings'] = Builders::DashIsoImageBasedTrickPlaySettings.build(input[:image_based_trick_play_settings]) unless input[:image_based_trick_play_settings].nil?
        data['minBufferTime'] = input[:min_buffer_time] unless input[:min_buffer_time].nil?
        data['minFinalSegmentLength'] = Hearth::NumberHelper.serialize(input[:min_final_segment_length]) unless input[:min_final_segment_length].nil?
        data['mpdProfile'] = input[:mpd_profile] unless input[:mpd_profile].nil?
        data['ptsOffsetHandlingForBFrames'] = input[:pts_offset_handling_for_b_frames] unless input[:pts_offset_handling_for_b_frames].nil?
        data['segmentControl'] = input[:segment_control] unless input[:segment_control].nil?
        data['segmentLength'] = input[:segment_length] unless input[:segment_length].nil?
        data['segmentLengthControl'] = input[:segment_length_control] unless input[:segment_length_control].nil?
        data['writeSegmentTimelineInRepresentation'] = input[:write_segment_timeline_in_representation] unless input[:write_segment_timeline_in_representation].nil?
        data
      end
    end

    # Structure Builder for DashIsoImageBasedTrickPlaySettings
    class DashIsoImageBasedTrickPlaySettings
      def self.build(input)
        data = {}
        data['intervalCadence'] = input[:interval_cadence] unless input[:interval_cadence].nil?
        data['thumbnailHeight'] = input[:thumbnail_height] unless input[:thumbnail_height].nil?
        data['thumbnailInterval'] = Hearth::NumberHelper.serialize(input[:thumbnail_interval]) unless input[:thumbnail_interval].nil?
        data['thumbnailWidth'] = input[:thumbnail_width] unless input[:thumbnail_width].nil?
        data['tileHeight'] = input[:tile_height] unless input[:tile_height].nil?
        data['tileWidth'] = input[:tile_width] unless input[:tile_width].nil?
        data
      end
    end

    # Structure Builder for DashIsoEncryptionSettings
    class DashIsoEncryptionSettings
      def self.build(input)
        data = {}
        data['playbackDeviceCompatibility'] = input[:playback_device_compatibility] unless input[:playback_device_compatibility].nil?
        data['spekeKeyProvider'] = Builders::SpekeKeyProvider.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data
      end
    end

    # List Builder for __listOfDashAdditionalManifest
    class List____listOfDashAdditionalManifest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DashAdditionalManifest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DashAdditionalManifest
    class DashAdditionalManifest
      def self.build(input)
        data = {}
        data['manifestNameModifier'] = input[:manifest_name_modifier] unless input[:manifest_name_modifier].nil?
        data['selectedOutputs'] = Builders::List____listOf__stringMin1.build(input[:selected_outputs]) unless input[:selected_outputs].nil?
        data
      end
    end

    # Structure Builder for CmafGroupSettings
    class CmafGroupSettings
      def self.build(input)
        data = {}
        data['additionalManifests'] = Builders::List____listOfCmafAdditionalManifest.build(input[:additional_manifests]) unless input[:additional_manifests].nil?
        data['baseUrl'] = input[:base_url] unless input[:base_url].nil?
        data['clientCache'] = input[:client_cache] unless input[:client_cache].nil?
        data['codecSpecification'] = input[:codec_specification] unless input[:codec_specification].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['destinationSettings'] = Builders::DestinationSettings.build(input[:destination_settings]) unless input[:destination_settings].nil?
        data['encryption'] = Builders::CmafEncryptionSettings.build(input[:encryption]) unless input[:encryption].nil?
        data['fragmentLength'] = input[:fragment_length] unless input[:fragment_length].nil?
        data['imageBasedTrickPlay'] = input[:image_based_trick_play] unless input[:image_based_trick_play].nil?
        data['imageBasedTrickPlaySettings'] = Builders::CmafImageBasedTrickPlaySettings.build(input[:image_based_trick_play_settings]) unless input[:image_based_trick_play_settings].nil?
        data['manifestCompression'] = input[:manifest_compression] unless input[:manifest_compression].nil?
        data['manifestDurationFormat'] = input[:manifest_duration_format] unless input[:manifest_duration_format].nil?
        data['minBufferTime'] = input[:min_buffer_time] unless input[:min_buffer_time].nil?
        data['minFinalSegmentLength'] = Hearth::NumberHelper.serialize(input[:min_final_segment_length]) unless input[:min_final_segment_length].nil?
        data['mpdProfile'] = input[:mpd_profile] unless input[:mpd_profile].nil?
        data['ptsOffsetHandlingForBFrames'] = input[:pts_offset_handling_for_b_frames] unless input[:pts_offset_handling_for_b_frames].nil?
        data['segmentControl'] = input[:segment_control] unless input[:segment_control].nil?
        data['segmentLength'] = input[:segment_length] unless input[:segment_length].nil?
        data['segmentLengthControl'] = input[:segment_length_control] unless input[:segment_length_control].nil?
        data['streamInfResolution'] = input[:stream_inf_resolution] unless input[:stream_inf_resolution].nil?
        data['targetDurationCompatibilityMode'] = input[:target_duration_compatibility_mode] unless input[:target_duration_compatibility_mode].nil?
        data['writeDashManifest'] = input[:write_dash_manifest] unless input[:write_dash_manifest].nil?
        data['writeHlsManifest'] = input[:write_hls_manifest] unless input[:write_hls_manifest].nil?
        data['writeSegmentTimelineInRepresentation'] = input[:write_segment_timeline_in_representation] unless input[:write_segment_timeline_in_representation].nil?
        data
      end
    end

    # Structure Builder for CmafImageBasedTrickPlaySettings
    class CmafImageBasedTrickPlaySettings
      def self.build(input)
        data = {}
        data['intervalCadence'] = input[:interval_cadence] unless input[:interval_cadence].nil?
        data['thumbnailHeight'] = input[:thumbnail_height] unless input[:thumbnail_height].nil?
        data['thumbnailInterval'] = Hearth::NumberHelper.serialize(input[:thumbnail_interval]) unless input[:thumbnail_interval].nil?
        data['thumbnailWidth'] = input[:thumbnail_width] unless input[:thumbnail_width].nil?
        data['tileHeight'] = input[:tile_height] unless input[:tile_height].nil?
        data['tileWidth'] = input[:tile_width] unless input[:tile_width].nil?
        data
      end
    end

    # Structure Builder for CmafEncryptionSettings
    class CmafEncryptionSettings
      def self.build(input)
        data = {}
        data['constantInitializationVector'] = input[:constant_initialization_vector] unless input[:constant_initialization_vector].nil?
        data['encryptionMethod'] = input[:encryption_method] unless input[:encryption_method].nil?
        data['initializationVectorInManifest'] = input[:initialization_vector_in_manifest] unless input[:initialization_vector_in_manifest].nil?
        data['spekeKeyProvider'] = Builders::SpekeKeyProviderCmaf.build(input[:speke_key_provider]) unless input[:speke_key_provider].nil?
        data['staticKeyProvider'] = Builders::StaticKeyProvider.build(input[:static_key_provider]) unless input[:static_key_provider].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for SpekeKeyProviderCmaf
    class SpekeKeyProviderCmaf
      def self.build(input)
        data = {}
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['dashSignaledSystemIds'] = Builders::List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.build(input[:dash_signaled_system_ids]) unless input[:dash_signaled_system_ids].nil?
        data['hlsSignaledSystemIds'] = Builders::List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.build(input[:hls_signaled_system_ids]) unless input[:hls_signaled_system_ids].nil?
        data['resourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # List Builder for __listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12
    class List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for __listOfCmafAdditionalManifest
    class List____listOfCmafAdditionalManifest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CmafAdditionalManifest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CmafAdditionalManifest
    class CmafAdditionalManifest
      def self.build(input)
        data = {}
        data['manifestNameModifier'] = input[:manifest_name_modifier] unless input[:manifest_name_modifier].nil?
        data['selectedOutputs'] = Builders::List____listOf__stringMin1.build(input[:selected_outputs]) unless input[:selected_outputs].nil?
        data
      end
    end

    # Structure Builder for AutomatedEncodingSettings
    class AutomatedEncodingSettings
      def self.build(input)
        data = {}
        data['abrSettings'] = Builders::AutomatedAbrSettings.build(input[:abr_settings]) unless input[:abr_settings].nil?
        data
      end
    end

    # Structure Builder for AutomatedAbrSettings
    class AutomatedAbrSettings
      def self.build(input)
        data = {}
        data['maxAbrBitrate'] = input[:max_abr_bitrate] unless input[:max_abr_bitrate].nil?
        data['maxRenditions'] = input[:max_renditions] unless input[:max_renditions].nil?
        data['minAbrBitrate'] = input[:min_abr_bitrate] unless input[:min_abr_bitrate].nil?
        data['rules'] = Builders::List____listOfAutomatedAbrRule.build(input[:rules]) unless input[:rules].nil?
        data
      end
    end

    # List Builder for __listOfAutomatedAbrRule
    class List____listOfAutomatedAbrRule
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AutomatedAbrRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AutomatedAbrRule
    class AutomatedAbrRule
      def self.build(input)
        data = {}
        data['allowedRenditions'] = Builders::List____listOfAllowedRenditionSize.build(input[:allowed_renditions]) unless input[:allowed_renditions].nil?
        data['forceIncludeRenditions'] = Builders::List____listOfForceIncludeRenditionSize.build(input[:force_include_renditions]) unless input[:force_include_renditions].nil?
        data['minBottomRenditionSize'] = Builders::MinBottomRenditionSize.build(input[:min_bottom_rendition_size]) unless input[:min_bottom_rendition_size].nil?
        data['minTopRenditionSize'] = Builders::MinTopRenditionSize.build(input[:min_top_rendition_size]) unless input[:min_top_rendition_size].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for MinTopRenditionSize
    class MinTopRenditionSize
      def self.build(input)
        data = {}
        data['height'] = input[:height] unless input[:height].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data
      end
    end

    # Structure Builder for MinBottomRenditionSize
    class MinBottomRenditionSize
      def self.build(input)
        data = {}
        data['height'] = input[:height] unless input[:height].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data
      end
    end

    # List Builder for __listOfForceIncludeRenditionSize
    class List____listOfForceIncludeRenditionSize
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ForceIncludeRenditionSize.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ForceIncludeRenditionSize
    class ForceIncludeRenditionSize
      def self.build(input)
        data = {}
        data['height'] = input[:height] unless input[:height].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data
      end
    end

    # List Builder for __listOfAllowedRenditionSize
    class List____listOfAllowedRenditionSize
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AllowedRenditionSize.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AllowedRenditionSize
    class AllowedRenditionSize
      def self.build(input)
        data = {}
        data['height'] = input[:height] unless input[:height].nil?
        data['required'] = input[:required] unless input[:required].nil?
        data['width'] = input[:width] unless input[:width].nil?
        data
      end
    end

    # Structure Builder for NielsenNonLinearWatermarkSettings
    class NielsenNonLinearWatermarkSettings
      def self.build(input)
        data = {}
        data['activeWatermarkProcess'] = input[:active_watermark_process] unless input[:active_watermark_process].nil?
        data['adiFilename'] = input[:adi_filename] unless input[:adi_filename].nil?
        data['assetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['assetName'] = input[:asset_name] unless input[:asset_name].nil?
        data['cbetSourceId'] = input[:cbet_source_id] unless input[:cbet_source_id].nil?
        data['episodeId'] = input[:episode_id] unless input[:episode_id].nil?
        data['metadataDestination'] = input[:metadata_destination] unless input[:metadata_destination].nil?
        data['sourceId'] = input[:source_id] unless input[:source_id].nil?
        data['sourceWatermarkStatus'] = input[:source_watermark_status] unless input[:source_watermark_status].nil?
        data['ticServerUrl'] = input[:tic_server_url] unless input[:tic_server_url].nil?
        data['uniqueTicPerAudioTrack'] = input[:unique_tic_per_audio_track] unless input[:unique_tic_per_audio_track].nil?
        data
      end
    end

    # Structure Builder for NielsenConfiguration
    class NielsenConfiguration
      def self.build(input)
        data = {}
        data['breakoutCode'] = input[:breakout_code] unless input[:breakout_code].nil?
        data['distributorId'] = input[:distributor_id] unless input[:distributor_id].nil?
        data
      end
    end

    # Structure Builder for MotionImageInserter
    class MotionImageInserter
      def self.build(input)
        data = {}
        data['framerate'] = Builders::MotionImageInsertionFramerate.build(input[:framerate]) unless input[:framerate].nil?
        data['input'] = input[:input] unless input[:input].nil?
        data['insertionMode'] = input[:insertion_mode] unless input[:insertion_mode].nil?
        data['offset'] = Builders::MotionImageInsertionOffset.build(input[:offset]) unless input[:offset].nil?
        data['playback'] = input[:playback] unless input[:playback].nil?
        data['startTime'] = input[:start_time] unless input[:start_time].nil?
        data
      end
    end

    # Structure Builder for MotionImageInsertionOffset
    class MotionImageInsertionOffset
      def self.build(input)
        data = {}
        data['imageX'] = input[:image_x] unless input[:image_x].nil?
        data['imageY'] = input[:image_y] unless input[:image_y].nil?
        data
      end
    end

    # Structure Builder for MotionImageInsertionFramerate
    class MotionImageInsertionFramerate
      def self.build(input)
        data = {}
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data
      end
    end

    # Structure Builder for KantarWatermarkSettings
    class KantarWatermarkSettings
      def self.build(input)
        data = {}
        data['channelName'] = input[:channel_name] unless input[:channel_name].nil?
        data['contentReference'] = input[:content_reference] unless input[:content_reference].nil?
        data['credentialsSecretName'] = input[:credentials_secret_name] unless input[:credentials_secret_name].nil?
        data['fileOffset'] = Hearth::NumberHelper.serialize(input[:file_offset]) unless input[:file_offset].nil?
        data['kantarLicenseId'] = input[:kantar_license_id] unless input[:kantar_license_id].nil?
        data['kantarServerUrl'] = input[:kantar_server_url] unless input[:kantar_server_url].nil?
        data['logDestination'] = input[:log_destination] unless input[:log_destination].nil?
        data['metadata3'] = input[:metadata3] unless input[:metadata3].nil?
        data['metadata4'] = input[:metadata4] unless input[:metadata4].nil?
        data['metadata5'] = input[:metadata5] unless input[:metadata5].nil?
        data['metadata6'] = input[:metadata6] unless input[:metadata6].nil?
        data['metadata7'] = input[:metadata7] unless input[:metadata7].nil?
        data['metadata8'] = input[:metadata8] unless input[:metadata8].nil?
        data
      end
    end

    # List Builder for __listOfInput
    class List____listOfInput
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Input.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Input
    class Input
      def self.build(input)
        data = {}
        data['audioSelectorGroups'] = Builders::Map____mapOfAudioSelectorGroup.build(input[:audio_selector_groups]) unless input[:audio_selector_groups].nil?
        data['audioSelectors'] = Builders::Map____mapOfAudioSelector.build(input[:audio_selectors]) unless input[:audio_selectors].nil?
        data['captionSelectors'] = Builders::Map____mapOfCaptionSelector.build(input[:caption_selectors]) unless input[:caption_selectors].nil?
        data['crop'] = Builders::Rectangle.build(input[:crop]) unless input[:crop].nil?
        data['deblockFilter'] = input[:deblock_filter] unless input[:deblock_filter].nil?
        data['decryptionSettings'] = Builders::InputDecryptionSettings.build(input[:decryption_settings]) unless input[:decryption_settings].nil?
        data['denoiseFilter'] = input[:denoise_filter] unless input[:denoise_filter].nil?
        data['dolbyVisionMetadataXml'] = input[:dolby_vision_metadata_xml] unless input[:dolby_vision_metadata_xml].nil?
        data['fileInput'] = input[:file_input] unless input[:file_input].nil?
        data['filterEnable'] = input[:filter_enable] unless input[:filter_enable].nil?
        data['filterStrength'] = input[:filter_strength] unless input[:filter_strength].nil?
        data['imageInserter'] = Builders::ImageInserter.build(input[:image_inserter]) unless input[:image_inserter].nil?
        data['inputClippings'] = Builders::List____listOfInputClipping.build(input[:input_clippings]) unless input[:input_clippings].nil?
        data['inputScanType'] = input[:input_scan_type] unless input[:input_scan_type].nil?
        data['position'] = Builders::Rectangle.build(input[:position]) unless input[:position].nil?
        data['programNumber'] = input[:program_number] unless input[:program_number].nil?
        data['psiControl'] = input[:psi_control] unless input[:psi_control].nil?
        data['supplementalImps'] = Builders::List____listOf__stringPatternS3ASSETMAPXml.build(input[:supplemental_imps]) unless input[:supplemental_imps].nil?
        data['timecodeSource'] = input[:timecode_source] unless input[:timecode_source].nil?
        data['timecodeStart'] = input[:timecode_start] unless input[:timecode_start].nil?
        data['videoGenerator'] = Builders::InputVideoGenerator.build(input[:video_generator]) unless input[:video_generator].nil?
        data['videoSelector'] = Builders::VideoSelector.build(input[:video_selector]) unless input[:video_selector].nil?
        data
      end
    end

    # Structure Builder for VideoSelector
    class VideoSelector
      def self.build(input)
        data = {}
        data['alphaBehavior'] = input[:alpha_behavior] unless input[:alpha_behavior].nil?
        data['colorSpace'] = input[:color_space] unless input[:color_space].nil?
        data['colorSpaceUsage'] = input[:color_space_usage] unless input[:color_space_usage].nil?
        data['embeddedTimecodeOverride'] = input[:embedded_timecode_override] unless input[:embedded_timecode_override].nil?
        data['hdr10Metadata'] = Builders::Hdr10Metadata.build(input[:hdr10_metadata]) unless input[:hdr10_metadata].nil?
        data['padVideo'] = input[:pad_video] unless input[:pad_video].nil?
        data['pid'] = input[:pid] unless input[:pid].nil?
        data['programNumber'] = input[:program_number] unless input[:program_number].nil?
        data['rotate'] = input[:rotate] unless input[:rotate].nil?
        data['sampleRange'] = input[:sample_range] unless input[:sample_range].nil?
        data
      end
    end

    # Structure Builder for InputVideoGenerator
    class InputVideoGenerator
      def self.build(input)
        data = {}
        data['duration'] = input[:duration] unless input[:duration].nil?
        data
      end
    end

    # List Builder for __listOf__stringPatternS3ASSETMAPXml
    class List____listOf__stringPatternS3ASSETMAPXml
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for __listOfInputClipping
    class List____listOfInputClipping
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputClipping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputClipping
    class InputClipping
      def self.build(input)
        data = {}
        data['endTimecode'] = input[:end_timecode] unless input[:end_timecode].nil?
        data['startTimecode'] = input[:start_timecode] unless input[:start_timecode].nil?
        data
      end
    end

    # Structure Builder for InputDecryptionSettings
    class InputDecryptionSettings
      def self.build(input)
        data = {}
        data['decryptionMode'] = input[:decryption_mode] unless input[:decryption_mode].nil?
        data['encryptedDecryptionKey'] = input[:encrypted_decryption_key] unless input[:encrypted_decryption_key].nil?
        data['initializationVector'] = input[:initialization_vector] unless input[:initialization_vector].nil?
        data['kmsKeyRegion'] = input[:kms_key_region] unless input[:kms_key_region].nil?
        data
      end
    end

    # Map Builder for __mapOfCaptionSelector
    class Map____mapOfCaptionSelector
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::CaptionSelector.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CaptionSelector
    class CaptionSelector
      def self.build(input)
        data = {}
        data['customLanguageCode'] = input[:custom_language_code] unless input[:custom_language_code].nil?
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['sourceSettings'] = Builders::CaptionSourceSettings.build(input[:source_settings]) unless input[:source_settings].nil?
        data
      end
    end

    # Structure Builder for CaptionSourceSettings
    class CaptionSourceSettings
      def self.build(input)
        data = {}
        data['ancillarySourceSettings'] = Builders::AncillarySourceSettings.build(input[:ancillary_source_settings]) unless input[:ancillary_source_settings].nil?
        data['dvbSubSourceSettings'] = Builders::DvbSubSourceSettings.build(input[:dvb_sub_source_settings]) unless input[:dvb_sub_source_settings].nil?
        data['embeddedSourceSettings'] = Builders::EmbeddedSourceSettings.build(input[:embedded_source_settings]) unless input[:embedded_source_settings].nil?
        data['fileSourceSettings'] = Builders::FileSourceSettings.build(input[:file_source_settings]) unless input[:file_source_settings].nil?
        data['sourceType'] = input[:source_type] unless input[:source_type].nil?
        data['teletextSourceSettings'] = Builders::TeletextSourceSettings.build(input[:teletext_source_settings]) unless input[:teletext_source_settings].nil?
        data['trackSourceSettings'] = Builders::TrackSourceSettings.build(input[:track_source_settings]) unless input[:track_source_settings].nil?
        data['webvttHlsSourceSettings'] = Builders::WebvttHlsSourceSettings.build(input[:webvtt_hls_source_settings]) unless input[:webvtt_hls_source_settings].nil?
        data
      end
    end

    # Structure Builder for WebvttHlsSourceSettings
    class WebvttHlsSourceSettings
      def self.build(input)
        data = {}
        data['renditionGroupId'] = input[:rendition_group_id] unless input[:rendition_group_id].nil?
        data['renditionLanguageCode'] = input[:rendition_language_code] unless input[:rendition_language_code].nil?
        data['renditionName'] = input[:rendition_name] unless input[:rendition_name].nil?
        data
      end
    end

    # Structure Builder for TrackSourceSettings
    class TrackSourceSettings
      def self.build(input)
        data = {}
        data['trackNumber'] = input[:track_number] unless input[:track_number].nil?
        data
      end
    end

    # Structure Builder for TeletextSourceSettings
    class TeletextSourceSettings
      def self.build(input)
        data = {}
        data['pageNumber'] = input[:page_number] unless input[:page_number].nil?
        data
      end
    end

    # Structure Builder for FileSourceSettings
    class FileSourceSettings
      def self.build(input)
        data = {}
        data['convert608To708'] = input[:convert608_to708] unless input[:convert608_to708].nil?
        data['framerate'] = Builders::CaptionSourceFramerate.build(input[:framerate]) unless input[:framerate].nil?
        data['sourceFile'] = input[:source_file] unless input[:source_file].nil?
        data['timeDelta'] = input[:time_delta] unless input[:time_delta].nil?
        data['timeDeltaUnits'] = input[:time_delta_units] unless input[:time_delta_units].nil?
        data
      end
    end

    # Structure Builder for CaptionSourceFramerate
    class CaptionSourceFramerate
      def self.build(input)
        data = {}
        data['framerateDenominator'] = input[:framerate_denominator] unless input[:framerate_denominator].nil?
        data['framerateNumerator'] = input[:framerate_numerator] unless input[:framerate_numerator].nil?
        data
      end
    end

    # Structure Builder for EmbeddedSourceSettings
    class EmbeddedSourceSettings
      def self.build(input)
        data = {}
        data['convert608To708'] = input[:convert608_to708] unless input[:convert608_to708].nil?
        data['source608ChannelNumber'] = input[:source608_channel_number] unless input[:source608_channel_number].nil?
        data['source608TrackNumber'] = input[:source608_track_number] unless input[:source608_track_number].nil?
        data['terminateCaptions'] = input[:terminate_captions] unless input[:terminate_captions].nil?
        data
      end
    end

    # Structure Builder for DvbSubSourceSettings
    class DvbSubSourceSettings
      def self.build(input)
        data = {}
        data['pid'] = input[:pid] unless input[:pid].nil?
        data
      end
    end

    # Structure Builder for AncillarySourceSettings
    class AncillarySourceSettings
      def self.build(input)
        data = {}
        data['convert608To708'] = input[:convert608_to708] unless input[:convert608_to708].nil?
        data['sourceAncillaryChannelNumber'] = input[:source_ancillary_channel_number] unless input[:source_ancillary_channel_number].nil?
        data['terminateCaptions'] = input[:terminate_captions] unless input[:terminate_captions].nil?
        data
      end
    end

    # Map Builder for __mapOfAudioSelector
    class Map____mapOfAudioSelector
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AudioSelector.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AudioSelector
    class AudioSelector
      def self.build(input)
        data = {}
        data['customLanguageCode'] = input[:custom_language_code] unless input[:custom_language_code].nil?
        data['defaultSelection'] = input[:default_selection] unless input[:default_selection].nil?
        data['externalAudioFileInput'] = input[:external_audio_file_input] unless input[:external_audio_file_input].nil?
        data['hlsRenditionGroupSettings'] = Builders::HlsRenditionGroupSettings.build(input[:hls_rendition_group_settings]) unless input[:hls_rendition_group_settings].nil?
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['offset'] = input[:offset] unless input[:offset].nil?
        data['pids'] = Builders::List____listOf__integerMin1Max2147483647.build(input[:pids]) unless input[:pids].nil?
        data['programSelection'] = input[:program_selection] unless input[:program_selection].nil?
        data['remixSettings'] = Builders::RemixSettings.build(input[:remix_settings]) unless input[:remix_settings].nil?
        data['selectorType'] = input[:selector_type] unless input[:selector_type].nil?
        data['tracks'] = Builders::List____listOf__integerMin1Max2147483647.build(input[:tracks]) unless input[:tracks].nil?
        data
      end
    end

    # List Builder for __listOf__integerMin1Max2147483647
    class List____listOf__integerMin1Max2147483647
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HlsRenditionGroupSettings
    class HlsRenditionGroupSettings
      def self.build(input)
        data = {}
        data['renditionGroupId'] = input[:rendition_group_id] unless input[:rendition_group_id].nil?
        data['renditionLanguageCode'] = input[:rendition_language_code] unless input[:rendition_language_code].nil?
        data['renditionName'] = input[:rendition_name] unless input[:rendition_name].nil?
        data
      end
    end

    # Map Builder for __mapOfAudioSelectorGroup
    class Map____mapOfAudioSelectorGroup
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AudioSelectorGroup.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AudioSelectorGroup
    class AudioSelectorGroup
      def self.build(input)
        data = {}
        data['audioSelectorNames'] = Builders::List____listOf__stringMin1.build(input[:audio_selector_names]) unless input[:audio_selector_names].nil?
        data
      end
    end

    # Structure Builder for ExtendedDataServices
    class ExtendedDataServices
      def self.build(input)
        data = {}
        data['copyProtectionAction'] = input[:copy_protection_action] unless input[:copy_protection_action].nil?
        data['vchipAction'] = input[:vchip_action] unless input[:vchip_action].nil?
        data
      end
    end

    # Structure Builder for EsamSettings
    class EsamSettings
      def self.build(input)
        data = {}
        data['manifestConfirmConditionNotification'] = Builders::EsamManifestConfirmConditionNotification.build(input[:manifest_confirm_condition_notification]) unless input[:manifest_confirm_condition_notification].nil?
        data['responseSignalPreroll'] = input[:response_signal_preroll] unless input[:response_signal_preroll].nil?
        data['signalProcessingNotification'] = Builders::EsamSignalProcessingNotification.build(input[:signal_processing_notification]) unless input[:signal_processing_notification].nil?
        data
      end
    end

    # Structure Builder for EsamSignalProcessingNotification
    class EsamSignalProcessingNotification
      def self.build(input)
        data = {}
        data['sccXml'] = input[:scc_xml] unless input[:scc_xml].nil?
        data
      end
    end

    # Structure Builder for EsamManifestConfirmConditionNotification
    class EsamManifestConfirmConditionNotification
      def self.build(input)
        data = {}
        data['mccXml'] = input[:mcc_xml] unless input[:mcc_xml].nil?
        data
      end
    end

    # Structure Builder for AvailBlanking
    class AvailBlanking
      def self.build(input)
        data = {}
        data['availBlankingImage'] = input[:avail_blanking_image] unless input[:avail_blanking_image].nil?
        data
      end
    end

    # List Builder for __listOfHopDestination
    class List____listOfHopDestination
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HopDestination.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HopDestination
    class HopDestination
      def self.build(input)
        data = {}
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['queue'] = input[:queue] unless input[:queue].nil?
        data['waitMinutes'] = input[:wait_minutes] unless input[:wait_minutes].nil?
        data
      end
    end

    # Structure Builder for AccelerationSettings
    class AccelerationSettings
      def self.build(input)
        data = {}
        data['mode'] = input[:mode] unless input[:mode].nil?
        data
      end
    end

    # Operation Builder for CreateJobTemplate
    class CreateJobTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2017-08-29/jobTemplates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accelerationSettings'] = Builders::AccelerationSettings.build(input[:acceleration_settings]) unless input[:acceleration_settings].nil?
        data['category'] = input[:category] unless input[:category].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['hopDestinations'] = Builders::List____listOfHopDestination.build(input[:hop_destinations]) unless input[:hop_destinations].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['queue'] = input[:queue] unless input[:queue].nil?
        data['settings'] = Builders::JobTemplateSettings.build(input[:settings]) unless input[:settings].nil?
        data['statusUpdateInterval'] = input[:status_update_interval] unless input[:status_update_interval].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for JobTemplateSettings
    class JobTemplateSettings
      def self.build(input)
        data = {}
        data['adAvailOffset'] = input[:ad_avail_offset] unless input[:ad_avail_offset].nil?
        data['availBlanking'] = Builders::AvailBlanking.build(input[:avail_blanking]) unless input[:avail_blanking].nil?
        data['esam'] = Builders::EsamSettings.build(input[:esam]) unless input[:esam].nil?
        data['extendedDataServices'] = Builders::ExtendedDataServices.build(input[:extended_data_services]) unless input[:extended_data_services].nil?
        data['inputs'] = Builders::List____listOfInputTemplate.build(input[:inputs]) unless input[:inputs].nil?
        data['kantarWatermark'] = Builders::KantarWatermarkSettings.build(input[:kantar_watermark]) unless input[:kantar_watermark].nil?
        data['motionImageInserter'] = Builders::MotionImageInserter.build(input[:motion_image_inserter]) unless input[:motion_image_inserter].nil?
        data['nielsenConfiguration'] = Builders::NielsenConfiguration.build(input[:nielsen_configuration]) unless input[:nielsen_configuration].nil?
        data['nielsenNonLinearWatermark'] = Builders::NielsenNonLinearWatermarkSettings.build(input[:nielsen_non_linear_watermark]) unless input[:nielsen_non_linear_watermark].nil?
        data['outputGroups'] = Builders::List____listOfOutputGroup.build(input[:output_groups]) unless input[:output_groups].nil?
        data['timecodeConfig'] = Builders::TimecodeConfig.build(input[:timecode_config]) unless input[:timecode_config].nil?
        data['timedMetadataInsertion'] = Builders::TimedMetadataInsertion.build(input[:timed_metadata_insertion]) unless input[:timed_metadata_insertion].nil?
        data
      end
    end

    # List Builder for __listOfInputTemplate
    class List____listOfInputTemplate
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputTemplate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputTemplate
    class InputTemplate
      def self.build(input)
        data = {}
        data['audioSelectorGroups'] = Builders::Map____mapOfAudioSelectorGroup.build(input[:audio_selector_groups]) unless input[:audio_selector_groups].nil?
        data['audioSelectors'] = Builders::Map____mapOfAudioSelector.build(input[:audio_selectors]) unless input[:audio_selectors].nil?
        data['captionSelectors'] = Builders::Map____mapOfCaptionSelector.build(input[:caption_selectors]) unless input[:caption_selectors].nil?
        data['crop'] = Builders::Rectangle.build(input[:crop]) unless input[:crop].nil?
        data['deblockFilter'] = input[:deblock_filter] unless input[:deblock_filter].nil?
        data['denoiseFilter'] = input[:denoise_filter] unless input[:denoise_filter].nil?
        data['dolbyVisionMetadataXml'] = input[:dolby_vision_metadata_xml] unless input[:dolby_vision_metadata_xml].nil?
        data['filterEnable'] = input[:filter_enable] unless input[:filter_enable].nil?
        data['filterStrength'] = input[:filter_strength] unless input[:filter_strength].nil?
        data['imageInserter'] = Builders::ImageInserter.build(input[:image_inserter]) unless input[:image_inserter].nil?
        data['inputClippings'] = Builders::List____listOfInputClipping.build(input[:input_clippings]) unless input[:input_clippings].nil?
        data['inputScanType'] = input[:input_scan_type] unless input[:input_scan_type].nil?
        data['position'] = Builders::Rectangle.build(input[:position]) unless input[:position].nil?
        data['programNumber'] = input[:program_number] unless input[:program_number].nil?
        data['psiControl'] = input[:psi_control] unless input[:psi_control].nil?
        data['timecodeSource'] = input[:timecode_source] unless input[:timecode_source].nil?
        data['timecodeStart'] = input[:timecode_start] unless input[:timecode_start].nil?
        data['videoSelector'] = Builders::VideoSelector.build(input[:video_selector]) unless input[:video_selector].nil?
        data
      end
    end

    # Operation Builder for CreatePreset
    class CreatePreset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2017-08-29/presets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['category'] = input[:category] unless input[:category].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['settings'] = Builders::PresetSettings.build(input[:settings]) unless input[:settings].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PresetSettings
    class PresetSettings
      def self.build(input)
        data = {}
        data['audioDescriptions'] = Builders::List____listOfAudioDescription.build(input[:audio_descriptions]) unless input[:audio_descriptions].nil?
        data['captionDescriptions'] = Builders::List____listOfCaptionDescriptionPreset.build(input[:caption_descriptions]) unless input[:caption_descriptions].nil?
        data['containerSettings'] = Builders::ContainerSettings.build(input[:container_settings]) unless input[:container_settings].nil?
        data['videoDescription'] = Builders::VideoDescription.build(input[:video_description]) unless input[:video_description].nil?
        data
      end
    end

    # List Builder for __listOfCaptionDescriptionPreset
    class List____listOfCaptionDescriptionPreset
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CaptionDescriptionPreset.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CaptionDescriptionPreset
    class CaptionDescriptionPreset
      def self.build(input)
        data = {}
        data['customLanguageCode'] = input[:custom_language_code] unless input[:custom_language_code].nil?
        data['destinationSettings'] = Builders::CaptionDestinationSettings.build(input[:destination_settings]) unless input[:destination_settings].nil?
        data['languageCode'] = input[:language_code] unless input[:language_code].nil?
        data['languageDescription'] = input[:language_description] unless input[:language_description].nil?
        data
      end
    end

    # Operation Builder for CreateQueue
    class CreateQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2017-08-29/queues')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['pricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['reservationPlanSettings'] = Builders::ReservationPlanSettings.build(input[:reservation_plan_settings]) unless input[:reservation_plan_settings].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReservationPlanSettings
    class ReservationPlanSettings
      def self.build(input)
        data = {}
        data['commitment'] = input[:commitment] unless input[:commitment].nil?
        data['renewalType'] = input[:renewal_type] unless input[:renewal_type].nil?
        data['reservedSlots'] = input[:reserved_slots] unless input[:reserved_slots].nil?
        data
      end
    end

    # Operation Builder for DeleteJobTemplate
    class DeleteJobTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/jobTemplates/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePolicy
    class DeletePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/2017-08-29/policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePreset
    class DeletePreset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/presets/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteQueue
    class DeleteQueue
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/queues/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeEndpoints
    class DescribeEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2017-08-29/endpoints')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['mode'] = input[:mode] unless input[:mode].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateCertificate
    class DisassociateCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/certificates/%<Arn>s',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJob
    class GetJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/jobs/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJobTemplate
    class GetJobTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/jobTemplates/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPolicy
    class GetPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2017-08-29/policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPreset
    class GetPreset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/presets/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetQueue
    class GetQueue
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/queues/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobTemplates
    class ListJobTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2017-08-29/jobTemplates')
        params = Hearth::Query::ParamList.new
        params['category'] = input[:category].to_s unless input[:category].nil?
        params['listBy'] = input[:list_by].to_s unless input[:list_by].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['order'] = input[:order].to_s unless input[:order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2017-08-29/jobs')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['order'] = input[:order].to_s unless input[:order].nil?
        params['queue'] = input[:queue].to_s unless input[:queue].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPresets
    class ListPresets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2017-08-29/presets')
        params = Hearth::Query::ParamList.new
        params['category'] = input[:category].to_s unless input[:category].nil?
        params['listBy'] = input[:list_by].to_s unless input[:list_by].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['order'] = input[:order].to_s unless input[:order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListQueues
    class ListQueues
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2017-08-29/queues')
        params = Hearth::Query::ParamList.new
        params['listBy'] = input[:list_by].to_s unless input[:list_by].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['order'] = input[:order].to_s unless input[:order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/tags/%<Arn>s',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutPolicy
    class PutPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/2017-08-29/policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policy'] = Builders::Policy.build(input[:policy]) unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Policy
    class Policy
      def self.build(input)
        data = {}
        data['httpInputs'] = input[:http_inputs] unless input[:http_inputs].nil?
        data['httpsInputs'] = input[:https_inputs] unless input[:https_inputs].nil?
        data['s3Inputs'] = input[:s3_inputs] unless input[:s3_inputs].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2017-08-29/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/tags/%<Arn>s',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tagKeys'] = Builders::List____listOf__string.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateJobTemplate
    class UpdateJobTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/jobTemplates/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accelerationSettings'] = Builders::AccelerationSettings.build(input[:acceleration_settings]) unless input[:acceleration_settings].nil?
        data['category'] = input[:category] unless input[:category].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['hopDestinations'] = Builders::List____listOfHopDestination.build(input[:hop_destinations]) unless input[:hop_destinations].nil?
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['queue'] = input[:queue] unless input[:queue].nil?
        data['settings'] = Builders::JobTemplateSettings.build(input[:settings]) unless input[:settings].nil?
        data['statusUpdateInterval'] = input[:status_update_interval] unless input[:status_update_interval].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePreset
    class UpdatePreset
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/presets/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['category'] = input[:category] unless input[:category].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['settings'] = Builders::PresetSettings.build(input[:settings]) unless input[:settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateQueue
    class UpdateQueue
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2017-08-29/queues/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['reservationPlanSettings'] = Builders::ReservationPlanSettings.build(input[:reservation_plan_settings]) unless input[:reservation_plan_settings].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
