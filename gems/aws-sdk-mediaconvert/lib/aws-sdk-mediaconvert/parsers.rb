# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MediaConvert
  module Parsers

    # Operation Parser for AssociateCertificate
    class AssociateCertificate
      def self.parse(http_resp)
        data = Types::AssociateCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CancelJob
    class CancelJob
      def self.parse(http_resp)
        data = Types::CancelJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateJob
    class CreateJob
      def self.parse(http_resp)
        data = Types::CreateJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job = (Parsers::Job.parse(map['job']) unless map['job'].nil?)
        data
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.acceleration_settings = (Parsers::AccelerationSettings.parse(map['accelerationSettings']) unless map['accelerationSettings'].nil?)
        data.acceleration_status = map['accelerationStatus']
        data.arn = map['arn']
        data.billing_tags_source = map['billingTagsSource']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.current_phase = map['currentPhase']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.hop_destinations = (Parsers::List____listOfHopDestination.parse(map['hopDestinations']) unless map['hopDestinations'].nil?)
        data.id = map['id']
        data.job_percent_complete = map['jobPercentComplete']
        data.job_template = map['jobTemplate']
        data.messages = (Parsers::JobMessages.parse(map['messages']) unless map['messages'].nil?)
        data.output_group_details = (Parsers::List____listOfOutputGroupDetail.parse(map['outputGroupDetails']) unless map['outputGroupDetails'].nil?)
        data.priority = map['priority']
        data.queue = map['queue']
        data.queue_transitions = (Parsers::List____listOfQueueTransition.parse(map['queueTransitions']) unless map['queueTransitions'].nil?)
        data.retry_count = map['retryCount']
        data.role = map['role']
        data.settings = (Parsers::JobSettings.parse(map['settings']) unless map['settings'].nil?)
        data.simulate_reserved_queue = map['simulateReservedQueue']
        data.status = map['status']
        data.status_update_interval = map['statusUpdateInterval']
        data.timing = (Parsers::Timing.parse(map['timing']) unless map['timing'].nil?)
        data.user_metadata = (Parsers::Map____mapOf__string.parse(map['userMetadata']) unless map['userMetadata'].nil?)
        return data
      end
    end

    class Map____mapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Timing
      def self.parse(map)
        data = Types::Timing.new
        data.finish_time = Time.at(map['finishTime'].to_i) if map['finishTime']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.submit_time = Time.at(map['submitTime'].to_i) if map['submitTime']
        return data
      end
    end

    class JobSettings
      def self.parse(map)
        data = Types::JobSettings.new
        data.ad_avail_offset = map['adAvailOffset']
        data.avail_blanking = (Parsers::AvailBlanking.parse(map['availBlanking']) unless map['availBlanking'].nil?)
        data.esam = (Parsers::EsamSettings.parse(map['esam']) unless map['esam'].nil?)
        data.extended_data_services = (Parsers::ExtendedDataServices.parse(map['extendedDataServices']) unless map['extendedDataServices'].nil?)
        data.inputs = (Parsers::List____listOfInput.parse(map['inputs']) unless map['inputs'].nil?)
        data.kantar_watermark = (Parsers::KantarWatermarkSettings.parse(map['kantarWatermark']) unless map['kantarWatermark'].nil?)
        data.motion_image_inserter = (Parsers::MotionImageInserter.parse(map['motionImageInserter']) unless map['motionImageInserter'].nil?)
        data.nielsen_configuration = (Parsers::NielsenConfiguration.parse(map['nielsenConfiguration']) unless map['nielsenConfiguration'].nil?)
        data.nielsen_non_linear_watermark = (Parsers::NielsenNonLinearWatermarkSettings.parse(map['nielsenNonLinearWatermark']) unless map['nielsenNonLinearWatermark'].nil?)
        data.output_groups = (Parsers::List____listOfOutputGroup.parse(map['outputGroups']) unless map['outputGroups'].nil?)
        data.timecode_config = (Parsers::TimecodeConfig.parse(map['timecodeConfig']) unless map['timecodeConfig'].nil?)
        data.timed_metadata_insertion = (Parsers::TimedMetadataInsertion.parse(map['timedMetadataInsertion']) unless map['timedMetadataInsertion'].nil?)
        return data
      end
    end

    class TimedMetadataInsertion
      def self.parse(map)
        data = Types::TimedMetadataInsertion.new
        data.id3_insertions = (Parsers::List____listOfId3Insertion.parse(map['id3Insertions']) unless map['id3Insertions'].nil?)
        return data
      end
    end

    class List____listOfId3Insertion
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Id3Insertion.parse(value) unless value.nil?
        end
        data
      end
    end

    class Id3Insertion
      def self.parse(map)
        data = Types::Id3Insertion.new
        data.id3 = map['id3']
        data.timecode = map['timecode']
        return data
      end
    end

    class TimecodeConfig
      def self.parse(map)
        data = Types::TimecodeConfig.new
        data.anchor = map['anchor']
        data.source = map['source']
        data.start = map['start']
        data.timestamp_offset = map['timestampOffset']
        return data
      end
    end

    class List____listOfOutputGroup
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutputGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutputGroup
      def self.parse(map)
        data = Types::OutputGroup.new
        data.automated_encoding_settings = (Parsers::AutomatedEncodingSettings.parse(map['automatedEncodingSettings']) unless map['automatedEncodingSettings'].nil?)
        data.custom_name = map['customName']
        data.name = map['name']
        data.output_group_settings = (Parsers::OutputGroupSettings.parse(map['outputGroupSettings']) unless map['outputGroupSettings'].nil?)
        data.outputs = (Parsers::List____listOfOutput.parse(map['outputs']) unless map['outputs'].nil?)
        return data
      end
    end

    class List____listOfOutput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Output.parse(value) unless value.nil?
        end
        data
      end
    end

    class Output
      def self.parse(map)
        data = Types::Output.new
        data.audio_descriptions = (Parsers::List____listOfAudioDescription.parse(map['audioDescriptions']) unless map['audioDescriptions'].nil?)
        data.caption_descriptions = (Parsers::List____listOfCaptionDescription.parse(map['captionDescriptions']) unless map['captionDescriptions'].nil?)
        data.container_settings = (Parsers::ContainerSettings.parse(map['containerSettings']) unless map['containerSettings'].nil?)
        data.extension = map['extension']
        data.name_modifier = map['nameModifier']
        data.output_settings = (Parsers::OutputSettings.parse(map['outputSettings']) unless map['outputSettings'].nil?)
        data.preset = map['preset']
        data.video_description = (Parsers::VideoDescription.parse(map['videoDescription']) unless map['videoDescription'].nil?)
        return data
      end
    end

    class VideoDescription
      def self.parse(map)
        data = Types::VideoDescription.new
        data.afd_signaling = map['afdSignaling']
        data.anti_alias = map['antiAlias']
        data.codec_settings = (Parsers::VideoCodecSettings.parse(map['codecSettings']) unless map['codecSettings'].nil?)
        data.color_metadata = map['colorMetadata']
        data.crop = (Parsers::Rectangle.parse(map['crop']) unless map['crop'].nil?)
        data.drop_frame_timecode = map['dropFrameTimecode']
        data.fixed_afd = map['fixedAfd']
        data.height = map['height']
        data.position = (Parsers::Rectangle.parse(map['position']) unless map['position'].nil?)
        data.respond_to_afd = map['respondToAfd']
        data.scaling_behavior = map['scalingBehavior']
        data.sharpness = map['sharpness']
        data.timecode_insertion = map['timecodeInsertion']
        data.video_preprocessors = (Parsers::VideoPreprocessor.parse(map['videoPreprocessors']) unless map['videoPreprocessors'].nil?)
        data.width = map['width']
        return data
      end
    end

    class VideoPreprocessor
      def self.parse(map)
        data = Types::VideoPreprocessor.new
        data.color_corrector = (Parsers::ColorCorrector.parse(map['colorCorrector']) unless map['colorCorrector'].nil?)
        data.deinterlacer = (Parsers::Deinterlacer.parse(map['deinterlacer']) unless map['deinterlacer'].nil?)
        data.dolby_vision = (Parsers::DolbyVision.parse(map['dolbyVision']) unless map['dolbyVision'].nil?)
        data.hdr10_plus = (Parsers::Hdr10Plus.parse(map['hdr10Plus']) unless map['hdr10Plus'].nil?)
        data.image_inserter = (Parsers::ImageInserter.parse(map['imageInserter']) unless map['imageInserter'].nil?)
        data.noise_reducer = (Parsers::NoiseReducer.parse(map['noiseReducer']) unless map['noiseReducer'].nil?)
        data.partner_watermarking = (Parsers::PartnerWatermarking.parse(map['partnerWatermarking']) unless map['partnerWatermarking'].nil?)
        data.timecode_burnin = (Parsers::TimecodeBurnin.parse(map['timecodeBurnin']) unless map['timecodeBurnin'].nil?)
        return data
      end
    end

    class TimecodeBurnin
      def self.parse(map)
        data = Types::TimecodeBurnin.new
        data.font_size = map['fontSize']
        data.position = map['position']
        data.prefix = map['prefix']
        return data
      end
    end

    class PartnerWatermarking
      def self.parse(map)
        data = Types::PartnerWatermarking.new
        data.nexguard_file_marker_settings = (Parsers::NexGuardFileMarkerSettings.parse(map['nexguardFileMarkerSettings']) unless map['nexguardFileMarkerSettings'].nil?)
        return data
      end
    end

    class NexGuardFileMarkerSettings
      def self.parse(map)
        data = Types::NexGuardFileMarkerSettings.new
        data.license = map['license']
        data.payload = map['payload']
        data.preset = map['preset']
        data.strength = map['strength']
        return data
      end
    end

    class NoiseReducer
      def self.parse(map)
        data = Types::NoiseReducer.new
        data.filter = map['filter']
        data.filter_settings = (Parsers::NoiseReducerFilterSettings.parse(map['filterSettings']) unless map['filterSettings'].nil?)
        data.spatial_filter_settings = (Parsers::NoiseReducerSpatialFilterSettings.parse(map['spatialFilterSettings']) unless map['spatialFilterSettings'].nil?)
        data.temporal_filter_settings = (Parsers::NoiseReducerTemporalFilterSettings.parse(map['temporalFilterSettings']) unless map['temporalFilterSettings'].nil?)
        return data
      end
    end

    class NoiseReducerTemporalFilterSettings
      def self.parse(map)
        data = Types::NoiseReducerTemporalFilterSettings.new
        data.aggressive_mode = map['aggressiveMode']
        data.post_temporal_sharpening = map['postTemporalSharpening']
        data.post_temporal_sharpening_strength = map['postTemporalSharpeningStrength']
        data.speed = map['speed']
        data.strength = map['strength']
        return data
      end
    end

    class NoiseReducerSpatialFilterSettings
      def self.parse(map)
        data = Types::NoiseReducerSpatialFilterSettings.new
        data.post_filter_sharpen_strength = map['postFilterSharpenStrength']
        data.speed = map['speed']
        data.strength = map['strength']
        return data
      end
    end

    class NoiseReducerFilterSettings
      def self.parse(map)
        data = Types::NoiseReducerFilterSettings.new
        data.strength = map['strength']
        return data
      end
    end

    class ImageInserter
      def self.parse(map)
        data = Types::ImageInserter.new
        data.insertable_images = (Parsers::List____listOfInsertableImage.parse(map['insertableImages']) unless map['insertableImages'].nil?)
        return data
      end
    end

    class List____listOfInsertableImage
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InsertableImage.parse(value) unless value.nil?
        end
        data
      end
    end

    class InsertableImage
      def self.parse(map)
        data = Types::InsertableImage.new
        data.duration = map['duration']
        data.fade_in = map['fadeIn']
        data.fade_out = map['fadeOut']
        data.height = map['height']
        data.image_inserter_input = map['imageInserterInput']
        data.image_x = map['imageX']
        data.image_y = map['imageY']
        data.layer = map['layer']
        data.opacity = map['opacity']
        data.start_time = map['startTime']
        data.width = map['width']
        return data
      end
    end

    class Hdr10Plus
      def self.parse(map)
        data = Types::Hdr10Plus.new
        data.mastering_monitor_nits = map['masteringMonitorNits']
        data.target_monitor_nits = map['targetMonitorNits']
        return data
      end
    end

    class DolbyVision
      def self.parse(map)
        data = Types::DolbyVision.new
        data.l6_metadata = (Parsers::DolbyVisionLevel6Metadata.parse(map['l6Metadata']) unless map['l6Metadata'].nil?)
        data.l6_mode = map['l6Mode']
        data.mapping = map['mapping']
        data.profile = map['profile']
        return data
      end
    end

    class DolbyVisionLevel6Metadata
      def self.parse(map)
        data = Types::DolbyVisionLevel6Metadata.new
        data.max_cll = map['maxCll']
        data.max_fall = map['maxFall']
        return data
      end
    end

    class Deinterlacer
      def self.parse(map)
        data = Types::Deinterlacer.new
        data.algorithm = map['algorithm']
        data.control = map['control']
        data.mode = map['mode']
        return data
      end
    end

    class ColorCorrector
      def self.parse(map)
        data = Types::ColorCorrector.new
        data.brightness = map['brightness']
        data.color_space_conversion = map['colorSpaceConversion']
        data.contrast = map['contrast']
        data.hdr10_metadata = (Parsers::Hdr10Metadata.parse(map['hdr10Metadata']) unless map['hdr10Metadata'].nil?)
        data.hue = map['hue']
        data.sample_range_conversion = map['sampleRangeConversion']
        data.saturation = map['saturation']
        return data
      end
    end

    class Hdr10Metadata
      def self.parse(map)
        data = Types::Hdr10Metadata.new
        data.blue_primary_x = map['bluePrimaryX']
        data.blue_primary_y = map['bluePrimaryY']
        data.green_primary_x = map['greenPrimaryX']
        data.green_primary_y = map['greenPrimaryY']
        data.max_content_light_level = map['maxContentLightLevel']
        data.max_frame_average_light_level = map['maxFrameAverageLightLevel']
        data.max_luminance = map['maxLuminance']
        data.min_luminance = map['minLuminance']
        data.red_primary_x = map['redPrimaryX']
        data.red_primary_y = map['redPrimaryY']
        data.white_point_x = map['whitePointX']
        data.white_point_y = map['whitePointY']
        return data
      end
    end

    class Rectangle
      def self.parse(map)
        data = Types::Rectangle.new
        data.height = map['height']
        data.width = map['width']
        data.x = map['x']
        data.y = map['y']
        return data
      end
    end

    class VideoCodecSettings
      def self.parse(map)
        data = Types::VideoCodecSettings.new
        data.av1_settings = (Parsers::Av1Settings.parse(map['av1Settings']) unless map['av1Settings'].nil?)
        data.avc_intra_settings = (Parsers::AvcIntraSettings.parse(map['avcIntraSettings']) unless map['avcIntraSettings'].nil?)
        data.codec = map['codec']
        data.frame_capture_settings = (Parsers::FrameCaptureSettings.parse(map['frameCaptureSettings']) unless map['frameCaptureSettings'].nil?)
        data.h264_settings = (Parsers::H264Settings.parse(map['h264Settings']) unless map['h264Settings'].nil?)
        data.h265_settings = (Parsers::H265Settings.parse(map['h265Settings']) unless map['h265Settings'].nil?)
        data.mpeg2_settings = (Parsers::Mpeg2Settings.parse(map['mpeg2Settings']) unless map['mpeg2Settings'].nil?)
        data.prores_settings = (Parsers::ProresSettings.parse(map['proresSettings']) unless map['proresSettings'].nil?)
        data.vc3_settings = (Parsers::Vc3Settings.parse(map['vc3Settings']) unless map['vc3Settings'].nil?)
        data.vp8_settings = (Parsers::Vp8Settings.parse(map['vp8Settings']) unless map['vp8Settings'].nil?)
        data.vp9_settings = (Parsers::Vp9Settings.parse(map['vp9Settings']) unless map['vp9Settings'].nil?)
        data.xavc_settings = (Parsers::XavcSettings.parse(map['xavcSettings']) unless map['xavcSettings'].nil?)
        return data
      end
    end

    class XavcSettings
      def self.parse(map)
        data = Types::XavcSettings.new
        data.adaptive_quantization = map['adaptiveQuantization']
        data.entropy_encoding = map['entropyEncoding']
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.profile = map['profile']
        data.slow_pal = map['slowPal']
        data.softness = map['softness']
        data.spatial_adaptive_quantization = map['spatialAdaptiveQuantization']
        data.temporal_adaptive_quantization = map['temporalAdaptiveQuantization']
        data.xavc4k_intra_cbg_profile_settings = (Parsers::Xavc4kIntraCbgProfileSettings.parse(map['xavc4kIntraCbgProfileSettings']) unless map['xavc4kIntraCbgProfileSettings'].nil?)
        data.xavc4k_intra_vbr_profile_settings = (Parsers::Xavc4kIntraVbrProfileSettings.parse(map['xavc4kIntraVbrProfileSettings']) unless map['xavc4kIntraVbrProfileSettings'].nil?)
        data.xavc4k_profile_settings = (Parsers::Xavc4kProfileSettings.parse(map['xavc4kProfileSettings']) unless map['xavc4kProfileSettings'].nil?)
        data.xavc_hd_intra_cbg_profile_settings = (Parsers::XavcHdIntraCbgProfileSettings.parse(map['xavcHdIntraCbgProfileSettings']) unless map['xavcHdIntraCbgProfileSettings'].nil?)
        data.xavc_hd_profile_settings = (Parsers::XavcHdProfileSettings.parse(map['xavcHdProfileSettings']) unless map['xavcHdProfileSettings'].nil?)
        return data
      end
    end

    class XavcHdProfileSettings
      def self.parse(map)
        data = Types::XavcHdProfileSettings.new
        data.bitrate_class = map['bitrateClass']
        data.flicker_adaptive_quantization = map['flickerAdaptiveQuantization']
        data.gop_b_reference = map['gopBReference']
        data.gop_closed_cadence = map['gopClosedCadence']
        data.hrd_buffer_size = map['hrdBufferSize']
        data.interlace_mode = map['interlaceMode']
        data.quality_tuning_level = map['qualityTuningLevel']
        data.slices = map['slices']
        data.telecine = map['telecine']
        return data
      end
    end

    class XavcHdIntraCbgProfileSettings
      def self.parse(map)
        data = Types::XavcHdIntraCbgProfileSettings.new
        data.xavc_class = map['xavcClass']
        return data
      end
    end

    class Xavc4kProfileSettings
      def self.parse(map)
        data = Types::Xavc4kProfileSettings.new
        data.bitrate_class = map['bitrateClass']
        data.codec_profile = map['codecProfile']
        data.flicker_adaptive_quantization = map['flickerAdaptiveQuantization']
        data.gop_b_reference = map['gopBReference']
        data.gop_closed_cadence = map['gopClosedCadence']
        data.hrd_buffer_size = map['hrdBufferSize']
        data.quality_tuning_level = map['qualityTuningLevel']
        data.slices = map['slices']
        return data
      end
    end

    class Xavc4kIntraVbrProfileSettings
      def self.parse(map)
        data = Types::Xavc4kIntraVbrProfileSettings.new
        data.xavc_class = map['xavcClass']
        return data
      end
    end

    class Xavc4kIntraCbgProfileSettings
      def self.parse(map)
        data = Types::Xavc4kIntraCbgProfileSettings.new
        data.xavc_class = map['xavcClass']
        return data
      end
    end

    class Vp9Settings
      def self.parse(map)
        data = Types::Vp9Settings.new
        data.bitrate = map['bitrate']
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.gop_size = Hearth::NumberHelper.deserialize(map['gopSize'])
        data.hrd_buffer_size = map['hrdBufferSize']
        data.max_bitrate = map['maxBitrate']
        data.par_control = map['parControl']
        data.par_denominator = map['parDenominator']
        data.par_numerator = map['parNumerator']
        data.quality_tuning_level = map['qualityTuningLevel']
        data.rate_control_mode = map['rateControlMode']
        return data
      end
    end

    class Vp8Settings
      def self.parse(map)
        data = Types::Vp8Settings.new
        data.bitrate = map['bitrate']
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.gop_size = Hearth::NumberHelper.deserialize(map['gopSize'])
        data.hrd_buffer_size = map['hrdBufferSize']
        data.max_bitrate = map['maxBitrate']
        data.par_control = map['parControl']
        data.par_denominator = map['parDenominator']
        data.par_numerator = map['parNumerator']
        data.quality_tuning_level = map['qualityTuningLevel']
        data.rate_control_mode = map['rateControlMode']
        return data
      end
    end

    class Vc3Settings
      def self.parse(map)
        data = Types::Vc3Settings.new
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.interlace_mode = map['interlaceMode']
        data.scan_type_conversion_mode = map['scanTypeConversionMode']
        data.slow_pal = map['slowPal']
        data.telecine = map['telecine']
        data.vc3_class = map['vc3Class']
        return data
      end
    end

    class ProresSettings
      def self.parse(map)
        data = Types::ProresSettings.new
        data.chroma_sampling = map['chromaSampling']
        data.codec_profile = map['codecProfile']
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.interlace_mode = map['interlaceMode']
        data.par_control = map['parControl']
        data.par_denominator = map['parDenominator']
        data.par_numerator = map['parNumerator']
        data.scan_type_conversion_mode = map['scanTypeConversionMode']
        data.slow_pal = map['slowPal']
        data.telecine = map['telecine']
        return data
      end
    end

    class Mpeg2Settings
      def self.parse(map)
        data = Types::Mpeg2Settings.new
        data.adaptive_quantization = map['adaptiveQuantization']
        data.bitrate = map['bitrate']
        data.codec_level = map['codecLevel']
        data.codec_profile = map['codecProfile']
        data.dynamic_sub_gop = map['dynamicSubGop']
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.gop_closed_cadence = map['gopClosedCadence']
        data.gop_size = Hearth::NumberHelper.deserialize(map['gopSize'])
        data.gop_size_units = map['gopSizeUnits']
        data.hrd_buffer_initial_fill_percentage = map['hrdBufferInitialFillPercentage']
        data.hrd_buffer_size = map['hrdBufferSize']
        data.interlace_mode = map['interlaceMode']
        data.intra_dc_precision = map['intraDcPrecision']
        data.max_bitrate = map['maxBitrate']
        data.min_i_interval = map['minIInterval']
        data.number_b_frames_between_reference_frames = map['numberBFramesBetweenReferenceFrames']
        data.par_control = map['parControl']
        data.par_denominator = map['parDenominator']
        data.par_numerator = map['parNumerator']
        data.quality_tuning_level = map['qualityTuningLevel']
        data.rate_control_mode = map['rateControlMode']
        data.scan_type_conversion_mode = map['scanTypeConversionMode']
        data.scene_change_detect = map['sceneChangeDetect']
        data.slow_pal = map['slowPal']
        data.softness = map['softness']
        data.spatial_adaptive_quantization = map['spatialAdaptiveQuantization']
        data.syntax = map['syntax']
        data.telecine = map['telecine']
        data.temporal_adaptive_quantization = map['temporalAdaptiveQuantization']
        return data
      end
    end

    class H265Settings
      def self.parse(map)
        data = Types::H265Settings.new
        data.adaptive_quantization = map['adaptiveQuantization']
        data.alternate_transfer_function_sei = map['alternateTransferFunctionSei']
        data.bitrate = map['bitrate']
        data.codec_level = map['codecLevel']
        data.codec_profile = map['codecProfile']
        data.dynamic_sub_gop = map['dynamicSubGop']
        data.flicker_adaptive_quantization = map['flickerAdaptiveQuantization']
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.gop_b_reference = map['gopBReference']
        data.gop_closed_cadence = map['gopClosedCadence']
        data.gop_size = Hearth::NumberHelper.deserialize(map['gopSize'])
        data.gop_size_units = map['gopSizeUnits']
        data.hrd_buffer_initial_fill_percentage = map['hrdBufferInitialFillPercentage']
        data.hrd_buffer_size = map['hrdBufferSize']
        data.interlace_mode = map['interlaceMode']
        data.max_bitrate = map['maxBitrate']
        data.min_i_interval = map['minIInterval']
        data.number_b_frames_between_reference_frames = map['numberBFramesBetweenReferenceFrames']
        data.number_reference_frames = map['numberReferenceFrames']
        data.par_control = map['parControl']
        data.par_denominator = map['parDenominator']
        data.par_numerator = map['parNumerator']
        data.quality_tuning_level = map['qualityTuningLevel']
        data.qvbr_settings = (Parsers::H265QvbrSettings.parse(map['qvbrSettings']) unless map['qvbrSettings'].nil?)
        data.rate_control_mode = map['rateControlMode']
        data.sample_adaptive_offset_filter_mode = map['sampleAdaptiveOffsetFilterMode']
        data.scan_type_conversion_mode = map['scanTypeConversionMode']
        data.scene_change_detect = map['sceneChangeDetect']
        data.slices = map['slices']
        data.slow_pal = map['slowPal']
        data.spatial_adaptive_quantization = map['spatialAdaptiveQuantization']
        data.telecine = map['telecine']
        data.temporal_adaptive_quantization = map['temporalAdaptiveQuantization']
        data.temporal_ids = map['temporalIds']
        data.tiles = map['tiles']
        data.unregistered_sei_timecode = map['unregisteredSeiTimecode']
        data.write_mp4_packaging_type = map['writeMp4PackagingType']
        return data
      end
    end

    class H265QvbrSettings
      def self.parse(map)
        data = Types::H265QvbrSettings.new
        data.max_average_bitrate = map['maxAverageBitrate']
        data.qvbr_quality_level = map['qvbrQualityLevel']
        data.qvbr_quality_level_fine_tune = Hearth::NumberHelper.deserialize(map['qvbrQualityLevelFineTune'])
        return data
      end
    end

    class H264Settings
      def self.parse(map)
        data = Types::H264Settings.new
        data.adaptive_quantization = map['adaptiveQuantization']
        data.bitrate = map['bitrate']
        data.codec_level = map['codecLevel']
        data.codec_profile = map['codecProfile']
        data.dynamic_sub_gop = map['dynamicSubGop']
        data.entropy_encoding = map['entropyEncoding']
        data.field_encoding = map['fieldEncoding']
        data.flicker_adaptive_quantization = map['flickerAdaptiveQuantization']
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.gop_b_reference = map['gopBReference']
        data.gop_closed_cadence = map['gopClosedCadence']
        data.gop_size = Hearth::NumberHelper.deserialize(map['gopSize'])
        data.gop_size_units = map['gopSizeUnits']
        data.hrd_buffer_initial_fill_percentage = map['hrdBufferInitialFillPercentage']
        data.hrd_buffer_size = map['hrdBufferSize']
        data.interlace_mode = map['interlaceMode']
        data.max_bitrate = map['maxBitrate']
        data.min_i_interval = map['minIInterval']
        data.number_b_frames_between_reference_frames = map['numberBFramesBetweenReferenceFrames']
        data.number_reference_frames = map['numberReferenceFrames']
        data.par_control = map['parControl']
        data.par_denominator = map['parDenominator']
        data.par_numerator = map['parNumerator']
        data.quality_tuning_level = map['qualityTuningLevel']
        data.qvbr_settings = (Parsers::H264QvbrSettings.parse(map['qvbrSettings']) unless map['qvbrSettings'].nil?)
        data.rate_control_mode = map['rateControlMode']
        data.repeat_pps = map['repeatPps']
        data.scan_type_conversion_mode = map['scanTypeConversionMode']
        data.scene_change_detect = map['sceneChangeDetect']
        data.slices = map['slices']
        data.slow_pal = map['slowPal']
        data.softness = map['softness']
        data.spatial_adaptive_quantization = map['spatialAdaptiveQuantization']
        data.syntax = map['syntax']
        data.telecine = map['telecine']
        data.temporal_adaptive_quantization = map['temporalAdaptiveQuantization']
        data.unregistered_sei_timecode = map['unregisteredSeiTimecode']
        return data
      end
    end

    class H264QvbrSettings
      def self.parse(map)
        data = Types::H264QvbrSettings.new
        data.max_average_bitrate = map['maxAverageBitrate']
        data.qvbr_quality_level = map['qvbrQualityLevel']
        data.qvbr_quality_level_fine_tune = Hearth::NumberHelper.deserialize(map['qvbrQualityLevelFineTune'])
        return data
      end
    end

    class FrameCaptureSettings
      def self.parse(map)
        data = Types::FrameCaptureSettings.new
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.max_captures = map['maxCaptures']
        data.quality = map['quality']
        return data
      end
    end

    class AvcIntraSettings
      def self.parse(map)
        data = Types::AvcIntraSettings.new
        data.avc_intra_class = map['avcIntraClass']
        data.avc_intra_uhd_settings = (Parsers::AvcIntraUhdSettings.parse(map['avcIntraUhdSettings']) unless map['avcIntraUhdSettings'].nil?)
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.interlace_mode = map['interlaceMode']
        data.scan_type_conversion_mode = map['scanTypeConversionMode']
        data.slow_pal = map['slowPal']
        data.telecine = map['telecine']
        return data
      end
    end

    class AvcIntraUhdSettings
      def self.parse(map)
        data = Types::AvcIntraUhdSettings.new
        data.quality_tuning_level = map['qualityTuningLevel']
        return data
      end
    end

    class Av1Settings
      def self.parse(map)
        data = Types::Av1Settings.new
        data.adaptive_quantization = map['adaptiveQuantization']
        data.bit_depth = map['bitDepth']
        data.framerate_control = map['framerateControl']
        data.framerate_conversion_algorithm = map['framerateConversionAlgorithm']
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        data.gop_size = Hearth::NumberHelper.deserialize(map['gopSize'])
        data.max_bitrate = map['maxBitrate']
        data.number_b_frames_between_reference_frames = map['numberBFramesBetweenReferenceFrames']
        data.qvbr_settings = (Parsers::Av1QvbrSettings.parse(map['qvbrSettings']) unless map['qvbrSettings'].nil?)
        data.rate_control_mode = map['rateControlMode']
        data.slices = map['slices']
        data.spatial_adaptive_quantization = map['spatialAdaptiveQuantization']
        return data
      end
    end

    class Av1QvbrSettings
      def self.parse(map)
        data = Types::Av1QvbrSettings.new
        data.qvbr_quality_level = map['qvbrQualityLevel']
        data.qvbr_quality_level_fine_tune = Hearth::NumberHelper.deserialize(map['qvbrQualityLevelFineTune'])
        return data
      end
    end

    class OutputSettings
      def self.parse(map)
        data = Types::OutputSettings.new
        data.hls_settings = (Parsers::HlsSettings.parse(map['hlsSettings']) unless map['hlsSettings'].nil?)
        return data
      end
    end

    class HlsSettings
      def self.parse(map)
        data = Types::HlsSettings.new
        data.audio_group_id = map['audioGroupId']
        data.audio_only_container = map['audioOnlyContainer']
        data.audio_rendition_sets = map['audioRenditionSets']
        data.audio_track_type = map['audioTrackType']
        data.descriptive_video_service_flag = map['descriptiveVideoServiceFlag']
        data.i_frame_only_manifest = map['iFrameOnlyManifest']
        data.segment_modifier = map['segmentModifier']
        return data
      end
    end

    class ContainerSettings
      def self.parse(map)
        data = Types::ContainerSettings.new
        data.cmfc_settings = (Parsers::CmfcSettings.parse(map['cmfcSettings']) unless map['cmfcSettings'].nil?)
        data.container = map['container']
        data.f4v_settings = (Parsers::F4vSettings.parse(map['f4vSettings']) unless map['f4vSettings'].nil?)
        data.m2ts_settings = (Parsers::M2tsSettings.parse(map['m2tsSettings']) unless map['m2tsSettings'].nil?)
        data.m3u8_settings = (Parsers::M3u8Settings.parse(map['m3u8Settings']) unless map['m3u8Settings'].nil?)
        data.mov_settings = (Parsers::MovSettings.parse(map['movSettings']) unless map['movSettings'].nil?)
        data.mp4_settings = (Parsers::Mp4Settings.parse(map['mp4Settings']) unless map['mp4Settings'].nil?)
        data.mpd_settings = (Parsers::MpdSettings.parse(map['mpdSettings']) unless map['mpdSettings'].nil?)
        data.mxf_settings = (Parsers::MxfSettings.parse(map['mxfSettings']) unless map['mxfSettings'].nil?)
        return data
      end
    end

    class MxfSettings
      def self.parse(map)
        data = Types::MxfSettings.new
        data.afd_signaling = map['afdSignaling']
        data.profile = map['profile']
        data.xavc_profile_settings = (Parsers::MxfXavcProfileSettings.parse(map['xavcProfileSettings']) unless map['xavcProfileSettings'].nil?)
        return data
      end
    end

    class MxfXavcProfileSettings
      def self.parse(map)
        data = Types::MxfXavcProfileSettings.new
        data.duration_mode = map['durationMode']
        data.max_anc_data_size = map['maxAncDataSize']
        return data
      end
    end

    class MpdSettings
      def self.parse(map)
        data = Types::MpdSettings.new
        data.accessibility_caption_hints = map['accessibilityCaptionHints']
        data.audio_duration = map['audioDuration']
        data.caption_container_type = map['captionContainerType']
        data.klv_metadata = map['klvMetadata']
        data.scte35_esam = map['scte35Esam']
        data.scte35_source = map['scte35Source']
        data.timed_metadata = map['timedMetadata']
        return data
      end
    end

    class Mp4Settings
      def self.parse(map)
        data = Types::Mp4Settings.new
        data.audio_duration = map['audioDuration']
        data.cslg_atom = map['cslgAtom']
        data.ctts_version = map['cttsVersion']
        data.free_space_box = map['freeSpaceBox']
        data.moov_placement = map['moovPlacement']
        data.mp4_major_brand = map['mp4MajorBrand']
        return data
      end
    end

    class MovSettings
      def self.parse(map)
        data = Types::MovSettings.new
        data.clap_atom = map['clapAtom']
        data.cslg_atom = map['cslgAtom']
        data.mpeg2_four_cc_control = map['mpeg2FourCCControl']
        data.padding_control = map['paddingControl']
        data.reference = map['reference']
        return data
      end
    end

    class M3u8Settings
      def self.parse(map)
        data = Types::M3u8Settings.new
        data.audio_duration = map['audioDuration']
        data.audio_frames_per_pes = map['audioFramesPerPes']
        data.audio_pids = (Parsers::List____listOf__integerMin32Max8182.parse(map['audioPids']) unless map['audioPids'].nil?)
        data.data_pts_control = map['dataPTSControl']
        data.max_pcr_interval = map['maxPcrInterval']
        data.nielsen_id3 = map['nielsenId3']
        data.pat_interval = map['patInterval']
        data.pcr_control = map['pcrControl']
        data.pcr_pid = map['pcrPid']
        data.pmt_interval = map['pmtInterval']
        data.pmt_pid = map['pmtPid']
        data.private_metadata_pid = map['privateMetadataPid']
        data.program_number = map['programNumber']
        data.scte35_pid = map['scte35Pid']
        data.scte35_source = map['scte35Source']
        data.timed_metadata = map['timedMetadata']
        data.timed_metadata_pid = map['timedMetadataPid']
        data.transport_stream_id = map['transportStreamId']
        data.video_pid = map['videoPid']
        return data
      end
    end

    class List____listOf__integerMin32Max8182
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class M2tsSettings
      def self.parse(map)
        data = Types::M2tsSettings.new
        data.audio_buffer_model = map['audioBufferModel']
        data.audio_duration = map['audioDuration']
        data.audio_frames_per_pes = map['audioFramesPerPes']
        data.audio_pids = (Parsers::List____listOf__integerMin32Max8182.parse(map['audioPids']) unless map['audioPids'].nil?)
        data.bitrate = map['bitrate']
        data.buffer_model = map['bufferModel']
        data.data_pts_control = map['dataPTSControl']
        data.dvb_nit_settings = (Parsers::DvbNitSettings.parse(map['dvbNitSettings']) unless map['dvbNitSettings'].nil?)
        data.dvb_sdt_settings = (Parsers::DvbSdtSettings.parse(map['dvbSdtSettings']) unless map['dvbSdtSettings'].nil?)
        data.dvb_sub_pids = (Parsers::List____listOf__integerMin32Max8182.parse(map['dvbSubPids']) unless map['dvbSubPids'].nil?)
        data.dvb_tdt_settings = (Parsers::DvbTdtSettings.parse(map['dvbTdtSettings']) unless map['dvbTdtSettings'].nil?)
        data.dvb_teletext_pid = map['dvbTeletextPid']
        data.ebp_audio_interval = map['ebpAudioInterval']
        data.ebp_placement = map['ebpPlacement']
        data.es_rate_in_pes = map['esRateInPes']
        data.force_ts_video_ebp_order = map['forceTsVideoEbpOrder']
        data.fragment_time = Hearth::NumberHelper.deserialize(map['fragmentTime'])
        data.klv_metadata = map['klvMetadata']
        data.max_pcr_interval = map['maxPcrInterval']
        data.min_ebp_interval = map['minEbpInterval']
        data.nielsen_id3 = map['nielsenId3']
        data.null_packet_bitrate = Hearth::NumberHelper.deserialize(map['nullPacketBitrate'])
        data.pat_interval = map['patInterval']
        data.pcr_control = map['pcrControl']
        data.pcr_pid = map['pcrPid']
        data.pmt_interval = map['pmtInterval']
        data.pmt_pid = map['pmtPid']
        data.private_metadata_pid = map['privateMetadataPid']
        data.program_number = map['programNumber']
        data.rate_mode = map['rateMode']
        data.scte35_esam = (Parsers::M2tsScte35Esam.parse(map['scte35Esam']) unless map['scte35Esam'].nil?)
        data.scte35_pid = map['scte35Pid']
        data.scte35_source = map['scte35Source']
        data.segmentation_markers = map['segmentationMarkers']
        data.segmentation_style = map['segmentationStyle']
        data.segmentation_time = Hearth::NumberHelper.deserialize(map['segmentationTime'])
        data.timed_metadata_pid = map['timedMetadataPid']
        data.transport_stream_id = map['transportStreamId']
        data.video_pid = map['videoPid']
        return data
      end
    end

    class M2tsScte35Esam
      def self.parse(map)
        data = Types::M2tsScte35Esam.new
        data.scte35_esam_pid = map['scte35EsamPid']
        return data
      end
    end

    class DvbTdtSettings
      def self.parse(map)
        data = Types::DvbTdtSettings.new
        data.tdt_interval = map['tdtInterval']
        return data
      end
    end

    class DvbSdtSettings
      def self.parse(map)
        data = Types::DvbSdtSettings.new
        data.output_sdt = map['outputSdt']
        data.sdt_interval = map['sdtInterval']
        data.service_name = map['serviceName']
        data.service_provider_name = map['serviceProviderName']
        return data
      end
    end

    class DvbNitSettings
      def self.parse(map)
        data = Types::DvbNitSettings.new
        data.network_id = map['networkId']
        data.network_name = map['networkName']
        data.nit_interval = map['nitInterval']
        return data
      end
    end

    class F4vSettings
      def self.parse(map)
        data = Types::F4vSettings.new
        data.moov_placement = map['moovPlacement']
        return data
      end
    end

    class CmfcSettings
      def self.parse(map)
        data = Types::CmfcSettings.new
        data.audio_duration = map['audioDuration']
        data.audio_group_id = map['audioGroupId']
        data.audio_rendition_sets = map['audioRenditionSets']
        data.audio_track_type = map['audioTrackType']
        data.descriptive_video_service_flag = map['descriptiveVideoServiceFlag']
        data.i_frame_only_manifest = map['iFrameOnlyManifest']
        data.klv_metadata = map['klvMetadata']
        data.scte35_esam = map['scte35Esam']
        data.scte35_source = map['scte35Source']
        data.timed_metadata = map['timedMetadata']
        return data
      end
    end

    class List____listOfCaptionDescription
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CaptionDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class CaptionDescription
      def self.parse(map)
        data = Types::CaptionDescription.new
        data.caption_selector_name = map['captionSelectorName']
        data.custom_language_code = map['customLanguageCode']
        data.destination_settings = (Parsers::CaptionDestinationSettings.parse(map['destinationSettings']) unless map['destinationSettings'].nil?)
        data.language_code = map['languageCode']
        data.language_description = map['languageDescription']
        return data
      end
    end

    class CaptionDestinationSettings
      def self.parse(map)
        data = Types::CaptionDestinationSettings.new
        data.burnin_destination_settings = (Parsers::BurninDestinationSettings.parse(map['burninDestinationSettings']) unless map['burninDestinationSettings'].nil?)
        data.destination_type = map['destinationType']
        data.dvb_sub_destination_settings = (Parsers::DvbSubDestinationSettings.parse(map['dvbSubDestinationSettings']) unless map['dvbSubDestinationSettings'].nil?)
        data.embedded_destination_settings = (Parsers::EmbeddedDestinationSettings.parse(map['embeddedDestinationSettings']) unless map['embeddedDestinationSettings'].nil?)
        data.imsc_destination_settings = (Parsers::ImscDestinationSettings.parse(map['imscDestinationSettings']) unless map['imscDestinationSettings'].nil?)
        data.scc_destination_settings = (Parsers::SccDestinationSettings.parse(map['sccDestinationSettings']) unless map['sccDestinationSettings'].nil?)
        data.srt_destination_settings = (Parsers::SrtDestinationSettings.parse(map['srtDestinationSettings']) unless map['srtDestinationSettings'].nil?)
        data.teletext_destination_settings = (Parsers::TeletextDestinationSettings.parse(map['teletextDestinationSettings']) unless map['teletextDestinationSettings'].nil?)
        data.ttml_destination_settings = (Parsers::TtmlDestinationSettings.parse(map['ttmlDestinationSettings']) unless map['ttmlDestinationSettings'].nil?)
        data.webvtt_destination_settings = (Parsers::WebvttDestinationSettings.parse(map['webvttDestinationSettings']) unless map['webvttDestinationSettings'].nil?)
        return data
      end
    end

    class WebvttDestinationSettings
      def self.parse(map)
        data = Types::WebvttDestinationSettings.new
        data.accessibility = map['accessibility']
        data.style_passthrough = map['stylePassthrough']
        return data
      end
    end

    class TtmlDestinationSettings
      def self.parse(map)
        data = Types::TtmlDestinationSettings.new
        data.style_passthrough = map['stylePassthrough']
        return data
      end
    end

    class TeletextDestinationSettings
      def self.parse(map)
        data = Types::TeletextDestinationSettings.new
        data.page_number = map['pageNumber']
        data.page_types = (Parsers::List____listOfTeletextPageType.parse(map['pageTypes']) unless map['pageTypes'].nil?)
        return data
      end
    end

    class List____listOfTeletextPageType
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SrtDestinationSettings
      def self.parse(map)
        data = Types::SrtDestinationSettings.new
        data.style_passthrough = map['stylePassthrough']
        return data
      end
    end

    class SccDestinationSettings
      def self.parse(map)
        data = Types::SccDestinationSettings.new
        data.framerate = map['framerate']
        return data
      end
    end

    class ImscDestinationSettings
      def self.parse(map)
        data = Types::ImscDestinationSettings.new
        data.accessibility = map['accessibility']
        data.style_passthrough = map['stylePassthrough']
        return data
      end
    end

    class EmbeddedDestinationSettings
      def self.parse(map)
        data = Types::EmbeddedDestinationSettings.new
        data.destination608_channel_number = map['destination608ChannelNumber']
        data.destination708_service_number = map['destination708ServiceNumber']
        return data
      end
    end

    class DvbSubDestinationSettings
      def self.parse(map)
        data = Types::DvbSubDestinationSettings.new
        data.alignment = map['alignment']
        data.apply_font_color = map['applyFontColor']
        data.background_color = map['backgroundColor']
        data.background_opacity = map['backgroundOpacity']
        data.dds_handling = map['ddsHandling']
        data.dds_x_coordinate = map['ddsXCoordinate']
        data.dds_y_coordinate = map['ddsYCoordinate']
        data.fallback_font = map['fallbackFont']
        data.font_color = map['fontColor']
        data.font_opacity = map['fontOpacity']
        data.font_resolution = map['fontResolution']
        data.font_script = map['fontScript']
        data.font_size = map['fontSize']
        data.height = map['height']
        data.hex_font_color = map['hexFontColor']
        data.outline_color = map['outlineColor']
        data.outline_size = map['outlineSize']
        data.shadow_color = map['shadowColor']
        data.shadow_opacity = map['shadowOpacity']
        data.shadow_x_offset = map['shadowXOffset']
        data.shadow_y_offset = map['shadowYOffset']
        data.style_passthrough = map['stylePassthrough']
        data.subtitling_type = map['subtitlingType']
        data.teletext_spacing = map['teletextSpacing']
        data.width = map['width']
        data.x_position = map['xPosition']
        data.y_position = map['yPosition']
        return data
      end
    end

    class BurninDestinationSettings
      def self.parse(map)
        data = Types::BurninDestinationSettings.new
        data.alignment = map['alignment']
        data.apply_font_color = map['applyFontColor']
        data.background_color = map['backgroundColor']
        data.background_opacity = map['backgroundOpacity']
        data.fallback_font = map['fallbackFont']
        data.font_color = map['fontColor']
        data.font_opacity = map['fontOpacity']
        data.font_resolution = map['fontResolution']
        data.font_script = map['fontScript']
        data.font_size = map['fontSize']
        data.hex_font_color = map['hexFontColor']
        data.outline_color = map['outlineColor']
        data.outline_size = map['outlineSize']
        data.shadow_color = map['shadowColor']
        data.shadow_opacity = map['shadowOpacity']
        data.shadow_x_offset = map['shadowXOffset']
        data.shadow_y_offset = map['shadowYOffset']
        data.style_passthrough = map['stylePassthrough']
        data.teletext_spacing = map['teletextSpacing']
        data.x_position = map['xPosition']
        data.y_position = map['yPosition']
        return data
      end
    end

    class List____listOfAudioDescription
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AudioDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class AudioDescription
      def self.parse(map)
        data = Types::AudioDescription.new
        data.audio_channel_tagging_settings = (Parsers::AudioChannelTaggingSettings.parse(map['audioChannelTaggingSettings']) unless map['audioChannelTaggingSettings'].nil?)
        data.audio_normalization_settings = (Parsers::AudioNormalizationSettings.parse(map['audioNormalizationSettings']) unless map['audioNormalizationSettings'].nil?)
        data.audio_source_name = map['audioSourceName']
        data.audio_type = map['audioType']
        data.audio_type_control = map['audioTypeControl']
        data.codec_settings = (Parsers::AudioCodecSettings.parse(map['codecSettings']) unless map['codecSettings'].nil?)
        data.custom_language_code = map['customLanguageCode']
        data.language_code = map['languageCode']
        data.language_code_control = map['languageCodeControl']
        data.remix_settings = (Parsers::RemixSettings.parse(map['remixSettings']) unless map['remixSettings'].nil?)
        data.stream_name = map['streamName']
        return data
      end
    end

    class RemixSettings
      def self.parse(map)
        data = Types::RemixSettings.new
        data.channel_mapping = (Parsers::ChannelMapping.parse(map['channelMapping']) unless map['channelMapping'].nil?)
        data.channels_in = map['channelsIn']
        data.channels_out = map['channelsOut']
        return data
      end
    end

    class ChannelMapping
      def self.parse(map)
        data = Types::ChannelMapping.new
        data.output_channels = (Parsers::List____listOfOutputChannelMapping.parse(map['outputChannels']) unless map['outputChannels'].nil?)
        return data
      end
    end

    class List____listOfOutputChannelMapping
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutputChannelMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutputChannelMapping
      def self.parse(map)
        data = Types::OutputChannelMapping.new
        data.input_channels = (Parsers::List____listOf__integerMinNegative60Max6.parse(map['inputChannels']) unless map['inputChannels'].nil?)
        data.input_channels_fine_tune = (Parsers::List____listOf__doubleMinNegative60Max6.parse(map['inputChannelsFineTune']) unless map['inputChannelsFineTune'].nil?)
        return data
      end
    end

    class List____listOf__doubleMinNegative60Max6
      def self.parse(list)
        data = []
        list.map do |value|
          data << Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class List____listOf__integerMinNegative60Max6
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AudioCodecSettings
      def self.parse(map)
        data = Types::AudioCodecSettings.new
        data.aac_settings = (Parsers::AacSettings.parse(map['aacSettings']) unless map['aacSettings'].nil?)
        data.ac3_settings = (Parsers::Ac3Settings.parse(map['ac3Settings']) unless map['ac3Settings'].nil?)
        data.aiff_settings = (Parsers::AiffSettings.parse(map['aiffSettings']) unless map['aiffSettings'].nil?)
        data.codec = map['codec']
        data.eac3_atmos_settings = (Parsers::Eac3AtmosSettings.parse(map['eac3AtmosSettings']) unless map['eac3AtmosSettings'].nil?)
        data.eac3_settings = (Parsers::Eac3Settings.parse(map['eac3Settings']) unless map['eac3Settings'].nil?)
        data.mp2_settings = (Parsers::Mp2Settings.parse(map['mp2Settings']) unless map['mp2Settings'].nil?)
        data.mp3_settings = (Parsers::Mp3Settings.parse(map['mp3Settings']) unless map['mp3Settings'].nil?)
        data.opus_settings = (Parsers::OpusSettings.parse(map['opusSettings']) unless map['opusSettings'].nil?)
        data.vorbis_settings = (Parsers::VorbisSettings.parse(map['vorbisSettings']) unless map['vorbisSettings'].nil?)
        data.wav_settings = (Parsers::WavSettings.parse(map['wavSettings']) unless map['wavSettings'].nil?)
        return data
      end
    end

    class WavSettings
      def self.parse(map)
        data = Types::WavSettings.new
        data.bit_depth = map['bitDepth']
        data.channels = map['channels']
        data.format = map['format']
        data.sample_rate = map['sampleRate']
        return data
      end
    end

    class VorbisSettings
      def self.parse(map)
        data = Types::VorbisSettings.new
        data.channels = map['channels']
        data.sample_rate = map['sampleRate']
        data.vbr_quality = map['vbrQuality']
        return data
      end
    end

    class OpusSettings
      def self.parse(map)
        data = Types::OpusSettings.new
        data.bitrate = map['bitrate']
        data.channels = map['channels']
        data.sample_rate = map['sampleRate']
        return data
      end
    end

    class Mp3Settings
      def self.parse(map)
        data = Types::Mp3Settings.new
        data.bitrate = map['bitrate']
        data.channels = map['channels']
        data.rate_control_mode = map['rateControlMode']
        data.sample_rate = map['sampleRate']
        data.vbr_quality = map['vbrQuality']
        return data
      end
    end

    class Mp2Settings
      def self.parse(map)
        data = Types::Mp2Settings.new
        data.bitrate = map['bitrate']
        data.channels = map['channels']
        data.sample_rate = map['sampleRate']
        return data
      end
    end

    class Eac3Settings
      def self.parse(map)
        data = Types::Eac3Settings.new
        data.attenuation_control = map['attenuationControl']
        data.bitrate = map['bitrate']
        data.bitstream_mode = map['bitstreamMode']
        data.coding_mode = map['codingMode']
        data.dc_filter = map['dcFilter']
        data.dialnorm = map['dialnorm']
        data.dynamic_range_compression_line = map['dynamicRangeCompressionLine']
        data.dynamic_range_compression_rf = map['dynamicRangeCompressionRf']
        data.lfe_control = map['lfeControl']
        data.lfe_filter = map['lfeFilter']
        data.lo_ro_center_mix_level = Hearth::NumberHelper.deserialize(map['loRoCenterMixLevel'])
        data.lo_ro_surround_mix_level = Hearth::NumberHelper.deserialize(map['loRoSurroundMixLevel'])
        data.lt_rt_center_mix_level = Hearth::NumberHelper.deserialize(map['ltRtCenterMixLevel'])
        data.lt_rt_surround_mix_level = Hearth::NumberHelper.deserialize(map['ltRtSurroundMixLevel'])
        data.metadata_control = map['metadataControl']
        data.passthrough_control = map['passthroughControl']
        data.phase_control = map['phaseControl']
        data.sample_rate = map['sampleRate']
        data.stereo_downmix = map['stereoDownmix']
        data.surround_ex_mode = map['surroundExMode']
        data.surround_mode = map['surroundMode']
        return data
      end
    end

    class Eac3AtmosSettings
      def self.parse(map)
        data = Types::Eac3AtmosSettings.new
        data.bitrate = map['bitrate']
        data.bitstream_mode = map['bitstreamMode']
        data.coding_mode = map['codingMode']
        data.dialogue_intelligence = map['dialogueIntelligence']
        data.downmix_control = map['downmixControl']
        data.dynamic_range_compression_line = map['dynamicRangeCompressionLine']
        data.dynamic_range_compression_rf = map['dynamicRangeCompressionRf']
        data.dynamic_range_control = map['dynamicRangeControl']
        data.lo_ro_center_mix_level = Hearth::NumberHelper.deserialize(map['loRoCenterMixLevel'])
        data.lo_ro_surround_mix_level = Hearth::NumberHelper.deserialize(map['loRoSurroundMixLevel'])
        data.lt_rt_center_mix_level = Hearth::NumberHelper.deserialize(map['ltRtCenterMixLevel'])
        data.lt_rt_surround_mix_level = Hearth::NumberHelper.deserialize(map['ltRtSurroundMixLevel'])
        data.metering_mode = map['meteringMode']
        data.sample_rate = map['sampleRate']
        data.speech_threshold = map['speechThreshold']
        data.stereo_downmix = map['stereoDownmix']
        data.surround_ex_mode = map['surroundExMode']
        return data
      end
    end

    class AiffSettings
      def self.parse(map)
        data = Types::AiffSettings.new
        data.bit_depth = map['bitDepth']
        data.channels = map['channels']
        data.sample_rate = map['sampleRate']
        return data
      end
    end

    class Ac3Settings
      def self.parse(map)
        data = Types::Ac3Settings.new
        data.bitrate = map['bitrate']
        data.bitstream_mode = map['bitstreamMode']
        data.coding_mode = map['codingMode']
        data.dialnorm = map['dialnorm']
        data.dynamic_range_compression_line = map['dynamicRangeCompressionLine']
        data.dynamic_range_compression_profile = map['dynamicRangeCompressionProfile']
        data.dynamic_range_compression_rf = map['dynamicRangeCompressionRf']
        data.lfe_filter = map['lfeFilter']
        data.metadata_control = map['metadataControl']
        data.sample_rate = map['sampleRate']
        return data
      end
    end

    class AacSettings
      def self.parse(map)
        data = Types::AacSettings.new
        data.audio_description_broadcaster_mix = map['audioDescriptionBroadcasterMix']
        data.bitrate = map['bitrate']
        data.codec_profile = map['codecProfile']
        data.coding_mode = map['codingMode']
        data.rate_control_mode = map['rateControlMode']
        data.raw_format = map['rawFormat']
        data.sample_rate = map['sampleRate']
        data.specification = map['specification']
        data.vbr_quality = map['vbrQuality']
        return data
      end
    end

    class AudioNormalizationSettings
      def self.parse(map)
        data = Types::AudioNormalizationSettings.new
        data.algorithm = map['algorithm']
        data.algorithm_control = map['algorithmControl']
        data.correction_gate_level = map['correctionGateLevel']
        data.loudness_logging = map['loudnessLogging']
        data.peak_calculation = map['peakCalculation']
        data.target_lkfs = Hearth::NumberHelper.deserialize(map['targetLkfs'])
        return data
      end
    end

    class AudioChannelTaggingSettings
      def self.parse(map)
        data = Types::AudioChannelTaggingSettings.new
        data.channel_tag = map['channelTag']
        return data
      end
    end

    class OutputGroupSettings
      def self.parse(map)
        data = Types::OutputGroupSettings.new
        data.cmaf_group_settings = (Parsers::CmafGroupSettings.parse(map['cmafGroupSettings']) unless map['cmafGroupSettings'].nil?)
        data.dash_iso_group_settings = (Parsers::DashIsoGroupSettings.parse(map['dashIsoGroupSettings']) unless map['dashIsoGroupSettings'].nil?)
        data.file_group_settings = (Parsers::FileGroupSettings.parse(map['fileGroupSettings']) unless map['fileGroupSettings'].nil?)
        data.hls_group_settings = (Parsers::HlsGroupSettings.parse(map['hlsGroupSettings']) unless map['hlsGroupSettings'].nil?)
        data.ms_smooth_group_settings = (Parsers::MsSmoothGroupSettings.parse(map['msSmoothGroupSettings']) unless map['msSmoothGroupSettings'].nil?)
        data.type = map['type']
        return data
      end
    end

    class MsSmoothGroupSettings
      def self.parse(map)
        data = Types::MsSmoothGroupSettings.new
        data.additional_manifests = (Parsers::List____listOfMsSmoothAdditionalManifest.parse(map['additionalManifests']) unless map['additionalManifests'].nil?)
        data.audio_deduplication = map['audioDeduplication']
        data.destination = map['destination']
        data.destination_settings = (Parsers::DestinationSettings.parse(map['destinationSettings']) unless map['destinationSettings'].nil?)
        data.encryption = (Parsers::MsSmoothEncryptionSettings.parse(map['encryption']) unless map['encryption'].nil?)
        data.fragment_length = map['fragmentLength']
        data.fragment_length_control = map['fragmentLengthControl']
        data.manifest_encoding = map['manifestEncoding']
        return data
      end
    end

    class MsSmoothEncryptionSettings
      def self.parse(map)
        data = Types::MsSmoothEncryptionSettings.new
        data.speke_key_provider = (Parsers::SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    class SpekeKeyProvider
      def self.parse(map)
        data = Types::SpekeKeyProvider.new
        data.certificate_arn = map['certificateArn']
        data.resource_id = map['resourceId']
        data.system_ids = (Parsers::List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12.parse(map['systemIds']) unless map['systemIds'].nil?)
        data.url = map['url']
        return data
      end
    end

    class List____listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DestinationSettings
      def self.parse(map)
        data = Types::DestinationSettings.new
        data.s3_settings = (Parsers::S3DestinationSettings.parse(map['s3Settings']) unless map['s3Settings'].nil?)
        return data
      end
    end

    class S3DestinationSettings
      def self.parse(map)
        data = Types::S3DestinationSettings.new
        data.access_control = (Parsers::S3DestinationAccessControl.parse(map['accessControl']) unless map['accessControl'].nil?)
        data.encryption = (Parsers::S3EncryptionSettings.parse(map['encryption']) unless map['encryption'].nil?)
        return data
      end
    end

    class S3EncryptionSettings
      def self.parse(map)
        data = Types::S3EncryptionSettings.new
        data.encryption_type = map['encryptionType']
        data.kms_encryption_context = map['kmsEncryptionContext']
        data.kms_key_arn = map['kmsKeyArn']
        return data
      end
    end

    class S3DestinationAccessControl
      def self.parse(map)
        data = Types::S3DestinationAccessControl.new
        data.canned_acl = map['cannedAcl']
        return data
      end
    end

    class List____listOfMsSmoothAdditionalManifest
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MsSmoothAdditionalManifest.parse(value) unless value.nil?
        end
        data
      end
    end

    class MsSmoothAdditionalManifest
      def self.parse(map)
        data = Types::MsSmoothAdditionalManifest.new
        data.manifest_name_modifier = map['manifestNameModifier']
        data.selected_outputs = (Parsers::List____listOf__stringMin1.parse(map['selectedOutputs']) unless map['selectedOutputs'].nil?)
        return data
      end
    end

    class List____listOf__stringMin1
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class HlsGroupSettings
      def self.parse(map)
        data = Types::HlsGroupSettings.new
        data.ad_markers = (Parsers::List____listOfHlsAdMarkers.parse(map['adMarkers']) unless map['adMarkers'].nil?)
        data.additional_manifests = (Parsers::List____listOfHlsAdditionalManifest.parse(map['additionalManifests']) unless map['additionalManifests'].nil?)
        data.audio_only_header = map['audioOnlyHeader']
        data.base_url = map['baseUrl']
        data.caption_language_mappings = (Parsers::List____listOfHlsCaptionLanguageMapping.parse(map['captionLanguageMappings']) unless map['captionLanguageMappings'].nil?)
        data.caption_language_setting = map['captionLanguageSetting']
        data.caption_segment_length_control = map['captionSegmentLengthControl']
        data.client_cache = map['clientCache']
        data.codec_specification = map['codecSpecification']
        data.destination = map['destination']
        data.destination_settings = (Parsers::DestinationSettings.parse(map['destinationSettings']) unless map['destinationSettings'].nil?)
        data.directory_structure = map['directoryStructure']
        data.encryption = (Parsers::HlsEncryptionSettings.parse(map['encryption']) unless map['encryption'].nil?)
        data.image_based_trick_play = map['imageBasedTrickPlay']
        data.image_based_trick_play_settings = (Parsers::HlsImageBasedTrickPlaySettings.parse(map['imageBasedTrickPlaySettings']) unless map['imageBasedTrickPlaySettings'].nil?)
        data.manifest_compression = map['manifestCompression']
        data.manifest_duration_format = map['manifestDurationFormat']
        data.min_final_segment_length = Hearth::NumberHelper.deserialize(map['minFinalSegmentLength'])
        data.min_segment_length = map['minSegmentLength']
        data.output_selection = map['outputSelection']
        data.program_date_time = map['programDateTime']
        data.program_date_time_period = map['programDateTimePeriod']
        data.segment_control = map['segmentControl']
        data.segment_length = map['segmentLength']
        data.segment_length_control = map['segmentLengthControl']
        data.segments_per_subdirectory = map['segmentsPerSubdirectory']
        data.stream_inf_resolution = map['streamInfResolution']
        data.target_duration_compatibility_mode = map['targetDurationCompatibilityMode']
        data.timed_metadata_id3_frame = map['timedMetadataId3Frame']
        data.timed_metadata_id3_period = map['timedMetadataId3Period']
        data.timestamp_delta_milliseconds = map['timestampDeltaMilliseconds']
        return data
      end
    end

    class HlsImageBasedTrickPlaySettings
      def self.parse(map)
        data = Types::HlsImageBasedTrickPlaySettings.new
        data.interval_cadence = map['intervalCadence']
        data.thumbnail_height = map['thumbnailHeight']
        data.thumbnail_interval = Hearth::NumberHelper.deserialize(map['thumbnailInterval'])
        data.thumbnail_width = map['thumbnailWidth']
        data.tile_height = map['tileHeight']
        data.tile_width = map['tileWidth']
        return data
      end
    end

    class HlsEncryptionSettings
      def self.parse(map)
        data = Types::HlsEncryptionSettings.new
        data.constant_initialization_vector = map['constantInitializationVector']
        data.encryption_method = map['encryptionMethod']
        data.initialization_vector_in_manifest = map['initializationVectorInManifest']
        data.offline_encrypted = map['offlineEncrypted']
        data.speke_key_provider = (Parsers::SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        data.static_key_provider = (Parsers::StaticKeyProvider.parse(map['staticKeyProvider']) unless map['staticKeyProvider'].nil?)
        data.type = map['type']
        return data
      end
    end

    class StaticKeyProvider
      def self.parse(map)
        data = Types::StaticKeyProvider.new
        data.key_format = map['keyFormat']
        data.key_format_versions = map['keyFormatVersions']
        data.static_key_value = map['staticKeyValue']
        data.url = map['url']
        return data
      end
    end

    class List____listOfHlsCaptionLanguageMapping
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::HlsCaptionLanguageMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class HlsCaptionLanguageMapping
      def self.parse(map)
        data = Types::HlsCaptionLanguageMapping.new
        data.caption_channel = map['captionChannel']
        data.custom_language_code = map['customLanguageCode']
        data.language_code = map['languageCode']
        data.language_description = map['languageDescription']
        return data
      end
    end

    class List____listOfHlsAdditionalManifest
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::HlsAdditionalManifest.parse(value) unless value.nil?
        end
        data
      end
    end

    class HlsAdditionalManifest
      def self.parse(map)
        data = Types::HlsAdditionalManifest.new
        data.manifest_name_modifier = map['manifestNameModifier']
        data.selected_outputs = (Parsers::List____listOf__stringMin1.parse(map['selectedOutputs']) unless map['selectedOutputs'].nil?)
        return data
      end
    end

    class List____listOfHlsAdMarkers
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class FileGroupSettings
      def self.parse(map)
        data = Types::FileGroupSettings.new
        data.destination = map['destination']
        data.destination_settings = (Parsers::DestinationSettings.parse(map['destinationSettings']) unless map['destinationSettings'].nil?)
        return data
      end
    end

    class DashIsoGroupSettings
      def self.parse(map)
        data = Types::DashIsoGroupSettings.new
        data.additional_manifests = (Parsers::List____listOfDashAdditionalManifest.parse(map['additionalManifests']) unless map['additionalManifests'].nil?)
        data.audio_channel_config_scheme_id_uri = map['audioChannelConfigSchemeIdUri']
        data.base_url = map['baseUrl']
        data.destination = map['destination']
        data.destination_settings = (Parsers::DestinationSettings.parse(map['destinationSettings']) unless map['destinationSettings'].nil?)
        data.encryption = (Parsers::DashIsoEncryptionSettings.parse(map['encryption']) unless map['encryption'].nil?)
        data.fragment_length = map['fragmentLength']
        data.hbbtv_compliance = map['hbbtvCompliance']
        data.image_based_trick_play = map['imageBasedTrickPlay']
        data.image_based_trick_play_settings = (Parsers::DashIsoImageBasedTrickPlaySettings.parse(map['imageBasedTrickPlaySettings']) unless map['imageBasedTrickPlaySettings'].nil?)
        data.min_buffer_time = map['minBufferTime']
        data.min_final_segment_length = Hearth::NumberHelper.deserialize(map['minFinalSegmentLength'])
        data.mpd_profile = map['mpdProfile']
        data.pts_offset_handling_for_b_frames = map['ptsOffsetHandlingForBFrames']
        data.segment_control = map['segmentControl']
        data.segment_length = map['segmentLength']
        data.segment_length_control = map['segmentLengthControl']
        data.write_segment_timeline_in_representation = map['writeSegmentTimelineInRepresentation']
        return data
      end
    end

    class DashIsoImageBasedTrickPlaySettings
      def self.parse(map)
        data = Types::DashIsoImageBasedTrickPlaySettings.new
        data.interval_cadence = map['intervalCadence']
        data.thumbnail_height = map['thumbnailHeight']
        data.thumbnail_interval = Hearth::NumberHelper.deserialize(map['thumbnailInterval'])
        data.thumbnail_width = map['thumbnailWidth']
        data.tile_height = map['tileHeight']
        data.tile_width = map['tileWidth']
        return data
      end
    end

    class DashIsoEncryptionSettings
      def self.parse(map)
        data = Types::DashIsoEncryptionSettings.new
        data.playback_device_compatibility = map['playbackDeviceCompatibility']
        data.speke_key_provider = (Parsers::SpekeKeyProvider.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        return data
      end
    end

    class List____listOfDashAdditionalManifest
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DashAdditionalManifest.parse(value) unless value.nil?
        end
        data
      end
    end

    class DashAdditionalManifest
      def self.parse(map)
        data = Types::DashAdditionalManifest.new
        data.manifest_name_modifier = map['manifestNameModifier']
        data.selected_outputs = (Parsers::List____listOf__stringMin1.parse(map['selectedOutputs']) unless map['selectedOutputs'].nil?)
        return data
      end
    end

    class CmafGroupSettings
      def self.parse(map)
        data = Types::CmafGroupSettings.new
        data.additional_manifests = (Parsers::List____listOfCmafAdditionalManifest.parse(map['additionalManifests']) unless map['additionalManifests'].nil?)
        data.base_url = map['baseUrl']
        data.client_cache = map['clientCache']
        data.codec_specification = map['codecSpecification']
        data.destination = map['destination']
        data.destination_settings = (Parsers::DestinationSettings.parse(map['destinationSettings']) unless map['destinationSettings'].nil?)
        data.encryption = (Parsers::CmafEncryptionSettings.parse(map['encryption']) unless map['encryption'].nil?)
        data.fragment_length = map['fragmentLength']
        data.image_based_trick_play = map['imageBasedTrickPlay']
        data.image_based_trick_play_settings = (Parsers::CmafImageBasedTrickPlaySettings.parse(map['imageBasedTrickPlaySettings']) unless map['imageBasedTrickPlaySettings'].nil?)
        data.manifest_compression = map['manifestCompression']
        data.manifest_duration_format = map['manifestDurationFormat']
        data.min_buffer_time = map['minBufferTime']
        data.min_final_segment_length = Hearth::NumberHelper.deserialize(map['minFinalSegmentLength'])
        data.mpd_profile = map['mpdProfile']
        data.pts_offset_handling_for_b_frames = map['ptsOffsetHandlingForBFrames']
        data.segment_control = map['segmentControl']
        data.segment_length = map['segmentLength']
        data.segment_length_control = map['segmentLengthControl']
        data.stream_inf_resolution = map['streamInfResolution']
        data.target_duration_compatibility_mode = map['targetDurationCompatibilityMode']
        data.write_dash_manifest = map['writeDashManifest']
        data.write_hls_manifest = map['writeHlsManifest']
        data.write_segment_timeline_in_representation = map['writeSegmentTimelineInRepresentation']
        return data
      end
    end

    class CmafImageBasedTrickPlaySettings
      def self.parse(map)
        data = Types::CmafImageBasedTrickPlaySettings.new
        data.interval_cadence = map['intervalCadence']
        data.thumbnail_height = map['thumbnailHeight']
        data.thumbnail_interval = Hearth::NumberHelper.deserialize(map['thumbnailInterval'])
        data.thumbnail_width = map['thumbnailWidth']
        data.tile_height = map['tileHeight']
        data.tile_width = map['tileWidth']
        return data
      end
    end

    class CmafEncryptionSettings
      def self.parse(map)
        data = Types::CmafEncryptionSettings.new
        data.constant_initialization_vector = map['constantInitializationVector']
        data.encryption_method = map['encryptionMethod']
        data.initialization_vector_in_manifest = map['initializationVectorInManifest']
        data.speke_key_provider = (Parsers::SpekeKeyProviderCmaf.parse(map['spekeKeyProvider']) unless map['spekeKeyProvider'].nil?)
        data.static_key_provider = (Parsers::StaticKeyProvider.parse(map['staticKeyProvider']) unless map['staticKeyProvider'].nil?)
        data.type = map['type']
        return data
      end
    end

    class SpekeKeyProviderCmaf
      def self.parse(map)
        data = Types::SpekeKeyProviderCmaf.new
        data.certificate_arn = map['certificateArn']
        data.dash_signaled_system_ids = (Parsers::List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.parse(map['dashSignaledSystemIds']) unless map['dashSignaledSystemIds'].nil?)
        data.hls_signaled_system_ids = (Parsers::List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12.parse(map['hlsSignaledSystemIds']) unless map['hlsSignaledSystemIds'].nil?)
        data.resource_id = map['resourceId']
        data.url = map['url']
        return data
      end
    end

    class List____listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class List____listOfCmafAdditionalManifest
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CmafAdditionalManifest.parse(value) unless value.nil?
        end
        data
      end
    end

    class CmafAdditionalManifest
      def self.parse(map)
        data = Types::CmafAdditionalManifest.new
        data.manifest_name_modifier = map['manifestNameModifier']
        data.selected_outputs = (Parsers::List____listOf__stringMin1.parse(map['selectedOutputs']) unless map['selectedOutputs'].nil?)
        return data
      end
    end

    class AutomatedEncodingSettings
      def self.parse(map)
        data = Types::AutomatedEncodingSettings.new
        data.abr_settings = (Parsers::AutomatedAbrSettings.parse(map['abrSettings']) unless map['abrSettings'].nil?)
        return data
      end
    end

    class AutomatedAbrSettings
      def self.parse(map)
        data = Types::AutomatedAbrSettings.new
        data.max_abr_bitrate = map['maxAbrBitrate']
        data.max_renditions = map['maxRenditions']
        data.min_abr_bitrate = map['minAbrBitrate']
        data.rules = (Parsers::List____listOfAutomatedAbrRule.parse(map['rules']) unless map['rules'].nil?)
        return data
      end
    end

    class List____listOfAutomatedAbrRule
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AutomatedAbrRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class AutomatedAbrRule
      def self.parse(map)
        data = Types::AutomatedAbrRule.new
        data.allowed_renditions = (Parsers::List____listOfAllowedRenditionSize.parse(map['allowedRenditions']) unless map['allowedRenditions'].nil?)
        data.force_include_renditions = (Parsers::List____listOfForceIncludeRenditionSize.parse(map['forceIncludeRenditions']) unless map['forceIncludeRenditions'].nil?)
        data.min_bottom_rendition_size = (Parsers::MinBottomRenditionSize.parse(map['minBottomRenditionSize']) unless map['minBottomRenditionSize'].nil?)
        data.min_top_rendition_size = (Parsers::MinTopRenditionSize.parse(map['minTopRenditionSize']) unless map['minTopRenditionSize'].nil?)
        data.type = map['type']
        return data
      end
    end

    class MinTopRenditionSize
      def self.parse(map)
        data = Types::MinTopRenditionSize.new
        data.height = map['height']
        data.width = map['width']
        return data
      end
    end

    class MinBottomRenditionSize
      def self.parse(map)
        data = Types::MinBottomRenditionSize.new
        data.height = map['height']
        data.width = map['width']
        return data
      end
    end

    class List____listOfForceIncludeRenditionSize
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ForceIncludeRenditionSize.parse(value) unless value.nil?
        end
        data
      end
    end

    class ForceIncludeRenditionSize
      def self.parse(map)
        data = Types::ForceIncludeRenditionSize.new
        data.height = map['height']
        data.width = map['width']
        return data
      end
    end

    class List____listOfAllowedRenditionSize
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AllowedRenditionSize.parse(value) unless value.nil?
        end
        data
      end
    end

    class AllowedRenditionSize
      def self.parse(map)
        data = Types::AllowedRenditionSize.new
        data.height = map['height']
        data.required = map['required']
        data.width = map['width']
        return data
      end
    end

    class NielsenNonLinearWatermarkSettings
      def self.parse(map)
        data = Types::NielsenNonLinearWatermarkSettings.new
        data.active_watermark_process = map['activeWatermarkProcess']
        data.adi_filename = map['adiFilename']
        data.asset_id = map['assetId']
        data.asset_name = map['assetName']
        data.cbet_source_id = map['cbetSourceId']
        data.episode_id = map['episodeId']
        data.metadata_destination = map['metadataDestination']
        data.source_id = map['sourceId']
        data.source_watermark_status = map['sourceWatermarkStatus']
        data.tic_server_url = map['ticServerUrl']
        data.unique_tic_per_audio_track = map['uniqueTicPerAudioTrack']
        return data
      end
    end

    class NielsenConfiguration
      def self.parse(map)
        data = Types::NielsenConfiguration.new
        data.breakout_code = map['breakoutCode']
        data.distributor_id = map['distributorId']
        return data
      end
    end

    class MotionImageInserter
      def self.parse(map)
        data = Types::MotionImageInserter.new
        data.framerate = (Parsers::MotionImageInsertionFramerate.parse(map['framerate']) unless map['framerate'].nil?)
        data.input = map['input']
        data.insertion_mode = map['insertionMode']
        data.offset = (Parsers::MotionImageInsertionOffset.parse(map['offset']) unless map['offset'].nil?)
        data.playback = map['playback']
        data.start_time = map['startTime']
        return data
      end
    end

    class MotionImageInsertionOffset
      def self.parse(map)
        data = Types::MotionImageInsertionOffset.new
        data.image_x = map['imageX']
        data.image_y = map['imageY']
        return data
      end
    end

    class MotionImageInsertionFramerate
      def self.parse(map)
        data = Types::MotionImageInsertionFramerate.new
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        return data
      end
    end

    class KantarWatermarkSettings
      def self.parse(map)
        data = Types::KantarWatermarkSettings.new
        data.channel_name = map['channelName']
        data.content_reference = map['contentReference']
        data.credentials_secret_name = map['credentialsSecretName']
        data.file_offset = Hearth::NumberHelper.deserialize(map['fileOffset'])
        data.kantar_license_id = map['kantarLicenseId']
        data.kantar_server_url = map['kantarServerUrl']
        data.log_destination = map['logDestination']
        data.metadata3 = map['metadata3']
        data.metadata4 = map['metadata4']
        data.metadata5 = map['metadata5']
        data.metadata6 = map['metadata6']
        data.metadata7 = map['metadata7']
        data.metadata8 = map['metadata8']
        return data
      end
    end

    class List____listOfInput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Input.parse(value) unless value.nil?
        end
        data
      end
    end

    class Input
      def self.parse(map)
        data = Types::Input.new
        data.audio_selector_groups = (Parsers::Map____mapOfAudioSelectorGroup.parse(map['audioSelectorGroups']) unless map['audioSelectorGroups'].nil?)
        data.audio_selectors = (Parsers::Map____mapOfAudioSelector.parse(map['audioSelectors']) unless map['audioSelectors'].nil?)
        data.caption_selectors = (Parsers::Map____mapOfCaptionSelector.parse(map['captionSelectors']) unless map['captionSelectors'].nil?)
        data.crop = (Parsers::Rectangle.parse(map['crop']) unless map['crop'].nil?)
        data.deblock_filter = map['deblockFilter']
        data.decryption_settings = (Parsers::InputDecryptionSettings.parse(map['decryptionSettings']) unless map['decryptionSettings'].nil?)
        data.denoise_filter = map['denoiseFilter']
        data.dolby_vision_metadata_xml = map['dolbyVisionMetadataXml']
        data.file_input = map['fileInput']
        data.filter_enable = map['filterEnable']
        data.filter_strength = map['filterStrength']
        data.image_inserter = (Parsers::ImageInserter.parse(map['imageInserter']) unless map['imageInserter'].nil?)
        data.input_clippings = (Parsers::List____listOfInputClipping.parse(map['inputClippings']) unless map['inputClippings'].nil?)
        data.input_scan_type = map['inputScanType']
        data.position = (Parsers::Rectangle.parse(map['position']) unless map['position'].nil?)
        data.program_number = map['programNumber']
        data.psi_control = map['psiControl']
        data.supplemental_imps = (Parsers::List____listOf__stringPatternS3ASSETMAPXml.parse(map['supplementalImps']) unless map['supplementalImps'].nil?)
        data.timecode_source = map['timecodeSource']
        data.timecode_start = map['timecodeStart']
        data.video_generator = (Parsers::InputVideoGenerator.parse(map['videoGenerator']) unless map['videoGenerator'].nil?)
        data.video_selector = (Parsers::VideoSelector.parse(map['videoSelector']) unless map['videoSelector'].nil?)
        return data
      end
    end

    class VideoSelector
      def self.parse(map)
        data = Types::VideoSelector.new
        data.alpha_behavior = map['alphaBehavior']
        data.color_space = map['colorSpace']
        data.color_space_usage = map['colorSpaceUsage']
        data.embedded_timecode_override = map['embeddedTimecodeOverride']
        data.hdr10_metadata = (Parsers::Hdr10Metadata.parse(map['hdr10Metadata']) unless map['hdr10Metadata'].nil?)
        data.pad_video = map['padVideo']
        data.pid = map['pid']
        data.program_number = map['programNumber']
        data.rotate = map['rotate']
        data.sample_range = map['sampleRange']
        return data
      end
    end

    class InputVideoGenerator
      def self.parse(map)
        data = Types::InputVideoGenerator.new
        data.duration = map['duration']
        return data
      end
    end

    class List____listOf__stringPatternS3ASSETMAPXml
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class List____listOfInputClipping
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputClipping.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputClipping
      def self.parse(map)
        data = Types::InputClipping.new
        data.end_timecode = map['endTimecode']
        data.start_timecode = map['startTimecode']
        return data
      end
    end

    class InputDecryptionSettings
      def self.parse(map)
        data = Types::InputDecryptionSettings.new
        data.decryption_mode = map['decryptionMode']
        data.encrypted_decryption_key = map['encryptedDecryptionKey']
        data.initialization_vector = map['initializationVector']
        data.kms_key_region = map['kmsKeyRegion']
        return data
      end
    end

    class Map____mapOfCaptionSelector
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::CaptionSelector.parse(value) unless value.nil?
        end
        data
      end
    end

    class CaptionSelector
      def self.parse(map)
        data = Types::CaptionSelector.new
        data.custom_language_code = map['customLanguageCode']
        data.language_code = map['languageCode']
        data.source_settings = (Parsers::CaptionSourceSettings.parse(map['sourceSettings']) unless map['sourceSettings'].nil?)
        return data
      end
    end

    class CaptionSourceSettings
      def self.parse(map)
        data = Types::CaptionSourceSettings.new
        data.ancillary_source_settings = (Parsers::AncillarySourceSettings.parse(map['ancillarySourceSettings']) unless map['ancillarySourceSettings'].nil?)
        data.dvb_sub_source_settings = (Parsers::DvbSubSourceSettings.parse(map['dvbSubSourceSettings']) unless map['dvbSubSourceSettings'].nil?)
        data.embedded_source_settings = (Parsers::EmbeddedSourceSettings.parse(map['embeddedSourceSettings']) unless map['embeddedSourceSettings'].nil?)
        data.file_source_settings = (Parsers::FileSourceSettings.parse(map['fileSourceSettings']) unless map['fileSourceSettings'].nil?)
        data.source_type = map['sourceType']
        data.teletext_source_settings = (Parsers::TeletextSourceSettings.parse(map['teletextSourceSettings']) unless map['teletextSourceSettings'].nil?)
        data.track_source_settings = (Parsers::TrackSourceSettings.parse(map['trackSourceSettings']) unless map['trackSourceSettings'].nil?)
        data.webvtt_hls_source_settings = (Parsers::WebvttHlsSourceSettings.parse(map['webvttHlsSourceSettings']) unless map['webvttHlsSourceSettings'].nil?)
        return data
      end
    end

    class WebvttHlsSourceSettings
      def self.parse(map)
        data = Types::WebvttHlsSourceSettings.new
        data.rendition_group_id = map['renditionGroupId']
        data.rendition_language_code = map['renditionLanguageCode']
        data.rendition_name = map['renditionName']
        return data
      end
    end

    class TrackSourceSettings
      def self.parse(map)
        data = Types::TrackSourceSettings.new
        data.track_number = map['trackNumber']
        return data
      end
    end

    class TeletextSourceSettings
      def self.parse(map)
        data = Types::TeletextSourceSettings.new
        data.page_number = map['pageNumber']
        return data
      end
    end

    class FileSourceSettings
      def self.parse(map)
        data = Types::FileSourceSettings.new
        data.convert608_to708 = map['convert608To708']
        data.framerate = (Parsers::CaptionSourceFramerate.parse(map['framerate']) unless map['framerate'].nil?)
        data.source_file = map['sourceFile']
        data.time_delta = map['timeDelta']
        data.time_delta_units = map['timeDeltaUnits']
        return data
      end
    end

    class CaptionSourceFramerate
      def self.parse(map)
        data = Types::CaptionSourceFramerate.new
        data.framerate_denominator = map['framerateDenominator']
        data.framerate_numerator = map['framerateNumerator']
        return data
      end
    end

    class EmbeddedSourceSettings
      def self.parse(map)
        data = Types::EmbeddedSourceSettings.new
        data.convert608_to708 = map['convert608To708']
        data.source608_channel_number = map['source608ChannelNumber']
        data.source608_track_number = map['source608TrackNumber']
        data.terminate_captions = map['terminateCaptions']
        return data
      end
    end

    class DvbSubSourceSettings
      def self.parse(map)
        data = Types::DvbSubSourceSettings.new
        data.pid = map['pid']
        return data
      end
    end

    class AncillarySourceSettings
      def self.parse(map)
        data = Types::AncillarySourceSettings.new
        data.convert608_to708 = map['convert608To708']
        data.source_ancillary_channel_number = map['sourceAncillaryChannelNumber']
        data.terminate_captions = map['terminateCaptions']
        return data
      end
    end

    class Map____mapOfAudioSelector
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::AudioSelector.parse(value) unless value.nil?
        end
        data
      end
    end

    class AudioSelector
      def self.parse(map)
        data = Types::AudioSelector.new
        data.custom_language_code = map['customLanguageCode']
        data.default_selection = map['defaultSelection']
        data.external_audio_file_input = map['externalAudioFileInput']
        data.hls_rendition_group_settings = (Parsers::HlsRenditionGroupSettings.parse(map['hlsRenditionGroupSettings']) unless map['hlsRenditionGroupSettings'].nil?)
        data.language_code = map['languageCode']
        data.offset = map['offset']
        data.pids = (Parsers::List____listOf__integerMin1Max2147483647.parse(map['pids']) unless map['pids'].nil?)
        data.program_selection = map['programSelection']
        data.remix_settings = (Parsers::RemixSettings.parse(map['remixSettings']) unless map['remixSettings'].nil?)
        data.selector_type = map['selectorType']
        data.tracks = (Parsers::List____listOf__integerMin1Max2147483647.parse(map['tracks']) unless map['tracks'].nil?)
        return data
      end
    end

    class List____listOf__integerMin1Max2147483647
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class HlsRenditionGroupSettings
      def self.parse(map)
        data = Types::HlsRenditionGroupSettings.new
        data.rendition_group_id = map['renditionGroupId']
        data.rendition_language_code = map['renditionLanguageCode']
        data.rendition_name = map['renditionName']
        return data
      end
    end

    class Map____mapOfAudioSelectorGroup
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::AudioSelectorGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AudioSelectorGroup
      def self.parse(map)
        data = Types::AudioSelectorGroup.new
        data.audio_selector_names = (Parsers::List____listOf__stringMin1.parse(map['audioSelectorNames']) unless map['audioSelectorNames'].nil?)
        return data
      end
    end

    class ExtendedDataServices
      def self.parse(map)
        data = Types::ExtendedDataServices.new
        data.copy_protection_action = map['copyProtectionAction']
        data.vchip_action = map['vchipAction']
        return data
      end
    end

    class EsamSettings
      def self.parse(map)
        data = Types::EsamSettings.new
        data.manifest_confirm_condition_notification = (Parsers::EsamManifestConfirmConditionNotification.parse(map['manifestConfirmConditionNotification']) unless map['manifestConfirmConditionNotification'].nil?)
        data.response_signal_preroll = map['responseSignalPreroll']
        data.signal_processing_notification = (Parsers::EsamSignalProcessingNotification.parse(map['signalProcessingNotification']) unless map['signalProcessingNotification'].nil?)
        return data
      end
    end

    class EsamSignalProcessingNotification
      def self.parse(map)
        data = Types::EsamSignalProcessingNotification.new
        data.scc_xml = map['sccXml']
        return data
      end
    end

    class EsamManifestConfirmConditionNotification
      def self.parse(map)
        data = Types::EsamManifestConfirmConditionNotification.new
        data.mcc_xml = map['mccXml']
        return data
      end
    end

    class AvailBlanking
      def self.parse(map)
        data = Types::AvailBlanking.new
        data.avail_blanking_image = map['availBlankingImage']
        return data
      end
    end

    class List____listOfQueueTransition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::QueueTransition.parse(value) unless value.nil?
        end
        data
      end
    end

    class QueueTransition
      def self.parse(map)
        data = Types::QueueTransition.new
        data.destination_queue = map['destinationQueue']
        data.source_queue = map['sourceQueue']
        data.timestamp = Time.at(map['timestamp'].to_i) if map['timestamp']
        return data
      end
    end

    class List____listOfOutputGroupDetail
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutputGroupDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutputGroupDetail
      def self.parse(map)
        data = Types::OutputGroupDetail.new
        data.output_details = (Parsers::List____listOfOutputDetail.parse(map['outputDetails']) unless map['outputDetails'].nil?)
        return data
      end
    end

    class List____listOfOutputDetail
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutputDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutputDetail
      def self.parse(map)
        data = Types::OutputDetail.new
        data.duration_in_ms = map['durationInMs']
        data.video_details = (Parsers::VideoDetail.parse(map['videoDetails']) unless map['videoDetails'].nil?)
        return data
      end
    end

    class VideoDetail
      def self.parse(map)
        data = Types::VideoDetail.new
        data.height_in_px = map['heightInPx']
        data.width_in_px = map['widthInPx']
        return data
      end
    end

    class JobMessages
      def self.parse(map)
        data = Types::JobMessages.new
        data.info = (Parsers::List____listOf__string.parse(map['info']) unless map['info'].nil?)
        data.warning = (Parsers::List____listOf__string.parse(map['warning']) unless map['warning'].nil?)
        return data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class List____listOfHopDestination
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::HopDestination.parse(value) unless value.nil?
        end
        data
      end
    end

    class HopDestination
      def self.parse(map)
        data = Types::HopDestination.new
        data.priority = map['priority']
        data.queue = map['queue']
        data.wait_minutes = map['waitMinutes']
        return data
      end
    end

    class AccelerationSettings
      def self.parse(map)
        data = Types::AccelerationSettings.new
        data.mode = map['mode']
        return data
      end
    end

    # Operation Parser for CreateJobTemplate
    class CreateJobTemplate
      def self.parse(http_resp)
        data = Types::CreateJobTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_template = (Parsers::JobTemplate.parse(map['jobTemplate']) unless map['jobTemplate'].nil?)
        data
      end
    end

    class JobTemplate
      def self.parse(map)
        data = Types::JobTemplate.new
        data.acceleration_settings = (Parsers::AccelerationSettings.parse(map['accelerationSettings']) unless map['accelerationSettings'].nil?)
        data.arn = map['arn']
        data.category = map['category']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.description = map['description']
        data.hop_destinations = (Parsers::List____listOfHopDestination.parse(map['hopDestinations']) unless map['hopDestinations'].nil?)
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        data.name = map['name']
        data.priority = map['priority']
        data.queue = map['queue']
        data.settings = (Parsers::JobTemplateSettings.parse(map['settings']) unless map['settings'].nil?)
        data.status_update_interval = map['statusUpdateInterval']
        data.type = map['type']
        return data
      end
    end

    class JobTemplateSettings
      def self.parse(map)
        data = Types::JobTemplateSettings.new
        data.ad_avail_offset = map['adAvailOffset']
        data.avail_blanking = (Parsers::AvailBlanking.parse(map['availBlanking']) unless map['availBlanking'].nil?)
        data.esam = (Parsers::EsamSettings.parse(map['esam']) unless map['esam'].nil?)
        data.extended_data_services = (Parsers::ExtendedDataServices.parse(map['extendedDataServices']) unless map['extendedDataServices'].nil?)
        data.inputs = (Parsers::List____listOfInputTemplate.parse(map['inputs']) unless map['inputs'].nil?)
        data.kantar_watermark = (Parsers::KantarWatermarkSettings.parse(map['kantarWatermark']) unless map['kantarWatermark'].nil?)
        data.motion_image_inserter = (Parsers::MotionImageInserter.parse(map['motionImageInserter']) unless map['motionImageInserter'].nil?)
        data.nielsen_configuration = (Parsers::NielsenConfiguration.parse(map['nielsenConfiguration']) unless map['nielsenConfiguration'].nil?)
        data.nielsen_non_linear_watermark = (Parsers::NielsenNonLinearWatermarkSettings.parse(map['nielsenNonLinearWatermark']) unless map['nielsenNonLinearWatermark'].nil?)
        data.output_groups = (Parsers::List____listOfOutputGroup.parse(map['outputGroups']) unless map['outputGroups'].nil?)
        data.timecode_config = (Parsers::TimecodeConfig.parse(map['timecodeConfig']) unless map['timecodeConfig'].nil?)
        data.timed_metadata_insertion = (Parsers::TimedMetadataInsertion.parse(map['timedMetadataInsertion']) unless map['timedMetadataInsertion'].nil?)
        return data
      end
    end

    class List____listOfInputTemplate
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputTemplate.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputTemplate
      def self.parse(map)
        data = Types::InputTemplate.new
        data.audio_selector_groups = (Parsers::Map____mapOfAudioSelectorGroup.parse(map['audioSelectorGroups']) unless map['audioSelectorGroups'].nil?)
        data.audio_selectors = (Parsers::Map____mapOfAudioSelector.parse(map['audioSelectors']) unless map['audioSelectors'].nil?)
        data.caption_selectors = (Parsers::Map____mapOfCaptionSelector.parse(map['captionSelectors']) unless map['captionSelectors'].nil?)
        data.crop = (Parsers::Rectangle.parse(map['crop']) unless map['crop'].nil?)
        data.deblock_filter = map['deblockFilter']
        data.denoise_filter = map['denoiseFilter']
        data.dolby_vision_metadata_xml = map['dolbyVisionMetadataXml']
        data.filter_enable = map['filterEnable']
        data.filter_strength = map['filterStrength']
        data.image_inserter = (Parsers::ImageInserter.parse(map['imageInserter']) unless map['imageInserter'].nil?)
        data.input_clippings = (Parsers::List____listOfInputClipping.parse(map['inputClippings']) unless map['inputClippings'].nil?)
        data.input_scan_type = map['inputScanType']
        data.position = (Parsers::Rectangle.parse(map['position']) unless map['position'].nil?)
        data.program_number = map['programNumber']
        data.psi_control = map['psiControl']
        data.timecode_source = map['timecodeSource']
        data.timecode_start = map['timecodeStart']
        data.video_selector = (Parsers::VideoSelector.parse(map['videoSelector']) unless map['videoSelector'].nil?)
        return data
      end
    end

    # Operation Parser for CreatePreset
    class CreatePreset
      def self.parse(http_resp)
        data = Types::CreatePresetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.preset = (Parsers::Preset.parse(map['preset']) unless map['preset'].nil?)
        data
      end
    end

    class Preset
      def self.parse(map)
        data = Types::Preset.new
        data.arn = map['arn']
        data.category = map['category']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.description = map['description']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        data.name = map['name']
        data.settings = (Parsers::PresetSettings.parse(map['settings']) unless map['settings'].nil?)
        data.type = map['type']
        return data
      end
    end

    class PresetSettings
      def self.parse(map)
        data = Types::PresetSettings.new
        data.audio_descriptions = (Parsers::List____listOfAudioDescription.parse(map['audioDescriptions']) unless map['audioDescriptions'].nil?)
        data.caption_descriptions = (Parsers::List____listOfCaptionDescriptionPreset.parse(map['captionDescriptions']) unless map['captionDescriptions'].nil?)
        data.container_settings = (Parsers::ContainerSettings.parse(map['containerSettings']) unless map['containerSettings'].nil?)
        data.video_description = (Parsers::VideoDescription.parse(map['videoDescription']) unless map['videoDescription'].nil?)
        return data
      end
    end

    class List____listOfCaptionDescriptionPreset
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CaptionDescriptionPreset.parse(value) unless value.nil?
        end
        data
      end
    end

    class CaptionDescriptionPreset
      def self.parse(map)
        data = Types::CaptionDescriptionPreset.new
        data.custom_language_code = map['customLanguageCode']
        data.destination_settings = (Parsers::CaptionDestinationSettings.parse(map['destinationSettings']) unless map['destinationSettings'].nil?)
        data.language_code = map['languageCode']
        data.language_description = map['languageDescription']
        return data
      end
    end

    # Operation Parser for CreateQueue
    class CreateQueue
      def self.parse(http_resp)
        data = Types::CreateQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.queue = (Parsers::Queue.parse(map['queue']) unless map['queue'].nil?)
        data
      end
    end

    class Queue
      def self.parse(map)
        data = Types::Queue.new
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.description = map['description']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        data.name = map['name']
        data.pricing_plan = map['pricingPlan']
        data.progressing_jobs_count = map['progressingJobsCount']
        data.reservation_plan = (Parsers::ReservationPlan.parse(map['reservationPlan']) unless map['reservationPlan'].nil?)
        data.status = map['status']
        data.submitted_jobs_count = map['submittedJobsCount']
        data.type = map['type']
        return data
      end
    end

    class ReservationPlan
      def self.parse(map)
        data = Types::ReservationPlan.new
        data.commitment = map['commitment']
        data.expires_at = Time.at(map['expiresAt'].to_i) if map['expiresAt']
        data.purchased_at = Time.at(map['purchasedAt'].to_i) if map['purchasedAt']
        data.renewal_type = map['renewalType']
        data.reserved_slots = map['reservedSlots']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for DeleteJobTemplate
    class DeleteJobTemplate
      def self.parse(http_resp)
        data = Types::DeleteJobTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePolicy
    class DeletePolicy
      def self.parse(http_resp)
        data = Types::DeletePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePreset
    class DeletePreset
      def self.parse(http_resp)
        data = Types::DeletePresetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteQueue
    class DeleteQueue
      def self.parse(http_resp)
        data = Types::DeleteQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeEndpoints
    class DescribeEndpoints
      def self.parse(http_resp)
        data = Types::DescribeEndpointsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoints = (Parsers::List____listOfEndpoint.parse(map['endpoints']) unless map['endpoints'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfEndpoint
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Endpoint.parse(value) unless value.nil?
        end
        data
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.url = map['url']
        return data
      end
    end

    # Operation Parser for DisassociateCertificate
    class DisassociateCertificate
      def self.parse(http_resp)
        data = Types::DisassociateCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetJob
    class GetJob
      def self.parse(http_resp)
        data = Types::GetJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job = (Parsers::Job.parse(map['job']) unless map['job'].nil?)
        data
      end
    end

    # Operation Parser for GetJobTemplate
    class GetJobTemplate
      def self.parse(http_resp)
        data = Types::GetJobTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_template = (Parsers::JobTemplate.parse(map['jobTemplate']) unless map['jobTemplate'].nil?)
        data
      end
    end

    # Operation Parser for GetPolicy
    class GetPolicy
      def self.parse(http_resp)
        data = Types::GetPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (Parsers::Policy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    class Policy
      def self.parse(map)
        data = Types::Policy.new
        data.http_inputs = map['httpInputs']
        data.https_inputs = map['httpsInputs']
        data.s3_inputs = map['s3Inputs']
        return data
      end
    end

    # Operation Parser for GetPreset
    class GetPreset
      def self.parse(http_resp)
        data = Types::GetPresetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.preset = (Parsers::Preset.parse(map['preset']) unless map['preset'].nil?)
        data
      end
    end

    # Operation Parser for GetQueue
    class GetQueue
      def self.parse(http_resp)
        data = Types::GetQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.queue = (Parsers::Queue.parse(map['queue']) unless map['queue'].nil?)
        data
      end
    end

    # Operation Parser for ListJobTemplates
    class ListJobTemplates
      def self.parse(http_resp)
        data = Types::ListJobTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_templates = (Parsers::List____listOfJobTemplate.parse(map['jobTemplates']) unless map['jobTemplates'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfJobTemplate
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobTemplate.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (Parsers::List____listOfJob.parse(map['jobs']) unless map['jobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfJob
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Job.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPresets
    class ListPresets
      def self.parse(http_resp)
        data = Types::ListPresetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.presets = (Parsers::List____listOfPreset.parse(map['presets']) unless map['presets'].nil?)
        data
      end
    end

    class List____listOfPreset
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Preset.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListQueues
    class ListQueues
      def self.parse(http_resp)
        data = Types::ListQueuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.queues = (Parsers::List____listOfQueue.parse(map['queues']) unless map['queues'].nil?)
        data
      end
    end

    class List____listOfQueue
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Queue.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_tags = (Parsers::ResourceTags.parse(map['resourceTags']) unless map['resourceTags'].nil?)
        data
      end
    end

    class ResourceTags
      def self.parse(map)
        data = Types::ResourceTags.new
        data.arn = map['arn']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for PutPolicy
    class PutPolicy
      def self.parse(http_resp)
        data = Types::PutPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (Parsers::Policy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateJobTemplate
    class UpdateJobTemplate
      def self.parse(http_resp)
        data = Types::UpdateJobTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_template = (Parsers::JobTemplate.parse(map['jobTemplate']) unless map['jobTemplate'].nil?)
        data
      end
    end

    # Operation Parser for UpdatePreset
    class UpdatePreset
      def self.parse(http_resp)
        data = Types::UpdatePresetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.preset = (Parsers::Preset.parse(map['preset']) unless map['preset'].nil?)
        data
      end
    end

    # Operation Parser for UpdateQueue
    class UpdateQueue
      def self.parse(http_resp)
        data = Types::UpdateQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.queue = (Parsers::Queue.parse(map['queue']) unless map['queue'].nil?)
        data
      end
    end
  end
end
