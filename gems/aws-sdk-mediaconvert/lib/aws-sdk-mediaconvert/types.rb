# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaConvert
  module Types

    # Includes enum constants for AacAudioDescriptionBroadcasterMix
    #
    module AacAudioDescriptionBroadcasterMix
      # No documentation available.
      #
      BROADCASTER_MIXED_AD = "BROADCASTER_MIXED_AD"

      # No documentation available.
      #
      NORMAL = "NORMAL"
    end

    # Includes enum constants for AacCodecProfile
    #
    module AacCodecProfile
      # No documentation available.
      #
      LC = "LC"

      # No documentation available.
      #
      HEV1 = "HEV1"

      # No documentation available.
      #
      HEV2 = "HEV2"
    end

    # Includes enum constants for AacCodingMode
    #
    module AacCodingMode
      # No documentation available.
      #
      AD_RECEIVER_MIX = "AD_RECEIVER_MIX"

      # No documentation available.
      #
      CODING_MODE_1_0 = "CODING_MODE_1_0"

      # No documentation available.
      #
      CODING_MODE_1_1 = "CODING_MODE_1_1"

      # No documentation available.
      #
      CODING_MODE_2_0 = "CODING_MODE_2_0"

      # No documentation available.
      #
      CODING_MODE_5_1 = "CODING_MODE_5_1"
    end

    # Includes enum constants for AacRateControlMode
    #
    module AacRateControlMode
      # No documentation available.
      #
      CBR = "CBR"

      # No documentation available.
      #
      VBR = "VBR"
    end

    # Includes enum constants for AacRawFormat
    #
    module AacRawFormat
      # No documentation available.
      #
      LATM_LOAS = "LATM_LOAS"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode (rateControlMode) to "VBR" or "CBR".  In VBR mode, you control the audio quality with the setting VBR quality (vbrQuality). In CBR mode, you use the setting Bitrate (bitrate). Defaults and valid values depend on the rate control mode.
    #
    # @!attribute audio_description_broadcaster_mix
    #   Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.
    #
    #   Enum, one of: ["BROADCASTER_MIXED_AD", "NORMAL"]
    #
    #   @return [String]
    #
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. The set of valid values for this setting is: 6000, 8000, 10000, 12000, 14000, 16000, 20000, 24000, 28000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 384000, 448000, 512000, 576000, 640000, 768000, 896000, 1024000. The value you set is also constrained by the values that you choose for Profile (codecProfile), Bitrate control mode (codingMode), and Sample rate (sampleRate). Default values depend on Bitrate control mode and Profile.
    #
    #   @return [Integer]
    #
    # @!attribute codec_profile
    #   AAC Profile.
    #
    #   Enum, one of: ["LC", "HEV1", "HEV2"]
    #
    #   @return [String]
    #
    # @!attribute coding_mode
    #   Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. "1.0 - Audio Description (Receiver Mix)" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
    #
    #   Enum, one of: ["AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"]
    #
    #   @return [String]
    #
    # @!attribute rate_control_mode
    #   Rate Control Mode.
    #
    #   Enum, one of: ["CBR", "VBR"]
    #
    #   @return [String]
    #
    # @!attribute raw_format
    #   Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose "No container" for the output container.
    #
    #   Enum, one of: ["LATM_LOAS", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   Sample rate in Hz. Valid values depend on rate control mode and profile.
    #
    #   @return [Integer]
    #
    # @!attribute specification
    #   Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
    #
    #   Enum, one of: ["MPEG2", "MPEG4"]
    #
    #   @return [String]
    #
    # @!attribute vbr_quality
    #   VBR Quality Level - Only used if rate_control_mode is VBR.
    #
    #   Enum, one of: ["LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"]
    #
    #   @return [String]
    #
    AacSettings = ::Struct.new(
      :audio_description_broadcaster_mix,
      :bitrate,
      :codec_profile,
      :coding_mode,
      :rate_control_mode,
      :raw_format,
      :sample_rate,
      :specification,
      :vbr_quality,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.sample_rate ||= 0
      end
    end

    # Includes enum constants for AacSpecification
    #
    module AacSpecification
      # No documentation available.
      #
      MPEG2 = "MPEG2"

      # No documentation available.
      #
      MPEG4 = "MPEG4"
    end

    # Includes enum constants for AacVbrQuality
    #
    module AacVbrQuality
      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM_LOW = "MEDIUM_LOW"

      # No documentation available.
      #
      MEDIUM_HIGH = "MEDIUM_HIGH"

      # No documentation available.
      #
      HIGH = "HIGH"
    end

    # Includes enum constants for Ac3BitstreamMode
    #
    module Ac3BitstreamMode
      # No documentation available.
      #
      COMPLETE_MAIN = "COMPLETE_MAIN"

      # No documentation available.
      #
      COMMENTARY = "COMMENTARY"

      # No documentation available.
      #
      DIALOGUE = "DIALOGUE"

      # No documentation available.
      #
      EMERGENCY = "EMERGENCY"

      # No documentation available.
      #
      HEARING_IMPAIRED = "HEARING_IMPAIRED"

      # No documentation available.
      #
      MUSIC_AND_EFFECTS = "MUSIC_AND_EFFECTS"

      # No documentation available.
      #
      VISUALLY_IMPAIRED = "VISUALLY_IMPAIRED"

      # No documentation available.
      #
      VOICE_OVER = "VOICE_OVER"
    end

    # Includes enum constants for Ac3CodingMode
    #
    module Ac3CodingMode
      # No documentation available.
      #
      CODING_MODE_1_0 = "CODING_MODE_1_0"

      # No documentation available.
      #
      CODING_MODE_1_1 = "CODING_MODE_1_1"

      # No documentation available.
      #
      CODING_MODE_2_0 = "CODING_MODE_2_0"

      # No documentation available.
      #
      CODING_MODE_3_2_LFE = "CODING_MODE_3_2_LFE"
    end

    # Includes enum constants for Ac3DynamicRangeCompressionLine
    #
    module Ac3DynamicRangeCompressionLine
      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      FILM_LIGHT = "FILM_LIGHT"

      # No documentation available.
      #
      MUSIC_STANDARD = "MUSIC_STANDARD"

      # No documentation available.
      #
      MUSIC_LIGHT = "MUSIC_LIGHT"

      # No documentation available.
      #
      SPEECH = "SPEECH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for Ac3DynamicRangeCompressionProfile
    #
    module Ac3DynamicRangeCompressionProfile
      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for Ac3DynamicRangeCompressionRf
    #
    module Ac3DynamicRangeCompressionRf
      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      FILM_LIGHT = "FILM_LIGHT"

      # No documentation available.
      #
      MUSIC_STANDARD = "MUSIC_STANDARD"

      # No documentation available.
      #
      MUSIC_LIGHT = "MUSIC_LIGHT"

      # No documentation available.
      #
      SPEECH = "SPEECH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for Ac3LfeFilter
    #
    module Ac3LfeFilter
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for Ac3MetadataControl
    #
    module Ac3MetadataControl
      # No documentation available.
      #
      FOLLOW_INPUT = "FOLLOW_INPUT"

      # No documentation available.
      #
      USE_CONFIGURED = "USE_CONFIGURED"
    end

    # Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3.
    #
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. Valid bitrates depend on the coding mode.
    #
    #   @return [Integer]
    #
    # @!attribute bitstream_mode
    #   Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E).
    #
    #   Enum, one of: ["COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"]
    #
    #   @return [String]
    #
    # @!attribute coding_mode
    #   Dolby Digital coding mode. Determines number of channels.
    #
    #   Enum, one of: ["CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"]
    #
    #   @return [String]
    #
    # @!attribute dialnorm
    #   Sets the dialnorm for the output. If blank and input audio is Dolby Digital, dialnorm will be passed through.
    #
    #   @return [Integer]
    #
    # @!attribute dynamic_range_compression_line
    #   Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #
    #   Enum, one of: ["FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute dynamic_range_compression_profile
    #   When you want to add Dolby dynamic range compression (DRC) signaling to your output stream, we recommend that you use the mode-specific settings instead of Dynamic range compression profile (DynamicRangeCompressionProfile). The mode-specific settings are Dynamic range compression profile, line mode (dynamicRangeCompressionLine) and Dynamic range compression profile, RF mode (dynamicRangeCompressionRf). Note that when you specify values for all three settings, MediaConvert ignores the value of this setting in favor of the mode-specific settings. If you do use this setting instead of the mode-specific settings, choose None (NONE) to leave out DRC signaling. Keep the default Film standard (FILM_STANDARD) to set the profile to Dolby's film standard profile for all operating modes.
    #
    #   Enum, one of: ["FILM_STANDARD", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute dynamic_range_compression_rf
    #   Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #
    #   Enum, one of: ["FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute lfe_filter
    #   Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute metadata_control
    #   When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    #
    #   Enum, one of: ["FOLLOW_INPUT", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   This value is always 48000. It represents the sample rate in Hz.
    #
    #   @return [Integer]
    #
    Ac3Settings = ::Struct.new(
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dialnorm,
      :dynamic_range_compression_line,
      :dynamic_range_compression_profile,
      :dynamic_range_compression_rf,
      :lfe_filter,
      :metadata_control,
      :sample_rate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.dialnorm ||= 0
        self.sample_rate ||= 0
      end
    end

    # Includes enum constants for AccelerationMode
    #
    module AccelerationMode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      PREFERRED = "PREFERRED"
    end

    # Accelerated transcoding can significantly speed up jobs with long, visually complex content.
    #
    # @!attribute mode
    #   Specify the conditions when the service will run your job with accelerated transcoding.
    #
    #   Enum, one of: ["DISABLED", "ENABLED", "PREFERRED"]
    #
    #   @return [String]
    #
    AccelerationSettings = ::Struct.new(
      :mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccelerationStatus
    #
    module AccelerationStatus
      # No documentation available.
      #
      NOT_APPLICABLE = "NOT_APPLICABLE"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      ACCELERATED = "ACCELERATED"

      # No documentation available.
      #
      NOT_ACCELERATED = "NOT_ACCELERATED"
    end

    # Includes enum constants for AfdSignaling
    #
    module AfdSignaling
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      FIXED = "FIXED"
    end

    # Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF.
    #
    # @!attribute bit_depth
    #   Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
    #
    #   @return [Integer]
    #
    # @!attribute channels
    #   Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64.
    #
    #   @return [Integer]
    #
    # @!attribute sample_rate
    #   Sample rate in hz.
    #
    #   @return [Integer]
    #
    AiffSettings = ::Struct.new(
      :bit_depth,
      :channels,
      :sample_rate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bit_depth ||= 0
        self.channels ||= 0
        self.sample_rate ||= 0
      end
    end

    # Use Allowed renditions to specify a list of possible resolutions in your ABR stack. * MediaConvert will create an ABR stack exclusively from the list of resolutions that you specify. * Some resolutions in the Allowed renditions list may not be included, however you can force a resolution to be included by setting Required to ENABLED. * You must specify at least one resolution that is greater than or equal to any resolutions that you specify in Min top rendition size or Min bottom rendition size. * If you specify Allowed renditions, you must not specify a separate rule for Force include renditions.
    #
    # @!attribute height
    #   Use Height to define the video resolution height, in pixels, for this rule.
    #
    #   @return [Integer]
    #
    # @!attribute required
    #   Set to ENABLED to force a rendition to be included.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute width
    #   Use Width to define the video resolution width, in pixels, for this rule.
    #
    #   @return [Integer]
    #
    AllowedRenditionSize = ::Struct.new(
      :height,
      :required,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.height ||= 0
        self.width ||= 0
      end
    end

    # Includes enum constants for AlphaBehavior
    #
    module AlphaBehavior
      # No documentation available.
      #
      DISCARD = "DISCARD"

      # No documentation available.
      #
      REMAP_TO_LUMA = "REMAP_TO_LUMA"
    end

    # Includes enum constants for AncillaryConvert608To708
    #
    module AncillaryConvert608To708
      # No documentation available.
      #
      UPCONVERT = "UPCONVERT"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Settings for ancillary captions source.
    #
    # @!attribute convert608_to708
    #   Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
    #
    #   Enum, one of: ["UPCONVERT", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute source_ancillary_channel_number
    #   Specifies the 608 channel number in the ancillary data track from which to extract captions. Unused for passthrough.
    #
    #   @return [Integer]
    #
    # @!attribute terminate_captions
    #   By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting.
    #
    #   Enum, one of: ["END_OF_INPUT", "DISABLED"]
    #
    #   @return [String]
    #
    AncillarySourceSettings = ::Struct.new(
      :convert608_to708,
      :source_ancillary_channel_number,
      :terminate_captions,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.source_ancillary_channel_number ||= 0
      end
    end

    # Includes enum constants for AncillaryTerminateCaptions
    #
    module AncillaryTerminateCaptions
      # No documentation available.
      #
      END_OF_INPUT = "END_OF_INPUT"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for AntiAlias
    #
    module AntiAlias
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # @!attribute arn
    #   The ARN of the ACM certificate that you want to associate with your MediaConvert resource.
    #
    #   @return [String]
    #
    AssociateCertificateInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioChannelTag
    #
    module AudioChannelTag
      # No documentation available.
      #
      L = "L"

      # No documentation available.
      #
      R = "R"

      # No documentation available.
      #
      C = "C"

      # No documentation available.
      #
      LFE = "LFE"

      # No documentation available.
      #
      LS = "LS"

      # No documentation available.
      #
      RS = "RS"

      # No documentation available.
      #
      LC = "LC"

      # No documentation available.
      #
      RC = "RC"

      # No documentation available.
      #
      CS = "CS"

      # No documentation available.
      #
      LSD = "LSD"

      # No documentation available.
      #
      RSD = "RSD"

      # No documentation available.
      #
      TCS = "TCS"

      # No documentation available.
      #
      VHL = "VHL"

      # No documentation available.
      #
      VHC = "VHC"

      # No documentation available.
      #
      VHR = "VHR"
    end

    # When you mimic a multi-channel audio layout with multiple mono-channel tracks, you can tag each channel layout manually. For example, you would tag the tracks that contain your left, right, and center audio with Left (L), Right (R), and Center (C), respectively. When you don't specify a value, MediaConvert labels your track as Center (C) by default. To use audio layout tagging, your output must be in a QuickTime (.mov) container; your audio codec must be AAC, WAV, or AIFF; and you must set up your audio track to have only one channel.
    #
    # @!attribute channel_tag
    #   You can add a tag for this mono-channel audio track to mimic its placement in a multi-channel layout.  For example, if this track is the left surround channel, choose Left surround (LS).
    #
    #   Enum, one of: ["L", "R", "C", "LFE", "LS", "RS", "LC", "RC", "CS", "LSD", "RSD", "TCS", "VHL", "VHC", "VHR"]
    #
    #   @return [String]
    #
    AudioChannelTaggingSettings = ::Struct.new(
      :channel_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioCodec
    #
    module AudioCodec
      # No documentation available.
      #
      AAC = "AAC"

      # No documentation available.
      #
      MP2 = "MP2"

      # No documentation available.
      #
      MP3 = "MP3"

      # No documentation available.
      #
      WAV = "WAV"

      # No documentation available.
      #
      AIFF = "AIFF"

      # No documentation available.
      #
      AC3 = "AC3"

      # No documentation available.
      #
      EAC3 = "EAC3"

      # No documentation available.
      #
      EAC3_ATMOS = "EAC3_ATMOS"

      # No documentation available.
      #
      VORBIS = "VORBIS"

      # No documentation available.
      #
      OPUS = "OPUS"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Settings related to audio encoding. The settings in this group vary depending on the value that you choose for your audio codec.
    #
    # @!attribute aac_settings
    #   Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode (rateControlMode) to "VBR" or "CBR".  In VBR mode, you control the audio quality with the setting VBR quality (vbrQuality). In CBR mode, you use the setting Bitrate (bitrate). Defaults and valid values depend on the rate control mode.
    #
    #   @return [AacSettings]
    #
    # @!attribute ac3_settings
    #   Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3.
    #
    #   @return [Ac3Settings]
    #
    # @!attribute aiff_settings
    #   Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF.
    #
    #   @return [AiffSettings]
    #
    # @!attribute codec
    #   Choose the audio codec for this output. Note that the option Dolby Digital passthrough (PASSTHROUGH) applies only to Dolby Digital and Dolby Digital Plus audio inputs. Make sure that you choose a codec that's supported with your output container: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html reference-codecs-containers-output-audio For audio-only outputs, make sure that both your input audio codec and your output audio codec are supported for audio-only workflows. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers-input.html reference-codecs-containers-input-audio-only and https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html audio-only-output
    #
    #   Enum, one of: ["AAC", "MP2", "MP3", "WAV", "AIFF", "AC3", "EAC3", "EAC3_ATMOS", "VORBIS", "OPUS", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute eac3_atmos_settings
    #   Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3_ATMOS.
    #
    #   @return [Eac3AtmosSettings]
    #
    # @!attribute eac3_settings
    #   Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3.
    #
    #   @return [Eac3Settings]
    #
    # @!attribute mp2_settings
    #   Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2.
    #
    #   @return [Mp2Settings]
    #
    # @!attribute mp3_settings
    #   Required when you set Codec, under AudioDescriptions>CodecSettings, to the value MP3.
    #
    #   @return [Mp3Settings]
    #
    # @!attribute opus_settings
    #   Required when you set Codec, under AudioDescriptions>CodecSettings, to the value OPUS.
    #
    #   @return [OpusSettings]
    #
    # @!attribute vorbis_settings
    #   Required when you set Codec, under AudioDescriptions>CodecSettings, to the value Vorbis.
    #
    #   @return [VorbisSettings]
    #
    # @!attribute wav_settings
    #   Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV.
    #
    #   @return [WavSettings]
    #
    AudioCodecSettings = ::Struct.new(
      :aac_settings,
      :ac3_settings,
      :aiff_settings,
      :codec,
      :eac3_atmos_settings,
      :eac3_settings,
      :mp2_settings,
      :mp3_settings,
      :opus_settings,
      :vorbis_settings,
      :wav_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioDefaultSelection
    #
    module AudioDefaultSelection
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      NOT_DEFAULT = "NOT_DEFAULT"
    end

    # Settings related to one audio tab on the MediaConvert console. In your job JSON, an instance of AudioDescription is equivalent to one audio tab in the console. Usually, one audio tab corresponds to one output audio track. Depending on how you set up your input audio selectors and whether you use audio selector groups, one audio tab can correspond to a group of output audio tracks.
    #
    # @!attribute audio_channel_tagging_settings
    #   When you mimic a multi-channel audio layout with multiple mono-channel tracks, you can tag each channel layout manually. For example, you would tag the tracks that contain your left, right, and center audio with Left (L), Right (R), and Center (C), respectively. When you don't specify a value, MediaConvert labels your track as Center (C) by default. To use audio layout tagging, your output must be in a QuickTime (.mov) container; your audio codec must be AAC, WAV, or AIFF; and you must set up your audio track to have only one channel.
    #
    #   @return [AudioChannelTaggingSettings]
    #
    # @!attribute audio_normalization_settings
    #   Advanced audio normalization settings. Ignore these settings unless you need to comply with a loudness standard.
    #
    #   @return [AudioNormalizationSettings]
    #
    # @!attribute audio_source_name
    #   Specifies which audio data to use from each input. In the simplest case, specify an "Audio Selector": inputs-audio_selector by name based on its order within each input. For example if you specify "Audio Selector 3", then the third audio selector will be used from each input. If an input does not have an "Audio Selector 3", then the audio selector marked as "default" in that input will be used. If there is no audio selector marked as "default", silence will be inserted for the duration of that input. Alternatively, an "Audio Selector Group": inputs-audio_selector_group name may be specified, with similar default/silence behavior. If no audio_source_name is specified, then "Audio Selector 1" will be chosen automatically.
    #
    #   @return [String]
    #
    # @!attribute audio_type
    #   Applies only if Follow Input Audio Type is unchecked (false). A number between 0 and 255. The following are defined in ISO-IEC 13818-1: 0 = Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 = Visually Impaired Commentary, 4-255 = Reserved.
    #
    #   @return [Integer]
    #
    # @!attribute audio_type_control
    #   When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.
    #
    #   Enum, one of: ["FOLLOW_INPUT", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute codec_settings
    #   Settings related to audio encoding. The settings in this group vary depending on the value that you choose for your audio codec.
    #
    #   @return [AudioCodecSettings]
    #
    # @!attribute custom_language_code
    #   Specify the language for this audio output track. The service puts this language code into your output audio track when you set Language code control (AudioLanguageCodeControl) to Use configured (USE_CONFIGURED). The service also uses your specified custom language code when you set Language code control (AudioLanguageCodeControl) to Follow input (FOLLOW_INPUT), but your input file doesn't specify a language code. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming.
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   Indicates the language of the audio output track. The ISO 639 language specified in the 'Language Code' drop down will be used when 'Follow Input Language Code' is not selected or when 'Follow Input Language Code' is selected but there is no ISO 639 language code specified by the input.
    #
    #   Enum, one of: ["ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"]
    #
    #   @return [String]
    #
    # @!attribute language_code_control
    #   Specify which source for language code takes precedence for this audio track. When you choose Follow input (FOLLOW_INPUT), the service uses the language code from the input track if it's present. If there's no languge code on the input track, the service uses the code that you specify in the setting Language code (languageCode or customLanguageCode). When you choose Use configured (USE_CONFIGURED), the service uses the language code that you specify.
    #
    #   Enum, one of: ["FOLLOW_INPUT", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute remix_settings
    #   Advanced audio remixing settings.
    #
    #   @return [RemixSettings]
    #
    # @!attribute stream_name
    #   Specify a label for this output audio stream. For example, "English", "Director commentary", or "track_2". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting.
    #
    #   @return [String]
    #
    AudioDescription = ::Struct.new(
      :audio_channel_tagging_settings,
      :audio_normalization_settings,
      :audio_source_name,
      :audio_type,
      :audio_type_control,
      :codec_settings,
      :custom_language_code,
      :language_code,
      :language_code_control,
      :remix_settings,
      :stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.audio_type ||= 0
      end
    end

    # Includes enum constants for AudioLanguageCodeControl
    #
    module AudioLanguageCodeControl
      # No documentation available.
      #
      FOLLOW_INPUT = "FOLLOW_INPUT"

      # No documentation available.
      #
      USE_CONFIGURED = "USE_CONFIGURED"
    end

    # Includes enum constants for AudioNormalizationAlgorithm
    #
    module AudioNormalizationAlgorithm
      # No documentation available.
      #
      ITU_BS_1770_1 = "ITU_BS_1770_1"

      # No documentation available.
      #
      ITU_BS_1770_2 = "ITU_BS_1770_2"

      # No documentation available.
      #
      ITU_BS_1770_3 = "ITU_BS_1770_3"

      # No documentation available.
      #
      ITU_BS_1770_4 = "ITU_BS_1770_4"
    end

    # Includes enum constants for AudioNormalizationAlgorithmControl
    #
    module AudioNormalizationAlgorithmControl
      # No documentation available.
      #
      CORRECT_AUDIO = "CORRECT_AUDIO"

      # No documentation available.
      #
      MEASURE_ONLY = "MEASURE_ONLY"
    end

    # Includes enum constants for AudioNormalizationLoudnessLogging
    #
    module AudioNormalizationLoudnessLogging
      # No documentation available.
      #
      LOG = "LOG"

      # No documentation available.
      #
      DONT_LOG = "DONT_LOG"
    end

    # Includes enum constants for AudioNormalizationPeakCalculation
    #
    module AudioNormalizationPeakCalculation
      # No documentation available.
      #
      TRUE_PEAK = "TRUE_PEAK"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Advanced audio normalization settings. Ignore these settings unless you need to comply with a loudness standard.
    #
    # @!attribute algorithm
    #   Choose one of the following audio normalization algorithms: ITU-R BS.1770-1: Ungated loudness. A measurement of ungated average loudness for an entire piece of content, suitable for measurement of short-form content under ATSC recommendation A/85. Supports up to 5.1 audio channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated average loudness compliant with the requirements of EBU-R128. Supports up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same loudness measurement algorithm as 1770-2, with an updated true peak measurement. ITU-R BS.1770-4: Higher channel count. Allows for more audio channels than the other algorithms, including configurations such as 7.1.
    #
    #   Enum, one of: ["ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"]
    #
    #   @return [String]
    #
    # @!attribute algorithm_control
    #   When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted.
    #
    #   Enum, one of: ["CORRECT_AUDIO", "MEASURE_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute correction_gate_level
    #   Content measuring above this level will be corrected to the target level. Content measuring below this level will not be corrected.
    #
    #   @return [Integer]
    #
    # @!attribute loudness_logging
    #   If set to LOG, log each output's audio track loudness to a CSV file.
    #
    #   Enum, one of: ["LOG", "DONT_LOG"]
    #
    #   @return [String]
    #
    # @!attribute peak_calculation
    #   If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness.
    #
    #   Enum, one of: ["TRUE_PEAK", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute target_lkfs
    #   When you use Audio normalization (AudioNormalizationSettings), optionally use this setting to specify a target loudness. If you don't specify a value here, the encoder chooses a value for you, based on the algorithm that you choose for Algorithm (algorithm). If you choose algorithm 1770-1, the encoder will choose -24 LKFS; otherwise, the encoder will choose -23 LKFS.
    #
    #   @return [Float]
    #
    AudioNormalizationSettings = ::Struct.new(
      :algorithm,
      :algorithm_control,
      :correction_gate_level,
      :loudness_logging,
      :peak_calculation,
      :target_lkfs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.correction_gate_level ||= 0
        self.target_lkfs ||= 0
      end
    end

    # Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input.
    #
    # @!attribute custom_language_code
    #   Selects a specific language code from within an audio source, using the ISO 639-2 or ISO 639-3 three-letter language code
    #
    #   @return [String]
    #
    # @!attribute default_selection
    #   Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio.
    #
    #   Enum, one of: ["DEFAULT", "NOT_DEFAULT"]
    #
    #   @return [String]
    #
    # @!attribute external_audio_file_input
    #   Specifies audio data from an external file source.
    #
    #   @return [String]
    #
    # @!attribute hls_rendition_group_settings
    #   Settings specific to audio sources in an HLS alternate rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique audio track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the properties provided, the job fails. If no properties in hlsRenditionGroupSettings are specified, the default audio track within the video segment is chosen. If there is no audio within video segment, the alternative audio with DEFAULT=YES is chosen instead.
    #
    #   @return [HlsRenditionGroupSettings]
    #
    # @!attribute language_code
    #   Selects a specific language code from within an audio source.
    #
    #   Enum, one of: ["ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"]
    #
    #   @return [String]
    #
    # @!attribute offset
    #   Specifies a time delta in milliseconds to offset the audio from the input video.
    #
    #   @return [Integer]
    #
    # @!attribute pids
    #   Selects a specific PID from within an audio source (e.g. 257 selects PID 0x101).
    #
    #   @return [Array<Integer>]
    #
    # @!attribute program_selection
    #   Use this setting for input streams that contain Dolby E, to have the service extract specific program data from the track. To select multiple programs, create multiple selectors with the same Track and different Program numbers. In the console, this setting is visible when you set Selector type to Track. Choose the program number from the dropdown list. If you are sending a JSON file, provide the program ID, which is part of the audio metadata. If your input file has incorrect metadata, you can choose All channels instead of a program number to have the service ignore the program IDs and include all the programs in the track.
    #
    #   @return [Integer]
    #
    # @!attribute remix_settings
    #   Use these settings to reorder the audio channels of one input to match those of another input. This allows you to combine the two files into a single output, one after the other.
    #
    #   @return [RemixSettings]
    #
    # @!attribute selector_type
    #   Specifies the type of the audio selector.
    #
    #   Enum, one of: ["PID", "TRACK", "LANGUAGE_CODE", "HLS_RENDITION_GROUP"]
    #
    #   @return [String]
    #
    # @!attribute tracks
    #   Identify a track from the input audio to include in this selector by entering the track index number. To include several tracks in a single audio selector, specify multiple tracks as follows. Using the console, enter a comma-separated list. For examle, type "1,2,3" to include tracks 1 through 3. Specifying directly in your JSON job file, provide the track numbers in an array. For example, "tracks": [1,2,3].
    #
    #   @return [Array<Integer>]
    #
    AudioSelector = ::Struct.new(
      :custom_language_code,
      :default_selection,
      :external_audio_file_input,
      :hls_rendition_group_settings,
      :language_code,
      :offset,
      :pids,
      :program_selection,
      :remix_settings,
      :selector_type,
      :tracks,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.offset ||= 0
        self.program_selection ||= 0
      end
    end

    # Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab (AudioDescription). Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group.
    #
    # @!attribute audio_selector_names
    #   Name of an Audio Selector within the same input to include in the group.  Audio selector names are standardized, based on their order within the input (e.g., "Audio Selector 1"). The audio selector name parameter can be repeated to add any number of audio selectors to the group.
    #
    #   @return [Array<String>]
    #
    AudioSelectorGroup = ::Struct.new(
      :audio_selector_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioSelectorType
    #
    module AudioSelectorType
      # No documentation available.
      #
      PID = "PID"

      # No documentation available.
      #
      TRACK = "TRACK"

      # No documentation available.
      #
      LANGUAGE_CODE = "LANGUAGE_CODE"

      # No documentation available.
      #
      HLS_RENDITION_GROUP = "HLS_RENDITION_GROUP"
    end

    # Includes enum constants for AudioTypeControl
    #
    module AudioTypeControl
      # No documentation available.
      #
      FOLLOW_INPUT = "FOLLOW_INPUT"

      # No documentation available.
      #
      USE_CONFIGURED = "USE_CONFIGURED"
    end

    # Specify one or more Automated ABR rule types. Note: Force include and Allowed renditions are mutually exclusive.
    #
    # @!attribute allowed_renditions
    #   When customer adds the allowed renditions rule for auto ABR ladder, they are required to add at leat one rendition to allowedRenditions list
    #
    #   @return [Array<AllowedRenditionSize>]
    #
    # @!attribute force_include_renditions
    #   When customer adds the force include renditions rule for auto ABR ladder, they are required to add at leat one rendition to forceIncludeRenditions list
    #
    #   @return [Array<ForceIncludeRenditionSize>]
    #
    # @!attribute min_bottom_rendition_size
    #   Use Min bottom rendition size to specify a minimum size for the lowest resolution in your ABR stack. * The lowest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 640x360 the lowest resolution in your ABR stack will be equal to or greater than to 640x360. * If you specify a Min top rendition size rule, the value that you specify for Min bottom rendition size must be less than, or equal to, Min top rendition size.
    #
    #   @return [MinBottomRenditionSize]
    #
    # @!attribute min_top_rendition_size
    #   Use Min top rendition size to specify a minimum size for the highest resolution in your ABR stack. * The highest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 1280x720 the highest resolution in your ABR stack will be equal to or greater than 1280x720. * If you specify a value for Max resolution, the value that you specify for Min top rendition size must be less than, or equal to, Max resolution.
    #
    #   @return [MinTopRenditionSize]
    #
    # @!attribute type
    #   Use Min top rendition size to specify a minimum size for the highest resolution in your ABR stack. * The highest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 1280x720 the highest resolution in your ABR stack will be equal to or greater than 1280x720. * If you specify a value for Max resolution, the value that you specify for Min top rendition size must be less than, or equal to, Max resolution. Use Min bottom rendition size to specify a minimum size for the lowest resolution in your ABR stack. * The lowest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 640x360 the lowest resolution in your ABR stack will be equal to or greater than to 640x360. * If you specify a Min top rendition size rule, the value that you specify for Min bottom rendition size must be less than, or equal to, Min top rendition size. Use Force include renditions to specify one or more resolutions to include your ABR stack. * (Recommended) To optimize automated ABR, specify as few resolutions as possible. * (Required) The number of resolutions that you specify must be equal to, or less than, the Max renditions setting. * If you specify a Min top rendition size rule, specify at least one resolution that is equal to, or greater than, Min top rendition size. * If you specify a Min bottom rendition size rule, only specify resolutions that are equal to, or greater than, Min bottom rendition size. * If you specify a Force include renditions rule, do not specify a separate rule for Allowed renditions. * Note: The ABR stack may include other resolutions that you do not specify here, depending on the Max renditions setting. Use Allowed renditions to specify a list of possible resolutions in your ABR stack. * (Required) The number of resolutions that you specify must be equal to, or greater than, the Max renditions setting. * MediaConvert will create an ABR stack exclusively from the list of resolutions that you specify. * Some resolutions in the Allowed renditions list may not be included, however you can force a resolution to be included by setting Required to ENABLED. * You must specify at least one resolution that is greater than or equal to any resolutions that you specify in Min top rendition size or Min bottom rendition size. * If you specify Allowed renditions, you must not specify a separate rule for Force include renditions.
    #
    #   Enum, one of: ["MIN_TOP_RENDITION_SIZE", "MIN_BOTTOM_RENDITION_SIZE", "FORCE_INCLUDE_RENDITIONS", "ALLOWED_RENDITIONS"]
    #
    #   @return [String]
    #
    AutomatedAbrRule = ::Struct.new(
      :allowed_renditions,
      :force_include_renditions,
      :min_bottom_rendition_size,
      :min_top_rendition_size,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Use automated ABR to have MediaConvert set up the renditions in your ABR package for you automatically, based on characteristics of your input video. This feature optimizes video quality while minimizing the overall size of your ABR package.
    #
    # @!attribute max_abr_bitrate
    #   Optional. The maximum target bit rate used in your automated ABR stack. Use this value to set an upper limit on the bandwidth consumed by the highest-quality rendition. This is the rendition that is delivered to viewers with the fastest internet connections. If you don't specify a value, MediaConvert uses 8,000,000 (8 mb/s) by default.
    #
    #   @return [Integer]
    #
    # @!attribute max_renditions
    #   Optional. The maximum number of renditions that MediaConvert will create in your automated ABR stack. The number of renditions is determined automatically, based on analysis of each job, but will never exceed this limit. When you set this to Auto in the console, which is equivalent to excluding it from your JSON job specification, MediaConvert defaults to a limit of 15.
    #
    #   @return [Integer]
    #
    # @!attribute min_abr_bitrate
    #   Optional. The minimum target bitrate used in your automated ABR stack. Use this value to set a lower limit on the bitrate of video delivered to viewers with slow internet connections. If you don't specify a value, MediaConvert uses 600,000 (600 kb/s) by default.
    #
    #   @return [Integer]
    #
    # @!attribute rules
    #   Optional. Use Automated ABR rules to specify restrictions for the rendition sizes MediaConvert will create in your ABR stack. You can use these rules if your ABR workflow has specific rendition size requirements, but you still want MediaConvert to optimize for video quality and overall file size.
    #
    #   @return [Array<AutomatedAbrRule>]
    #
    AutomatedAbrSettings = ::Struct.new(
      :max_abr_bitrate,
      :max_renditions,
      :min_abr_bitrate,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_abr_bitrate ||= 0
        self.max_renditions ||= 0
        self.min_abr_bitrate ||= 0
      end
    end

    # Use automated encoding to have MediaConvert choose your encoding settings for you, based on characteristics of your input video.
    #
    # @!attribute abr_settings
    #   Use automated ABR to have MediaConvert set up the renditions in your ABR package for you automatically, based on characteristics of your input video. This feature optimizes video quality while minimizing the overall size of your ABR package.
    #
    #   @return [AutomatedAbrSettings]
    #
    AutomatedEncodingSettings = ::Struct.new(
      :abr_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Av1AdaptiveQuantization
    #
    module Av1AdaptiveQuantization
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      HIGHER = "HIGHER"

      # No documentation available.
      #
      MAX = "MAX"
    end

    # Includes enum constants for Av1BitDepth
    #
    module Av1BitDepth
      # No documentation available.
      #
      BIT_8 = "BIT_8"

      # No documentation available.
      #
      BIT_10 = "BIT_10"
    end

    # Includes enum constants for Av1FramerateControl
    #
    module Av1FramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for Av1FramerateConversionAlgorithm
    #
    module Av1FramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Settings for quality-defined variable bitrate encoding with the AV1 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode).
    #
    # @!attribute qvbr_quality_level
    #   Use this setting only when you set Rate control mode (RateControlMode) to QVBR. Specify the target quality level for this output. MediaConvert determines the right number of bits to use for each part of the video to maintain the video quality that you specify. When you keep the default value, AUTO, MediaConvert picks a quality level for you, based on characteristics of your input video. If you prefer to specify a quality level, specify a number from 1 through 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33.
    #
    #   @return [Integer]
    #
    # @!attribute qvbr_quality_level_fine_tune
    #   Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33.
    #
    #   @return [Float]
    #
    Av1QvbrSettings = ::Struct.new(
      :qvbr_quality_level,
      :qvbr_quality_level_fine_tune,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.qvbr_quality_level ||= 0
        self.qvbr_quality_level_fine_tune ||= 0
      end
    end

    # Includes enum constants for Av1RateControlMode
    #
    module Av1RateControlMode
      # No documentation available.
      #
      QVBR = "QVBR"
    end

    # Required when you set Codec, under VideoDescription>CodecSettings to the value AV1.
    #
    # @!attribute adaptive_quantization
    #   Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to Spatial adaptive quantization (spatialAdaptiveQuantization).
    #
    #   Enum, one of: ["OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"]
    #
    #   @return [String]
    #
    # @!attribute bit_depth
    #   Specify the Bit depth (Av1BitDepth). You can choose 8-bit (BIT_8) or 10-bit (BIT_10).
    #
    #   Enum, one of: ["BIT_8", "BIT_10"]
    #
    #   @return [String]
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute gop_size
    #   Specify the GOP length (keyframe interval) in frames. With AV1, MediaConvert doesn't support GOP length in seconds. This value must be greater than zero and preferably equal to 1 + ((numberBFrames + 1) * x), where x is an integer value.
    #
    #   @return [Float]
    #
    # @!attribute max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
    #
    #   @return [Integer]
    #
    # @!attribute number_b_frames_between_reference_frames
    #   Specify from the number of B-frames, in the range of 0-15. For AV1 encoding, we recommend using 7 or 15. Choose a larger number for a lower bitrate and smaller file size; choose a smaller number for better video quality.
    #
    #   @return [Integer]
    #
    # @!attribute qvbr_settings
    #   Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode).
    #
    #   @return [Av1QvbrSettings]
    #
    # @!attribute rate_control_mode
    #   'With AV1 outputs, for rate control mode, MediaConvert supports only quality-defined variable bitrate (QVBR). You can''t use CBR or VBR.'
    #
    #   Enum, one of: ["QVBR"]
    #
    #   @return [String]
    #
    # @!attribute slices
    #   Specify the number of slices per picture. This value must be 1, 2, 4, 8, 16, or 32. For progressive pictures, this value must be less than or equal to the number of macroblock rows. For interlaced pictures, this value must be less than or equal to half the number of macroblock rows.
    #
    #   @return [Integer]
    #
    # @!attribute spatial_adaptive_quantization
    #   Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    Av1Settings = ::Struct.new(
      :adaptive_quantization,
      :bit_depth,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_size,
      :max_bitrate,
      :number_b_frames_between_reference_frames,
      :qvbr_settings,
      :rate_control_mode,
      :slices,
      :spatial_adaptive_quantization,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.gop_size ||= 0
        self.max_bitrate ||= 0
        self.number_b_frames_between_reference_frames ||= 0
        self.slices ||= 0
      end
    end

    # Includes enum constants for Av1SpatialAdaptiveQuantization
    #
    module Av1SpatialAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Use ad avail blanking settings to specify your output content during SCTE-35 triggered ad avails. You can blank your video or overlay it with an image. MediaConvert also removes any audio and embedded captions during the ad avail. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ad-avail-blanking.html.
    #
    # @!attribute avail_blanking_image
    #   Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported.
    #
    #   @return [String]
    #
    AvailBlanking = ::Struct.new(
      :avail_blanking_image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AvcIntraClass
    #
    module AvcIntraClass
      # No documentation available.
      #
      CLASS_50 = "CLASS_50"

      # No documentation available.
      #
      CLASS_100 = "CLASS_100"

      # No documentation available.
      #
      CLASS_200 = "CLASS_200"

      # No documentation available.
      #
      CLASS_4K_2K = "CLASS_4K_2K"
    end

    # Includes enum constants for AvcIntraFramerateControl
    #
    module AvcIntraFramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for AvcIntraFramerateConversionAlgorithm
    #
    module AvcIntraFramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Includes enum constants for AvcIntraInterlaceMode
    #
    module AvcIntraInterlaceMode
      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"

      # No documentation available.
      #
      TOP_FIELD = "TOP_FIELD"

      # No documentation available.
      #
      BOTTOM_FIELD = "BOTTOM_FIELD"

      # No documentation available.
      #
      FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD"

      # No documentation available.
      #
      FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD"
    end

    # Includes enum constants for AvcIntraScanTypeConversionMode
    #
    module AvcIntraScanTypeConversionMode
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE"
    end

    # Required when you choose AVC-Intra for your output video codec. For more information about the AVC-Intra settings, see the relevant specification. For detailed information about SD and HD in AVC-Intra, see https://ieeexplore.ieee.org/document/7290936. For information about 4K/2K in AVC-Intra, see https://pro-av.panasonic.net/en/avc-ultra/AVC-ULTRAoverview.pdf.
    #
    # @!attribute avc_intra_class
    #   Specify the AVC-Intra class of your output. The AVC-Intra class selection determines the output video bit rate depending on the frame rate of the output. Outputs with higher class values have higher bitrates and improved image quality. Note that for Class 4K/2K, MediaConvert supports only 4:2:2 chroma subsampling.
    #
    #   Enum, one of: ["CLASS_50", "CLASS_100", "CLASS_200", "CLASS_4K_2K"]
    #
    #   @return [String]
    #
    # @!attribute avc_intra_uhd_settings
    #   Optional when you set AVC-Intra class (avcIntraClass) to Class 4K/2K (CLASS_4K_2K). When you set AVC-Intra class to a different value, this object isn't allowed.
    #
    #   @return [AvcIntraUhdSettings]
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #
    #   Enum, one of: ["PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"]
    #
    #   @return [String]
    #
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
    #
    #   Enum, one of: ["INTERLACED", "INTERLACED_OPTIMIZE"]
    #
    #   @return [String]
    #
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #
    #   Enum, one of: ["NONE", "HARD"]
    #
    #   @return [String]
    #
    AvcIntraSettings = ::Struct.new(
      :avc_intra_class,
      :avc_intra_uhd_settings,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :interlace_mode,
      :scan_type_conversion_mode,
      :slow_pal,
      :telecine,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
      end
    end

    # Includes enum constants for AvcIntraSlowPal
    #
    module AvcIntraSlowPal
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for AvcIntraTelecine
    #
    module AvcIntraTelecine
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      HARD = "HARD"
    end

    # Includes enum constants for AvcIntraUhdQualityTuningLevel
    #
    module AvcIntraUhdQualityTuningLevel
      # No documentation available.
      #
      SINGLE_PASS = "SINGLE_PASS"

      # No documentation available.
      #
      MULTI_PASS = "MULTI_PASS"
    end

    # Optional when you set AVC-Intra class (avcIntraClass) to Class 4K/2K (CLASS_4K_2K). When you set AVC-Intra class to a different value, this object isn't allowed.
    #
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level (qualityTuningLevel) to choose how many transcoding passes MediaConvert does with your video. When you choose Multi-pass (MULTI_PASS), your video quality is better and your output bitrate is more accurate. That is, the actual bitrate of your output is closer to the target bitrate defined in the specification. When you choose Single-pass (SINGLE_PASS), your encoding time is faster. The default behavior is Single-pass (SINGLE_PASS).
    #
    #   Enum, one of: ["SINGLE_PASS", "MULTI_PASS"]
    #
    #   @return [String]
    #
    AvcIntraUhdSettings = ::Struct.new(
      :quality_tuning_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The service can't process your request because of a problem in the request. Please check your request form and syntax.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BillingTagsSource
    #
    module BillingTagsSource
      # No documentation available.
      #
      QUEUE = "QUEUE"

      # No documentation available.
      #
      PRESET = "PRESET"

      # No documentation available.
      #
      JOB_TEMPLATE = "JOB_TEMPLATE"

      # No documentation available.
      #
      JOB = "JOB"
    end

    # Includes enum constants for BurnInSubtitleStylePassthrough
    #
    module BurnInSubtitleStylePassthrough
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Burn-in is a captions delivery method, rather than a captions format. Burn-in writes the captions directly on your video frames, replacing pixels of video content with the captions. Set up burn-in captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/burn-in-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to BURN_IN.
    #
    # @!attribute alignment
    #   Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates.
    #
    #   Enum, one of: ["CENTERED", "LEFT", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute apply_font_color
    #   Ignore this setting unless Style passthrough (StylePassthrough) is set to Enabled and Font color (FontColor) set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color (ApplyFontColor) for additional font color controls. When you choose White text only (WHITE_TEXT_ONLY), or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text.
    #
    #   Enum, one of: ["WHITE_TEXT_ONLY", "ALL_TEXT"]
    #
    #   @return [String]
    #
    # @!attribute background_color
    #   Specify the color of the rectangle behind the captions. Leave background color (BackgroundColor) blank and set Style passthrough (StylePassthrough) to enabled to use the background color data from your input captions, if present.
    #
    #   Enum, one of: ["NONE", "BLACK", "WHITE", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute background_opacity
    #   Specify the opacity of the background rectangle. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough (StylePassthrough) is set to enabled, leave blank to pass through the background style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all backgrounds from your output captions.
    #
    #   @return [Integer]
    #
    # @!attribute fallback_font
    #   Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font (FallbackFont) to best match (BEST_MATCH), or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input.
    #
    #   Enum, one of: ["BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"]
    #
    #   @return [String]
    #
    # @!attribute font_color
    #   Specify the color of the burned-in captions text. Leave Font color (FontColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font color data from your input captions, if present.
    #
    #   Enum, one of: ["WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute font_opacity
    #   Specify the opacity of the burned-in captions. 255 is opaque; 0 is transparent.
    #
    #   @return [Integer]
    #
    # @!attribute font_resolution
    #   Specify the Font resolution (FontResolution) in DPI (dots per inch).
    #
    #   @return [Integer]
    #
    # @!attribute font_script
    #   Set Font script (FontScript) to Automatically determined (AUTOMATIC), or leave blank, to automatically determine the font script in your input captions. Otherwise, set to Simplified Chinese (HANS) or Traditional Chinese (HANT) if your input font script uses Simplified or Traditional Chinese.
    #
    #   Enum, one of: ["AUTOMATIC", "HANS", "HANT"]
    #
    #   @return [String]
    #
    # @!attribute font_size
    #   Specify the Font size (FontSize) in pixels. Must be a positive integer. Set to 0, or leave blank, for automatic font size.
    #
    #   @return [Integer]
    #
    # @!attribute hex_font_color
    #   Ignore this setting unless your Font color is set to Hex. Enter either six or eight hexidecimal digits, representing red, green, and blue, with two optional extra digits for alpha. For example a value of 1122AABB is a red value of 0x11, a green value of 0x22, a blue value of 0xAA, and an alpha value of 0xBB.
    #
    #   @return [String]
    #
    # @!attribute outline_color
    #   Specify font outline color. Leave Outline color (OutlineColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font outline color data from your input captions, if present.
    #
    #   Enum, one of: ["BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute outline_size
    #   Specify the Outline size (OutlineSize) of the caption text, in pixels. Leave Outline size blank and set Style passthrough (StylePassthrough) to enabled to use the outline size data from your input captions, if present.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_color
    #   Specify the color of the shadow cast by the captions. Leave Shadow color (ShadowColor) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow color data from your input captions, if present.
    #
    #   Enum, one of: ["NONE", "BLACK", "WHITE", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute shadow_opacity
    #   Specify the opacity of the shadow. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough (StylePassthrough) is set to Enabled, leave Shadow opacity (ShadowOpacity) blank to pass through the shadow style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all shadows from your output captions.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_x_offset
    #   Specify the horizontal offset of the shadow, relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_y_offset
    #   Specify the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. Leave Shadow y-offset (ShadowYOffset) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow y-offset data from your input captions, if present.
    #
    #   @return [Integer]
    #
    # @!attribute style_passthrough
    #   Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use default settings: white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute teletext_spacing
    #   Specify whether the text spacing (TeletextSpacing) in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid (FIXED_GRID) to conform to the spacing specified in the captions file more accurately. Choose proportional (PROPORTIONAL) to make the text easier to read for closed captions.
    #
    #   Enum, one of: ["FIXED_GRID", "PROPORTIONAL", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute x_position
    #   Specify the horizontal position (XPosition) of the captions, relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter.
    #
    #   @return [Integer]
    #
    # @!attribute y_position
    #   Specify the vertical position (YPosition) of the captions, relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output.
    #
    #   @return [Integer]
    #
    BurninDestinationSettings = ::Struct.new(
      :alignment,
      :apply_font_color,
      :background_color,
      :background_opacity,
      :fallback_font,
      :font_color,
      :font_opacity,
      :font_resolution,
      :font_script,
      :font_size,
      :hex_font_color,
      :outline_color,
      :outline_size,
      :shadow_color,
      :shadow_opacity,
      :shadow_x_offset,
      :shadow_y_offset,
      :style_passthrough,
      :teletext_spacing,
      :x_position,
      :y_position,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.background_opacity ||= 0
        self.font_opacity ||= 0
        self.font_resolution ||= 0
        self.font_size ||= 0
        self.outline_size ||= 0
        self.shadow_opacity ||= 0
        self.shadow_x_offset ||= 0
        self.shadow_y_offset ||= 0
        self.x_position ||= 0
        self.y_position ||= 0
      end
    end

    # Includes enum constants for BurninSubtitleAlignment
    #
    module BurninSubtitleAlignment
      # No documentation available.
      #
      CENTERED = "CENTERED"

      # No documentation available.
      #
      LEFT = "LEFT"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for BurninSubtitleApplyFontColor
    #
    module BurninSubtitleApplyFontColor
      # No documentation available.
      #
      WHITE_TEXT_ONLY = "WHITE_TEXT_ONLY"

      # No documentation available.
      #
      ALL_TEXT = "ALL_TEXT"
    end

    # Includes enum constants for BurninSubtitleBackgroundColor
    #
    module BurninSubtitleBackgroundColor
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for BurninSubtitleFallbackFont
    #
    module BurninSubtitleFallbackFont
      # No documentation available.
      #
      BEST_MATCH = "BEST_MATCH"

      # No documentation available.
      #
      MONOSPACED_SANSSERIF = "MONOSPACED_SANSSERIF"

      # No documentation available.
      #
      MONOSPACED_SERIF = "MONOSPACED_SERIF"

      # No documentation available.
      #
      PROPORTIONAL_SANSSERIF = "PROPORTIONAL_SANSSERIF"

      # No documentation available.
      #
      PROPORTIONAL_SERIF = "PROPORTIONAL_SERIF"
    end

    # Includes enum constants for BurninSubtitleFontColor
    #
    module BurninSubtitleFontColor
      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      YELLOW = "YELLOW"

      # No documentation available.
      #
      RED = "RED"

      # No documentation available.
      #
      GREEN = "GREEN"

      # No documentation available.
      #
      BLUE = "BLUE"

      # No documentation available.
      #
      HEX = "HEX"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for BurninSubtitleOutlineColor
    #
    module BurninSubtitleOutlineColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      YELLOW = "YELLOW"

      # No documentation available.
      #
      RED = "RED"

      # No documentation available.
      #
      GREEN = "GREEN"

      # No documentation available.
      #
      BLUE = "BLUE"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for BurninSubtitleShadowColor
    #
    module BurninSubtitleShadowColor
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for BurninSubtitleTeletextSpacing
    #
    module BurninSubtitleTeletextSpacing
      # No documentation available.
      #
      FIXED_GRID = "FIXED_GRID"

      # No documentation available.
      #
      PROPORTIONAL = "PROPORTIONAL"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # @!attribute id
    #   The Job ID of the job to be cancelled.
    #
    #   @return [String]
    #
    CancelJobInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # This object holds groups of settings related to captions for one output. For each output that has captions, include one instance of CaptionDescriptions.
    #
    # @!attribute caption_selector_name
    #   Specifies which "Caption Selector": inputs-caption_selector to use from each input when generating captions. The name should be of the format "Caption Selector <N>", which denotes that the Nth Caption Selector will be used from each input.
    #
    #   @return [String]
    #
    # @!attribute custom_language_code
    #   Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming.
    #
    #   @return [String]
    #
    # @!attribute destination_settings
    #   Settings related to one captions tab on the MediaConvert console. In your job JSON, an instance of captions DestinationSettings is equivalent to one captions tab in the console. Usually, one captions tab corresponds to one output captions track. Depending on your output captions format, one tab might correspond to a set of output captions tracks. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html.
    #
    #   @return [CaptionDestinationSettings]
    #
    # @!attribute language_code
    #   Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text.
    #
    #   Enum, one of: ["ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"]
    #
    #   @return [String]
    #
    # @!attribute language_description
    #   Specify a label for this set of output captions. For example, "English", "Director commentary", or "track_2". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting.
    #
    #   @return [String]
    #
    CaptionDescription = ::Struct.new(
      :caption_selector_name,
      :custom_language_code,
      :destination_settings,
      :language_code,
      :language_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Caption Description for preset
    #
    # @!attribute custom_language_code
    #   Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming.
    #
    #   @return [String]
    #
    # @!attribute destination_settings
    #   Settings related to one captions tab on the MediaConvert console. In your job JSON, an instance of captions DestinationSettings is equivalent to one captions tab in the console. Usually, one captions tab corresponds to one output captions track. Depending on your output captions format, one tab might correspond to a set of output captions tracks. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html.
    #
    #   @return [CaptionDestinationSettings]
    #
    # @!attribute language_code
    #   Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text.
    #
    #   Enum, one of: ["ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"]
    #
    #   @return [String]
    #
    # @!attribute language_description
    #   Specify a label for this set of output captions. For example, "English", "Director commentary", or "track_2". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting.
    #
    #   @return [String]
    #
    CaptionDescriptionPreset = ::Struct.new(
      :custom_language_code,
      :destination_settings,
      :language_code,
      :language_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings related to one captions tab on the MediaConvert console. In your job JSON, an instance of captions DestinationSettings is equivalent to one captions tab in the console. Usually, one captions tab corresponds to one output captions track. Depending on your output captions format, one tab might correspond to a set of output captions tracks. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html.
    #
    # @!attribute burnin_destination_settings
    #   Burn-in is a captions delivery method, rather than a captions format. Burn-in writes the captions directly on your video frames, replacing pixels of video content with the captions. Set up burn-in captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/burn-in-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to BURN_IN.
    #
    #   @return [BurninDestinationSettings]
    #
    # @!attribute destination_type
    #   Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Note that your choice of video output container constrains your choice of output captions format. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/captions-support-tables.html. If you are using SCTE-20 and you want to create an output that complies with the SCTE-43 spec, choose SCTE-20 plus embedded (SCTE20_PLUS_EMBEDDED). To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20 (EMBEDDED_PLUS_SCTE20).
    #
    #   Enum, one of: ["BURN_IN", "DVB_SUB", "EMBEDDED", "EMBEDDED_PLUS_SCTE20", "IMSC", "SCTE20_PLUS_EMBEDDED", "SCC", "SRT", "SMI", "TELETEXT", "TTML", "WEBVTT"]
    #
    #   @return [String]
    #
    # @!attribute dvb_sub_destination_settings
    #   Settings related to DVB-Sub captions. Set up DVB-Sub captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/dvb-sub-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to DVB_SUB.
    #
    #   @return [DvbSubDestinationSettings]
    #
    # @!attribute embedded_destination_settings
    #   Settings related to CEA/EIA-608 and CEA/EIA-708 (also called embedded or ancillary) captions. Set up embedded captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/embedded-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to EMBEDDED, EMBEDDED_PLUS_SCTE20, or SCTE20_PLUS_EMBEDDED.
    #
    #   @return [EmbeddedDestinationSettings]
    #
    # @!attribute imsc_destination_settings
    #   Settings related to IMSC captions. IMSC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to IMSC.
    #
    #   @return [ImscDestinationSettings]
    #
    # @!attribute scc_destination_settings
    #   Settings related to SCC captions. SCC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/scc-srt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to SCC.
    #
    #   @return [SccDestinationSettings]
    #
    # @!attribute srt_destination_settings
    #   Settings related to SRT captions. SRT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to SRT.
    #
    #   @return [SrtDestinationSettings]
    #
    # @!attribute teletext_destination_settings
    #   Settings related to teletext captions. Set up teletext captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/teletext-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to TELETEXT.
    #
    #   @return [TeletextDestinationSettings]
    #
    # @!attribute ttml_destination_settings
    #   Settings related to TTML captions. TTML is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to TTML.
    #
    #   @return [TtmlDestinationSettings]
    #
    # @!attribute webvtt_destination_settings
    #   Settings related to WebVTT captions. WebVTT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to WebVTT.
    #
    #   @return [WebvttDestinationSettings]
    #
    CaptionDestinationSettings = ::Struct.new(
      :burnin_destination_settings,
      :destination_type,
      :dvb_sub_destination_settings,
      :embedded_destination_settings,
      :imsc_destination_settings,
      :scc_destination_settings,
      :srt_destination_settings,
      :teletext_destination_settings,
      :ttml_destination_settings,
      :webvtt_destination_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CaptionDestinationType
    #
    module CaptionDestinationType
      # No documentation available.
      #
      BURN_IN = "BURN_IN"

      # No documentation available.
      #
      DVB_SUB = "DVB_SUB"

      # No documentation available.
      #
      EMBEDDED = "EMBEDDED"

      # No documentation available.
      #
      EMBEDDED_PLUS_SCTE20 = "EMBEDDED_PLUS_SCTE20"

      # No documentation available.
      #
      IMSC = "IMSC"

      # No documentation available.
      #
      SCTE20_PLUS_EMBEDDED = "SCTE20_PLUS_EMBEDDED"

      # No documentation available.
      #
      SCC = "SCC"

      # No documentation available.
      #
      SRT = "SRT"

      # No documentation available.
      #
      SMI = "SMI"

      # No documentation available.
      #
      TELETEXT = "TELETEXT"

      # No documentation available.
      #
      TTML = "TTML"

      # No documentation available.
      #
      WEBVTT = "WEBVTT"
    end

    # Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 20 captions selectors per input.
    #
    # @!attribute custom_language_code
    #   The specific language to extract from source, using the ISO 639-2 or ISO 639-3 three-letter language code. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions.
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   The specific language to extract from source. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions.
    #
    #   Enum, one of: ["ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"]
    #
    #   @return [String]
    #
    # @!attribute source_settings
    #   If your input captions are SCC, TTML, STL, SMI, SRT, or IMSC in an xml file, specify the URI of the input captions source file. If your input captions are IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings.
    #
    #   @return [CaptionSourceSettings]
    #
    CaptionSelector = ::Struct.new(
      :custom_language_code,
      :language_code,
      :source_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Ignore this setting unless your input captions format is SCC. To have the service compensate for differing frame rates between your input captions and input video, specify the frame rate of the captions file. Specify this value as a fraction. When you work directly in your JSON job specification, use the settings framerateNumerator and framerateDenominator. For example, you might specify 24 / 1 for 24 fps, 25 / 1 for 25 fps, 24000 / 1001 for 23.976 fps, or 30000 / 1001 for 29.97 fps.
    #
    # @!attribute framerate_denominator
    #   Specify the denominator of the fraction that represents the frame rate for the setting Caption source frame rate (CaptionSourceFramerate). Use this setting along with the setting Framerate numerator (framerateNumerator).
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   Specify the numerator of the fraction that represents the frame rate for the setting Caption source frame rate (CaptionSourceFramerate). Use this setting along with the setting Framerate denominator (framerateDenominator).
    #
    #   @return [Integer]
    #
    CaptionSourceFramerate = ::Struct.new(
      :framerate_denominator,
      :framerate_numerator,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
      end
    end

    # If your input captions are SCC, TTML, STL, SMI, SRT, or IMSC in an xml file, specify the URI of the input captions source file. If your input captions are IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings.
    #
    # @!attribute ancillary_source_settings
    #   Settings for ancillary captions source.
    #
    #   @return [AncillarySourceSettings]
    #
    # @!attribute dvb_sub_source_settings
    #   DVB Sub Source Settings
    #
    #   @return [DvbSubSourceSettings]
    #
    # @!attribute embedded_source_settings
    #   Settings for embedded captions Source
    #
    #   @return [EmbeddedSourceSettings]
    #
    # @!attribute file_source_settings
    #   If your input captions are SCC, SMI, SRT, STL, TTML, WebVTT, or IMSC 1.1 in an xml file, specify the URI of the input caption source file. If your caption source is IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings.
    #
    #   @return [FileSourceSettings]
    #
    # @!attribute source_type
    #   Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format.
    #
    #   Enum, one of: ["ANCILLARY", "DVB_SUB", "EMBEDDED", "SCTE20", "SCC", "TTML", "STL", "SRT", "SMI", "SMPTE_TT", "TELETEXT", "NULL_SOURCE", "IMSC", "WEBVTT"]
    #
    #   @return [String]
    #
    # @!attribute teletext_source_settings
    #   Settings specific to Teletext caption sources, including Page number.
    #
    #   @return [TeletextSourceSettings]
    #
    # @!attribute track_source_settings
    #   Settings specific to caption sources that are specified by track number. Currently, this is only IMSC captions in an IMF package. If your caption source is IMSC 1.1 in a separate xml file, use FileSourceSettings instead of TrackSourceSettings.
    #
    #   @return [TrackSourceSettings]
    #
    # @!attribute webvtt_hls_source_settings
    #   Settings specific to WebVTT sources in HLS alternative rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique subtitle track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the specified properties, the job fails. If there is only one subtitle track in the rendition group, the settings can be left empty and the default subtitle track will be chosen. If your caption source is a sidecar file, use FileSourceSettings instead of WebvttHlsSourceSettings.
    #
    #   @return [WebvttHlsSourceSettings]
    #
    CaptionSourceSettings = ::Struct.new(
      :ancillary_source_settings,
      :dvb_sub_source_settings,
      :embedded_source_settings,
      :file_source_settings,
      :source_type,
      :teletext_source_settings,
      :track_source_settings,
      :webvtt_hls_source_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CaptionSourceType
    #
    module CaptionSourceType
      # No documentation available.
      #
      ANCILLARY = "ANCILLARY"

      # No documentation available.
      #
      DVB_SUB = "DVB_SUB"

      # No documentation available.
      #
      EMBEDDED = "EMBEDDED"

      # No documentation available.
      #
      SCTE20 = "SCTE20"

      # No documentation available.
      #
      SCC = "SCC"

      # No documentation available.
      #
      TTML = "TTML"

      # No documentation available.
      #
      STL = "STL"

      # No documentation available.
      #
      SRT = "SRT"

      # No documentation available.
      #
      SMI = "SMI"

      # No documentation available.
      #
      SMPTE_TT = "SMPTE_TT"

      # No documentation available.
      #
      TELETEXT = "TELETEXT"

      # No documentation available.
      #
      NULL_SOURCE = "NULL_SOURCE"

      # No documentation available.
      #
      IMSC = "IMSC"

      # No documentation available.
      #
      WEBVTT = "WEBVTT"
    end

    # Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel, in dB. Specify remix values to indicate how much of the content from your input audio channel you want in your output audio channels. Each instance of the InputChannels or InputChannelsFineTune array specifies these values for one output channel. Use one instance of this array for each output channel. In the console, each array corresponds to a column in the graphical depiction of the mapping matrix. The rows of the graphical matrix correspond to input channels. Valid values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification). Use InputChannels or InputChannelsFineTune to specify your remix values. Don't use both.
    #
    # @!attribute output_channels
    #   In your JSON job specification, include one child of OutputChannels for each audio channel that you want in your output. Each child should contain one instance of InputChannels or InputChannelsFineTune.
    #
    #   @return [Array<OutputChannelMapping>]
    #
    ChannelMapping = ::Struct.new(
      :output_channels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Specify the details for each pair of HLS and DASH additional manifests that you want the service to generate for this CMAF output group. Each pair of manifests can reference a different subset of outputs in the group.
    #
    # @!attribute manifest_name_modifier
    #   Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests.
    #
    #   @return [String]
    #
    # @!attribute selected_outputs
    #   Specify the outputs that you want this additional top-level manifest to reference.
    #
    #   @return [Array<String>]
    #
    CmafAdditionalManifest = ::Struct.new(
      :manifest_name_modifier,
      :selected_outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CmafClientCache
    #
    module CmafClientCache
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for CmafCodecSpecification
    #
    module CmafCodecSpecification
      # No documentation available.
      #
      RFC_6381 = "RFC_6381"

      # No documentation available.
      #
      RFC_4281 = "RFC_4281"
    end

    # Settings for CMAF encryption
    #
    # @!attribute constant_initialization_vector
    #   This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default.
    #
    #   @return [String]
    #
    # @!attribute encryption_method
    #   Specify the encryption scheme that you want the service to use when encrypting your CMAF segments. Choose AES-CBC subsample (SAMPLE-AES) or AES_CTR (AES-CTR).
    #
    #   Enum, one of: ["SAMPLE_AES", "AES_CTR"]
    #
    #   @return [String]
    #
    # @!attribute initialization_vector_in_manifest
    #   When you use DRM with CMAF outputs, choose whether the service writes the 128-bit encryption initialization vector in the HLS and DASH manifests.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute speke_key_provider
    #   If your output group type is CMAF, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider settings instead.
    #
    #   @return [SpekeKeyProviderCmaf]
    #
    # @!attribute static_key_provider
    #   Use these settings to set up encryption with a static key provider.
    #
    #   @return [StaticKeyProvider]
    #
    # @!attribute type
    #   Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.
    #
    #   Enum, one of: ["SPEKE", "STATIC_KEY"]
    #
    #   @return [String]
    #
    CmafEncryptionSettings = ::Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :initialization_vector_in_manifest,
      :speke_key_provider,
      :static_key_provider,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CmafEncryptionType
    #
    module CmafEncryptionType
      # No documentation available.
      #
      SAMPLE_AES = "SAMPLE_AES"

      # No documentation available.
      #
      AES_CTR = "AES_CTR"
    end

    # Settings related to your CMAF output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to CMAF_GROUP_SETTINGS.
    #
    # @!attribute additional_manifests
    #   By default, the service creates one top-level .m3u8 HLS manifest and one top -level .mpd DASH manifest for each CMAF output group in your job. These default manifests reference every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here. For each additional manifest that you specify, the service creates one HLS manifest and one DASH manifest.
    #
    #   @return [Array<CmafAdditionalManifest>]
    #
    # @!attribute base_url
    #   A partial URI prefix that will be put in the manifest file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
    #
    #   @return [String]
    #
    # @!attribute client_cache
    #   Disable this setting only when your workflow requires the  EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled (ENABLED) and control caching in your video distribution set up. For example, use the Cache-Control http header.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute codec_specification
    #   Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
    #
    #   Enum, one of: ["RFC_6381", "RFC_4281"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #
    #   @return [String]
    #
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #
    #   @return [DestinationSettings]
    #
    # @!attribute encryption
    #   DRM settings.
    #
    #   @return [CmafEncryptionSettings]
    #
    # @!attribute fragment_length
    #   Specify the length, in whole seconds, of the mp4 fragments. When you don't specify a value, MediaConvert defaults to 2. Related setting: Use Fragment length control (FragmentLengthControl) to specify whether the encoder enforces this value strictly.
    #
    #   @return [Integer]
    #
    # @!attribute image_based_trick_play
    #   Specify whether MediaConvert generates images for trick play. Keep the default value, None (NONE), to not generate any images. Choose Thumbnail (THUMBNAIL) to generate tiled thumbnails. Choose Thumbnail and full frame (THUMBNAIL_AND_FULLFRAME) to generate tiled thumbnails and full-resolution images of single frames. When you enable Write HLS manifest (WriteHlsManifest), MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. When you enable Write DASH manifest (WriteDashManifest), MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md
    #
    #   Enum, one of: ["NONE", "THUMBNAIL", "THUMBNAIL_AND_FULLFRAME", "ADVANCED"]
    #
    #   @return [String]
    #
    # @!attribute image_based_trick_play_settings
    #   Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    #
    #   @return [CmafImageBasedTrickPlaySettings]
    #
    # @!attribute manifest_compression
    #   When set to GZIP, compresses HLS playlist.
    #
    #   Enum, one of: ["GZIP", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute manifest_duration_format
    #   Indicates whether the output manifest should use floating point values for segment duration.
    #
    #   Enum, one of: ["FLOATING_POINT", "INTEGER"]
    #
    #   @return [String]
    #
    # @!attribute min_buffer_time
    #   Minimum time of initially buffered media that is needed to ensure smooth playout.
    #
    #   @return [Integer]
    #
    # @!attribute min_final_segment_length
    #   Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
    #
    #   @return [Float]
    #
    # @!attribute mpd_profile
    #   Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE).
    #
    #   Enum, one of: ["MAIN_PROFILE", "ON_DEMAND_PROFILE"]
    #
    #   @return [String]
    #
    # @!attribute pts_offset_handling_for_b_frames
    #   Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS (MATCH_INITIAL_PTS) when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based (ZERO_BASED) to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here.
    #
    #   Enum, one of: ["ZERO_BASED", "MATCH_INITIAL_PTS"]
    #
    #   @return [String]
    #
    # @!attribute segment_control
    #   When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
    #
    #   Enum, one of: ["SINGLE_FILE", "SEGMENTED_FILES"]
    #
    #   @return [String]
    #
    # @!attribute segment_length
    #   Specify the length, in whole seconds, of each segment. When you don't specify a value, MediaConvert defaults to 10. Related settings: Use Segment length control (SegmentLengthControl) to specify whether the encoder enforces this value strictly. Use Segment control (CmafSegmentControl) to specify whether MediaConvert creates separate segment files or one content file that has metadata to mark the segment boundaries.
    #
    #   @return [Integer]
    #
    # @!attribute segment_length_control
    #   Specify how you want MediaConvert to determine the segment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Segment length (SegmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary.
    #
    #   Enum, one of: ["EXACT", "GOP_MULTIPLE"]
    #
    #   @return [String]
    #
    # @!attribute stream_inf_resolution
    #   Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute target_duration_compatibility_mode
    #   When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration.
    #
    #   Enum, one of: ["LEGACY", "SPEC_COMPLIANT"]
    #
    #   @return [String]
    #
    # @!attribute write_dash_manifest
    #   When set to ENABLED, a DASH MPD manifest will be generated for this output.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute write_hls_manifest
    #   When set to ENABLED, an Apple HLS manifest will be generated for this output.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute write_segment_timeline_in_representation
    #   When you enable Precise segment duration in DASH manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    CmafGroupSettings = ::Struct.new(
      :additional_manifests,
      :base_url,
      :client_cache,
      :codec_specification,
      :destination,
      :destination_settings,
      :encryption,
      :fragment_length,
      :image_based_trick_play,
      :image_based_trick_play_settings,
      :manifest_compression,
      :manifest_duration_format,
      :min_buffer_time,
      :min_final_segment_length,
      :mpd_profile,
      :pts_offset_handling_for_b_frames,
      :segment_control,
      :segment_length,
      :segment_length_control,
      :stream_inf_resolution,
      :target_duration_compatibility_mode,
      :write_dash_manifest,
      :write_hls_manifest,
      :write_segment_timeline_in_representation,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.fragment_length ||= 0
        self.min_buffer_time ||= 0
        self.min_final_segment_length ||= 0
        self.segment_length ||= 0
      end
    end

    # Includes enum constants for CmafImageBasedTrickPlay
    #
    module CmafImageBasedTrickPlay
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      THUMBNAIL = "THUMBNAIL"

      # No documentation available.
      #
      THUMBNAIL_AND_FULLFRAME = "THUMBNAIL_AND_FULLFRAME"

      # No documentation available.
      #
      ADVANCED = "ADVANCED"
    end

    # Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    #
    # @!attribute interval_cadence
    #   The cadence MediaConvert follows for generating thumbnails.  If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence).  If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval.
    #
    #   Enum, one of: ["FOLLOW_IFRAME", "FOLLOW_CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute thumbnail_height
    #   Height of each thumbnail within each tile image, in pixels.  Leave blank to maintain aspect ratio with thumbnail width.  If following the aspect ratio would lead to a total tile height greater than 4096, then the job will be rejected.  Must be divisible by 2.
    #
    #   @return [Integer]
    #
    # @!attribute thumbnail_interval
    #   Enter the interval, in seconds, that MediaConvert uses to generate thumbnails.  If the interval you enter doesn't align with the output frame rate, MediaConvert automatically rounds the interval to align with the output frame rate.  For example, if the output frame rate is 29.97 frames per second and you enter 5, MediaConvert uses a 150 frame interval to generate thumbnails.
    #
    #   @return [Float]
    #
    # @!attribute thumbnail_width
    #   Width of each thumbnail within each tile image, in pixels.  Default is 312.  Must be divisible by 8.
    #
    #   @return [Integer]
    #
    # @!attribute tile_height
    #   Number of thumbnails in each column of a tile image. Set a value between 2 and 2048. Must be divisible by 2.
    #
    #   @return [Integer]
    #
    # @!attribute tile_width
    #   Number of thumbnails in each row of a tile image.  Set a value between 1 and 512.
    #
    #   @return [Integer]
    #
    CmafImageBasedTrickPlaySettings = ::Struct.new(
      :interval_cadence,
      :thumbnail_height,
      :thumbnail_interval,
      :thumbnail_width,
      :tile_height,
      :tile_width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.thumbnail_height ||= 0
        self.thumbnail_interval ||= 0
        self.thumbnail_width ||= 0
        self.tile_height ||= 0
        self.tile_width ||= 0
      end
    end

    # Includes enum constants for CmafInitializationVectorInManifest
    #
    module CmafInitializationVectorInManifest
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for CmafIntervalCadence
    #
    module CmafIntervalCadence
      # No documentation available.
      #
      FOLLOW_IFRAME = "FOLLOW_IFRAME"

      # No documentation available.
      #
      FOLLOW_CUSTOM = "FOLLOW_CUSTOM"
    end

    # Includes enum constants for CmafKeyProviderType
    #
    module CmafKeyProviderType
      # No documentation available.
      #
      SPEKE = "SPEKE"

      # No documentation available.
      #
      STATIC_KEY = "STATIC_KEY"
    end

    # Includes enum constants for CmafManifestCompression
    #
    module CmafManifestCompression
      # No documentation available.
      #
      GZIP = "GZIP"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for CmafManifestDurationFormat
    #
    module CmafManifestDurationFormat
      # No documentation available.
      #
      FLOATING_POINT = "FLOATING_POINT"

      # No documentation available.
      #
      INTEGER = "INTEGER"
    end

    # Includes enum constants for CmafMpdProfile
    #
    module CmafMpdProfile
      # No documentation available.
      #
      MAIN_PROFILE = "MAIN_PROFILE"

      # No documentation available.
      #
      ON_DEMAND_PROFILE = "ON_DEMAND_PROFILE"
    end

    # Includes enum constants for CmafPtsOffsetHandlingForBFrames
    #
    module CmafPtsOffsetHandlingForBFrames
      # No documentation available.
      #
      ZERO_BASED = "ZERO_BASED"

      # No documentation available.
      #
      MATCH_INITIAL_PTS = "MATCH_INITIAL_PTS"
    end

    # Includes enum constants for CmafSegmentControl
    #
    module CmafSegmentControl
      # No documentation available.
      #
      SINGLE_FILE = "SINGLE_FILE"

      # No documentation available.
      #
      SEGMENTED_FILES = "SEGMENTED_FILES"
    end

    # Includes enum constants for CmafSegmentLengthControl
    #
    module CmafSegmentLengthControl
      # No documentation available.
      #
      EXACT = "EXACT"

      # No documentation available.
      #
      GOP_MULTIPLE = "GOP_MULTIPLE"
    end

    # Includes enum constants for CmafStreamInfResolution
    #
    module CmafStreamInfResolution
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for CmafTargetDurationCompatibilityMode
    #
    module CmafTargetDurationCompatibilityMode
      # No documentation available.
      #
      LEGACY = "LEGACY"

      # No documentation available.
      #
      SPEC_COMPLIANT = "SPEC_COMPLIANT"
    end

    # Includes enum constants for CmafWriteDASHManifest
    #
    module CmafWriteDASHManifest
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for CmafWriteHLSManifest
    #
    module CmafWriteHLSManifest
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for CmafWriteSegmentTimelineInRepresentation
    #
    module CmafWriteSegmentTimelineInRepresentation
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for CmfcAudioDuration
    #
    module CmfcAudioDuration
      # No documentation available.
      #
      DEFAULT_CODEC_DURATION = "DEFAULT_CODEC_DURATION"

      # No documentation available.
      #
      MATCH_VIDEO_DURATION = "MATCH_VIDEO_DURATION"
    end

    # Includes enum constants for CmfcAudioTrackType
    #
    module CmfcAudioTrackType
      # No documentation available.
      #
      ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT = "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT"

      # No documentation available.
      #
      ALTERNATE_AUDIO_AUTO_SELECT = "ALTERNATE_AUDIO_AUTO_SELECT"

      # No documentation available.
      #
      ALTERNATE_AUDIO_NOT_AUTO_SELECT = "ALTERNATE_AUDIO_NOT_AUTO_SELECT"
    end

    # Includes enum constants for CmfcDescriptiveVideoServiceFlag
    #
    module CmfcDescriptiveVideoServiceFlag
      # No documentation available.
      #
      DONT_FLAG = "DONT_FLAG"

      # No documentation available.
      #
      FLAG = "FLAG"
    end

    # Includes enum constants for CmfcIFrameOnlyManifest
    #
    module CmfcIFrameOnlyManifest
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for CmfcKlvMetadata
    #
    module CmfcKlvMetadata
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for CmfcScte35Esam
    #
    module CmfcScte35Esam
      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for CmfcScte35Source
    #
    module CmfcScte35Source
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # These settings relate to the fragmented MP4 container for the segments in your CMAF outputs.
    #
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #
    #   Enum, one of: ["DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"]
    #
    #   @return [String]
    #
    # @!attribute audio_group_id
    #   Specify the audio rendition group for this audio rendition. Specify up to one value for each audio output in your output group. This value appears in your HLS parent manifest in the EXT-X-MEDIA tag of TYPE=AUDIO, as the value for the GROUP-ID attribute. For example, if you specify "audio_aac_1" for Audio group ID, it appears in your manifest like this:  EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="audio_aac_1". Related setting: To associate the rendition group that this audio track belongs to with a video rendition, include the same value that you provide here for that video output's setting Audio rendition sets (audioRenditionSets).
    #
    #   @return [String]
    #
    # @!attribute audio_rendition_sets
    #   List the audio rendition groups that you want included with this video rendition. Use a comma-separated list. For example, say you want to include the audio rendition groups that have the audio group IDs "audio_aac_1" and "audio_dolby". Then you would specify this value: "audio_aac_1,audio_dolby". Related setting: The rendition groups that you include in your comma-separated list should all match values that you specify in the setting Audio group ID (AudioGroupId) for audio renditions in the same output group as this video rendition. Default behavior: If you don't specify anything here and for Audio group ID, MediaConvert puts each audio variant in its own audio rendition group and associates it with every video variant. Each value in your list appears in your HLS parent manifest in the EXT-X-STREAM-INF tag as the value for the AUDIO attribute. To continue the previous example, say that the file name for the child manifest for your video rendition is "amazing_video_1.m3u8". Then, in your parent manifest, each value will appear on separate lines, like this:  EXT-X-STREAM-INF:AUDIO="audio_aac_1"... amazing_video_1.m3u8  EXT-X-STREAM-INF:AUDIO="audio_dolby"... amazing_video_1.m3u8
    #
    #   @return [String]
    #
    # @!attribute audio_track_type
    #   Use this setting to control the values that MediaConvert puts in your HLS parent playlist to control how the client player selects which audio track to play. The other options for this setting determine the values that MediaConvert writes for the DEFAULT and AUTOSELECT attributes of the EXT-X-MEDIA entry for the audio variant. For more information about these attributes, see the Apple documentation article https://developer.apple.com/documentation/http_live_streaming/example_playlists_for_http_live_streaming/adding_alternate_media_to_a_playlist. Choose Alternate audio, auto select, default (ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT) to set DEFAULT=YES and AUTOSELECT=YES. Choose this value for only one variant in your output group. Choose Alternate audio, auto select, not default (ALTERNATE_AUDIO_AUTO_SELECT) to set DEFAULT=NO and AUTOSELECT=YES. Choose Alternate Audio, Not Auto Select to set DEFAULT=NO and AUTOSELECT=NO. When you don't specify a value for this setting, MediaConvert defaults to Alternate audio, auto select, default. When there is more than one variant in your output group, you must explicitly choose a value for this setting.
    #
    #   Enum, one of: ["ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT"]
    #
    #   @return [String]
    #
    # @!attribute descriptive_video_service_flag
    #   Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag (FLAG), MediaConvert includes the parameter CHARACTERISTICS="public.accessibility.describes-video" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation.
    #
    #   Enum, one of: ["DONT_FLAG", "FLAG"]
    #
    #   @return [String]
    #
    # @!attribute i_frame_only_manifest
    #   Choose Include (INCLUDE) to have MediaConvert generate an HLS child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE).
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute klv_metadata
    #   To include key-length-value metadata in this output: Set KLV metadata insertion to Passthrough. MediaConvert reads KLV metadata present in your input and writes each instance to a separate event message box in the output, according to MISB ST1910.1. To exclude this KLV metadata: Set KLV metadata insertion to None or leave blank.
    #
    #   Enum, one of: ["PASSTHROUGH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute scte35_esam
    #   Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
    #
    #   Enum, one of: ["INSERT", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute scte35_source
    #   Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.
    #
    #   Enum, one of: ["PASSTHROUGH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata
    #   To include ID3 metadata in this output: Set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH). Specify this ID3 metadata in Custom ID3 metadata inserter (timedMetadataInsertion). MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None (NONE) or leave blank.
    #
    #   Enum, one of: ["PASSTHROUGH", "NONE"]
    #
    #   @return [String]
    #
    CmfcSettings = ::Struct.new(
      :audio_duration,
      :audio_group_id,
      :audio_rendition_sets,
      :audio_track_type,
      :descriptive_video_service_flag,
      :i_frame_only_manifest,
      :klv_metadata,
      :scte35_esam,
      :scte35_source,
      :timed_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CmfcTimedMetadata
    #
    module CmfcTimedMetadata
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Settings for color correction.
    #
    # @!attribute brightness
    #   Brightness level.
    #
    #   @return [Integer]
    #
    # @!attribute color_space_conversion
    #   Specify the color space you want for this output. The service supports conversion between HDR formats, between SDR formats, from SDR to HDR, and from HDR to SDR. SDR to HDR conversion doesn't upgrade the dynamic range. The converted video has an HDR format, but visually appears the same as an unconverted output. HDR to SDR conversion uses Elemental tone mapping technology to approximate the outcome of manually regrading from HDR to SDR.
    #
    #   Enum, one of: ["NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"]
    #
    #   @return [String]
    #
    # @!attribute contrast
    #   Contrast level.
    #
    #   @return [Integer]
    #
    # @!attribute hdr10_metadata
    #   Use these settings when you convert to the HDR 10 color space. Specify the SMPTE ST 2086 Mastering Display Color Volume static metadata that you want signaled in the output. These values don't affect the pixel values that are encoded in the video stream. They are intended to help the downstream video player display content in a way that reflects the intentions of the the content creator. When you set Color space conversion (ColorSpaceConversion) to HDR 10 (FORCE_HDR10), these settings are required. You must set values for Max frame average light level (maxFrameAverageLightLevel) and Max content light level (maxContentLightLevel); these settings don't have a default value. The default values for the other HDR 10 metadata settings are defined by the P3D65 color space. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr.
    #
    #   @return [Hdr10Metadata]
    #
    # @!attribute hue
    #   Hue in degrees.
    #
    #   @return [Integer]
    #
    # @!attribute sample_range_conversion
    #   Specify the video color sample range for this output. To create a full range output, you must start with a full range YUV input and keep the default value, None (NONE). To create a limited range output from a full range input, choose Limited range (LIMITED_RANGE_SQUEEZE). With RGB inputs, your output is always limited range, regardless of your choice here. When you create a limited range output from a full range input, MediaConvert limits the active pixel values in a way that depends on the output's bit depth: 8-bit outputs contain only values from 16 through 235 and 10-bit outputs contain only values from 64 through 940. With this conversion, MediaConvert also changes the output metadata to note the limited range.
    #
    #   Enum, one of: ["LIMITED_RANGE_SQUEEZE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute saturation
    #   Saturation level.
    #
    #   @return [Integer]
    #
    ColorCorrector = ::Struct.new(
      :brightness,
      :color_space_conversion,
      :contrast,
      :hdr10_metadata,
      :hue,
      :sample_range_conversion,
      :saturation,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.brightness ||= 0
        self.contrast ||= 0
        self.hue ||= 0
        self.saturation ||= 0
      end
    end

    # Includes enum constants for ColorMetadata
    #
    module ColorMetadata
      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      INSERT = "INSERT"
    end

    # Includes enum constants for ColorSpace
    #
    module ColorSpace
      # No documentation available.
      #
      FOLLOW = "FOLLOW"

      # No documentation available.
      #
      REC_601 = "REC_601"

      # No documentation available.
      #
      REC_709 = "REC_709"

      # No documentation available.
      #
      HDR10 = "HDR10"

      # No documentation available.
      #
      HLG_2020 = "HLG_2020"
    end

    # Includes enum constants for ColorSpaceConversion
    #
    module ColorSpaceConversion
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      FORCE_601 = "FORCE_601"

      # No documentation available.
      #
      FORCE_709 = "FORCE_709"

      # No documentation available.
      #
      FORCE_HDR10 = "FORCE_HDR10"

      # No documentation available.
      #
      FORCE_HLG_2020 = "FORCE_HLG_2020"
    end

    # Includes enum constants for ColorSpaceUsage
    #
    module ColorSpaceUsage
      # No documentation available.
      #
      FORCE = "FORCE"

      # No documentation available.
      #
      FALLBACK = "FALLBACK"
    end

    # Includes enum constants for Commitment
    #
    module Commitment
      # No documentation available.
      #
      ONE_YEAR = "ONE_YEAR"
    end

    # The service couldn't complete your request because there is a conflict with the current state of the resource.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Container specific settings.
    #
    # @!attribute cmfc_settings
    #   These settings relate to the fragmented MP4 container for the segments in your CMAF outputs.
    #
    #   @return [CmfcSettings]
    #
    # @!attribute container
    #   Container for this output. Some containers require a container settings object. If not specified, the default object will be created.
    #
    #   Enum, one of: ["F4V", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF", "WEBM", "RAW"]
    #
    #   @return [String]
    #
    # @!attribute f4v_settings
    #   Settings for F4v container
    #
    #   @return [F4vSettings]
    #
    # @!attribute m2ts_settings
    #   MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container (ContainerType) is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset.
    #
    #   @return [M2tsSettings]
    #
    # @!attribute m3u8_settings
    #   These settings relate to the MPEG-2 transport stream (MPEG2-TS) container for the MPEG2-TS segments in your HLS outputs.
    #
    #   @return [M3u8Settings]
    #
    # @!attribute mov_settings
    #   These settings relate to your QuickTime MOV output container.
    #
    #   @return [MovSettings]
    #
    # @!attribute mp4_settings
    #   These settings relate to your MP4 output container. You can create audio only outputs with this container. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/supported-codecs-containers-audio-only.html output-codecs-and-containers-supported-for-audio-only.
    #
    #   @return [Mp4Settings]
    #
    # @!attribute mpd_settings
    #   These settings relate to the fragmented MP4 container for the segments in your DASH outputs.
    #
    #   @return [MpdSettings]
    #
    # @!attribute mxf_settings
    #   These settings relate to your MXF output container.
    #
    #   @return [MxfSettings]
    #
    ContainerSettings = ::Struct.new(
      :cmfc_settings,
      :container,
      :f4v_settings,
      :m2ts_settings,
      :m3u8_settings,
      :mov_settings,
      :mp4_settings,
      :mpd_settings,
      :mxf_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContainerType
    #
    module ContainerType
      # No documentation available.
      #
      F4V = "F4V"

      # No documentation available.
      #
      ISMV = "ISMV"

      # No documentation available.
      #
      M2TS = "M2TS"

      # No documentation available.
      #
      M3U8 = "M3U8"

      # No documentation available.
      #
      CMFC = "CMFC"

      # No documentation available.
      #
      MOV = "MOV"

      # No documentation available.
      #
      MP4 = "MP4"

      # No documentation available.
      #
      MPD = "MPD"

      # No documentation available.
      #
      MXF = "MXF"

      # No documentation available.
      #
      WEBM = "WEBM"

      # No documentation available.
      #
      RAW = "RAW"
    end

    # Includes enum constants for CopyProtectionAction
    #
    module CopyProtectionAction
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      STRIP = "STRIP"
    end

    # @!attribute acceleration_settings
    #   Optional. Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.
    #
    #   @return [AccelerationSettings]
    #
    # @!attribute billing_tags_source
    #   Optional. Choose a tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up. Any transcoding outputs that don't have an associated tag will appear in your billing report unsorted. If you don't choose a valid value for this field, your job outputs will appear on the billing report unsorted.
    #
    #   Enum, one of: ["QUEUE", "PRESET", "JOB_TEMPLATE", "JOB"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   Optional. Idempotency token for CreateJob operation.
    #
    #   @return [String]
    #
    # @!attribute hop_destinations
    #   Optional. Use queue hopping to avoid overly long waits in the backlog of the queue that you submit your job to. Specify an alternate queue and the maximum time that your job will wait in the initial queue before hopping. For more information about this feature, see the AWS Elemental MediaConvert User Guide.
    #
    #   @return [Array<HopDestination>]
    #
    # @!attribute job_template
    #   Optional. When you create a job, you can either specify a job template or specify the transcoding settings individually.
    #
    #   @return [String]
    #
    # @!attribute priority
    #   Optional. Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.
    #
    #   @return [Integer]
    #
    # @!attribute queue
    #   Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.
    #
    #   @return [String]
    #
    # @!attribute role
    #   Required. The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
    #
    #   @return [String]
    #
    # @!attribute settings
    #   JobSettings contains all the transcode settings for a job.
    #
    #   @return [JobSettings]
    #
    # @!attribute simulate_reserved_queue
    #   Optional. Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute status_update_interval
    #   Optional. Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #
    #   Enum, one of: ["SECONDS_10", "SECONDS_12", "SECONDS_15", "SECONDS_20", "SECONDS_30", "SECONDS_60", "SECONDS_120", "SECONDS_180", "SECONDS_240", "SECONDS_300", "SECONDS_360", "SECONDS_420", "SECONDS_480", "SECONDS_540", "SECONDS_600"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Optional. The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.  Use standard AWS tags on your job for automatic integration with AWS services and for custom integrations and workflows.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute user_metadata
    #   Optional. User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.  Use only for existing integrations or workflows that rely on job metadata tags. Otherwise, we recommend that you use standard AWS tags.
    #
    #   @return [Hash<String, String>]
    #
    CreateJobInput = ::Struct.new(
      :acceleration_settings,
      :billing_tags_source,
      :client_request_token,
      :hop_destinations,
      :job_template,
      :priority,
      :queue,
      :role,
      :settings,
      :simulate_reserved_queue,
      :status_update_interval,
      :tags,
      :user_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # @!attribute job
    #   Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    #   @return [Job]
    #
    CreateJobOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.
    #
    #   @return [AccelerationSettings]
    #
    # @!attribute category
    #   Optional. A category for the job template you are creating
    #
    #   @return [String]
    #
    # @!attribute description
    #   Optional. A description of the job template you are creating.
    #
    #   @return [String]
    #
    # @!attribute hop_destinations
    #   Optional. Use queue hopping to avoid overly long waits in the backlog of the queue that you submit your job to. Specify an alternate queue and the maximum time that your job will wait in the initial queue before hopping. For more information about this feature, see the AWS Elemental MediaConvert User Guide.
    #
    #   @return [Array<HopDestination>]
    #
    # @!attribute name
    #   The name of the job template you are creating.
    #
    #   @return [String]
    #
    # @!attribute priority
    #   Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.
    #
    #   @return [Integer]
    #
    # @!attribute queue
    #   Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.
    #
    #   @return [String]
    #
    # @!attribute settings
    #   JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
    #
    #   @return [JobTemplateSettings]
    #
    # @!attribute status_update_interval
    #   Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #
    #   Enum, one of: ["SECONDS_10", "SECONDS_12", "SECONDS_15", "SECONDS_20", "SECONDS_30", "SECONDS_60", "SECONDS_120", "SECONDS_180", "SECONDS_240", "SECONDS_300", "SECONDS_360", "SECONDS_420", "SECONDS_480", "SECONDS_540", "SECONDS_600"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
    #
    #   @return [Hash<String, String>]
    #
    CreateJobTemplateInput = ::Struct.new(
      :acceleration_settings,
      :category,
      :description,
      :hop_destinations,
      :name,
      :priority,
      :queue,
      :settings,
      :status_update_interval,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # @!attribute job_template
    #   A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
    #
    #   @return [JobTemplate]
    #
    CreateJobTemplateOutput = ::Struct.new(
      :job_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category
    #   Optional. A category for the preset you are creating.
    #
    #   @return [String]
    #
    # @!attribute description
    #   Optional. A description of the preset you are creating.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the preset you are creating.
    #
    #   @return [String]
    #
    # @!attribute settings
    #   Settings for preset
    #
    #   @return [PresetSettings]
    #
    # @!attribute tags
    #   The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
    #
    #   @return [Hash<String, String>]
    #
    CreatePresetInput = ::Struct.new(
      :category,
      :description,
      :name,
      :settings,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute preset
    #   A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
    #
    #   @return [Preset]
    #
    CreatePresetOutput = ::Struct.new(
      :preset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   Optional. A description of the queue that you are creating.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the queue that you are creating.
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment. When you use the API to create a queue, the default is on-demand.
    #
    #   Enum, one of: ["ON_DEMAND", "RESERVED"]
    #
    #   @return [String]
    #
    # @!attribute reservation_plan_settings
    #   Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
    #
    #   @return [ReservationPlanSettings]
    #
    # @!attribute status
    #   Initial state of the queue. If you create a paused queue, then jobs in that queue won't begin.
    #
    #   Enum, one of: ["ACTIVE", "PAUSED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
    #
    #   @return [Hash<String, String>]
    #
    CreateQueueInput = ::Struct.new(
      :description,
      :name,
      :pricing_plan,
      :reservation_plan_settings,
      :status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute queue
    #   You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.
    #
    #   @return [Queue]
    #
    CreateQueueOutput = ::Struct.new(
      :queue,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Specify the details for each additional DASH manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group.
    #
    # @!attribute manifest_name_modifier
    #   Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your DASH group is film-name.mpd. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.mpd.
    #
    #   @return [String]
    #
    # @!attribute selected_outputs
    #   Specify the outputs that you want this additional top-level manifest to reference.
    #
    #   @return [Array<String>]
    #
    DashAdditionalManifest = ::Struct.new(
      :manifest_name_modifier,
      :selected_outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Specifies DRM settings for DASH outputs.
    #
    # @!attribute playback_device_compatibility
    #   This setting can improve the compatibility of your output with video players on obsolete devices. It applies only to DASH H.264 outputs with DRM encryption. Choose Unencrypted SEI (UNENCRYPTED_SEI) only to correct problems with playback on older devices. Otherwise, keep the default setting CENC v1 (CENC_V1). If you choose Unencrypted SEI, for that output, the service will exclude the access unit delimiter and will leave the SEI NAL units unencrypted.
    #
    #   Enum, one of: ["CENC_V1", "UNENCRYPTED_SEI"]
    #
    #   @return [String]
    #
    # @!attribute speke_key_provider
    #   If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
    #
    #   @return [SpekeKeyProvider]
    #
    DashIsoEncryptionSettings = ::Struct.new(
      :playback_device_compatibility,
      :speke_key_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DashIsoGroupAudioChannelConfigSchemeIdUri
    #
    module DashIsoGroupAudioChannelConfigSchemeIdUri
      # No documentation available.
      #
      MPEG_CHANNEL_CONFIGURATION = "MPEG_CHANNEL_CONFIGURATION"

      # No documentation available.
      #
      DOLBY_CHANNEL_CONFIGURATION = "DOLBY_CHANNEL_CONFIGURATION"
    end

    # Settings related to your DASH output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to DASH_ISO_GROUP_SETTINGS.
    #
    # @!attribute additional_manifests
    #   By default, the service creates one .mpd DASH manifest for each DASH ISO output group in your job. This default manifest references every output in the output group. To create additional DASH manifests that reference a subset of the outputs in the output group, specify a list of them here.
    #
    #   @return [Array<DashAdditionalManifest>]
    #
    # @!attribute audio_channel_config_scheme_id_uri
    #   Use this setting only when your audio codec is a Dolby one (AC3, EAC3, or Atmos) and your downstream workflow requires that your DASH manifest use the Dolby channel configuration tag, rather than the MPEG one. For example, you might need to use this to make dynamic ad insertion work. Specify which audio channel configuration scheme ID URI MediaConvert writes in your DASH manifest. Keep the default value, MPEG channel configuration (MPEG_CHANNEL_CONFIGURATION), to have MediaConvert write this: urn:mpeg:mpegB:cicp:ChannelConfiguration. Choose Dolby channel configuration (DOLBY_CHANNEL_CONFIGURATION) to have MediaConvert write this instead: tag:dolby.com,2014:dash:audio_channel_configuration:2011.
    #
    #   Enum, one of: ["MPEG_CHANNEL_CONFIGURATION", "DOLBY_CHANNEL_CONFIGURATION"]
    #
    #   @return [String]
    #
    # @!attribute base_url
    #   A partial URI prefix that will be put in the manifest (.mpd) file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
    #
    #   @return [String]
    #
    # @!attribute destination
    #   Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #
    #   @return [String]
    #
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #
    #   @return [DestinationSettings]
    #
    # @!attribute encryption
    #   DRM settings.
    #
    #   @return [DashIsoEncryptionSettings]
    #
    # @!attribute fragment_length
    #   Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
    #
    #   @return [Integer]
    #
    # @!attribute hbbtv_compliance
    #   Supports HbbTV specification as indicated
    #
    #   Enum, one of: ["HBBTV_1_5", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute image_based_trick_play
    #   Specify whether MediaConvert generates images for trick play. Keep the default value, None (NONE), to not generate any images. Choose Thumbnail (THUMBNAIL) to generate tiled thumbnails. Choose Thumbnail and full frame (THUMBNAIL_AND_FULLFRAME) to generate tiled thumbnails and full-resolution images of single frames. MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md
    #
    #   Enum, one of: ["NONE", "THUMBNAIL", "THUMBNAIL_AND_FULLFRAME", "ADVANCED"]
    #
    #   @return [String]
    #
    # @!attribute image_based_trick_play_settings
    #   Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    #
    #   @return [DashIsoImageBasedTrickPlaySettings]
    #
    # @!attribute min_buffer_time
    #   Minimum time of initially buffered media that is needed to ensure smooth playout.
    #
    #   @return [Integer]
    #
    # @!attribute min_final_segment_length
    #   Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
    #
    #   @return [Float]
    #
    # @!attribute mpd_profile
    #   Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE).
    #
    #   Enum, one of: ["MAIN_PROFILE", "ON_DEMAND_PROFILE"]
    #
    #   @return [String]
    #
    # @!attribute pts_offset_handling_for_b_frames
    #   Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS (MATCH_INITIAL_PTS) when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based (ZERO_BASED) to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here.
    #
    #   Enum, one of: ["ZERO_BASED", "MATCH_INITIAL_PTS"]
    #
    #   @return [String]
    #
    # @!attribute segment_control
    #   When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
    #
    #   Enum, one of: ["SINGLE_FILE", "SEGMENTED_FILES"]
    #
    #   @return [String]
    #
    # @!attribute segment_length
    #   Specify the length, in whole seconds, of each segment. When you don't specify a value, MediaConvert defaults to 30. Related settings: Use Segment length control (SegmentLengthControl) to specify whether the encoder enforces this value strictly. Use Segment control (DashIsoSegmentControl) to specify whether MediaConvert creates separate segment files or one content file that has metadata to mark the segment boundaries.
    #
    #   @return [Integer]
    #
    # @!attribute segment_length_control
    #   Specify how you want MediaConvert to determine the segment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Segment length (SegmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary.
    #
    #   Enum, one of: ["EXACT", "GOP_MULTIPLE"]
    #
    #   @return [String]
    #
    # @!attribute write_segment_timeline_in_representation
    #   If you get an HTTP error in the 400 range when you play back your DASH output, enable this setting and run your transcoding job again. When you enable this setting, the service writes precise segment durations in the DASH manifest. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When you don't enable this setting, the service writes approximate segment durations in your DASH manifest.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    DashIsoGroupSettings = ::Struct.new(
      :additional_manifests,
      :audio_channel_config_scheme_id_uri,
      :base_url,
      :destination,
      :destination_settings,
      :encryption,
      :fragment_length,
      :hbbtv_compliance,
      :image_based_trick_play,
      :image_based_trick_play_settings,
      :min_buffer_time,
      :min_final_segment_length,
      :mpd_profile,
      :pts_offset_handling_for_b_frames,
      :segment_control,
      :segment_length,
      :segment_length_control,
      :write_segment_timeline_in_representation,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.fragment_length ||= 0
        self.min_buffer_time ||= 0
        self.min_final_segment_length ||= 0
        self.segment_length ||= 0
      end
    end

    # Includes enum constants for DashIsoHbbtvCompliance
    #
    module DashIsoHbbtvCompliance
      # No documentation available.
      #
      HBBTV_1_5 = "HBBTV_1_5"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for DashIsoImageBasedTrickPlay
    #
    module DashIsoImageBasedTrickPlay
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      THUMBNAIL = "THUMBNAIL"

      # No documentation available.
      #
      THUMBNAIL_AND_FULLFRAME = "THUMBNAIL_AND_FULLFRAME"

      # No documentation available.
      #
      ADVANCED = "ADVANCED"
    end

    # Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    #
    # @!attribute interval_cadence
    #   The cadence MediaConvert follows for generating thumbnails.  If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence).  If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval.
    #
    #   Enum, one of: ["FOLLOW_IFRAME", "FOLLOW_CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute thumbnail_height
    #   Height of each thumbnail within each tile image, in pixels.  Leave blank to maintain aspect ratio with thumbnail width.  If following the aspect ratio would lead to a total tile height greater than 4096, then the job will be rejected.  Must be divisible by 2.
    #
    #   @return [Integer]
    #
    # @!attribute thumbnail_interval
    #   Enter the interval, in seconds, that MediaConvert uses to generate thumbnails.  If the interval you enter doesn't align with the output frame rate, MediaConvert automatically rounds the interval to align with the output frame rate.  For example, if the output frame rate is 29.97 frames per second and you enter 5, MediaConvert uses a 150 frame interval to generate thumbnails.
    #
    #   @return [Float]
    #
    # @!attribute thumbnail_width
    #   Width of each thumbnail within each tile image, in pixels.  Default is 312.  Must be divisible by 8.
    #
    #   @return [Integer]
    #
    # @!attribute tile_height
    #   Number of thumbnails in each column of a tile image. Set a value between 2 and 2048. Must be divisible by 2.
    #
    #   @return [Integer]
    #
    # @!attribute tile_width
    #   Number of thumbnails in each row of a tile image.  Set a value between 1 and 512.
    #
    #   @return [Integer]
    #
    DashIsoImageBasedTrickPlaySettings = ::Struct.new(
      :interval_cadence,
      :thumbnail_height,
      :thumbnail_interval,
      :thumbnail_width,
      :tile_height,
      :tile_width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.thumbnail_height ||= 0
        self.thumbnail_interval ||= 0
        self.thumbnail_width ||= 0
        self.tile_height ||= 0
        self.tile_width ||= 0
      end
    end

    # Includes enum constants for DashIsoIntervalCadence
    #
    module DashIsoIntervalCadence
      # No documentation available.
      #
      FOLLOW_IFRAME = "FOLLOW_IFRAME"

      # No documentation available.
      #
      FOLLOW_CUSTOM = "FOLLOW_CUSTOM"
    end

    # Includes enum constants for DashIsoMpdProfile
    #
    module DashIsoMpdProfile
      # No documentation available.
      #
      MAIN_PROFILE = "MAIN_PROFILE"

      # No documentation available.
      #
      ON_DEMAND_PROFILE = "ON_DEMAND_PROFILE"
    end

    # Includes enum constants for DashIsoPlaybackDeviceCompatibility
    #
    module DashIsoPlaybackDeviceCompatibility
      # No documentation available.
      #
      CENC_V1 = "CENC_V1"

      # No documentation available.
      #
      UNENCRYPTED_SEI = "UNENCRYPTED_SEI"
    end

    # Includes enum constants for DashIsoPtsOffsetHandlingForBFrames
    #
    module DashIsoPtsOffsetHandlingForBFrames
      # No documentation available.
      #
      ZERO_BASED = "ZERO_BASED"

      # No documentation available.
      #
      MATCH_INITIAL_PTS = "MATCH_INITIAL_PTS"
    end

    # Includes enum constants for DashIsoSegmentControl
    #
    module DashIsoSegmentControl
      # No documentation available.
      #
      SINGLE_FILE = "SINGLE_FILE"

      # No documentation available.
      #
      SEGMENTED_FILES = "SEGMENTED_FILES"
    end

    # Includes enum constants for DashIsoSegmentLengthControl
    #
    module DashIsoSegmentLengthControl
      # No documentation available.
      #
      EXACT = "EXACT"

      # No documentation available.
      #
      GOP_MULTIPLE = "GOP_MULTIPLE"
    end

    # Includes enum constants for DashIsoWriteSegmentTimelineInRepresentation
    #
    module DashIsoWriteSegmentTimelineInRepresentation
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for DecryptionMode
    #
    module DecryptionMode
      # No documentation available.
      #
      AES_CTR = "AES_CTR"

      # No documentation available.
      #
      AES_CBC = "AES_CBC"

      # No documentation available.
      #
      AES_GCM = "AES_GCM"
    end

    # Includes enum constants for DeinterlaceAlgorithm
    #
    module DeinterlaceAlgorithm
      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      INTERPOLATE_TICKER = "INTERPOLATE_TICKER"

      # No documentation available.
      #
      BLEND = "BLEND"

      # No documentation available.
      #
      BLEND_TICKER = "BLEND_TICKER"
    end

    # Settings for deinterlacer
    #
    # @!attribute algorithm
    #   Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate (INTERPOLATE) produces sharper pictures, while blend (BLEND) produces smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your source file includes a ticker, such as a scrolling headline at the bottom of the frame.
    #
    #   Enum, one of: ["INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"]
    #
    #   @return [String]
    #
    # @!attribute control
    #   - When set to NORMAL (default), the deinterlacer does not convert frames that are tagged  in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is  a good chance that the metadata has tagged frames as progressive when they are not  progressive. Do not turn on otherwise; processing frames that are already progressive  into progressive will probably result in lower quality video.
    #
    #   Enum, one of: ["FORCE_ALL_FRAMES", "NORMAL"]
    #
    #   @return [String]
    #
    # @!attribute mode
    #   Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive.
    #
    #   Enum, one of: ["DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"]
    #
    #   @return [String]
    #
    Deinterlacer = ::Struct.new(
      :algorithm,
      :control,
      :mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeinterlacerControl
    #
    module DeinterlacerControl
      # No documentation available.
      #
      FORCE_ALL_FRAMES = "FORCE_ALL_FRAMES"

      # No documentation available.
      #
      NORMAL = "NORMAL"
    end

    # Includes enum constants for DeinterlacerMode
    #
    module DeinterlacerMode
      # No documentation available.
      #
      DEINTERLACE = "DEINTERLACE"

      # No documentation available.
      #
      INVERSE_TELECINE = "INVERSE_TELECINE"

      # No documentation available.
      #
      ADAPTIVE = "ADAPTIVE"
    end

    # @!attribute name
    #   The name of the job template to be deleted.
    #
    #   @return [String]
    #
    DeleteJobTemplateInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteJobTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePolicyInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   The name of the preset to be deleted.
    #
    #   @return [String]
    #
    DeletePresetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePresetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   The name of the queue that you want to delete.
    #
    #   @return [String]
    #
    DeleteQueueInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteQueueOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # DescribeEndpointsRequest
    #
    # @!attribute max_results
    #   Optional. Max number of endpoints, up to twenty, that will be returned at one time.
    #
    #   @return [Integer]
    #
    # @!attribute mode
    #   Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist.
    #
    #   Enum, one of: ["DEFAULT", "GET_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   Use this string, provided with the response to a previous request, to request the next batch of endpoints.
    #
    #   @return [String]
    #
    DescribeEndpointsInput = ::Struct.new(
      :max_results,
      :mode,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Includes enum constants for DescribeEndpointsMode
    #
    module DescribeEndpointsMode
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      GET_ONLY = "GET_ONLY"
    end

    # @!attribute endpoints
    #   List of endpoints
    #
    #   @return [Array<Endpoint>]
    #
    # @!attribute next_token
    #   Use this string to request the next batch of endpoints.
    #
    #   @return [String]
    #
    DescribeEndpointsOutput = ::Struct.new(
      :endpoints,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings associated with the destination. Will vary based on the type of destination
    #
    # @!attribute s3_settings
    #   Settings associated with S3 destination
    #
    #   @return [S3DestinationSettings]
    #
    DestinationSettings = ::Struct.new(
      :s3_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the ACM certificate that you want to disassociate from your MediaConvert resource.
    #
    #   @return [String]
    #
    DisassociateCertificateInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # With AWS Elemental MediaConvert, you can create profile 5 or 8.1 Dolby Vision outputs from MXF and IMF sources.
    #
    # @!attribute l6_metadata
    #   Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values.
    #
    #   @return [DolbyVisionLevel6Metadata]
    #
    # @!attribute l6_mode
    #   Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies.
    #
    #   Enum, one of: ["PASSTHROUGH", "RECALCULATE", "SPECIFY"]
    #
    #   @return [String]
    #
    # @!attribute mapping
    #   Required when you set Dolby Vision Profile to Profile 8.1. When you set Content mapping to None, content mapping is not applied to the HDR10-compatible signal. Depending on the source peak nit level, clipping might occur on HDR devices without Dolby Vision. When you set Content mapping to HDR10 1000, the transcoder creates a 1,000 nits peak HDR10-compatible signal by applying static content mapping to the source. This mode is speed-optimized for PQ10 sources with metadata that is created from analysis. For graded Dolby Vision content, be aware that creative intent might not be guaranteed with extreme 1,000 nits trims.
    #
    #   Enum, one of: ["HDR10_NOMAP", "HDR10_1000"]
    #
    #   @return [String]
    #
    # @!attribute profile
    #   Required when you use Dolby Vision processing. Set Profile to Profile 5 to only include frame-interleaved Dolby Vision metadata in your output. Set Profile to Profile 8.1 to include both frame-interleaved Dolby Vision metadata and HDR10 metadata in your output.
    #
    #   Enum, one of: ["PROFILE_5", "PROFILE_8_1"]
    #
    #   @return [String]
    #
    DolbyVision = ::Struct.new(
      :l6_metadata,
      :l6_mode,
      :mapping,
      :profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values.
    #
    # @!attribute max_cll
    #   Maximum Content Light Level. Static HDR metadata that corresponds to the brightest pixel in the entire stream. Measured in nits.
    #
    #   @return [Integer]
    #
    # @!attribute max_fall
    #   Maximum Frame-Average Light Level. Static HDR metadata that corresponds to the highest frame-average brightness in the entire stream. Measured in nits.
    #
    #   @return [Integer]
    #
    DolbyVisionLevel6Metadata = ::Struct.new(
      :max_cll,
      :max_fall,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_cll ||= 0
        self.max_fall ||= 0
      end
    end

    # Includes enum constants for DolbyVisionLevel6Mode
    #
    module DolbyVisionLevel6Mode
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      RECALCULATE = "RECALCULATE"

      # No documentation available.
      #
      SPECIFY = "SPECIFY"
    end

    # Includes enum constants for DolbyVisionMapping
    #
    module DolbyVisionMapping
      # No documentation available.
      #
      HDR10_NOMAP = "HDR10_NOMAP"

      # No documentation available.
      #
      HDR10_1000 = "HDR10_1000"
    end

    # Includes enum constants for DolbyVisionProfile
    #
    module DolbyVisionProfile
      # No documentation available.
      #
      PROFILE_5 = "PROFILE_5"

      # No documentation available.
      #
      PROFILE_8_1 = "PROFILE_8_1"
    end

    # Includes enum constants for DropFrameTimecode
    #
    module DropFrameTimecode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Use these settings to insert a DVB Network Information Table (NIT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings.
    #
    # @!attribute network_id
    #   The numeric value placed in the Network Information Table (NIT).
    #
    #   @return [Integer]
    #
    # @!attribute network_name
    #   The network name text placed in the network_name_descriptor inside the Network Information Table. Maximum length is 256 characters.
    #
    #   @return [String]
    #
    # @!attribute nit_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #
    #   @return [Integer]
    #
    DvbNitSettings = ::Struct.new(
      :network_id,
      :network_name,
      :nit_interval,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.network_id ||= 0
        self.nit_interval ||= 0
      end
    end

    # Use these settings to insert a DVB Service Description Table (SDT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings.
    #
    # @!attribute output_sdt
    #   Selects method of inserting SDT information into output stream.  "Follow input SDT" copies SDT information from input stream to  output stream. "Follow input SDT if present" copies SDT information from  input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter "SDT  Manually" means user will enter the SDT information. "No SDT" means output  stream will not contain SDT information.
    #
    #   Enum, one of: ["SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"]
    #
    #   @return [String]
    #
    # @!attribute sdt_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute service_name
    #   The service name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters.
    #
    #   @return [String]
    #
    # @!attribute service_provider_name
    #   The service provider name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters.
    #
    #   @return [String]
    #
    DvbSdtSettings = ::Struct.new(
      :output_sdt,
      :sdt_interval,
      :service_name,
      :service_provider_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.sdt_interval ||= 0
      end
    end

    # Settings related to DVB-Sub captions. Set up DVB-Sub captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/dvb-sub-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to DVB_SUB.
    #
    # @!attribute alignment
    #   Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   Enum, one of: ["CENTERED", "LEFT", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute apply_font_color
    #   Ignore this setting unless Style Passthrough (StylePassthrough) is set to Enabled and Font color (FontColor) set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color (ApplyFontColor) for additional font color controls. When you choose White text only (WHITE_TEXT_ONLY), or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text.
    #
    #   Enum, one of: ["WHITE_TEXT_ONLY", "ALL_TEXT"]
    #
    #   @return [String]
    #
    # @!attribute background_color
    #   Specify the color of the rectangle behind the captions. Leave background color (BackgroundColor) blank and set Style passthrough (StylePassthrough) to enabled to use the background color data from your input captions, if present.
    #
    #   Enum, one of: ["NONE", "BLACK", "WHITE", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute background_opacity
    #   Specify the opacity of the background rectangle. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough (StylePassthrough) is set to enabled, leave blank to pass through the background style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all backgrounds from your output captions. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    # @!attribute dds_handling
    #   Specify how MediaConvert handles the display definition segment (DDS). Keep the default, None (NONE), to exclude the DDS from this set of captions. Choose No display window (NO_DISPLAY_WINDOW) to have MediaConvert include the DDS but not include display window data. In this case, MediaConvert writes that information to the page composition segment (PCS) instead. Choose Specify (SPECIFIED) to have MediaConvert set up the display window based on the values that you specify in related job settings. For video resolutions that are 576 pixels or smaller in height, MediaConvert doesn't include the DDS, regardless of the value you choose for DDS handling (ddsHandling). In this case, it doesn't write the display window data to the PCS either. Related settings: Use the settings DDS x-coordinate (ddsXCoordinate) and DDS y-coordinate (ddsYCoordinate) to specify the offset between the top left corner of the display window and the top left corner of the video frame. All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["NONE", "SPECIFIED", "NO_DISPLAY_WINDOW"]
    #
    #   @return [String]
    #
    # @!attribute dds_x_coordinate
    #   Use this setting, along with DDS y-coordinate (ddsYCoordinate), to specify the upper left corner of the display definition segment (DDS) display window. With this setting, specify the distance, in pixels, between the left side of the frame and the left side of the DDS display window. Keep the default value, 0, to have MediaConvert automatically choose this offset. Related setting: When you use this setting, you must set DDS handling (ddsHandling) to a value other than None (NONE). MediaConvert uses these values to determine whether to write page position data to the DDS or to the page composition segment (PCS). All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute dds_y_coordinate
    #   Use this setting, along with DDS x-coordinate (ddsXCoordinate), to specify the upper left corner of the display definition segment (DDS) display window. With this setting, specify the distance, in pixels, between the top of the frame and the top of the DDS display window. Keep the default value, 0, to have MediaConvert automatically choose this offset. Related setting: When you use this setting, you must set DDS handling (ddsHandling) to a value other than None (NONE). MediaConvert uses these values to determine whether to write page position data to the DDS or to the page composition segment (PCS). All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute fallback_font
    #   Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font (FallbackFont) to best match (BEST_MATCH), or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input.
    #
    #   Enum, one of: ["BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"]
    #
    #   @return [String]
    #
    # @!attribute font_color
    #   Specify the color of the captions text. Leave Font color (FontColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   Enum, one of: ["WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute font_opacity
    #   Specify the opacity of the burned-in captions. 255 is opaque; 0 is transparent.
    #   Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    # @!attribute font_resolution
    #   Specify the Font resolution (FontResolution) in DPI (dots per inch).
    #   Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    # @!attribute font_script
    #   Set Font script (FontScript) to Automatically determined (AUTOMATIC), or leave blank, to automatically determine the font script in your input captions. Otherwise, set to Simplified Chinese (HANS) or Traditional Chinese (HANT) if your input font script uses Simplified or Traditional Chinese. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   Enum, one of: ["AUTOMATIC", "HANS", "HANT"]
    #
    #   @return [String]
    #
    # @!attribute font_size
    #   Specify the Font size (FontSize) in pixels. Must be a positive integer. Set to 0, or leave blank, for automatic font size. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    # @!attribute height
    #   Specify the height, in pixels, of this set of DVB-Sub captions. The default value is 576 pixels. Related setting: When you use this setting, you must set DDS handling (ddsHandling) to a value other than None (NONE). All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute hex_font_color
    #   Ignore this setting unless your Font color is set to Hex. Enter either six or eight hexidecimal digits, representing red, green, and blue, with two optional extra digits for alpha. For example a value of 1122AABB is a red value of 0x11, a green value of 0x22, a blue value of 0xAA, and an alpha value of 0xBB.
    #
    #   @return [String]
    #
    # @!attribute outline_color
    #   Specify font outline color. Leave Outline color (OutlineColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font outline color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   Enum, one of: ["BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute outline_size
    #   Specify the Outline size (OutlineSize) of the caption text, in pixels. Leave Outline size blank and set Style passthrough (StylePassthrough) to enabled to use the outline size data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_color
    #   Specify the color of the shadow cast by the captions. Leave Shadow color (ShadowColor) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   Enum, one of: ["NONE", "BLACK", "WHITE", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute shadow_opacity
    #   Specify the opacity of the shadow. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough (StylePassthrough) is set to Enabled, leave Shadow opacity (ShadowOpacity) blank to pass through the shadow style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all shadows from your output captions. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_x_offset
    #   Specify the horizontal offset of the shadow, relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_y_offset
    #   Specify the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. Leave Shadow y-offset (ShadowYOffset) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow y-offset data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    # @!attribute style_passthrough
    #   Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use default settings: white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute subtitling_type
    #   Specify whether your DVB subtitles are standard or for hearing impaired. Choose hearing impaired if your subtitles include audio descriptions and dialogue. Choose standard if your subtitles include only dialogue.
    #
    #   Enum, one of: ["HEARING_IMPAIRED", "STANDARD"]
    #
    #   @return [String]
    #
    # @!attribute teletext_spacing
    #   Specify whether the Text spacing (TeletextSpacing) in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid (FIXED_GRID) to conform to the spacing specified in the captions file more accurately. Choose proportional (PROPORTIONAL) to make the text easier to read for closed captions. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   Enum, one of: ["FIXED_GRID", "PROPORTIONAL", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute width
    #   Specify the width, in pixels, of this set of DVB-Sub captions. The default value is 720 pixels. Related setting: When you use this setting, you must set DDS handling (ddsHandling) to a value other than None (NONE). All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute x_position
    #   Specify the horizontal position (XPosition) of the captions, relative to the left side of the outputin pixels. A value of 10 would result in the captions starting 10 pixels from the left ofthe output. If no explicit x_position is provided, the horizontal caption position will bedetermined by the alignment parameter. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    # @!attribute y_position
    #   Specify the vertical position (YPosition) of the captions, relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. Within your job settings, all of your DVB-Sub settings must be identical.
    #
    #   @return [Integer]
    #
    DvbSubDestinationSettings = ::Struct.new(
      :alignment,
      :apply_font_color,
      :background_color,
      :background_opacity,
      :dds_handling,
      :dds_x_coordinate,
      :dds_y_coordinate,
      :fallback_font,
      :font_color,
      :font_opacity,
      :font_resolution,
      :font_script,
      :font_size,
      :height,
      :hex_font_color,
      :outline_color,
      :outline_size,
      :shadow_color,
      :shadow_opacity,
      :shadow_x_offset,
      :shadow_y_offset,
      :style_passthrough,
      :subtitling_type,
      :teletext_spacing,
      :width,
      :x_position,
      :y_position,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.background_opacity ||= 0
        self.dds_x_coordinate ||= 0
        self.dds_y_coordinate ||= 0
        self.font_opacity ||= 0
        self.font_resolution ||= 0
        self.font_size ||= 0
        self.height ||= 0
        self.outline_size ||= 0
        self.shadow_opacity ||= 0
        self.shadow_x_offset ||= 0
        self.shadow_y_offset ||= 0
        self.width ||= 0
        self.x_position ||= 0
        self.y_position ||= 0
      end
    end

    # DVB Sub Source Settings
    #
    # @!attribute pid
    #   When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors.
    #
    #   @return [Integer]
    #
    DvbSubSourceSettings = ::Struct.new(
      :pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pid ||= 0
      end
    end

    # Includes enum constants for DvbSubSubtitleFallbackFont
    #
    module DvbSubSubtitleFallbackFont
      # No documentation available.
      #
      BEST_MATCH = "BEST_MATCH"

      # No documentation available.
      #
      MONOSPACED_SANSSERIF = "MONOSPACED_SANSSERIF"

      # No documentation available.
      #
      MONOSPACED_SERIF = "MONOSPACED_SERIF"

      # No documentation available.
      #
      PROPORTIONAL_SANSSERIF = "PROPORTIONAL_SANSSERIF"

      # No documentation available.
      #
      PROPORTIONAL_SERIF = "PROPORTIONAL_SERIF"
    end

    # Includes enum constants for DvbSubtitleAlignment
    #
    module DvbSubtitleAlignment
      # No documentation available.
      #
      CENTERED = "CENTERED"

      # No documentation available.
      #
      LEFT = "LEFT"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for DvbSubtitleApplyFontColor
    #
    module DvbSubtitleApplyFontColor
      # No documentation available.
      #
      WHITE_TEXT_ONLY = "WHITE_TEXT_ONLY"

      # No documentation available.
      #
      ALL_TEXT = "ALL_TEXT"
    end

    # Includes enum constants for DvbSubtitleBackgroundColor
    #
    module DvbSubtitleBackgroundColor
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for DvbSubtitleFontColor
    #
    module DvbSubtitleFontColor
      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      YELLOW = "YELLOW"

      # No documentation available.
      #
      RED = "RED"

      # No documentation available.
      #
      GREEN = "GREEN"

      # No documentation available.
      #
      BLUE = "BLUE"

      # No documentation available.
      #
      HEX = "HEX"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for DvbSubtitleOutlineColor
    #
    module DvbSubtitleOutlineColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      YELLOW = "YELLOW"

      # No documentation available.
      #
      RED = "RED"

      # No documentation available.
      #
      GREEN = "GREEN"

      # No documentation available.
      #
      BLUE = "BLUE"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for DvbSubtitleShadowColor
    #
    module DvbSubtitleShadowColor
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for DvbSubtitleStylePassthrough
    #
    module DvbSubtitleStylePassthrough
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for DvbSubtitleTeletextSpacing
    #
    module DvbSubtitleTeletextSpacing
      # No documentation available.
      #
      FIXED_GRID = "FIXED_GRID"

      # No documentation available.
      #
      PROPORTIONAL = "PROPORTIONAL"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for DvbSubtitlingType
    #
    module DvbSubtitlingType
      # No documentation available.
      #
      HEARING_IMPAIRED = "HEARING_IMPAIRED"

      # No documentation available.
      #
      STANDARD = "STANDARD"
    end

    # Use these settings to insert a DVB Time and Date Table (TDT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings.
    #
    # @!attribute tdt_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #
    #   @return [Integer]
    #
    DvbTdtSettings = ::Struct.new(
      :tdt_interval,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.tdt_interval ||= 0
      end
    end

    # Includes enum constants for DvbddsHandling
    #
    module DvbddsHandling
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"

      # No documentation available.
      #
      NO_DISPLAY_WINDOW = "NO_DISPLAY_WINDOW"
    end

    # Includes enum constants for Eac3AtmosBitstreamMode
    #
    module Eac3AtmosBitstreamMode
      # No documentation available.
      #
      COMPLETE_MAIN = "COMPLETE_MAIN"
    end

    # Includes enum constants for Eac3AtmosCodingMode
    #
    module Eac3AtmosCodingMode
      # No documentation available.
      #
      CODING_MODE_AUTO = "CODING_MODE_AUTO"

      # No documentation available.
      #
      CODING_MODE_5_1_4 = "CODING_MODE_5_1_4"

      # No documentation available.
      #
      CODING_MODE_7_1_4 = "CODING_MODE_7_1_4"

      # No documentation available.
      #
      CODING_MODE_9_1_6 = "CODING_MODE_9_1_6"
    end

    # Includes enum constants for Eac3AtmosDialogueIntelligence
    #
    module Eac3AtmosDialogueIntelligence
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for Eac3AtmosDownmixControl
    #
    module Eac3AtmosDownmixControl
      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"

      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"
    end

    # Includes enum constants for Eac3AtmosDynamicRangeCompressionLine
    #
    module Eac3AtmosDynamicRangeCompressionLine
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      FILM_LIGHT = "FILM_LIGHT"

      # No documentation available.
      #
      MUSIC_STANDARD = "MUSIC_STANDARD"

      # No documentation available.
      #
      MUSIC_LIGHT = "MUSIC_LIGHT"

      # No documentation available.
      #
      SPEECH = "SPEECH"
    end

    # Includes enum constants for Eac3AtmosDynamicRangeCompressionRf
    #
    module Eac3AtmosDynamicRangeCompressionRf
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      FILM_LIGHT = "FILM_LIGHT"

      # No documentation available.
      #
      MUSIC_STANDARD = "MUSIC_STANDARD"

      # No documentation available.
      #
      MUSIC_LIGHT = "MUSIC_LIGHT"

      # No documentation available.
      #
      SPEECH = "SPEECH"
    end

    # Includes enum constants for Eac3AtmosDynamicRangeControl
    #
    module Eac3AtmosDynamicRangeControl
      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"

      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"
    end

    # Includes enum constants for Eac3AtmosMeteringMode
    #
    module Eac3AtmosMeteringMode
      # No documentation available.
      #
      LEQ_A = "LEQ_A"

      # No documentation available.
      #
      ITU_BS_1770_1 = "ITU_BS_1770_1"

      # No documentation available.
      #
      ITU_BS_1770_2 = "ITU_BS_1770_2"

      # No documentation available.
      #
      ITU_BS_1770_3 = "ITU_BS_1770_3"

      # No documentation available.
      #
      ITU_BS_1770_4 = "ITU_BS_1770_4"
    end

    # Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3_ATMOS.
    #
    # @!attribute bitrate
    #   Specify the average bitrate for this output in bits per second. Valid values: 384k, 448k, 576k, 640k, 768k, 1024k Default value: 448k Note that MediaConvert supports 384k only with channel-based immersive (CBI) 7.1.4 and 5.1.4 inputs. For CBI 9.1.6 and other input types, MediaConvert automatically increases your output bitrate to 448k.
    #
    #   @return [Integer]
    #
    # @!attribute bitstream_mode
    #   Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E).
    #
    #   Enum, one of: ["COMPLETE_MAIN"]
    #
    #   @return [String]
    #
    # @!attribute coding_mode
    #   The coding mode for Dolby Digital Plus JOC (Atmos).
    #
    #   Enum, one of: ["CODING_MODE_AUTO", "CODING_MODE_5_1_4", "CODING_MODE_7_1_4", "CODING_MODE_9_1_6"]
    #
    #   @return [String]
    #
    # @!attribute dialogue_intelligence
    #   Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue analysis.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute downmix_control
    #   Specify whether MediaConvert should use any downmix metadata from your input file. Keep the default value, Custom (SPECIFIED) to provide downmix values in your job settings. Choose Follow source (INITIALIZE_FROM_SOURCE) to use the metadata from your input. Related settings--Use these settings to specify your downmix values: Left only/Right only surround (LoRoSurroundMixLevel), Left total/Right total surround (LtRtSurroundMixLevel), Left total/Right total center (LtRtCenterMixLevel), Left only/Right only center (LoRoCenterMixLevel),  and Stereo downmix (StereoDownmix). When you keep Custom (SPECIFIED) for Downmix control (DownmixControl) and you don't specify values for the related settings, MediaConvert uses default values for those settings.
    #
    #   Enum, one of: ["SPECIFIED", "INITIALIZE_FROM_SOURCE"]
    #
    #   @return [String]
    #
    # @!attribute dynamic_range_compression_line
    #   Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the line operating mode. Default value: Film light (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT) Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom (SPECIFIED) for the setting Dynamic range control (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic range compression line (DynamicRangeCompressionLine). For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #
    #   Enum, one of: ["NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"]
    #
    #   @return [String]
    #
    # @!attribute dynamic_range_compression_rf
    #   Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the RF operating mode. Default value: Film light (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT) Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom (SPECIFIED) for the setting Dynamic range control (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic range compression RF (DynamicRangeCompressionRf). For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #
    #   Enum, one of: ["NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"]
    #
    #   @return [String]
    #
    # @!attribute dynamic_range_control
    #   Specify whether MediaConvert should use any dynamic range control metadata from your input file. Keep the default value, Custom (SPECIFIED), to provide dynamic range control values in your job settings. Choose Follow source (INITIALIZE_FROM_SOURCE) to use the metadata from your input. Related settings--Use these settings to specify your dynamic range control values: Dynamic range compression line (DynamicRangeCompressionLine) and Dynamic range compression RF (DynamicRangeCompressionRf). When you keep the value Custom (SPECIFIED) for Dynamic range control (DynamicRangeControl) and you don't specify values for the related settings, MediaConvert uses default values for those settings.
    #
    #   Enum, one of: ["SPECIFIED", "INITIALIZE_FROM_SOURCE"]
    #
    #   @return [String]
    #
    # @!attribute lo_ro_center_mix_level
    #   Specify a value for the following Dolby Atmos setting: Left only/Right only center mix (Lo/Ro center). MediaConvert uses this value for downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB). Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, MediaConvert ignores Left only/Right only center (LoRoCenterMixLevel).
    #
    #   @return [Float]
    #
    # @!attribute lo_ro_surround_mix_level
    #   Specify a value for the following Dolby Atmos setting: Left only/Right only (Lo/Ro surround). MediaConvert uses this value for downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, MediaConvert ignores Left only/Right only surround (LoRoSurroundMixLevel).
    #
    #   @return [Float]
    #
    # @!attribute lt_rt_center_mix_level
    #   Specify a value for the following Dolby Atmos setting: Left total/Right total center mix (Lt/Rt center). MediaConvert uses this value for downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB) Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, MediaConvert ignores Left total/Right total center (LtRtCenterMixLevel).
    #
    #   @return [Float]
    #
    # @!attribute lt_rt_surround_mix_level
    #   Specify a value for the following Dolby Atmos setting: Left total/Right total surround mix (Lt/Rt surround). MediaConvert uses this value for downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB) Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, the service ignores Left total/Right total surround (LtRtSurroundMixLevel).
    #
    #   @return [Float]
    #
    # @!attribute metering_mode
    #   Choose how the service meters the loudness of your audio.
    #
    #   Enum, one of: ["LEQ_A", "ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   This value is always 48000. It represents the sample rate in Hz.
    #
    #   @return [Integer]
    #
    # @!attribute speech_threshold
    #   Specify the percentage of audio content, from 0% to 100%, that must be speech in order for the encoder to use the measured speech loudness as the overall program loudness. Default value: 15%
    #
    #   @return [Integer]
    #
    # @!attribute stereo_downmix
    #   Choose how the service does stereo downmixing. Default value: Not indicated (ATMOS_STORAGE_DDP_DMIXMOD_NOT_INDICATED) Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, MediaConvert ignores Stereo downmix (StereoDownmix).
    #
    #   Enum, one of: ["NOT_INDICATED", "STEREO", "SURROUND", "DPL2"]
    #
    #   @return [String]
    #
    # @!attribute surround_ex_mode
    #   Specify whether your input audio has an additional center rear surround channel matrix encoded into your left and right surround channels.
    #
    #   Enum, one of: ["NOT_INDICATED", "ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    Eac3AtmosSettings = ::Struct.new(
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dialogue_intelligence,
      :downmix_control,
      :dynamic_range_compression_line,
      :dynamic_range_compression_rf,
      :dynamic_range_control,
      :lo_ro_center_mix_level,
      :lo_ro_surround_mix_level,
      :lt_rt_center_mix_level,
      :lt_rt_surround_mix_level,
      :metering_mode,
      :sample_rate,
      :speech_threshold,
      :stereo_downmix,
      :surround_ex_mode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.lo_ro_center_mix_level ||= 0
        self.lo_ro_surround_mix_level ||= 0
        self.lt_rt_center_mix_level ||= 0
        self.lt_rt_surround_mix_level ||= 0
        self.sample_rate ||= 0
        self.speech_threshold ||= 0
      end
    end

    # Includes enum constants for Eac3AtmosStereoDownmix
    #
    module Eac3AtmosStereoDownmix
      # No documentation available.
      #
      NOT_INDICATED = "NOT_INDICATED"

      # No documentation available.
      #
      STEREO = "STEREO"

      # No documentation available.
      #
      SURROUND = "SURROUND"

      # No documentation available.
      #
      DPL2 = "DPL2"
    end

    # Includes enum constants for Eac3AtmosSurroundExMode
    #
    module Eac3AtmosSurroundExMode
      # No documentation available.
      #
      NOT_INDICATED = "NOT_INDICATED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for Eac3AttenuationControl
    #
    module Eac3AttenuationControl
      # No documentation available.
      #
      ATTENUATE_3_DB = "ATTENUATE_3_DB"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for Eac3BitstreamMode
    #
    module Eac3BitstreamMode
      # No documentation available.
      #
      COMPLETE_MAIN = "COMPLETE_MAIN"

      # No documentation available.
      #
      COMMENTARY = "COMMENTARY"

      # No documentation available.
      #
      EMERGENCY = "EMERGENCY"

      # No documentation available.
      #
      HEARING_IMPAIRED = "HEARING_IMPAIRED"

      # No documentation available.
      #
      VISUALLY_IMPAIRED = "VISUALLY_IMPAIRED"
    end

    # Includes enum constants for Eac3CodingMode
    #
    module Eac3CodingMode
      # No documentation available.
      #
      CODING_MODE_1_0 = "CODING_MODE_1_0"

      # No documentation available.
      #
      CODING_MODE_2_0 = "CODING_MODE_2_0"

      # No documentation available.
      #
      CODING_MODE_3_2 = "CODING_MODE_3_2"
    end

    # Includes enum constants for Eac3DcFilter
    #
    module Eac3DcFilter
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for Eac3DynamicRangeCompressionLine
    #
    module Eac3DynamicRangeCompressionLine
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      FILM_LIGHT = "FILM_LIGHT"

      # No documentation available.
      #
      MUSIC_STANDARD = "MUSIC_STANDARD"

      # No documentation available.
      #
      MUSIC_LIGHT = "MUSIC_LIGHT"

      # No documentation available.
      #
      SPEECH = "SPEECH"
    end

    # Includes enum constants for Eac3DynamicRangeCompressionRf
    #
    module Eac3DynamicRangeCompressionRf
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      FILM_LIGHT = "FILM_LIGHT"

      # No documentation available.
      #
      MUSIC_STANDARD = "MUSIC_STANDARD"

      # No documentation available.
      #
      MUSIC_LIGHT = "MUSIC_LIGHT"

      # No documentation available.
      #
      SPEECH = "SPEECH"
    end

    # Includes enum constants for Eac3LfeControl
    #
    module Eac3LfeControl
      # No documentation available.
      #
      LFE = "LFE"

      # No documentation available.
      #
      NO_LFE = "NO_LFE"
    end

    # Includes enum constants for Eac3LfeFilter
    #
    module Eac3LfeFilter
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for Eac3MetadataControl
    #
    module Eac3MetadataControl
      # No documentation available.
      #
      FOLLOW_INPUT = "FOLLOW_INPUT"

      # No documentation available.
      #
      USE_CONFIGURED = "USE_CONFIGURED"
    end

    # Includes enum constants for Eac3PassthroughControl
    #
    module Eac3PassthroughControl
      # No documentation available.
      #
      WHEN_POSSIBLE = "WHEN_POSSIBLE"

      # No documentation available.
      #
      NO_PASSTHROUGH = "NO_PASSTHROUGH"
    end

    # Includes enum constants for Eac3PhaseControl
    #
    module Eac3PhaseControl
      # No documentation available.
      #
      SHIFT_90_DEGREES = "SHIFT_90_DEGREES"

      # No documentation available.
      #
      NO_SHIFT = "NO_SHIFT"
    end

    # Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3.
    #
    # @!attribute attenuation_control
    #   If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
    #
    #   Enum, one of: ["ATTENUATE_3_DB", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. Valid bitrates depend on the coding mode.
    #
    #   @return [Integer]
    #
    # @!attribute bitstream_mode
    #   Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E).
    #
    #   Enum, one of: ["COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"]
    #
    #   @return [String]
    #
    # @!attribute coding_mode
    #   Dolby Digital Plus coding mode. Determines number of channels.
    #
    #   Enum, one of: ["CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"]
    #
    #   @return [String]
    #
    # @!attribute dc_filter
    #   Activates a DC highpass filter for all input channels.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute dialnorm
    #   Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
    #
    #   @return [Integer]
    #
    # @!attribute dynamic_range_compression_line
    #   Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #
    #   Enum, one of: ["NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"]
    #
    #   @return [String]
    #
    # @!attribute dynamic_range_compression_rf
    #   Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #
    #   Enum, one of: ["NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"]
    #
    #   @return [String]
    #
    # @!attribute lfe_control
    #   When encoding 3/2 audio, controls whether the LFE channel is enabled
    #
    #   Enum, one of: ["LFE", "NO_LFE"]
    #
    #   @return [String]
    #
    # @!attribute lfe_filter
    #   Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute lo_ro_center_mix_level
    #   Specify a value for the following Dolby Digital Plus setting: Left only/Right only center mix (Lo/Ro center). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left only/Right only center (loRoCenterMixLevel).
    #
    #   @return [Float]
    #
    # @!attribute lo_ro_surround_mix_level
    #   Specify a value for the following Dolby Digital Plus setting: Left only/Right only (Lo/Ro surround). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left only/Right only surround (loRoSurroundMixLevel).
    #
    #   @return [Float]
    #
    # @!attribute lt_rt_center_mix_level
    #   Specify a value for the following Dolby Digital Plus setting: Left total/Right total center mix (Lt/Rt center). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left total/Right total center (ltRtCenterMixLevel).
    #
    #   @return [Float]
    #
    # @!attribute lt_rt_surround_mix_level
    #   Specify a value for the following Dolby Digital Plus setting: Left total/Right total surround mix (Lt/Rt surround). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left total/Right total surround (ltRtSurroundMixLevel).
    #
    #   @return [Float]
    #
    # @!attribute metadata_control
    #   When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    #
    #   Enum, one of: ["FOLLOW_INPUT", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute passthrough_control
    #   When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
    #
    #   Enum, one of: ["WHEN_POSSIBLE", "NO_PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute phase_control
    #   Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode.
    #
    #   Enum, one of: ["SHIFT_90_DEGREES", "NO_SHIFT"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   This value is always 48000. It represents the sample rate in Hz.
    #
    #   @return [Integer]
    #
    # @!attribute stereo_downmix
    #   Choose how the service does stereo downmixing. This setting only applies if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Stereo downmix (Eac3StereoDownmix).
    #
    #   Enum, one of: ["NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"]
    #
    #   @return [String]
    #
    # @!attribute surround_ex_mode
    #   When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.
    #
    #   Enum, one of: ["NOT_INDICATED", "ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute surround_mode
    #   When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
    #
    #   Enum, one of: ["NOT_INDICATED", "ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    Eac3Settings = ::Struct.new(
      :attenuation_control,
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dc_filter,
      :dialnorm,
      :dynamic_range_compression_line,
      :dynamic_range_compression_rf,
      :lfe_control,
      :lfe_filter,
      :lo_ro_center_mix_level,
      :lo_ro_surround_mix_level,
      :lt_rt_center_mix_level,
      :lt_rt_surround_mix_level,
      :metadata_control,
      :passthrough_control,
      :phase_control,
      :sample_rate,
      :stereo_downmix,
      :surround_ex_mode,
      :surround_mode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.dialnorm ||= 0
        self.lo_ro_center_mix_level ||= 0
        self.lo_ro_surround_mix_level ||= 0
        self.lt_rt_center_mix_level ||= 0
        self.lt_rt_surround_mix_level ||= 0
        self.sample_rate ||= 0
      end
    end

    # Includes enum constants for Eac3StereoDownmix
    #
    module Eac3StereoDownmix
      # No documentation available.
      #
      NOT_INDICATED = "NOT_INDICATED"

      # No documentation available.
      #
      LO_RO = "LO_RO"

      # No documentation available.
      #
      LT_RT = "LT_RT"

      # No documentation available.
      #
      DPL2 = "DPL2"
    end

    # Includes enum constants for Eac3SurroundExMode
    #
    module Eac3SurroundExMode
      # No documentation available.
      #
      NOT_INDICATED = "NOT_INDICATED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for Eac3SurroundMode
    #
    module Eac3SurroundMode
      # No documentation available.
      #
      NOT_INDICATED = "NOT_INDICATED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for EmbeddedConvert608To708
    #
    module EmbeddedConvert608To708
      # No documentation available.
      #
      UPCONVERT = "UPCONVERT"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Settings related to CEA/EIA-608 and CEA/EIA-708 (also called embedded or ancillary) captions. Set up embedded captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/embedded-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to EMBEDDED, EMBEDDED_PLUS_SCTE20, or SCTE20_PLUS_EMBEDDED.
    #
    # @!attribute destination608_channel_number
    #   Ignore this setting unless your input captions are SCC format and your output captions are embedded in the video stream. Specify a CC number for each captions channel in this output. If you have two channels, choose CC numbers that aren't in the same field. For example, choose 1 and 3. For more information, see https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded.
    #
    #   @return [Integer]
    #
    # @!attribute destination708_service_number
    #   Ignore this setting unless your input captions are SCC format and you want both 608 and 708 captions embedded in your output stream. Optionally, specify the 708 service number for each output captions channel. Choose a different number for each channel. To use this setting, also set Force 608 to 708 upconvert (Convert608To708) to Upconvert (UPCONVERT) in your input captions selector settings. If you choose to upconvert but don't specify a 708 service number, MediaConvert uses the number that you specify for CC channel number (destination608ChannelNumber) for the 708 service number. For more information, see https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded.
    #
    #   @return [Integer]
    #
    EmbeddedDestinationSettings = ::Struct.new(
      :destination608_channel_number,
      :destination708_service_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.destination608_channel_number ||= 0
        self.destination708_service_number ||= 0
      end
    end

    # Settings for embedded captions Source
    #
    # @!attribute convert608_to708
    #   Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
    #
    #   Enum, one of: ["UPCONVERT", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute source608_channel_number
    #   Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
    #
    #   @return [Integer]
    #
    # @!attribute source608_track_number
    #   Specifies the video track index used for extracting captions. The system only supports one input video track, so this should always be set to '1'.
    #
    #   @return [Integer]
    #
    # @!attribute terminate_captions
    #   By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting.
    #
    #   Enum, one of: ["END_OF_INPUT", "DISABLED"]
    #
    #   @return [String]
    #
    EmbeddedSourceSettings = ::Struct.new(
      :convert608_to708,
      :source608_channel_number,
      :source608_track_number,
      :terminate_captions,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.source608_channel_number ||= 0
        self.source608_track_number ||= 0
      end
    end

    # Includes enum constants for EmbeddedTerminateCaptions
    #
    module EmbeddedTerminateCaptions
      # No documentation available.
      #
      END_OF_INPUT = "END_OF_INPUT"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for EmbeddedTimecodeOverride
    #
    module EmbeddedTimecodeOverride
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      USE_MDPM = "USE_MDPM"
    end

    # Describes an account-specific API endpoint.
    #
    # @!attribute url
    #   URL of endpoint
    #
    #   @return [String]
    #
    Endpoint = ::Struct.new(
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # ESAM ManifestConfirmConditionNotification defined by OC-SP-ESAM-API-I03-131025.
    #
    # @!attribute mcc_xml
    #   Provide your ESAM ManifestConfirmConditionNotification XML document inside your JSON job settings. Form the XML document as per OC-SP-ESAM-API-I03-131025. The transcoder will use the Manifest Conditioning instructions in the message that you supply.
    #
    #   @return [String]
    #
    EsamManifestConfirmConditionNotification = ::Struct.new(
      :mcc_xml,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings.
    #
    # @!attribute manifest_confirm_condition_notification
    #   Specifies an ESAM ManifestConfirmConditionNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest conditioning instructions that you provide in the setting MCC XML (mccXml).
    #
    #   @return [EsamManifestConfirmConditionNotification]
    #
    # @!attribute response_signal_preroll
    #   Specifies the stream distance, in milliseconds, between the SCTE 35 messages that the transcoder places and the splice points that they refer to. If the time between the start of the asset and the SCTE-35 message is less than this value, then the transcoder places the SCTE-35 marker at the beginning of the stream.
    #
    #   @return [Integer]
    #
    # @!attribute signal_processing_notification
    #   Specifies an ESAM SignalProcessingNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing instructions that you provide in the setting SCC XML (sccXml).
    #
    #   @return [EsamSignalProcessingNotification]
    #
    EsamSettings = ::Struct.new(
      :manifest_confirm_condition_notification,
      :response_signal_preroll,
      :signal_processing_notification,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.response_signal_preroll ||= 0
      end
    end

    # ESAM SignalProcessingNotification data defined by OC-SP-ESAM-API-I03-131025.
    #
    # @!attribute scc_xml
    #   Provide your ESAM SignalProcessingNotification XML document inside your JSON job settings. Form the XML document as per OC-SP-ESAM-API-I03-131025. The transcoder will use the signal processing instructions in the message that you supply. Provide your ESAM SignalProcessingNotification XML document inside your JSON job settings. For your MPEG2-TS file outputs, if you want the service to place SCTE-35 markers at the insertion points you specify in the XML document, you must also enable SCTE-35 ESAM (scte35Esam). Note that you can either specify an ESAM XML document or enable SCTE-35 passthrough. You can't do both.
    #
    #   @return [String]
    #
    EsamSignalProcessingNotification = ::Struct.new(
      :scc_xml,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # If your source content has EIA-608 Line 21 Data Services, enable this feature to specify what MediaConvert does with the Extended Data Services (XDS) packets. You can choose to pass through XDS packets, or remove them from the output. For more information about XDS, see EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory.
    #
    # @!attribute copy_protection_action
    #   The action to take on copy and redistribution control XDS packets.  If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions.
    #
    #   Enum, one of: ["PASSTHROUGH", "STRIP"]
    #
    #   @return [String]
    #
    # @!attribute vchip_action
    #   The action to take on content advisory XDS packets.  If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions.
    #
    #   Enum, one of: ["PASSTHROUGH", "STRIP"]
    #
    #   @return [String]
    #
    ExtendedDataServices = ::Struct.new(
      :copy_protection_action,
      :vchip_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for F4vMoovPlacement
    #
    module F4vMoovPlacement
      # No documentation available.
      #
      PROGRESSIVE_DOWNLOAD = "PROGRESSIVE_DOWNLOAD"

      # No documentation available.
      #
      NORMAL = "NORMAL"
    end

    # Settings for F4v container
    #
    # @!attribute moov_placement
    #   If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.
    #
    #   Enum, one of: ["PROGRESSIVE_DOWNLOAD", "NORMAL"]
    #
    #   @return [String]
    #
    F4vSettings = ::Struct.new(
      :moov_placement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings related to your File output group. MediaConvert uses this group of settings to generate a single standalone file, rather than a streaming package. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to FILE_GROUP_SETTINGS.
    #
    # @!attribute destination
    #   Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #
    #   @return [String]
    #
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #
    #   @return [DestinationSettings]
    #
    FileGroupSettings = ::Struct.new(
      :destination,
      :destination_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FileSourceConvert608To708
    #
    module FileSourceConvert608To708
      # No documentation available.
      #
      UPCONVERT = "UPCONVERT"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # If your input captions are SCC, SMI, SRT, STL, TTML, WebVTT, or IMSC 1.1 in an xml file, specify the URI of the input caption source file. If your caption source is IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings.
    #
    # @!attribute convert608_to708
    #   Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
    #
    #   Enum, one of: ["UPCONVERT", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute framerate
    #   Ignore this setting unless your input captions format is SCC. To have the service compensate for differing frame rates between your input captions and input video, specify the frame rate of the captions file. Specify this value as a fraction. When you work directly in your JSON job specification, use the settings framerateNumerator and framerateDenominator. For example, you might specify 24 / 1 for 24 fps, 25 / 1 for 25 fps, 24000 / 1001 for 23.976 fps, or 30000 / 1001 for 29.97 fps.
    #
    #   @return [CaptionSourceFramerate]
    #
    # @!attribute source_file
    #   External caption file used for loading captions. Accepted file extensions are 'scc', 'ttml', 'dfxp', 'stl', 'srt', 'xml', 'smi', 'webvtt', and 'vtt'.
    #
    #   @return [String]
    #
    # @!attribute time_delta
    #   Optional. Use this setting when you need to adjust the sync between your sidecar captions and your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/time-delta-use-cases.html. Enter a positive or negative number to modify the times in the captions file. For example, type 15 to add 15 seconds to all the times in the captions file. Type -5 to subtract 5 seconds from the times in the captions file. You can optionally specify your time delta in milliseconds instead of seconds. When you do so, set the related setting, Time delta units (TimeDeltaUnits) to Milliseconds (MILLISECONDS). Note that, when you specify a time delta for timecode-based caption sources, such as SCC and STL, and your time delta isn't a multiple of the input frame rate, MediaConvert snaps the captions to the nearest frame. For example, when your input video frame rate is 25 fps and you specify 1010ms for time delta, MediaConvert delays your captions by 1000 ms.
    #
    #   @return [Integer]
    #
    # @!attribute time_delta_units
    #   When you use the setting Time delta (TimeDelta) to adjust the sync between your sidecar captions and your video, use this setting to specify the units for the delta that you specify. When you don't specify a value for Time delta units (TimeDeltaUnits), MediaConvert uses seconds by default.
    #
    #   Enum, one of: ["SECONDS", "MILLISECONDS"]
    #
    #   @return [String]
    #
    FileSourceSettings = ::Struct.new(
      :convert608_to708,
      :framerate,
      :source_file,
      :time_delta,
      :time_delta_units,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.time_delta ||= 0
      end
    end

    # Includes enum constants for FileSourceTimeDeltaUnits
    #
    module FileSourceTimeDeltaUnits
      # No documentation available.
      #
      SECONDS = "SECONDS"

      # No documentation available.
      #
      MILLISECONDS = "MILLISECONDS"
    end

    # Includes enum constants for FontScript
    #
    module FontScript
      # No documentation available.
      #
      AUTOMATIC = "AUTOMATIC"

      # No documentation available.
      #
      HANS = "HANS"

      # No documentation available.
      #
      HANT = "HANT"
    end

    # You don't have permissions for this action with the credentials you sent.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Use Force include renditions to specify one or more resolutions to include your ABR stack. * (Recommended) To optimize automated ABR, specify as few resolutions as possible. * (Required) The number of resolutions that you specify must be equal to, or less than, the Max renditions setting. * If you specify a Min top rendition size rule, specify at least one resolution that is equal to, or greater than, Min top rendition size. * If you specify a Min bottom rendition size rule, only specify resolutions that are equal to, or greater than, Min bottom rendition size. * If you specify a Force include renditions rule, do not specify a separate rule for Allowed renditions. * Note: The ABR stack may include other resolutions that you do not specify here, depending on the Max renditions setting.
    #
    # @!attribute height
    #   Use Height to define the video resolution height, in pixels, for this rule.
    #
    #   @return [Integer]
    #
    # @!attribute width
    #   Use Width to define the video resolution width, in pixels, for this rule.
    #
    #   @return [Integer]
    #
    ForceIncludeRenditionSize = ::Struct.new(
      :height,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.height ||= 0
        self.width ||= 0
      end
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE.
    #
    # @!attribute framerate_denominator
    #   Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.n.jpg where n is the 0-based sequence number of each Capture.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.NNNNNNN.jpg where N is the 0-based frame sequence number zero padded to 7 decimal places.
    #
    #   @return [Integer]
    #
    # @!attribute max_captures
    #   Maximum number of captures (encoded jpg output files).
    #
    #   @return [Integer]
    #
    # @!attribute quality
    #   JPEG Quality - a higher value equals higher quality.
    #
    #   @return [Integer]
    #
    FrameCaptureSettings = ::Struct.new(
      :framerate_denominator,
      :framerate_numerator,
      :max_captures,
      :quality,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.max_captures ||= 0
        self.quality ||= 0
      end
    end

    # @!attribute id
    #   the job ID of the job.
    #
    #   @return [String]
    #
    GetJobInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    #   @return [Job]
    #
    GetJobOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   The name of the job template.
    #
    #   @return [String]
    #
    GetJobTemplateInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_template
    #   A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
    #
    #   @return [JobTemplate]
    #
    GetJobTemplateOutput = ::Struct.new(
      :job_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetPolicyInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    #   @return [Policy]
    #
    GetPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   The name of the preset.
    #
    #   @return [String]
    #
    GetPresetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute preset
    #   A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
    #
    #   @return [Preset]
    #
    GetPresetOutput = ::Struct.new(
      :preset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   The name of the queue that you want information about.
    #
    #   @return [String]
    #
    GetQueueInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute queue
    #   You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.
    #
    #   @return [Queue]
    #
    GetQueueOutput = ::Struct.new(
      :queue,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for H264AdaptiveQuantization
    #
    module H264AdaptiveQuantization
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      HIGHER = "HIGHER"

      # No documentation available.
      #
      MAX = "MAX"
    end

    # Includes enum constants for H264CodecLevel
    #
    module H264CodecLevel
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      LEVEL_1 = "LEVEL_1"

      # No documentation available.
      #
      LEVEL_1_1 = "LEVEL_1_1"

      # No documentation available.
      #
      LEVEL_1_2 = "LEVEL_1_2"

      # No documentation available.
      #
      LEVEL_1_3 = "LEVEL_1_3"

      # No documentation available.
      #
      LEVEL_2 = "LEVEL_2"

      # No documentation available.
      #
      LEVEL_2_1 = "LEVEL_2_1"

      # No documentation available.
      #
      LEVEL_2_2 = "LEVEL_2_2"

      # No documentation available.
      #
      LEVEL_3 = "LEVEL_3"

      # No documentation available.
      #
      LEVEL_3_1 = "LEVEL_3_1"

      # No documentation available.
      #
      LEVEL_3_2 = "LEVEL_3_2"

      # No documentation available.
      #
      LEVEL_4 = "LEVEL_4"

      # No documentation available.
      #
      LEVEL_4_1 = "LEVEL_4_1"

      # No documentation available.
      #
      LEVEL_4_2 = "LEVEL_4_2"

      # No documentation available.
      #
      LEVEL_5 = "LEVEL_5"

      # No documentation available.
      #
      LEVEL_5_1 = "LEVEL_5_1"

      # No documentation available.
      #
      LEVEL_5_2 = "LEVEL_5_2"
    end

    # Includes enum constants for H264CodecProfile
    #
    module H264CodecProfile
      # No documentation available.
      #
      BASELINE = "BASELINE"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      HIGH_10BIT = "HIGH_10BIT"

      # No documentation available.
      #
      HIGH_422 = "HIGH_422"

      # No documentation available.
      #
      HIGH_422_10BIT = "HIGH_422_10BIT"

      # No documentation available.
      #
      MAIN = "MAIN"
    end

    # Includes enum constants for H264DynamicSubGop
    #
    module H264DynamicSubGop
      # No documentation available.
      #
      ADAPTIVE = "ADAPTIVE"

      # No documentation available.
      #
      STATIC = "STATIC"
    end

    # Includes enum constants for H264EntropyEncoding
    #
    module H264EntropyEncoding
      # No documentation available.
      #
      CABAC = "CABAC"

      # No documentation available.
      #
      CAVLC = "CAVLC"
    end

    # Includes enum constants for H264FieldEncoding
    #
    module H264FieldEncoding
      # No documentation available.
      #
      PAFF = "PAFF"

      # No documentation available.
      #
      FORCE_FIELD = "FORCE_FIELD"

      # No documentation available.
      #
      MBAFF = "MBAFF"
    end

    # Includes enum constants for H264FlickerAdaptiveQuantization
    #
    module H264FlickerAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H264FramerateControl
    #
    module H264FramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for H264FramerateConversionAlgorithm
    #
    module H264FramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Includes enum constants for H264GopBReference
    #
    module H264GopBReference
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H264GopSizeUnits
    #
    module H264GopSizeUnits
      # No documentation available.
      #
      FRAMES = "FRAMES"

      # No documentation available.
      #
      SECONDS = "SECONDS"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for H264InterlaceMode
    #
    module H264InterlaceMode
      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"

      # No documentation available.
      #
      TOP_FIELD = "TOP_FIELD"

      # No documentation available.
      #
      BOTTOM_FIELD = "BOTTOM_FIELD"

      # No documentation available.
      #
      FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD"

      # No documentation available.
      #
      FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD"
    end

    # Includes enum constants for H264ParControl
    #
    module H264ParControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for H264QualityTuningLevel
    #
    module H264QualityTuningLevel
      # No documentation available.
      #
      SINGLE_PASS = "SINGLE_PASS"

      # No documentation available.
      #
      SINGLE_PASS_HQ = "SINGLE_PASS_HQ"

      # No documentation available.
      #
      MULTI_PASS_HQ = "MULTI_PASS_HQ"
    end

    # Settings for quality-defined variable bitrate encoding with the H.264 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode).
    #
    # @!attribute max_average_bitrate
    #   Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value that you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output.
    #
    #   @return [Integer]
    #
    # @!attribute qvbr_quality_level
    #   Use this setting only when you set Rate control mode (RateControlMode) to QVBR. Specify the target quality level for this output. MediaConvert determines the right number of bits to use for each part of the video to maintain the video quality that you specify. When you keep the default value, AUTO, MediaConvert picks a quality level for you, based on characteristics of your input video. If you prefer to specify a quality level, specify a number from 1 through 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33.
    #
    #   @return [Integer]
    #
    # @!attribute qvbr_quality_level_fine_tune
    #   Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33.
    #
    #   @return [Float]
    #
    H264QvbrSettings = ::Struct.new(
      :max_average_bitrate,
      :qvbr_quality_level,
      :qvbr_quality_level_fine_tune,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_average_bitrate ||= 0
        self.qvbr_quality_level ||= 0
        self.qvbr_quality_level_fine_tune ||= 0
      end
    end

    # Includes enum constants for H264RateControlMode
    #
    module H264RateControlMode
      # No documentation available.
      #
      VBR = "VBR"

      # No documentation available.
      #
      CBR = "CBR"

      # No documentation available.
      #
      QVBR = "QVBR"
    end

    # Includes enum constants for H264RepeatPps
    #
    module H264RepeatPps
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H264ScanTypeConversionMode
    #
    module H264ScanTypeConversionMode
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE"
    end

    # Includes enum constants for H264SceneChangeDetect
    #
    module H264SceneChangeDetect
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      TRANSITION_DETECTION = "TRANSITION_DETECTION"
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264.
    #
    # @!attribute adaptive_quantization
    #   Keep the default value, Auto (AUTO), for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set H264AdaptiveQuantization to a value other than Auto (AUTO). Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization (H264AdaptiveQuantization) to Off (OFF). Related settings: The value that you choose here applies to the following settings: H264FlickerAdaptiveQuantization, H264SpatialAdaptiveQuantization, and H264TemporalAdaptiveQuantization.
    #
    #   Enum, one of: ["OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"]
    #
    #   @return [String]
    #
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
    #
    #   @return [Integer]
    #
    # @!attribute codec_level
    #   Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto (AUTO).
    #
    #   Enum, one of: ["AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"]
    #
    #   @return [String]
    #
    # @!attribute codec_profile
    #   H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.
    #
    #   Enum, one of: ["BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"]
    #
    #   @return [String]
    #
    # @!attribute dynamic_sub_gop
    #   Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
    #
    #   Enum, one of: ["ADAPTIVE", "STATIC"]
    #
    #   @return [String]
    #
    # @!attribute entropy_encoding
    #   Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.
    #
    #   Enum, one of: ["CABAC", "CAVLC"]
    #
    #   @return [String]
    #
    # @!attribute field_encoding
    #   The video encoding method for your MPEG-4 AVC output. Keep the default value, PAFF, to have MediaConvert use PAFF encoding for interlaced outputs. Choose Force field (FORCE_FIELD) to disable PAFF encoding and create separate interlaced fields. Choose MBAFF to disable PAFF and have MediaConvert use MBAFF encoding for interlaced outputs.
    #
    #   Enum, one of: ["PAFF", "FORCE_FIELD", "MBAFF"]
    #
    #   @return [String]
    #
    # @!attribute flicker_adaptive_quantization
    #   Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264FlickerAdaptiveQuantization is Disabled (DISABLED). Change this value to Enabled (ENABLED) to reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. To manually enable or disable H264FlickerAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute gop_b_reference
    #   If enable, use reference B frames for GOP structures that have B frames > 1.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute gop_closed_cadence
    #   Specify the relative frequency of open to closed GOPs in this output. For example, if you want to allow four open GOPs and then require a closed GOP, set this value to 5. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, keep the default value by leaving this setting out of your JSON job specification. In the console, do this by keeping the default empty value. If you do explicitly specify a value, for segmented outputs, don't set this value to 0.
    #
    #   @return [Integer]
    #
    # @!attribute gop_size
    #   Use this setting only when you set GOP mode control (GopSizeUnits) to Specified, frames (FRAMES) or Specified, seconds (SECONDS). Specify the GOP length using a whole number of frames or a decimal value of seconds. MediaConvert will interpret this value as frames or seconds depending on the value you choose for GOP mode control (GopSizeUnits). If you want to allow MediaConvert to automatically determine GOP size, leave GOP size blank and set GOP mode control to Auto (AUTO). If your output group specifies HLS, DASH, or CMAF, leave GOP size blank and set GOP mode control to Auto in each output in your output group.
    #
    #   @return [Float]
    #
    # @!attribute gop_size_units
    #   Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto (AUTO) and and leave GOP size (GopSize) blank. By default, if you don't specify GOP mode control (GopSizeUnits), MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames (FRAMES) or Specified, seconds (SECONDS) and then provide the GOP length in the related setting GOP size (GopSize).
    #
    #   Enum, one of: ["FRAMES", "SECONDS", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute hrd_buffer_initial_fill_percentage
    #   Percentage of the buffer that should initially be filled (HRD buffer model).
    #
    #   @return [Integer]
    #
    # @!attribute hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #
    #   @return [Integer]
    #
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #
    #   Enum, one of: ["PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"]
    #
    #   @return [String]
    #
    # @!attribute max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
    #
    #   @return [Integer]
    #
    # @!attribute min_i_interval
    #   Use this setting only when you also enable Scene change detection (SceneChangeDetect). This setting determines how the encoder manages the spacing between I-frames that it inserts as part of the I-frame cadence and the I-frames that it inserts for Scene change detection. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, keep the default value by leaving this setting out of your JSON job specification. In the console, do this by keeping the default empty value. When you explicitly specify a value for this setting, the encoder determines whether to skip a cadence-driven I-frame by the value you set. For example, if you set Min I interval (minIInterval) to 5 and a cadence-driven I-frame would fall within 5 frames of a scene-change I-frame, then the encoder skips the cadence-driven I-frame. In this way, one GOP is shrunk slightly and one GOP is stretched slightly. When the cadence-driven I-frames are farther from the scene-change I-frame than the value you set, then the encoder leaves all I-frames in place and the GOPs surrounding the scene change are smaller than the usual cadence GOPs.
    #
    #   @return [Integer]
    #
    # @!attribute number_b_frames_between_reference_frames
    #   This setting to determines the number of B-frames that MediaConvert puts between reference frames in this output. We recommend that you use automatic behavior to allow the transcoder to choose the best value based on characteristics of your input video. In the console, choose AUTO to select this automatic behavior. When you manually edit your JSON job specification, leave this setting out to choose automatic behavior. When you want to specify this number explicitly, choose a whole number from 0 through 7.
    #
    #   @return [Integer]
    #
    # @!attribute number_reference_frames
    #   Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
    #
    #   @return [Integer]
    #
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #
    #   @return [Integer]
    #
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #
    #   @return [Integer]
    #
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    #
    #   Enum, one of: ["SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"]
    #
    #   @return [String]
    #
    # @!attribute qvbr_settings
    #   Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode).
    #
    #   @return [H264QvbrSettings]
    #
    # @!attribute rate_control_mode
    #   Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
    #
    #   Enum, one of: ["VBR", "CBR", "QVBR"]
    #
    #   @return [String]
    #
    # @!attribute repeat_pps
    #   Places a PPS header on each encoded picture, even if repeated.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
    #
    #   Enum, one of: ["INTERLACED", "INTERLACED_OPTIMIZE"]
    #
    #   @return [String]
    #
    # @!attribute scene_change_detect
    #   Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
    #
    #   Enum, one of: ["DISABLED", "ENABLED", "TRANSITION_DETECTION"]
    #
    #   @return [String]
    #
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #
    #   @return [Integer]
    #
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute softness
    #   Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, for flat quantization. Choose the value 1 or 16 to use the default JVT softening quantization matricies from the H.264 specification. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
    #
    #   @return [Integer]
    #
    # @!attribute spatial_adaptive_quantization
    #   Only use this setting when you change the default value, Auto (AUTO), for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264SpatialAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to set H264SpatialAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (H264AdaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher. To manually enable or disable H264SpatialAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute syntax
    #   Produces a bitstream compliant with SMPTE RP-2027.
    #
    #   Enum, one of: ["DEFAULT", "RP2027"]
    #
    #   @return [String]
    #
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #
    #   Enum, one of: ["NONE", "SOFT", "HARD"]
    #
    #   @return [String]
    #
    # @!attribute temporal_adaptive_quantization
    #   Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264TemporalAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to set H264TemporalAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization). To manually enable or disable H264TemporalAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute unregistered_sei_timecode
    #   Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    H264Settings = ::Struct.new(
      :adaptive_quantization,
      :bitrate,
      :codec_level,
      :codec_profile,
      :dynamic_sub_gop,
      :entropy_encoding,
      :field_encoding,
      :flicker_adaptive_quantization,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_b_reference,
      :gop_closed_cadence,
      :gop_size,
      :gop_size_units,
      :hrd_buffer_initial_fill_percentage,
      :hrd_buffer_size,
      :interlace_mode,
      :max_bitrate,
      :min_i_interval,
      :number_b_frames_between_reference_frames,
      :number_reference_frames,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :qvbr_settings,
      :rate_control_mode,
      :repeat_pps,
      :scan_type_conversion_mode,
      :scene_change_detect,
      :slices,
      :slow_pal,
      :softness,
      :spatial_adaptive_quantization,
      :syntax,
      :telecine,
      :temporal_adaptive_quantization,
      :unregistered_sei_timecode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.gop_closed_cadence ||= 0
        self.gop_size ||= 0
        self.hrd_buffer_initial_fill_percentage ||= 0
        self.hrd_buffer_size ||= 0
        self.max_bitrate ||= 0
        self.min_i_interval ||= 0
        self.number_b_frames_between_reference_frames ||= 0
        self.number_reference_frames ||= 0
        self.par_denominator ||= 0
        self.par_numerator ||= 0
        self.slices ||= 0
        self.softness ||= 0
      end
    end

    # Includes enum constants for H264SlowPal
    #
    module H264SlowPal
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H264SpatialAdaptiveQuantization
    #
    module H264SpatialAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H264Syntax
    #
    module H264Syntax
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      RP2027 = "RP2027"
    end

    # Includes enum constants for H264Telecine
    #
    module H264Telecine
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SOFT = "SOFT"

      # No documentation available.
      #
      HARD = "HARD"
    end

    # Includes enum constants for H264TemporalAdaptiveQuantization
    #
    module H264TemporalAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H264UnregisteredSeiTimecode
    #
    module H264UnregisteredSeiTimecode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265AdaptiveQuantization
    #
    module H265AdaptiveQuantization
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      HIGHER = "HIGHER"

      # No documentation available.
      #
      MAX = "MAX"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for H265AlternateTransferFunctionSei
    #
    module H265AlternateTransferFunctionSei
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265CodecLevel
    #
    module H265CodecLevel
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      LEVEL_1 = "LEVEL_1"

      # No documentation available.
      #
      LEVEL_2 = "LEVEL_2"

      # No documentation available.
      #
      LEVEL_2_1 = "LEVEL_2_1"

      # No documentation available.
      #
      LEVEL_3 = "LEVEL_3"

      # No documentation available.
      #
      LEVEL_3_1 = "LEVEL_3_1"

      # No documentation available.
      #
      LEVEL_4 = "LEVEL_4"

      # No documentation available.
      #
      LEVEL_4_1 = "LEVEL_4_1"

      # No documentation available.
      #
      LEVEL_5 = "LEVEL_5"

      # No documentation available.
      #
      LEVEL_5_1 = "LEVEL_5_1"

      # No documentation available.
      #
      LEVEL_5_2 = "LEVEL_5_2"

      # No documentation available.
      #
      LEVEL_6 = "LEVEL_6"

      # No documentation available.
      #
      LEVEL_6_1 = "LEVEL_6_1"

      # No documentation available.
      #
      LEVEL_6_2 = "LEVEL_6_2"
    end

    # Includes enum constants for H265CodecProfile
    #
    module H265CodecProfile
      # No documentation available.
      #
      MAIN_MAIN = "MAIN_MAIN"

      # No documentation available.
      #
      MAIN_HIGH = "MAIN_HIGH"

      # No documentation available.
      #
      MAIN10_MAIN = "MAIN10_MAIN"

      # No documentation available.
      #
      MAIN10_HIGH = "MAIN10_HIGH"

      # No documentation available.
      #
      MAIN_422_8BIT_MAIN = "MAIN_422_8BIT_MAIN"

      # No documentation available.
      #
      MAIN_422_8BIT_HIGH = "MAIN_422_8BIT_HIGH"

      # No documentation available.
      #
      MAIN_422_10BIT_MAIN = "MAIN_422_10BIT_MAIN"

      # No documentation available.
      #
      MAIN_422_10BIT_HIGH = "MAIN_422_10BIT_HIGH"
    end

    # Includes enum constants for H265DynamicSubGop
    #
    module H265DynamicSubGop
      # No documentation available.
      #
      ADAPTIVE = "ADAPTIVE"

      # No documentation available.
      #
      STATIC = "STATIC"
    end

    # Includes enum constants for H265FlickerAdaptiveQuantization
    #
    module H265FlickerAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265FramerateControl
    #
    module H265FramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for H265FramerateConversionAlgorithm
    #
    module H265FramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Includes enum constants for H265GopBReference
    #
    module H265GopBReference
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265GopSizeUnits
    #
    module H265GopSizeUnits
      # No documentation available.
      #
      FRAMES = "FRAMES"

      # No documentation available.
      #
      SECONDS = "SECONDS"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for H265InterlaceMode
    #
    module H265InterlaceMode
      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"

      # No documentation available.
      #
      TOP_FIELD = "TOP_FIELD"

      # No documentation available.
      #
      BOTTOM_FIELD = "BOTTOM_FIELD"

      # No documentation available.
      #
      FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD"

      # No documentation available.
      #
      FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD"
    end

    # Includes enum constants for H265ParControl
    #
    module H265ParControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for H265QualityTuningLevel
    #
    module H265QualityTuningLevel
      # No documentation available.
      #
      SINGLE_PASS = "SINGLE_PASS"

      # No documentation available.
      #
      SINGLE_PASS_HQ = "SINGLE_PASS_HQ"

      # No documentation available.
      #
      MULTI_PASS_HQ = "MULTI_PASS_HQ"
    end

    # Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode).
    #
    # @!attribute max_average_bitrate
    #   Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value that you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output.
    #
    #   @return [Integer]
    #
    # @!attribute qvbr_quality_level
    #   Use this setting only when you set Rate control mode (RateControlMode) to QVBR. Specify the target quality level for this output. MediaConvert determines the right number of bits to use for each part of the video to maintain the video quality that you specify. When you keep the default value, AUTO, MediaConvert picks a quality level for you, based on characteristics of your input video. If you prefer to specify a quality level, specify a number from 1 through 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33.
    #
    #   @return [Integer]
    #
    # @!attribute qvbr_quality_level_fine_tune
    #   Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33.
    #
    #   @return [Float]
    #
    H265QvbrSettings = ::Struct.new(
      :max_average_bitrate,
      :qvbr_quality_level,
      :qvbr_quality_level_fine_tune,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_average_bitrate ||= 0
        self.qvbr_quality_level ||= 0
        self.qvbr_quality_level_fine_tune ||= 0
      end
    end

    # Includes enum constants for H265RateControlMode
    #
    module H265RateControlMode
      # No documentation available.
      #
      VBR = "VBR"

      # No documentation available.
      #
      CBR = "CBR"

      # No documentation available.
      #
      QVBR = "QVBR"
    end

    # Includes enum constants for H265SampleAdaptiveOffsetFilterMode
    #
    module H265SampleAdaptiveOffsetFilterMode
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      ADAPTIVE = "ADAPTIVE"

      # No documentation available.
      #
      OFF = "OFF"
    end

    # Includes enum constants for H265ScanTypeConversionMode
    #
    module H265ScanTypeConversionMode
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE"
    end

    # Includes enum constants for H265SceneChangeDetect
    #
    module H265SceneChangeDetect
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      TRANSITION_DETECTION = "TRANSITION_DETECTION"
    end

    # Settings for H265 codec
    #
    # @!attribute adaptive_quantization
    #   When you set Adaptive Quantization (H265AdaptiveQuantization) to Auto (AUTO), or leave blank, MediaConvert automatically applies quantization to improve the video quality of your output. Set Adaptive Quantization to Low (LOW), Medium (MEDIUM), High (HIGH), Higher (HIGHER), or Max (MAX) to manually control the strength of the quantization filter. When you do, you can specify a value for Spatial Adaptive Quantization (H265SpatialAdaptiveQuantization), Temporal Adaptive Quantization (H265TemporalAdaptiveQuantization), and Flicker Adaptive Quantization (H265FlickerAdaptiveQuantization), to further control the quantization filter. Set Adaptive Quantization to Off (OFF) to apply no quantization to your output.
    #
    #   Enum, one of: ["OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute alternate_transfer_function_sei
    #   Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
    #
    #   @return [Integer]
    #
    # @!attribute codec_level
    #   H.265 Level.
    #
    #   Enum, one of: ["AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"]
    #
    #   @return [String]
    #
    # @!attribute codec_profile
    #   Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so "Main/High" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License.
    #
    #   Enum, one of: ["MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"]
    #
    #   @return [String]
    #
    # @!attribute dynamic_sub_gop
    #   Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
    #
    #   Enum, one of: ["ADAPTIVE", "STATIC"]
    #
    #   @return [String]
    #
    # @!attribute flicker_adaptive_quantization
    #   Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set adaptiveQuantization to a value other than Off (OFF).
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute gop_b_reference
    #   If enable, use reference B frames for GOP structures that have B frames > 1.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute gop_closed_cadence
    #   Specify the relative frequency of open to closed GOPs in this output. For example, if you want to allow four open GOPs and then require a closed GOP, set this value to 5. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, keep the default value by leaving this setting out of your JSON job specification. In the console, do this by keeping the default empty value. If you do explicitly specify a value, for segmented outputs, don't set this value to 0.
    #
    #   @return [Integer]
    #
    # @!attribute gop_size
    #   Use this setting only when you set GOP mode control (GopSizeUnits) to Specified, frames (FRAMES) or Specified, seconds (SECONDS). Specify the GOP length using a whole number of frames or a decimal value of seconds. MediaConvert will interpret this value as frames or seconds depending on the value you choose for GOP mode control (GopSizeUnits). If you want to allow MediaConvert to automatically determine GOP size, leave GOP size blank and set GOP mode control to Auto (AUTO). If your output group specifies HLS, DASH, or CMAF, leave GOP size blank and set GOP mode control to Auto in each output in your output group.
    #
    #   @return [Float]
    #
    # @!attribute gop_size_units
    #   Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto (AUTO) and and leave GOP size (GopSize) blank. By default, if you don't specify GOP mode control (GopSizeUnits), MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames (FRAMES) or Specified, seconds (SECONDS) and then provide the GOP length in the related setting GOP size (GopSize).
    #
    #   Enum, one of: ["FRAMES", "SECONDS", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute hrd_buffer_initial_fill_percentage
    #   Percentage of the buffer that should initially be filled (HRD buffer model).
    #
    #   @return [Integer]
    #
    # @!attribute hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #
    #   @return [Integer]
    #
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #
    #   Enum, one of: ["PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"]
    #
    #   @return [String]
    #
    # @!attribute max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
    #
    #   @return [Integer]
    #
    # @!attribute min_i_interval
    #   Use this setting only when you also enable Scene change detection (SceneChangeDetect). This setting determines how the encoder manages the spacing between I-frames that it inserts as part of the I-frame cadence and the I-frames that it inserts for Scene change detection. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, keep the default value by leaving this setting out of your JSON job specification. In the console, do this by keeping the default empty value. When you explicitly specify a value for this setting, the encoder determines whether to skip a cadence-driven I-frame by the value you set. For example, if you set Min I interval (minIInterval) to 5 and a cadence-driven I-frame would fall within 5 frames of a scene-change I-frame, then the encoder skips the cadence-driven I-frame. In this way, one GOP is shrunk slightly and one GOP is stretched slightly. When the cadence-driven I-frames are farther from the scene-change I-frame than the value you set, then the encoder leaves all I-frames in place and the GOPs surrounding the scene change are smaller than the usual cadence GOPs.
    #
    #   @return [Integer]
    #
    # @!attribute number_b_frames_between_reference_frames
    #   Specify the number of B-frames that MediaConvert puts between reference frames in this output. Valid values are whole numbers from 0 through 7. When you don't specify a value, MediaConvert defaults to 2.
    #
    #   @return [Integer]
    #
    # @!attribute number_reference_frames
    #   Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
    #
    #   @return [Integer]
    #
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #
    #   @return [Integer]
    #
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #
    #   @return [Integer]
    #
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    #
    #   Enum, one of: ["SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"]
    #
    #   @return [String]
    #
    # @!attribute qvbr_settings
    #   Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode).
    #
    #   @return [H265QvbrSettings]
    #
    # @!attribute rate_control_mode
    #   Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
    #
    #   Enum, one of: ["VBR", "CBR", "QVBR"]
    #
    #   @return [String]
    #
    # @!attribute sample_adaptive_offset_filter_mode
    #   Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content
    #
    #   Enum, one of: ["DEFAULT", "ADAPTIVE", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
    #
    #   Enum, one of: ["INTERLACED", "INTERLACED_OPTIMIZE"]
    #
    #   @return [String]
    #
    # @!attribute scene_change_detect
    #   Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
    #
    #   Enum, one of: ["DISABLED", "ENABLED", "TRANSITION_DETECTION"]
    #
    #   @return [String]
    #
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #
    #   @return [Integer]
    #
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute spatial_adaptive_quantization
    #   Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute telecine
    #   This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
    #
    #   Enum, one of: ["NONE", "SOFT", "HARD"]
    #
    #   @return [String]
    #
    # @!attribute temporal_adaptive_quantization
    #   Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization).
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute temporal_ids
    #   Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute tiles
    #   Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute unregistered_sei_timecode
    #   Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute write_mp4_packaging_type
    #   If the location of parameter set NAL units doesn't matter in your workflow, ignore this setting. Use this setting only with CMAF or DASH outputs, or with standalone file outputs in an MPEG-4 container (MP4 outputs). Choose HVC1 to mark your output as HVC1. This makes your output compliant with the following specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15 3rd Edition. For these outputs, the service stores parameter set NAL units in the sample headers but not in the samples directly. For MP4 outputs, when you choose HVC1, your output video might not work properly with some downstream systems and video players. The service defaults to marking your output as HEV1. For these outputs, the service writes parameter set NAL units directly into the samples.
    #
    #   Enum, one of: ["HVC1", "HEV1"]
    #
    #   @return [String]
    #
    H265Settings = ::Struct.new(
      :adaptive_quantization,
      :alternate_transfer_function_sei,
      :bitrate,
      :codec_level,
      :codec_profile,
      :dynamic_sub_gop,
      :flicker_adaptive_quantization,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_b_reference,
      :gop_closed_cadence,
      :gop_size,
      :gop_size_units,
      :hrd_buffer_initial_fill_percentage,
      :hrd_buffer_size,
      :interlace_mode,
      :max_bitrate,
      :min_i_interval,
      :number_b_frames_between_reference_frames,
      :number_reference_frames,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :qvbr_settings,
      :rate_control_mode,
      :sample_adaptive_offset_filter_mode,
      :scan_type_conversion_mode,
      :scene_change_detect,
      :slices,
      :slow_pal,
      :spatial_adaptive_quantization,
      :telecine,
      :temporal_adaptive_quantization,
      :temporal_ids,
      :tiles,
      :unregistered_sei_timecode,
      :write_mp4_packaging_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.gop_closed_cadence ||= 0
        self.gop_size ||= 0
        self.hrd_buffer_initial_fill_percentage ||= 0
        self.hrd_buffer_size ||= 0
        self.max_bitrate ||= 0
        self.min_i_interval ||= 0
        self.number_b_frames_between_reference_frames ||= 0
        self.number_reference_frames ||= 0
        self.par_denominator ||= 0
        self.par_numerator ||= 0
        self.slices ||= 0
      end
    end

    # Includes enum constants for H265SlowPal
    #
    module H265SlowPal
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265SpatialAdaptiveQuantization
    #
    module H265SpatialAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265Telecine
    #
    module H265Telecine
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SOFT = "SOFT"

      # No documentation available.
      #
      HARD = "HARD"
    end

    # Includes enum constants for H265TemporalAdaptiveQuantization
    #
    module H265TemporalAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265TemporalIds
    #
    module H265TemporalIds
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265Tiles
    #
    module H265Tiles
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265UnregisteredSeiTimecode
    #
    module H265UnregisteredSeiTimecode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H265WriteMp4PackagingType
    #
    module H265WriteMp4PackagingType
      # No documentation available.
      #
      HVC1 = "HVC1"

      # No documentation available.
      #
      HEV1 = "HEV1"
    end

    # Use these settings to specify static color calibration metadata, as defined by SMPTE ST 2086. These values don't affect the pixel values that are encoded in the video stream. They are intended to help the downstream video player display content in a way that reflects the intentions of the the content creator.
    #
    # @!attribute blue_primary_x
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #
    #   @return [Integer]
    #
    # @!attribute blue_primary_y
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #
    #   @return [Integer]
    #
    # @!attribute green_primary_x
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #
    #   @return [Integer]
    #
    # @!attribute green_primary_y
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #
    #   @return [Integer]
    #
    # @!attribute max_content_light_level
    #   Maximum light level among all samples in the coded video sequence, in units of candelas per square meter.  This setting doesn't have a default value; you must specify a value that is suitable for the content.
    #
    #   @return [Integer]
    #
    # @!attribute max_frame_average_light_level
    #   Maximum average light level of any frame in the coded video sequence, in units of candelas per square meter. This setting doesn't have a default value; you must specify a value that is suitable for the content.
    #
    #   @return [Integer]
    #
    # @!attribute max_luminance
    #   Nominal maximum mastering display luminance in units of of 0.0001 candelas per square meter.
    #
    #   @return [Integer]
    #
    # @!attribute min_luminance
    #   Nominal minimum mastering display luminance in units of of 0.0001 candelas per square meter
    #
    #   @return [Integer]
    #
    # @!attribute red_primary_x
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #
    #   @return [Integer]
    #
    # @!attribute red_primary_y
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #
    #   @return [Integer]
    #
    # @!attribute white_point_x
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #
    #   @return [Integer]
    #
    # @!attribute white_point_y
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #
    #   @return [Integer]
    #
    Hdr10Metadata = ::Struct.new(
      :blue_primary_x,
      :blue_primary_y,
      :green_primary_x,
      :green_primary_y,
      :max_content_light_level,
      :max_frame_average_light_level,
      :max_luminance,
      :min_luminance,
      :red_primary_x,
      :red_primary_y,
      :white_point_x,
      :white_point_y,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.blue_primary_x ||= 0
        self.blue_primary_y ||= 0
        self.green_primary_x ||= 0
        self.green_primary_y ||= 0
        self.max_content_light_level ||= 0
        self.max_frame_average_light_level ||= 0
        self.max_luminance ||= 0
        self.min_luminance ||= 0
        self.red_primary_x ||= 0
        self.red_primary_y ||= 0
        self.white_point_x ||= 0
        self.white_point_y ||= 0
      end
    end

    # Setting for HDR10+ metadata insertion
    #
    # @!attribute mastering_monitor_nits
    #   Specify the HDR10+ mastering display normalized peak luminance, in nits. This is the normalized actual peak luminance of the mastering display, as defined by ST 2094-40.
    #
    #   @return [Integer]
    #
    # @!attribute target_monitor_nits
    #   Specify the HDR10+ target display nominal peak luminance, in nits. This is the nominal maximum luminance of the target display as defined by ST 2094-40.
    #
    #   @return [Integer]
    #
    Hdr10Plus = ::Struct.new(
      :mastering_monitor_nits,
      :target_monitor_nits,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.mastering_monitor_nits ||= 0
        self.target_monitor_nits ||= 0
      end
    end

    # Includes enum constants for HlsAdMarkers
    #
    module HlsAdMarkers
      # No documentation available.
      #
      ELEMENTAL = "ELEMENTAL"

      # No documentation available.
      #
      ELEMENTAL_SCTE35 = "ELEMENTAL_SCTE35"
    end

    # Specify the details for each additional HLS manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group.
    #
    # @!attribute manifest_name_modifier
    #   Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests.
    #
    #   @return [String]
    #
    # @!attribute selected_outputs
    #   Specify the outputs that you want this additional top-level manifest to reference.
    #
    #   @return [Array<String>]
    #
    HlsAdditionalManifest = ::Struct.new(
      :manifest_name_modifier,
      :selected_outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HlsAudioOnlyContainer
    #
    module HlsAudioOnlyContainer
      # No documentation available.
      #
      AUTOMATIC = "AUTOMATIC"

      # No documentation available.
      #
      M2TS = "M2TS"
    end

    # Includes enum constants for HlsAudioOnlyHeader
    #
    module HlsAudioOnlyHeader
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for HlsAudioTrackType
    #
    module HlsAudioTrackType
      # No documentation available.
      #
      ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT = "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT"

      # No documentation available.
      #
      ALTERNATE_AUDIO_AUTO_SELECT = "ALTERNATE_AUDIO_AUTO_SELECT"

      # No documentation available.
      #
      ALTERNATE_AUDIO_NOT_AUTO_SELECT = "ALTERNATE_AUDIO_NOT_AUTO_SELECT"

      # No documentation available.
      #
      AUDIO_ONLY_VARIANT_STREAM = "AUDIO_ONLY_VARIANT_STREAM"
    end

    # Caption Language Mapping
    #
    # @!attribute caption_channel
    #   Caption channel.
    #
    #   @return [Integer]
    #
    # @!attribute custom_language_code
    #   Specify the language for this captions channel, using the ISO 639-2 or ISO 639-3 three-letter language code
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   Specify the language, using the ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php.
    #
    #   Enum, one of: ["ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"]
    #
    #   @return [String]
    #
    # @!attribute language_description
    #   Caption language description.
    #
    #   @return [String]
    #
    HlsCaptionLanguageMapping = ::Struct.new(
      :caption_channel,
      :custom_language_code,
      :language_code,
      :language_description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.caption_channel ||= 0
      end
    end

    # Includes enum constants for HlsCaptionLanguageSetting
    #
    module HlsCaptionLanguageSetting
      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      OMIT = "OMIT"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for HlsCaptionSegmentLengthControl
    #
    module HlsCaptionSegmentLengthControl
      # No documentation available.
      #
      LARGE_SEGMENTS = "LARGE_SEGMENTS"

      # No documentation available.
      #
      MATCH_VIDEO = "MATCH_VIDEO"
    end

    # Includes enum constants for HlsClientCache
    #
    module HlsClientCache
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for HlsCodecSpecification
    #
    module HlsCodecSpecification
      # No documentation available.
      #
      RFC_6381 = "RFC_6381"

      # No documentation available.
      #
      RFC_4281 = "RFC_4281"
    end

    # Includes enum constants for HlsDescriptiveVideoServiceFlag
    #
    module HlsDescriptiveVideoServiceFlag
      # No documentation available.
      #
      DONT_FLAG = "DONT_FLAG"

      # No documentation available.
      #
      FLAG = "FLAG"
    end

    # Includes enum constants for HlsDirectoryStructure
    #
    module HlsDirectoryStructure
      # No documentation available.
      #
      SINGLE_DIRECTORY = "SINGLE_DIRECTORY"

      # No documentation available.
      #
      SUBDIRECTORY_PER_STREAM = "SUBDIRECTORY_PER_STREAM"
    end

    # Settings for HLS encryption
    #
    # @!attribute constant_initialization_vector
    #   This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default.
    #
    #   @return [String]
    #
    # @!attribute encryption_method
    #   Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption.
    #
    #   Enum, one of: ["AES128", "SAMPLE_AES"]
    #
    #   @return [String]
    #
    # @!attribute initialization_vector_in_manifest
    #   The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute offline_encrypted
    #   Enable this setting to insert the EXT-X-SESSION-KEY element into the master playlist. This allows for offline Apple HLS FairPlay content protection.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute speke_key_provider
    #   If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
    #
    #   @return [SpekeKeyProvider]
    #
    # @!attribute static_key_provider
    #   Use these settings to set up encryption with a static key provider.
    #
    #   @return [StaticKeyProvider]
    #
    # @!attribute type
    #   Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.
    #
    #   Enum, one of: ["SPEKE", "STATIC_KEY"]
    #
    #   @return [String]
    #
    HlsEncryptionSettings = ::Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :initialization_vector_in_manifest,
      :offline_encrypted,
      :speke_key_provider,
      :static_key_provider,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HlsEncryptionType
    #
    module HlsEncryptionType
      # No documentation available.
      #
      AES128 = "AES128"

      # No documentation available.
      #
      SAMPLE_AES = "SAMPLE_AES"
    end

    # Settings related to your HLS output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to HLS_GROUP_SETTINGS.
    #
    # @!attribute ad_markers
    #   Choose one or more ad marker types to decorate your Apple HLS manifest. This setting does not determine whether SCTE-35 markers appear in the outputs themselves.
    #
    #   @return [Array<String>]
    #
    # @!attribute additional_manifests
    #   By default, the service creates one top-level .m3u8 HLS manifest for each HLS output group in your job. This default manifest references every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here.
    #
    #   @return [Array<HlsAdditionalManifest>]
    #
    # @!attribute audio_only_header
    #   Ignore this setting unless you are using FairPlay DRM with Verimatrix and you encounter playback issues. Keep the default value, Include (INCLUDE), to output audio-only headers. Choose Exclude (EXCLUDE) to remove the audio-only headers from your audio segments.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute base_url
    #   A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
    #
    #   @return [String]
    #
    # @!attribute caption_language_mappings
    #   Language to be used on Caption outputs
    #
    #   @return [Array<HlsCaptionLanguageMapping>]
    #
    # @!attribute caption_language_setting
    #   Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest.
    #
    #   Enum, one of: ["INSERT", "OMIT", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute caption_segment_length_control
    #   Set Caption segment length control (CaptionSegmentLengthControl) to Match video (MATCH_VIDEO) to create caption segments that align with the video segments from the first video output in this output group. For example, if the video segments are 2 seconds long, your WebVTT segments will also be 2 seconds long. Keep the default setting, Large segments (LARGE_SEGMENTS) to create caption segments that are 300 seconds long.
    #
    #   Enum, one of: ["LARGE_SEGMENTS", "MATCH_VIDEO"]
    #
    #   @return [String]
    #
    # @!attribute client_cache
    #   Disable this setting only when your workflow requires the  EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled (ENABLED) and control caching in your video distribution set up. For example, use the Cache-Control http header.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute codec_specification
    #   Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
    #
    #   Enum, one of: ["RFC_6381", "RFC_4281"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #
    #   @return [String]
    #
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #
    #   @return [DestinationSettings]
    #
    # @!attribute directory_structure
    #   Indicates whether segments should be placed in subdirectories.
    #
    #   Enum, one of: ["SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"]
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   DRM settings.
    #
    #   @return [HlsEncryptionSettings]
    #
    # @!attribute image_based_trick_play
    #   Specify whether MediaConvert generates images for trick play. Keep the default value, None (NONE), to not generate any images. Choose Thumbnail (THUMBNAIL) to generate tiled thumbnails. Choose Thumbnail and full frame (THUMBNAIL_AND_FULLFRAME) to generate tiled thumbnails and full-resolution images of single frames. MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md
    #
    #   Enum, one of: ["NONE", "THUMBNAIL", "THUMBNAIL_AND_FULLFRAME", "ADVANCED"]
    #
    #   @return [String]
    #
    # @!attribute image_based_trick_play_settings
    #   Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    #
    #   @return [HlsImageBasedTrickPlaySettings]
    #
    # @!attribute manifest_compression
    #   When set to GZIP, compresses HLS playlist.
    #
    #   Enum, one of: ["GZIP", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute manifest_duration_format
    #   Indicates whether the output manifest should use floating point values for segment duration.
    #
    #   Enum, one of: ["FLOATING_POINT", "INTEGER"]
    #
    #   @return [String]
    #
    # @!attribute min_final_segment_length
    #   Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
    #
    #   @return [Float]
    #
    # @!attribute min_segment_length
    #   When set, Minimum Segment Size is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
    #
    #   @return [Integer]
    #
    # @!attribute output_selection
    #   Indicates whether the .m3u8 manifest file should be generated for this HLS output group.
    #
    #   Enum, one of: ["MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute program_date_time
    #   Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute program_date_time_period
    #   Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
    #
    #   @return [Integer]
    #
    # @!attribute segment_control
    #   When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses  EXT-X-BYTERANGE tags to index segment for playback.
    #
    #   Enum, one of: ["SINGLE_FILE", "SEGMENTED_FILES"]
    #
    #   @return [String]
    #
    # @!attribute segment_length
    #   Specify the length, in whole seconds, of each segment. When you don't specify a value, MediaConvert defaults to 10. Related settings: Use Segment length control (SegmentLengthControl) to specify whether the encoder enforces this value strictly. Use Segment control (HlsSegmentControl) to specify whether MediaConvert creates separate segment files or one content file that has metadata to mark the segment boundaries.
    #
    #   @return [Integer]
    #
    # @!attribute segment_length_control
    #   Specify how you want MediaConvert to determine the segment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Segment length (SegmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary.
    #
    #   Enum, one of: ["EXACT", "GOP_MULTIPLE"]
    #
    #   @return [String]
    #
    # @!attribute segments_per_subdirectory
    #   Number of segments to write to a subdirectory before starting a new one. directoryStructure must be SINGLE_DIRECTORY for this setting to have an effect.
    #
    #   @return [Integer]
    #
    # @!attribute stream_inf_resolution
    #   Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute target_duration_compatibility_mode
    #   When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration.
    #
    #   Enum, one of: ["LEGACY", "SPEC_COMPLIANT"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_id3_frame
    #   Specify the type of the ID3 frame (timedMetadataId3Frame) to use for ID3 timestamps (timedMetadataId3Period) in your output. To include ID3 timestamps: Specify PRIV (PRIV) or TDRL (TDRL) and set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH). To exclude ID3 timestamps: Set ID3 timestamp frame type to None (NONE).
    #
    #   Enum, one of: ["NONE", "PRIV", "TDRL"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_id3_period
    #   Specify the interval in seconds to write ID3 timestamps in your output. The first timestamp starts at the output timecode and date, and increases incrementally with each ID3 timestamp. To use the default interval of 10 seconds: Leave blank. To include this metadata in your output: Set ID3 timestamp frame type (timedMetadataId3Frame) to PRIV (PRIV) or TDRL (TDRL), and set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH).
    #
    #   @return [Integer]
    #
    # @!attribute timestamp_delta_milliseconds
    #   Provides an extra millisecond delta offset to fine tune the timestamps.
    #
    #   @return [Integer]
    #
    HlsGroupSettings = ::Struct.new(
      :ad_markers,
      :additional_manifests,
      :audio_only_header,
      :base_url,
      :caption_language_mappings,
      :caption_language_setting,
      :caption_segment_length_control,
      :client_cache,
      :codec_specification,
      :destination,
      :destination_settings,
      :directory_structure,
      :encryption,
      :image_based_trick_play,
      :image_based_trick_play_settings,
      :manifest_compression,
      :manifest_duration_format,
      :min_final_segment_length,
      :min_segment_length,
      :output_selection,
      :program_date_time,
      :program_date_time_period,
      :segment_control,
      :segment_length,
      :segment_length_control,
      :segments_per_subdirectory,
      :stream_inf_resolution,
      :target_duration_compatibility_mode,
      :timed_metadata_id3_frame,
      :timed_metadata_id3_period,
      :timestamp_delta_milliseconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.min_final_segment_length ||= 0
        self.min_segment_length ||= 0
        self.program_date_time_period ||= 0
        self.segment_length ||= 0
        self.segments_per_subdirectory ||= 0
        self.timed_metadata_id3_period ||= 0
        self.timestamp_delta_milliseconds ||= 0
      end
    end

    # Includes enum constants for HlsIFrameOnlyManifest
    #
    module HlsIFrameOnlyManifest
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for HlsImageBasedTrickPlay
    #
    module HlsImageBasedTrickPlay
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      THUMBNAIL = "THUMBNAIL"

      # No documentation available.
      #
      THUMBNAIL_AND_FULLFRAME = "THUMBNAIL_AND_FULLFRAME"

      # No documentation available.
      #
      ADVANCED = "ADVANCED"
    end

    # Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    #
    # @!attribute interval_cadence
    #   The cadence MediaConvert follows for generating thumbnails.  If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence).  If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval.
    #
    #   Enum, one of: ["FOLLOW_IFRAME", "FOLLOW_CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute thumbnail_height
    #   Height of each thumbnail within each tile image, in pixels.  Leave blank to maintain aspect ratio with thumbnail width.  If following the aspect ratio would lead to a total tile height greater than 4096, then the job will be rejected.  Must be divisible by 2.
    #
    #   @return [Integer]
    #
    # @!attribute thumbnail_interval
    #   Enter the interval, in seconds, that MediaConvert uses to generate thumbnails.  If the interval you enter doesn't align with the output frame rate, MediaConvert automatically rounds the interval to align with the output frame rate.  For example, if the output frame rate is 29.97 frames per second and you enter 5, MediaConvert uses a 150 frame interval to generate thumbnails.
    #
    #   @return [Float]
    #
    # @!attribute thumbnail_width
    #   Width of each thumbnail within each tile image, in pixels.  Default is 312.  Must be divisible by 8.
    #
    #   @return [Integer]
    #
    # @!attribute tile_height
    #   Number of thumbnails in each column of a tile image. Set a value between 2 and 2048. Must be divisible by 2.
    #
    #   @return [Integer]
    #
    # @!attribute tile_width
    #   Number of thumbnails in each row of a tile image.  Set a value between 1 and 512.
    #
    #   @return [Integer]
    #
    HlsImageBasedTrickPlaySettings = ::Struct.new(
      :interval_cadence,
      :thumbnail_height,
      :thumbnail_interval,
      :thumbnail_width,
      :tile_height,
      :tile_width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.thumbnail_height ||= 0
        self.thumbnail_interval ||= 0
        self.thumbnail_width ||= 0
        self.tile_height ||= 0
        self.tile_width ||= 0
      end
    end

    # Includes enum constants for HlsInitializationVectorInManifest
    #
    module HlsInitializationVectorInManifest
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for HlsIntervalCadence
    #
    module HlsIntervalCadence
      # No documentation available.
      #
      FOLLOW_IFRAME = "FOLLOW_IFRAME"

      # No documentation available.
      #
      FOLLOW_CUSTOM = "FOLLOW_CUSTOM"
    end

    # Includes enum constants for HlsKeyProviderType
    #
    module HlsKeyProviderType
      # No documentation available.
      #
      SPEKE = "SPEKE"

      # No documentation available.
      #
      STATIC_KEY = "STATIC_KEY"
    end

    # Includes enum constants for HlsManifestCompression
    #
    module HlsManifestCompression
      # No documentation available.
      #
      GZIP = "GZIP"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for HlsManifestDurationFormat
    #
    module HlsManifestDurationFormat
      # No documentation available.
      #
      FLOATING_POINT = "FLOATING_POINT"

      # No documentation available.
      #
      INTEGER = "INTEGER"
    end

    # Includes enum constants for HlsOfflineEncrypted
    #
    module HlsOfflineEncrypted
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for HlsOutputSelection
    #
    module HlsOutputSelection
      # No documentation available.
      #
      MANIFESTS_AND_SEGMENTS = "MANIFESTS_AND_SEGMENTS"

      # No documentation available.
      #
      SEGMENTS_ONLY = "SEGMENTS_ONLY"
    end

    # Includes enum constants for HlsProgramDateTime
    #
    module HlsProgramDateTime
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Settings specific to audio sources in an HLS alternate rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique audio track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the properties provided, the job fails. If no properties in hlsRenditionGroupSettings are specified, the default audio track within the video segment is chosen. If there is no audio within video segment, the alternative audio with DEFAULT=YES is chosen instead.
    #
    # @!attribute rendition_group_id
    #   Optional. Specify alternative group ID
    #
    #   @return [String]
    #
    # @!attribute rendition_language_code
    #   Optional. Specify ISO 639-2 or ISO 639-3 code in the language property
    #
    #   Enum, one of: ["ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"]
    #
    #   @return [String]
    #
    # @!attribute rendition_name
    #   Optional. Specify media name
    #
    #   @return [String]
    #
    HlsRenditionGroupSettings = ::Struct.new(
      :rendition_group_id,
      :rendition_language_code,
      :rendition_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HlsSegmentControl
    #
    module HlsSegmentControl
      # No documentation available.
      #
      SINGLE_FILE = "SINGLE_FILE"

      # No documentation available.
      #
      SEGMENTED_FILES = "SEGMENTED_FILES"
    end

    # Includes enum constants for HlsSegmentLengthControl
    #
    module HlsSegmentLengthControl
      # No documentation available.
      #
      EXACT = "EXACT"

      # No documentation available.
      #
      GOP_MULTIPLE = "GOP_MULTIPLE"
    end

    # Settings for HLS output groups
    #
    # @!attribute audio_group_id
    #   Specifies the group to which the audio rendition belongs.
    #
    #   @return [String]
    #
    # @!attribute audio_only_container
    #   Use this setting only in audio-only outputs. Choose MPEG-2 Transport Stream (M2TS) to create a file in an MPEG2-TS container. Keep the default value Automatic (AUTOMATIC) to create an audio-only file in a raw container. Regardless of the value that you specify here, if this output has video, the service will place the output into an MPEG2-TS container.
    #
    #   Enum, one of: ["AUTOMATIC", "M2TS"]
    #
    #   @return [String]
    #
    # @!attribute audio_rendition_sets
    #   List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
    #
    #   @return [String]
    #
    # @!attribute audio_track_type
    #   Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
    #
    #   Enum, one of: ["ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"]
    #
    #   @return [String]
    #
    # @!attribute descriptive_video_service_flag
    #   Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag (FLAG), MediaConvert includes the parameter CHARACTERISTICS="public.accessibility.describes-video" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation.
    #
    #   Enum, one of: ["DONT_FLAG", "FLAG"]
    #
    #   @return [String]
    #
    # @!attribute i_frame_only_manifest
    #   Choose Include (INCLUDE) to have MediaConvert generate a child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE).
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute segment_modifier
    #   Use this setting to add an identifying string to the filename of each segment. The service adds this string between the name modifier and segment index number. You can use format identifiers in the string. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/using-variables-in-your-job-settings.html
    #
    #   @return [String]
    #
    HlsSettings = ::Struct.new(
      :audio_group_id,
      :audio_only_container,
      :audio_rendition_sets,
      :audio_track_type,
      :descriptive_video_service_flag,
      :i_frame_only_manifest,
      :segment_modifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HlsStreamInfResolution
    #
    module HlsStreamInfResolution
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for HlsTargetDurationCompatibilityMode
    #
    module HlsTargetDurationCompatibilityMode
      # No documentation available.
      #
      LEGACY = "LEGACY"

      # No documentation available.
      #
      SPEC_COMPLIANT = "SPEC_COMPLIANT"
    end

    # Includes enum constants for HlsTimedMetadataId3Frame
    #
    module HlsTimedMetadataId3Frame
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PRIV = "PRIV"

      # No documentation available.
      #
      TDRL = "TDRL"
    end

    # Optional. Configuration for a destination queue to which the job can hop once a customer-defined minimum wait time has passed.
    #
    # @!attribute priority
    #   Optional. When you set up a job to use queue hopping, you can specify a different relative priority for the job in the destination queue. If you don't specify, the relative priority will remain the same as in the previous queue.
    #
    #   @return [Integer]
    #
    # @!attribute queue
    #   Optional unless the job is submitted on the default queue. When you set up a job to use queue hopping, you can specify a destination queue. This queue cannot be the original queue to which the job is submitted. If the original queue isn't the default queue and you don't specify the destination queue, the job will move to the default queue.
    #
    #   @return [String]
    #
    # @!attribute wait_minutes
    #   Required for setting up a job to use queue hopping. Minimum wait time in minutes until the job can hop to the destination queue. Valid range is 1 to 1440 minutes, inclusive.
    #
    #   @return [Integer]
    #
    HopDestination = ::Struct.new(
      :priority,
      :queue,
      :wait_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
        self.wait_minutes ||= 0
      end
    end

    # To insert ID3 tags in your output, specify two values. Use ID3 tag (Id3) to specify the base 64 encoded string and use Timecode (TimeCode) to specify the time when the tag should be inserted. To insert multiple ID3 tags in your output, create multiple instances of ID3 insertion (Id3Insertion).
    #
    # @!attribute id3
    #   Use ID3 tag (Id3) to provide a fully formed ID3 tag in base64-encode format.
    #
    #   @return [String]
    #
    # @!attribute timecode
    #   Provide a Timecode (TimeCode) in HH:MM:SS:FF or HH:MM:SS;FF format.
    #
    #   @return [String]
    #
    Id3Insertion = ::Struct.new(
      :id3,
      :timecode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Use the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input or output individually. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/graphic-overlay.html. This setting is disabled by default.
    #
    # @!attribute insertable_images
    #   Specify the images that you want to overlay on your video. The images must be PNG or TGA files.
    #
    #   @return [Array<InsertableImage>]
    #
    ImageInserter = ::Struct.new(
      :insertable_images,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImscAccessibilitySubs
    #
    module ImscAccessibilitySubs
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Settings related to IMSC captions. IMSC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to IMSC.
    #
    # @!attribute accessibility
    #   Set Accessibility subtitles to Enabled if the ISMC or WebVTT captions track is intended to provide accessibility for people who are deaf or hard of hearing. When you enable this feature, MediaConvert adds the following attributes under EXT-X-MEDIA in the HLS or CMAF manifest for this track: CHARACTERISTICS="public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound" and AUTOSELECT="YES". Keep the default value, Disabled, if the captions track is not intended to provide such accessibility. MediaConvert will not add the above attributes.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute style_passthrough
    #   Keep this setting enabled to have MediaConvert use the font style and position information from the captions source in the output. This option is available only when your input captions are IMSC, SMPTE-TT, or TTML. Disable this setting for simplified output captions.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    ImscDestinationSettings = ::Struct.new(
      :accessibility,
      :style_passthrough,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImscStylePassthrough
    #
    module ImscStylePassthrough
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Use inputs to define the source files used in your transcoding job. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/specify-input-settings.html. You can use multiple video inputs to do input stitching. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/assembling-multiple-inputs-and-input-clips.html
    #
    # @!attribute audio_selector_groups
    #   Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab (AudioDescription). Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group.
    #
    #   @return [Hash<String, AudioSelectorGroup>]
    #
    # @!attribute audio_selectors
    #   Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input.
    #
    #   @return [Hash<String, AudioSelector>]
    #
    # @!attribute caption_selectors
    #   Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 20 captions selectors per input.
    #
    #   @return [Hash<String, CaptionSelector>]
    #
    # @!attribute crop
    #   Use Cropping selection (crop) to specify the video area that the service will include in the output video frame. If you specify a value here, it will override any value that you specify in the output setting Cropping selection (crop).
    #
    #   @return [Rectangle]
    #
    # @!attribute deblock_filter
    #   Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute decryption_settings
    #   Settings for decrypting any input files that you encrypt before you upload them to Amazon S3. MediaConvert can decrypt files only when you use AWS Key Management Service (KMS) to encrypt the data key that you use to encrypt your content.
    #
    #   @return [InputDecryptionSettings]
    #
    # @!attribute denoise_filter
    #   Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute dolby_vision_metadata_xml
    #   Use this setting only when your video source has Dolby Vision studio mastering metadata that is carried in a separate XML file. Specify the Amazon S3 location for the metadata XML file. MediaConvert uses this file to provide global and frame-level metadata for Dolby Vision preprocessing. When you specify a file here and your input also has interleaved global and frame level metadata, MediaConvert ignores the interleaved metadata and uses only the the metadata from this external XML file. Note that your IAM service role must grant MediaConvert read permissions to this file. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
    #
    #   @return [String]
    #
    # @!attribute file_input
    #   Specify the source file for your transcoding job. You can use multiple inputs in a single job. The service concatenates these inputs, in the order that you specify them in the job, to create the outputs. If your input format is IMF, specify your input by providing the path to your CPL. For example, "s3://bucket/vf/cpl.xml". If the CPL is in an incomplete IMP, make sure to use *Supplemental IMPs* (SupplementalImps) to specify any supplemental IMPs that contain assets referenced by the CPL.
    #
    #   @return [String]
    #
    # @!attribute filter_enable
    #   Specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The input is filtered regardless of input type.
    #
    #   Enum, one of: ["AUTO", "DISABLE", "FORCE"]
    #
    #   @return [String]
    #
    # @!attribute filter_strength
    #   Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0.
    #
    #   @return [Integer]
    #
    # @!attribute image_inserter
    #   Enable the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input individually. This setting is disabled by default.
    #
    #   @return [ImageInserter]
    #
    # @!attribute input_clippings
    #   (InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
    #
    #   @return [Array<InputClipping>]
    #
    # @!attribute input_scan_type
    #   When you have a progressive segmented frame (PsF) input, use this setting to flag the input as PsF. MediaConvert doesn't automatically detect PsF. Therefore, flagging your input as PsF results in better preservation of video quality when you do deinterlacing and frame rate conversion. If you don't specify, the default value is Auto (AUTO). Auto is the correct setting for all inputs that are not PsF. Don't set this value to PsF when your input is interlaced. Doing so creates horizontal interlacing artifacts.
    #
    #   Enum, one of: ["AUTO", "PSF"]
    #
    #   @return [String]
    #
    # @!attribute position
    #   Use Selection placement (position) to define the video area in your output frame. The area outside of the rectangle that you specify here is black. If you specify a value here, it will override any value that you specify in the output setting Selection placement (position). If you specify a value here, this will override any AFD values in your input, even if you set Respond to AFD (RespondToAfd) to Respond (RESPOND). If you specify a value here, this will ignore anything that you specify for the setting Scaling Behavior (scalingBehavior).
    #
    #   @return [Rectangle]
    #
    # @!attribute program_number
    #   Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
    #
    #   @return [Integer]
    #
    # @!attribute psi_control
    #   Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data.
    #
    #   Enum, one of: ["IGNORE_PSI", "USE_PSI"]
    #
    #   @return [String]
    #
    # @!attribute supplemental_imps
    #   Provide a list of any necessary supplemental IMPs. You need supplemental IMPs if the CPL that you're using for your input is in an incomplete IMP. Specify either the supplemental IMP directories with a trailing slash or the ASSETMAP.xml files. For example ["s3://bucket/ov/", "s3://bucket/vf2/ASSETMAP.xml"]. You don't need to specify the IMP that contains your input CPL, because the service automatically detects it.
    #
    #   @return [Array<String>]
    #
    # @!attribute timecode_source
    #   Use this Timecode source setting, located under the input settings (InputTimecodeSource), to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded (EMBEDDED) to use the timecodes in your input video. Choose Start at zero (ZEROBASED) to start the first frame at zero. Choose Specified start (SPECIFIEDSTART) to start the first frame at the timecode that you specify in the setting Start timecode (timecodeStart). If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.
    #
    #   Enum, one of: ["EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"]
    #
    #   @return [String]
    #
    # @!attribute timecode_start
    #   Specify the timecode that you want the service to use for this input's initial frame. To use this setting, you must set the Timecode source setting, located under the input settings (InputTimecodeSource), to Specified start (SPECIFIEDSTART). For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.
    #
    #   @return [String]
    #
    # @!attribute video_generator
    #   Use this setting if you do not have a video input or if you want to add black video frames before, or after, other inputs. When you include Video generator, MediaConvert creates a video input with black frames and without an audio track. You can specify a value for Video generator, or you can specify an Input file, but you cannot specify both.
    #
    #   @return [InputVideoGenerator]
    #
    # @!attribute video_selector
    #   Input video selectors contain the video settings for the input. Each of your inputs can have up to one video selector.
    #
    #   @return [VideoSelector]
    #
    Input = ::Struct.new(
      :audio_selector_groups,
      :audio_selectors,
      :caption_selectors,
      :crop,
      :deblock_filter,
      :decryption_settings,
      :denoise_filter,
      :dolby_vision_metadata_xml,
      :file_input,
      :filter_enable,
      :filter_strength,
      :image_inserter,
      :input_clippings,
      :input_scan_type,
      :position,
      :program_number,
      :psi_control,
      :supplemental_imps,
      :timecode_source,
      :timecode_start,
      :video_generator,
      :video_selector,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.filter_strength ||= 0
        self.program_number ||= 0
      end
    end

    # To transcode only portions of your input, include one input clip for each part of your input that you want in your output. All input clips that you specify will be included in every output of the job. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/assembling-multiple-inputs-and-input-clips.html.
    #
    # @!attribute end_timecode
    #   Set End timecode (EndTimecode) to the end of the portion of the input you are clipping. The frame corresponding to the End timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for timecode source under input settings (InputTimecodeSource). For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to end six minutes into the video, use 01:06:00:00.
    #
    #   @return [String]
    #
    # @!attribute start_timecode
    #   Set Start timecode (StartTimecode) to the beginning of the portion of the input you are clipping. The frame corresponding to the Start timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for Input timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to begin five minutes into the video, use 01:05:00:00.
    #
    #   @return [String]
    #
    InputClipping = ::Struct.new(
      :end_timecode,
      :start_timecode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputDeblockFilter
    #
    module InputDeblockFilter
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Settings for decrypting any input files that you encrypt before you upload them to Amazon S3. MediaConvert can decrypt files only when you use AWS Key Management Service (KMS) to encrypt the data key that you use to encrypt your content.
    #
    # @!attribute decryption_mode
    #   Specify the encryption mode that you used to encrypt your input files.
    #
    #   Enum, one of: ["AES_CTR", "AES_CBC", "AES_GCM"]
    #
    #   @return [String]
    #
    # @!attribute encrypted_decryption_key
    #   Warning! Don't provide your encryption key in plaintext. Your job settings could be intercepted, making your encrypted content vulnerable. Specify the encrypted version of the data key that you used to encrypt your content. The data key must be encrypted by AWS Key Management Service (KMS). The key can be 128, 192, or 256 bits.
    #
    #   @return [String]
    #
    # @!attribute initialization_vector
    #   Specify the initialization vector that you used when you encrypted your content before uploading it to Amazon S3. You can use a 16-byte initialization vector with any encryption mode. Or, you can use a 12-byte initialization vector with GCM or CTR. MediaConvert accepts only initialization vectors that are base64-encoded.
    #
    #   @return [String]
    #
    # @!attribute kms_key_region
    #   Specify the AWS Region for AWS Key Management Service (KMS) that you used to encrypt your data key, if that Region is different from the one you are using for AWS Elemental MediaConvert.
    #
    #   @return [String]
    #
    InputDecryptionSettings = ::Struct.new(
      :decryption_mode,
      :encrypted_decryption_key,
      :initialization_vector,
      :kms_key_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputDenoiseFilter
    #
    module InputDenoiseFilter
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for InputFilterEnable
    #
    module InputFilterEnable
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      DISABLE = "DISABLE"

      # No documentation available.
      #
      FORCE = "FORCE"
    end

    # Includes enum constants for InputPolicy
    #
    module InputPolicy
      # No documentation available.
      #
      ALLOWED = "ALLOWED"

      # No documentation available.
      #
      DISALLOWED = "DISALLOWED"
    end

    # Includes enum constants for InputPsiControl
    #
    module InputPsiControl
      # No documentation available.
      #
      IGNORE_PSI = "IGNORE_PSI"

      # No documentation available.
      #
      USE_PSI = "USE_PSI"
    end

    # Includes enum constants for InputRotate
    #
    module InputRotate
      # No documentation available.
      #
      DEGREE_0 = "DEGREE_0"

      # No documentation available.
      #
      DEGREES_90 = "DEGREES_90"

      # No documentation available.
      #
      DEGREES_180 = "DEGREES_180"

      # No documentation available.
      #
      DEGREES_270 = "DEGREES_270"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for InputSampleRange
    #
    module InputSampleRange
      # No documentation available.
      #
      FOLLOW = "FOLLOW"

      # No documentation available.
      #
      FULL_RANGE = "FULL_RANGE"

      # No documentation available.
      #
      LIMITED_RANGE = "LIMITED_RANGE"
    end

    # Includes enum constants for InputScanType
    #
    module InputScanType
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      PSF = "PSF"
    end

    # Specified video input in a template.
    #
    # @!attribute audio_selector_groups
    #   Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab (AudioDescription). Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group.
    #
    #   @return [Hash<String, AudioSelectorGroup>]
    #
    # @!attribute audio_selectors
    #   Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input.
    #
    #   @return [Hash<String, AudioSelector>]
    #
    # @!attribute caption_selectors
    #   Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 20 captions selectors per input.
    #
    #   @return [Hash<String, CaptionSelector>]
    #
    # @!attribute crop
    #   Use Cropping selection (crop) to specify the video area that the service will include in the output video frame. If you specify a value here, it will override any value that you specify in the output setting Cropping selection (crop).
    #
    #   @return [Rectangle]
    #
    # @!attribute deblock_filter
    #   Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute denoise_filter
    #   Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute dolby_vision_metadata_xml
    #   Use this setting only when your video source has Dolby Vision studio mastering metadata that is carried in a separate XML file. Specify the Amazon S3 location for the metadata XML file. MediaConvert uses this file to provide global and frame-level metadata for Dolby Vision preprocessing. When you specify a file here and your input also has interleaved global and frame level metadata, MediaConvert ignores the interleaved metadata and uses only the the metadata from this external XML file. Note that your IAM service role must grant MediaConvert read permissions to this file. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
    #
    #   @return [String]
    #
    # @!attribute filter_enable
    #   Specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The input is filtered regardless of input type.
    #
    #   Enum, one of: ["AUTO", "DISABLE", "FORCE"]
    #
    #   @return [String]
    #
    # @!attribute filter_strength
    #   Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0.
    #
    #   @return [Integer]
    #
    # @!attribute image_inserter
    #   Enable the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input individually. This setting is disabled by default.
    #
    #   @return [ImageInserter]
    #
    # @!attribute input_clippings
    #   (InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
    #
    #   @return [Array<InputClipping>]
    #
    # @!attribute input_scan_type
    #   When you have a progressive segmented frame (PsF) input, use this setting to flag the input as PsF. MediaConvert doesn't automatically detect PsF. Therefore, flagging your input as PsF results in better preservation of video quality when you do deinterlacing and frame rate conversion. If you don't specify, the default value is Auto (AUTO). Auto is the correct setting for all inputs that are not PsF. Don't set this value to PsF when your input is interlaced. Doing so creates horizontal interlacing artifacts.
    #
    #   Enum, one of: ["AUTO", "PSF"]
    #
    #   @return [String]
    #
    # @!attribute position
    #   Use Selection placement (position) to define the video area in your output frame. The area outside of the rectangle that you specify here is black. If you specify a value here, it will override any value that you specify in the output setting Selection placement (position). If you specify a value here, this will override any AFD values in your input, even if you set Respond to AFD (RespondToAfd) to Respond (RESPOND). If you specify a value here, this will ignore anything that you specify for the setting Scaling Behavior (scalingBehavior).
    #
    #   @return [Rectangle]
    #
    # @!attribute program_number
    #   Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
    #
    #   @return [Integer]
    #
    # @!attribute psi_control
    #   Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data.
    #
    #   Enum, one of: ["IGNORE_PSI", "USE_PSI"]
    #
    #   @return [String]
    #
    # @!attribute timecode_source
    #   Use this Timecode source setting, located under the input settings (InputTimecodeSource), to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded (EMBEDDED) to use the timecodes in your input video. Choose Start at zero (ZEROBASED) to start the first frame at zero. Choose Specified start (SPECIFIEDSTART) to start the first frame at the timecode that you specify in the setting Start timecode (timecodeStart). If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.
    #
    #   Enum, one of: ["EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"]
    #
    #   @return [String]
    #
    # @!attribute timecode_start
    #   Specify the timecode that you want the service to use for this input's initial frame. To use this setting, you must set the Timecode source setting, located under the input settings (InputTimecodeSource), to Specified start (SPECIFIEDSTART). For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.
    #
    #   @return [String]
    #
    # @!attribute video_selector
    #   Input video selectors contain the video settings for the input. Each of your inputs can have up to one video selector.
    #
    #   @return [VideoSelector]
    #
    InputTemplate = ::Struct.new(
      :audio_selector_groups,
      :audio_selectors,
      :caption_selectors,
      :crop,
      :deblock_filter,
      :denoise_filter,
      :dolby_vision_metadata_xml,
      :filter_enable,
      :filter_strength,
      :image_inserter,
      :input_clippings,
      :input_scan_type,
      :position,
      :program_number,
      :psi_control,
      :timecode_source,
      :timecode_start,
      :video_selector,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.filter_strength ||= 0
        self.program_number ||= 0
      end
    end

    # Includes enum constants for InputTimecodeSource
    #
    module InputTimecodeSource
      # No documentation available.
      #
      EMBEDDED = "EMBEDDED"

      # No documentation available.
      #
      ZEROBASED = "ZEROBASED"

      # No documentation available.
      #
      SPECIFIEDSTART = "SPECIFIEDSTART"
    end

    # Use this setting if you do not have a video input or if you want to add black video frames before, or after, other inputs. When you include Video generator, MediaConvert creates a video input with black frames and without an audio track. You can specify a value for Video generator, or you can specify an Input file, but you cannot specify both.
    #
    # @!attribute duration
    #   Specify an integer value for Black video duration from 50 to 86400000 to generate a black video input for that many milliseconds. Required when you include Video generator.
    #
    #   @return [Integer]
    #
    InputVideoGenerator = ::Struct.new(
      :duration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
      end
    end

    # These settings apply to a specific graphic overlay. You can include multiple overlays in your job.
    #
    # @!attribute duration
    #   Specify the time, in milliseconds, for the image to remain on the output video. This duration includes fade-in time but not fade-out time.
    #
    #   @return [Integer]
    #
    # @!attribute fade_in
    #   Specify the length of time, in milliseconds, between the Start time that you specify for the image insertion and the time that the image appears at full opacity. Full opacity is the level that you specify for the opacity setting. If you don't specify a value for Fade-in, the image will appear abruptly at the overlay start time.
    #
    #   @return [Integer]
    #
    # @!attribute fade_out
    #   Specify the length of time, in milliseconds, between the end of the time that you have specified for the image overlay Duration and when the overlaid image has faded to total transparency. If you don't specify a value for Fade-out, the image will disappear abruptly at the end of the inserted image duration.
    #
    #   @return [Integer]
    #
    # @!attribute height
    #   Specify the height of the inserted image in pixels. If you specify a value that's larger than the video resolution height, the service will crop your overlaid image to fit. To use the native height of the image, keep this setting blank.
    #
    #   @return [Integer]
    #
    # @!attribute image_inserter_input
    #   Specify the HTTP, HTTPS, or Amazon S3 location of the image that you want to overlay on the video. Use a PNG or TGA file.
    #
    #   @return [String]
    #
    # @!attribute image_x
    #   Specify the distance, in pixels, between the inserted image and the left edge of the video frame. Required for any image overlay that you specify.
    #
    #   @return [Integer]
    #
    # @!attribute image_y
    #   Specify the distance, in pixels, between the overlaid image and the top edge of the video frame. Required for any image overlay that you specify.
    #
    #   @return [Integer]
    #
    # @!attribute layer
    #   Specify how overlapping inserted images appear. Images with higher values for Layer appear on top of images with lower values for Layer.
    #
    #   @return [Integer]
    #
    # @!attribute opacity
    #   Use Opacity (Opacity) to specify how much of the underlying video shows through the inserted image. 0 is transparent and 100 is fully opaque. Default is 50.
    #
    #   @return [Integer]
    #
    # @!attribute start_time
    #   Specify the timecode of the frame that you want the overlay to first appear on. This must be in timecode (HH:MM:SS:FF or HH:MM:SS;FF) format. Remember to take into account your timecode source settings.
    #
    #   @return [String]
    #
    # @!attribute width
    #   Specify the width of the inserted image in pixels. If you specify a value that's larger than the video resolution width, the service will crop your overlaid image to fit. To use the native width of the image, keep this setting blank.
    #
    #   @return [Integer]
    #
    InsertableImage = ::Struct.new(
      :duration,
      :fade_in,
      :fade_out,
      :height,
      :image_inserter_input,
      :image_x,
      :image_y,
      :layer,
      :opacity,
      :start_time,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.fade_in ||= 0
        self.fade_out ||= 0
        self.height ||= 0
        self.image_x ||= 0
        self.image_y ||= 0
        self.layer ||= 0
        self.opacity ||= 0
        self.width ||= 0
      end
    end

    # The service encountered an unexpected condition and can't fulfill your request.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @!attribute acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long, visually complex content.
    #
    #   @return [AccelerationSettings]
    #
    # @!attribute acceleration_status
    #   Describes whether the current job is running with accelerated transcoding. For jobs that have Acceleration (AccelerationMode) set to DISABLED, AccelerationStatus is always NOT_APPLICABLE. For jobs that have Acceleration (AccelerationMode) set to ENABLED or PREFERRED, AccelerationStatus is one of the other states. AccelerationStatus is IN_PROGRESS initially, while the service determines whether the input files and job settings are compatible with accelerated transcoding. If they are, AcclerationStatus is ACCELERATED. If your input files and job settings aren't compatible with accelerated transcoding, the service either fails your job or runs it without accelerated transcoding, depending on how you set Acceleration (AccelerationMode). When the service runs your job without accelerated transcoding, AccelerationStatus is NOT_ACCELERATED.
    #
    #   Enum, one of: ["NOT_APPLICABLE", "IN_PROGRESS", "ACCELERATED", "NOT_ACCELERATED"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   An identifier for this resource that is unique within all of AWS.
    #
    #   @return [String]
    #
    # @!attribute billing_tags_source
    #   The tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up.
    #
    #   Enum, one of: ["QUEUE", "PRESET", "JOB_TEMPLATE", "JOB"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The time, in Unix epoch format in seconds, when the job got created.
    #
    #   @return [Time]
    #
    # @!attribute current_phase
    #   A job's phase can be PROBING, TRANSCODING OR UPLOADING
    #
    #   Enum, one of: ["PROBING", "TRANSCODING", "UPLOADING"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   Error code for the job
    #
    #   @return [Integer]
    #
    # @!attribute error_message
    #   Error message of Job
    #
    #   @return [String]
    #
    # @!attribute hop_destinations
    #   Optional list of hop destinations.
    #
    #   @return [Array<HopDestination>]
    #
    # @!attribute id
    #   A portion of the job's ARN, unique within your AWS Elemental MediaConvert resources
    #
    #   @return [String]
    #
    # @!attribute job_percent_complete
    #   An estimate of how far your job has progressed. This estimate is shown as a percentage of the total time from when your job leaves its queue to when your output files appear in your output Amazon S3 bucket. AWS Elemental MediaConvert provides jobPercentComplete in CloudWatch STATUS_UPDATE events and in the response to GetJob and ListJobs requests. The jobPercentComplete estimate is reliable for the following input containers: Quicktime, Transport Stream, MP4, and MXF. For some jobs, the service can't provide information about job progress. In those cases, jobPercentComplete returns a null value.
    #
    #   @return [Integer]
    #
    # @!attribute job_template
    #   The job template that the job is created from, if it is created from a job template.
    #
    #   @return [String]
    #
    # @!attribute messages
    #   Provides messages from the service about jobs that you have already successfully submitted.
    #
    #   @return [JobMessages]
    #
    # @!attribute output_group_details
    #   List of output group details
    #
    #   @return [Array<OutputGroupDetail>]
    #
    # @!attribute priority
    #   Relative priority on the job.
    #
    #   @return [Integer]
    #
    # @!attribute queue
    #   When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    #   @return [String]
    #
    # @!attribute queue_transitions
    #   The job's queue hopping history.
    #
    #   @return [Array<QueueTransition>]
    #
    # @!attribute retry_count
    #   The number of times that the service automatically attempted to process your job after encountering an error.
    #
    #   @return [Integer]
    #
    # @!attribute role
    #   The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
    #
    #   @return [String]
    #
    # @!attribute settings
    #   JobSettings contains all the transcode settings for a job.
    #
    #   @return [JobSettings]
    #
    # @!attribute simulate_reserved_queue
    #   Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
    #
    #   Enum, one of: ["SUBMITTED", "PROGRESSING", "COMPLETE", "CANCELED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute status_update_interval
    #   Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #
    #   Enum, one of: ["SECONDS_10", "SECONDS_12", "SECONDS_15", "SECONDS_20", "SECONDS_30", "SECONDS_60", "SECONDS_120", "SECONDS_180", "SECONDS_240", "SECONDS_300", "SECONDS_360", "SECONDS_420", "SECONDS_480", "SECONDS_540", "SECONDS_600"]
    #
    #   @return [String]
    #
    # @!attribute timing
    #   Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds.
    #
    #   @return [Timing]
    #
    # @!attribute user_metadata
    #   User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.
    #
    #   @return [Hash<String, String>]
    #
    Job = ::Struct.new(
      :acceleration_settings,
      :acceleration_status,
      :arn,
      :billing_tags_source,
      :created_at,
      :current_phase,
      :error_code,
      :error_message,
      :hop_destinations,
      :id,
      :job_percent_complete,
      :job_template,
      :messages,
      :output_group_details,
      :priority,
      :queue,
      :queue_transitions,
      :retry_count,
      :role,
      :settings,
      :simulate_reserved_queue,
      :status,
      :status_update_interval,
      :timing,
      :user_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.error_code ||= 0
        self.job_percent_complete ||= 0
        self.priority ||= 0
        self.retry_count ||= 0
      end
    end

    # Provides messages from the service about jobs that you have already successfully submitted.
    #
    # @!attribute info
    #   List of messages that are informational only and don't indicate a problem with your job.
    #
    #   @return [Array<String>]
    #
    # @!attribute warning
    #   List of messages that warn about conditions that might cause your job not to run or to fail.
    #
    #   @return [Array<String>]
    #
    JobMessages = ::Struct.new(
      :info,
      :warning,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobPhase
    #
    module JobPhase
      # No documentation available.
      #
      PROBING = "PROBING"

      # No documentation available.
      #
      TRANSCODING = "TRANSCODING"

      # No documentation available.
      #
      UPLOADING = "UPLOADING"
    end

    # JobSettings contains all the transcode settings for a job.
    #
    # @!attribute ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
    #
    #   @return [Integer]
    #
    # @!attribute avail_blanking
    #   Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
    #
    #   @return [AvailBlanking]
    #
    # @!attribute esam
    #   Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings.
    #
    #   @return [EsamSettings]
    #
    # @!attribute extended_data_services
    #   If your source content has EIA-608 Line 21 Data Services, enable this feature to specify what MediaConvert does with the Extended Data Services (XDS) packets. You can choose to pass through XDS packets, or remove them from the output. For more information about XDS, see EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory.
    #
    #   @return [ExtendedDataServices]
    #
    # @!attribute inputs
    #   Use Inputs (inputs) to define source file used in the transcode job. There can be multiple inputs add in a job. These inputs will be concantenated together to create the output.
    #
    #   @return [Array<Input>]
    #
    # @!attribute kantar_watermark
    #   Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html.
    #
    #   @return [KantarWatermarkSettings]
    #
    # @!attribute motion_image_inserter
    #   Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/motion-graphic-overlay.html.
    #
    #   @return [MotionImageInserter]
    #
    # @!attribute nielsen_configuration
    #   Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM to ID3 tagging for all outputs in the job. To enable Nielsen configuration programmatically, include an instance of nielsenConfiguration in your JSON job specification. Even if you don't include any children of nielsenConfiguration, you still enable the setting.
    #
    #   @return [NielsenConfiguration]
    #
    # @!attribute nielsen_non_linear_watermark
    #   Ignore these settings unless you are using Nielsen non-linear watermarking. Specify the values that  MediaConvert uses to generate and place Nielsen watermarks in your output audio. In addition to  specifying these values, you also need to set up your cloud TIC server. These settings apply to  every output in your job. The MediaConvert implementation is currently with the following Nielsen versions: Nielsen Watermark SDK Version 5.2.1 Nielsen NLM Watermark Engine Version 1.2.7 Nielsen Watermark Authenticator [SID_TIC] Version [5.0.0]
    #
    #   @return [NielsenNonLinearWatermarkSettings]
    #
    # @!attribute output_groups
    #   (OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings
    #
    #   @return [Array<OutputGroup>]
    #
    # @!attribute timecode_config
    #   These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping.
    #
    #   @return [TimecodeConfig]
    #
    # @!attribute timed_metadata_insertion
    #   Insert user-defined custom ID3 metadata (id3) at timecodes (timecode) that you specify. In each output that you want to include this metadata, you must set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH).
    #
    #   @return [TimedMetadataInsertion]
    #
    JobSettings = ::Struct.new(
      :ad_avail_offset,
      :avail_blanking,
      :esam,
      :extended_data_services,
      :inputs,
      :kantar_watermark,
      :motion_image_inserter,
      :nielsen_configuration,
      :nielsen_non_linear_watermark,
      :output_groups,
      :timecode_config,
      :timed_metadata_insertion,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ad_avail_offset ||= 0
      end
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      PROGRESSING = "PROGRESSING"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
    #
    # @!attribute acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long, visually complex content.
    #
    #   @return [AccelerationSettings]
    #
    # @!attribute arn
    #   An identifier for this resource that is unique within all of AWS.
    #
    #   @return [String]
    #
    # @!attribute category
    #   An optional category you create to organize your job templates.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The timestamp in epoch seconds for Job template creation.
    #
    #   @return [Time]
    #
    # @!attribute description
    #   An optional description you create for each job template.
    #
    #   @return [String]
    #
    # @!attribute hop_destinations
    #   Optional list of hop destinations.
    #
    #   @return [Array<HopDestination>]
    #
    # @!attribute last_updated
    #   The timestamp in epoch seconds when the Job template was last updated.
    #
    #   @return [Time]
    #
    # @!attribute name
    #   A name you create for each job template. Each name must be unique within your account.
    #
    #   @return [String]
    #
    # @!attribute priority
    #   Relative priority on the job.
    #
    #   @return [Integer]
    #
    # @!attribute queue
    #   Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.
    #
    #   @return [String]
    #
    # @!attribute settings
    #   JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
    #
    #   @return [JobTemplateSettings]
    #
    # @!attribute status_update_interval
    #   Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #
    #   Enum, one of: ["SECONDS_10", "SECONDS_12", "SECONDS_15", "SECONDS_20", "SECONDS_30", "SECONDS_60", "SECONDS_120", "SECONDS_180", "SECONDS_240", "SECONDS_300", "SECONDS_360", "SECONDS_420", "SECONDS_480", "SECONDS_540", "SECONDS_600"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   A job template can be of two types: system or custom. System or built-in job templates can't be modified or deleted by the user.
    #
    #   Enum, one of: ["SYSTEM", "CUSTOM"]
    #
    #   @return [String]
    #
    JobTemplate = ::Struct.new(
      :acceleration_settings,
      :arn,
      :category,
      :created_at,
      :description,
      :hop_destinations,
      :last_updated,
      :name,
      :priority,
      :queue,
      :settings,
      :status_update_interval,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # Includes enum constants for JobTemplateListBy
    #
    module JobTemplateListBy
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      CREATION_DATE = "CREATION_DATE"

      # No documentation available.
      #
      SYSTEM = "SYSTEM"
    end

    # JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
    #
    # @!attribute ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
    #
    #   @return [Integer]
    #
    # @!attribute avail_blanking
    #   Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
    #
    #   @return [AvailBlanking]
    #
    # @!attribute esam
    #   Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings.
    #
    #   @return [EsamSettings]
    #
    # @!attribute extended_data_services
    #   If your source content has EIA-608 Line 21 Data Services, enable this feature to specify what MediaConvert does with the Extended Data Services (XDS) packets. You can choose to pass through XDS packets, or remove them from the output. For more information about XDS, see EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory.
    #
    #   @return [ExtendedDataServices]
    #
    # @!attribute inputs
    #   Use Inputs (inputs) to define the source file used in the transcode job. There can only be one input in a job template.  Using the API, you can include multiple inputs when referencing a job template.
    #
    #   @return [Array<InputTemplate>]
    #
    # @!attribute kantar_watermark
    #   Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html.
    #
    #   @return [KantarWatermarkSettings]
    #
    # @!attribute motion_image_inserter
    #   Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/motion-graphic-overlay.html.
    #
    #   @return [MotionImageInserter]
    #
    # @!attribute nielsen_configuration
    #   Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM to ID3 tagging for all outputs in the job. To enable Nielsen configuration programmatically, include an instance of nielsenConfiguration in your JSON job specification. Even if you don't include any children of nielsenConfiguration, you still enable the setting.
    #
    #   @return [NielsenConfiguration]
    #
    # @!attribute nielsen_non_linear_watermark
    #   Ignore these settings unless you are using Nielsen non-linear watermarking. Specify the values that  MediaConvert uses to generate and place Nielsen watermarks in your output audio. In addition to  specifying these values, you also need to set up your cloud TIC server. These settings apply to  every output in your job. The MediaConvert implementation is currently with the following Nielsen versions: Nielsen Watermark SDK Version 5.2.1 Nielsen NLM Watermark Engine Version 1.2.7 Nielsen Watermark Authenticator [SID_TIC] Version [5.0.0]
    #
    #   @return [NielsenNonLinearWatermarkSettings]
    #
    # @!attribute output_groups
    #   (OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings
    #
    #   @return [Array<OutputGroup>]
    #
    # @!attribute timecode_config
    #   These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping.
    #
    #   @return [TimecodeConfig]
    #
    # @!attribute timed_metadata_insertion
    #   Insert user-defined custom ID3 metadata (id3) at timecodes (timecode) that you specify. In each output that you want to include this metadata, you must set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH).
    #
    #   @return [TimedMetadataInsertion]
    #
    JobTemplateSettings = ::Struct.new(
      :ad_avail_offset,
      :avail_blanking,
      :esam,
      :extended_data_services,
      :inputs,
      :kantar_watermark,
      :motion_image_inserter,
      :nielsen_configuration,
      :nielsen_non_linear_watermark,
      :output_groups,
      :timecode_config,
      :timed_metadata_insertion,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ad_avail_offset ||= 0
      end
    end

    # Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html.
    #
    # @!attribute channel_name
    #   Provide an audio channel name from your Kantar audio license.
    #
    #   @return [String]
    #
    # @!attribute content_reference
    #   Specify a unique identifier for Kantar to use for this piece of content.
    #
    #   @return [String]
    #
    # @!attribute credentials_secret_name
    #   Provide the name of the AWS Secrets Manager secret where your Kantar credentials are stored. Note that your MediaConvert service role must provide access to this secret. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/granting-permissions-for-mediaconvert-to-access-secrets-manager-secret.html. For instructions on creating a secret, see https://docs.aws.amazon.com/secretsmanager/latest/userguide/tutorials_basic.html, in the AWS Secrets Manager User Guide.
    #
    #   @return [String]
    #
    # @!attribute file_offset
    #   Optional. Specify an offset, in whole seconds, from the start of your output and the beginning of the watermarking. When you don't specify an offset, Kantar defaults to zero.
    #
    #   @return [Float]
    #
    # @!attribute kantar_license_id
    #   Provide your Kantar license ID number. You should get this number from Kantar.
    #
    #   @return [Integer]
    #
    # @!attribute kantar_server_url
    #   Provide the HTTPS endpoint to the Kantar server. You should get this endpoint from Kantar.
    #
    #   @return [String]
    #
    # @!attribute log_destination
    #   Optional. Specify the Amazon S3 bucket where you want MediaConvert to store your Kantar watermark XML logs. When you don't specify a bucket, MediaConvert doesn't save these logs. Note that your MediaConvert service role must provide access to this location. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
    #
    #   @return [String]
    #
    # @!attribute metadata3
    #   You can optionally use this field to specify the first timestamp that Kantar embeds during watermarking. Kantar suggests that you be very cautious when using this Kantar feature, and that you use it only on channels that are managed specifically for use with this feature by your Audience Measurement Operator. For more information about this feature, contact Kantar technical support.
    #
    #   @return [String]
    #
    # @!attribute metadata4
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #
    #   @return [String]
    #
    # @!attribute metadata5
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #
    #   @return [String]
    #
    # @!attribute metadata6
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #
    #   @return [String]
    #
    # @!attribute metadata7
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #
    #   @return [String]
    #
    # @!attribute metadata8
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #
    #   @return [String]
    #
    KantarWatermarkSettings = ::Struct.new(
      :channel_name,
      :content_reference,
      :credentials_secret_name,
      :file_offset,
      :kantar_license_id,
      :kantar_server_url,
      :log_destination,
      :metadata3,
      :metadata4,
      :metadata5,
      :metadata6,
      :metadata7,
      :metadata8,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.file_offset ||= 0
        self.kantar_license_id ||= 0
      end
    end

    # Includes enum constants for LanguageCode
    #
    module LanguageCode
      # No documentation available.
      #
      ENG = "ENG"

      # No documentation available.
      #
      SPA = "SPA"

      # No documentation available.
      #
      FRA = "FRA"

      # No documentation available.
      #
      DEU = "DEU"

      # No documentation available.
      #
      GER = "GER"

      # No documentation available.
      #
      ZHO = "ZHO"

      # No documentation available.
      #
      ARA = "ARA"

      # No documentation available.
      #
      HIN = "HIN"

      # No documentation available.
      #
      JPN = "JPN"

      # No documentation available.
      #
      RUS = "RUS"

      # No documentation available.
      #
      POR = "POR"

      # No documentation available.
      #
      ITA = "ITA"

      # No documentation available.
      #
      URD = "URD"

      # No documentation available.
      #
      VIE = "VIE"

      # No documentation available.
      #
      KOR = "KOR"

      # No documentation available.
      #
      PAN = "PAN"

      # No documentation available.
      #
      ABK = "ABK"

      # No documentation available.
      #
      AAR = "AAR"

      # No documentation available.
      #
      AFR = "AFR"

      # No documentation available.
      #
      AKA = "AKA"

      # No documentation available.
      #
      SQI = "SQI"

      # No documentation available.
      #
      AMH = "AMH"

      # No documentation available.
      #
      ARG = "ARG"

      # No documentation available.
      #
      HYE = "HYE"

      # No documentation available.
      #
      ASM = "ASM"

      # No documentation available.
      #
      AVA = "AVA"

      # No documentation available.
      #
      AVE = "AVE"

      # No documentation available.
      #
      AYM = "AYM"

      # No documentation available.
      #
      AZE = "AZE"

      # No documentation available.
      #
      BAM = "BAM"

      # No documentation available.
      #
      BAK = "BAK"

      # No documentation available.
      #
      EUS = "EUS"

      # No documentation available.
      #
      BEL = "BEL"

      # No documentation available.
      #
      BEN = "BEN"

      # No documentation available.
      #
      BIH = "BIH"

      # No documentation available.
      #
      BIS = "BIS"

      # No documentation available.
      #
      BOS = "BOS"

      # No documentation available.
      #
      BRE = "BRE"

      # No documentation available.
      #
      BUL = "BUL"

      # No documentation available.
      #
      MYA = "MYA"

      # No documentation available.
      #
      CAT = "CAT"

      # No documentation available.
      #
      KHM = "KHM"

      # No documentation available.
      #
      CHA = "CHA"

      # No documentation available.
      #
      CHE = "CHE"

      # No documentation available.
      #
      NYA = "NYA"

      # No documentation available.
      #
      CHU = "CHU"

      # No documentation available.
      #
      CHV = "CHV"

      # No documentation available.
      #
      COR = "COR"

      # No documentation available.
      #
      COS = "COS"

      # No documentation available.
      #
      CRE = "CRE"

      # No documentation available.
      #
      HRV = "HRV"

      # No documentation available.
      #
      CES = "CES"

      # No documentation available.
      #
      DAN = "DAN"

      # No documentation available.
      #
      DIV = "DIV"

      # No documentation available.
      #
      NLD = "NLD"

      # No documentation available.
      #
      DZO = "DZO"

      # No documentation available.
      #
      ENM = "ENM"

      # No documentation available.
      #
      EPO = "EPO"

      # No documentation available.
      #
      EST = "EST"

      # No documentation available.
      #
      EWE = "EWE"

      # No documentation available.
      #
      FAO = "FAO"

      # No documentation available.
      #
      FIJ = "FIJ"

      # No documentation available.
      #
      FIN = "FIN"

      # No documentation available.
      #
      FRM = "FRM"

      # No documentation available.
      #
      FUL = "FUL"

      # No documentation available.
      #
      GLA = "GLA"

      # No documentation available.
      #
      GLG = "GLG"

      # No documentation available.
      #
      LUG = "LUG"

      # No documentation available.
      #
      KAT = "KAT"

      # No documentation available.
      #
      ELL = "ELL"

      # No documentation available.
      #
      GRN = "GRN"

      # No documentation available.
      #
      GUJ = "GUJ"

      # No documentation available.
      #
      HAT = "HAT"

      # No documentation available.
      #
      HAU = "HAU"

      # No documentation available.
      #
      HEB = "HEB"

      # No documentation available.
      #
      HER = "HER"

      # No documentation available.
      #
      HMO = "HMO"

      # No documentation available.
      #
      HUN = "HUN"

      # No documentation available.
      #
      ISL = "ISL"

      # No documentation available.
      #
      IDO = "IDO"

      # No documentation available.
      #
      IBO = "IBO"

      # No documentation available.
      #
      IND = "IND"

      # No documentation available.
      #
      INA = "INA"

      # No documentation available.
      #
      ILE = "ILE"

      # No documentation available.
      #
      IKU = "IKU"

      # No documentation available.
      #
      IPK = "IPK"

      # No documentation available.
      #
      GLE = "GLE"

      # No documentation available.
      #
      JAV = "JAV"

      # No documentation available.
      #
      KAL = "KAL"

      # No documentation available.
      #
      KAN = "KAN"

      # No documentation available.
      #
      KAU = "KAU"

      # No documentation available.
      #
      KAS = "KAS"

      # No documentation available.
      #
      KAZ = "KAZ"

      # No documentation available.
      #
      KIK = "KIK"

      # No documentation available.
      #
      KIN = "KIN"

      # No documentation available.
      #
      KIR = "KIR"

      # No documentation available.
      #
      KOM = "KOM"

      # No documentation available.
      #
      KON = "KON"

      # No documentation available.
      #
      KUA = "KUA"

      # No documentation available.
      #
      KUR = "KUR"

      # No documentation available.
      #
      LAO = "LAO"

      # No documentation available.
      #
      LAT = "LAT"

      # No documentation available.
      #
      LAV = "LAV"

      # No documentation available.
      #
      LIM = "LIM"

      # No documentation available.
      #
      LIN = "LIN"

      # No documentation available.
      #
      LIT = "LIT"

      # No documentation available.
      #
      LUB = "LUB"

      # No documentation available.
      #
      LTZ = "LTZ"

      # No documentation available.
      #
      MKD = "MKD"

      # No documentation available.
      #
      MLG = "MLG"

      # No documentation available.
      #
      MSA = "MSA"

      # No documentation available.
      #
      MAL = "MAL"

      # No documentation available.
      #
      MLT = "MLT"

      # No documentation available.
      #
      GLV = "GLV"

      # No documentation available.
      #
      MRI = "MRI"

      # No documentation available.
      #
      MAR = "MAR"

      # No documentation available.
      #
      MAH = "MAH"

      # No documentation available.
      #
      MON = "MON"

      # No documentation available.
      #
      NAU = "NAU"

      # No documentation available.
      #
      NAV = "NAV"

      # No documentation available.
      #
      NDE = "NDE"

      # No documentation available.
      #
      NBL = "NBL"

      # No documentation available.
      #
      NDO = "NDO"

      # No documentation available.
      #
      NEP = "NEP"

      # No documentation available.
      #
      SME = "SME"

      # No documentation available.
      #
      NOR = "NOR"

      # No documentation available.
      #
      NOB = "NOB"

      # No documentation available.
      #
      NNO = "NNO"

      # No documentation available.
      #
      OCI = "OCI"

      # No documentation available.
      #
      OJI = "OJI"

      # No documentation available.
      #
      ORI = "ORI"

      # No documentation available.
      #
      ORM = "ORM"

      # No documentation available.
      #
      OSS = "OSS"

      # No documentation available.
      #
      PLI = "PLI"

      # No documentation available.
      #
      FAS = "FAS"

      # No documentation available.
      #
      POL = "POL"

      # No documentation available.
      #
      PUS = "PUS"

      # No documentation available.
      #
      QUE = "QUE"

      # No documentation available.
      #
      QAA = "QAA"

      # No documentation available.
      #
      RON = "RON"

      # No documentation available.
      #
      ROH = "ROH"

      # No documentation available.
      #
      RUN = "RUN"

      # No documentation available.
      #
      SMO = "SMO"

      # No documentation available.
      #
      SAG = "SAG"

      # No documentation available.
      #
      SAN = "SAN"

      # No documentation available.
      #
      SRD = "SRD"

      # No documentation available.
      #
      SRB = "SRB"

      # No documentation available.
      #
      SNA = "SNA"

      # No documentation available.
      #
      III = "III"

      # No documentation available.
      #
      SND = "SND"

      # No documentation available.
      #
      SIN = "SIN"

      # No documentation available.
      #
      SLK = "SLK"

      # No documentation available.
      #
      SLV = "SLV"

      # No documentation available.
      #
      SOM = "SOM"

      # No documentation available.
      #
      SOT = "SOT"

      # No documentation available.
      #
      SUN = "SUN"

      # No documentation available.
      #
      SWA = "SWA"

      # No documentation available.
      #
      SSW = "SSW"

      # No documentation available.
      #
      SWE = "SWE"

      # No documentation available.
      #
      TGL = "TGL"

      # No documentation available.
      #
      TAH = "TAH"

      # No documentation available.
      #
      TGK = "TGK"

      # No documentation available.
      #
      TAM = "TAM"

      # No documentation available.
      #
      TAT = "TAT"

      # No documentation available.
      #
      TEL = "TEL"

      # No documentation available.
      #
      THA = "THA"

      # No documentation available.
      #
      BOD = "BOD"

      # No documentation available.
      #
      TIR = "TIR"

      # No documentation available.
      #
      TON = "TON"

      # No documentation available.
      #
      TSO = "TSO"

      # No documentation available.
      #
      TSN = "TSN"

      # No documentation available.
      #
      TUR = "TUR"

      # No documentation available.
      #
      TUK = "TUK"

      # No documentation available.
      #
      TWI = "TWI"

      # No documentation available.
      #
      UIG = "UIG"

      # No documentation available.
      #
      UKR = "UKR"

      # No documentation available.
      #
      UZB = "UZB"

      # No documentation available.
      #
      VEN = "VEN"

      # No documentation available.
      #
      VOL = "VOL"

      # No documentation available.
      #
      WLN = "WLN"

      # No documentation available.
      #
      CYM = "CYM"

      # No documentation available.
      #
      FRY = "FRY"

      # No documentation available.
      #
      WOL = "WOL"

      # No documentation available.
      #
      XHO = "XHO"

      # No documentation available.
      #
      YID = "YID"

      # No documentation available.
      #
      YOR = "YOR"

      # No documentation available.
      #
      ZHA = "ZHA"

      # No documentation available.
      #
      ZUL = "ZUL"

      # No documentation available.
      #
      ORJ = "ORJ"

      # No documentation available.
      #
      QPC = "QPC"

      # No documentation available.
      #
      TNG = "TNG"

      # No documentation available.
      #
      SRP = "SRP"
    end

    # @!attribute category
    #   Optionally, specify a job template category to limit responses to only job templates from that category.
    #
    #   @return [String]
    #
    # @!attribute list_by
    #   Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
    #
    #   Enum, one of: ["NAME", "CREATION_DATE", "SYSTEM"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   Optional. Number of job templates, up to twenty, that will be returned at one time.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Use this string, provided with the response to a previous request, to request the next batch of job templates.
    #
    #   @return [String]
    #
    # @!attribute order
    #   Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    ListJobTemplatesInput = ::Struct.new(
      :category,
      :list_by,
      :max_results,
      :next_token,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute job_templates
    #   List of Job templates.
    #
    #   @return [Array<JobTemplate>]
    #
    # @!attribute next_token
    #   Use this string to request the next batch of job templates.
    #
    #   @return [String]
    #
    ListJobTemplatesOutput = ::Struct.new(
      :job_templates,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   Optional. Number of jobs, up to twenty, that will be returned at one time.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Optional. Use this string, provided with the response to a previous request, to request the next batch of jobs.
    #
    #   @return [String]
    #
    # @!attribute order
    #   Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute queue
    #   Optional. Provide a queue name to get back only jobs from that queue.
    #
    #   @return [String]
    #
    # @!attribute status
    #   Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
    #
    #   Enum, one of: ["SUBMITTED", "PROGRESSING", "COMPLETE", "CANCELED", "ERROR"]
    #
    #   @return [String]
    #
    ListJobsInput = ::Struct.new(
      :max_results,
      :next_token,
      :order,
      :queue,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute jobs
    #   List of jobs
    #
    #   @return [Array<Job>]
    #
    # @!attribute next_token
    #   Use this string to request the next batch of jobs.
    #
    #   @return [String]
    #
    ListJobsOutput = ::Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category
    #   Optionally, specify a preset category to limit responses to only presets from that category.
    #
    #   @return [String]
    #
    # @!attribute list_by
    #   Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
    #
    #   Enum, one of: ["NAME", "CREATION_DATE", "SYSTEM"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   Optional. Number of presets, up to twenty, that will be returned at one time
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Use this string, provided with the response to a previous request, to request the next batch of presets.
    #
    #   @return [String]
    #
    # @!attribute order
    #   Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    ListPresetsInput = ::Struct.new(
      :category,
      :list_by,
      :max_results,
      :next_token,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute next_token
    #   Use this string to request the next batch of presets.
    #
    #   @return [String]
    #
    # @!attribute presets
    #   List of presets
    #
    #   @return [Array<Preset>]
    #
    ListPresetsOutput = ::Struct.new(
      :next_token,
      :presets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute list_by
    #   Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.
    #
    #   Enum, one of: ["NAME", "CREATION_DATE"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   Optional. Number of queues, up to twenty, that will be returned at one time.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Use this string, provided with the response to a previous request, to request the next batch of queues.
    #
    #   @return [String]
    #
    # @!attribute order
    #   Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    ListQueuesInput = ::Struct.new(
      :list_by,
      :max_results,
      :next_token,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute next_token
    #   Use this string to request the next batch of queues.
    #
    #   @return [String]
    #
    # @!attribute queues
    #   List of queues.
    #
    #   @return [Array<Queue>]
    #
    ListQueuesOutput = ::Struct.new(
      :next_token,
      :queues,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the resource that you want to list tags for. To get the ARN, send a GET request with the resource name.
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_tags
    #   The Amazon Resource Name (ARN) and tags for an AWS Elemental MediaConvert resource.
    #
    #   @return [ResourceTags]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :resource_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for M2tsAudioBufferModel
    #
    module M2tsAudioBufferModel
      # No documentation available.
      #
      DVB = "DVB"

      # No documentation available.
      #
      ATSC = "ATSC"
    end

    # Includes enum constants for M2tsAudioDuration
    #
    module M2tsAudioDuration
      # No documentation available.
      #
      DEFAULT_CODEC_DURATION = "DEFAULT_CODEC_DURATION"

      # No documentation available.
      #
      MATCH_VIDEO_DURATION = "MATCH_VIDEO_DURATION"
    end

    # Includes enum constants for M2tsBufferModel
    #
    module M2tsBufferModel
      # No documentation available.
      #
      MULTIPLEX = "MULTIPLEX"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for M2tsDataPtsControl
    #
    module M2tsDataPtsControl
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      ALIGN_TO_VIDEO = "ALIGN_TO_VIDEO"
    end

    # Includes enum constants for M2tsEbpAudioInterval
    #
    module M2tsEbpAudioInterval
      # No documentation available.
      #
      VIDEO_AND_FIXED_INTERVALS = "VIDEO_AND_FIXED_INTERVALS"

      # No documentation available.
      #
      VIDEO_INTERVAL = "VIDEO_INTERVAL"
    end

    # Includes enum constants for M2tsEbpPlacement
    #
    module M2tsEbpPlacement
      # No documentation available.
      #
      VIDEO_AND_AUDIO_PIDS = "VIDEO_AND_AUDIO_PIDS"

      # No documentation available.
      #
      VIDEO_PID = "VIDEO_PID"
    end

    # Includes enum constants for M2tsEsRateInPes
    #
    module M2tsEsRateInPes
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for M2tsForceTsVideoEbpOrder
    #
    module M2tsForceTsVideoEbpOrder
      # No documentation available.
      #
      FORCE = "FORCE"

      # No documentation available.
      #
      DEFAULT = "DEFAULT"
    end

    # Includes enum constants for M2tsKlvMetadata
    #
    module M2tsKlvMetadata
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for M2tsNielsenId3
    #
    module M2tsNielsenId3
      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for M2tsPcrControl
    #
    module M2tsPcrControl
      # No documentation available.
      #
      PCR_EVERY_PES_PACKET = "PCR_EVERY_PES_PACKET"

      # No documentation available.
      #
      CONFIGURED_PCR_PERIOD = "CONFIGURED_PCR_PERIOD"
    end

    # Includes enum constants for M2tsRateMode
    #
    module M2tsRateMode
      # No documentation available.
      #
      VBR = "VBR"

      # No documentation available.
      #
      CBR = "CBR"
    end

    # Settings for SCTE-35 signals from ESAM. Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
    #
    # @!attribute scte35_esam_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport stream generated by ESAM.
    #
    #   @return [Integer]
    #
    M2tsScte35Esam = ::Struct.new(
      :scte35_esam_pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.scte35_esam_pid ||= 0
      end
    end

    # Includes enum constants for M2tsScte35Source
    #
    module M2tsScte35Source
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for M2tsSegmentationMarkers
    #
    module M2tsSegmentationMarkers
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      RAI_SEGSTART = "RAI_SEGSTART"

      # No documentation available.
      #
      RAI_ADAPT = "RAI_ADAPT"

      # No documentation available.
      #
      PSI_SEGSTART = "PSI_SEGSTART"

      # No documentation available.
      #
      EBP = "EBP"

      # No documentation available.
      #
      EBP_LEGACY = "EBP_LEGACY"
    end

    # Includes enum constants for M2tsSegmentationStyle
    #
    module M2tsSegmentationStyle
      # No documentation available.
      #
      MAINTAIN_CADENCE = "MAINTAIN_CADENCE"

      # No documentation available.
      #
      RESET_CADENCE = "RESET_CADENCE"
    end

    # MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container (ContainerType) is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset.
    #
    # @!attribute audio_buffer_model
    #   Selects between the DVB and ATSC buffer models for Dolby Digital audio.
    #
    #   Enum, one of: ["DVB", "ATSC"]
    #
    #   @return [String]
    #
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #
    #   Enum, one of: ["DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"]
    #
    #   @return [String]
    #
    # @!attribute audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #
    #   @return [Integer]
    #
    # @!attribute audio_pids
    #   Specify the packet identifiers (PIDs) for any elementary audio streams you include in this output. Specify multiple PIDs as a JSON array. Default is the range 482-492.
    #
    #   @return [Array<Integer>]
    #
    # @!attribute bitrate
    #   Specify the output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate. Other common values are 3750000, 7500000, and 15000000.
    #
    #   @return [Integer]
    #
    # @!attribute buffer_model
    #   Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.
    #
    #   Enum, one of: ["MULTIPLEX", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute data_pts_control
    #   If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value (AUTO) to allow all PTS values.
    #
    #   Enum, one of: ["AUTO", "ALIGN_TO_VIDEO"]
    #
    #   @return [String]
    #
    # @!attribute dvb_nit_settings
    #   Use these settings to insert a DVB Network Information Table (NIT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings.
    #
    #   @return [DvbNitSettings]
    #
    # @!attribute dvb_sdt_settings
    #   Use these settings to insert a DVB Service Description Table (SDT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings.
    #
    #   @return [DvbSdtSettings]
    #
    # @!attribute dvb_sub_pids
    #   Specify the packet identifiers (PIDs) for DVB subtitle data included in this output. Specify multiple PIDs as a JSON array. Default is the range 460-479.
    #
    #   @return [Array<Integer>]
    #
    # @!attribute dvb_tdt_settings
    #   Use these settings to insert a DVB Time and Date Table (TDT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings.
    #
    #   @return [DvbTdtSettings]
    #
    # @!attribute dvb_teletext_pid
    #   Specify the packet identifier (PID) for DVB teletext data you include in this output. Default is 499.
    #
    #   @return [Integer]
    #
    # @!attribute ebp_audio_interval
    #   When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
    #
    #   Enum, one of: ["VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"]
    #
    #   @return [String]
    #
    # @!attribute ebp_placement
    #   Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
    #
    #   Enum, one of: ["VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"]
    #
    #   @return [String]
    #
    # @!attribute es_rate_in_pes
    #   Controls whether to include the ES Rate field in the PES header.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute force_ts_video_ebp_order
    #   Keep the default value (DEFAULT) unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force (FORCE).
    #
    #   Enum, one of: ["FORCE", "DEFAULT"]
    #
    #   @return [String]
    #
    # @!attribute fragment_time
    #   The length, in seconds, of each fragment. Only used with EBP markers.
    #
    #   @return [Float]
    #
    # @!attribute klv_metadata
    #   To include key-length-value metadata in this output: Set KLV metadata insertion to Passthrough. MediaConvert reads KLV metadata present in your input and passes it through to the output transport stream. To exclude this KLV metadata: Set KLV metadata insertion to None or leave blank.
    #
    #   Enum, one of: ["PASSTHROUGH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute max_pcr_interval
    #   Specify the maximum time, in milliseconds, between Program Clock References (PCRs) inserted into the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute min_ebp_interval
    #   When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker. The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
    #
    #   @return [Integer]
    #
    # @!attribute nielsen_id3
    #   If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #
    #   Enum, one of: ["INSERT", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute null_packet_bitrate
    #   Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
    #
    #   @return [Float]
    #
    # @!attribute pat_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute pcr_control
    #   When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream.
    #
    #   Enum, one of: ["PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"]
    #
    #   @return [String]
    #
    # @!attribute pcr_pid
    #   Specify the packet identifier (PID) for the program clock reference (PCR) in this output. If you do not specify a value, the service will use the value for Video PID (VideoPid).
    #
    #   @return [Integer]
    #
    # @!attribute pmt_interval
    #   Specify the number of milliseconds between instances of the program map table (PMT) in the output transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute pmt_pid
    #   Specify the packet identifier (PID) for the program map table (PMT) itself. Default is 480.
    #
    #   @return [Integer]
    #
    # @!attribute private_metadata_pid
    #   Specify the packet identifier (PID) of the private metadata stream. Default is 503.
    #
    #   @return [Integer]
    #
    # @!attribute program_number
    #   Use Program number (programNumber) to specify the program number used in the program map table (PMT) for this output. Default is 1. Program numbers and program map tables are parts of MPEG-2 transport stream containers, used for organizing data.
    #
    #   @return [Integer]
    #
    # @!attribute rate_mode
    #   When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.
    #
    #   Enum, one of: ["VBR", "CBR"]
    #
    #   @return [String]
    #
    # @!attribute scte35_esam
    #   Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
    #
    #   @return [M2tsScte35Esam]
    #
    # @!attribute scte35_pid
    #   Specify the packet identifier (PID) of the SCTE-35 stream in the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute scte35_source
    #   For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE). Also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml). Also enable ESAM SCTE-35 (include the property scte35Esam).
    #
    #   Enum, one of: ["PASSTHROUGH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute segmentation_markers
    #   Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
    #
    #   Enum, one of: ["NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"]
    #
    #   @return [String]
    #
    # @!attribute segmentation_style
    #   The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "reset_cadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of "maintain_cadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule.
    #
    #   Enum, one of: ["MAINTAIN_CADENCE", "RESET_CADENCE"]
    #
    #   @return [String]
    #
    # @!attribute segmentation_time
    #   Specify the length, in seconds, of each segment. Required unless markers is set to _none_.
    #
    #   @return [Float]
    #
    # @!attribute timed_metadata_pid
    #   Packet Identifier (PID) of the ID3 metadata stream in the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute transport_stream_id
    #   Specify the ID for the transport stream itself in the program map table for this output. Transport stream IDs and program map tables are parts of MPEG-2 transport stream containers, used for organizing data.
    #
    #   @return [Integer]
    #
    # @!attribute video_pid
    #   Specify the packet identifier (PID) of the elementary video stream in the transport stream.
    #
    #   @return [Integer]
    #
    M2tsSettings = ::Struct.new(
      :audio_buffer_model,
      :audio_duration,
      :audio_frames_per_pes,
      :audio_pids,
      :bitrate,
      :buffer_model,
      :data_pts_control,
      :dvb_nit_settings,
      :dvb_sdt_settings,
      :dvb_sub_pids,
      :dvb_tdt_settings,
      :dvb_teletext_pid,
      :ebp_audio_interval,
      :ebp_placement,
      :es_rate_in_pes,
      :force_ts_video_ebp_order,
      :fragment_time,
      :klv_metadata,
      :max_pcr_interval,
      :min_ebp_interval,
      :nielsen_id3,
      :null_packet_bitrate,
      :pat_interval,
      :pcr_control,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :private_metadata_pid,
      :program_number,
      :rate_mode,
      :scte35_esam,
      :scte35_pid,
      :scte35_source,
      :segmentation_markers,
      :segmentation_style,
      :segmentation_time,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.audio_frames_per_pes ||= 0
        self.bitrate ||= 0
        self.dvb_teletext_pid ||= 0
        self.fragment_time ||= 0
        self.max_pcr_interval ||= 0
        self.min_ebp_interval ||= 0
        self.null_packet_bitrate ||= 0
        self.pat_interval ||= 0
        self.pcr_pid ||= 0
        self.pmt_interval ||= 0
        self.pmt_pid ||= 0
        self.private_metadata_pid ||= 0
        self.program_number ||= 0
        self.scte35_pid ||= 0
        self.segmentation_time ||= 0
        self.timed_metadata_pid ||= 0
        self.transport_stream_id ||= 0
        self.video_pid ||= 0
      end
    end

    # Includes enum constants for M3u8AudioDuration
    #
    module M3u8AudioDuration
      # No documentation available.
      #
      DEFAULT_CODEC_DURATION = "DEFAULT_CODEC_DURATION"

      # No documentation available.
      #
      MATCH_VIDEO_DURATION = "MATCH_VIDEO_DURATION"
    end

    # Includes enum constants for M3u8DataPtsControl
    #
    module M3u8DataPtsControl
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      ALIGN_TO_VIDEO = "ALIGN_TO_VIDEO"
    end

    # Includes enum constants for M3u8NielsenId3
    #
    module M3u8NielsenId3
      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for M3u8PcrControl
    #
    module M3u8PcrControl
      # No documentation available.
      #
      PCR_EVERY_PES_PACKET = "PCR_EVERY_PES_PACKET"

      # No documentation available.
      #
      CONFIGURED_PCR_PERIOD = "CONFIGURED_PCR_PERIOD"
    end

    # Includes enum constants for M3u8Scte35Source
    #
    module M3u8Scte35Source
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # These settings relate to the MPEG-2 transport stream (MPEG2-TS) container for the MPEG2-TS segments in your HLS outputs.
    #
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #
    #   Enum, one of: ["DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"]
    #
    #   @return [String]
    #
    # @!attribute audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #
    #   @return [Integer]
    #
    # @!attribute audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
    #
    #   @return [Array<Integer>]
    #
    # @!attribute data_pts_control
    #   If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value (AUTO) to allow all PTS values.
    #
    #   Enum, one of: ["AUTO", "ALIGN_TO_VIDEO"]
    #
    #   @return [String]
    #
    # @!attribute max_pcr_interval
    #   Specify the maximum time, in milliseconds, between Program Clock References (PCRs) inserted into the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute nielsen_id3
    #   If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #
    #   Enum, one of: ["INSERT", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute pat_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute pcr_control
    #   When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
    #
    #   Enum, one of: ["PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"]
    #
    #   @return [String]
    #
    # @!attribute pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
    #
    #   @return [Integer]
    #
    # @!attribute pmt_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute private_metadata_pid
    #   Packet Identifier (PID) of the private metadata stream in the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute program_number
    #   The value of the program number field in the Program Map Table.
    #
    #   @return [Integer]
    #
    # @!attribute scte35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute scte35_source
    #   For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE) if you don't want manifest conditioning. Choose Passthrough (PASSTHROUGH) and choose Ad markers (adMarkers) if you do want manifest conditioning. In both cases, also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml).
    #
    #   Enum, one of: ["PASSTHROUGH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata
    #   Set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH) to include ID3 metadata in this output. This includes ID3 metadata from the following features: ID3 timestamp period (timedMetadataId3Period), and Custom ID3 metadata inserter (timedMetadataInsertion). To exclude this ID3 metadata in this output: set ID3 metadata to None (NONE) or leave blank.
    #
    #   Enum, one of: ["PASSTHROUGH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_pid
    #   Packet Identifier (PID) of the ID3 metadata stream in the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #
    #   @return [Integer]
    #
    # @!attribute video_pid
    #   Packet Identifier (PID) of the elementary video stream in the transport stream.
    #
    #   @return [Integer]
    #
    M3u8Settings = ::Struct.new(
      :audio_duration,
      :audio_frames_per_pes,
      :audio_pids,
      :data_pts_control,
      :max_pcr_interval,
      :nielsen_id3,
      :pat_interval,
      :pcr_control,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :private_metadata_pid,
      :program_number,
      :scte35_pid,
      :scte35_source,
      :timed_metadata,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.audio_frames_per_pes ||= 0
        self.max_pcr_interval ||= 0
        self.pat_interval ||= 0
        self.pcr_pid ||= 0
        self.pmt_interval ||= 0
        self.pmt_pid ||= 0
        self.private_metadata_pid ||= 0
        self.program_number ||= 0
        self.scte35_pid ||= 0
        self.timed_metadata_pid ||= 0
        self.transport_stream_id ||= 0
        self.video_pid ||= 0
      end
    end

    # Use Min bottom rendition size to specify a minimum size for the lowest resolution in your ABR stack. * The lowest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 640x360 the lowest resolution in your ABR stack will be equal to or greater than to 640x360. * If you specify a Min top rendition size rule, the value that you specify for Min bottom rendition size must be less than, or equal to, Min top rendition size.
    #
    # @!attribute height
    #   Use Height to define the video resolution height, in pixels, for this rule.
    #
    #   @return [Integer]
    #
    # @!attribute width
    #   Use Width to define the video resolution width, in pixels, for this rule.
    #
    #   @return [Integer]
    #
    MinBottomRenditionSize = ::Struct.new(
      :height,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.height ||= 0
        self.width ||= 0
      end
    end

    # Use Min top rendition size to specify a minimum size for the highest resolution in your ABR stack. * The highest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 1280x720 the highest resolution in your ABR stack will be equal to or greater than 1280x720. * If you specify a value for Max resolution, the value that you specify for Min top rendition size must be less than, or equal to, Max resolution.
    #
    # @!attribute height
    #   Use Height to define the video resolution height, in pixels, for this rule.
    #
    #   @return [Integer]
    #
    # @!attribute width
    #   Use Width to define the video resolution width, in pixels, for this rule.
    #
    #   @return [Integer]
    #
    MinTopRenditionSize = ::Struct.new(
      :height,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.height ||= 0
        self.width ||= 0
      end
    end

    # Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/motion-graphic-overlay.html.
    #
    # @!attribute framerate
    #   If your motion graphic asset is a .mov file, keep this setting unspecified. If your motion graphic asset is a series of .png files, specify the frame rate of the overlay in frames per second, as a fraction. For example, specify 24 fps as 24/1. Make sure that the number of images in your series matches the frame rate and your intended overlay duration. For example, if you want a 30-second overlay at 30 fps, you should have 900 .png images. This overlay frame rate doesn't need to match the frame rate of the underlying video.
    #
    #   @return [MotionImageInsertionFramerate]
    #
    # @!attribute input
    #   Specify the .mov file or series of .png files that you want to overlay on your video. For .png files, provide the file name of the first file in the series. Make sure that the names of the .png files end with sequential numbers that specify the order that they are played in. For example, overlay_000.png, overlay_001.png, overlay_002.png, and so on. The sequence must start at zero, and each image file name must have the same number of digits. Pad your initial file names with enough zeros to complete the sequence. For example, if the first image is overlay_0.png, there can be only 10 images in the sequence, with the last image being overlay_9.png. But if the first image is overlay_00.png, there can be 100 images in the sequence.
    #
    #   @return [String]
    #
    # @!attribute insertion_mode
    #   Choose the type of motion graphic asset that you are providing for your overlay. You can choose either a .mov file or a series of .png files.
    #
    #   Enum, one of: ["MOV", "PNG"]
    #
    #   @return [String]
    #
    # @!attribute offset
    #   Use Offset to specify the placement of your motion graphic overlay on the video frame. Specify in pixels, from the upper-left corner of the frame. If you don't specify an offset, the service scales your overlay to the full size of the frame. Otherwise, the service inserts the overlay at its native resolution and scales the size up or down with any video scaling.
    #
    #   @return [MotionImageInsertionOffset]
    #
    # @!attribute playback
    #   Specify whether your motion graphic overlay repeats on a loop or plays only once.
    #
    #   Enum, one of: ["ONCE", "REPEAT"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   Specify when the motion overlay begins. Use timecode format (HH:MM:SS:FF or HH:MM:SS;FF). Make sure that the timecode you provide here takes into account how you have set up your timecode configuration under both job settings and input settings. The simplest way to do that is to set both to start at 0. If you need to set up your job to follow timecodes embedded in your source that don't start at zero, make sure that you specify a start time that is after the first embedded timecode. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/setting-up-timecode.html Find job-wide and input timecode configuration settings in your JSON job settings specification at settings>timecodeConfig>source and settings>inputs>timecodeSource.
    #
    #   @return [String]
    #
    MotionImageInserter = ::Struct.new(
      :framerate,
      :input,
      :insertion_mode,
      :offset,
      :playback,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # For motion overlays that don't have a built-in frame rate, specify the frame rate of the overlay in frames per second, as a fraction. For example, specify 24 fps as 24/1. The overlay frame rate doesn't need to match the frame rate of the underlying video.
    #
    # @!attribute framerate_denominator
    #   The bottom of the fraction that expresses your overlay frame rate. For example, if your frame rate is 24 fps, set this value to 1.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   The top of the fraction that expresses your overlay frame rate. For example, if your frame rate is 24 fps, set this value to 24.
    #
    #   @return [Integer]
    #
    MotionImageInsertionFramerate = ::Struct.new(
      :framerate_denominator,
      :framerate_numerator,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
      end
    end

    # Includes enum constants for MotionImageInsertionMode
    #
    module MotionImageInsertionMode
      # No documentation available.
      #
      MOV = "MOV"

      # No documentation available.
      #
      PNG = "PNG"
    end

    # Specify the offset between the upper-left corner of the video frame and the top left corner of the overlay.
    #
    # @!attribute image_x
    #   Set the distance, in pixels, between the overlay and the left edge of the video frame.
    #
    #   @return [Integer]
    #
    # @!attribute image_y
    #   Set the distance, in pixels, between the overlay and the top edge of the video frame.
    #
    #   @return [Integer]
    #
    MotionImageInsertionOffset = ::Struct.new(
      :image_x,
      :image_y,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.image_x ||= 0
        self.image_y ||= 0
      end
    end

    # Includes enum constants for MotionImagePlayback
    #
    module MotionImagePlayback
      # No documentation available.
      #
      ONCE = "ONCE"

      # No documentation available.
      #
      REPEAT = "REPEAT"
    end

    # Includes enum constants for MovClapAtom
    #
    module MovClapAtom
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for MovCslgAtom
    #
    module MovCslgAtom
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for MovMpeg2FourCCControl
    #
    module MovMpeg2FourCCControl
      # No documentation available.
      #
      XDCAM = "XDCAM"

      # No documentation available.
      #
      MPEG = "MPEG"
    end

    # Includes enum constants for MovPaddingControl
    #
    module MovPaddingControl
      # No documentation available.
      #
      OMNEON = "OMNEON"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for MovReference
    #
    module MovReference
      # No documentation available.
      #
      SELF_CONTAINED = "SELF_CONTAINED"

      # No documentation available.
      #
      EXTERNAL = "EXTERNAL"
    end

    # These settings relate to your QuickTime MOV output container.
    #
    # @!attribute clap_atom
    #   When enabled, include 'clap' atom if appropriate for the video output settings.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute cslg_atom
    #   When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute mpeg2_four_cc_control
    #   When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.
    #
    #   Enum, one of: ["XDCAM", "MPEG"]
    #
    #   @return [String]
    #
    # @!attribute padding_control
    #   To make this output compatible with Omenon, keep the default value, OMNEON. Unless you need Omneon compatibility, set this value to NONE. When you keep the default value, OMNEON, MediaConvert increases the length of the edit list atom. This might cause file rejections when a recipient of the output file doesn't expct this extra padding.
    #
    #   Enum, one of: ["OMNEON", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute reference
    #   Always keep the default value (SELF_CONTAINED) for this setting.
    #
    #   Enum, one of: ["SELF_CONTAINED", "EXTERNAL"]
    #
    #   @return [String]
    #
    MovSettings = ::Struct.new(
      :clap_atom,
      :cslg_atom,
      :mpeg2_four_cc_control,
      :padding_control,
      :reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2.
    #
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second.
    #
    #   @return [Integer]
    #
    # @!attribute channels
    #   Set Channels to specify the number of channels in this output audio track. Choosing Mono in the console will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2.
    #
    #   @return [Integer]
    #
    # @!attribute sample_rate
    #   Sample rate in hz.
    #
    #   @return [Integer]
    #
    Mp2Settings = ::Struct.new(
      :bitrate,
      :channels,
      :sample_rate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.channels ||= 0
        self.sample_rate ||= 0
      end
    end

    # Includes enum constants for Mp3RateControlMode
    #
    module Mp3RateControlMode
      # No documentation available.
      #
      CBR = "CBR"

      # No documentation available.
      #
      VBR = "VBR"
    end

    # Required when you set Codec, under AudioDescriptions>CodecSettings, to the value MP3.
    #
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second.
    #
    #   @return [Integer]
    #
    # @!attribute channels
    #   Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2.
    #
    #   @return [Integer]
    #
    # @!attribute rate_control_mode
    #   Specify whether the service encodes this MP3 audio output with a constant bitrate (CBR) or a variable bitrate (VBR).
    #
    #   Enum, one of: ["CBR", "VBR"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   Sample rate in hz.
    #
    #   @return [Integer]
    #
    # @!attribute vbr_quality
    #   Required when you set Bitrate control mode (rateControlMode) to VBR. Specify the audio quality of this MP3 output from 0 (highest quality) to 9 (lowest quality).
    #
    #   @return [Integer]
    #
    Mp3Settings = ::Struct.new(
      :bitrate,
      :channels,
      :rate_control_mode,
      :sample_rate,
      :vbr_quality,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.channels ||= 0
        self.sample_rate ||= 0
        self.vbr_quality ||= 0
      end
    end

    # Includes enum constants for Mp4CslgAtom
    #
    module Mp4CslgAtom
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for Mp4FreeSpaceBox
    #
    module Mp4FreeSpaceBox
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for Mp4MoovPlacement
    #
    module Mp4MoovPlacement
      # No documentation available.
      #
      PROGRESSIVE_DOWNLOAD = "PROGRESSIVE_DOWNLOAD"

      # No documentation available.
      #
      NORMAL = "NORMAL"
    end

    # These settings relate to your MP4 output container. You can create audio only outputs with this container. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/supported-codecs-containers-audio-only.html#output-codecs-and-containers-supported-for-audio-only.
    #
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #
    #   Enum, one of: ["DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"]
    #
    #   @return [String]
    #
    # @!attribute cslg_atom
    #   When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute ctts_version
    #   Ignore this setting unless compliance to the CTTS box version specification matters in your workflow. Specify a value of 1 to set your CTTS box version to 1 and make your output compliant with the specification. When you specify a value of 1, you must also set CSLG atom (cslgAtom) to the value INCLUDE. Keep the default value 0 to set your CTTS box version to 0. This can provide backward compatibility for some players and packagers.
    #
    #   @return [Integer]
    #
    # @!attribute free_space_box
    #   Inserts a free-space box immediately after the moov box.
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute moov_placement
    #   If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.
    #
    #   Enum, one of: ["PROGRESSIVE_DOWNLOAD", "NORMAL"]
    #
    #   @return [String]
    #
    # @!attribute mp4_major_brand
    #   Overrides the "Major Brand" field in the output file. Usually not necessary to specify.
    #
    #   @return [String]
    #
    Mp4Settings = ::Struct.new(
      :audio_duration,
      :cslg_atom,
      :ctts_version,
      :free_space_box,
      :moov_placement,
      :mp4_major_brand,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ctts_version ||= 0
      end
    end

    # Includes enum constants for MpdAccessibilityCaptionHints
    #
    module MpdAccessibilityCaptionHints
      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"
    end

    # Includes enum constants for MpdAudioDuration
    #
    module MpdAudioDuration
      # No documentation available.
      #
      DEFAULT_CODEC_DURATION = "DEFAULT_CODEC_DURATION"

      # No documentation available.
      #
      MATCH_VIDEO_DURATION = "MATCH_VIDEO_DURATION"
    end

    # Includes enum constants for MpdCaptionContainerType
    #
    module MpdCaptionContainerType
      # No documentation available.
      #
      RAW = "RAW"

      # No documentation available.
      #
      FRAGMENTED_MP4 = "FRAGMENTED_MP4"
    end

    # Includes enum constants for MpdKlvMetadata
    #
    module MpdKlvMetadata
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Includes enum constants for MpdScte35Esam
    #
    module MpdScte35Esam
      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for MpdScte35Source
    #
    module MpdScte35Source
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # These settings relate to the fragmented MP4 container for the segments in your DASH outputs.
    #
    # @!attribute accessibility_caption_hints
    #   Optional. Choose Include (INCLUDE) to have MediaConvert mark up your DASH manifest with <Accessibility> elements for embedded 608 captions. This markup isn't generally required, but some video players require it to discover and play embedded 608 captions. Keep the default value, Exclude (EXCLUDE), to leave these elements out. When you enable this setting, this is the markup that MediaConvert includes in your manifest: <Accessibility schemeIdUri="urn:scte:dash:cc:cea-608:2015" value="CC1=eng"/>
    #
    #   Enum, one of: ["INCLUDE", "EXCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #
    #   Enum, one of: ["DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"]
    #
    #   @return [String]
    #
    # @!attribute caption_container_type
    #   Use this setting only in DASH output groups that include sidecar TTML or IMSC captions.  You specify sidecar captions in a separate output from your audio and video. Choose Raw (RAW) for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files.
    #
    #   Enum, one of: ["RAW", "FRAGMENTED_MP4"]
    #
    #   @return [String]
    #
    # @!attribute klv_metadata
    #   To include key-length-value metadata in this output: Set KLV metadata insertion to Passthrough. MediaConvert reads KLV metadata present in your input and writes each instance to a separate event message box in the output, according to MISB ST1910.1. To exclude this KLV metadata: Set KLV metadata insertion to None or leave blank.
    #
    #   Enum, one of: ["NONE", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute scte35_esam
    #   Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
    #
    #   Enum, one of: ["INSERT", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute scte35_source
    #   Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.
    #
    #   Enum, one of: ["PASSTHROUGH", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata
    #   To include ID3 metadata in this output: Set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH). Specify this ID3 metadata in Custom ID3 metadata inserter (timedMetadataInsertion). MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None (NONE) or leave blank.
    #
    #   Enum, one of: ["PASSTHROUGH", "NONE"]
    #
    #   @return [String]
    #
    MpdSettings = ::Struct.new(
      :accessibility_caption_hints,
      :audio_duration,
      :caption_container_type,
      :klv_metadata,
      :scte35_esam,
      :scte35_source,
      :timed_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MpdTimedMetadata
    #
    module MpdTimedMetadata
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for Mpeg2AdaptiveQuantization
    #
    module Mpeg2AdaptiveQuantization
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"
    end

    # Includes enum constants for Mpeg2CodecLevel
    #
    module Mpeg2CodecLevel
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MAIN = "MAIN"

      # No documentation available.
      #
      HIGH1440 = "HIGH1440"

      # No documentation available.
      #
      HIGH = "HIGH"
    end

    # Includes enum constants for Mpeg2CodecProfile
    #
    module Mpeg2CodecProfile
      # No documentation available.
      #
      MAIN = "MAIN"

      # No documentation available.
      #
      PROFILE_422 = "PROFILE_422"
    end

    # Includes enum constants for Mpeg2DynamicSubGop
    #
    module Mpeg2DynamicSubGop
      # No documentation available.
      #
      ADAPTIVE = "ADAPTIVE"

      # No documentation available.
      #
      STATIC = "STATIC"
    end

    # Includes enum constants for Mpeg2FramerateControl
    #
    module Mpeg2FramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for Mpeg2FramerateConversionAlgorithm
    #
    module Mpeg2FramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Includes enum constants for Mpeg2GopSizeUnits
    #
    module Mpeg2GopSizeUnits
      # No documentation available.
      #
      FRAMES = "FRAMES"

      # No documentation available.
      #
      SECONDS = "SECONDS"
    end

    # Includes enum constants for Mpeg2InterlaceMode
    #
    module Mpeg2InterlaceMode
      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"

      # No documentation available.
      #
      TOP_FIELD = "TOP_FIELD"

      # No documentation available.
      #
      BOTTOM_FIELD = "BOTTOM_FIELD"

      # No documentation available.
      #
      FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD"

      # No documentation available.
      #
      FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD"
    end

    # Includes enum constants for Mpeg2IntraDcPrecision
    #
    module Mpeg2IntraDcPrecision
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      INTRA_DC_PRECISION_8 = "INTRA_DC_PRECISION_8"

      # No documentation available.
      #
      INTRA_DC_PRECISION_9 = "INTRA_DC_PRECISION_9"

      # No documentation available.
      #
      INTRA_DC_PRECISION_10 = "INTRA_DC_PRECISION_10"

      # No documentation available.
      #
      INTRA_DC_PRECISION_11 = "INTRA_DC_PRECISION_11"
    end

    # Includes enum constants for Mpeg2ParControl
    #
    module Mpeg2ParControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for Mpeg2QualityTuningLevel
    #
    module Mpeg2QualityTuningLevel
      # No documentation available.
      #
      SINGLE_PASS = "SINGLE_PASS"

      # No documentation available.
      #
      MULTI_PASS = "MULTI_PASS"
    end

    # Includes enum constants for Mpeg2RateControlMode
    #
    module Mpeg2RateControlMode
      # No documentation available.
      #
      VBR = "VBR"

      # No documentation available.
      #
      CBR = "CBR"
    end

    # Includes enum constants for Mpeg2ScanTypeConversionMode
    #
    module Mpeg2ScanTypeConversionMode
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE"
    end

    # Includes enum constants for Mpeg2SceneChangeDetect
    #
    module Mpeg2SceneChangeDetect
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2.
    #
    # @!attribute adaptive_quantization
    #   Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization).
    #
    #   Enum, one of: ["OFF", "LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
    #
    #   @return [Integer]
    #
    # @!attribute codec_level
    #   Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.
    #
    #   Enum, one of: ["AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute codec_profile
    #   Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.
    #
    #   Enum, one of: ["MAIN", "PROFILE_422"]
    #
    #   @return [String]
    #
    # @!attribute dynamic_sub_gop
    #   Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
    #
    #   Enum, one of: ["ADAPTIVE", "STATIC"]
    #
    #   @return [String]
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute gop_closed_cadence
    #   Specify the relative frequency of open to closed GOPs in this output. For example, if you want to allow four open GOPs and then require a closed GOP, set this value to 5. When you create a streaming output, we recommend that you keep the default value, 1, so that players starting mid-stream receive an IDR frame as quickly as possible. Don't set this value to 0; that would break output segmenting.
    #
    #   @return [Integer]
    #
    # @!attribute gop_size
    #   Specify the interval between keyframes, in seconds or frames, for this output. Default: 12 Related settings: When you specify the GOP size in seconds, set GOP mode control (GopSizeUnits) to Specified, seconds (SECONDS). The default value for GOP mode control (GopSizeUnits) is Frames (FRAMES).
    #
    #   @return [Float]
    #
    # @!attribute gop_size_units
    #   Specify the units for GOP size (GopSize). If you don't specify a value here, by default the encoder measures GOP size in frames.
    #
    #   Enum, one of: ["FRAMES", "SECONDS"]
    #
    #   @return [String]
    #
    # @!attribute hrd_buffer_initial_fill_percentage
    #   Percentage of the buffer that should initially be filled (HRD buffer model).
    #
    #   @return [Integer]
    #
    # @!attribute hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #
    #   @return [Integer]
    #
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #
    #   Enum, one of: ["PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"]
    #
    #   @return [String]
    #
    # @!attribute intra_dc_precision
    #   Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.
    #
    #   Enum, one of: ["AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"]
    #
    #   @return [String]
    #
    # @!attribute max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000.
    #
    #   @return [Integer]
    #
    # @!attribute min_i_interval
    #   Use this setting only when you also enable Scene change detection (SceneChangeDetect). This setting determines how the encoder manages the spacing between I-frames that it inserts as part of the I-frame cadence and the I-frames that it inserts for Scene change detection. When you specify a value for this setting, the encoder determines whether to skip a cadence-driven I-frame by the value you set. For example, if you set Min I interval (minIInterval) to 5 and a cadence-driven I-frame would fall within 5 frames of a scene-change I-frame, then the encoder skips the cadence-driven I-frame. In this way, one GOP is shrunk slightly and one GOP is stretched slightly. When the cadence-driven I-frames are farther from the scene-change I-frame than the value you set, then the encoder leaves all I-frames in place and the GOPs surrounding the scene change are smaller than the usual cadence GOPs.
    #
    #   @return [Integer]
    #
    # @!attribute number_b_frames_between_reference_frames
    #   Specify the number of B-frames that MediaConvert puts between reference frames in this output. Valid values are whole numbers from 0 through 7. When you don't specify a value, MediaConvert defaults to 2.
    #
    #   @return [Integer]
    #
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #
    #   @return [Integer]
    #
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #
    #   @return [Integer]
    #
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    #
    #   Enum, one of: ["SINGLE_PASS", "MULTI_PASS"]
    #
    #   @return [String]
    #
    # @!attribute rate_control_mode
    #   Use Rate control mode (Mpeg2RateControlMode) to specify whether the bitrate is variable (vbr) or constant (cbr).
    #
    #   Enum, one of: ["VBR", "CBR"]
    #
    #   @return [String]
    #
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
    #
    #   Enum, one of: ["INTERLACED", "INTERLACED_OPTIMIZE"]
    #
    #   @return [String]
    #
    # @!attribute scene_change_detect
    #   Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute softness
    #   Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, to use the AWS Elemental default matrices. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
    #
    #   @return [Integer]
    #
    # @!attribute spatial_adaptive_quantization
    #   Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute syntax
    #   Specify whether this output's video uses the D10 syntax. Keep the default value to  not use the syntax. Related settings: When you choose D10 (D_10) for your MXF  profile (profile), you must also set this value to to D10 (D_10).
    #
    #   Enum, one of: ["DEFAULT", "D_10"]
    #
    #   @return [String]
    #
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #
    #   Enum, one of: ["NONE", "SOFT", "HARD"]
    #
    #   @return [String]
    #
    # @!attribute temporal_adaptive_quantization
    #   Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization).
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    Mpeg2Settings = ::Struct.new(
      :adaptive_quantization,
      :bitrate,
      :codec_level,
      :codec_profile,
      :dynamic_sub_gop,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_closed_cadence,
      :gop_size,
      :gop_size_units,
      :hrd_buffer_initial_fill_percentage,
      :hrd_buffer_size,
      :interlace_mode,
      :intra_dc_precision,
      :max_bitrate,
      :min_i_interval,
      :number_b_frames_between_reference_frames,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :rate_control_mode,
      :scan_type_conversion_mode,
      :scene_change_detect,
      :slow_pal,
      :softness,
      :spatial_adaptive_quantization,
      :syntax,
      :telecine,
      :temporal_adaptive_quantization,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.gop_closed_cadence ||= 0
        self.gop_size ||= 0
        self.hrd_buffer_initial_fill_percentage ||= 0
        self.hrd_buffer_size ||= 0
        self.max_bitrate ||= 0
        self.min_i_interval ||= 0
        self.number_b_frames_between_reference_frames ||= 0
        self.par_denominator ||= 0
        self.par_numerator ||= 0
        self.softness ||= 0
      end
    end

    # Includes enum constants for Mpeg2SlowPal
    #
    module Mpeg2SlowPal
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for Mpeg2SpatialAdaptiveQuantization
    #
    module Mpeg2SpatialAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for Mpeg2Syntax
    #
    module Mpeg2Syntax
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      D_10 = "D_10"
    end

    # Includes enum constants for Mpeg2Telecine
    #
    module Mpeg2Telecine
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SOFT = "SOFT"

      # No documentation available.
      #
      HARD = "HARD"
    end

    # Includes enum constants for Mpeg2TemporalAdaptiveQuantization
    #
    module Mpeg2TemporalAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Specify the details for each additional Microsoft Smooth Streaming manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group.
    #
    # @!attribute manifest_name_modifier
    #   Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your Microsoft Smooth group is film-name.ismv. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.ismv.
    #
    #   @return [String]
    #
    # @!attribute selected_outputs
    #   Specify the outputs that you want this additional top-level manifest to reference.
    #
    #   @return [Array<String>]
    #
    MsSmoothAdditionalManifest = ::Struct.new(
      :manifest_name_modifier,
      :selected_outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MsSmoothAudioDeduplication
    #
    module MsSmoothAudioDeduplication
      # No documentation available.
      #
      COMBINE_DUPLICATE_STREAMS = "COMBINE_DUPLICATE_STREAMS"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider.
    #
    # @!attribute speke_key_provider
    #   If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
    #
    #   @return [SpekeKeyProvider]
    #
    MsSmoothEncryptionSettings = ::Struct.new(
      :speke_key_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MsSmoothFragmentLengthControl
    #
    module MsSmoothFragmentLengthControl
      # No documentation available.
      #
      EXACT = "EXACT"

      # No documentation available.
      #
      GOP_MULTIPLE = "GOP_MULTIPLE"
    end

    # Settings related to your Microsoft Smooth Streaming output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to MS_SMOOTH_GROUP_SETTINGS.
    #
    # @!attribute additional_manifests
    #   By default, the service creates one .ism Microsoft Smooth Streaming manifest for each Microsoft Smooth Streaming output group in your job. This default manifest references every output in the output group. To create additional manifests that reference a subset of the outputs in the output group, specify a list of them here.
    #
    #   @return [Array<MsSmoothAdditionalManifest>]
    #
    # @!attribute audio_deduplication
    #   COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.
    #
    #   Enum, one of: ["COMBINE_DUPLICATE_STREAMS", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #
    #   @return [String]
    #
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #
    #   @return [DestinationSettings]
    #
    # @!attribute encryption
    #   If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider.
    #
    #   @return [MsSmoothEncryptionSettings]
    #
    # @!attribute fragment_length
    #   Specify how you want MediaConvert to determine the fragment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Fragment length (FragmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary.
    #
    #   @return [Integer]
    #
    # @!attribute fragment_length_control
    #   Specify how you want MediaConvert to determine the fragment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Fragment length (FragmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary.
    #
    #   Enum, one of: ["EXACT", "GOP_MULTIPLE"]
    #
    #   @return [String]
    #
    # @!attribute manifest_encoding
    #   Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.
    #
    #   Enum, one of: ["UTF8", "UTF16"]
    #
    #   @return [String]
    #
    MsSmoothGroupSettings = ::Struct.new(
      :additional_manifests,
      :audio_deduplication,
      :destination,
      :destination_settings,
      :encryption,
      :fragment_length,
      :fragment_length_control,
      :manifest_encoding,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.fragment_length ||= 0
      end
    end

    # Includes enum constants for MsSmoothManifestEncoding
    #
    module MsSmoothManifestEncoding
      # No documentation available.
      #
      UTF8 = "UTF8"

      # No documentation available.
      #
      UTF16 = "UTF16"
    end

    # Includes enum constants for MxfAfdSignaling
    #
    module MxfAfdSignaling
      # No documentation available.
      #
      NO_COPY = "NO_COPY"

      # No documentation available.
      #
      COPY_FROM_VIDEO = "COPY_FROM_VIDEO"
    end

    # Includes enum constants for MxfProfile
    #
    module MxfProfile
      # No documentation available.
      #
      D_10 = "D_10"

      # No documentation available.
      #
      XDCAM = "XDCAM"

      # No documentation available.
      #
      OP1A = "OP1A"

      # No documentation available.
      #
      XAVC = "XAVC"
    end

    # These settings relate to your MXF output container.
    #
    # @!attribute afd_signaling
    #   Optional. When you have AFD signaling set up in your output video stream, use this setting to choose whether to also include it in the MXF wrapper. Choose Don't copy (NO_COPY) to exclude AFD signaling from the MXF wrapper. Choose Copy from video stream (COPY_FROM_VIDEO) to copy the AFD values from the video stream for this output to the MXF wrapper. Regardless of which option you choose, the AFD values remain in the video stream. Related settings: To set up your output to include or exclude AFD values, see AfdSignaling, under VideoDescription. On the console, find AFD signaling under the output's video encoding settings.
    #
    #   Enum, one of: ["NO_COPY", "COPY_FROM_VIDEO"]
    #
    #   @return [String]
    #
    # @!attribute profile
    #   Specify the MXF profile, also called shim, for this output. When you choose Auto, MediaConvert chooses a profile based on the video codec and resolution. For a list of codecs supported with each MXF profile, see https://docs.aws.amazon.com/mediaconvert/latest/ug/codecs-supported-with-each-mxf-profile.html. For more information about the automatic selection behavior, see https://docs.aws.amazon.com/mediaconvert/latest/ug/default-automatic-selection-of-mxf-profiles.html.
    #
    #   Enum, one of: ["D_10", "XDCAM", "OP1A", "XAVC"]
    #
    #   @return [String]
    #
    # @!attribute xavc_profile_settings
    #   Specify the XAVC profile settings for MXF outputs when you set your MXF profile to XAVC.
    #
    #   @return [MxfXavcProfileSettings]
    #
    MxfSettings = ::Struct.new(
      :afd_signaling,
      :profile,
      :xavc_profile_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MxfXavcDurationMode
    #
    module MxfXavcDurationMode
      # No documentation available.
      #
      ALLOW_ANY_DURATION = "ALLOW_ANY_DURATION"

      # No documentation available.
      #
      DROP_FRAMES_FOR_COMPLIANCE = "DROP_FRAMES_FOR_COMPLIANCE"
    end

    # Specify the XAVC profile settings for MXF outputs when you set your MXF profile to XAVC.
    #
    # @!attribute duration_mode
    #   To create an output that complies with the XAVC file format guidelines for interoperability, keep the default value, Drop frames for compliance (DROP_FRAMES_FOR_COMPLIANCE). To include all frames from your input in this output, keep the default setting, Allow any duration (ALLOW_ANY_DURATION). The number of frames that MediaConvert excludes when you set this to Drop frames for compliance depends on the output frame rate and duration.
    #
    #   Enum, one of: ["ALLOW_ANY_DURATION", "DROP_FRAMES_FOR_COMPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute max_anc_data_size
    #   Specify a value for this setting only for outputs that you set up with one of these two XAVC profiles: XAVC HD Intra CBG (XAVC_HD_INTRA_CBG) or XAVC 4K Intra CBG (XAVC_4K_INTRA_CBG). Specify the amount of space in each frame that the service reserves for ancillary data, such as teletext captions. The default value for this setting is 1492 bytes per frame. This should be sufficient to prevent overflow unless you have multiple pages of teletext captions data. If you have a large amount of teletext data, specify a larger number.
    #
    #   @return [Integer]
    #
    MxfXavcProfileSettings = ::Struct.new(
      :duration_mode,
      :max_anc_data_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_anc_data_size ||= 0
      end
    end

    # For forensic video watermarking, MediaConvert supports Nagra NexGuard File Marker watermarking. MediaConvert supports both PreRelease Content (NGPR/G2) and OTT Streaming workflows.
    #
    # @!attribute license
    #   Use the base64 license string that Nagra provides you. Enter it directly in your JSON job specification or in the console. Required when you include Nagra NexGuard File Marker watermarking (NexGuardWatermarkingSettings) in your job.
    #
    #   @return [String]
    #
    # @!attribute payload
    #   Specify the payload ID that you want associated with this output. Valid values vary depending on your Nagra NexGuard forensic watermarking workflow. Required when you include Nagra NexGuard File Marker watermarking (NexGuardWatermarkingSettings) in your job. For PreRelease Content (NGPR/G2), specify an integer from 1 through 4,194,303. You must generate a unique ID for each asset you watermark, and keep a record of which ID you have assigned to each asset. Neither Nagra nor MediaConvert keep track of the relationship between output files and your IDs. For OTT Streaming, create two adaptive bitrate (ABR) stacks for each asset. Do this by setting up two output groups. For one output group, set the value of Payload ID (payload) to 0 in every output. For the other output group, set Payload ID (payload) to 1 in every output.
    #
    #   @return [Integer]
    #
    # @!attribute preset
    #   Enter one of the watermarking preset strings that Nagra provides you. Required when you include Nagra NexGuard File Marker watermarking (NexGuardWatermarkingSettings) in your job.
    #
    #   @return [String]
    #
    # @!attribute strength
    #   Optional. Ignore this setting unless Nagra support directs you to specify a value. When you don't specify a value here, the Nagra NexGuard library uses its default value.
    #
    #   Enum, one of: ["LIGHTEST", "LIGHTER", "DEFAULT", "STRONGER", "STRONGEST"]
    #
    #   @return [String]
    #
    NexGuardFileMarkerSettings = ::Struct.new(
      :license,
      :payload,
      :preset,
      :strength,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.payload ||= 0
      end
    end

    # Includes enum constants for NielsenActiveWatermarkProcessType
    #
    module NielsenActiveWatermarkProcessType
      # No documentation available.
      #
      NAES2_AND_NW = "NAES2_AND_NW"

      # No documentation available.
      #
      CBET = "CBET"

      # No documentation available.
      #
      NAES2_AND_NW_AND_CBET = "NAES2_AND_NW_AND_CBET"
    end

    # Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM to ID3 tagging for all outputs in the job. To enable Nielsen configuration programmatically, include an instance of nielsenConfiguration in your JSON job specification. Even if you don't include any children of nielsenConfiguration, you still enable the setting.
    #
    # @!attribute breakout_code
    #   Nielsen has discontinued the use of breakout code functionality. If you must include this property, set the value to zero.
    #
    #   @return [Integer]
    #
    # @!attribute distributor_id
    #   Use Distributor ID (DistributorID) to specify the distributor ID that is assigned to your organization by Neilsen.
    #
    #   @return [String]
    #
    NielsenConfiguration = ::Struct.new(
      :breakout_code,
      :distributor_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.breakout_code ||= 0
      end
    end

    # Ignore these settings unless you are using Nielsen non-linear watermarking. Specify the values that  MediaConvert uses to generate and place Nielsen watermarks in your output audio. In addition to  specifying these values, you also need to set up your cloud TIC server. These settings apply to  every output in your job. The MediaConvert implementation is currently with the following Nielsen versions: Nielsen Watermark SDK Version 5.2.1 Nielsen NLM Watermark Engine Version 1.2.7 Nielsen Watermark Authenticator [SID_TIC] Version [5.0.0]
    #
    # @!attribute active_watermark_process
    #   Choose the type of Nielsen watermarks that you want in your outputs. When you choose NAES 2 and NW (NAES2_AND_NW), you must provide a value for the setting SID (sourceId). When you choose CBET (CBET), you must provide a value for the setting CSID (cbetSourceId). When you choose NAES 2, NW, and CBET (NAES2_AND_NW_AND_CBET), you must provide values for both of these settings.
    #
    #   Enum, one of: ["NAES2_AND_NW", "CBET", "NAES2_AND_NW_AND_CBET"]
    #
    #   @return [String]
    #
    # @!attribute adi_filename
    #   Optional. Use this setting when you want the service to include an ADI file in the Nielsen  metadata .zip file. To provide an ADI file, store it in Amazon S3 and provide a URL to it  here. The URL should be in the following format: S3://bucket/path/ADI-file. For more information about the metadata .zip file, see the setting Metadata destination (metadataDestination).
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   Use the asset ID that you provide to Nielsen to uniquely identify this asset. Required for all Nielsen non-linear watermarking.
    #
    #   @return [String]
    #
    # @!attribute asset_name
    #   Use the asset name that you provide to Nielsen for this asset. Required for all Nielsen non-linear watermarking.
    #
    #   @return [String]
    #
    # @!attribute cbet_source_id
    #   Use the CSID that Nielsen provides to you. This CBET source ID should be unique to your Nielsen account but common to all of your output assets that have CBET watermarking. Required when you choose a value for the setting Watermark types (ActiveWatermarkProcess) that includes CBET.
    #
    #   @return [String]
    #
    # @!attribute episode_id
    #   Optional. If this asset uses an episode ID with Nielsen, provide it here.
    #
    #   @return [String]
    #
    # @!attribute metadata_destination
    #   Specify the Amazon S3 location where you want MediaConvert to save your Nielsen non-linear metadata .zip file. This Amazon S3 bucket must be in the same Region as the one where you do your MediaConvert transcoding. If you want to include an ADI file in this .zip file, use the setting ADI file (adiFilename) to specify it. MediaConvert delivers the Nielsen metadata .zip files only to your metadata destination Amazon S3 bucket. It doesn't deliver the .zip files to Nielsen. You are responsible for delivering the metadata .zip files to Nielsen.
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   Use the SID that Nielsen provides to you. This source ID should be unique to your Nielsen account but common to all of your output assets. Required for all Nielsen non-linear watermarking. This ID should be unique to your Nielsen account but common to all of your output assets. Required for all Nielsen non-linear watermarking.
    #
    #   @return [Integer]
    #
    # @!attribute source_watermark_status
    #   Required. Specify whether your source content already contains Nielsen non-linear watermarks. When you set this value to Watermarked (WATERMARKED), the service fails the job. Nielsen requires that you add non-linear watermarking to only clean content that doesn't already  have non-linear Nielsen watermarks.
    #
    #   Enum, one of: ["CLEAN", "WATERMARKED"]
    #
    #   @return [String]
    #
    # @!attribute tic_server_url
    #   Specify the endpoint for the TIC server that you have deployed and configured in the AWS Cloud. Required for all Nielsen non-linear watermarking. MediaConvert can't connect directly to a TIC server. Instead, you must use API Gateway to provide a RESTful interface between MediaConvert and a TIC server that you deploy in your AWS account. For more information on deploying a TIC server in your AWS account and the required API Gateway, contact Nielsen support.
    #
    #   @return [String]
    #
    # @!attribute unique_tic_per_audio_track
    #   To create assets that have the same TIC values in each audio track, keep the default value Share TICs (SAME_TICS_PER_TRACK). To create assets that have unique TIC values for each audio track, choose Use unique TICs (RESERVE_UNIQUE_TICS_PER_TRACK).
    #
    #   Enum, one of: ["RESERVE_UNIQUE_TICS_PER_TRACK", "SAME_TICS_PER_TRACK"]
    #
    #   @return [String]
    #
    NielsenNonLinearWatermarkSettings = ::Struct.new(
      :active_watermark_process,
      :adi_filename,
      :asset_id,
      :asset_name,
      :cbet_source_id,
      :episode_id,
      :metadata_destination,
      :source_id,
      :source_watermark_status,
      :tic_server_url,
      :unique_tic_per_audio_track,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.source_id ||= 0
      end
    end

    # Includes enum constants for NielsenSourceWatermarkStatusType
    #
    module NielsenSourceWatermarkStatusType
      # No documentation available.
      #
      CLEAN = "CLEAN"

      # No documentation available.
      #
      WATERMARKED = "WATERMARKED"
    end

    # Includes enum constants for NielsenUniqueTicPerAudioTrackType
    #
    module NielsenUniqueTicPerAudioTrackType
      # No documentation available.
      #
      RESERVE_UNIQUE_TICS_PER_TRACK = "RESERVE_UNIQUE_TICS_PER_TRACK"

      # No documentation available.
      #
      SAME_TICS_PER_TRACK = "SAME_TICS_PER_TRACK"
    end

    # Includes enum constants for NoiseFilterPostTemporalSharpening
    #
    module NoiseFilterPostTemporalSharpening
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      AUTO = "AUTO"
    end

    # Includes enum constants for NoiseFilterPostTemporalSharpeningStrength
    #
    module NoiseFilterPostTemporalSharpeningStrength
      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"
    end

    # Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default. When you enable Noise reducer (NoiseReducer), you must also select a value for Noise reducer filter (NoiseReducerFilter).
    #
    # @!attribute filter
    #   Use Noise reducer filter (NoiseReducerFilter) to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer (NoiseReducer). * Bilateral preserves edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) do convolution filtering. * Conserve does min/max noise reduction. * Spatial does frequency-domain filtering based on JND principles. * Temporal optimizes video quality for complex motion.
    #
    #   Enum, one of: ["BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL", "TEMPORAL"]
    #
    #   @return [String]
    #
    # @!attribute filter_settings
    #   Settings for a noise reducer filter
    #
    #   @return [NoiseReducerFilterSettings]
    #
    # @!attribute spatial_filter_settings
    #   Noise reducer filter settings for spatial filter.
    #
    #   @return [NoiseReducerSpatialFilterSettings]
    #
    # @!attribute temporal_filter_settings
    #   Noise reducer filter settings for temporal filter.
    #
    #   @return [NoiseReducerTemporalFilterSettings]
    #
    NoiseReducer = ::Struct.new(
      :filter,
      :filter_settings,
      :spatial_filter_settings,
      :temporal_filter_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NoiseReducerFilter
    #
    module NoiseReducerFilter
      # No documentation available.
      #
      BILATERAL = "BILATERAL"

      # No documentation available.
      #
      MEAN = "MEAN"

      # No documentation available.
      #
      GAUSSIAN = "GAUSSIAN"

      # No documentation available.
      #
      LANCZOS = "LANCZOS"

      # No documentation available.
      #
      SHARPEN = "SHARPEN"

      # No documentation available.
      #
      CONSERVE = "CONSERVE"

      # No documentation available.
      #
      SPATIAL = "SPATIAL"

      # No documentation available.
      #
      TEMPORAL = "TEMPORAL"
    end

    # Settings for a noise reducer filter
    #
    # @!attribute strength
    #   Relative strength of noise reducing filter. Higher values produce stronger filtering.
    #
    #   @return [Integer]
    #
    NoiseReducerFilterSettings = ::Struct.new(
      :strength,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.strength ||= 0
      end
    end

    # Noise reducer filter settings for spatial filter.
    #
    # @!attribute post_filter_sharpen_strength
    #   Specify strength of post noise reduction sharpening filter, with 0 disabling the filter and 3 enabling it at maximum strength.
    #
    #   @return [Integer]
    #
    # @!attribute speed
    #   The speed of the filter, from -2 (lower speed) to 3 (higher speed), with 0 being the nominal value.
    #
    #   @return [Integer]
    #
    # @!attribute strength
    #   Relative strength of noise reducing filter. Higher values produce stronger filtering.
    #
    #   @return [Integer]
    #
    NoiseReducerSpatialFilterSettings = ::Struct.new(
      :post_filter_sharpen_strength,
      :speed,
      :strength,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.post_filter_sharpen_strength ||= 0
        self.speed ||= 0
        self.strength ||= 0
      end
    end

    # Noise reducer filter settings for temporal filter.
    #
    # @!attribute aggressive_mode
    #   Use Aggressive mode for content that has complex motion. Higher values produce stronger temporal filtering. This filters highly complex scenes more aggressively and creates better VQ for low bitrate outputs.
    #
    #   @return [Integer]
    #
    # @!attribute post_temporal_sharpening
    #   When you set Noise reducer (noiseReducer) to Temporal (TEMPORAL), the bandwidth and sharpness of your output is reduced. You can optionally use Post temporal sharpening (postTemporalSharpening) to apply sharpening to the edges of your output. Note that Post temporal sharpening will also make the bandwidth reduction from the Noise reducer smaller. The default behavior, Auto (AUTO), allows the transcoder to determine whether to apply sharpening, depending on your input type and quality. When you set Post temporal sharpening to Enabled (ENABLED), specify how much sharpening is applied using Post temporal sharpening strength (postTemporalSharpeningStrength). Set Post temporal sharpening to Disabled (DISABLED) to not apply sharpening.
    #
    #   Enum, one of: ["DISABLED", "ENABLED", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute post_temporal_sharpening_strength
    #   Use Post temporal sharpening strength (postTemporalSharpeningStrength) to define the amount of sharpening the transcoder applies to your output. Set Post temporal sharpening strength to Low (LOW), Medium (MEDIUM), or High (HIGH) to indicate the amount of sharpening.
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute speed
    #   The speed of the filter (higher number is faster). Low setting reduces bit rate at the cost of transcode time, high setting improves transcode time at the cost of bit rate.
    #
    #   @return [Integer]
    #
    # @!attribute strength
    #   Specify the strength of the noise reducing filter on this output. Higher values produce stronger filtering. We recommend the following value ranges, depending on the result that you want: * 0-2 for complexity reduction with minimal sharpness loss * 2-8 for complexity reduction with image preservation * 8-16 for a high level of complexity reduction
    #
    #   @return [Integer]
    #
    NoiseReducerTemporalFilterSettings = ::Struct.new(
      :aggressive_mode,
      :post_temporal_sharpening,
      :post_temporal_sharpening_strength,
      :speed,
      :strength,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.aggressive_mode ||= 0
        self.speed ||= 0
        self.strength ||= 0
      end
    end

    # The resource you requested doesn't exist.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Required when you set Codec, under AudioDescriptions>CodecSettings, to the value OPUS.
    #
    # @!attribute bitrate
    #   Optional. Specify the average bitrate in bits per second. Valid values are multiples of 8000, from 32000 through 192000. The default value is 96000, which we recommend for quality and bandwidth.
    #
    #   @return [Integer]
    #
    # @!attribute channels
    #   Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2.
    #
    #   @return [Integer]
    #
    # @!attribute sample_rate
    #   Optional. Sample rate in hz. Valid values are 16000, 24000, and 48000. The default value is 48000.
    #
    #   @return [Integer]
    #
    OpusSettings = ::Struct.new(
      :bitrate,
      :channels,
      :sample_rate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.channels ||= 0
        self.sample_rate ||= 0
      end
    end

    # Includes enum constants for Order
    #
    module Order
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # Each output in your job is a collection of settings that describes how you want MediaConvert to encode a single output file or stream. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/create-outputs.html.
    #
    # @!attribute audio_descriptions
    #   (AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings.
    #
    #   @return [Array<AudioDescription>]
    #
    # @!attribute caption_descriptions
    #   (CaptionDescriptions) contains groups of captions settings. For each output that has captions, include one instance of (CaptionDescriptions). (CaptionDescriptions) can contain multiple groups of captions settings.
    #
    #   @return [Array<CaptionDescription>]
    #
    # @!attribute container_settings
    #   Container specific settings.
    #
    #   @return [ContainerSettings]
    #
    # @!attribute extension
    #   Use Extension (Extension) to specify the file extension for outputs in File output groups. If you do not specify a value, the service will use default extensions by container type as follows * MPEG-2 transport stream, m2ts * Quicktime, mov * MXF container, mxf * MPEG-4 container, mp4 * WebM container, webm * No Container, the service will use codec extensions (e.g. AAC, H265, H265, AC3)
    #
    #   @return [String]
    #
    # @!attribute name_modifier
    #   Use Name modifier (NameModifier) to have the service add a string to the end of each output filename. You specify the base filename as part of your destination URI. When you create multiple outputs in the same output group, Name modifier (NameModifier) is required. Name modifier also accepts format identifiers. For DASH ISO outputs, if you use the format identifiers $Number$ or $Time$ in one output, you must use them in the same way in all outputs of the output group.
    #
    #   @return [String]
    #
    # @!attribute output_settings
    #   Specific settings for this type of output.
    #
    #   @return [OutputSettings]
    #
    # @!attribute preset
    #   Use Preset (Preset) to specify a preset for your transcoding settings. Provide the system or custom preset name. You can specify either Preset (Preset) or Container settings (ContainerSettings), but not both.
    #
    #   @return [String]
    #
    # @!attribute video_description
    #   VideoDescription contains a group of video encoding settings. The specific video settings depend on the video codec that you choose for the property codec. Include one instance of VideoDescription per output.
    #
    #   @return [VideoDescription]
    #
    Output = ::Struct.new(
      :audio_descriptions,
      :caption_descriptions,
      :container_settings,
      :extension,
      :name_modifier,
      :output_settings,
      :preset,
      :video_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # OutputChannel mapping settings.
    #
    # @!attribute input_channels
    #   Use this setting to specify your remix values when they are integers, such as -10, 0, or 4.
    #
    #   @return [Array<Integer>]
    #
    # @!attribute input_channels_fine_tune
    #   Use this setting to specify your remix values when they have a decimal component, such as -10.312, 0.08, or 4.9. MediaConvert rounds your remixing values to the nearest thousandth.
    #
    #   @return [Array<Float>]
    #
    OutputChannelMapping = ::Struct.new(
      :input_channels,
      :input_channels_fine_tune,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Details regarding output
    #
    # @!attribute duration_in_ms
    #   Duration in milliseconds
    #
    #   @return [Integer]
    #
    # @!attribute video_details
    #   Contains details about the output's video stream
    #
    #   @return [VideoDetail]
    #
    OutputDetail = ::Struct.new(
      :duration_in_ms,
      :video_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration_in_ms ||= 0
      end
    end

    # Group of outputs
    #
    # @!attribute automated_encoding_settings
    #   Use automated encoding to have MediaConvert choose your encoding settings for you, based on characteristics of your input video.
    #
    #   @return [AutomatedEncodingSettings]
    #
    # @!attribute custom_name
    #   Use Custom Group Name (CustomName) to specify a name for the output group. This value is displayed on the console and can make your job settings JSON more human-readable. It does not affect your outputs. Use up to twelve characters that are either letters, numbers, spaces, or underscores.
    #
    #   @return [String]
    #
    # @!attribute name
    #   Name of the output group
    #
    #   @return [String]
    #
    # @!attribute output_group_settings
    #   Output Group settings, including type
    #
    #   @return [OutputGroupSettings]
    #
    # @!attribute outputs
    #   This object holds groups of encoding settings, one group of settings per output.
    #
    #   @return [Array<Output>]
    #
    OutputGroup = ::Struct.new(
      :automated_encoding_settings,
      :custom_name,
      :name,
      :output_group_settings,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Contains details about the output groups specified in the job settings.
    #
    # @!attribute output_details
    #   Details about the output
    #
    #   @return [Array<OutputDetail>]
    #
    OutputGroupDetail = ::Struct.new(
      :output_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Output Group settings, including type
    #
    # @!attribute cmaf_group_settings
    #   Settings related to your CMAF output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to CMAF_GROUP_SETTINGS.
    #
    #   @return [CmafGroupSettings]
    #
    # @!attribute dash_iso_group_settings
    #   Settings related to your DASH output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to DASH_ISO_GROUP_SETTINGS.
    #
    #   @return [DashIsoGroupSettings]
    #
    # @!attribute file_group_settings
    #   Settings related to your File output group. MediaConvert uses this group of settings to generate a single standalone file, rather than a streaming package. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to FILE_GROUP_SETTINGS.
    #
    #   @return [FileGroupSettings]
    #
    # @!attribute hls_group_settings
    #   Settings related to your HLS output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to HLS_GROUP_SETTINGS.
    #
    #   @return [HlsGroupSettings]
    #
    # @!attribute ms_smooth_group_settings
    #   Settings related to your Microsoft Smooth Streaming output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to MS_SMOOTH_GROUP_SETTINGS.
    #
    #   @return [MsSmoothGroupSettings]
    #
    # @!attribute type
    #   Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)
    #
    #   Enum, one of: ["HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS", "CMAF_GROUP_SETTINGS"]
    #
    #   @return [String]
    #
    OutputGroupSettings = ::Struct.new(
      :cmaf_group_settings,
      :dash_iso_group_settings,
      :file_group_settings,
      :hls_group_settings,
      :ms_smooth_group_settings,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OutputGroupType
    #
    module OutputGroupType
      # No documentation available.
      #
      HLS_GROUP_SETTINGS = "HLS_GROUP_SETTINGS"

      # No documentation available.
      #
      DASH_ISO_GROUP_SETTINGS = "DASH_ISO_GROUP_SETTINGS"

      # No documentation available.
      #
      FILE_GROUP_SETTINGS = "FILE_GROUP_SETTINGS"

      # No documentation available.
      #
      MS_SMOOTH_GROUP_SETTINGS = "MS_SMOOTH_GROUP_SETTINGS"

      # No documentation available.
      #
      CMAF_GROUP_SETTINGS = "CMAF_GROUP_SETTINGS"
    end

    # Includes enum constants for OutputSdt
    #
    module OutputSdt
      # No documentation available.
      #
      SDT_FOLLOW = "SDT_FOLLOW"

      # No documentation available.
      #
      SDT_FOLLOW_IF_PRESENT = "SDT_FOLLOW_IF_PRESENT"

      # No documentation available.
      #
      SDT_MANUAL = "SDT_MANUAL"

      # No documentation available.
      #
      SDT_NONE = "SDT_NONE"
    end

    # Specific settings for this type of output.
    #
    # @!attribute hls_settings
    #   Settings for HLS output groups
    #
    #   @return [HlsSettings]
    #
    OutputSettings = ::Struct.new(
      :hls_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PadVideo
    #
    module PadVideo
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      BLACK = "BLACK"
    end

    # If you work with a third party video watermarking partner, use the group of settings that correspond with your watermarking partner to include watermarks in your output.
    #
    # @!attribute nexguard_file_marker_settings
    #   For forensic video watermarking, MediaConvert supports Nagra NexGuard File Marker watermarking. MediaConvert supports both PreRelease Content (NGPR/G2) and OTT Streaming workflows.
    #
    #   @return [NexGuardFileMarkerSettings]
    #
    PartnerWatermarking = ::Struct.new(
      :nexguard_file_marker_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @!attribute http_inputs
    #   Allow or disallow jobs that specify HTTP inputs.
    #
    #   Enum, one of: ["ALLOWED", "DISALLOWED"]
    #
    #   @return [String]
    #
    # @!attribute https_inputs
    #   Allow or disallow jobs that specify HTTPS inputs.
    #
    #   Enum, one of: ["ALLOWED", "DISALLOWED"]
    #
    #   @return [String]
    #
    # @!attribute s3_inputs
    #   Allow or disallow jobs that specify Amazon S3 inputs.
    #
    #   Enum, one of: ["ALLOWED", "DISALLOWED"]
    #
    #   @return [String]
    #
    Policy = ::Struct.new(
      :http_inputs,
      :https_inputs,
      :s3_inputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
    #
    # @!attribute arn
    #   An identifier for this resource that is unique within all of AWS.
    #
    #   @return [String]
    #
    # @!attribute category
    #   An optional category you create to organize your presets.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The timestamp in epoch seconds for preset creation.
    #
    #   @return [Time]
    #
    # @!attribute description
    #   An optional description you create for each preset.
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   The timestamp in epoch seconds when the preset was last updated.
    #
    #   @return [Time]
    #
    # @!attribute name
    #   A name you create for each preset. Each name must be unique within your account.
    #
    #   @return [String]
    #
    # @!attribute settings
    #   Settings for preset
    #
    #   @return [PresetSettings]
    #
    # @!attribute type
    #   A preset can be of two types: system or custom. System or built-in preset can't be modified or deleted by the user.
    #
    #   Enum, one of: ["SYSTEM", "CUSTOM"]
    #
    #   @return [String]
    #
    Preset = ::Struct.new(
      :arn,
      :category,
      :created_at,
      :description,
      :last_updated,
      :name,
      :settings,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PresetListBy
    #
    module PresetListBy
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      CREATION_DATE = "CREATION_DATE"

      # No documentation available.
      #
      SYSTEM = "SYSTEM"
    end

    # Settings for preset
    #
    # @!attribute audio_descriptions
    #   (AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings.
    #
    #   @return [Array<AudioDescription>]
    #
    # @!attribute caption_descriptions
    #   This object holds groups of settings related to captions for one output. For each output that has captions, include one instance of CaptionDescriptions.
    #
    #   @return [Array<CaptionDescriptionPreset>]
    #
    # @!attribute container_settings
    #   Container specific settings.
    #
    #   @return [ContainerSettings]
    #
    # @!attribute video_description
    #   VideoDescription contains a group of video encoding settings. The specific video settings depend on the video codec that you choose for the property codec. Include one instance of VideoDescription per output.
    #
    #   @return [VideoDescription]
    #
    PresetSettings = ::Struct.new(
      :audio_descriptions,
      :caption_descriptions,
      :container_settings,
      :video_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PricingPlan
    #
    module PricingPlan
      # No documentation available.
      #
      ON_DEMAND = "ON_DEMAND"

      # No documentation available.
      #
      RESERVED = "RESERVED"
    end

    # Includes enum constants for ProresChromaSampling
    #
    module ProresChromaSampling
      # No documentation available.
      #
      PRESERVE_444_SAMPLING = "PRESERVE_444_SAMPLING"

      # No documentation available.
      #
      SUBSAMPLE_TO_422 = "SUBSAMPLE_TO_422"
    end

    # Includes enum constants for ProresCodecProfile
    #
    module ProresCodecProfile
      # No documentation available.
      #
      APPLE_PRORES_422 = "APPLE_PRORES_422"

      # No documentation available.
      #
      APPLE_PRORES_422_HQ = "APPLE_PRORES_422_HQ"

      # No documentation available.
      #
      APPLE_PRORES_422_LT = "APPLE_PRORES_422_LT"

      # No documentation available.
      #
      APPLE_PRORES_422_PROXY = "APPLE_PRORES_422_PROXY"

      # No documentation available.
      #
      APPLE_PRORES_4444 = "APPLE_PRORES_4444"

      # No documentation available.
      #
      APPLE_PRORES_4444_XQ = "APPLE_PRORES_4444_XQ"
    end

    # Includes enum constants for ProresFramerateControl
    #
    module ProresFramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for ProresFramerateConversionAlgorithm
    #
    module ProresFramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Includes enum constants for ProresInterlaceMode
    #
    module ProresInterlaceMode
      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"

      # No documentation available.
      #
      TOP_FIELD = "TOP_FIELD"

      # No documentation available.
      #
      BOTTOM_FIELD = "BOTTOM_FIELD"

      # No documentation available.
      #
      FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD"

      # No documentation available.
      #
      FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD"
    end

    # Includes enum constants for ProresParControl
    #
    module ProresParControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for ProresScanTypeConversionMode
    #
    module ProresScanTypeConversionMode
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE"
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES.
    #
    # @!attribute chroma_sampling
    #   This setting applies only to ProRes 4444 and ProRes 4444 XQ outputs that you create from inputs that use 4:4:4 chroma sampling. Set Preserve 4:4:4 sampling (PRESERVE_444_SAMPLING) to allow outputs to also use 4:4:4 chroma sampling. You must specify a value for this setting when your output codec profile supports 4:4:4 chroma sampling. Related Settings: When you set Chroma sampling to Preserve 4:4:4 sampling (PRESERVE_444_SAMPLING), you must choose an output codec profile that supports 4:4:4 chroma sampling. These values for Profile (CodecProfile) support 4:4:4 chroma sampling: Apple ProRes 4444 (APPLE_PRORES_4444) or Apple ProRes 4444 XQ (APPLE_PRORES_4444_XQ). When you set Chroma sampling to Preserve 4:4:4 sampling, you must disable all video preprocessors except for Nexguard file marker (PartnerWatermarking). When you set Chroma sampling to Preserve 4:4:4 sampling and use framerate conversion, you must set Frame rate conversion algorithm (FramerateConversionAlgorithm) to Drop duplicate (DUPLICATE_DROP).
    #
    #   Enum, one of: ["PRESERVE_444_SAMPLING", "SUBSAMPLE_TO_422"]
    #
    #   @return [String]
    #
    # @!attribute codec_profile
    #   Use Profile (ProResCodecProfile) to specify the type of Apple ProRes codec to use for this output.
    #
    #   Enum, one of: ["APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY", "APPLE_PRORES_4444", "APPLE_PRORES_4444_XQ"]
    #
    #   @return [String]
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #
    #   Enum, one of: ["PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"]
    #
    #   @return [String]
    #
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #
    #   @return [Integer]
    #
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #
    #   @return [Integer]
    #
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
    #
    #   Enum, one of: ["INTERLACED", "INTERLACED_OPTIMIZE"]
    #
    #   @return [String]
    #
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #
    #   Enum, one of: ["NONE", "HARD"]
    #
    #   @return [String]
    #
    ProresSettings = ::Struct.new(
      :chroma_sampling,
      :codec_profile,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :interlace_mode,
      :par_control,
      :par_denominator,
      :par_numerator,
      :scan_type_conversion_mode,
      :slow_pal,
      :telecine,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.par_denominator ||= 0
        self.par_numerator ||= 0
      end
    end

    # Includes enum constants for ProresSlowPal
    #
    module ProresSlowPal
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for ProresTelecine
    #
    module ProresTelecine
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      HARD = "HARD"
    end

    # @!attribute policy
    #   A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    #   @return [Policy]
    #
    PutPolicyInput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    #   @return [Policy]
    #
    PutPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.
    #
    # @!attribute arn
    #   An identifier for this resource that is unique within all of AWS.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The timestamp in epoch seconds for when you created the queue.
    #
    #   @return [Time]
    #
    # @!attribute description
    #   An optional description that you create for each queue.
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   The timestamp in epoch seconds for when you most recently updated the queue.
    #
    #   @return [Time]
    #
    # @!attribute name
    #   A name that you create for each queue. Each name must be unique within your account.
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment.
    #
    #   Enum, one of: ["ON_DEMAND", "RESERVED"]
    #
    #   @return [String]
    #
    # @!attribute progressing_jobs_count
    #   The estimated number of jobs with a PROGRESSING status.
    #
    #   @return [Integer]
    #
    # @!attribute reservation_plan
    #   Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
    #
    #   @return [ReservationPlan]
    #
    # @!attribute status
    #   Queues can be ACTIVE or PAUSED. If you pause a queue, the service won't begin processing jobs in that queue. Jobs that are running when you pause the queue continue to run until they finish or result in an error.
    #
    #   Enum, one of: ["ACTIVE", "PAUSED"]
    #
    #   @return [String]
    #
    # @!attribute submitted_jobs_count
    #   The estimated number of jobs with a SUBMITTED status.
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   Specifies whether this on-demand queue is system or custom. System queues are built in. You can't modify or delete system queues. You can create and modify custom queues.
    #
    #   Enum, one of: ["SYSTEM", "CUSTOM"]
    #
    #   @return [String]
    #
    Queue = ::Struct.new(
      :arn,
      :created_at,
      :description,
      :last_updated,
      :name,
      :pricing_plan,
      :progressing_jobs_count,
      :reservation_plan,
      :status,
      :submitted_jobs_count,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.progressing_jobs_count ||= 0
        self.submitted_jobs_count ||= 0
      end
    end

    # Includes enum constants for QueueListBy
    #
    module QueueListBy
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      CREATION_DATE = "CREATION_DATE"
    end

    # Includes enum constants for QueueStatus
    #
    module QueueStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      PAUSED = "PAUSED"
    end

    # Description of the source and destination queues between which the job has moved, along with the timestamp of the move
    #
    # @!attribute destination_queue
    #   The queue that the job was on after the transition.
    #
    #   @return [String]
    #
    # @!attribute source_queue
    #   The queue that the job was on before the transition.
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   The time, in Unix epoch format, that the job moved from the source queue to the destination queue.
    #
    #   @return [Time]
    #
    QueueTransition = ::Struct.new(
      :destination_queue,
      :source_queue,
      :timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Use Rectangle to identify a specific area of the video frame.
    #
    # @!attribute height
    #   Height of rectangle in pixels. Specify only even numbers.
    #
    #   @return [Integer]
    #
    # @!attribute width
    #   Width of rectangle in pixels. Specify only even numbers.
    #
    #   @return [Integer]
    #
    # @!attribute x
    #   The distance, in pixels, between the rectangle and the left edge of the video frame. Specify only even numbers.
    #
    #   @return [Integer]
    #
    # @!attribute y
    #   The distance, in pixels, between the rectangle and the top edge of the video frame. Specify only even numbers.
    #
    #   @return [Integer]
    #
    Rectangle = ::Struct.new(
      :height,
      :width,
      :x,
      :y,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.height ||= 0
        self.width ||= 0
        self.x ||= 0
        self.y ||= 0
      end
    end

    # Use Manual audio remixing (RemixSettings) to adjust audio levels for each audio channel in each output of your job. With audio remixing, you can output more or fewer audio channels than your input audio source provides.
    #
    # @!attribute channel_mapping
    #   Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel, in dB. Specify remix values to indicate how much of the content from your input audio channel you want in your output audio channels. Each instance of the InputChannels or InputChannelsFineTune array specifies these values for one output channel. Use one instance of this array for each output channel. In the console, each array corresponds to a column in the graphical depiction of the mapping matrix. The rows of the graphical matrix correspond to input channels. Valid values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification). Use InputChannels or InputChannelsFineTune to specify your remix values. Don't use both.
    #
    #   @return [ChannelMapping]
    #
    # @!attribute channels_in
    #   Specify the number of audio channels from your input that you want to use in your output. With remixing, you might combine or split the data in these channels, so the number of channels in your final output might be different. If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping.
    #
    #   @return [Integer]
    #
    # @!attribute channels_out
    #   Specify the number of channels in this output after remixing. Valid values: 1, 2, 4, 6, 8... 64. (1 and even numbers to 64.) If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping.
    #
    #   @return [Integer]
    #
    RemixSettings = ::Struct.new(
      :channel_mapping,
      :channels_in,
      :channels_out,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.channels_in ||= 0
        self.channels_out ||= 0
      end
    end

    # Includes enum constants for RenewalType
    #
    module RenewalType
      # No documentation available.
      #
      AUTO_RENEW = "AUTO_RENEW"

      # No documentation available.
      #
      EXPIRE = "EXPIRE"
    end

    # Includes enum constants for RequiredFlag
    #
    module RequiredFlag
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
    #
    # @!attribute commitment
    #   The length of the term of your reserved queue pricing plan commitment.
    #
    #   Enum, one of: ["ONE_YEAR"]
    #
    #   @return [String]
    #
    # @!attribute expires_at
    #   The timestamp in epoch seconds for when the current pricing plan term for this reserved queue expires.
    #
    #   @return [Time]
    #
    # @!attribute purchased_at
    #   The timestamp in epoch seconds for when you set up the current pricing plan for this reserved queue.
    #
    #   @return [Time]
    #
    # @!attribute renewal_type
    #   Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term.
    #
    #   Enum, one of: ["AUTO_RENEW", "EXPIRE"]
    #
    #   @return [String]
    #
    # @!attribute reserved_slots
    #   Specifies the number of reserved transcode slots (RTS) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. When you increase this number, you extend your existing commitment with a new 12-month commitment for a larger number of RTS. The new commitment begins when you purchase the additional capacity. You can't decrease the number of RTS in your reserved queue.
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   Specifies whether the pricing plan for your reserved queue is ACTIVE or EXPIRED.
    #
    #   Enum, one of: ["ACTIVE", "EXPIRED"]
    #
    #   @return [String]
    #
    ReservationPlan = ::Struct.new(
      :commitment,
      :expires_at,
      :purchased_at,
      :renewal_type,
      :reserved_slots,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.reserved_slots ||= 0
      end
    end

    # Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
    #
    # @!attribute commitment
    #   The length of the term of your reserved queue pricing plan commitment.
    #
    #   Enum, one of: ["ONE_YEAR"]
    #
    #   @return [String]
    #
    # @!attribute renewal_type
    #   Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term. When your term is auto renewed, you extend your commitment by 12 months from the auto renew date. You can cancel this commitment.
    #
    #   Enum, one of: ["AUTO_RENEW", "EXPIRE"]
    #
    #   @return [String]
    #
    # @!attribute reserved_slots
    #   Specifies the number of reserved transcode slots (RTS) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. You can't decrease the number of RTS in your reserved queue. You can increase the number of RTS by extending your existing commitment with a new 12-month commitment for the larger number. The new commitment begins when you purchase the additional capacity. You can't cancel your commitment or revert to your original commitment after you increase the capacity.
    #
    #   @return [Integer]
    #
    ReservationPlanSettings = ::Struct.new(
      :commitment,
      :renewal_type,
      :reserved_slots,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.reserved_slots ||= 0
      end
    end

    # Includes enum constants for ReservationPlanStatus
    #
    module ReservationPlanStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"
    end

    # The Amazon Resource Name (ARN) and tags for an AWS Elemental MediaConvert resource.
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   The tags for the resource.
    #
    #   @return [Hash<String, String>]
    #
    ResourceTags = ::Struct.new(
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RespondToAfd
    #
    module RespondToAfd
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      RESPOND = "RESPOND"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Includes enum constants for RuleType
    #
    module RuleType
      # No documentation available.
      #
      MIN_TOP_RENDITION_SIZE = "MIN_TOP_RENDITION_SIZE"

      # No documentation available.
      #
      MIN_BOTTOM_RENDITION_SIZE = "MIN_BOTTOM_RENDITION_SIZE"

      # No documentation available.
      #
      FORCE_INCLUDE_RENDITIONS = "FORCE_INCLUDE_RENDITIONS"

      # No documentation available.
      #
      ALLOWED_RENDITIONS = "ALLOWED_RENDITIONS"
    end

    # Optional. Have MediaConvert automatically apply Amazon S3 access control for the outputs in this output group. When you don't use this setting, S3 automatically applies the default access control list PRIVATE.
    #
    # @!attribute canned_acl
    #   Choose an Amazon S3 canned ACL for MediaConvert to apply to this output.
    #
    #   Enum, one of: ["PUBLIC_READ", "AUTHENTICATED_READ", "BUCKET_OWNER_READ", "BUCKET_OWNER_FULL_CONTROL"]
    #
    #   @return [String]
    #
    S3DestinationAccessControl = ::Struct.new(
      :canned_acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings associated with S3 destination
    #
    # @!attribute access_control
    #   Optional. Have MediaConvert automatically apply Amazon S3 access control for the outputs in this output group. When you don't use this setting, S3 automatically applies the default access control list PRIVATE.
    #
    #   @return [S3DestinationAccessControl]
    #
    # @!attribute encryption
    #   Settings for how your job outputs are encrypted as they are uploaded to Amazon S3.
    #
    #   @return [S3EncryptionSettings]
    #
    S3DestinationSettings = ::Struct.new(
      :access_control,
      :encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings for how your job outputs are encrypted as they are uploaded to Amazon S3.
    #
    # @!attribute encryption_type
    #   Specify how you want your data keys managed. AWS uses data keys to encrypt your content. AWS also encrypts the data keys themselves, using a customer master key (CMK), and then stores the encrypted data keys alongside your encrypted content. Use this setting to specify which AWS service manages the CMK. For simplest set up, choose Amazon S3 (SERVER_SIDE_ENCRYPTION_S3). If you want your master key to be managed by AWS Key Management Service (KMS), choose AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). By default, when you choose AWS KMS, KMS uses the AWS managed customer master key (CMK) associated with Amazon S3 to encrypt your data keys. You can optionally choose to specify a different, customer managed CMK. Do so by specifying the Amazon Resource Name (ARN) of the key for the setting  KMS ARN (kmsKeyArn).
    #
    #   Enum, one of: ["SERVER_SIDE_ENCRYPTION_S3", "SERVER_SIDE_ENCRYPTION_KMS"]
    #
    #   @return [String]
    #
    # @!attribute kms_encryption_context
    #   Optionally, specify the encryption context that you want to use alongside your KMS key. AWS KMS uses this encryption context as additional authenticated data (AAD) to support authenticated encryption. This value must be a base64-encoded UTF-8 string holding JSON which represents a string-string map. To use this setting, you must also set Server-side encryption (S3ServerSideEncryptionType) to AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). For more information about encryption context, see: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html encrypt_context.
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   Optionally, specify the customer master key (CMK) that you want to use to encrypt the data key that AWS uses to encrypt your output content. Enter the Amazon Resource Name (ARN) of the CMK. To use this setting, you must also set Server-side encryption (S3ServerSideEncryptionType) to AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). If you set Server-side encryption to AWS KMS but don't specify a CMK here, AWS uses the AWS managed CMK associated with Amazon S3.
    #
    #   @return [String]
    #
    S3EncryptionSettings = ::Struct.new(
      :encryption_type,
      :kms_encryption_context,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3ObjectCannedAcl
    #
    module S3ObjectCannedAcl
      # No documentation available.
      #
      PUBLIC_READ = "PUBLIC_READ"

      # No documentation available.
      #
      AUTHENTICATED_READ = "AUTHENTICATED_READ"

      # No documentation available.
      #
      BUCKET_OWNER_READ = "BUCKET_OWNER_READ"

      # No documentation available.
      #
      BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL"
    end

    # Includes enum constants for S3ServerSideEncryptionType
    #
    module S3ServerSideEncryptionType
      # No documentation available.
      #
      SERVER_SIDE_ENCRYPTION_S3 = "SERVER_SIDE_ENCRYPTION_S3"

      # No documentation available.
      #
      SERVER_SIDE_ENCRYPTION_KMS = "SERVER_SIDE_ENCRYPTION_KMS"
    end

    # Includes enum constants for SampleRangeConversion
    #
    module SampleRangeConversion
      # No documentation available.
      #
      LIMITED_RANGE_SQUEEZE = "LIMITED_RANGE_SQUEEZE"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for ScalingBehavior
    #
    module ScalingBehavior
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      STRETCH_TO_OUTPUT = "STRETCH_TO_OUTPUT"
    end

    # Includes enum constants for SccDestinationFramerate
    #
    module SccDestinationFramerate
      # No documentation available.
      #
      FRAMERATE_23_97 = "FRAMERATE_23_97"

      # No documentation available.
      #
      FRAMERATE_24 = "FRAMERATE_24"

      # No documentation available.
      #
      FRAMERATE_25 = "FRAMERATE_25"

      # No documentation available.
      #
      FRAMERATE_29_97_DROPFRAME = "FRAMERATE_29_97_DROPFRAME"

      # No documentation available.
      #
      FRAMERATE_29_97_NON_DROPFRAME = "FRAMERATE_29_97_NON_DROPFRAME"
    end

    # Settings related to SCC captions. SCC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/scc-srt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to SCC.
    #
    # @!attribute framerate
    #   Set Framerate (SccDestinationFramerate) to make sure that the captions and the video are synchronized in the output. Specify a frame rate that matches the frame rate of the associated video. If the video frame rate is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME).
    #
    #   Enum, one of: ["FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_25", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"]
    #
    #   @return [String]
    #
    SccDestinationSettings = ::Struct.new(
      :framerate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SimulateReservedQueue
    #
    module SimulateReservedQueue
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
    #
    # @!attribute certificate_arn
    #   If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here.
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   Specify the resource ID that your SPEKE-compliant key provider uses to identify this content.
    #
    #   @return [String]
    #
    # @!attribute system_ids
    #   Relates to SPEKE implementation. DRM system identifiers. DASH output groups support a max of two system ids. Other group types support one system id. See
    #    https://dashif.org/identifiers/content_protection/ for more details.
    #
    #   @return [Array<String>]
    #
    # @!attribute url
    #   Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content.
    #
    #   @return [String]
    #
    SpekeKeyProvider = ::Struct.new(
      :certificate_arn,
      :resource_id,
      :system_ids,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # If your output group type is CMAF, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider settings instead.
    #
    # @!attribute certificate_arn
    #   If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here.
    #
    #   @return [String]
    #
    # @!attribute dash_signaled_system_ids
    #   Specify the DRM system IDs that you want signaled in the DASH manifest that MediaConvert creates as part of this CMAF package. The DASH manifest can currently signal up to three system IDs. For more information, see https://dashif.org/identifiers/content_protection/.
    #
    #   @return [Array<String>]
    #
    # @!attribute hls_signaled_system_ids
    #   Specify the DRM system ID that you want signaled in the HLS manifest that MediaConvert creates as part of this CMAF package. The HLS manifest can currently signal only one system ID. For more information, see https://dashif.org/identifiers/content_protection/.
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_id
    #   Specify the resource ID that your SPEKE-compliant key provider uses to identify this content.
    #
    #   @return [String]
    #
    # @!attribute url
    #   Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content.
    #
    #   @return [String]
    #
    SpekeKeyProviderCmaf = ::Struct.new(
      :certificate_arn,
      :dash_signaled_system_ids,
      :hls_signaled_system_ids,
      :resource_id,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings related to SRT captions. SRT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to SRT.
    #
    # @!attribute style_passthrough
    #   Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use simplified output captions.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    SrtDestinationSettings = ::Struct.new(
      :style_passthrough,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SrtStylePassthrough
    #
    module SrtStylePassthrough
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Use these settings to set up encryption with a static key provider.
    #
    # @!attribute key_format
    #   Relates to DRM implementation. Sets the value of the KEYFORMAT attribute. Must be 'identity' or a reverse DNS string. May be omitted to indicate an implicit value of 'identity'.
    #
    #   @return [String]
    #
    # @!attribute key_format_versions
    #   Relates to DRM implementation. Either a single positive integer version value or a slash delimited list of version values (1/2/3).
    #
    #   @return [String]
    #
    # @!attribute static_key_value
    #   Relates to DRM implementation. Use a 32-character hexidecimal string to specify Key Value (StaticKeyValue).
    #
    #   @return [String]
    #
    # @!attribute url
    #   Relates to DRM implementation. The location of the license server used for protecting content.
    #
    #   @return [String]
    #
    StaticKeyProvider = ::Struct.new(
      :key_format,
      :key_format_versions,
      :static_key_value,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatusUpdateInterval
    #
    module StatusUpdateInterval
      # No documentation available.
      #
      SECONDS_10 = "SECONDS_10"

      # No documentation available.
      #
      SECONDS_12 = "SECONDS_12"

      # No documentation available.
      #
      SECONDS_15 = "SECONDS_15"

      # No documentation available.
      #
      SECONDS_20 = "SECONDS_20"

      # No documentation available.
      #
      SECONDS_30 = "SECONDS_30"

      # No documentation available.
      #
      SECONDS_60 = "SECONDS_60"

      # No documentation available.
      #
      SECONDS_120 = "SECONDS_120"

      # No documentation available.
      #
      SECONDS_180 = "SECONDS_180"

      # No documentation available.
      #
      SECONDS_240 = "SECONDS_240"

      # No documentation available.
      #
      SECONDS_300 = "SECONDS_300"

      # No documentation available.
      #
      SECONDS_360 = "SECONDS_360"

      # No documentation available.
      #
      SECONDS_420 = "SECONDS_420"

      # No documentation available.
      #
      SECONDS_480 = "SECONDS_480"

      # No documentation available.
      #
      SECONDS_540 = "SECONDS_540"

      # No documentation available.
      #
      SECONDS_600 = "SECONDS_600"
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag. To get the ARN, send a GET request with the resource name.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings related to teletext captions. Set up teletext captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/teletext-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to TELETEXT.
    #
    # @!attribute page_number
    #   Set pageNumber to the Teletext page number for the destination captions for this output. This value must be a three-digit hexadecimal string; strings ending in -FF are invalid. If you are passing through the entire set of Teletext data, do not use this field.
    #
    #   @return [String]
    #
    # @!attribute page_types
    #   Specify the page types for this Teletext page. If you don't specify a value here, the service sets the page type to the default value Subtitle (PAGE_TYPE_SUBTITLE). If you pass through the entire set of Teletext data, don't use this field. When you pass through a set of Teletext pages, your output has the same page types as your input.
    #
    #   @return [Array<String>]
    #
    TeletextDestinationSettings = ::Struct.new(
      :page_number,
      :page_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TeletextPageType
    #
    module TeletextPageType
      # No documentation available.
      #
      PAGE_TYPE_INITIAL = "PAGE_TYPE_INITIAL"

      # No documentation available.
      #
      PAGE_TYPE_SUBTITLE = "PAGE_TYPE_SUBTITLE"

      # No documentation available.
      #
      PAGE_TYPE_ADDL_INFO = "PAGE_TYPE_ADDL_INFO"

      # No documentation available.
      #
      PAGE_TYPE_PROGRAM_SCHEDULE = "PAGE_TYPE_PROGRAM_SCHEDULE"

      # No documentation available.
      #
      PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE = "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE"
    end

    # Settings specific to Teletext caption sources, including Page number.
    #
    # @!attribute page_number
    #   Use Page Number (PageNumber) to specify the three-digit hexadecimal page number that will be used for Teletext captions. Do not use this setting if you are passing through teletext from the input source to output.
    #
    #   @return [String]
    #
    TeletextSourceSettings = ::Struct.new(
      :page_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings for burning the output timecode and specified prefix into the output.
    #
    # @!attribute font_size
    #   Use Font Size (FontSize) to set the font size of any burned-in timecode. Valid values are 10, 16, 32, 48.
    #
    #   @return [Integer]
    #
    # @!attribute position
    #   Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to specify the location the burned-in timecode on output video.
    #
    #   Enum, one of: ["TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"]
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   Use Prefix (Prefix) to place ASCII characters before any burned-in timecode. For example, a prefix of "EZ-" will result in the timecode "EZ-00:00:00:00". Provide either the characters themselves or the ASCII code equivalents. The supported range of characters is 0x20 through 0x7e. This includes letters, numbers, and all special characters represented on a standard English keyboard.
    #
    #   @return [String]
    #
    TimecodeBurnin = ::Struct.new(
      :font_size,
      :position,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.font_size ||= 0
      end
    end

    # Includes enum constants for TimecodeBurninPosition
    #
    module TimecodeBurninPosition
      # No documentation available.
      #
      TOP_CENTER = "TOP_CENTER"

      # No documentation available.
      #
      TOP_LEFT = "TOP_LEFT"

      # No documentation available.
      #
      TOP_RIGHT = "TOP_RIGHT"

      # No documentation available.
      #
      MIDDLE_LEFT = "MIDDLE_LEFT"

      # No documentation available.
      #
      MIDDLE_CENTER = "MIDDLE_CENTER"

      # No documentation available.
      #
      MIDDLE_RIGHT = "MIDDLE_RIGHT"

      # No documentation available.
      #
      BOTTOM_LEFT = "BOTTOM_LEFT"

      # No documentation available.
      #
      BOTTOM_CENTER = "BOTTOM_CENTER"

      # No documentation available.
      #
      BOTTOM_RIGHT = "BOTTOM_RIGHT"
    end

    # These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping.
    #
    # @!attribute anchor
    #   If you use an editing platform that relies on an anchor timecode, use Anchor Timecode (Anchor) to specify a timecode that will match the input video frame to the output video frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF). This setting ignores frame rate conversion. System behavior for Anchor Timecode varies depending on your setting for Source (TimecodeSource). * If Source (TimecodeSource) is set to Specified Start (SPECIFIEDSTART), the first input frame is the specified value in Start Timecode (Start). Anchor Timecode (Anchor) and Start Timecode (Start) are used calculate output timecode. * If Source (TimecodeSource) is set to Start at 0 (ZEROBASED)  the  first frame is 00:00:00:00. * If Source (TimecodeSource) is set to Embedded (EMBEDDED), the  first frame is the timecode value on the first input frame of the input.
    #
    #   @return [String]
    #
    # @!attribute source
    #   Use Source (TimecodeSource) to set how timecodes are handled within this job. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded (EMBEDDED) - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 (ZEROBASED) instead. * Start at 0 (ZEROBASED) - Set the timecode of the initial frame to 00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set the timecode of the initial frame to a value other than zero. You use Start timecode (Start) to provide this value.
    #
    #   Enum, one of: ["EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"]
    #
    #   @return [String]
    #
    # @!attribute start
    #   Only use when you set Source (TimecodeSource) to Specified start (SPECIFIEDSTART). Use Start timecode (Start) to specify the timecode for the initial frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF).
    #
    #   @return [String]
    #
    # @!attribute timestamp_offset
    #   Only applies to outputs that support program-date-time stamp. Use Timestamp offset (TimestampOffset) to overwrite the timecode date without affecting the time and frame number. Provide the new date as a string in the format "yyyy-mm-dd".  To use Time stamp offset, you must also enable Insert program-date-time (InsertProgramDateTime) in the output settings. For example, if the date part of your timecodes is 2002-1-25 and you want to change it to one year later, set Timestamp offset (TimestampOffset) to 2003-1-25.
    #
    #   @return [String]
    #
    TimecodeConfig = ::Struct.new(
      :anchor,
      :source,
      :start,
      :timestamp_offset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TimecodeSource
    #
    module TimecodeSource
      # No documentation available.
      #
      EMBEDDED = "EMBEDDED"

      # No documentation available.
      #
      ZEROBASED = "ZEROBASED"

      # No documentation available.
      #
      SPECIFIEDSTART = "SPECIFIEDSTART"
    end

    # Includes enum constants for TimedMetadata
    #
    module TimedMetadata
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Insert user-defined custom ID3 metadata (id3) at timecodes (timecode) that you specify. In each output that you want to include this metadata, you must set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH).
    #
    # @!attribute id3_insertions
    #   Id3Insertions contains the array of Id3Insertion instances.
    #
    #   @return [Array<Id3Insertion>]
    #
    TimedMetadataInsertion = ::Struct.new(
      :id3_insertions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds.
    #
    # @!attribute finish_time
    #   The time, in Unix epoch format, that the transcoding job finished
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   The time, in Unix epoch format, that transcoding for the job began.
    #
    #   @return [Time]
    #
    # @!attribute submit_time
    #   The time, in Unix epoch format, that you submitted the job.
    #
    #   @return [Time]
    #
    Timing = ::Struct.new(
      :finish_time,
      :start_time,
      :submit_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings specific to caption sources that are specified by track number. Currently, this is only IMSC captions in an IMF package. If your caption source is IMSC 1.1 in a separate xml file, use FileSourceSettings instead of TrackSourceSettings.
    #
    # @!attribute track_number
    #   Use this setting to select a single captions track from a source. Track numbers correspond to the order in the captions source file. For IMF sources, track numbering is based on the order that the captions appear in the CPL. For example, use 1 to select the captions asset that is listed first in the CPL. To include more than one captions track in your job outputs, create multiple input captions selectors. Specify one track per selector.
    #
    #   @return [Integer]
    #
    TrackSourceSettings = ::Struct.new(
      :track_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.track_number ||= 0
      end
    end

    # Settings related to TTML captions. TTML is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to TTML.
    #
    # @!attribute style_passthrough
    #   Pass through style and position information from a TTML-like input source (TTML, IMSC, SMPTE-TT) to the TTML output.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    TtmlDestinationSettings = ::Struct.new(
      :style_passthrough,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TtmlStylePassthrough
    #
    module TtmlStylePassthrough
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      SYSTEM = "SYSTEM"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove tags from. To get the ARN, send a GET request with the resource name.
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   The keys of the tags that you want to remove from the resource.
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.
    #
    #   @return [AccelerationSettings]
    #
    # @!attribute category
    #   The new category for the job template, if you are changing it.
    #
    #   @return [String]
    #
    # @!attribute description
    #   The new description for the job template, if you are changing it.
    #
    #   @return [String]
    #
    # @!attribute hop_destinations
    #   Optional list of hop destinations.
    #
    #   @return [Array<HopDestination>]
    #
    # @!attribute name
    #   The name of the job template you are modifying
    #
    #   @return [String]
    #
    # @!attribute priority
    #   Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.
    #
    #   @return [Integer]
    #
    # @!attribute queue
    #   The new queue for the job template, if you are changing it.
    #
    #   @return [String]
    #
    # @!attribute settings
    #   JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
    #
    #   @return [JobTemplateSettings]
    #
    # @!attribute status_update_interval
    #   Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #
    #   Enum, one of: ["SECONDS_10", "SECONDS_12", "SECONDS_15", "SECONDS_20", "SECONDS_30", "SECONDS_60", "SECONDS_120", "SECONDS_180", "SECONDS_240", "SECONDS_300", "SECONDS_360", "SECONDS_420", "SECONDS_480", "SECONDS_540", "SECONDS_600"]
    #
    #   @return [String]
    #
    UpdateJobTemplateInput = ::Struct.new(
      :acceleration_settings,
      :category,
      :description,
      :hop_destinations,
      :name,
      :priority,
      :queue,
      :settings,
      :status_update_interval,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # @!attribute job_template
    #   A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
    #
    #   @return [JobTemplate]
    #
    UpdateJobTemplateOutput = ::Struct.new(
      :job_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category
    #   The new category for the preset, if you are changing it.
    #
    #   @return [String]
    #
    # @!attribute description
    #   The new description for the preset, if you are changing it.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the preset you are modifying.
    #
    #   @return [String]
    #
    # @!attribute settings
    #   Settings for preset
    #
    #   @return [PresetSettings]
    #
    UpdatePresetInput = ::Struct.new(
      :category,
      :description,
      :name,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute preset
    #   A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
    #
    #   @return [Preset]
    #
    UpdatePresetOutput = ::Struct.new(
      :preset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   The new description for the queue, if you are changing it.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the queue that you are modifying.
    #
    #   @return [String]
    #
    # @!attribute reservation_plan_settings
    #   The new details of your pricing plan for your reserved queue. When you set up a new pricing plan to replace an expired one, you enter into another 12-month commitment. When you add capacity to your queue by increasing the number of RTS, you extend the term of your commitment to 12 months from when you add capacity. After you make these commitments, you can't cancel them.
    #
    #   @return [ReservationPlanSettings]
    #
    # @!attribute status
    #   Pause or activate a queue by changing its status between ACTIVE and PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause the queue continue to run until they finish or result in an error.
    #
    #   Enum, one of: ["ACTIVE", "PAUSED"]
    #
    #   @return [String]
    #
    UpdateQueueInput = ::Struct.new(
      :description,
      :name,
      :reservation_plan_settings,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute queue
    #   You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.
    #
    #   @return [Queue]
    #
    UpdateQueueOutput = ::Struct.new(
      :queue,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Vc3Class
    #
    module Vc3Class
      # No documentation available.
      #
      CLASS_145_8BIT = "CLASS_145_8BIT"

      # No documentation available.
      #
      CLASS_220_8BIT = "CLASS_220_8BIT"

      # No documentation available.
      #
      CLASS_220_10BIT = "CLASS_220_10BIT"
    end

    # Includes enum constants for Vc3FramerateControl
    #
    module Vc3FramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for Vc3FramerateConversionAlgorithm
    #
    module Vc3FramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Includes enum constants for Vc3InterlaceMode
    #
    module Vc3InterlaceMode
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"
    end

    # Includes enum constants for Vc3ScanTypeConversionMode
    #
    module Vc3ScanTypeConversionMode
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE"
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VC3
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute interlace_mode
    #   Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output.
    #
    #   Enum, one of: ["INTERLACED", "PROGRESSIVE"]
    #
    #   @return [String]
    #
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
    #
    #   Enum, one of: ["INTERLACED", "INTERLACED_OPTIMIZE"]
    #
    #   @return [String]
    #
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #
    #   Enum, one of: ["NONE", "HARD"]
    #
    #   @return [String]
    #
    # @!attribute vc3_class
    #   Specify the VC3 class to choose the quality characteristics for this output. VC3 class, together with the settings Framerate (framerateNumerator and framerateDenominator) and Resolution (height and width), determine your output bitrate. For example, say that your video resolution is 1920x1080 and your framerate is 29.97. Then Class 145 (CLASS_145) gives you an output with a bitrate of approximately 145 Mbps and Class 220 (CLASS_220) gives you and output with a bitrate of approximately 220 Mbps. VC3 class also specifies the color bit depth of your output.
    #
    #   Enum, one of: ["CLASS_145_8BIT", "CLASS_220_8BIT", "CLASS_220_10BIT"]
    #
    #   @return [String]
    #
    Vc3Settings = ::Struct.new(
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :interlace_mode,
      :scan_type_conversion_mode,
      :slow_pal,
      :telecine,
      :vc3_class,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
      end
    end

    # Includes enum constants for Vc3SlowPal
    #
    module Vc3SlowPal
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for Vc3Telecine
    #
    module Vc3Telecine
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      HARD = "HARD"
    end

    # Includes enum constants for VchipAction
    #
    module VchipAction
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      STRIP = "STRIP"
    end

    # Includes enum constants for VideoCodec
    #
    module VideoCodec
      # No documentation available.
      #
      AV1 = "AV1"

      # No documentation available.
      #
      AVC_INTRA = "AVC_INTRA"

      # No documentation available.
      #
      FRAME_CAPTURE = "FRAME_CAPTURE"

      # No documentation available.
      #
      H_264 = "H_264"

      # No documentation available.
      #
      H_265 = "H_265"

      # No documentation available.
      #
      MPEG2 = "MPEG2"

      # No documentation available.
      #
      PRORES = "PRORES"

      # No documentation available.
      #
      VC3 = "VC3"

      # No documentation available.
      #
      VP8 = "VP8"

      # No documentation available.
      #
      VP9 = "VP9"

      # No documentation available.
      #
      XAVC = "XAVC"
    end

    # Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value that you choose for Video codec (Codec). For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AV1, Av1Settings * AVC_INTRA, AvcIntraSettings * FRAME_CAPTURE, FrameCaptureSettings * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * VC3, Vc3Settings * VP8, Vp8Settings * VP9, Vp9Settings * XAVC, XavcSettings
    #
    # @!attribute av1_settings
    #   Required when you set Codec, under VideoDescription>CodecSettings to the value AV1.
    #
    #   @return [Av1Settings]
    #
    # @!attribute avc_intra_settings
    #   Required when you choose AVC-Intra for your output video codec. For more information about the AVC-Intra settings, see the relevant specification. For detailed information about SD and HD in AVC-Intra, see https://ieeexplore.ieee.org/document/7290936. For information about 4K/2K in AVC-Intra, see https://pro-av.panasonic.net/en/avc-ultra/AVC-ULTRAoverview.pdf.
    #
    #   @return [AvcIntraSettings]
    #
    # @!attribute codec
    #   Specifies the video codec. This must be equal to one of the enum values defined by the object  VideoCodec.
    #
    #   Enum, one of: ["AV1", "AVC_INTRA", "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES", "VC3", "VP8", "VP9", "XAVC"]
    #
    #   @return [String]
    #
    # @!attribute frame_capture_settings
    #   Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE.
    #
    #   @return [FrameCaptureSettings]
    #
    # @!attribute h264_settings
    #   Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264.
    #
    #   @return [H264Settings]
    #
    # @!attribute h265_settings
    #   Settings for H265 codec
    #
    #   @return [H265Settings]
    #
    # @!attribute mpeg2_settings
    #   Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2.
    #
    #   @return [Mpeg2Settings]
    #
    # @!attribute prores_settings
    #   Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES.
    #
    #   @return [ProresSettings]
    #
    # @!attribute vc3_settings
    #   Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VC3
    #
    #   @return [Vc3Settings]
    #
    # @!attribute vp8_settings
    #   Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP8.
    #
    #   @return [Vp8Settings]
    #
    # @!attribute vp9_settings
    #   Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP9.
    #
    #   @return [Vp9Settings]
    #
    # @!attribute xavc_settings
    #   Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value XAVC.
    #
    #   @return [XavcSettings]
    #
    VideoCodecSettings = ::Struct.new(
      :av1_settings,
      :avc_intra_settings,
      :codec,
      :frame_capture_settings,
      :h264_settings,
      :h265_settings,
      :mpeg2_settings,
      :prores_settings,
      :vc3_settings,
      :vp8_settings,
      :vp9_settings,
      :xavc_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings related to video encoding of your output. The specific video settings depend on the video codec that you choose. When you work directly in your JSON job specification, include one instance of Video description (VideoDescription) per output.
    #
    # @!attribute afd_signaling
    #   This setting only applies to H.264, H.265, and MPEG2 outputs. Use Insert AFD signaling (AfdSignaling) to specify whether the service includes AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data.
    #
    #   Enum, one of: ["NONE", "AUTO", "FIXED"]
    #
    #   @return [String]
    #
    # @!attribute anti_alias
    #   The anti-alias filter is automatically applied to all outputs. The service no longer accepts the value DISABLED for AntiAlias. If you specify that in your job, the service will ignore the setting.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute codec_settings
    #   Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value that you choose for Video codec (Codec). For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AV1, Av1Settings * AVC_INTRA, AvcIntraSettings * FRAME_CAPTURE, FrameCaptureSettings * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * VC3, Vc3Settings * VP8, Vp8Settings * VP9, Vp9Settings * XAVC, XavcSettings
    #
    #   @return [VideoCodecSettings]
    #
    # @!attribute color_metadata
    #   Choose Insert (INSERT) for this setting to include color metadata in this output. Choose Ignore (IGNORE) to exclude color metadata from this output. If you don't specify a value, the service sets this to Insert by default.
    #
    #   Enum, one of: ["IGNORE", "INSERT"]
    #
    #   @return [String]
    #
    # @!attribute crop
    #   Use Cropping selection (crop) to specify the video area that the service will include in the output video frame.
    #
    #   @return [Rectangle]
    #
    # @!attribute drop_frame_timecode
    #   Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion (TimecodeInsertion) is enabled.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute fixed_afd
    #   Applies only if you set AFD Signaling(AfdSignaling) to Fixed (FIXED). Use Fixed (FixedAfd) to specify a four-bit AFD value which the service will write on all  frames of this video output.
    #
    #   @return [Integer]
    #
    # @!attribute height
    #   Use the Height (Height) setting to define the video resolution height for this output. Specify in pixels. If you don't provide a value here, the service will use the input height.
    #
    #   @return [Integer]
    #
    # @!attribute position
    #   Use Selection placement (position) to define the video area in your output frame. The area outside of the rectangle that you specify here is black.
    #
    #   @return [Rectangle]
    #
    # @!attribute respond_to_afd
    #   Use Respond to AFD (RespondToAfd) to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to (NONE). A preferred implementation of this workflow is to set RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to remove all input AFD values from this output.
    #
    #   Enum, one of: ["NONE", "RESPOND", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute scaling_behavior
    #   Specify how the service handles outputs that have a different aspect ratio from the input aspect ratio. Choose Stretch to output (STRETCH_TO_OUTPUT) to have the service stretch your video image to fit. Keep the setting Default (DEFAULT) to have the service letterbox your video instead. This setting overrides any value that you specify for the setting Selection placement (position) in this output.
    #
    #   Enum, one of: ["DEFAULT", "STRETCH_TO_OUTPUT"]
    #
    #   @return [String]
    #
    # @!attribute sharpness
    #   Use Sharpness (Sharpness) setting to specify the strength of anti-aliasing. This setting changes the width of the anti-alias filter kernel used for scaling. Sharpness only applies if your output resolution is different from your input resolution. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content.
    #
    #   @return [Integer]
    #
    # @!attribute timecode_insertion
    #   Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable Timecode insertion when the input frame rate is identical to the output frame rate. To include timecodes in this output, set Timecode insertion (VideoTimecodeInsertion) to PIC_TIMING_SEI. To leave them out, set it to DISABLED. Default is DISABLED. When the service inserts timecodes in an output, by default, it uses any embedded timecodes from the input. If none are present, the service will set the timecode for the first output frame to zero. To change this default behavior, adjust the settings under Timecode configuration (TimecodeConfig). In the console, these settings are located under Job > Job settings > Timecode configuration. Note - Timecode source under input settings (InputTimecodeSource) does not affect the timecodes that are inserted in the output. Source under Job settings > Timecode configuration (TimecodeSource) does.
    #
    #   Enum, one of: ["DISABLED", "PIC_TIMING_SEI"]
    #
    #   @return [String]
    #
    # @!attribute video_preprocessors
    #   Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default.
    #
    #   @return [VideoPreprocessor]
    #
    # @!attribute width
    #   Use Width (Width) to define the video resolution width, in pixels, for this output. If you don't provide a value here, the service will use the input width.
    #
    #   @return [Integer]
    #
    VideoDescription = ::Struct.new(
      :afd_signaling,
      :anti_alias,
      :codec_settings,
      :color_metadata,
      :crop,
      :drop_frame_timecode,
      :fixed_afd,
      :height,
      :position,
      :respond_to_afd,
      :scaling_behavior,
      :sharpness,
      :timecode_insertion,
      :video_preprocessors,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.fixed_afd ||= 0
        self.height ||= 0
        self.sharpness ||= 0
        self.width ||= 0
      end
    end

    # Contains details about the output's video stream
    #
    # @!attribute height_in_px
    #   Height in pixels for the output
    #
    #   @return [Integer]
    #
    # @!attribute width_in_px
    #   Width in pixels for the output
    #
    #   @return [Integer]
    #
    VideoDetail = ::Struct.new(
      :height_in_px,
      :width_in_px,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.height_in_px ||= 0
        self.width_in_px ||= 0
      end
    end

    # Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default.
    #
    # @!attribute color_corrector
    #   Use these settings to convert the color space or to modify properties such as hue and contrast for this output. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/converting-the-color-space.html.
    #
    #   @return [ColorCorrector]
    #
    # @!attribute deinterlacer
    #   Use the deinterlacer to produce smoother motion and a clearer picture. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-scan-type.html.
    #
    #   @return [Deinterlacer]
    #
    # @!attribute dolby_vision
    #   Enable Dolby Vision feature to produce Dolby Vision compatible video output.
    #
    #   @return [DolbyVision]
    #
    # @!attribute hdr10_plus
    #   Enable HDR10+ analyis and metadata injection. Compatible with HEVC only.
    #
    #   @return [Hdr10Plus]
    #
    # @!attribute image_inserter
    #   Enable the Image inserter (ImageInserter) feature to include a graphic overlay on your video. Enable or disable this feature for each output individually. This setting is disabled by default.
    #
    #   @return [ImageInserter]
    #
    # @!attribute noise_reducer
    #   Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default.
    #
    #   @return [NoiseReducer]
    #
    # @!attribute partner_watermarking
    #   If you work with a third party video watermarking partner, use the group of settings that correspond with your watermarking partner to include watermarks in your output.
    #
    #   @return [PartnerWatermarking]
    #
    # @!attribute timecode_burnin
    #   Settings for burning the output timecode and specified prefix into the output.
    #
    #   @return [TimecodeBurnin]
    #
    VideoPreprocessor = ::Struct.new(
      :color_corrector,
      :deinterlacer,
      :dolby_vision,
      :hdr10_plus,
      :image_inserter,
      :noise_reducer,
      :partner_watermarking,
      :timecode_burnin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Input video selectors contain the video settings for the input. Each of your inputs can have up to one video selector.
    #
    # @!attribute alpha_behavior
    #   Ignore this setting unless this input is a QuickTime animation with an alpha channel. Use this setting to create separate Key and Fill outputs. In each output, specify which part of the input MediaConvert uses. Leave this setting at the default value DISCARD to delete the alpha channel and preserve the video. Set it to REMAP_TO_LUMA to delete the video and map the alpha channel to the luma channel of your outputs.
    #
    #   Enum, one of: ["DISCARD", "REMAP_TO_LUMA"]
    #
    #   @return [String]
    #
    # @!attribute color_space
    #   If your input video has accurate color space metadata, or if you don't know about color space, leave this set to the default value Follow (FOLLOW). The service will automatically detect your input color space. If your input video has metadata indicating the wrong color space, specify the accurate color space here. If your input video is HDR 10 and the SMPTE ST 2086 Mastering Display Color Volume static metadata isn't present in your video stream, or if that metadata is present but not accurate, choose Force HDR 10 (FORCE_HDR10) here and specify correct values in the input HDR 10 metadata (Hdr10Metadata) settings. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr.
    #
    #   Enum, one of: ["FOLLOW", "REC_601", "REC_709", "HDR10", "HLG_2020"]
    #
    #   @return [String]
    #
    # @!attribute color_space_usage
    #   There are two sources for color metadata, the input file and the job input settings Color space (ColorSpace) and HDR master display information settings(Hdr10Metadata). The Color space usage setting determines which takes precedence. Choose Force (FORCE) to use color metadata from the input job settings. If you don't specify values for those settings, the service defaults to using metadata from your input. FALLBACK - Choose Fallback (FALLBACK) to use color metadata from the source when it is present. If there's no color metadata in your input file, the service defaults to using values you specify in the input settings.
    #
    #   Enum, one of: ["FORCE", "FALLBACK"]
    #
    #   @return [String]
    #
    # @!attribute embedded_timecode_override
    #   Set Embedded timecode override (embeddedTimecodeOverride) to Use MDPM (USE_MDPM) when your AVCHD input contains timecode tag data in the Modified Digital Video Pack Metadata (MDPM). When you do, we recommend you also set Timecode source (inputTimecodeSource) to Embedded (EMBEDDED). Leave Embedded timecode override blank, or set to None (NONE), when your input does not contain MDPM timecode.
    #
    #   Enum, one of: ["NONE", "USE_MDPM"]
    #
    #   @return [String]
    #
    # @!attribute hdr10_metadata
    #   Use these settings to provide HDR 10 metadata that is missing or inaccurate in your input video. Appropriate values vary depending on the input video and must be provided by a color grader. The color grader generates these values during the HDR 10 mastering process. The valid range for each of these settings is 0 to 50,000. Each increment represents 0.00002 in CIE1931 color coordinate. Related settings - When you specify these values, you must also set Color space (ColorSpace) to HDR 10 (HDR10). To specify whether the the values you specify here take precedence over the values in the metadata of your input file, set Color space usage (ColorSpaceUsage). To specify whether color metadata is included in an output, set Color metadata (ColorMetadata). For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr.
    #
    #   @return [Hdr10Metadata]
    #
    # @!attribute pad_video
    #   Use this setting if your input has video and audio durations that don't align, and your output or player has strict alignment requirements. Examples: Input audio track has a delayed start. Input video track ends before audio ends. When you set Pad video (padVideo) to Black (BLACK), MediaConvert generates black video frames so that output video and audio durations match. Black video frames are added at the beginning or end, depending on your input. To keep the default behavior and not generate black video, set Pad video to Disabled (DISABLED) or leave blank.
    #
    #   Enum, one of: ["DISABLED", "BLACK"]
    #
    #   @return [String]
    #
    # @!attribute pid
    #   Use PID (Pid) to select specific video data from an input file. Specify this value as an integer; the system automatically converts it to the hexidecimal value. For example, 257 selects PID 0x101. A PID, or packet identifier, is an identifier for a set of data in an MPEG-2 transport stream container.
    #
    #   @return [Integer]
    #
    # @!attribute program_number
    #   Selects a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported.
    #
    #   @return [Integer]
    #
    # @!attribute rotate
    #   Use Rotate (InputRotate) to specify how the service rotates your video. You can choose automatic rotation or specify a rotation. You can specify a clockwise rotation of 0, 90, 180, or 270 degrees. If your input video container is .mov or .mp4 and your input has rotation metadata, you can choose Automatic to have the service rotate your video according to the rotation specified in the metadata. The rotation must be within one degree of 90, 180, or 270 degrees. If the rotation metadata specifies any other rotation, the service will default to no rotation. By default, the service does no rotation, even if your input video has rotation metadata. The service doesn't pass through rotation metadata.
    #
    #   Enum, one of: ["DEGREE_0", "DEGREES_90", "DEGREES_180", "DEGREES_270", "AUTO"]
    #
    #   @return [String]
    #
    # @!attribute sample_range
    #   If the sample range metadata in your input video is accurate, or if you don't know about sample range, keep the default value, Follow (FOLLOW), for this setting. When you do, the service automatically detects your input sample range. If your input video has metadata indicating the wrong sample range, specify the accurate sample range here. When you do, MediaConvert ignores any sample range information in the input metadata. Regardless of whether MediaConvert uses the input sample range or the sample range that you specify, MediaConvert uses the sample range for transcoding and also writes it to the output metadata.
    #
    #   Enum, one of: ["FOLLOW", "FULL_RANGE", "LIMITED_RANGE"]
    #
    #   @return [String]
    #
    VideoSelector = ::Struct.new(
      :alpha_behavior,
      :color_space,
      :color_space_usage,
      :embedded_timecode_override,
      :hdr10_metadata,
      :pad_video,
      :pid,
      :program_number,
      :rotate,
      :sample_range,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pid ||= 0
        self.program_number ||= 0
      end
    end

    # Includes enum constants for VideoTimecodeInsertion
    #
    module VideoTimecodeInsertion
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      PIC_TIMING_SEI = "PIC_TIMING_SEI"
    end

    # Required when you set Codec, under AudioDescriptions>CodecSettings, to the value Vorbis.
    #
    # @!attribute channels
    #   Optional. Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2. The default value is 2.
    #
    #   @return [Integer]
    #
    # @!attribute sample_rate
    #   Optional. Specify the audio sample rate in Hz. Valid values are 22050, 32000, 44100, and 48000. The default value is 48000.
    #
    #   @return [Integer]
    #
    # @!attribute vbr_quality
    #   Optional. Specify the variable audio quality of this Vorbis output from -1 (lowest quality, ~45 kbit/s) to 10 (highest quality, ~500 kbit/s). The default value is 4 (~128 kbit/s). Values 5 and 6 are approximately 160 and 192 kbit/s, respectively.
    #
    #   @return [Integer]
    #
    VorbisSettings = ::Struct.new(
      :channels,
      :sample_rate,
      :vbr_quality,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.channels ||= 0
        self.sample_rate ||= 0
        self.vbr_quality ||= 0
      end
    end

    # Includes enum constants for Vp8FramerateControl
    #
    module Vp8FramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for Vp8FramerateConversionAlgorithm
    #
    module Vp8FramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Includes enum constants for Vp8ParControl
    #
    module Vp8ParControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for Vp8QualityTuningLevel
    #
    module Vp8QualityTuningLevel
      # No documentation available.
      #
      MULTI_PASS = "MULTI_PASS"

      # No documentation available.
      #
      MULTI_PASS_HQ = "MULTI_PASS_HQ"
    end

    # Includes enum constants for Vp8RateControlMode
    #
    module Vp8RateControlMode
      # No documentation available.
      #
      VBR = "VBR"
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP8.
    #
    # @!attribute bitrate
    #   Target bitrate in bits/second. For example, enter five megabits per second as 5000000.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute gop_size
    #   GOP Length (keyframe interval) in frames. Must be greater than zero.
    #
    #   @return [Float]
    #
    # @!attribute hrd_buffer_size
    #   Optional. Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #
    #   @return [Integer]
    #
    # @!attribute max_bitrate
    #   Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate.
    #
    #   @return [Integer]
    #
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #
    #   @return [Integer]
    #
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #
    #   @return [Integer]
    #
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
    #
    #   Enum, one of: ["MULTI_PASS", "MULTI_PASS_HQ"]
    #
    #   @return [String]
    #
    # @!attribute rate_control_mode
    #   With the VP8 codec, you can use only the variable bitrate (VBR) rate control mode.
    #
    #   Enum, one of: ["VBR"]
    #
    #   @return [String]
    #
    Vp8Settings = ::Struct.new(
      :bitrate,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_size,
      :hrd_buffer_size,
      :max_bitrate,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :rate_control_mode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.gop_size ||= 0
        self.hrd_buffer_size ||= 0
        self.max_bitrate ||= 0
        self.par_denominator ||= 0
        self.par_numerator ||= 0
      end
    end

    # Includes enum constants for Vp9FramerateControl
    #
    module Vp9FramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for Vp9FramerateConversionAlgorithm
    #
    module Vp9FramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Includes enum constants for Vp9ParControl
    #
    module Vp9ParControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for Vp9QualityTuningLevel
    #
    module Vp9QualityTuningLevel
      # No documentation available.
      #
      MULTI_PASS = "MULTI_PASS"

      # No documentation available.
      #
      MULTI_PASS_HQ = "MULTI_PASS_HQ"
    end

    # Includes enum constants for Vp9RateControlMode
    #
    module Vp9RateControlMode
      # No documentation available.
      #
      VBR = "VBR"
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP9.
    #
    # @!attribute bitrate
    #   Target bitrate in bits/second. For example, enter five megabits per second as 5000000.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute gop_size
    #   GOP Length (keyframe interval) in frames. Must be greater than zero.
    #
    #   @return [Float]
    #
    # @!attribute hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #
    #   @return [Integer]
    #
    # @!attribute max_bitrate
    #   Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate.
    #
    #   @return [Integer]
    #
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio for this output. The default behavior is to use the same pixel aspect ratio as your input video.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #
    #   @return [Integer]
    #
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #
    #   @return [Integer]
    #
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
    #
    #   Enum, one of: ["MULTI_PASS", "MULTI_PASS_HQ"]
    #
    #   @return [String]
    #
    # @!attribute rate_control_mode
    #   With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode.
    #
    #   Enum, one of: ["VBR"]
    #
    #   @return [String]
    #
    Vp9Settings = ::Struct.new(
      :bitrate,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_size,
      :hrd_buffer_size,
      :max_bitrate,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :rate_control_mode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.gop_size ||= 0
        self.hrd_buffer_size ||= 0
        self.max_bitrate ||= 0
        self.par_denominator ||= 0
        self.par_numerator ||= 0
      end
    end

    # Includes enum constants for WatermarkingStrength
    #
    module WatermarkingStrength
      # No documentation available.
      #
      LIGHTEST = "LIGHTEST"

      # No documentation available.
      #
      LIGHTER = "LIGHTER"

      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      STRONGER = "STRONGER"

      # No documentation available.
      #
      STRONGEST = "STRONGEST"
    end

    # Includes enum constants for WavFormat
    #
    module WavFormat
      # No documentation available.
      #
      RIFF = "RIFF"

      # No documentation available.
      #
      RF64 = "RF64"
    end

    # Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV.
    #
    # @!attribute bit_depth
    #   Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
    #
    #   @return [Integer]
    #
    # @!attribute channels
    #   Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64.
    #
    #   @return [Integer]
    #
    # @!attribute format
    #   The service defaults to using RIFF for WAV outputs. If your output audio is likely to exceed 4 GB in file size, or if you otherwise need the extended support of the RF64 format, set your output WAV file format to RF64.
    #
    #   Enum, one of: ["RIFF", "RF64"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #
    #   @return [Integer]
    #
    WavSettings = ::Struct.new(
      :bit_depth,
      :channels,
      :format,
      :sample_rate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bit_depth ||= 0
        self.channels ||= 0
        self.sample_rate ||= 0
      end
    end

    # Includes enum constants for WebvttAccessibilitySubs
    #
    module WebvttAccessibilitySubs
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Settings related to WebVTT captions. WebVTT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to WebVTT.
    #
    # @!attribute accessibility
    #   Set Accessibility subtitles to Enabled if the ISMC or WebVTT captions track is intended to provide accessibility for people who are deaf or hard of hearing. When you enable this feature, MediaConvert adds the following attributes under EXT-X-MEDIA in the HLS or CMAF manifest for this track: CHARACTERISTICS="public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound" and AUTOSELECT="YES". Keep the default value, Disabled, if the captions track is not intended to provide such accessibility. MediaConvert will not add the above attributes.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute style_passthrough
    #   To use the available style, color, and position information from your input captions: Set Style passthrough (stylePassthrough) to Enabled (ENABLED). MediaConvert uses default settings when style and position information is missing from your input captions. To recreate the input captions exactly: Set Style passthrough to Strict (STRICT). MediaConvert automatically applies timing adjustments, including adjustments for frame rate conversion, ad avails, and input clipping. Your input captions format must be WebVTT. To ignore the style and position information from your input captions and use simplified output captions: Set Style passthrough to Disabled (DISABLED), or leave blank.
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "STRICT"]
    #
    #   @return [String]
    #
    WebvttDestinationSettings = ::Struct.new(
      :accessibility,
      :style_passthrough,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings specific to WebVTT sources in HLS alternative rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique subtitle track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the specified properties, the job fails. If there is only one subtitle track in the rendition group, the settings can be left empty and the default subtitle track will be chosen. If your caption source is a sidecar file, use FileSourceSettings instead of WebvttHlsSourceSettings.
    #
    # @!attribute rendition_group_id
    #   Optional. Specify alternative group ID
    #
    #   @return [String]
    #
    # @!attribute rendition_language_code
    #   Optional. Specify ISO 639-2 or ISO 639-3 code in the language property
    #
    #   Enum, one of: ["ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"]
    #
    #   @return [String]
    #
    # @!attribute rendition_name
    #   Optional. Specify media name
    #
    #   @return [String]
    #
    WebvttHlsSourceSettings = ::Struct.new(
      :rendition_group_id,
      :rendition_language_code,
      :rendition_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WebvttStylePassthrough
    #
    module WebvttStylePassthrough
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      STRICT = "STRICT"
    end

    # Includes enum constants for Xavc4kIntraCbgProfileClass
    #
    module Xavc4kIntraCbgProfileClass
      # No documentation available.
      #
      CLASS_100 = "CLASS_100"

      # No documentation available.
      #
      CLASS_300 = "CLASS_300"

      # No documentation available.
      #
      CLASS_480 = "CLASS_480"
    end

    # Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K_INTRA_CBG.
    #
    # @!attribute xavc_class
    #   Specify the XAVC Intra 4k (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #
    #   Enum, one of: ["CLASS_100", "CLASS_300", "CLASS_480"]
    #
    #   @return [String]
    #
    Xavc4kIntraCbgProfileSettings = ::Struct.new(
      :xavc_class,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Xavc4kIntraVbrProfileClass
    #
    module Xavc4kIntraVbrProfileClass
      # No documentation available.
      #
      CLASS_100 = "CLASS_100"

      # No documentation available.
      #
      CLASS_300 = "CLASS_300"

      # No documentation available.
      #
      CLASS_480 = "CLASS_480"
    end

    # Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K_INTRA_VBR.
    #
    # @!attribute xavc_class
    #   Specify the XAVC Intra 4k (VBR) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #
    #   Enum, one of: ["CLASS_100", "CLASS_300", "CLASS_480"]
    #
    #   @return [String]
    #
    Xavc4kIntraVbrProfileSettings = ::Struct.new(
      :xavc_class,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Xavc4kProfileBitrateClass
    #
    module Xavc4kProfileBitrateClass
      # No documentation available.
      #
      BITRATE_CLASS_100 = "BITRATE_CLASS_100"

      # No documentation available.
      #
      BITRATE_CLASS_140 = "BITRATE_CLASS_140"

      # No documentation available.
      #
      BITRATE_CLASS_200 = "BITRATE_CLASS_200"
    end

    # Includes enum constants for Xavc4kProfileCodecProfile
    #
    module Xavc4kProfileCodecProfile
      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      HIGH_422 = "HIGH_422"
    end

    # Includes enum constants for Xavc4kProfileQualityTuningLevel
    #
    module Xavc4kProfileQualityTuningLevel
      # No documentation available.
      #
      SINGLE_PASS = "SINGLE_PASS"

      # No documentation available.
      #
      SINGLE_PASS_HQ = "SINGLE_PASS_HQ"

      # No documentation available.
      #
      MULTI_PASS_HQ = "MULTI_PASS_HQ"
    end

    # Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K.
    #
    # @!attribute bitrate_class
    #   Specify the XAVC 4k (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #
    #   Enum, one of: ["BITRATE_CLASS_100", "BITRATE_CLASS_140", "BITRATE_CLASS_200"]
    #
    #   @return [String]
    #
    # @!attribute codec_profile
    #   Specify the codec profile for this output. Choose High, 8-bit, 4:2:0 (HIGH) or High, 10-bit, 4:2:2 (HIGH_422). These profiles are specified in ITU-T H.264.
    #
    #   Enum, one of: ["HIGH", "HIGH_422"]
    #
    #   @return [String]
    #
    # @!attribute flicker_adaptive_quantization
    #   The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (XavcAdaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set Adaptive quantization (adaptiveQuantization) to a value other than Off (OFF) or Auto (AUTO). Use Adaptive quantization to adjust the degree of smoothing that Flicker adaptive quantization provides.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute gop_b_reference
    #   Specify whether the encoder uses B-frames as reference frames for other pictures in the same GOP. Choose Allow (ENABLED) to allow the encoder to use B-frames as reference frames. Choose Don't allow (DISABLED) to prevent the encoder from using B-frames as reference frames.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute gop_closed_cadence
    #   Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
    #
    #   @return [Integer]
    #
    # @!attribute hrd_buffer_size
    #   Specify the size of the buffer that MediaConvert uses in the HRD buffer model for this output. Specify this value in bits; for example, enter five megabits as 5000000. When you don't set this value, or you set it to zero, MediaConvert calculates the default by doubling the bitrate of this output point.
    #
    #   @return [Integer]
    #
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    #
    #   Enum, one of: ["SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"]
    #
    #   @return [String]
    #
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #
    #   @return [Integer]
    #
    Xavc4kProfileSettings = ::Struct.new(
      :bitrate_class,
      :codec_profile,
      :flicker_adaptive_quantization,
      :gop_b_reference,
      :gop_closed_cadence,
      :hrd_buffer_size,
      :quality_tuning_level,
      :slices,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.gop_closed_cadence ||= 0
        self.hrd_buffer_size ||= 0
        self.slices ||= 0
      end
    end

    # Includes enum constants for XavcAdaptiveQuantization
    #
    module XavcAdaptiveQuantization
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      HIGHER = "HIGHER"

      # No documentation available.
      #
      MAX = "MAX"
    end

    # Includes enum constants for XavcEntropyEncoding
    #
    module XavcEntropyEncoding
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      CABAC = "CABAC"

      # No documentation available.
      #
      CAVLC = "CAVLC"
    end

    # Includes enum constants for XavcFlickerAdaptiveQuantization
    #
    module XavcFlickerAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for XavcFramerateControl
    #
    module XavcFramerateControl
      # No documentation available.
      #
      INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE"

      # No documentation available.
      #
      SPECIFIED = "SPECIFIED"
    end

    # Includes enum constants for XavcFramerateConversionAlgorithm
    #
    module XavcFramerateConversionAlgorithm
      # No documentation available.
      #
      DUPLICATE_DROP = "DUPLICATE_DROP"

      # No documentation available.
      #
      INTERPOLATE = "INTERPOLATE"

      # No documentation available.
      #
      FRAMEFORMER = "FRAMEFORMER"
    end

    # Includes enum constants for XavcGopBReference
    #
    module XavcGopBReference
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for XavcHdIntraCbgProfileClass
    #
    module XavcHdIntraCbgProfileClass
      # No documentation available.
      #
      CLASS_50 = "CLASS_50"

      # No documentation available.
      #
      CLASS_100 = "CLASS_100"

      # No documentation available.
      #
      CLASS_200 = "CLASS_200"
    end

    # Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_HD_INTRA_CBG.
    #
    # @!attribute xavc_class
    #   Specify the XAVC Intra HD (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #
    #   Enum, one of: ["CLASS_50", "CLASS_100", "CLASS_200"]
    #
    #   @return [String]
    #
    XavcHdIntraCbgProfileSettings = ::Struct.new(
      :xavc_class,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for XavcHdProfileBitrateClass
    #
    module XavcHdProfileBitrateClass
      # No documentation available.
      #
      BITRATE_CLASS_25 = "BITRATE_CLASS_25"

      # No documentation available.
      #
      BITRATE_CLASS_35 = "BITRATE_CLASS_35"

      # No documentation available.
      #
      BITRATE_CLASS_50 = "BITRATE_CLASS_50"
    end

    # Includes enum constants for XavcHdProfileQualityTuningLevel
    #
    module XavcHdProfileQualityTuningLevel
      # No documentation available.
      #
      SINGLE_PASS = "SINGLE_PASS"

      # No documentation available.
      #
      SINGLE_PASS_HQ = "SINGLE_PASS_HQ"

      # No documentation available.
      #
      MULTI_PASS_HQ = "MULTI_PASS_HQ"
    end

    # Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_HD.
    #
    # @!attribute bitrate_class
    #   Specify the XAVC HD (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #
    #   Enum, one of: ["BITRATE_CLASS_25", "BITRATE_CLASS_35", "BITRATE_CLASS_50"]
    #
    #   @return [String]
    #
    # @!attribute flicker_adaptive_quantization
    #   The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (XavcAdaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set Adaptive quantization (adaptiveQuantization) to a value other than Off (OFF) or Auto (AUTO). Use Adaptive quantization to adjust the degree of smoothing that Flicker adaptive quantization provides.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute gop_b_reference
    #   Specify whether the encoder uses B-frames as reference frames for other pictures in the same GOP. Choose Allow (ENABLED) to allow the encoder to use B-frames as reference frames. Choose Don't allow (DISABLED) to prevent the encoder from using B-frames as reference frames.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute gop_closed_cadence
    #   Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
    #
    #   @return [Integer]
    #
    # @!attribute hrd_buffer_size
    #   Specify the size of the buffer that MediaConvert uses in the HRD buffer model for this output. Specify this value in bits; for example, enter five megabits as 5000000. When you don't set this value, or you set it to zero, MediaConvert calculates the default by doubling the bitrate of this output point.
    #
    #   @return [Integer]
    #
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #
    #   Enum, one of: ["PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"]
    #
    #   @return [String]
    #
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    #
    #   Enum, one of: ["SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"]
    #
    #   @return [String]
    #
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #
    #   @return [Integer]
    #
    # @!attribute telecine
    #   Ignore this setting unless you set Frame rate (framerateNumerator divided by framerateDenominator) to 29.970. If your input framerate is 23.976, choose Hard (HARD). Otherwise, keep the default value None (NONE). For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-telecine-and-inverse-telecine.html.
    #
    #   Enum, one of: ["NONE", "HARD"]
    #
    #   @return [String]
    #
    XavcHdProfileSettings = ::Struct.new(
      :bitrate_class,
      :flicker_adaptive_quantization,
      :gop_b_reference,
      :gop_closed_cadence,
      :hrd_buffer_size,
      :interlace_mode,
      :quality_tuning_level,
      :slices,
      :telecine,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.gop_closed_cadence ||= 0
        self.hrd_buffer_size ||= 0
        self.slices ||= 0
      end
    end

    # Includes enum constants for XavcHdProfileTelecine
    #
    module XavcHdProfileTelecine
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      HARD = "HARD"
    end

    # Includes enum constants for XavcInterlaceMode
    #
    module XavcInterlaceMode
      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"

      # No documentation available.
      #
      TOP_FIELD = "TOP_FIELD"

      # No documentation available.
      #
      BOTTOM_FIELD = "BOTTOM_FIELD"

      # No documentation available.
      #
      FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD"

      # No documentation available.
      #
      FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD"
    end

    # Includes enum constants for XavcProfile
    #
    module XavcProfile
      # No documentation available.
      #
      XAVC_HD_INTRA_CBG = "XAVC_HD_INTRA_CBG"

      # No documentation available.
      #
      XAVC_4K_INTRA_CBG = "XAVC_4K_INTRA_CBG"

      # No documentation available.
      #
      XAVC_4K_INTRA_VBR = "XAVC_4K_INTRA_VBR"

      # No documentation available.
      #
      XAVC_HD = "XAVC_HD"

      # No documentation available.
      #
      XAVC_4K = "XAVC_4K"
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value XAVC.
    #
    # @!attribute adaptive_quantization
    #   Keep the default value, Auto (AUTO), for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set Adaptive quantization (adaptiveQuantization) to a value other than Auto (AUTO). Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization to Off (OFF). Related settings: The value that you choose here applies to the following settings: Flicker adaptive quantization (flickerAdaptiveQuantization), Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization).
    #
    #   Enum, one of: ["OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"]
    #
    #   @return [String]
    #
    # @!attribute entropy_encoding
    #   Optional. Choose a specific entropy encoding mode only when you want to override XAVC recommendations. If you choose the value auto, MediaConvert uses the mode that the XAVC file format specifies given this output's operating point.
    #
    #   Enum, one of: ["AUTO", "CABAC", "CAVLC"]
    #
    #   @return [String]
    #
    # @!attribute framerate_control
    #   If you are using the console, use the Frame rate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list. The framerates shown in the dropdown list are decimal approximations of fractions. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate that you specify in the settings FramerateNumerator and FramerateDenominator.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
    #
    #   Enum, one of: ["DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Frame rate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #
    #   @return [Integer]
    #
    # @!attribute profile
    #   Specify the XAVC profile for this output. For more information, see the Sony documentation at https://www.xavc-info.org/. Note that MediaConvert doesn't support the interlaced video XAVC operating points for XAVC_HD_INTRA_CBG. To create an interlaced XAVC output, choose the profile XAVC_HD.
    #
    #   Enum, one of: ["XAVC_HD_INTRA_CBG", "XAVC_4K_INTRA_CBG", "XAVC_4K_INTRA_VBR", "XAVC_HD", "XAVC_4K"]
    #
    #   @return [String]
    #
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Frame rate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute softness
    #   Ignore this setting unless your downstream workflow requires that you specify it explicitly. Otherwise, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, for flat quantization. Choose the value 1 or 16 to use the default JVT softening quantization matricies from the H.264 specification. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
    #
    #   @return [Integer]
    #
    # @!attribute spatial_adaptive_quantization
    #   The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (adaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute temporal_adaptive_quantization
    #   The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (adaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal adaptive quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization).
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute xavc4k_intra_cbg_profile_settings
    #   Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K_INTRA_CBG.
    #
    #   @return [Xavc4kIntraCbgProfileSettings]
    #
    # @!attribute xavc4k_intra_vbr_profile_settings
    #   Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K_INTRA_VBR.
    #
    #   @return [Xavc4kIntraVbrProfileSettings]
    #
    # @!attribute xavc4k_profile_settings
    #   Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K.
    #
    #   @return [Xavc4kProfileSettings]
    #
    # @!attribute xavc_hd_intra_cbg_profile_settings
    #   Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_HD_INTRA_CBG.
    #
    #   @return [XavcHdIntraCbgProfileSettings]
    #
    # @!attribute xavc_hd_profile_settings
    #   Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_HD.
    #
    #   @return [XavcHdProfileSettings]
    #
    XavcSettings = ::Struct.new(
      :adaptive_quantization,
      :entropy_encoding,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :profile,
      :slow_pal,
      :softness,
      :spatial_adaptive_quantization,
      :temporal_adaptive_quantization,
      :xavc4k_intra_cbg_profile_settings,
      :xavc4k_intra_vbr_profile_settings,
      :xavc4k_profile_settings,
      :xavc_hd_intra_cbg_profile_settings,
      :xavc_hd_profile_settings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.softness ||= 0
      end
    end

    # Includes enum constants for XavcSlowPal
    #
    module XavcSlowPal
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for XavcSpatialAdaptiveQuantization
    #
    module XavcSpatialAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for XavcTemporalAdaptiveQuantization
    #
    module XavcTemporalAdaptiveQuantization
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

  end
end
