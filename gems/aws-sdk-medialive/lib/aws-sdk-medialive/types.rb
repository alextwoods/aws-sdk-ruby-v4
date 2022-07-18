# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaLive
  module Types

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

    # Includes enum constants for AacInputType
    #
    module AacInputType
      # No documentation available.
      #
      BROADCASTER_MIXED_AD = "BROADCASTER_MIXED_AD"

      # No documentation available.
      #
      NORMAL = "NORMAL"
    end

    # Includes enum constants for AacProfile
    #
    module AacProfile
      # No documentation available.
      #
      HEV1 = "HEV1"

      # No documentation available.
      #
      HEV2 = "HEV2"

      # No documentation available.
      #
      LC = "LC"
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

    # Aac Settings
    #
    # @!attribute bitrate
    #   Average bitrate in bits/second. Valid values depend on rate control mode and profile.
    #
    #   @return [Float]
    #
    # @!attribute coding_mode
    #   Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. The adReceiverMix setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
    #
    #   Enum, one of: ["AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"]
    #
    #   @return [String]
    #
    # @!attribute input_type
    #   Set to "broadcasterMixedAd" when input contains pre-mixed main audio + AD (narration) as a stereo pair.  The Audio Type field (audioType) will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. The values in audioTypeControl and audioType (in AudioDescription) are ignored when set to broadcasterMixedAd.
    #
    #   Leave set to "normal" when input does not contain pre-mixed audio + AD.
    #
    #   Enum, one of: ["BROADCASTER_MIXED_AD", "NORMAL"]
    #
    #   @return [String]
    #
    # @!attribute profile
    #   AAC Profile.
    #
    #   Enum, one of: ["HEV1", "HEV2", "LC"]
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
    #   Sets LATM / LOAS AAC output for raw containers.
    #
    #   Enum, one of: ["LATM_LOAS", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   Sample rate in Hz. Valid values depend on rate control mode and profile.
    #
    #   @return [Float]
    #
    # @!attribute spec
    #   Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
    #
    #   Enum, one of: ["MPEG2", "MPEG4"]
    #
    #   @return [String]
    #
    # @!attribute vbr_quality
    #   VBR Quality Level - Only used if rateControlMode is VBR.
    #
    #   Enum, one of: ["HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"]
    #
    #   @return [String]
    #
    AacSettings = ::Struct.new(
      :bitrate,
      :coding_mode,
      :input_type,
      :profile,
      :rate_control_mode,
      :raw_format,
      :sample_rate,
      :spec,
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

    # Includes enum constants for AacSpec
    #
    module AacSpec
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
      HIGH = "HIGH"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM_HIGH = "MEDIUM_HIGH"

      # No documentation available.
      #
      MEDIUM_LOW = "MEDIUM_LOW"
    end

    # Includes enum constants for Ac3BitstreamMode
    #
    module Ac3BitstreamMode
      # No documentation available.
      #
      COMMENTARY = "COMMENTARY"

      # No documentation available.
      #
      COMPLETE_MAIN = "COMPLETE_MAIN"

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

    # Includes enum constants for Ac3DrcProfile
    #
    module Ac3DrcProfile
      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for Ac3LfeFilter
    #
    module Ac3LfeFilter
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
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

    # Ac3 Settings
    #
    # @!attribute bitrate
    #   Average bitrate in bits/second. Valid bitrates depend on the coding mode.
    #
    #   @return [Float]
    #
    # @!attribute bitstream_mode
    #   Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.
    #
    #   Enum, one of: ["COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"]
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
    #   Sets the dialnorm for the output. If excluded and input audio is Dolby Digital, dialnorm will be passed through.
    #
    #   @return [Integer]
    #
    # @!attribute drc_profile
    #   If set to filmStandard, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
    #
    #   Enum, one of: ["FILM_STANDARD", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute lfe_filter
    #   When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid in codingMode32Lfe mode.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute metadata_control
    #   When set to "followInput", encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    #
    #   Enum, one of: ["FOLLOW_INPUT", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    Ac3Settings = ::Struct.new(
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dialnorm,
      :drc_profile,
      :lfe_filter,
      :metadata_control,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.dialnorm ||= 0
      end
    end

    # Includes enum constants for AcceptHeader
    #
    module AcceptHeader
      # No documentation available.
      #
      image_jpeg = "image/jpeg"
    end

    # Placeholder documentation for AcceptInputDeviceTransferRequest
    #
    # @!attribute input_device_id
    #   The unique ID of the input device to accept. For example, hd-123456789abcdef.
    #
    #   @return [String]
    #
    AcceptInputDeviceTransferInput = ::Struct.new(
      :input_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for AcceptInputDeviceTransferResponse
    #
    AcceptInputDeviceTransferOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AfdSignaling
    #
    module AfdSignaling
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      FIXED = "FIXED"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Ancillary Source Settings
    #
    # @!attribute source_ancillary_channel_number
    #   Specifies the number (1 to 4) of the captions channel you want to extract from the ancillary captions. If you plan to convert the ancillary captions to another format, complete this field. If you plan to choose Embedded as the captions destination in the output (to pass through all the channels in the ancillary captions), leave this field blank because MediaLive ignores the field.
    #
    #   @return [Integer]
    #
    AncillarySourceSettings = ::Struct.new(
      :source_ancillary_channel_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.source_ancillary_channel_number ||= 0
      end
    end

    # Archive Cdn Settings
    #
    # @!attribute archive_s3_settings
    #   Archive S3 Settings
    #
    #   @return [ArchiveS3Settings]
    #
    ArchiveCdnSettings = ::Struct.new(
      :archive_s3_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Archive Container Settings
    #
    # @!attribute m2ts_settings
    #   M2ts Settings
    #
    #   @return [M2tsSettings]
    #
    # @!attribute raw_settings
    #   Raw Settings
    #
    #   @return [RawSettings]
    #
    ArchiveContainerSettings = ::Struct.new(
      :m2ts_settings,
      :raw_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Archive Group Settings
    #
    # @!attribute archive_cdn_settings
    #   Parameters that control interactions with the CDN.
    #
    #   @return [ArchiveCdnSettings]
    #
    # @!attribute destination
    #   A directory and base filename where archive files should be written.
    #
    #   @return [OutputLocationRef]
    #
    # @!attribute rollover_interval
    #   Number of seconds to write to archive file before closing and starting a new one.
    #
    #   @return [Integer]
    #
    ArchiveGroupSettings = ::Struct.new(
      :archive_cdn_settings,
      :destination,
      :rollover_interval,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rollover_interval ||= 0
      end
    end

    # Archive Output Settings
    #
    # @!attribute container_settings
    #   Settings specific to the container type of the file.
    #
    #   @return [ArchiveContainerSettings]
    #
    # @!attribute extension
    #   Output file extension. If excluded, this will be auto-selected from the container type.
    #
    #   @return [String]
    #
    # @!attribute name_modifier
    #   String concatenated to the end of the destination filename.  Required for multiple outputs of the same type.
    #
    #   @return [String]
    #
    ArchiveOutputSettings = ::Struct.new(
      :container_settings,
      :extension,
      :name_modifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Archive S3 Settings
    #
    # @!attribute canned_acl
    #   Specify the canned ACL to apply to each S3 request. Defaults to none.
    #
    #   Enum, one of: ["AUTHENTICATED_READ", "BUCKET_OWNER_FULL_CONTROL", "BUCKET_OWNER_READ", "PUBLIC_READ"]
    #
    #   @return [String]
    #
    ArchiveS3Settings = ::Struct.new(
      :canned_acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Arib Destination Settings
    #
    AribDestinationSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Arib Source Settings
    #
    AribSourceSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Audio Channel Mapping
    #
    # @!attribute input_channel_levels
    #   Indices and gain values for each input channel that should be remixed into this output channel.
    #
    #   @return [Array<InputChannelLevel>]
    #
    # @!attribute output_channel
    #   The index of the output channel being produced.
    #
    #   @return [Integer]
    #
    AudioChannelMapping = ::Struct.new(
      :input_channel_levels,
      :output_channel,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.output_channel ||= 0
      end
    end

    # Audio Codec Settings
    #
    # @!attribute aac_settings
    #   Aac Settings
    #
    #   @return [AacSettings]
    #
    # @!attribute ac3_settings
    #   Ac3 Settings
    #
    #   @return [Ac3Settings]
    #
    # @!attribute eac3_settings
    #   Eac3 Settings
    #
    #   @return [Eac3Settings]
    #
    # @!attribute mp2_settings
    #   Mp2 Settings
    #
    #   @return [Mp2Settings]
    #
    # @!attribute pass_through_settings
    #   Pass Through Settings
    #
    #   @return [PassThroughSettings]
    #
    # @!attribute wav_settings
    #   Wav Settings
    #
    #   @return [WavSettings]
    #
    AudioCodecSettings = ::Struct.new(
      :aac_settings,
      :ac3_settings,
      :eac3_settings,
      :mp2_settings,
      :pass_through_settings,
      :wav_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Audio Description
    #
    # @!attribute audio_normalization_settings
    #   Advanced audio normalization settings.
    #
    #   @return [AudioNormalizationSettings]
    #
    # @!attribute audio_selector_name
    #   The name of the AudioSelector used as the source for this AudioDescription.
    #
    #   @return [String]
    #
    # @!attribute audio_type
    #   Applies only if audioTypeControl is useConfigured. The values for audioType are defined in ISO-IEC 13818-1.
    #
    #   Enum, one of: ["CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"]
    #
    #   @return [String]
    #
    # @!attribute audio_type_control
    #   Determines how audio type is determined.
    #     followInput: If the input contains an ISO 639 audioType, then that value is passed through to the output. If the input contains no ISO 639 audioType, the value in Audio Type is included in the output.
    #     useConfigured: The value in Audio Type is included in the output.
    #   Note that this field and audioType are both ignored if inputType is broadcasterMixedAd.
    #
    #   Enum, one of: ["FOLLOW_INPUT", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute audio_watermarking_settings
    #   Settings to configure one or more solutions that insert audio watermarks in the audio encode
    #
    #   @return [AudioWatermarkSettings]
    #
    # @!attribute codec_settings
    #   Audio codec settings.
    #
    #   @return [AudioCodecSettings]
    #
    # @!attribute language_code
    #   RFC 5646 language code representing the language of the audio output track. Only used if languageControlMode is useConfigured, or there is no ISO 639 language code specified in the input.
    #
    #   @return [String]
    #
    # @!attribute language_code_control
    #   Choosing followInput will cause the ISO 639 language code of the output to follow the ISO 639 language code of the input. The languageCode will be used when useConfigured is set, or when followInput is selected but there is no ISO 639 language code specified by the input.
    #
    #   Enum, one of: ["FOLLOW_INPUT", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of this AudioDescription. Outputs will use this name to uniquely identify this AudioDescription.  Description names should be unique within this Live Event.
    #
    #   @return [String]
    #
    # @!attribute remix_settings
    #   Settings that control how input audio channels are remixed into the output audio channels.
    #
    #   @return [RemixSettings]
    #
    # @!attribute stream_name
    #   Used for MS Smooth and Apple HLS outputs. Indicates the name displayed by the player (eg. English, or Director Commentary).
    #
    #   @return [String]
    #
    AudioDescription = ::Struct.new(
      :audio_normalization_settings,
      :audio_selector_name,
      :audio_type,
      :audio_type_control,
      :audio_watermarking_settings,
      :codec_settings,
      :language_code,
      :language_code_control,
      :name,
      :remix_settings,
      :stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioDescriptionAudioTypeControl
    #
    module AudioDescriptionAudioTypeControl
      # No documentation available.
      #
      FOLLOW_INPUT = "FOLLOW_INPUT"

      # No documentation available.
      #
      USE_CONFIGURED = "USE_CONFIGURED"
    end

    # Includes enum constants for AudioDescriptionLanguageCodeControl
    #
    module AudioDescriptionLanguageCodeControl
      # No documentation available.
      #
      FOLLOW_INPUT = "FOLLOW_INPUT"

      # No documentation available.
      #
      USE_CONFIGURED = "USE_CONFIGURED"
    end

    # Audio Hls Rendition Selection
    #
    # @!attribute group_id
    #   Specifies the GROUP-ID in the  EXT-X-MEDIA tag of the target HLS audio rendition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   Specifies the NAME in the  EXT-X-MEDIA tag of the target HLS audio rendition.
    #
    #   @return [String]
    #
    AudioHlsRenditionSelection = ::Struct.new(
      :group_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Audio Language Selection
    #
    # @!attribute language_code
    #   Selects a specific three-letter language code from within an audio source.
    #
    #   @return [String]
    #
    # @!attribute language_selection_policy
    #   When set to "strict", the transport stream demux strictly identifies audio streams by their language descriptor. If a PMT update occurs such that an audio stream matching the initially selected language is no longer present then mute will be encoded until the language returns. If "loose", then on a PMT update the demux will choose another audio stream in the program with the same stream type if it can't find one with the same language.
    #
    #   Enum, one of: ["LOOSE", "STRICT"]
    #
    #   @return [String]
    #
    AudioLanguageSelection = ::Struct.new(
      :language_code,
      :language_selection_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioLanguageSelectionPolicy
    #
    module AudioLanguageSelectionPolicy
      # No documentation available.
      #
      LOOSE = "LOOSE"

      # No documentation available.
      #
      STRICT = "STRICT"
    end

    # Includes enum constants for AudioNormalizationAlgorithm
    #
    module AudioNormalizationAlgorithm
      # No documentation available.
      #
      ITU_1770_1 = "ITU_1770_1"

      # No documentation available.
      #
      ITU_1770_2 = "ITU_1770_2"
    end

    # Includes enum constants for AudioNormalizationAlgorithmControl
    #
    module AudioNormalizationAlgorithmControl
      # No documentation available.
      #
      CORRECT_AUDIO = "CORRECT_AUDIO"
    end

    # Audio Normalization Settings
    #
    # @!attribute algorithm
    #   Audio normalization algorithm to use. itu17701 conforms to the CALM Act specification, itu17702 conforms to the EBU R-128 specification.
    #
    #   Enum, one of: ["ITU_1770_1", "ITU_1770_2"]
    #
    #   @return [String]
    #
    # @!attribute algorithm_control
    #   When set to correctAudio the output audio is corrected using the chosen algorithm. If set to measureOnly, the audio will be measured but not adjusted.
    #
    #   Enum, one of: ["CORRECT_AUDIO"]
    #
    #   @return [String]
    #
    # @!attribute target_lkfs
    #   Target LKFS(loudness) to adjust volume to. If no value is entered, a default value will be used according to the chosen algorithm.  The CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128 specification (1770-2) recommends a target of -23 LKFS.
    #
    #   @return [Float]
    #
    AudioNormalizationSettings = ::Struct.new(
      :algorithm,
      :algorithm_control,
      :target_lkfs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.target_lkfs ||= 0
      end
    end

    # Includes enum constants for AudioOnlyHlsSegmentType
    #
    module AudioOnlyHlsSegmentType
      # No documentation available.
      #
      AAC = "AAC"

      # No documentation available.
      #
      FMP4 = "FMP4"
    end

    # Audio Only Hls Settings
    #
    # @!attribute audio_group_id
    #   Specifies the group to which the audio Rendition belongs.
    #
    #   @return [String]
    #
    # @!attribute audio_only_image
    #   Optional. Specifies the .jpg or .png image to use as the cover art for an audio-only output. We recommend a low bit-size file because the image increases the output audio bandwidth.
    #
    #   The image is attached to the audio as an ID3 tag, frame type APIC, picture type 0x10, as per the "ID3 tag version 2.4.0 - Native Frames" standard.
    #
    #   @return [InputLocation]
    #
    # @!attribute audio_track_type
    #   Four types of audio-only tracks are supported:
    #
    #   Audio-Only Variant Stream
    #   The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest.
    #
    #   Alternate Audio, Auto Select, Default
    #   Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES
    #
    #   Alternate Audio, Auto Select, Not Default
    #   Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES
    #
    #   Alternate Audio, not Auto Select
    #   Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
    #
    #   Enum, one of: ["ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"]
    #
    #   @return [String]
    #
    # @!attribute segment_type
    #   Specifies the segment type.
    #
    #   Enum, one of: ["AAC", "FMP4"]
    #
    #   @return [String]
    #
    AudioOnlyHlsSettings = ::Struct.new(
      :audio_group_id,
      :audio_only_image,
      :audio_track_type,
      :segment_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioOnlyHlsTrackType
    #
    module AudioOnlyHlsTrackType
      # No documentation available.
      #
      ALTERNATE_AUDIO_AUTO_SELECT = "ALTERNATE_AUDIO_AUTO_SELECT"

      # No documentation available.
      #
      ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT = "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT"

      # No documentation available.
      #
      ALTERNATE_AUDIO_NOT_AUTO_SELECT = "ALTERNATE_AUDIO_NOT_AUTO_SELECT"

      # No documentation available.
      #
      AUDIO_ONLY_VARIANT_STREAM = "AUDIO_ONLY_VARIANT_STREAM"
    end

    # Audio Pid Selection
    #
    # @!attribute pid
    #   Selects a specific PID from within a source.
    #
    #   @return [Integer]
    #
    AudioPidSelection = ::Struct.new(
      :pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pid ||= 0
      end
    end

    # Audio Selector
    #
    # @!attribute name
    #   The name of this AudioSelector. AudioDescriptions will use this name to uniquely identify this Selector.  Selector names should be unique per input.
    #
    #   @return [String]
    #
    # @!attribute selector_settings
    #   The audio selector settings.
    #
    #   @return [AudioSelectorSettings]
    #
    AudioSelector = ::Struct.new(
      :name,
      :selector_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Audio Selector Settings
    #
    # @!attribute audio_hls_rendition_selection
    #   Audio Hls Rendition Selection
    #
    #   @return [AudioHlsRenditionSelection]
    #
    # @!attribute audio_language_selection
    #   Audio Language Selection
    #
    #   @return [AudioLanguageSelection]
    #
    # @!attribute audio_pid_selection
    #   Audio Pid Selection
    #
    #   @return [AudioPidSelection]
    #
    # @!attribute audio_track_selection
    #   Audio Track Selection
    #
    #   @return [AudioTrackSelection]
    #
    AudioSelectorSettings = ::Struct.new(
      :audio_hls_rendition_selection,
      :audio_language_selection,
      :audio_pid_selection,
      :audio_track_selection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for AudioSilenceFailoverSettings
    #
    # @!attribute audio_selector_name
    #   The name of the audio selector in the input that MediaLive should monitor to detect silence. Select your most important rendition. If you didn't create an audio selector in this input, leave blank.
    #
    #   @return [String]
    #
    # @!attribute audio_silence_threshold_msec
    #   The amount of time (in milliseconds) that the active input must be silent before automatic input failover occurs. Silence is defined as audio loss or audio quieter than -50 dBFS.
    #
    #   @return [Integer]
    #
    AudioSilenceFailoverSettings = ::Struct.new(
      :audio_selector_name,
      :audio_silence_threshold_msec,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.audio_silence_threshold_msec ||= 0
      end
    end

    # Audio Track
    #
    # @!attribute track
    #   1-based integer value that maps to a specific audio track
    #
    #   @return [Integer]
    #
    AudioTrack = ::Struct.new(
      :track,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.track ||= 0
      end
    end

    # Audio Track Selection
    #
    # @!attribute tracks
    #   Selects one or more unique audio tracks from within a source.
    #
    #   @return [Array<AudioTrack>]
    #
    AudioTrackSelection = ::Struct.new(
      :tracks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioType
    #
    module AudioType
      # No documentation available.
      #
      CLEAN_EFFECTS = "CLEAN_EFFECTS"

      # No documentation available.
      #
      HEARING_IMPAIRED = "HEARING_IMPAIRED"

      # No documentation available.
      #
      UNDEFINED = "UNDEFINED"

      # No documentation available.
      #
      VISUAL_IMPAIRED_COMMENTARY = "VISUAL_IMPAIRED_COMMENTARY"
    end

    # Audio Watermark Settings
    #
    # @!attribute nielsen_watermarks_settings
    #   Settings to configure Nielsen Watermarks in the audio encode
    #
    #   @return [NielsenWatermarksSettings]
    #
    AudioWatermarkSettings = ::Struct.new(
      :nielsen_watermarks_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthenticationScheme
    #
    module AuthenticationScheme
      # No documentation available.
      #
      AKAMAI = "AKAMAI"

      # No documentation available.
      #
      COMMON = "COMMON"
    end

    # The settings for Automatic Input Failover.
    #
    # @!attribute error_clear_time_msec
    #   This clear time defines the requirement a recovered input must meet to be considered healthy. The input must have no failover conditions for this length of time. Enter a time in milliseconds. This value is particularly important if the input_preference for the failover pair is set to PRIMARY_INPUT_PREFERRED, because after this time, MediaLive will switch back to the primary input.
    #
    #   @return [Integer]
    #
    # @!attribute failover_conditions
    #   A list of failover conditions. If any of these conditions occur, MediaLive will perform a failover to the other input.
    #
    #   @return [Array<FailoverCondition>]
    #
    # @!attribute input_preference
    #   Input preference when deciding which input to make active when a previously failed input has recovered.
    #
    #   Enum, one of: ["EQUAL_INPUT_PREFERENCE", "PRIMARY_INPUT_PREFERRED"]
    #
    #   @return [String]
    #
    # @!attribute secondary_input_id
    #   The input ID of the secondary input in the automatic input failover pair.
    #
    #   @return [String]
    #
    AutomaticInputFailoverSettings = ::Struct.new(
      :error_clear_time_msec,
      :failover_conditions,
      :input_preference,
      :secondary_input_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.error_clear_time_msec ||= 0
      end
    end

    # Avail Blanking
    #
    # @!attribute avail_blanking_image
    #   Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported.
    #
    #   @return [InputLocation]
    #
    # @!attribute state
    #   When set to enabled, causes video, audio and captions to be blanked when insertion metadata is added.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    AvailBlanking = ::Struct.new(
      :avail_blanking_image,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AvailBlankingState
    #
    module AvailBlankingState
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Avail Configuration
    #
    # @!attribute avail_settings
    #   Ad avail settings.
    #
    #   @return [AvailSettings]
    #
    AvailConfiguration = ::Struct.new(
      :avail_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Avail Settings
    #
    # @!attribute scte35_splice_insert
    #   Scte35 Splice Insert
    #
    #   @return [Scte35SpliceInsert]
    #
    # @!attribute scte35_time_signal_apos
    #   Scte35 Time Signal Apos
    #
    #   @return [Scte35TimeSignalApos]
    #
    AvailSettings = ::Struct.new(
      :scte35_splice_insert,
      :scte35_time_signal_apos,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for BadGatewayException
    #
    # @!attribute message
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    BadGatewayException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for BadRequestException
    #
    # @!attribute message
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to delete resources
    #
    # @!attribute channel_ids
    #   List of channel IDs
    #
    #   @return [Array<String>]
    #
    # @!attribute input_ids
    #   List of input IDs
    #
    #   @return [Array<String>]
    #
    # @!attribute input_security_group_ids
    #   List of input security group IDs
    #
    #   @return [Array<String>]
    #
    # @!attribute multiplex_ids
    #   List of multiplex IDs
    #
    #   @return [Array<String>]
    #
    BatchDeleteInput = ::Struct.new(
      :channel_ids,
      :input_ids,
      :input_security_group_ids,
      :multiplex_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for BatchDeleteResponse
    #
    # @!attribute failed
    #   List of failed operations
    #
    #   @return [Array<BatchFailedResultModel>]
    #
    # @!attribute successful
    #   List of successful operations
    #
    #   @return [Array<BatchSuccessfulResultModel>]
    #
    BatchDeleteOutput = ::Struct.new(
      :failed,
      :successful,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Details from a failed operation
    #
    # @!attribute arn
    #   ARN of the resource
    #
    #   @return [String]
    #
    # @!attribute code
    #   Error code for the failed operation
    #
    #   @return [String]
    #
    # @!attribute id
    #   ID of the resource
    #
    #   @return [String]
    #
    # @!attribute message
    #   Error message for the failed operation
    #
    #   @return [String]
    #
    BatchFailedResultModel = ::Struct.new(
      :arn,
      :code,
      :id,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A list of schedule actions to create (in a request) or that have been created (in a response).
    #
    # @!attribute schedule_actions
    #   A list of schedule actions to create.
    #
    #   @return [Array<ScheduleAction>]
    #
    BatchScheduleActionCreateRequest = ::Struct.new(
      :schedule_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # List of actions that have been created in the schedule.
    #
    # @!attribute schedule_actions
    #   List of actions that have been created in the schedule.
    #
    #   @return [Array<ScheduleAction>]
    #
    BatchScheduleActionCreateResult = ::Struct.new(
      :schedule_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A list of schedule actions to delete.
    #
    # @!attribute action_names
    #   A list of schedule actions to delete.
    #
    #   @return [Array<String>]
    #
    BatchScheduleActionDeleteRequest = ::Struct.new(
      :action_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # List of actions that have been deleted from the schedule.
    #
    # @!attribute schedule_actions
    #   List of actions that have been deleted from the schedule.
    #
    #   @return [Array<ScheduleAction>]
    #
    BatchScheduleActionDeleteResult = ::Struct.new(
      :schedule_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to start resources
    #
    # @!attribute channel_ids
    #   List of channel IDs
    #
    #   @return [Array<String>]
    #
    # @!attribute multiplex_ids
    #   List of multiplex IDs
    #
    #   @return [Array<String>]
    #
    BatchStartInput = ::Struct.new(
      :channel_ids,
      :multiplex_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for BatchStartResponse
    #
    # @!attribute failed
    #   List of failed operations
    #
    #   @return [Array<BatchFailedResultModel>]
    #
    # @!attribute successful
    #   List of successful operations
    #
    #   @return [Array<BatchSuccessfulResultModel>]
    #
    BatchStartOutput = ::Struct.new(
      :failed,
      :successful,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to stop resources
    #
    # @!attribute channel_ids
    #   List of channel IDs
    #
    #   @return [Array<String>]
    #
    # @!attribute multiplex_ids
    #   List of multiplex IDs
    #
    #   @return [Array<String>]
    #
    BatchStopInput = ::Struct.new(
      :channel_ids,
      :multiplex_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for BatchStopResponse
    #
    # @!attribute failed
    #   List of failed operations
    #
    #   @return [Array<BatchFailedResultModel>]
    #
    # @!attribute successful
    #   List of successful operations
    #
    #   @return [Array<BatchSuccessfulResultModel>]
    #
    BatchStopOutput = ::Struct.new(
      :failed,
      :successful,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Details from a successful operation
    #
    # @!attribute arn
    #   ARN of the resource
    #
    #   @return [String]
    #
    # @!attribute id
    #   ID of the resource
    #
    #   @return [String]
    #
    # @!attribute state
    #   Current state of the resource
    #
    #   @return [String]
    #
    BatchSuccessfulResultModel = ::Struct.new(
      :arn,
      :id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # List of actions to create and list of actions to delete.
    #
    # @!attribute channel_id
    #   Id of the channel whose schedule is being updated.
    #
    #   @return [String]
    #
    # @!attribute creates
    #   Schedule actions to create in the schedule.
    #
    #   @return [BatchScheduleActionCreateRequest]
    #
    # @!attribute deletes
    #   Schedule actions to delete from the schedule.
    #
    #   @return [BatchScheduleActionDeleteRequest]
    #
    BatchUpdateScheduleInput = ::Struct.new(
      :channel_id,
      :creates,
      :deletes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for BatchUpdateScheduleResponse
    #
    # @!attribute creates
    #   Schedule actions created in the schedule.
    #
    #   @return [BatchScheduleActionCreateResult]
    #
    # @!attribute deletes
    #   Schedule actions deleted from the schedule.
    #
    #   @return [BatchScheduleActionDeleteResult]
    #
    BatchUpdateScheduleOutput = ::Struct.new(
      :creates,
      :deletes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Blackout Slate
    #
    # @!attribute blackout_slate_image
    #   Blackout slate image to be used. Leave empty for solid black. Only bmp and png images are supported.
    #
    #   @return [InputLocation]
    #
    # @!attribute network_end_blackout
    #   Setting to enabled causes the encoder to blackout the video, audio, and captions, and raise the "Network Blackout Image" slate when an SCTE104/35 Network End Segmentation Descriptor is encountered. The blackout will be lifted when the Network Start Segmentation Descriptor is encountered. The Network End and Network Start descriptors must contain a network ID that matches the value entered in "Network ID".
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute network_end_blackout_image
    #   Path to local file to use as Network End Blackout image. Image will be scaled to fill the entire output raster.
    #
    #   @return [InputLocation]
    #
    # @!attribute network_id
    #   Provides Network ID that matches EIDR ID format (e.g., "10.XXXX/XXXX-XXXX-XXXX-XXXX-XXXX-C").
    #
    #   @return [String]
    #
    # @!attribute state
    #   When set to enabled, causes video, audio and captions to be blanked when indicated by program metadata.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    BlackoutSlate = ::Struct.new(
      :blackout_slate_image,
      :network_end_blackout,
      :network_end_blackout_image,
      :network_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BlackoutSlateNetworkEndBlackout
    #
    module BlackoutSlateNetworkEndBlackout
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for BlackoutSlateState
    #
    module BlackoutSlateState
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for BurnInAlignment
    #
    module BurnInAlignment
      # No documentation available.
      #
      CENTERED = "CENTERED"

      # No documentation available.
      #
      LEFT = "LEFT"

      # No documentation available.
      #
      SMART = "SMART"
    end

    # Includes enum constants for BurnInBackgroundColor
    #
    module BurnInBackgroundColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      WHITE = "WHITE"
    end

    # Burn In Destination Settings
    #
    # @!attribute alignment
    #   If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["CENTERED", "LEFT", "SMART"]
    #
    #   @return [String]
    #
    # @!attribute background_color
    #   Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["BLACK", "NONE", "WHITE"]
    #
    #   @return [String]
    #
    # @!attribute background_opacity
    #   Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute font
    #   External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions,  embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [InputLocation]
    #
    # @!attribute font_color
    #   Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"]
    #
    #   @return [String]
    #
    # @!attribute font_opacity
    #   Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute font_resolution
    #   Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute font_size
    #   When set to 'auto' fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [String]
    #
    # @!attribute outline_color
    #   Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"]
    #
    #   @return [String]
    #
    # @!attribute outline_size
    #   Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_color
    #   Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["BLACK", "NONE", "WHITE"]
    #
    #   @return [String]
    #
    # @!attribute shadow_opacity
    #   Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_x_offset
    #   Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_y_offset
    #   Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute teletext_grid_control
    #   Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
    #
    #   Enum, one of: ["FIXED", "SCALED"]
    #
    #   @return [String]
    #
    # @!attribute x_position
    #   Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute y_position
    #   Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    BurnInDestinationSettings = ::Struct.new(
      :alignment,
      :background_color,
      :background_opacity,
      :font,
      :font_color,
      :font_opacity,
      :font_resolution,
      :font_size,
      :outline_color,
      :outline_size,
      :shadow_color,
      :shadow_opacity,
      :shadow_x_offset,
      :shadow_y_offset,
      :teletext_grid_control,
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
        self.outline_size ||= 0
        self.shadow_opacity ||= 0
        self.shadow_x_offset ||= 0
        self.shadow_y_offset ||= 0
        self.x_position ||= 0
        self.y_position ||= 0
      end
    end

    # Includes enum constants for BurnInFontColor
    #
    module BurnInFontColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      BLUE = "BLUE"

      # No documentation available.
      #
      GREEN = "GREEN"

      # No documentation available.
      #
      RED = "RED"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      YELLOW = "YELLOW"
    end

    # Includes enum constants for BurnInOutlineColor
    #
    module BurnInOutlineColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      BLUE = "BLUE"

      # No documentation available.
      #
      GREEN = "GREEN"

      # No documentation available.
      #
      RED = "RED"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      YELLOW = "YELLOW"
    end

    # Includes enum constants for BurnInShadowColor
    #
    module BurnInShadowColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      WHITE = "WHITE"
    end

    # Includes enum constants for BurnInTeletextGridControl
    #
    module BurnInTeletextGridControl
      # No documentation available.
      #
      FIXED = "FIXED"

      # No documentation available.
      #
      SCALED = "SCALED"
    end

    # Placeholder documentation for CancelInputDeviceTransferRequest
    #
    # @!attribute input_device_id
    #   The unique ID of the input device to cancel. For example, hd-123456789abcdef.
    #
    #   @return [String]
    #
    CancelInputDeviceTransferInput = ::Struct.new(
      :input_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for CancelInputDeviceTransferResponse
    #
    CancelInputDeviceTransferOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Caption Description
    #
    # @!attribute caption_selector_name
    #   Specifies which input caption selector to use as a caption source when generating output captions. This field should match a captionSelector name.
    #
    #   @return [String]
    #
    # @!attribute destination_settings
    #   Additional settings for captions destination that depend on the destination type.
    #
    #   @return [CaptionDestinationSettings]
    #
    # @!attribute language_code
    #   ISO 639-2 three-digit code: http://www.loc.gov/standards/iso639-2/
    #
    #   @return [String]
    #
    # @!attribute language_description
    #   Human readable information to indicate captions available for players (eg. English, or Spanish).
    #
    #   @return [String]
    #
    # @!attribute name
    #   Name of the caption description.  Used to associate a caption description with an output.  Names must be unique within an event.
    #
    #   @return [String]
    #
    CaptionDescription = ::Struct.new(
      :caption_selector_name,
      :destination_settings,
      :language_code,
      :language_description,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Caption Destination Settings
    #
    # @!attribute arib_destination_settings
    #   Arib Destination Settings
    #
    #   @return [AribDestinationSettings]
    #
    # @!attribute burn_in_destination_settings
    #   Burn In Destination Settings
    #
    #   @return [BurnInDestinationSettings]
    #
    # @!attribute dvb_sub_destination_settings
    #   Dvb Sub Destination Settings
    #
    #   @return [DvbSubDestinationSettings]
    #
    # @!attribute ebu_tt_d_destination_settings
    #   Ebu Tt DDestination Settings
    #
    #   @return [EbuTtDDestinationSettings]
    #
    # @!attribute embedded_destination_settings
    #   Embedded Destination Settings
    #
    #   @return [EmbeddedDestinationSettings]
    #
    # @!attribute embedded_plus_scte20_destination_settings
    #   Embedded Plus Scte20 Destination Settings
    #
    #   @return [EmbeddedPlusScte20DestinationSettings]
    #
    # @!attribute rtmp_caption_info_destination_settings
    #   Rtmp Caption Info Destination Settings
    #
    #   @return [RtmpCaptionInfoDestinationSettings]
    #
    # @!attribute scte20_plus_embedded_destination_settings
    #   Scte20 Plus Embedded Destination Settings
    #
    #   @return [Scte20PlusEmbeddedDestinationSettings]
    #
    # @!attribute scte27_destination_settings
    #   Scte27 Destination Settings
    #
    #   @return [Scte27DestinationSettings]
    #
    # @!attribute smpte_tt_destination_settings
    #   Smpte Tt Destination Settings
    #
    #   @return [SmpteTtDestinationSettings]
    #
    # @!attribute teletext_destination_settings
    #   Teletext Destination Settings
    #
    #   @return [TeletextDestinationSettings]
    #
    # @!attribute ttml_destination_settings
    #   Ttml Destination Settings
    #
    #   @return [TtmlDestinationSettings]
    #
    # @!attribute webvtt_destination_settings
    #   Webvtt Destination Settings
    #
    #   @return [WebvttDestinationSettings]
    #
    CaptionDestinationSettings = ::Struct.new(
      :arib_destination_settings,
      :burn_in_destination_settings,
      :dvb_sub_destination_settings,
      :ebu_tt_d_destination_settings,
      :embedded_destination_settings,
      :embedded_plus_scte20_destination_settings,
      :rtmp_caption_info_destination_settings,
      :scte20_plus_embedded_destination_settings,
      :scte27_destination_settings,
      :smpte_tt_destination_settings,
      :teletext_destination_settings,
      :ttml_destination_settings,
      :webvtt_destination_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Maps a caption channel to an ISO 693-2 language code (http://www.loc.gov/standards/iso639-2), with an optional description.
    #
    # @!attribute caption_channel
    #   The closed caption channel being described by this CaptionLanguageMapping.  Each channel mapping must have a unique channel number (maximum of 4)
    #
    #   @return [Integer]
    #
    # @!attribute language_code
    #   Three character ISO 639-2 language code (see http://www.loc.gov/standards/iso639-2)
    #
    #   @return [String]
    #
    # @!attribute language_description
    #   Textual description of language
    #
    #   @return [String]
    #
    CaptionLanguageMapping = ::Struct.new(
      :caption_channel,
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

    # Caption Rectangle
    #
    # @!attribute height
    #   See the description in leftOffset.
    #   For height, specify the entire height of the rectangle as a percentage of the underlying frame height. For example, \"80\" means the rectangle height is 80% of the underlying frame height. The topOffset and rectangleHeight must add up to 100% or less.
    #   This field corresponds to tts:extent - Y in the TTML standard.
    #
    #   @return [Float]
    #
    # @!attribute left_offset
    #   Applies only if you plan to convert these source captions to EBU-TT-D or TTML in an output. (Make sure to leave the default if you don't have either of these formats in the output.) You can define a display rectangle for the captions that is smaller than the underlying video frame. You define the rectangle by specifying the position of the left edge, top edge, bottom edge, and right edge of the rectangle, all within the underlying video frame. The units for the measurements are percentages.
    #   If you specify a value for one of these fields, you must specify a value for all of them.
    #   For leftOffset, specify the position of the left edge of the rectangle, as a percentage of the underlying frame width, and relative to the left edge of the frame. For example, \"10\" means the measurement is 10% of the underlying frame width. The rectangle left edge starts at that position from the left edge of the frame.
    #   This field corresponds to tts:origin - X in the TTML standard.
    #
    #   @return [Float]
    #
    # @!attribute top_offset
    #   See the description in leftOffset.
    #   For topOffset, specify the position of the top edge of the rectangle, as a percentage of the underlying frame height, and relative to the top edge of the frame. For example, \"10\" means the measurement is 10% of the underlying frame height. The rectangle top edge starts at that position from the top edge of the frame.
    #   This field corresponds to tts:origin - Y in the TTML standard.
    #
    #   @return [Float]
    #
    # @!attribute width
    #   See the description in leftOffset.
    #   For width, specify the entire width of the rectangle as a percentage of the underlying frame width. For example, \"80\" means the rectangle width is 80% of the underlying frame width. The leftOffset and rectangleWidth must add up to 100% or less.
    #   This field corresponds to tts:extent - X in the TTML standard.
    #
    #   @return [Float]
    #
    CaptionRectangle = ::Struct.new(
      :height,
      :left_offset,
      :top_offset,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.height ||= 0
        self.left_offset ||= 0
        self.top_offset ||= 0
        self.width ||= 0
      end
    end

    # Output groups for this Live Event. Output groups contain information about where streams should be distributed.
    #
    # @!attribute language_code
    #   When specified this field indicates the three letter language code of the caption track to extract from the source.
    #
    #   @return [String]
    #
    # @!attribute name
    #   Name identifier for a caption selector.  This name is used to associate this caption selector with one or more caption descriptions.  Names must be unique within an event.
    #
    #   @return [String]
    #
    # @!attribute selector_settings
    #   Caption selector settings.
    #
    #   @return [CaptionSelectorSettings]
    #
    CaptionSelector = ::Struct.new(
      :language_code,
      :name,
      :selector_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Caption Selector Settings
    #
    # @!attribute ancillary_source_settings
    #   Ancillary Source Settings
    #
    #   @return [AncillarySourceSettings]
    #
    # @!attribute arib_source_settings
    #   Arib Source Settings
    #
    #   @return [AribSourceSettings]
    #
    # @!attribute dvb_sub_source_settings
    #   Dvb Sub Source Settings
    #
    #   @return [DvbSubSourceSettings]
    #
    # @!attribute embedded_source_settings
    #   Embedded Source Settings
    #
    #   @return [EmbeddedSourceSettings]
    #
    # @!attribute scte20_source_settings
    #   Scte20 Source Settings
    #
    #   @return [Scte20SourceSettings]
    #
    # @!attribute scte27_source_settings
    #   Scte27 Source Settings
    #
    #   @return [Scte27SourceSettings]
    #
    # @!attribute teletext_source_settings
    #   Teletext Source Settings
    #
    #   @return [TeletextSourceSettings]
    #
    CaptionSelectorSettings = ::Struct.new(
      :ancillary_source_settings,
      :arib_source_settings,
      :dvb_sub_source_settings,
      :embedded_source_settings,
      :scte20_source_settings,
      :scte27_source_settings,
      :teletext_source_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CdiInputResolution
    #
    module CdiInputResolution
      # No documentation available.
      #
      SD = "SD"

      # No documentation available.
      #
      HD = "HD"

      # No documentation available.
      #
      FHD = "FHD"

      # No documentation available.
      #
      UHD = "UHD"
    end

    # Placeholder documentation for CdiInputSpecification
    #
    # @!attribute resolution
    #   Maximum CDI input resolution
    #
    #   Enum, one of: ["SD", "HD", "FHD", "UHD"]
    #
    #   @return [String]
    #
    CdiInputSpecification = ::Struct.new(
      :resolution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for Channel
    #
    # @!attribute arn
    #   The unique arn of the channel.
    #
    #   @return [String]
    #
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #
    #   @return [CdiInputSpecification]
    #
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #
    #   @return [Array<OutputDestination>]
    #
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #
    #   @return [Array<ChannelEgressEndpoint>]
    #
    # @!attribute encoder_settings
    #   Encoder Settings
    #
    #   @return [EncoderSettings]
    #
    # @!attribute id
    #   The unique id of the channel.
    #
    #   @return [String]
    #
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #
    #   @return [Array<InputAttachment>]
    #
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #
    #   @return [InputSpecification]
    #
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #
    #   Enum, one of: ["ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #
    #   @return [MaintenanceStatus]
    #
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #
    #   @return [String]
    #
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #
    #   @return [Array<PipelineDetail>]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #
    #   @return [String]
    #
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc
    #   Settings for VPC output
    #
    #   @return [VpcOutputSettingsDescription]
    #
    Channel = ::Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
      end
    end

    # Includes enum constants for ChannelClass
    #
    module ChannelClass
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      SINGLE_PIPELINE = "SINGLE_PIPELINE"
    end

    # Placeholder documentation for ChannelEgressEndpoint
    #
    # @!attribute source_ip
    #   Public IP of where a channel's output comes from
    #
    #   @return [String]
    #
    ChannelEgressEndpoint = ::Struct.new(
      :source_ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChannelState
    #
    module ChannelState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      IDLE = "IDLE"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      RECOVERING = "RECOVERING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # Placeholder documentation for ChannelSummary
    #
    # @!attribute arn
    #   The unique arn of the channel.
    #
    #   @return [String]
    #
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #
    #   @return [CdiInputSpecification]
    #
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #
    #   @return [Array<OutputDestination>]
    #
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #
    #   @return [Array<ChannelEgressEndpoint>]
    #
    # @!attribute id
    #   The unique id of the channel.
    #
    #   @return [String]
    #
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #
    #   @return [Array<InputAttachment>]
    #
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #
    #   @return [InputSpecification]
    #
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #
    #   Enum, one of: ["ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #
    #   @return [MaintenanceStatus]
    #
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #
    #   @return [String]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #
    #   @return [String]
    #
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc
    #   Settings for any VPC outputs.
    #
    #   @return [VpcOutputSettingsDescription]
    #
    ChannelSummary = ::Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
      end
    end

    # A request to claim an AWS Elemental device that you have purchased from a third-party vendor.
    #
    # @!attribute id
    #   The id of the device you want to claim.
    #
    #   @return [String]
    #
    ClaimDeviceInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ClaimDeviceResponse
    #
    ClaimDeviceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Passthrough applies no color space conversion to the output
    #
    ColorSpacePassthroughSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ConflictException
    #
    # @!attribute message
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContentType
    #
    module ContentType
      # No documentation available.
      #
      image_jpeg = "image/jpeg"
    end

    # A request to create a channel
    #
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #
    #   @return [CdiInputSpecification]
    #
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   Placeholder documentation for __listOfOutputDestination
    #
    #   @return [Array<OutputDestination>]
    #
    # @!attribute encoder_settings
    #   Encoder Settings
    #
    #   @return [EncoderSettings]
    #
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #
    #   @return [Array<InputAttachment>]
    #
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #
    #   @return [InputSpecification]
    #
    # @!attribute log_level
    #   The log level to write to CloudWatch Logs.
    #
    #   Enum, one of: ["ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #
    #   @return [MaintenanceCreateSettings]
    #
    # @!attribute name
    #   Name of channel.
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   Unique request ID to be specified. This is needed to prevent retries from
    #   creating multiple resources.
    #
    #   @return [String]
    #
    # @!attribute reserved
    #   Deprecated field that's only usable by whitelisted customers.
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc
    #   Settings for the VPC outputs
    #
    #   @return [VpcOutputSettings]
    #
    CreateChannelInput = ::Struct.new(
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :encoder_settings,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :request_id,
      :reserved,
      :role_arn,
      :tags,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for CreateChannelResponse
    #
    # @!attribute channel
    #   Placeholder documentation for Channel
    #
    #   @return [Channel]
    #
    CreateChannelOutput = ::Struct.new(
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The name of the input
    #
    # @!attribute destinations
    #   Destination settings for PUSH type inputs.
    #
    #   @return [Array<InputDestinationRequest>]
    #
    # @!attribute input_devices
    #   Settings for the devices.
    #
    #   @return [Array<InputDeviceSettings>]
    #
    # @!attribute input_security_groups
    #   A list of security groups referenced by IDs to attach to the input.
    #
    #   @return [Array<String>]
    #
    # @!attribute media_connect_flows
    #   A list of the MediaConnect Flows that you want to use in this input. You can specify as few as one
    #   Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a
    #   separate Availability Zone as this ensures your EML input is redundant to AZ issues.
    #
    #   @return [Array<MediaConnectFlowRequest>]
    #
    # @!attribute name
    #   Name of the input.
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   Unique identifier of the request to ensure the request is handled
    #   exactly once in case of retries.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    #
    #   @return [String]
    #
    # @!attribute sources
    #   The source URLs for a PULL-type input. Every PULL type input needs
    #   exactly two source URLs for redundancy.
    #   Only specify sources for PULL type Inputs. Leave Destinations empty.
    #
    #   @return [Array<InputSourceRequest>]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   The different types of inputs that AWS Elemental MediaLive supports.
    #
    #   Enum, one of: ["UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL", "MP4_FILE", "MEDIACONNECT", "INPUT_DEVICE", "AWS_CDI", "TS_FILE"]
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   Settings for a private VPC Input.
    #   When this property is specified, the input destination addresses will be created in a VPC rather than with public Internet addresses.
    #   This property requires setting the roleArn property on Input creation.
    #   Not compatible with the inputSecurityGroups property.
    #
    #   @return [InputVpcRequest]
    #
    CreateInputInput = ::Struct.new(
      :destinations,
      :input_devices,
      :input_security_groups,
      :media_connect_flows,
      :name,
      :request_id,
      :role_arn,
      :sources,
      :tags,
      :type,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for CreateInputResponse
    #
    # @!attribute input
    #   Placeholder documentation for Input
    #
    #   @return [Input]
    #
    CreateInputOutput = ::Struct.new(
      :input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The IPv4 CIDRs to whitelist for this Input Security Group
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute whitelist_rules
    #   List of IPv4 CIDR addresses to whitelist
    #
    #   @return [Array<InputWhitelistRuleCidr>]
    #
    CreateInputSecurityGroupInput = ::Struct.new(
      :tags,
      :whitelist_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for CreateInputSecurityGroupResponse
    #
    # @!attribute security_group
    #   An Input Security Group
    #
    #   @return [InputSecurityGroup]
    #
    CreateInputSecurityGroupOutput = ::Struct.new(
      :security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to create a multiplex.
    #
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex. You must specify exactly two.
    #
    #   @return [Array<String>]
    #
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #
    #   @return [MultiplexSettings]
    #
    # @!attribute name
    #   Name of multiplex.
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   Unique request ID. This prevents retries from creating multiple
    #   resources.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    CreateMultiplexInput = ::Struct.new(
      :availability_zones,
      :multiplex_settings,
      :name,
      :request_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for CreateMultiplexResponse
    #
    # @!attribute multiplex
    #   The newly created multiplex.
    #
    #   @return [Multiplex]
    #
    CreateMultiplexOutput = ::Struct.new(
      :multiplex,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to create a program in a multiplex.
    #
    # @!attribute multiplex_id
    #   ID of the multiplex where the program is to be created.
    #
    #   @return [String]
    #
    # @!attribute multiplex_program_settings
    #   The settings for this multiplex program.
    #
    #   @return [MultiplexProgramSettings]
    #
    # @!attribute program_name
    #   Name of multiplex program.
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   Unique request ID. This prevents retries from creating multiple
    #   resources.
    #
    #   @return [String]
    #
    CreateMultiplexProgramInput = ::Struct.new(
      :multiplex_id,
      :multiplex_program_settings,
      :program_name,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for CreateMultiplexProgramResponse
    #
    # @!attribute multiplex_program
    #   The newly created multiplex program.
    #
    #   @return [MultiplexProgram]
    #
    CreateMultiplexProgramOutput = ::Struct.new(
      :multiplex_program,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to create a partner input
    #
    # @!attribute input_id
    #   Unique ID of the input.
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   Unique identifier of the request to ensure the request is handled
    #   exactly once in case of retries.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    CreatePartnerInputInput = ::Struct.new(
      :input_id,
      :request_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for CreatePartnerInputResponse
    #
    # @!attribute input
    #   Placeholder documentation for Input
    #
    #   @return [Input]
    #
    CreatePartnerInputOutput = ::Struct.new(
      :input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for CreateTagsRequest
    #
    # @!attribute resource_arn
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Placeholder documentation for Tags
    #
    #   @return [Hash<String, String>]
    #
    CreateTagsInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteChannelRequest
    #
    # @!attribute channel_id
    #   Unique ID of the channel.
    #
    #   @return [String]
    #
    DeleteChannelInput = ::Struct.new(
      :channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteChannelResponse
    #
    # @!attribute arn
    #   The unique arn of the channel.
    #
    #   @return [String]
    #
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #
    #   @return [CdiInputSpecification]
    #
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #
    #   @return [Array<OutputDestination>]
    #
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #
    #   @return [Array<ChannelEgressEndpoint>]
    #
    # @!attribute encoder_settings
    #   Encoder Settings
    #
    #   @return [EncoderSettings]
    #
    # @!attribute id
    #   The unique id of the channel.
    #
    #   @return [String]
    #
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #
    #   @return [Array<InputAttachment>]
    #
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #
    #   @return [InputSpecification]
    #
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #
    #   Enum, one of: ["ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #
    #   @return [MaintenanceStatus]
    #
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #
    #   @return [String]
    #
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #
    #   @return [Array<PipelineDetail>]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #
    #   @return [String]
    #
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc
    #   Settings for VPC output
    #
    #   @return [VpcOutputSettingsDescription]
    #
    DeleteChannelOutput = ::Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
      end
    end

    # Placeholder documentation for DeleteInputRequest
    #
    # @!attribute input_id
    #   Unique ID of the input
    #
    #   @return [String]
    #
    DeleteInputInput = ::Struct.new(
      :input_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteInputResponse
    #
    DeleteInputOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteInputSecurityGroupRequest
    #
    # @!attribute input_security_group_id
    #   The Input Security Group to delete
    #
    #   @return [String]
    #
    DeleteInputSecurityGroupInput = ::Struct.new(
      :input_security_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteInputSecurityGroupResponse
    #
    DeleteInputSecurityGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteMultiplexRequest
    #
    # @!attribute multiplex_id
    #   The ID of the multiplex.
    #
    #   @return [String]
    #
    DeleteMultiplexInput = ::Struct.new(
      :multiplex_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteMultiplexResponse
    #
    # @!attribute arn
    #   The unique arn of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #
    #   @return [Array<String>]
    #
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #
    #   @return [Array<MultiplexOutputDestination>]
    #
    # @!attribute id
    #   The unique id of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #
    #   @return [MultiplexSettings]
    #
    # @!attribute name
    #   The name of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   The current state of the multiplex.
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    DeleteMultiplexOutput = ::Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
        self.program_count ||= 0
      end
    end

    # Placeholder documentation for DeleteMultiplexProgramRequest
    #
    # @!attribute multiplex_id
    #   The ID of the multiplex that the program belongs to.
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   The multiplex program name.
    #
    #   @return [String]
    #
    DeleteMultiplexProgramInput = ::Struct.new(
      :multiplex_id,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteMultiplexProgramResponse
    #
    # @!attribute channel_id
    #   The MediaLive channel associated with the program.
    #
    #   @return [String]
    #
    # @!attribute multiplex_program_settings
    #   The settings for this multiplex program.
    #
    #   @return [MultiplexProgramSettings]
    #
    # @!attribute packet_identifiers_map
    #   The packet identifier map for this multiplex program.
    #
    #   @return [MultiplexProgramPacketIdentifiersMap]
    #
    # @!attribute pipeline_details
    #   Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
    #
    #   @return [Array<MultiplexProgramPipelineDetail>]
    #
    # @!attribute program_name
    #   The name of the multiplex program.
    #
    #   @return [String]
    #
    DeleteMultiplexProgramOutput = ::Struct.new(
      :channel_id,
      :multiplex_program_settings,
      :packet_identifiers_map,
      :pipeline_details,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteReservationRequest
    #
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #
    #   @return [String]
    #
    DeleteReservationInput = ::Struct.new(
      :reservation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteReservationResponse
    #
    # @!attribute arn
    #   Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
    #
    #   @return [String]
    #
    # @!attribute count
    #   Number of reserved resources
    #
    #   @return [Integer]
    #
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #
    #   @return [String]
    #
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #
    #   @return [Integer]
    #
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #
    #   Enum, one of: ["MONTHS"]
    #
    #   @return [String]
    #
    # @!attribute end
    #   Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
    #
    #   @return [String]
    #
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #
    #   @return [Float]
    #
    # @!attribute name
    #   User specified reservation name
    #
    #   @return [String]
    #
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #
    #   @return [String]
    #
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #
    #   Enum, one of: ["NO_UPFRONT"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #
    #   @return [String]
    #
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   Resource configuration details
    #
    #   @return [ReservationResourceSpecification]
    #
    # @!attribute start
    #   Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
    #
    #   @return [String]
    #
    # @!attribute state
    #   Current state of reservation, e.g. 'ACTIVE'
    #
    #   Enum, one of: ["ACTIVE", "EXPIRED", "CANCELED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #
    #   @return [Float]
    #
    DeleteReservationOutput = ::Struct.new(
      :arn,
      :count,
      :currency_code,
      :duration,
      :duration_units,
      :end,
      :fixed_price,
      :name,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :reservation_id,
      :resource_specification,
      :start,
      :state,
      :tags,
      :usage_price,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
        self.duration ||= 0
        self.fixed_price ||= 0
        self.usage_price ||= 0
      end
    end

    # Placeholder documentation for DeleteScheduleRequest
    #
    # @!attribute channel_id
    #   Id of the channel whose schedule is being deleted.
    #
    #   @return [String]
    #
    DeleteScheduleInput = ::Struct.new(
      :channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteScheduleResponse
    #
    DeleteScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DeleteTagsRequest
    #
    # @!attribute resource_arn
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   An array of tag keys to delete
    #
    #   @return [Array<String>]
    #
    DeleteTagsInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeChannelRequest
    #
    # @!attribute channel_id
    #   channel ID
    #
    #   @return [String]
    #
    DescribeChannelInput = ::Struct.new(
      :channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeChannelResponse
    #
    # @!attribute arn
    #   The unique arn of the channel.
    #
    #   @return [String]
    #
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #
    #   @return [CdiInputSpecification]
    #
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #
    #   @return [Array<OutputDestination>]
    #
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #
    #   @return [Array<ChannelEgressEndpoint>]
    #
    # @!attribute encoder_settings
    #   Encoder Settings
    #
    #   @return [EncoderSettings]
    #
    # @!attribute id
    #   The unique id of the channel.
    #
    #   @return [String]
    #
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #
    #   @return [Array<InputAttachment>]
    #
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #
    #   @return [InputSpecification]
    #
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #
    #   Enum, one of: ["ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #
    #   @return [MaintenanceStatus]
    #
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #
    #   @return [String]
    #
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #
    #   @return [Array<PipelineDetail>]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #
    #   @return [String]
    #
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc
    #   Settings for VPC output
    #
    #   @return [VpcOutputSettingsDescription]
    #
    DescribeChannelOutput = ::Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
      end
    end

    # Placeholder documentation for DescribeInputDeviceRequest
    #
    # @!attribute input_device_id
    #   The unique ID of this input device. For example, hd-123456789abcdef.
    #
    #   @return [String]
    #
    DescribeInputDeviceInput = ::Struct.new(
      :input_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeInputDeviceResponse
    #
    # @!attribute arn
    #   The unique ARN of the input device.
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   The state of the connection between the input device and AWS.
    #
    #   Enum, one of: ["DISCONNECTED", "CONNECTED"]
    #
    #   @return [String]
    #
    # @!attribute device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
    #
    #   Enum, one of: ["SYNCED", "SYNCING"]
    #
    #   @return [String]
    #
    # @!attribute device_update_status
    #   The status of software on the input device.
    #
    #   Enum, one of: ["UP_TO_DATE", "NOT_UP_TO_DATE"]
    #
    #   @return [String]
    #
    # @!attribute hd_device_settings
    #   Settings that describe an input device that is type HD.
    #
    #   @return [InputDeviceHdSettings]
    #
    # @!attribute id
    #   The unique ID of the input device.
    #
    #   @return [String]
    #
    # @!attribute mac_address
    #   The network MAC address of the input device.
    #
    #   @return [String]
    #
    # @!attribute name
    #   A name that you specify for the input device.
    #
    #   @return [String]
    #
    # @!attribute network_settings
    #   The network settings for the input device.
    #
    #   @return [InputDeviceNetworkSettings]
    #
    # @!attribute serial_number
    #   The unique serial number of the input device.
    #
    #   @return [String]
    #
    # @!attribute type
    #   The type of the input device.
    #
    #   Enum, one of: ["HD"]
    #
    #   @return [String]
    #
    # @!attribute uhd_device_settings
    #   Settings that describe an input device that is type UHD.
    #
    #   @return [InputDeviceUhdSettings]
    #
    DescribeInputDeviceOutput = ::Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :device_update_status,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type,
      :uhd_device_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeInputDeviceThumbnailRequest
    #
    # @!attribute input_device_id
    #   The unique ID of this input device. For example, hd-123456789abcdef.
    #
    #   @return [String]
    #
    # @!attribute accept
    #   The HTTP Accept header. Indicates the requested type for the thumbnail.
    #
    #   Enum, one of: ["image/jpeg"]
    #
    #   @return [String]
    #
    DescribeInputDeviceThumbnailInput = ::Struct.new(
      :input_device_id,
      :accept,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeInputDeviceThumbnailResponse
    #
    # @!attribute body
    #   The binary data for the thumbnail that the Link device has most recently sent to MediaLive.
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   Specifies the media type of the thumbnail.
    #
    #   Enum, one of: ["image/jpeg"]
    #
    #   @return [String]
    #
    # @!attribute content_length
    #   The length of the content.
    #
    #   @return [Integer]
    #
    # @!attribute e_tag
    #   The unique, cacheable version of this thumbnail.
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   The date and time the thumbnail was last updated at the device.
    #
    #   @return [Time]
    #
    DescribeInputDeviceThumbnailOutput = ::Struct.new(
      :body,
      :content_type,
      :content_length,
      :e_tag,
      :last_modified,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.content_length ||= 0
      end
    end

    # Placeholder documentation for DescribeInputRequest
    #
    # @!attribute input_id
    #   Unique ID of the input
    #
    #   @return [String]
    #
    DescribeInputInput = ::Struct.new(
      :input_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeInputResponse
    #
    # @!attribute arn
    #   The Unique ARN of the input (generated, immutable).
    #
    #   @return [String]
    #
    # @!attribute attached_channels
    #   A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
    #
    #   @return [Array<String>]
    #
    # @!attribute destinations
    #   A list of the destinations of the input (PUSH-type).
    #
    #   @return [Array<InputDestination>]
    #
    # @!attribute id
    #   The generated ID of the input (unique for user account, immutable).
    #
    #   @return [String]
    #
    # @!attribute input_class
    #   STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails.
    #   SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute input_devices
    #   Settings for the input devices.
    #
    #   @return [Array<InputDeviceSettings>]
    #
    # @!attribute input_partner_ids
    #   A list of IDs for all Inputs which are partners of this one.
    #
    #   @return [Array<String>]
    #
    # @!attribute input_source_type
    #   Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes
    #   during input switch actions. Presently, this functionality only works with MP4_FILE and TS_FILE inputs.
    #
    #   Enum, one of: ["STATIC", "DYNAMIC"]
    #
    #   @return [String]
    #
    # @!attribute media_connect_flows
    #   A list of MediaConnect Flows for this input.
    #
    #   @return [Array<MediaConnectFlow>]
    #
    # @!attribute name
    #   The user-assigned name (This is a mutable value).
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   A list of IDs for all the Input Security Groups attached to the input.
    #
    #   @return [Array<String>]
    #
    # @!attribute sources
    #   A list of the sources of the input (PULL-type).
    #
    #   @return [Array<InputSource>]
    #
    # @!attribute state
    #   Placeholder documentation for InputState
    #
    #   Enum, one of: ["CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   The different types of inputs that AWS Elemental MediaLive supports.
    #
    #   Enum, one of: ["UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL", "MP4_FILE", "MEDIACONNECT", "INPUT_DEVICE", "AWS_CDI", "TS_FILE"]
    #
    #   @return [String]
    #
    DescribeInputOutput = ::Struct.new(
      :arn,
      :attached_channels,
      :destinations,
      :id,
      :input_class,
      :input_devices,
      :input_partner_ids,
      :input_source_type,
      :media_connect_flows,
      :name,
      :role_arn,
      :security_groups,
      :sources,
      :state,
      :tags,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeInputSecurityGroupRequest
    #
    # @!attribute input_security_group_id
    #   The id of the Input Security Group to describe
    #
    #   @return [String]
    #
    DescribeInputSecurityGroupInput = ::Struct.new(
      :input_security_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeInputSecurityGroupResponse
    #
    # @!attribute arn
    #   Unique ARN of Input Security Group
    #
    #   @return [String]
    #
    # @!attribute id
    #   The Id of the Input Security Group
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   The list of inputs currently using this Input Security Group.
    #
    #   @return [Array<String>]
    #
    # @!attribute state
    #   The current state of the Input Security Group.
    #
    #   Enum, one of: ["IDLE", "IN_USE", "UPDATING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute whitelist_rules
    #   Whitelist rules and their sync status
    #
    #   @return [Array<InputWhitelistRule>]
    #
    DescribeInputSecurityGroupOutput = ::Struct.new(
      :arn,
      :id,
      :inputs,
      :state,
      :tags,
      :whitelist_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeMultiplexRequest
    #
    # @!attribute multiplex_id
    #   The ID of the multiplex.
    #
    #   @return [String]
    #
    DescribeMultiplexInput = ::Struct.new(
      :multiplex_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeMultiplexResponse
    #
    # @!attribute arn
    #   The unique arn of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #
    #   @return [Array<String>]
    #
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #
    #   @return [Array<MultiplexOutputDestination>]
    #
    # @!attribute id
    #   The unique id of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #
    #   @return [MultiplexSettings]
    #
    # @!attribute name
    #   The name of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   The current state of the multiplex.
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    DescribeMultiplexOutput = ::Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
        self.program_count ||= 0
      end
    end

    # Placeholder documentation for DescribeMultiplexProgramRequest
    #
    # @!attribute multiplex_id
    #   The ID of the multiplex that the program belongs to.
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   The name of the program.
    #
    #   @return [String]
    #
    DescribeMultiplexProgramInput = ::Struct.new(
      :multiplex_id,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeMultiplexProgramResponse
    #
    # @!attribute channel_id
    #   The MediaLive channel associated with the program.
    #
    #   @return [String]
    #
    # @!attribute multiplex_program_settings
    #   The settings for this multiplex program.
    #
    #   @return [MultiplexProgramSettings]
    #
    # @!attribute packet_identifiers_map
    #   The packet identifier map for this multiplex program.
    #
    #   @return [MultiplexProgramPacketIdentifiersMap]
    #
    # @!attribute pipeline_details
    #   Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
    #
    #   @return [Array<MultiplexProgramPipelineDetail>]
    #
    # @!attribute program_name
    #   The name of the multiplex program.
    #
    #   @return [String]
    #
    DescribeMultiplexProgramOutput = ::Struct.new(
      :channel_id,
      :multiplex_program_settings,
      :packet_identifiers_map,
      :pipeline_details,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeOfferingRequest
    #
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #
    #   @return [String]
    #
    DescribeOfferingInput = ::Struct.new(
      :offering_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeOfferingResponse
    #
    # @!attribute arn
    #   Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
    #
    #   @return [String]
    #
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #
    #   @return [String]
    #
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #
    #   @return [Integer]
    #
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #
    #   Enum, one of: ["MONTHS"]
    #
    #   @return [String]
    #
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #
    #   @return [Float]
    #
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #
    #   @return [String]
    #
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #
    #   Enum, one of: ["NO_UPFRONT"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   Resource configuration details
    #
    #   @return [ReservationResourceSpecification]
    #
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #
    #   @return [Float]
    #
    DescribeOfferingOutput = ::Struct.new(
      :arn,
      :currency_code,
      :duration,
      :duration_units,
      :fixed_price,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :resource_specification,
      :usage_price,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.fixed_price ||= 0
        self.usage_price ||= 0
      end
    end

    # Placeholder documentation for DescribeReservationRequest
    #
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #
    #   @return [String]
    #
    DescribeReservationInput = ::Struct.new(
      :reservation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for DescribeReservationResponse
    #
    # @!attribute arn
    #   Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
    #
    #   @return [String]
    #
    # @!attribute count
    #   Number of reserved resources
    #
    #   @return [Integer]
    #
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #
    #   @return [String]
    #
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #
    #   @return [Integer]
    #
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #
    #   Enum, one of: ["MONTHS"]
    #
    #   @return [String]
    #
    # @!attribute end
    #   Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
    #
    #   @return [String]
    #
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #
    #   @return [Float]
    #
    # @!attribute name
    #   User specified reservation name
    #
    #   @return [String]
    #
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #
    #   @return [String]
    #
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #
    #   Enum, one of: ["NO_UPFRONT"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #
    #   @return [String]
    #
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   Resource configuration details
    #
    #   @return [ReservationResourceSpecification]
    #
    # @!attribute start
    #   Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
    #
    #   @return [String]
    #
    # @!attribute state
    #   Current state of reservation, e.g. 'ACTIVE'
    #
    #   Enum, one of: ["ACTIVE", "EXPIRED", "CANCELED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #
    #   @return [Float]
    #
    DescribeReservationOutput = ::Struct.new(
      :arn,
      :count,
      :currency_code,
      :duration,
      :duration_units,
      :end,
      :fixed_price,
      :name,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :reservation_id,
      :resource_specification,
      :start,
      :state,
      :tags,
      :usage_price,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
        self.duration ||= 0
        self.fixed_price ||= 0
        self.usage_price ||= 0
      end
    end

    # Placeholder documentation for DescribeScheduleRequest
    #
    # @!attribute channel_id
    #   Id of the channel whose schedule is being updated.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    DescribeScheduleInput = ::Struct.new(
      :channel_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for DescribeScheduleResponse
    #
    # @!attribute next_token
    #   The next token; for use in pagination.
    #
    #   @return [String]
    #
    # @!attribute schedule_actions
    #   The list of actions in the schedule.
    #
    #   @return [Array<ScheduleAction>]
    #
    DescribeScheduleOutput = ::Struct.new(
      :next_token,
      :schedule_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceSettingsSyncState
    #
    module DeviceSettingsSyncState
      # No documentation available.
      #
      SYNCED = "SYNCED"

      # No documentation available.
      #
      SYNCING = "SYNCING"
    end

    # Includes enum constants for DeviceUpdateStatus
    #
    module DeviceUpdateStatus
      # No documentation available.
      #
      UP_TO_DATE = "UP_TO_DATE"

      # No documentation available.
      #
      NOT_UP_TO_DATE = "NOT_UP_TO_DATE"
    end

    # DVB Network Information Table (NIT)
    #
    # @!attribute network_id
    #   The numeric value placed in the Network Information Table (NIT).
    #
    #   @return [Integer]
    #
    # @!attribute network_name
    #   The network name text placed in the networkNameDescriptor inside the Network Information Table. Maximum length is 256 characters.
    #
    #   @return [String]
    #
    # @!attribute rep_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #
    #   @return [Integer]
    #
    DvbNitSettings = ::Struct.new(
      :network_id,
      :network_name,
      :rep_interval,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.network_id ||= 0
        self.rep_interval ||= 0
      end
    end

    # Includes enum constants for DvbSdtOutputSdt
    #
    module DvbSdtOutputSdt
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

    # DVB Service Description Table (SDT)
    #
    # @!attribute output_sdt
    #   Selects method of inserting SDT information into output stream. The sdtFollow setting copies SDT information from input stream to output stream. The sdtFollowIfPresent setting copies SDT information from input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. The sdtManual setting means user will enter the SDT information. The sdtNone setting means output stream will not contain SDT information.
    #
    #   Enum, one of: ["SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"]
    #
    #   @return [String]
    #
    # @!attribute rep_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute service_name
    #   The service name placed in the serviceDescriptor in the Service Description Table. Maximum length is 256 characters.
    #
    #   @return [String]
    #
    # @!attribute service_provider_name
    #   The service provider name placed in the serviceDescriptor in the Service Description Table. Maximum length is 256 characters.
    #
    #   @return [String]
    #
    DvbSdtSettings = ::Struct.new(
      :output_sdt,
      :rep_interval,
      :service_name,
      :service_provider_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rep_interval ||= 0
      end
    end

    # Includes enum constants for DvbSubDestinationAlignment
    #
    module DvbSubDestinationAlignment
      # No documentation available.
      #
      CENTERED = "CENTERED"

      # No documentation available.
      #
      LEFT = "LEFT"

      # No documentation available.
      #
      SMART = "SMART"
    end

    # Includes enum constants for DvbSubDestinationBackgroundColor
    #
    module DvbSubDestinationBackgroundColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      WHITE = "WHITE"
    end

    # Includes enum constants for DvbSubDestinationFontColor
    #
    module DvbSubDestinationFontColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      BLUE = "BLUE"

      # No documentation available.
      #
      GREEN = "GREEN"

      # No documentation available.
      #
      RED = "RED"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      YELLOW = "YELLOW"
    end

    # Includes enum constants for DvbSubDestinationOutlineColor
    #
    module DvbSubDestinationOutlineColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      BLUE = "BLUE"

      # No documentation available.
      #
      GREEN = "GREEN"

      # No documentation available.
      #
      RED = "RED"

      # No documentation available.
      #
      WHITE = "WHITE"

      # No documentation available.
      #
      YELLOW = "YELLOW"
    end

    # Dvb Sub Destination Settings
    #
    # @!attribute alignment
    #   If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  This option is not valid for source captions that are STL or 608/embedded.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["CENTERED", "LEFT", "SMART"]
    #
    #   @return [String]
    #
    # @!attribute background_color
    #   Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["BLACK", "NONE", "WHITE"]
    #
    #   @return [String]
    #
    # @!attribute background_opacity
    #   Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute font
    #   External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [InputLocation]
    #
    # @!attribute font_color
    #   Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"]
    #
    #   @return [String]
    #
    # @!attribute font_opacity
    #   Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute font_resolution
    #   Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute font_size
    #   When set to auto fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [String]
    #
    # @!attribute outline_color
    #   Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"]
    #
    #   @return [String]
    #
    # @!attribute outline_size
    #   Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_color
    #   Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
    #
    #   Enum, one of: ["BLACK", "NONE", "WHITE"]
    #
    #   @return [String]
    #
    # @!attribute shadow_opacity
    #   Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_x_offset
    #   Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute shadow_y_offset
    #   Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute teletext_grid_control
    #   Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
    #
    #   Enum, one of: ["FIXED", "SCALED"]
    #
    #   @return [String]
    #
    # @!attribute x_position
    #   Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    # @!attribute y_position
    #   Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #
    #   @return [Integer]
    #
    DvbSubDestinationSettings = ::Struct.new(
      :alignment,
      :background_color,
      :background_opacity,
      :font,
      :font_color,
      :font_opacity,
      :font_resolution,
      :font_size,
      :outline_color,
      :outline_size,
      :shadow_color,
      :shadow_opacity,
      :shadow_x_offset,
      :shadow_y_offset,
      :teletext_grid_control,
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
        self.outline_size ||= 0
        self.shadow_opacity ||= 0
        self.shadow_x_offset ||= 0
        self.shadow_y_offset ||= 0
        self.x_position ||= 0
        self.y_position ||= 0
      end
    end

    # Includes enum constants for DvbSubDestinationShadowColor
    #
    module DvbSubDestinationShadowColor
      # No documentation available.
      #
      BLACK = "BLACK"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      WHITE = "WHITE"
    end

    # Includes enum constants for DvbSubDestinationTeletextGridControl
    #
    module DvbSubDestinationTeletextGridControl
      # No documentation available.
      #
      FIXED = "FIXED"

      # No documentation available.
      #
      SCALED = "SCALED"
    end

    # Includes enum constants for DvbSubOcrLanguage
    #
    module DvbSubOcrLanguage
      # No documentation available.
      #
      DEU = "DEU"

      # No documentation available.
      #
      ENG = "ENG"

      # No documentation available.
      #
      FRA = "FRA"

      # No documentation available.
      #
      NLD = "NLD"

      # No documentation available.
      #
      POR = "POR"

      # No documentation available.
      #
      SPA = "SPA"
    end

    # Dvb Sub Source Settings
    #
    # @!attribute ocr_language
    #   If you will configure a WebVTT caption description that references this caption selector, use this field to
    #   provide the language to consider when translating the image-based source to text.
    #
    #   Enum, one of: ["DEU", "ENG", "FRA", "NLD", "POR", "SPA"]
    #
    #   @return [String]
    #
    # @!attribute pid
    #   When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors.
    #
    #   @return [Integer]
    #
    DvbSubSourceSettings = ::Struct.new(
      :ocr_language,
      :pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pid ||= 0
      end
    end

    # DVB Time and Date Table (SDT)
    #
    # @!attribute rep_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #
    #   @return [Integer]
    #
    DvbTdtSettings = ::Struct.new(
      :rep_interval,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rep_interval ||= 0
      end
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
      COMMENTARY = "COMMENTARY"

      # No documentation available.
      #
      COMPLETE_MAIN = "COMPLETE_MAIN"

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
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for Eac3DrcLine
    #
    module Eac3DrcLine
      # No documentation available.
      #
      FILM_LIGHT = "FILM_LIGHT"

      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      MUSIC_LIGHT = "MUSIC_LIGHT"

      # No documentation available.
      #
      MUSIC_STANDARD = "MUSIC_STANDARD"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SPEECH = "SPEECH"
    end

    # Includes enum constants for Eac3DrcRf
    #
    module Eac3DrcRf
      # No documentation available.
      #
      FILM_LIGHT = "FILM_LIGHT"

      # No documentation available.
      #
      FILM_STANDARD = "FILM_STANDARD"

      # No documentation available.
      #
      MUSIC_LIGHT = "MUSIC_LIGHT"

      # No documentation available.
      #
      MUSIC_STANDARD = "MUSIC_STANDARD"

      # No documentation available.
      #
      NONE = "NONE"

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
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
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
      NO_PASSTHROUGH = "NO_PASSTHROUGH"

      # No documentation available.
      #
      WHEN_POSSIBLE = "WHEN_POSSIBLE"
    end

    # Includes enum constants for Eac3PhaseControl
    #
    module Eac3PhaseControl
      # No documentation available.
      #
      NO_SHIFT = "NO_SHIFT"

      # No documentation available.
      #
      SHIFT_90_DEGREES = "SHIFT_90_DEGREES"
    end

    # Eac3 Settings
    #
    # @!attribute attenuation_control
    #   When set to attenuate3Db, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
    #
    #   Enum, one of: ["ATTENUATE_3_DB", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute bitrate
    #   Average bitrate in bits/second. Valid bitrates depend on the coding mode.
    #
    #   @return [Float]
    #
    # @!attribute bitstream_mode
    #   Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream. See ATSC A/52-2012 (Annex E) for background on these values.
    #
    #   Enum, one of: ["COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"]
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
    #   When set to enabled, activates a DC highpass filter for all input channels.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute dialnorm
    #   Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
    #
    #   @return [Integer]
    #
    # @!attribute drc_line
    #   Sets the Dolby dynamic range compression profile.
    #
    #   Enum, one of: ["FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"]
    #
    #   @return [String]
    #
    # @!attribute drc_rf
    #   Sets the profile for heavy Dolby dynamic range compression, ensures that the instantaneous signal peaks do not exceed specified levels.
    #
    #   Enum, one of: ["FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"]
    #
    #   @return [String]
    #
    # @!attribute lfe_control
    #   When encoding 3/2 audio, setting to lfe enables the LFE channel
    #
    #   Enum, one of: ["LFE", "NO_LFE"]
    #
    #   @return [String]
    #
    # @!attribute lfe_filter
    #   When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with codingMode32 coding mode.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute lo_ro_center_mix_level
    #   Left only/Right only center mix level. Only used for 3/2 coding mode.
    #
    #   @return [Float]
    #
    # @!attribute lo_ro_surround_mix_level
    #   Left only/Right only surround mix level. Only used for 3/2 coding mode.
    #
    #   @return [Float]
    #
    # @!attribute lt_rt_center_mix_level
    #   Left total/Right total center mix level. Only used for 3/2 coding mode.
    #
    #   @return [Float]
    #
    # @!attribute lt_rt_surround_mix_level
    #   Left total/Right total surround mix level. Only used for 3/2 coding mode.
    #
    #   @return [Float]
    #
    # @!attribute metadata_control
    #   When set to followInput, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    #
    #   Enum, one of: ["FOLLOW_INPUT", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute passthrough_control
    #   When set to whenPossible, input DD+ audio will be passed through if it is present on the input. This detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
    #
    #   Enum, one of: ["NO_PASSTHROUGH", "WHEN_POSSIBLE"]
    #
    #   @return [String]
    #
    # @!attribute phase_control
    #   When set to shift90Degrees, applies a 90-degree phase shift to the surround channels. Only used for 3/2 coding mode.
    #
    #   Enum, one of: ["NO_SHIFT", "SHIFT_90_DEGREES"]
    #
    #   @return [String]
    #
    # @!attribute stereo_downmix
    #   Stereo downmix preference. Only used for 3/2 coding mode.
    #
    #   Enum, one of: ["DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"]
    #
    #   @return [String]
    #
    # @!attribute surround_ex_mode
    #   When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.
    #
    #   Enum, one of: ["DISABLED", "ENABLED", "NOT_INDICATED"]
    #
    #   @return [String]
    #
    # @!attribute surround_mode
    #   When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
    #
    #   Enum, one of: ["DISABLED", "ENABLED", "NOT_INDICATED"]
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
      :drc_line,
      :drc_rf,
      :lfe_control,
      :lfe_filter,
      :lo_ro_center_mix_level,
      :lo_ro_surround_mix_level,
      :lt_rt_center_mix_level,
      :lt_rt_surround_mix_level,
      :metadata_control,
      :passthrough_control,
      :phase_control,
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
      end
    end

    # Includes enum constants for Eac3StereoDownmix
    #
    module Eac3StereoDownmix
      # No documentation available.
      #
      DPL2 = "DPL2"

      # No documentation available.
      #
      LO_RO = "LO_RO"

      # No documentation available.
      #
      LT_RT = "LT_RT"

      # No documentation available.
      #
      NOT_INDICATED = "NOT_INDICATED"
    end

    # Includes enum constants for Eac3SurroundExMode
    #
    module Eac3SurroundExMode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      NOT_INDICATED = "NOT_INDICATED"
    end

    # Includes enum constants for Eac3SurroundMode
    #
    module Eac3SurroundMode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      NOT_INDICATED = "NOT_INDICATED"
    end

    # Ebu Tt DDestination Settings
    #
    # @!attribute copyright_holder
    #   Complete this field if you want to include the name of the copyright holder in the copyright tag in the captions metadata.
    #
    #   @return [String]
    #
    # @!attribute fill_line_gap
    #   Specifies how to handle the gap between the lines (in multi-line captions).
    #
    #   - enabled: Fill with the captions background color (as specified in the input captions).
    #   - disabled: Leave the gap unfilled.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute font_family
    #   Specifies the font family to include in the font data attached to the EBU-TT captions. Valid only if styleControl is set to include. If you leave this field empty, the font family is set to "monospaced". (If styleControl is set to exclude, the font family is always set to "monospaced".)
    #
    #   You specify only the font family. All other style information (color, bold, position and so on) is copied from the input captions. The size is always set to 100% to allow the downstream player to choose the size.
    #
    #   - Enter a list of font families, as a comma-separated list of font names, in order of preference. The name can be a font family (such as “Arial”), or a generic font family (such as “serif”), or “default” (to let the downstream player choose the font).
    #   - Leave blank to set the family to “monospace”.
    #
    #   @return [String]
    #
    # @!attribute style_control
    #   Specifies the style information (font color, font position, and so on) to include in the font data that is attached to the EBU-TT captions.
    #
    #   - include: Take the style information (font color, font position, and so on) from the source captions and include that information in the font data attached to the EBU-TT captions. This option is valid only if the source captions are Embedded or Teletext.
    #   - exclude: In the font data attached to the EBU-TT captions, set the font family to "monospaced". Do not include any other style information.
    #
    #   Enum, one of: ["EXCLUDE", "INCLUDE"]
    #
    #   @return [String]
    #
    EbuTtDDestinationSettings = ::Struct.new(
      :copyright_holder,
      :fill_line_gap,
      :font_family,
      :style_control,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EbuTtDDestinationStyleControl
    #
    module EbuTtDDestinationStyleControl
      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"

      # No documentation available.
      #
      INCLUDE = "INCLUDE"
    end

    # Includes enum constants for EbuTtDFillLineGapControl
    #
    module EbuTtDFillLineGapControl
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for EmbeddedConvert608To708
    #
    module EmbeddedConvert608To708
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      UPCONVERT = "UPCONVERT"
    end

    # Embedded Destination Settings
    #
    EmbeddedDestinationSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Embedded Plus Scte20 Destination Settings
    #
    EmbeddedPlusScte20DestinationSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EmbeddedScte20Detection
    #
    module EmbeddedScte20Detection
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      OFF = "OFF"
    end

    # Embedded Source Settings
    #
    # @!attribute convert608_to708
    #   If upconvert, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
    #
    #   Enum, one of: ["DISABLED", "UPCONVERT"]
    #
    #   @return [String]
    #
    # @!attribute scte20_detection
    #   Set to "auto" to handle streams with intermittent and/or non-aligned SCTE-20 and Embedded captions.
    #
    #   Enum, one of: ["AUTO", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute source608_channel_number
    #   Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
    #
    #   @return [Integer]
    #
    # @!attribute source608_track_number
    #   This field is unused and deprecated.
    #
    #   @return [Integer]
    #
    EmbeddedSourceSettings = ::Struct.new(
      :convert608_to708,
      :scte20_detection,
      :source608_channel_number,
      :source608_track_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.source608_channel_number ||= 0
        self.source608_track_number ||= 0
      end
    end

    # Encoder Settings
    #
    # @!attribute audio_descriptions
    #   Placeholder documentation for __listOfAudioDescription
    #
    #   @return [Array<AudioDescription>]
    #
    # @!attribute avail_blanking
    #   Settings for ad avail blanking.
    #
    #   @return [AvailBlanking]
    #
    # @!attribute avail_configuration
    #   Event-wide configuration settings for ad avail insertion.
    #
    #   @return [AvailConfiguration]
    #
    # @!attribute blackout_slate
    #   Settings for blackout slate.
    #
    #   @return [BlackoutSlate]
    #
    # @!attribute caption_descriptions
    #   Settings for caption decriptions
    #
    #   @return [Array<CaptionDescription>]
    #
    # @!attribute feature_activations
    #   Feature Activations
    #
    #   @return [FeatureActivations]
    #
    # @!attribute global_configuration
    #   Configuration settings that apply to the event as a whole.
    #
    #   @return [GlobalConfiguration]
    #
    # @!attribute motion_graphics_configuration
    #   Settings for motion graphics.
    #
    #   @return [MotionGraphicsConfiguration]
    #
    # @!attribute nielsen_configuration
    #   Nielsen configuration settings.
    #
    #   @return [NielsenConfiguration]
    #
    # @!attribute output_groups
    #   Placeholder documentation for __listOfOutputGroup
    #
    #   @return [Array<OutputGroup>]
    #
    # @!attribute timecode_config
    #   Contains settings used to acquire and adjust timecode information from inputs.
    #
    #   @return [TimecodeConfig]
    #
    # @!attribute video_descriptions
    #   Placeholder documentation for __listOfVideoDescription
    #
    #   @return [Array<VideoDescription>]
    #
    EncoderSettings = ::Struct.new(
      :audio_descriptions,
      :avail_blanking,
      :avail_configuration,
      :blackout_slate,
      :caption_descriptions,
      :feature_activations,
      :global_configuration,
      :motion_graphics_configuration,
      :nielsen_configuration,
      :output_groups,
      :timecode_config,
      :video_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Failover Condition settings. There can be multiple failover conditions inside AutomaticInputFailoverSettings.
    #
    # @!attribute failover_condition_settings
    #   Failover condition type-specific settings.
    #
    #   @return [FailoverConditionSettings]
    #
    FailoverCondition = ::Struct.new(
      :failover_condition_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings for one failover condition.
    #
    # @!attribute audio_silence_settings
    #   MediaLive will perform a failover if the specified audio selector is silent for the specified period.
    #
    #   @return [AudioSilenceFailoverSettings]
    #
    # @!attribute input_loss_settings
    #   MediaLive will perform a failover if content is not detected in this input for the specified period.
    #
    #   @return [InputLossFailoverSettings]
    #
    # @!attribute video_black_settings
    #   MediaLive will perform a failover if content is considered black for the specified period.
    #
    #   @return [VideoBlackFailoverSettings]
    #
    FailoverConditionSettings = ::Struct.new(
      :audio_silence_settings,
      :input_loss_settings,
      :video_black_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Feature Activations
    #
    # @!attribute input_prepare_schedule_actions
    #   Enables the Input Prepare feature. You can create Input Prepare actions in the schedule only if this feature is enabled.
    #   If you disable the feature on an existing schedule, make sure that you first delete all input prepare actions from the schedule.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    FeatureActivations = ::Struct.new(
      :input_prepare_schedule_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FeatureActivationsInputPrepareScheduleActions
    #
    module FeatureActivationsInputPrepareScheduleActions
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for FecOutputIncludeFec
    #
    module FecOutputIncludeFec
      # No documentation available.
      #
      COLUMN = "COLUMN"

      # No documentation available.
      #
      COLUMN_AND_ROW = "COLUMN_AND_ROW"
    end

    # Fec Output Settings
    #
    # @!attribute column_depth
    #   Parameter D from SMPTE 2022-1. The height of the FEC protection matrix.  The number of transport stream packets per column error correction packet. Must be between 4 and 20, inclusive.
    #
    #   @return [Integer]
    #
    # @!attribute include_fec
    #   Enables column only or column and row based FEC
    #
    #   Enum, one of: ["COLUMN", "COLUMN_AND_ROW"]
    #
    #   @return [String]
    #
    # @!attribute row_length
    #   Parameter L from SMPTE 2022-1. The width of the FEC protection matrix.  Must be between 1 and 20, inclusive. If only Column FEC is used, then larger values increase robustness.  If Row FEC is used, then this is the number of transport stream packets per row error correction packet, and the value must be between 4 and 20, inclusive, if includeFec is columnAndRow. If includeFec is column, this value must be 1 to 20, inclusive.
    #
    #   @return [Integer]
    #
    FecOutputSettings = ::Struct.new(
      :column_depth,
      :include_fec,
      :row_length,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.column_depth ||= 0
        self.row_length ||= 0
      end
    end

    # Includes enum constants for FixedAfd
    #
    module FixedAfd
      # No documentation available.
      #
      AFD_0000 = "AFD_0000"

      # No documentation available.
      #
      AFD_0010 = "AFD_0010"

      # No documentation available.
      #
      AFD_0011 = "AFD_0011"

      # No documentation available.
      #
      AFD_0100 = "AFD_0100"

      # No documentation available.
      #
      AFD_1000 = "AFD_1000"

      # No documentation available.
      #
      AFD_1001 = "AFD_1001"

      # No documentation available.
      #
      AFD_1010 = "AFD_1010"

      # No documentation available.
      #
      AFD_1011 = "AFD_1011"

      # No documentation available.
      #
      AFD_1101 = "AFD_1101"

      # No documentation available.
      #
      AFD_1110 = "AFD_1110"

      # No documentation available.
      #
      AFD_1111 = "AFD_1111"
    end

    # Start time for the action.
    #
    # @!attribute time
    #   Start time for the action to start in the channel. (Not the time for the action to be added to the schedule: actions are always added to the schedule immediately.) UTC format: yyyy-mm-ddThh:mm:ss.nnnZ. All the letters are digits (for example, mm might be 01) except for the two constants "T" for time and "Z" for "UTC format".
    #
    #   @return [String]
    #
    FixedModeScheduleActionStartSettings = ::Struct.new(
      :time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Fmp4 Hls Settings
    #
    # @!attribute audio_rendition_sets
    #   List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
    #
    #   @return [String]
    #
    # @!attribute nielsen_id3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #
    #   Enum, one of: ["NO_PASSTHROUGH", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_behavior
    #   When set to passthrough, timed metadata is passed through from input to output.
    #
    #   Enum, one of: ["NO_PASSTHROUGH", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    Fmp4HlsSettings = ::Struct.new(
      :audio_rendition_sets,
      :nielsen_id3_behavior,
      :timed_metadata_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Fmp4NielsenId3Behavior
    #
    module Fmp4NielsenId3Behavior
      # No documentation available.
      #
      NO_PASSTHROUGH = "NO_PASSTHROUGH"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Includes enum constants for Fmp4TimedMetadataBehavior
    #
    module Fmp4TimedMetadataBehavior
      # No documentation available.
      #
      NO_PASSTHROUGH = "NO_PASSTHROUGH"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Settings to specify if an action follows another.
    #
    # @!attribute follow_point
    #   Identifies whether this action starts relative to the start or relative to the end of the reference action.
    #
    #   Enum, one of: ["END", "START"]
    #
    #   @return [String]
    #
    # @!attribute reference_action_name
    #   The action name of another action that this one refers to.
    #
    #   @return [String]
    #
    FollowModeScheduleActionStartSettings = ::Struct.new(
      :follow_point,
      :reference_action_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FollowPoint
    #
    module FollowPoint
      # No documentation available.
      #
      END = "END"

      # No documentation available.
      #
      START = "START"
    end

    # Placeholder documentation for ForbiddenException
    #
    # @!attribute message
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Frame Capture Cdn Settings
    #
    # @!attribute frame_capture_s3_settings
    #   Frame Capture S3 Settings
    #
    #   @return [FrameCaptureS3Settings]
    #
    FrameCaptureCdnSettings = ::Struct.new(
      :frame_capture_s3_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Frame Capture Group Settings
    #
    # @!attribute destination
    #   The destination for the frame capture files. Either the URI for an Amazon S3 bucket and object, plus a file name prefix (for example, s3ssl://sportsDelivery/highlights/20180820/curling-) or the URI for a MediaStore container, plus a file name prefix (for example, mediastoressl://sportsDelivery/20180820/curling-). The final file names consist of the prefix from the destination field (for example, "curling-") + name modifier + the counter (5 digits, starting from 00001) + extension (which is always .jpg).  For example, curling-low.00001.jpg
    #
    #   @return [OutputLocationRef]
    #
    # @!attribute frame_capture_cdn_settings
    #   Parameters that control interactions with the CDN.
    #
    #   @return [FrameCaptureCdnSettings]
    #
    FrameCaptureGroupSettings = ::Struct.new(
      :destination,
      :frame_capture_cdn_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Frame Capture Hls Settings
    #
    FrameCaptureHlsSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FrameCaptureIntervalUnit
    #
    module FrameCaptureIntervalUnit
      # No documentation available.
      #
      MILLISECONDS = "MILLISECONDS"

      # No documentation available.
      #
      SECONDS = "SECONDS"
    end

    # Frame Capture Output Settings
    #
    # @!attribute name_modifier
    #   Required if the output group contains more than one output. This modifier forms part of the output file name.
    #
    #   @return [String]
    #
    FrameCaptureOutputSettings = ::Struct.new(
      :name_modifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Frame Capture S3 Settings
    #
    # @!attribute canned_acl
    #   Specify the canned ACL to apply to each S3 request. Defaults to none.
    #
    #   Enum, one of: ["AUTHENTICATED_READ", "BUCKET_OWNER_FULL_CONTROL", "BUCKET_OWNER_READ", "PUBLIC_READ"]
    #
    #   @return [String]
    #
    FrameCaptureS3Settings = ::Struct.new(
      :canned_acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Frame Capture Settings
    #
    # @!attribute capture_interval
    #   The frequency at which to capture frames for inclusion in the output. May be specified in either seconds or milliseconds, as specified by captureIntervalUnits.
    #
    #   @return [Integer]
    #
    # @!attribute capture_interval_units
    #   Unit for the frame capture interval.
    #
    #   Enum, one of: ["MILLISECONDS", "SECONDS"]
    #
    #   @return [String]
    #
    FrameCaptureSettings = ::Struct.new(
      :capture_interval,
      :capture_interval_units,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.capture_interval ||= 0
      end
    end

    # Placeholder documentation for GatewayTimeoutException
    #
    # @!attribute message
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    GatewayTimeoutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Global Configuration
    #
    # @!attribute initial_audio_gain
    #   Value to set the initial audio gain for the Live Event.
    #
    #   @return [Integer]
    #
    # @!attribute input_end_action
    #   Indicates the action to take when the current input completes (e.g. end-of-file). When switchAndLoopInputs is configured the encoder will restart at the beginning of the first input.  When "none" is configured the encoder will transcode either black, a solid color, or a user specified slate images per the "Input Loss Behavior" configuration until the next input switch occurs (which is controlled through the Channel Schedule API).
    #
    #   Enum, one of: ["NONE", "SWITCH_AND_LOOP_INPUTS"]
    #
    #   @return [String]
    #
    # @!attribute input_loss_behavior
    #   Settings for system actions when input is lost.
    #
    #   @return [InputLossBehavior]
    #
    # @!attribute output_locking_mode
    #   Indicates how MediaLive pipelines are synchronized.
    #
    #   PIPELINE_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the other.
    #   EPOCH_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the Unix epoch.
    #
    #   Enum, one of: ["EPOCH_LOCKING", "PIPELINE_LOCKING"]
    #
    #   @return [String]
    #
    # @!attribute output_timing_source
    #   Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream.
    #
    #   Enum, one of: ["INPUT_CLOCK", "SYSTEM_CLOCK"]
    #
    #   @return [String]
    #
    # @!attribute support_low_framerate_inputs
    #   Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    GlobalConfiguration = ::Struct.new(
      :initial_audio_gain,
      :input_end_action,
      :input_loss_behavior,
      :output_locking_mode,
      :output_timing_source,
      :support_low_framerate_inputs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.initial_audio_gain ||= 0
      end
    end

    # Includes enum constants for GlobalConfigurationInputEndAction
    #
    module GlobalConfigurationInputEndAction
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SWITCH_AND_LOOP_INPUTS = "SWITCH_AND_LOOP_INPUTS"
    end

    # Includes enum constants for GlobalConfigurationLowFramerateInputs
    #
    module GlobalConfigurationLowFramerateInputs
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for GlobalConfigurationOutputLockingMode
    #
    module GlobalConfigurationOutputLockingMode
      # No documentation available.
      #
      EPOCH_LOCKING = "EPOCH_LOCKING"

      # No documentation available.
      #
      PIPELINE_LOCKING = "PIPELINE_LOCKING"
    end

    # Includes enum constants for GlobalConfigurationOutputTimingSource
    #
    module GlobalConfigurationOutputTimingSource
      # No documentation available.
      #
      INPUT_CLOCK = "INPUT_CLOCK"

      # No documentation available.
      #
      SYSTEM_CLOCK = "SYSTEM_CLOCK"
    end

    # Includes enum constants for H264AdaptiveQuantization
    #
    module H264AdaptiveQuantization
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      HIGHER = "HIGHER"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MAX = "MAX"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      OFF = "OFF"
    end

    # Includes enum constants for H264ColorMetadata
    #
    module H264ColorMetadata
      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      INSERT = "INSERT"
    end

    # H264 Color Space Settings
    #
    # @!attribute color_space_passthrough_settings
    #   Passthrough applies no color space conversion to the output
    #
    #   @return [ColorSpacePassthroughSettings]
    #
    # @!attribute rec601_settings
    #   Rec601 Settings
    #
    #   @return [Rec601Settings]
    #
    # @!attribute rec709_settings
    #   Rec709 Settings
    #
    #   @return [Rec709Settings]
    #
    H264ColorSpaceSettings = ::Struct.new(
      :color_space_passthrough_settings,
      :rec601_settings,
      :rec709_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
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

    # H264 Filter Settings
    #
    # @!attribute temporal_filter_settings
    #   Temporal Filter Settings
    #
    #   @return [TemporalFilterSettings]
    #
    H264FilterSettings = ::Struct.new(
      :temporal_filter_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for H264FlickerAq
    #
    module H264FlickerAq
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H264ForceFieldPictures
    #
    module H264ForceFieldPictures
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
    end

    # Includes enum constants for H264Level
    #
    module H264Level
      # No documentation available.
      #
      H264_LEVEL_1 = "H264_LEVEL_1"

      # No documentation available.
      #
      H264_LEVEL_1_1 = "H264_LEVEL_1_1"

      # No documentation available.
      #
      H264_LEVEL_1_2 = "H264_LEVEL_1_2"

      # No documentation available.
      #
      H264_LEVEL_1_3 = "H264_LEVEL_1_3"

      # No documentation available.
      #
      H264_LEVEL_2 = "H264_LEVEL_2"

      # No documentation available.
      #
      H264_LEVEL_2_1 = "H264_LEVEL_2_1"

      # No documentation available.
      #
      H264_LEVEL_2_2 = "H264_LEVEL_2_2"

      # No documentation available.
      #
      H264_LEVEL_3 = "H264_LEVEL_3"

      # No documentation available.
      #
      H264_LEVEL_3_1 = "H264_LEVEL_3_1"

      # No documentation available.
      #
      H264_LEVEL_3_2 = "H264_LEVEL_3_2"

      # No documentation available.
      #
      H264_LEVEL_4 = "H264_LEVEL_4"

      # No documentation available.
      #
      H264_LEVEL_4_1 = "H264_LEVEL_4_1"

      # No documentation available.
      #
      H264_LEVEL_4_2 = "H264_LEVEL_4_2"

      # No documentation available.
      #
      H264_LEVEL_5 = "H264_LEVEL_5"

      # No documentation available.
      #
      H264_LEVEL_5_1 = "H264_LEVEL_5_1"

      # No documentation available.
      #
      H264_LEVEL_5_2 = "H264_LEVEL_5_2"

      # No documentation available.
      #
      H264_LEVEL_AUTO = "H264_LEVEL_AUTO"
    end

    # Includes enum constants for H264LookAheadRateControl
    #
    module H264LookAheadRateControl
      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"
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

    # Includes enum constants for H264Profile
    #
    module H264Profile
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

    # Includes enum constants for H264QualityLevel
    #
    module H264QualityLevel
      # No documentation available.
      #
      ENHANCED_QUALITY = "ENHANCED_QUALITY"

      # No documentation available.
      #
      STANDARD_QUALITY = "STANDARD_QUALITY"
    end

    # Includes enum constants for H264RateControlMode
    #
    module H264RateControlMode
      # No documentation available.
      #
      CBR = "CBR"

      # No documentation available.
      #
      MULTIPLEX = "MULTIPLEX"

      # No documentation available.
      #
      QVBR = "QVBR"

      # No documentation available.
      #
      VBR = "VBR"
    end

    # Includes enum constants for H264ScanType
    #
    module H264ScanType
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"
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
    end

    # H264 Settings
    #
    # @!attribute adaptive_quantization
    #   Enables or disables adaptive quantization, which is a technique MediaLive can apply to video on a frame-by-frame basis to produce more compression without losing quality. There are three types of adaptive quantization: flicker, spatial, and temporal. Set the field in one of these ways: Set to Auto. Recommended. For each type of AQ, MediaLive will determine if AQ is needed, and if so, the appropriate strength. Set a strength (a value other than Auto or Disable). This strength will apply to any of the AQ fields that you choose to enable. Set to Disabled to disable all types of adaptive quantization.
    #
    #   Enum, one of: ["AUTO", "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute afd_signaling
    #   Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
    #
    #   Enum, one of: ["AUTO", "FIXED", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute bitrate
    #   Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000.
    #
    #   @return [Integer]
    #
    # @!attribute buf_fill_pct
    #   Percentage of the buffer that should initially be filled (HRD buffer model).
    #
    #   @return [Integer]
    #
    # @!attribute buf_size
    #   Size of buffer (HRD buffer model) in bits.
    #
    #   @return [Integer]
    #
    # @!attribute color_metadata
    #   Includes colorspace metadata in the output.
    #
    #   Enum, one of: ["IGNORE", "INSERT"]
    #
    #   @return [String]
    #
    # @!attribute color_space_settings
    #   Color Space settings
    #
    #   @return [H264ColorSpaceSettings]
    #
    # @!attribute entropy_encoding
    #   Entropy encoding mode.  Use cabac (must be in Main or High profile) or cavlc.
    #
    #   Enum, one of: ["CABAC", "CAVLC"]
    #
    #   @return [String]
    #
    # @!attribute filter_settings
    #   Optional filters that you can apply to an encode.
    #
    #   @return [H264FilterSettings]
    #
    # @!attribute fixed_afd
    #   Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
    #
    #   Enum, one of: ["AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"]
    #
    #   @return [String]
    #
    # @!attribute flicker_aq
    #   Flicker AQ makes adjustments within each frame to reduce flicker or 'pop' on I-frames. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if flicker AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply flicker AQ using the specified strength. Disabled: MediaLive won't apply flicker AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply flicker AQ.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute force_field_pictures
    #   This setting applies only when scan type is "interlaced." It controls whether coding is performed on a field basis or on a frame basis. (When the video is progressive, the coding is always performed on a frame basis.)
    #   enabled: Force MediaLive to code on a field basis, so that odd and even sets of fields are coded separately.
    #   disabled: Code the two sets of fields separately (on a field basis) or together (on a frame basis using PAFF), depending on what is most appropriate for the content.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_control
    #   This field indicates how the output video frame rate is specified.  If "specified" is selected then the output video frame rate is determined by framerateNumerator and framerateDenominator, else if "initializeFromSource" is selected then the output video frame rate will be set equal to the input video frame rate of the first input.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   Framerate denominator.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
    #
    #   @return [Integer]
    #
    # @!attribute gop_b_reference
    #   Documentation update needed
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
    # @!attribute gop_num_b_frames
    #   Number of B-frames between reference frames.
    #
    #   @return [Integer]
    #
    # @!attribute gop_size
    #   GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits.
    #   If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1.
    #   If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.
    #
    #   @return [Float]
    #
    # @!attribute gop_size_units
    #   Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
    #
    #   Enum, one of: ["FRAMES", "SECONDS"]
    #
    #   @return [String]
    #
    # @!attribute level
    #   H.264 Level.
    #
    #   Enum, one of: ["H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"]
    #
    #   @return [String]
    #
    # @!attribute look_ahead_rate_control
    #   Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
    #
    #   Enum, one of: ["HIGH", "LOW", "MEDIUM"]
    #
    #   @return [String]
    #
    # @!attribute max_bitrate
    #   For QVBR: See the tooltip for Quality level
    #
    #   For VBR: Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
    #
    #   @return [Integer]
    #
    # @!attribute min_i_interval
    #   Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
    #
    #   @return [Integer]
    #
    # @!attribute num_ref_frames
    #   Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
    #
    #   @return [Integer]
    #
    # @!attribute par_control
    #   This field indicates how the output pixel aspect ratio is specified.  If "specified" is selected then the output video pixel aspect ratio is determined by parNumerator and parDenominator, else if "initializeFromSource" is selected then the output pixsel aspect ratio will be set equal to the input video pixel aspect ratio of the first input.
    #
    #   Enum, one of: ["INITIALIZE_FROM_SOURCE", "SPECIFIED"]
    #
    #   @return [String]
    #
    # @!attribute par_denominator
    #   Pixel Aspect Ratio denominator.
    #
    #   @return [Integer]
    #
    # @!attribute par_numerator
    #   Pixel Aspect Ratio numerator.
    #
    #   @return [Integer]
    #
    # @!attribute profile
    #   H.264 Profile.
    #
    #   Enum, one of: ["BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"]
    #
    #   @return [String]
    #
    # @!attribute quality_level
    #   Leave as STANDARD_QUALITY or choose a different value (which might result in additional costs to run the channel).
    #   - ENHANCED_QUALITY: Produces a slightly better video quality without an increase in the bitrate. Has an effect only when the Rate control mode is QVBR or CBR. If this channel is in a MediaLive multiplex, the value must be ENHANCED_QUALITY.
    #   - STANDARD_QUALITY: Valid for any Rate control mode.
    #
    #   Enum, one of: ["ENHANCED_QUALITY", "STANDARD_QUALITY"]
    #
    #   @return [String]
    #
    # @!attribute qvbr_quality_level
    #   Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. You can set a target quality or you can let MediaLive determine the best quality. To set a target quality, enter values in the QVBR quality level field and the Max bitrate field. Enter values that suit your most important viewing devices. Recommended values are:
    #   - Primary screen: Quality level: 8 to 10. Max bitrate: 4M
    #   - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M
    #   - Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
    #   To let MediaLive decide, leave the QVBR quality level field empty, and in Max bitrate enter the maximum rate you want in the video. For more information, see the section called "Video - rate control mode" in the MediaLive user guide
    #
    #   @return [Integer]
    #
    # @!attribute rate_control_mode
    #   Rate control mode.
    #
    #   QVBR: Quality will match the specified quality level except when it is constrained by the
    #   maximum bitrate.  Recommended if you or your viewers pay for bandwidth.
    #
    #   VBR: Quality and bitrate vary, depending on the video complexity. Recommended instead of QVBR
    #   if you want to maintain a specific average bitrate over the duration of the channel.
    #
    #   CBR: Quality varies, depending on the video complexity. Recommended only if you distribute
    #   your assets to devices that cannot handle variable bitrates.
    #
    #   Multiplex: This rate control mode is only supported (and is required) when the video is being
    #   delivered to a MediaLive Multiplex in which case the rate control configuration is controlled
    #   by the properties within the Multiplex Program.
    #
    #   Enum, one of: ["CBR", "MULTIPLEX", "QVBR", "VBR"]
    #
    #   @return [String]
    #
    # @!attribute scan_type
    #   Sets the scan type of the output to progressive or top-field-first interlaced.
    #
    #   Enum, one of: ["INTERLACED", "PROGRESSIVE"]
    #
    #   @return [String]
    #
    # @!attribute scene_change_detect
    #   Scene change detection.
    #
    #   - On: inserts I-frames when scene change is detected.
    #   - Off: does not force an I-frame when scene change is detected.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #   This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
    #
    #   @return [Integer]
    #
    # @!attribute softness
    #   Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.  If not set to zero, must be greater than 15.
    #
    #   @return [Integer]
    #
    # @!attribute spatial_aq
    #   Spatial AQ makes adjustments within each frame based on spatial variation of content complexity. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if spatial AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply spatial AQ using the specified strength. Disabled: MediaLive won't apply spatial AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply spatial AQ.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute subgop_length
    #   If set to fixed, use gopNumBFrames B-frames per sub-GOP. If set to dynamic, optimize the number of B-frames used for each sub-GOP to improve visual quality.
    #
    #   Enum, one of: ["DYNAMIC", "FIXED"]
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
    # @!attribute temporal_aq
    #   Temporal makes adjustments within each frame based on temporal variation of content complexity. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if temporal AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply temporal AQ using the specified strength. Disabled: MediaLive won't apply temporal AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply temporal AQ.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute timecode_insertion
    #   Determines how timecodes should be inserted into the video elementary stream.
    #   - 'disabled': Do not include timecodes
    #   - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
    #
    #   Enum, one of: ["DISABLED", "PIC_TIMING_SEI"]
    #
    #   @return [String]
    #
    H264Settings = ::Struct.new(
      :adaptive_quantization,
      :afd_signaling,
      :bitrate,
      :buf_fill_pct,
      :buf_size,
      :color_metadata,
      :color_space_settings,
      :entropy_encoding,
      :filter_settings,
      :fixed_afd,
      :flicker_aq,
      :force_field_pictures,
      :framerate_control,
      :framerate_denominator,
      :framerate_numerator,
      :gop_b_reference,
      :gop_closed_cadence,
      :gop_num_b_frames,
      :gop_size,
      :gop_size_units,
      :level,
      :look_ahead_rate_control,
      :max_bitrate,
      :min_i_interval,
      :num_ref_frames,
      :par_control,
      :par_denominator,
      :par_numerator,
      :profile,
      :quality_level,
      :qvbr_quality_level,
      :rate_control_mode,
      :scan_type,
      :scene_change_detect,
      :slices,
      :softness,
      :spatial_aq,
      :subgop_length,
      :syntax,
      :temporal_aq,
      :timecode_insertion,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.buf_fill_pct ||= 0
        self.buf_size ||= 0
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.gop_closed_cadence ||= 0
        self.gop_num_b_frames ||= 0
        self.gop_size ||= 0
        self.max_bitrate ||= 0
        self.min_i_interval ||= 0
        self.num_ref_frames ||= 0
        self.par_denominator ||= 0
        self.par_numerator ||= 0
        self.qvbr_quality_level ||= 0
        self.slices ||= 0
        self.softness ||= 0
      end
    end

    # Includes enum constants for H264SpatialAq
    #
    module H264SpatialAq
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H264SubGopLength
    #
    module H264SubGopLength
      # No documentation available.
      #
      DYNAMIC = "DYNAMIC"

      # No documentation available.
      #
      FIXED = "FIXED"
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

    # Includes enum constants for H264TemporalAq
    #
    module H264TemporalAq
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for H264TimecodeInsertionBehavior
    #
    module H264TimecodeInsertionBehavior
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      PIC_TIMING_SEI = "PIC_TIMING_SEI"
    end

    # Includes enum constants for H265AdaptiveQuantization
    #
    module H265AdaptiveQuantization
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      HIGHER = "HIGHER"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MAX = "MAX"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      OFF = "OFF"
    end

    # Includes enum constants for H265AlternativeTransferFunction
    #
    module H265AlternativeTransferFunction
      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      OMIT = "OMIT"
    end

    # Includes enum constants for H265ColorMetadata
    #
    module H265ColorMetadata
      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      INSERT = "INSERT"
    end

    # H265 Color Space Settings
    #
    # @!attribute color_space_passthrough_settings
    #   Passthrough applies no color space conversion to the output
    #
    #   @return [ColorSpacePassthroughSettings]
    #
    # @!attribute hdr10_settings
    #   Hdr10 Settings
    #
    #   @return [Hdr10Settings]
    #
    # @!attribute rec601_settings
    #   Rec601 Settings
    #
    #   @return [Rec601Settings]
    #
    # @!attribute rec709_settings
    #   Rec709 Settings
    #
    #   @return [Rec709Settings]
    #
    H265ColorSpaceSettings = ::Struct.new(
      :color_space_passthrough_settings,
      :hdr10_settings,
      :rec601_settings,
      :rec709_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # H265 Filter Settings
    #
    # @!attribute temporal_filter_settings
    #   Temporal Filter Settings
    #
    #   @return [TemporalFilterSettings]
    #
    H265FilterSettings = ::Struct.new(
      :temporal_filter_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for H265FlickerAq
    #
    module H265FlickerAq
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
    end

    # Includes enum constants for H265Level
    #
    module H265Level
      # No documentation available.
      #
      H265_LEVEL_1 = "H265_LEVEL_1"

      # No documentation available.
      #
      H265_LEVEL_2 = "H265_LEVEL_2"

      # No documentation available.
      #
      H265_LEVEL_2_1 = "H265_LEVEL_2_1"

      # No documentation available.
      #
      H265_LEVEL_3 = "H265_LEVEL_3"

      # No documentation available.
      #
      H265_LEVEL_3_1 = "H265_LEVEL_3_1"

      # No documentation available.
      #
      H265_LEVEL_4 = "H265_LEVEL_4"

      # No documentation available.
      #
      H265_LEVEL_4_1 = "H265_LEVEL_4_1"

      # No documentation available.
      #
      H265_LEVEL_5 = "H265_LEVEL_5"

      # No documentation available.
      #
      H265_LEVEL_5_1 = "H265_LEVEL_5_1"

      # No documentation available.
      #
      H265_LEVEL_5_2 = "H265_LEVEL_5_2"

      # No documentation available.
      #
      H265_LEVEL_6 = "H265_LEVEL_6"

      # No documentation available.
      #
      H265_LEVEL_6_1 = "H265_LEVEL_6_1"

      # No documentation available.
      #
      H265_LEVEL_6_2 = "H265_LEVEL_6_2"

      # No documentation available.
      #
      H265_LEVEL_AUTO = "H265_LEVEL_AUTO"
    end

    # Includes enum constants for H265LookAheadRateControl
    #
    module H265LookAheadRateControl
      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"
    end

    # Includes enum constants for H265Profile
    #
    module H265Profile
      # No documentation available.
      #
      MAIN = "MAIN"

      # No documentation available.
      #
      MAIN_10BIT = "MAIN_10BIT"
    end

    # Includes enum constants for H265RateControlMode
    #
    module H265RateControlMode
      # No documentation available.
      #
      CBR = "CBR"

      # No documentation available.
      #
      MULTIPLEX = "MULTIPLEX"

      # No documentation available.
      #
      QVBR = "QVBR"
    end

    # Includes enum constants for H265ScanType
    #
    module H265ScanType
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"
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
    end

    # H265 Settings
    #
    # @!attribute adaptive_quantization
    #   Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
    #
    #   Enum, one of: ["AUTO", "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute afd_signaling
    #   Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
    #
    #   Enum, one of: ["AUTO", "FIXED", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute alternative_transfer_function
    #   Whether or not EML should insert an Alternative Transfer Function SEI message to support backwards compatibility with non-HDR decoders and displays.
    #
    #   Enum, one of: ["INSERT", "OMIT"]
    #
    #   @return [String]
    #
    # @!attribute bitrate
    #   Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000.
    #
    #   @return [Integer]
    #
    # @!attribute buf_size
    #   Size of buffer (HRD buffer model) in bits.
    #
    #   @return [Integer]
    #
    # @!attribute color_metadata
    #   Includes colorspace metadata in the output.
    #
    #   Enum, one of: ["IGNORE", "INSERT"]
    #
    #   @return [String]
    #
    # @!attribute color_space_settings
    #   Color Space settings
    #
    #   @return [H265ColorSpaceSettings]
    #
    # @!attribute filter_settings
    #   Optional filters that you can apply to an encode.
    #
    #   @return [H265FilterSettings]
    #
    # @!attribute fixed_afd
    #   Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
    #
    #   Enum, one of: ["AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"]
    #
    #   @return [String]
    #
    # @!attribute flicker_aq
    #   If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   Framerate denominator.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
    #
    #   @return [Integer]
    #
    # @!attribute gop_closed_cadence
    #   Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
    #
    #   @return [Integer]
    #
    # @!attribute gop_size
    #   GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits.
    #   If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1.
    #   If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.
    #
    #   @return [Float]
    #
    # @!attribute gop_size_units
    #   Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
    #
    #   Enum, one of: ["FRAMES", "SECONDS"]
    #
    #   @return [String]
    #
    # @!attribute level
    #   H.265 Level.
    #
    #   Enum, one of: ["H265_LEVEL_1", "H265_LEVEL_2", "H265_LEVEL_2_1", "H265_LEVEL_3", "H265_LEVEL_3_1", "H265_LEVEL_4", "H265_LEVEL_4_1", "H265_LEVEL_5", "H265_LEVEL_5_1", "H265_LEVEL_5_2", "H265_LEVEL_6", "H265_LEVEL_6_1", "H265_LEVEL_6_2", "H265_LEVEL_AUTO"]
    #
    #   @return [String]
    #
    # @!attribute look_ahead_rate_control
    #   Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
    #
    #   Enum, one of: ["HIGH", "LOW", "MEDIUM"]
    #
    #   @return [String]
    #
    # @!attribute max_bitrate
    #   For QVBR: See the tooltip for Quality level
    #
    #   @return [Integer]
    #
    # @!attribute min_i_interval
    #   Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
    #
    #   @return [Integer]
    #
    # @!attribute par_denominator
    #   Pixel Aspect Ratio denominator.
    #
    #   @return [Integer]
    #
    # @!attribute par_numerator
    #   Pixel Aspect Ratio numerator.
    #
    #   @return [Integer]
    #
    # @!attribute profile
    #   H.265 Profile.
    #
    #   Enum, one of: ["MAIN", "MAIN_10BIT"]
    #
    #   @return [String]
    #
    # @!attribute qvbr_quality_level
    #   Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. Set values for the QVBR quality level field and Max bitrate field that suit your most important viewing devices. Recommended values are:
    #   - Primary screen: Quality level: 8 to 10. Max bitrate: 4M
    #   - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M
    #   - Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
    #
    #   @return [Integer]
    #
    # @!attribute rate_control_mode
    #   Rate control mode.
    #
    #   QVBR: Quality will match the specified quality level except when it is constrained by the
    #   maximum bitrate.  Recommended if you or your viewers pay for bandwidth.
    #
    #   CBR: Quality varies, depending on the video complexity. Recommended only if you distribute
    #   your assets to devices that cannot handle variable bitrates.
    #
    #   Multiplex: This rate control mode is only supported (and is required) when the video is being
    #   delivered to a MediaLive Multiplex in which case the rate control configuration is controlled
    #   by the properties within the Multiplex Program.
    #
    #   Enum, one of: ["CBR", "MULTIPLEX", "QVBR"]
    #
    #   @return [String]
    #
    # @!attribute scan_type
    #   Sets the scan type of the output to progressive or top-field-first interlaced.
    #
    #   Enum, one of: ["INTERLACED", "PROGRESSIVE"]
    #
    #   @return [String]
    #
    # @!attribute scene_change_detect
    #   Scene change detection.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #   This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
    #
    #   @return [Integer]
    #
    # @!attribute tier
    #   H.265 Tier.
    #
    #   Enum, one of: ["HIGH", "MAIN"]
    #
    #   @return [String]
    #
    # @!attribute timecode_insertion
    #   Determines how timecodes should be inserted into the video elementary stream.
    #   - 'disabled': Do not include timecodes
    #   - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
    #
    #   Enum, one of: ["DISABLED", "PIC_TIMING_SEI"]
    #
    #   @return [String]
    #
    H265Settings = ::Struct.new(
      :adaptive_quantization,
      :afd_signaling,
      :alternative_transfer_function,
      :bitrate,
      :buf_size,
      :color_metadata,
      :color_space_settings,
      :filter_settings,
      :fixed_afd,
      :flicker_aq,
      :framerate_denominator,
      :framerate_numerator,
      :gop_closed_cadence,
      :gop_size,
      :gop_size_units,
      :level,
      :look_ahead_rate_control,
      :max_bitrate,
      :min_i_interval,
      :par_denominator,
      :par_numerator,
      :profile,
      :qvbr_quality_level,
      :rate_control_mode,
      :scan_type,
      :scene_change_detect,
      :slices,
      :tier,
      :timecode_insertion,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.buf_size ||= 0
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.gop_closed_cadence ||= 0
        self.gop_size ||= 0
        self.max_bitrate ||= 0
        self.min_i_interval ||= 0
        self.par_denominator ||= 0
        self.par_numerator ||= 0
        self.qvbr_quality_level ||= 0
        self.slices ||= 0
      end
    end

    # Includes enum constants for H265Tier
    #
    module H265Tier
      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      MAIN = "MAIN"
    end

    # Includes enum constants for H265TimecodeInsertionBehavior
    #
    module H265TimecodeInsertionBehavior
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      PIC_TIMING_SEI = "PIC_TIMING_SEI"
    end

    # Hdr10 Settings
    #
    # @!attribute max_cll
    #   Maximum Content Light Level
    #   An integer metadata value defining the maximum light level, in nits,
    #   of any single pixel within an encoded HDR video stream or file.
    #
    #   @return [Integer]
    #
    # @!attribute max_fall
    #   Maximum Frame Average Light Level
    #   An integer metadata value defining the maximum average light level, in nits,
    #   for any single frame within an encoded HDR video stream or file.
    #
    #   @return [Integer]
    #
    Hdr10Settings = ::Struct.new(
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

    # Includes enum constants for HlsAdMarkers
    #
    module HlsAdMarkers
      # No documentation available.
      #
      ADOBE = "ADOBE"

      # No documentation available.
      #
      ELEMENTAL = "ELEMENTAL"

      # No documentation available.
      #
      ELEMENTAL_SCTE35 = "ELEMENTAL_SCTE35"
    end

    # Includes enum constants for HlsAkamaiHttpTransferMode
    #
    module HlsAkamaiHttpTransferMode
      # No documentation available.
      #
      CHUNKED = "CHUNKED"

      # No documentation available.
      #
      NON_CHUNKED = "NON_CHUNKED"
    end

    # Hls Akamai Settings
    #
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if the connection is lost.
    #
    #   @return [Integer]
    #
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #
    #   @return [Integer]
    #
    # @!attribute http_transfer_mode
    #   Specify whether or not to use chunked transfer encoding to Akamai. User should contact Akamai to enable this feature.
    #
    #   Enum, one of: ["CHUNKED", "NON_CHUNKED"]
    #
    #   @return [String]
    #
    # @!attribute num_retries
    #   Number of retry attempts that will be made before the Live Event is put into an error state.
    #
    #   @return [Integer]
    #
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #
    #   @return [Integer]
    #
    # @!attribute salt
    #   Salt for authenticated Akamai.
    #
    #   @return [String]
    #
    # @!attribute token
    #   Token parameter for authenticated akamai. If not specified, _gda_ is used.
    #
    #   @return [String]
    #
    HlsAkamaiSettings = ::Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :http_transfer_mode,
      :num_retries,
      :restart_delay,
      :salt,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.connection_retry_interval ||= 0
        self.filecache_duration ||= 0
        self.num_retries ||= 0
        self.restart_delay ||= 0
      end
    end

    # Hls Basic Put Settings
    #
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if the connection is lost.
    #
    #   @return [Integer]
    #
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #
    #   @return [Integer]
    #
    # @!attribute num_retries
    #   Number of retry attempts that will be made before the Live Event is put into an error state.
    #
    #   @return [Integer]
    #
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #
    #   @return [Integer]
    #
    HlsBasicPutSettings = ::Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :num_retries,
      :restart_delay,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.connection_retry_interval ||= 0
        self.filecache_duration ||= 0
        self.num_retries ||= 0
        self.restart_delay ||= 0
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
      NONE = "NONE"

      # No documentation available.
      #
      OMIT = "OMIT"
    end

    # Hls Cdn Settings
    #
    # @!attribute hls_akamai_settings
    #   Hls Akamai Settings
    #
    #   @return [HlsAkamaiSettings]
    #
    # @!attribute hls_basic_put_settings
    #   Hls Basic Put Settings
    #
    #   @return [HlsBasicPutSettings]
    #
    # @!attribute hls_media_store_settings
    #   Hls Media Store Settings
    #
    #   @return [HlsMediaStoreSettings]
    #
    # @!attribute hls_s3_settings
    #   Hls S3 Settings
    #
    #   @return [HlsS3Settings]
    #
    # @!attribute hls_webdav_settings
    #   Hls Webdav Settings
    #
    #   @return [HlsWebdavSettings]
    #
    HlsCdnSettings = ::Struct.new(
      :hls_akamai_settings,
      :hls_basic_put_settings,
      :hls_media_store_settings,
      :hls_s3_settings,
      :hls_webdav_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
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
      RFC_4281 = "RFC_4281"

      # No documentation available.
      #
      RFC_6381 = "RFC_6381"
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

    # Includes enum constants for HlsDiscontinuityTags
    #
    module HlsDiscontinuityTags
      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      NEVER_INSERT = "NEVER_INSERT"
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

    # Hls Group Settings
    #
    # @!attribute ad_markers
    #   Choose one or more ad marker types to pass SCTE35 signals through to this group of Apple HLS outputs.
    #
    #   @return [Array<String>]
    #
    # @!attribute base_url_content
    #   A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
    #
    #   @return [String]
    #
    # @!attribute base_url_content1
    #   Optional. One value per output group.
    #
    #   This field is required only if you are completing Base URL content A, and the downstream system has notified you that the media files for pipeline 1 of all outputs are in a location different from the media files for pipeline 0.
    #
    #   @return [String]
    #
    # @!attribute base_url_manifest
    #   A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
    #
    #   @return [String]
    #
    # @!attribute base_url_manifest1
    #   Optional. One value per output group.
    #
    #   Complete this field only if you are completing Base URL manifest A, and the downstream system has notified you that the child manifest files for pipeline 1 of all outputs are in a location different from the child manifest files for pipeline 0.
    #
    #   @return [String]
    #
    # @!attribute caption_language_mappings
    #   Mapping of up to 4 caption channels to caption languages.  Is only meaningful if captionLanguageSetting is set to "insert".
    #
    #   @return [Array<CaptionLanguageMapping>]
    #
    # @!attribute caption_language_setting
    #   Applies only to 608 Embedded output captions.
    #   insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions.
    #   none: Include CLOSED-CAPTIONS=NONE line in the manifest.
    #   omit: Omit any CLOSED-CAPTIONS line from the manifest.
    #
    #   Enum, one of: ["INSERT", "NONE", "OMIT"]
    #
    #   @return [String]
    #
    # @!attribute client_cache
    #   When set to "disabled", sets the  EXT-X-ALLOW-CACHE:no tag in the manifest, which prevents clients from saving media segments for later replay.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute codec_specification
    #   Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
    #
    #   Enum, one of: ["RFC_4281", "RFC_6381"]
    #
    #   @return [String]
    #
    # @!attribute constant_iv
    #   For use with encryptionType. This is a 128-bit, 16-byte hex value represented by a 32-character text string. If ivSource is set to "explicit" then this parameter is required and is used as the IV for encryption.
    #
    #   @return [String]
    #
    # @!attribute destination
    #   A directory or HTTP destination for the HLS segments, manifest files, and encryption keys (if enabled).
    #
    #   @return [OutputLocationRef]
    #
    # @!attribute directory_structure
    #   Place segments in subdirectories.
    #
    #   Enum, one of: ["SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"]
    #
    #   @return [String]
    #
    # @!attribute discontinuity_tags
    #   Specifies whether to insert EXT-X-DISCONTINUITY tags in the HLS child manifests for this output group.
    #   Typically, choose Insert because these tags are required in the manifest (according to the HLS specification) and serve an important purpose.
    #   Choose Never Insert only if the downstream system is doing real-time failover (without using the MediaLive automatic failover feature) and only if that downstream system has advised you to exclude the tags.
    #
    #   Enum, one of: ["INSERT", "NEVER_INSERT"]
    #
    #   @return [String]
    #
    # @!attribute encryption_type
    #   Encrypts the segments with the given encryption scheme.  Exclude this parameter if no encryption is desired.
    #
    #   Enum, one of: ["AES128", "SAMPLE_AES"]
    #
    #   @return [String]
    #
    # @!attribute hls_cdn_settings
    #   Parameters that control interactions with the CDN.
    #
    #   @return [HlsCdnSettings]
    #
    # @!attribute hls_id3_segment_tagging
    #   State of HLS ID3 Segment Tagging
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute i_frame_only_playlists
    #   DISABLED: Do not create an I-frame-only manifest, but do create the master and media manifests (according to the Output Selection field).
    #
    #   STANDARD: Create an I-frame-only manifest for each output that contains video, as well as the other manifests (according to the Output Selection field). The I-frame manifest contains a  EXT-X-I-FRAMES-ONLY tag to indicate it is I-frame only, and one or more  EXT-X-BYTERANGE entries identifying the I-frame position. For example,  EXT-X-BYTERANGE:160364@1461888"
    #
    #   Enum, one of: ["DISABLED", "STANDARD"]
    #
    #   @return [String]
    #
    # @!attribute incomplete_segment_behavior
    #   Specifies whether to include the final (incomplete) segment in the media output when the pipeline stops producing output because of a channel stop, a channel pause or a loss of input to the pipeline.
    #   Auto means that MediaLive decides whether to include the final segment, depending on the channel class and the types of output groups.
    #   Suppress means to never include the incomplete segment. We recommend you choose Auto and let MediaLive control the behavior.
    #
    #   Enum, one of: ["AUTO", "SUPPRESS"]
    #
    #   @return [String]
    #
    # @!attribute index_n_segments
    #   Applies only if Mode field is LIVE.
    #
    #   Specifies the maximum number of segments in the media manifest file. After this maximum, older segments are removed from the media manifest. This number must be smaller than the number in the Keep Segments field.
    #
    #   @return [Integer]
    #
    # @!attribute input_loss_action
    #   Parameter that control output group behavior on input loss.
    #
    #   Enum, one of: ["EMIT_OUTPUT", "PAUSE_OUTPUT"]
    #
    #   @return [String]
    #
    # @!attribute iv_in_manifest
    #   For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If set to "include", IV is listed in the manifest, otherwise the IV is not in the manifest.
    #
    #   Enum, one of: ["EXCLUDE", "INCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute iv_source
    #   For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If this setting is "followsSegmentNumber", it will cause the IV to change every segment (to match the segment number). If this is set to "explicit", you must enter a constantIv value.
    #
    #   Enum, one of: ["EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"]
    #
    #   @return [String]
    #
    # @!attribute keep_segments
    #   Applies only if Mode field is LIVE.
    #
    #   Specifies the number of media segments to retain in the destination directory. This number should be bigger than indexNSegments (Num segments). We recommend (value = (2 x indexNsegments) + 1).
    #
    #   If this "keep segments" number is too low, the following might happen: the player is still reading a media manifest file that lists this segment, but that segment has been removed from the destination directory (as directed by indexNSegments). This situation would result in a 404 HTTP error on the player.
    #
    #   @return [Integer]
    #
    # @!attribute key_format
    #   The value specifies how the key is represented in the resource identified by the URI.  If parameter is absent, an implicit value of "identity" is used.  A reverse DNS string can also be given.
    #
    #   @return [String]
    #
    # @!attribute key_format_versions
    #   Either a single positive integer version value or a slash delimited list of version values (1/2/3).
    #
    #   @return [String]
    #
    # @!attribute key_provider_settings
    #   The key provider settings.
    #
    #   @return [KeyProviderSettings]
    #
    # @!attribute manifest_compression
    #   When set to gzip, compresses HLS playlist.
    #
    #   Enum, one of: ["GZIP", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute manifest_duration_format
    #   Indicates whether the output manifest should use floating point or integer values for segment duration.
    #
    #   Enum, one of: ["FLOATING_POINT", "INTEGER"]
    #
    #   @return [String]
    #
    # @!attribute min_segment_length
    #   When set, minimumSegmentLength is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
    #
    #   @return [Integer]
    #
    # @!attribute mode
    #   If "vod", all segments are indexed and kept permanently in the destination and manifest. If "live", only the number segments specified in keepSegments and indexNSegments are kept; newer segments replace older segments, which may prevent players from rewinding all the way to the beginning of the event.
    #
    #   VOD mode uses HLS EXT-X-PLAYLIST-TYPE of EVENT while the channel is running, converting it to a "VOD" type manifest on completion of the stream.
    #
    #   Enum, one of: ["LIVE", "VOD"]
    #
    #   @return [String]
    #
    # @!attribute output_selection
    #   MANIFESTS_AND_SEGMENTS: Generates manifests (master manifest, if applicable, and media manifests) for this output group.
    #
    #   VARIANT_MANIFESTS_AND_SEGMENTS: Generates media manifests for this output group, but not a master manifest.
    #
    #   SEGMENTS_ONLY: Does not generate any manifests for this output group.
    #
    #   Enum, one of: ["MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY", "VARIANT_MANIFESTS_AND_SEGMENTS"]
    #
    #   @return [String]
    #
    # @!attribute program_date_time
    #   Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated using the program date time clock.
    #
    #   Enum, one of: ["EXCLUDE", "INCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute program_date_time_clock
    #   Specifies the algorithm used to drive the HLS EXT-X-PROGRAM-DATE-TIME clock. Options include:
    #
    #   INITIALIZE_FROM_OUTPUT_TIMECODE: The PDT clock is initialized as a function of the first output timecode, then incremented by the EXTINF duration of each encoded segment.
    #
    #   SYSTEM_CLOCK: The PDT clock is initialized as a function of the UTC wall clock, then incremented by the EXTINF duration of each encoded segment. If the PDT clock diverges from the wall clock by more than 500ms, it is resynchronized to the wall clock.
    #
    #   Enum, one of: ["INITIALIZE_FROM_OUTPUT_TIMECODE", "SYSTEM_CLOCK"]
    #
    #   @return [String]
    #
    # @!attribute program_date_time_period
    #   Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
    #
    #   @return [Integer]
    #
    # @!attribute redundant_manifest
    #   ENABLED: The master manifest (.m3u8 file) for each pipeline includes information about both pipelines: first its own media files, then the media files of the other pipeline. This feature allows playout device that support stale manifest detection to switch from one manifest to the other, when the current manifest seems to be stale. There are still two destinations and two master manifests, but both master manifests reference the media files from both pipelines.
    #
    #   DISABLED: The master manifest (.m3u8 file) for each pipeline includes information about its own pipeline only.
    #
    #   For an HLS output group with MediaPackage as the destination, the DISABLED behavior is always followed. MediaPackage regenerates the manifests it serves to players so a redundant manifest from MediaLive is irrelevant.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute segment_length
    #   Length of MPEG-2 Transport Stream segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer.
    #
    #   @return [Integer]
    #
    # @!attribute segmentation_mode
    #   useInputSegmentation has been deprecated. The configured segment size is always used.
    #
    #   Enum, one of: ["USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"]
    #
    #   @return [String]
    #
    # @!attribute segments_per_subdirectory
    #   Number of segments to write to a subdirectory before starting a new one. directoryStructure must be subdirectoryPerStream for this setting to have an effect.
    #
    #   @return [Integer]
    #
    # @!attribute stream_inf_resolution
    #   Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
    #
    #   Enum, one of: ["EXCLUDE", "INCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_id3_frame
    #   Indicates ID3 frame that has the timecode.
    #
    #   Enum, one of: ["NONE", "PRIV", "TDRL"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_id3_period
    #   Timed Metadata interval in seconds.
    #
    #   @return [Integer]
    #
    # @!attribute timestamp_delta_milliseconds
    #   Provides an extra millisecond delta offset to fine tune the timestamps.
    #
    #   @return [Integer]
    #
    # @!attribute ts_file_mode
    #   SEGMENTED_FILES: Emit the program as segments - multiple .ts media files.
    #
    #   SINGLE_FILE: Applies only if Mode field is VOD. Emit the program as a single .ts media file. The media manifest includes  EXT-X-BYTERANGE tags to index segments for playback. A typical use for this value is when sending the output to AWS Elemental MediaConvert, which can accept only a single media file. Playback while the channel is running is not guaranteed due to HTTP server caching.
    #
    #   Enum, one of: ["SEGMENTED_FILES", "SINGLE_FILE"]
    #
    #   @return [String]
    #
    HlsGroupSettings = ::Struct.new(
      :ad_markers,
      :base_url_content,
      :base_url_content1,
      :base_url_manifest,
      :base_url_manifest1,
      :caption_language_mappings,
      :caption_language_setting,
      :client_cache,
      :codec_specification,
      :constant_iv,
      :destination,
      :directory_structure,
      :discontinuity_tags,
      :encryption_type,
      :hls_cdn_settings,
      :hls_id3_segment_tagging,
      :i_frame_only_playlists,
      :incomplete_segment_behavior,
      :index_n_segments,
      :input_loss_action,
      :iv_in_manifest,
      :iv_source,
      :keep_segments,
      :key_format,
      :key_format_versions,
      :key_provider_settings,
      :manifest_compression,
      :manifest_duration_format,
      :min_segment_length,
      :mode,
      :output_selection,
      :program_date_time,
      :program_date_time_clock,
      :program_date_time_period,
      :redundant_manifest,
      :segment_length,
      :segmentation_mode,
      :segments_per_subdirectory,
      :stream_inf_resolution,
      :timed_metadata_id3_frame,
      :timed_metadata_id3_period,
      :timestamp_delta_milliseconds,
      :ts_file_mode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.index_n_segments ||= 0
        self.keep_segments ||= 0
        self.min_segment_length ||= 0
        self.program_date_time_period ||= 0
        self.segment_length ||= 0
        self.segments_per_subdirectory ||= 0
        self.timed_metadata_id3_period ||= 0
        self.timestamp_delta_milliseconds ||= 0
      end
    end

    # Includes enum constants for HlsH265PackagingType
    #
    module HlsH265PackagingType
      # No documentation available.
      #
      HEV1 = "HEV1"

      # No documentation available.
      #
      HVC1 = "HVC1"
    end

    # Settings for the action to insert a user-defined ID3 tag in each HLS segment
    #
    # @!attribute tag
    #   ID3 tag to insert into each segment. Supports special keyword identifiers to substitute in segment-related values.\nSupported keyword identifiers: https://docs.aws.amazon.com/medialive/latest/ug/variable-data-identifiers.html
    #
    #   @return [String]
    #
    HlsId3SegmentTaggingScheduleActionSettings = ::Struct.new(
      :tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HlsId3SegmentTaggingState
    #
    module HlsId3SegmentTaggingState
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for HlsIncompleteSegmentBehavior
    #
    module HlsIncompleteSegmentBehavior
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      SUPPRESS = "SUPPRESS"
    end

    # Hls Input Settings
    #
    # @!attribute bandwidth
    #   When specified the HLS stream with the m3u8 BANDWIDTH that most closely matches this value will be chosen, otherwise the highest bandwidth stream in the m3u8 will be chosen.  The bitrate is specified in bits per second, as in an HLS manifest.
    #
    #   @return [Integer]
    #
    # @!attribute buffer_segments
    #   When specified, reading of the HLS input will begin this many buffer segments from the end (most recently written segment).  When not specified, the HLS input will begin with the first segment specified in the m3u8.
    #
    #   @return [Integer]
    #
    # @!attribute retries
    #   The number of consecutive times that attempts to read a manifest or segment must fail before the input is considered unavailable.
    #
    #   @return [Integer]
    #
    # @!attribute retry_interval
    #   The number of seconds between retries when an attempt to read a manifest or segment fails.
    #
    #   @return [Integer]
    #
    # @!attribute scte35_source
    #   Identifies the source for the SCTE-35 messages that MediaLive will ingest. Messages can be ingested from the content segments (in the stream) or from tags in the playlist (the HLS manifest). MediaLive ignores SCTE-35 information in the source that is not selected.
    #
    #   Enum, one of: ["MANIFEST", "SEGMENTS"]
    #
    #   @return [String]
    #
    HlsInputSettings = ::Struct.new(
      :bandwidth,
      :buffer_segments,
      :retries,
      :retry_interval,
      :scte35_source,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth ||= 0
        self.buffer_segments ||= 0
        self.retries ||= 0
        self.retry_interval ||= 0
      end
    end

    # Includes enum constants for HlsIvInManifest
    #
    module HlsIvInManifest
      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"

      # No documentation available.
      #
      INCLUDE = "INCLUDE"
    end

    # Includes enum constants for HlsIvSource
    #
    module HlsIvSource
      # No documentation available.
      #
      EXPLICIT = "EXPLICIT"

      # No documentation available.
      #
      FOLLOWS_SEGMENT_NUMBER = "FOLLOWS_SEGMENT_NUMBER"
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

    # Hls Media Store Settings
    #
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if the connection is lost.
    #
    #   @return [Integer]
    #
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #
    #   @return [Integer]
    #
    # @!attribute media_store_storage_class
    #   When set to temporal, output files are stored in non-persistent memory for faster reading and writing.
    #
    #   Enum, one of: ["TEMPORAL"]
    #
    #   @return [String]
    #
    # @!attribute num_retries
    #   Number of retry attempts that will be made before the Live Event is put into an error state.
    #
    #   @return [Integer]
    #
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #
    #   @return [Integer]
    #
    HlsMediaStoreSettings = ::Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :media_store_storage_class,
      :num_retries,
      :restart_delay,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.connection_retry_interval ||= 0
        self.filecache_duration ||= 0
        self.num_retries ||= 0
        self.restart_delay ||= 0
      end
    end

    # Includes enum constants for HlsMediaStoreStorageClass
    #
    module HlsMediaStoreStorageClass
      # No documentation available.
      #
      TEMPORAL = "TEMPORAL"
    end

    # Includes enum constants for HlsMode
    #
    module HlsMode
      # No documentation available.
      #
      LIVE = "LIVE"

      # No documentation available.
      #
      VOD = "VOD"
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

      # No documentation available.
      #
      VARIANT_MANIFESTS_AND_SEGMENTS = "VARIANT_MANIFESTS_AND_SEGMENTS"
    end

    # Hls Output Settings
    #
    # @!attribute h265_packaging_type
    #   Only applicable when this output is referencing an H.265 video description.
    #   Specifies whether MP4 segments should be packaged as HEV1 or HVC1.
    #
    #   Enum, one of: ["HEV1", "HVC1"]
    #
    #   @return [String]
    #
    # @!attribute hls_settings
    #   Settings regarding the underlying stream. These settings are different for audio-only outputs.
    #
    #   @return [HlsSettings]
    #
    # @!attribute name_modifier
    #   String concatenated to the end of the destination filename. Accepts \"Format Identifiers\": formatIdentifierParameters.
    #
    #   @return [String]
    #
    # @!attribute segment_modifier
    #   String concatenated to end of segment filenames.
    #
    #   @return [String]
    #
    HlsOutputSettings = ::Struct.new(
      :h265_packaging_type,
      :hls_settings,
      :name_modifier,
      :segment_modifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HlsProgramDateTime
    #
    module HlsProgramDateTime
      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"

      # No documentation available.
      #
      INCLUDE = "INCLUDE"
    end

    # Includes enum constants for HlsProgramDateTimeClock
    #
    module HlsProgramDateTimeClock
      # No documentation available.
      #
      INITIALIZE_FROM_OUTPUT_TIMECODE = "INITIALIZE_FROM_OUTPUT_TIMECODE"

      # No documentation available.
      #
      SYSTEM_CLOCK = "SYSTEM_CLOCK"
    end

    # Includes enum constants for HlsRedundantManifest
    #
    module HlsRedundantManifest
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Hls S3 Settings
    #
    # @!attribute canned_acl
    #   Specify the canned ACL to apply to each S3 request. Defaults to none.
    #
    #   Enum, one of: ["AUTHENTICATED_READ", "BUCKET_OWNER_FULL_CONTROL", "BUCKET_OWNER_READ", "PUBLIC_READ"]
    #
    #   @return [String]
    #
    HlsS3Settings = ::Struct.new(
      :canned_acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HlsScte35SourceType
    #
    module HlsScte35SourceType
      # No documentation available.
      #
      MANIFEST = "MANIFEST"

      # No documentation available.
      #
      SEGMENTS = "SEGMENTS"
    end

    # Includes enum constants for HlsSegmentationMode
    #
    module HlsSegmentationMode
      # No documentation available.
      #
      USE_INPUT_SEGMENTATION = "USE_INPUT_SEGMENTATION"

      # No documentation available.
      #
      USE_SEGMENT_DURATION = "USE_SEGMENT_DURATION"
    end

    # Hls Settings
    #
    # @!attribute audio_only_hls_settings
    #   Audio Only Hls Settings
    #
    #   @return [AudioOnlyHlsSettings]
    #
    # @!attribute fmp4_hls_settings
    #   Fmp4 Hls Settings
    #
    #   @return [Fmp4HlsSettings]
    #
    # @!attribute frame_capture_hls_settings
    #   Frame Capture Hls Settings
    #
    #   @return [FrameCaptureHlsSettings]
    #
    # @!attribute standard_hls_settings
    #   Standard Hls Settings
    #
    #   @return [StandardHlsSettings]
    #
    HlsSettings = ::Struct.new(
      :audio_only_hls_settings,
      :fmp4_hls_settings,
      :frame_capture_hls_settings,
      :standard_hls_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HlsStreamInfResolution
    #
    module HlsStreamInfResolution
      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"

      # No documentation available.
      #
      INCLUDE = "INCLUDE"
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

    # Settings for the action to emit HLS metadata
    #
    # @!attribute id3
    #   Base64 string formatted according to the ID3 specification: http://id3.org/id3v2.4.0-structure
    #
    #   @return [String]
    #
    HlsTimedMetadataScheduleActionSettings = ::Struct.new(
      :id3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HlsTsFileMode
    #
    module HlsTsFileMode
      # No documentation available.
      #
      SEGMENTED_FILES = "SEGMENTED_FILES"

      # No documentation available.
      #
      SINGLE_FILE = "SINGLE_FILE"
    end

    # Includes enum constants for HlsWebdavHttpTransferMode
    #
    module HlsWebdavHttpTransferMode
      # No documentation available.
      #
      CHUNKED = "CHUNKED"

      # No documentation available.
      #
      NON_CHUNKED = "NON_CHUNKED"
    end

    # Hls Webdav Settings
    #
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if the connection is lost.
    #
    #   @return [Integer]
    #
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #
    #   @return [Integer]
    #
    # @!attribute http_transfer_mode
    #   Specify whether or not to use chunked transfer encoding to WebDAV.
    #
    #   Enum, one of: ["CHUNKED", "NON_CHUNKED"]
    #
    #   @return [String]
    #
    # @!attribute num_retries
    #   Number of retry attempts that will be made before the Live Event is put into an error state.
    #
    #   @return [Integer]
    #
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #
    #   @return [Integer]
    #
    HlsWebdavSettings = ::Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :http_transfer_mode,
      :num_retries,
      :restart_delay,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.connection_retry_interval ||= 0
        self.filecache_duration ||= 0
        self.num_retries ||= 0
        self.restart_delay ||= 0
      end
    end

    # Html Motion Graphics Settings
    #
    HtmlMotionGraphicsSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IFrameOnlyPlaylistType
    #
    module IFrameOnlyPlaylistType
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      STANDARD = "STANDARD"
    end

    # Settings to configure an action so that it occurs as soon as possible.
    #
    ImmediateModeScheduleActionStartSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for Input
    #
    # @!attribute arn
    #   The Unique ARN of the input (generated, immutable).
    #
    #   @return [String]
    #
    # @!attribute attached_channels
    #   A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
    #
    #   @return [Array<String>]
    #
    # @!attribute destinations
    #   A list of the destinations of the input (PUSH-type).
    #
    #   @return [Array<InputDestination>]
    #
    # @!attribute id
    #   The generated ID of the input (unique for user account, immutable).
    #
    #   @return [String]
    #
    # @!attribute input_class
    #   STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails.
    #   SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute input_devices
    #   Settings for the input devices.
    #
    #   @return [Array<InputDeviceSettings>]
    #
    # @!attribute input_partner_ids
    #   A list of IDs for all Inputs which are partners of this one.
    #
    #   @return [Array<String>]
    #
    # @!attribute input_source_type
    #   Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes
    #   during input switch actions. Presently, this functionality only works with MP4_FILE and TS_FILE inputs.
    #
    #   Enum, one of: ["STATIC", "DYNAMIC"]
    #
    #   @return [String]
    #
    # @!attribute media_connect_flows
    #   A list of MediaConnect Flows for this input.
    #
    #   @return [Array<MediaConnectFlow>]
    #
    # @!attribute name
    #   The user-assigned name (This is a mutable value).
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   A list of IDs for all the Input Security Groups attached to the input.
    #
    #   @return [Array<String>]
    #
    # @!attribute sources
    #   A list of the sources of the input (PULL-type).
    #
    #   @return [Array<InputSource>]
    #
    # @!attribute state
    #   Placeholder documentation for InputState
    #
    #   Enum, one of: ["CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   The different types of inputs that AWS Elemental MediaLive supports.
    #
    #   Enum, one of: ["UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL", "MP4_FILE", "MEDIACONNECT", "INPUT_DEVICE", "AWS_CDI", "TS_FILE"]
    #
    #   @return [String]
    #
    Input = ::Struct.new(
      :arn,
      :attached_channels,
      :destinations,
      :id,
      :input_class,
      :input_devices,
      :input_partner_ids,
      :input_source_type,
      :media_connect_flows,
      :name,
      :role_arn,
      :security_groups,
      :sources,
      :state,
      :tags,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for InputAttachment
    #
    # @!attribute automatic_input_failover_settings
    #   User-specified settings for defining what the conditions are for declaring the input unhealthy and failing over to a different input.
    #
    #   @return [AutomaticInputFailoverSettings]
    #
    # @!attribute input_attachment_name
    #   User-specified name for the attachment. This is required if the user wants to use this input in an input switch action.
    #
    #   @return [String]
    #
    # @!attribute input_id
    #   The ID of the input
    #
    #   @return [String]
    #
    # @!attribute input_settings
    #   Settings of an input (caption selector, etc.)
    #
    #   @return [InputSettings]
    #
    InputAttachment = ::Struct.new(
      :automatic_input_failover_settings,
      :input_attachment_name,
      :input_id,
      :input_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Input Channel Level
    #
    # @!attribute gain
    #   Remixing value. Units are in dB and acceptable values are within the range from -60 (mute) and 6 dB.
    #
    #   @return [Integer]
    #
    # @!attribute input_channel
    #   The index of the input channel used as a source.
    #
    #   @return [Integer]
    #
    InputChannelLevel = ::Struct.new(
      :gain,
      :input_channel,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.gain ||= 0
        self.input_channel ||= 0
      end
    end

    # Includes enum constants for InputClass
    #
    module InputClass
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      SINGLE_PIPELINE = "SINGLE_PIPELINE"
    end

    # Settings to let you create a clip of the file input, in order to set up the input to ingest only a portion of the file.
    #
    # @!attribute input_timecode_source
    #   The source of the timecodes in the source being clipped.
    #
    #   Enum, one of: ["ZEROBASED", "EMBEDDED"]
    #
    #   @return [String]
    #
    # @!attribute start_timecode
    #   Settings to identify the start of the clip.
    #
    #   @return [StartTimecode]
    #
    # @!attribute stop_timecode
    #   Settings to identify the end of the clip.
    #
    #   @return [StopTimecode]
    #
    InputClippingSettings = ::Struct.new(
      :input_timecode_source,
      :start_timecode,
      :stop_timecode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputCodec
    #
    module InputCodec
      # No documentation available.
      #
      MPEG2 = "MPEG2"

      # No documentation available.
      #
      AVC = "AVC"

      # No documentation available.
      #
      HEVC = "HEVC"
    end

    # Includes enum constants for InputDeblockFilter
    #
    module InputDeblockFilter
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for InputDenoiseFilter
    #
    module InputDenoiseFilter
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # The settings for a PUSH type input.
    #
    # @!attribute ip
    #   The system-generated static IP address of endpoint.
    #   It remains fixed for the lifetime of the input.
    #
    #   @return [String]
    #
    # @!attribute port
    #   The port number for the input.
    #
    #   @return [String]
    #
    # @!attribute url
    #   This represents the endpoint that the customer stream will be
    #   pushed to.
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   The properties for a VPC type input destination.
    #
    #   @return [InputDestinationVpc]
    #
    InputDestination = ::Struct.new(
      :ip,
      :port,
      :url,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Endpoint settings for a PUSH type input.
    #
    # @!attribute stream_name
    #   A unique name for the location the RTMP stream is being pushed
    #   to.
    #
    #   @return [String]
    #
    InputDestinationRequest = ::Struct.new(
      :stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The properties for a VPC type input destination.
    #
    # @!attribute availability_zone
    #   The availability zone of the Input destination.
    #
    #   @return [String]
    #
    # @!attribute network_interface_id
    #   The network interface ID of the Input destination in the VPC.
    #
    #   @return [String]
    #
    InputDestinationVpc = ::Struct.new(
      :availability_zone,
      :network_interface_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputDeviceActiveInput
    #
    module InputDeviceActiveInput
      # No documentation available.
      #
      HDMI = "HDMI"

      # No documentation available.
      #
      SDI = "SDI"
    end

    # Configurable settings for the input device.
    #
    # @!attribute configured_input
    #   The input source that you want to use. If the device has a source connected to only one of its input ports, or if you don't care which source the device sends, specify Auto. If the device has sources connected to both its input ports, and you want to use a specific source, specify the source.
    #
    #   Enum, one of: ["AUTO", "HDMI", "SDI"]
    #
    #   @return [String]
    #
    # @!attribute max_bitrate
    #   The maximum bitrate in bits per second. Set a value here to throttle the bitrate of the source video.
    #
    #   @return [Integer]
    #
    InputDeviceConfigurableSettings = ::Struct.new(
      :configured_input,
      :max_bitrate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_bitrate ||= 0
      end
    end

    # Includes enum constants for InputDeviceConfiguredInput
    #
    module InputDeviceConfiguredInput
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      HDMI = "HDMI"

      # No documentation available.
      #
      SDI = "SDI"
    end

    # Includes enum constants for InputDeviceConnectionState
    #
    module InputDeviceConnectionState
      # No documentation available.
      #
      DISCONNECTED = "DISCONNECTED"

      # No documentation available.
      #
      CONNECTED = "CONNECTED"
    end

    # Settings that describe the active source from the input device, and the video characteristics of that source.
    #
    # @!attribute active_input
    #   If you specified Auto as the configured input, specifies which of the sources is currently active (SDI or HDMI).
    #
    #   Enum, one of: ["HDMI", "SDI"]
    #
    #   @return [String]
    #
    # @!attribute configured_input
    #   The source at the input device that is currently active. You can specify this source.
    #
    #   Enum, one of: ["AUTO", "HDMI", "SDI"]
    #
    #   @return [String]
    #
    # @!attribute device_state
    #   The state of the input device.
    #
    #   Enum, one of: ["IDLE", "STREAMING"]
    #
    #   @return [String]
    #
    # @!attribute framerate
    #   The frame rate of the video source.
    #
    #   @return [Float]
    #
    # @!attribute height
    #   The height of the video source, in pixels.
    #
    #   @return [Integer]
    #
    # @!attribute max_bitrate
    #   The current maximum bitrate for ingesting this source, in bits per second. You can specify this maximum.
    #
    #   @return [Integer]
    #
    # @!attribute scan_type
    #   The scan type of the video source.
    #
    #   Enum, one of: ["INTERLACED", "PROGRESSIVE"]
    #
    #   @return [String]
    #
    # @!attribute width
    #   The width of the video source, in pixels.
    #
    #   @return [Integer]
    #
    InputDeviceHdSettings = ::Struct.new(
      :active_input,
      :configured_input,
      :device_state,
      :framerate,
      :height,
      :max_bitrate,
      :scan_type,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate ||= 0
        self.height ||= 0
        self.max_bitrate ||= 0
        self.width ||= 0
      end
    end

    # Includes enum constants for InputDeviceIpScheme
    #
    module InputDeviceIpScheme
      # No documentation available.
      #
      STATIC = "STATIC"

      # No documentation available.
      #
      DHCP = "DHCP"
    end

    # The network settings for the input device.
    #
    # @!attribute dns_addresses
    #   The DNS addresses of the input device.
    #
    #   @return [Array<String>]
    #
    # @!attribute gateway
    #   The network gateway IP address.
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   The IP address of the input device.
    #
    #   @return [String]
    #
    # @!attribute ip_scheme
    #   Specifies whether the input device has been configured (outside of MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP address.
    #
    #   Enum, one of: ["STATIC", "DHCP"]
    #
    #   @return [String]
    #
    # @!attribute subnet_mask
    #   The subnet mask of the input device.
    #
    #   @return [String]
    #
    InputDeviceNetworkSettings = ::Struct.new(
      :dns_addresses,
      :gateway,
      :ip_address,
      :ip_scheme,
      :subnet_mask,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings for an input device.
    #
    # @!attribute id
    #   The unique ID for the device.
    #
    #   @return [String]
    #
    InputDeviceRequest = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputDeviceScanType
    #
    module InputDeviceScanType
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"
    end

    # Settings for an input device.
    #
    # @!attribute id
    #   The unique ID for the device.
    #
    #   @return [String]
    #
    InputDeviceSettings = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputDeviceState
    #
    module InputDeviceState
      # No documentation available.
      #
      IDLE = "IDLE"

      # No documentation available.
      #
      STREAMING = "STREAMING"
    end

    # Details of the input device.
    #
    # @!attribute arn
    #   The unique ARN of the input device.
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   The state of the connection between the input device and AWS.
    #
    #   Enum, one of: ["DISCONNECTED", "CONNECTED"]
    #
    #   @return [String]
    #
    # @!attribute device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
    #
    #   Enum, one of: ["SYNCED", "SYNCING"]
    #
    #   @return [String]
    #
    # @!attribute device_update_status
    #   The status of software on the input device.
    #
    #   Enum, one of: ["UP_TO_DATE", "NOT_UP_TO_DATE"]
    #
    #   @return [String]
    #
    # @!attribute hd_device_settings
    #   Settings that describe an input device that is type HD.
    #
    #   @return [InputDeviceHdSettings]
    #
    # @!attribute id
    #   The unique ID of the input device.
    #
    #   @return [String]
    #
    # @!attribute mac_address
    #   The network MAC address of the input device.
    #
    #   @return [String]
    #
    # @!attribute name
    #   A name that you specify for the input device.
    #
    #   @return [String]
    #
    # @!attribute network_settings
    #   Network settings for the input device.
    #
    #   @return [InputDeviceNetworkSettings]
    #
    # @!attribute serial_number
    #   The unique serial number of the input device.
    #
    #   @return [String]
    #
    # @!attribute type
    #   The type of the input device.
    #
    #   Enum, one of: ["HD"]
    #
    #   @return [String]
    #
    # @!attribute uhd_device_settings
    #   Settings that describe an input device that is type UHD.
    #
    #   @return [InputDeviceUhdSettings]
    #
    InputDeviceSummary = ::Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :device_update_status,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type,
      :uhd_device_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputDeviceTransferType
    #
    module InputDeviceTransferType
      # No documentation available.
      #
      OUTGOING = "OUTGOING"

      # No documentation available.
      #
      INCOMING = "INCOMING"
    end

    # Includes enum constants for InputDeviceType
    #
    module InputDeviceType
      # No documentation available.
      #
      HD = "HD"
    end

    # Settings that describe the active source from the input device, and the video characteristics of that source.
    #
    # @!attribute active_input
    #   If you specified Auto as the configured input, specifies which of the sources is currently active (SDI or HDMI).
    #
    #   Enum, one of: ["HDMI", "SDI"]
    #
    #   @return [String]
    #
    # @!attribute configured_input
    #   The source at the input device that is currently active. You can specify this source.
    #
    #   Enum, one of: ["AUTO", "HDMI", "SDI"]
    #
    #   @return [String]
    #
    # @!attribute device_state
    #   The state of the input device.
    #
    #   Enum, one of: ["IDLE", "STREAMING"]
    #
    #   @return [String]
    #
    # @!attribute framerate
    #   The frame rate of the video source.
    #
    #   @return [Float]
    #
    # @!attribute height
    #   The height of the video source, in pixels.
    #
    #   @return [Integer]
    #
    # @!attribute max_bitrate
    #   The current maximum bitrate for ingesting this source, in bits per second. You can specify this maximum.
    #
    #   @return [Integer]
    #
    # @!attribute scan_type
    #   The scan type of the video source.
    #
    #   Enum, one of: ["INTERLACED", "PROGRESSIVE"]
    #
    #   @return [String]
    #
    # @!attribute width
    #   The width of the video source, in pixels.
    #
    #   @return [Integer]
    #
    InputDeviceUhdSettings = ::Struct.new(
      :active_input,
      :configured_input,
      :device_state,
      :framerate,
      :height,
      :max_bitrate,
      :scan_type,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate ||= 0
        self.height ||= 0
        self.max_bitrate ||= 0
        self.width ||= 0
      end
    end

    # Includes enum constants for InputFilter
    #
    module InputFilter
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      FORCED = "FORCED"
    end

    # Input Location
    #
    # @!attribute password_param
    #   key used to extract the password from EC2 Parameter store
    #
    #   @return [String]
    #
    # @!attribute uri
    #   Uniform Resource Identifier - This should be a path to a file accessible to the Live system (eg. a http:// URI) depending on the output type. For example, a RTMP destination should have a uri simliar to: "rtmp://fmsserver/live".
    #
    #   @return [String]
    #
    # @!attribute username
    #   Documentation update needed
    #
    #   @return [String]
    #
    InputLocation = ::Struct.new(
      :password_param,
      :uri,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputLossActionForHlsOut
    #
    module InputLossActionForHlsOut
      # No documentation available.
      #
      EMIT_OUTPUT = "EMIT_OUTPUT"

      # No documentation available.
      #
      PAUSE_OUTPUT = "PAUSE_OUTPUT"
    end

    # Includes enum constants for InputLossActionForMsSmoothOut
    #
    module InputLossActionForMsSmoothOut
      # No documentation available.
      #
      EMIT_OUTPUT = "EMIT_OUTPUT"

      # No documentation available.
      #
      PAUSE_OUTPUT = "PAUSE_OUTPUT"
    end

    # Includes enum constants for InputLossActionForRtmpOut
    #
    module InputLossActionForRtmpOut
      # No documentation available.
      #
      EMIT_OUTPUT = "EMIT_OUTPUT"

      # No documentation available.
      #
      PAUSE_OUTPUT = "PAUSE_OUTPUT"
    end

    # Includes enum constants for InputLossActionForUdpOut
    #
    module InputLossActionForUdpOut
      # No documentation available.
      #
      DROP_PROGRAM = "DROP_PROGRAM"

      # No documentation available.
      #
      DROP_TS = "DROP_TS"

      # No documentation available.
      #
      EMIT_PROGRAM = "EMIT_PROGRAM"
    end

    # Input Loss Behavior
    #
    # @!attribute black_frame_msec
    #   Documentation update needed
    #
    #   @return [Integer]
    #
    # @!attribute input_loss_image_color
    #   When input loss image type is "color" this field specifies the color to use. Value: 6 hex characters representing the values of RGB.
    #
    #   @return [String]
    #
    # @!attribute input_loss_image_slate
    #   When input loss image type is "slate" these fields specify the parameters for accessing the slate.
    #
    #   @return [InputLocation]
    #
    # @!attribute input_loss_image_type
    #   Indicates whether to substitute a solid color or a slate into the output after input loss exceeds blackFrameMsec.
    #
    #   Enum, one of: ["COLOR", "SLATE"]
    #
    #   @return [String]
    #
    # @!attribute repeat_frame_msec
    #   Documentation update needed
    #
    #   @return [Integer]
    #
    InputLossBehavior = ::Struct.new(
      :black_frame_msec,
      :input_loss_image_color,
      :input_loss_image_slate,
      :input_loss_image_type,
      :repeat_frame_msec,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.black_frame_msec ||= 0
        self.repeat_frame_msec ||= 0
      end
    end

    # MediaLive will perform a failover if content is not detected in this input for the specified period.
    #
    # @!attribute input_loss_threshold_msec
    #   The amount of time (in milliseconds) that no input is detected. After that time, an input failover will occur.
    #
    #   @return [Integer]
    #
    InputLossFailoverSettings = ::Struct.new(
      :input_loss_threshold_msec,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.input_loss_threshold_msec ||= 0
      end
    end

    # Includes enum constants for InputLossImageType
    #
    module InputLossImageType
      # No documentation available.
      #
      COLOR = "COLOR"

      # No documentation available.
      #
      SLATE = "SLATE"
    end

    # Includes enum constants for InputMaximumBitrate
    #
    module InputMaximumBitrate
      # No documentation available.
      #
      MAX_10_MBPS = "MAX_10_MBPS"

      # No documentation available.
      #
      MAX_20_MBPS = "MAX_20_MBPS"

      # No documentation available.
      #
      MAX_50_MBPS = "MAX_50_MBPS"
    end

    # Includes enum constants for InputPreference
    #
    module InputPreference
      # No documentation available.
      #
      EQUAL_INPUT_PREFERENCE = "EQUAL_INPUT_PREFERENCE"

      # No documentation available.
      #
      PRIMARY_INPUT_PREFERRED = "PRIMARY_INPUT_PREFERRED"
    end

    # Action to prepare an input for a future immediate input switch.
    #
    # @!attribute input_attachment_name_reference
    #   The name of the input attachment that should be prepared by this action. If no name is provided, the action will stop the most recent prepare (if any) when activated.
    #
    #   @return [String]
    #
    # @!attribute input_clipping_settings
    #   Settings to let you create a clip of the file input, in order to set up the input to ingest only a portion of the file.
    #
    #   @return [InputClippingSettings]
    #
    # @!attribute url_path
    #   The value for the variable portion of the URL for the dynamic input, for this instance of the input. Each time you use the same dynamic input in an input switch action, you can provide a different value, in order to connect the input to a different content source.
    #
    #   @return [Array<String>]
    #
    InputPrepareScheduleActionSettings = ::Struct.new(
      :input_attachment_name_reference,
      :input_clipping_settings,
      :url_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputResolution
    #
    module InputResolution
      # No documentation available.
      #
      SD = "SD"

      # No documentation available.
      #
      HD = "HD"

      # No documentation available.
      #
      UHD = "UHD"
    end

    # An Input Security Group
    #
    # @!attribute arn
    #   Unique ARN of Input Security Group
    #
    #   @return [String]
    #
    # @!attribute id
    #   The Id of the Input Security Group
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   The list of inputs currently using this Input Security Group.
    #
    #   @return [Array<String>]
    #
    # @!attribute state
    #   The current state of the Input Security Group.
    #
    #   Enum, one of: ["IDLE", "IN_USE", "UPDATING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute whitelist_rules
    #   Whitelist rules and their sync status
    #
    #   @return [Array<InputWhitelistRule>]
    #
    InputSecurityGroup = ::Struct.new(
      :arn,
      :id,
      :inputs,
      :state,
      :tags,
      :whitelist_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputSecurityGroupState
    #
    module InputSecurityGroupState
      # No documentation available.
      #
      IDLE = "IDLE"

      # No documentation available.
      #
      IN_USE = "IN_USE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # Live Event input parameters. There can be multiple inputs in a single Live Event.
    #
    # @!attribute audio_selectors
    #   Used to select the audio stream to decode for inputs that have multiple available.
    #
    #   @return [Array<AudioSelector>]
    #
    # @!attribute caption_selectors
    #   Used to select the caption input to use for inputs that have multiple available.
    #
    #   @return [Array<CaptionSelector>]
    #
    # @!attribute deblock_filter
    #   Enable or disable the deblock filter when filtering.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute denoise_filter
    #   Enable or disable the denoise filter when filtering.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute filter_strength
    #   Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).
    #
    #   @return [Integer]
    #
    # @!attribute input_filter
    #   Turns on the filter for this input. MPEG-2 inputs have the deblocking filter enabled by default.
    #   1) auto - filtering will be applied depending on input type/quality
    #   2) disabled - no filtering will be applied to the input
    #   3) forced - filtering will be applied regardless of input type
    #
    #   Enum, one of: ["AUTO", "DISABLED", "FORCED"]
    #
    #   @return [String]
    #
    # @!attribute network_input_settings
    #   Input settings.
    #
    #   @return [NetworkInputSettings]
    #
    # @!attribute scte35_pid
    #   PID from which to read SCTE-35 messages. If left undefined, EML will select the first SCTE-35 PID found in the input.
    #
    #   @return [Integer]
    #
    # @!attribute smpte2038_data_preference
    #   Specifies whether to extract applicable ancillary data from a SMPTE-2038 source in this input. Applicable data types are captions, timecode, AFD, and SCTE-104 messages.
    #   - PREFER: Extract from SMPTE-2038 if present in this input, otherwise extract from another source (if any).
    #   - IGNORE: Never extract any ancillary data from SMPTE-2038.
    #
    #   Enum, one of: ["IGNORE", "PREFER"]
    #
    #   @return [String]
    #
    # @!attribute source_end_behavior
    #   Loop input if it is a file. This allows a file input to be streamed indefinitely.
    #
    #   Enum, one of: ["CONTINUE", "LOOP"]
    #
    #   @return [String]
    #
    # @!attribute video_selector
    #   Informs which video elementary stream to decode for input types that have multiple available.
    #
    #   @return [VideoSelector]
    #
    InputSettings = ::Struct.new(
      :audio_selectors,
      :caption_selectors,
      :deblock_filter,
      :denoise_filter,
      :filter_strength,
      :input_filter,
      :network_input_settings,
      :scte35_pid,
      :smpte2038_data_preference,
      :source_end_behavior,
      :video_selector,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.filter_strength ||= 0
        self.scte35_pid ||= 0
      end
    end

    # The settings for a PULL type input.
    #
    # @!attribute password_param
    #   The key used to extract the password from EC2 Parameter store.
    #
    #   @return [String]
    #
    # @!attribute url
    #   This represents the customer's source URL where stream is
    #   pulled from.
    #
    #   @return [String]
    #
    # @!attribute username
    #   The username for the input source.
    #
    #   @return [String]
    #
    InputSource = ::Struct.new(
      :password_param,
      :url,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputSourceEndBehavior
    #
    module InputSourceEndBehavior
      # No documentation available.
      #
      CONTINUE = "CONTINUE"

      # No documentation available.
      #
      LOOP = "LOOP"
    end

    # Settings for for a PULL type input.
    #
    # @!attribute password_param
    #   The key used to extract the password from EC2 Parameter store.
    #
    #   @return [String]
    #
    # @!attribute url
    #   This represents the customer's source URL where stream is
    #   pulled from.
    #
    #   @return [String]
    #
    # @!attribute username
    #   The username for the input source.
    #
    #   @return [String]
    #
    InputSourceRequest = ::Struct.new(
      :password_param,
      :url,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputSourceType
    #
    module InputSourceType
      # No documentation available.
      #
      STATIC = "STATIC"

      # No documentation available.
      #
      DYNAMIC = "DYNAMIC"
    end

    # Placeholder documentation for InputSpecification
    #
    # @!attribute codec
    #   Input codec
    #
    #   Enum, one of: ["MPEG2", "AVC", "HEVC"]
    #
    #   @return [String]
    #
    # @!attribute maximum_bitrate
    #   Maximum input bitrate, categorized coarsely
    #
    #   Enum, one of: ["MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"]
    #
    #   @return [String]
    #
    # @!attribute resolution
    #   Input resolution, categorized coarsely
    #
    #   Enum, one of: ["SD", "HD", "UHD"]
    #
    #   @return [String]
    #
    InputSpecification = ::Struct.new(
      :codec,
      :maximum_bitrate,
      :resolution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputState
    #
    module InputState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DETACHED = "DETACHED"

      # No documentation available.
      #
      ATTACHED = "ATTACHED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # Settings for the "switch input" action: to switch from ingesting one input to ingesting another input.
    #
    # @!attribute input_attachment_name_reference
    #   The name of the input attachment (not the name of the input!) to switch to. The name is specified in the channel configuration.
    #
    #   @return [String]
    #
    # @!attribute input_clipping_settings
    #   Settings to let you create a clip of the file input, in order to set up the input to ingest only a portion of the file.
    #
    #   @return [InputClippingSettings]
    #
    # @!attribute url_path
    #   The value for the variable portion of the URL for the dynamic input, for this instance of the input. Each time you use the same dynamic input in an input switch action, you can provide a different value, in order to connect the input to a different content source.
    #
    #   @return [Array<String>]
    #
    InputSwitchScheduleActionSettings = ::Struct.new(
      :input_attachment_name_reference,
      :input_clipping_settings,
      :url_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputTimecodeSource
    #
    module InputTimecodeSource
      # No documentation available.
      #
      ZEROBASED = "ZEROBASED"

      # No documentation available.
      #
      EMBEDDED = "EMBEDDED"
    end

    # Includes enum constants for InputType
    #
    module InputType
      # No documentation available.
      #
      UDP_PUSH = "UDP_PUSH"

      # No documentation available.
      #
      RTP_PUSH = "RTP_PUSH"

      # No documentation available.
      #
      RTMP_PUSH = "RTMP_PUSH"

      # No documentation available.
      #
      RTMP_PULL = "RTMP_PULL"

      # No documentation available.
      #
      URL_PULL = "URL_PULL"

      # No documentation available.
      #
      MP4_FILE = "MP4_FILE"

      # No documentation available.
      #
      MEDIACONNECT = "MEDIACONNECT"

      # No documentation available.
      #
      INPUT_DEVICE = "INPUT_DEVICE"

      # No documentation available.
      #
      AWS_CDI = "AWS_CDI"

      # No documentation available.
      #
      TS_FILE = "TS_FILE"
    end

    # Settings for a private VPC Input.
    # When this property is specified, the input destination addresses will be created in a VPC rather than with public Internet addresses.
    # This property requires setting the roleArn property on Input creation.
    # Not compatible with the inputSecurityGroups property.
    #
    # @!attribute security_group_ids
    #   A list of up to 5 EC2 VPC security group IDs to attach to the Input VPC network interfaces.
    #   Requires subnetIds. If none are specified then the VPC default security group will be used.
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_ids
    #   A list of 2 VPC subnet IDs from the same VPC.
    #   Subnet IDs must be mapped to two unique availability zones (AZ).
    #
    #   @return [Array<String>]
    #
    InputVpcRequest = ::Struct.new(
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Whitelist rule
    #
    # @!attribute cidr
    #   The IPv4 CIDR that's whitelisted.
    #
    #   @return [String]
    #
    InputWhitelistRule = ::Struct.new(
      :cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An IPv4 CIDR to whitelist.
    #
    # @!attribute cidr
    #   The IPv4 CIDR to whitelist.
    #
    #   @return [String]
    #
    InputWhitelistRuleCidr = ::Struct.new(
      :cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for InternalServerErrorException
    #
    # @!attribute message
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Key Provider Settings
    #
    # @!attribute static_key_settings
    #   Static Key Settings
    #
    #   @return [StaticKeySettings]
    #
    KeyProviderSettings = ::Struct.new(
      :static_key_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LastFrameClippingBehavior
    #
    module LastFrameClippingBehavior
      # No documentation available.
      #
      EXCLUDE_LAST_FRAME = "EXCLUDE_LAST_FRAME"

      # No documentation available.
      #
      INCLUDE_LAST_FRAME = "INCLUDE_LAST_FRAME"
    end

    # Placeholder documentation for ListChannelsRequest
    #
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ListChannelsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for ListChannelsResponse
    #
    # @!attribute channels
    #   Placeholder documentation for __listOfChannelSummary
    #
    #   @return [Array<ChannelSummary>]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ListChannelsOutput = ::Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListInputDeviceTransfersRequest
    #
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    # @!attribute transfer_type
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ListInputDeviceTransfersInput = ::Struct.new(
      :max_results,
      :next_token,
      :transfer_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for ListInputDeviceTransfersResponse
    #
    # @!attribute input_device_transfers
    #   The list of devices that you are transferring or are being transferred to you.
    #
    #   @return [Array<TransferringInputDeviceSummary>]
    #
    # @!attribute next_token
    #   A token to get additional list results.
    #
    #   @return [String]
    #
    ListInputDeviceTransfersOutput = ::Struct.new(
      :input_device_transfers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListInputDevicesRequest
    #
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ListInputDevicesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for ListInputDevicesResponse
    #
    # @!attribute input_devices
    #   The list of input devices.
    #
    #   @return [Array<InputDeviceSummary>]
    #
    # @!attribute next_token
    #   A token to get additional list results.
    #
    #   @return [String]
    #
    ListInputDevicesOutput = ::Struct.new(
      :input_devices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListInputSecurityGroupsRequest
    #
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ListInputSecurityGroupsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for ListInputSecurityGroupsResponse
    #
    # @!attribute input_security_groups
    #   List of input security groups
    #
    #   @return [Array<InputSecurityGroup>]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ListInputSecurityGroupsOutput = ::Struct.new(
      :input_security_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListInputsRequest
    #
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ListInputsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for ListInputsResponse
    #
    # @!attribute inputs
    #   Placeholder documentation for __listOfInput
    #
    #   @return [Array<Input>]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ListInputsOutput = ::Struct.new(
      :inputs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListMultiplexProgramsRequest
    #
    # @!attribute max_results
    #   The maximum number of items to return.
    #
    #   @return [Integer]
    #
    # @!attribute multiplex_id
    #   The ID of the multiplex that the programs belong to.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token to retrieve the next page of results.
    #
    #   @return [String]
    #
    ListMultiplexProgramsInput = ::Struct.new(
      :max_results,
      :multiplex_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for ListMultiplexProgramsResponse
    #
    # @!attribute multiplex_programs
    #   List of multiplex programs.
    #
    #   @return [Array<MultiplexProgramSummary>]
    #
    # @!attribute next_token
    #   Token for the next ListMultiplexProgram request.
    #
    #   @return [String]
    #
    ListMultiplexProgramsOutput = ::Struct.new(
      :multiplex_programs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListMultiplexesRequest
    #
    # @!attribute max_results
    #   The maximum number of items to return.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   The token to retrieve the next page of results.
    #
    #   @return [String]
    #
    ListMultiplexesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for ListMultiplexesResponse
    #
    # @!attribute multiplexes
    #   List of multiplexes.
    #
    #   @return [Array<MultiplexSummary>]
    #
    # @!attribute next_token
    #   Token for the next ListMultiplexes request.
    #
    #   @return [String]
    #
    ListMultiplexesOutput = ::Struct.new(
      :multiplexes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListOfferingsRequest
    #
    # @!attribute channel_class
    #   Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'
    #
    #   @return [String]
    #
    # @!attribute channel_configuration
    #   Filter to offerings that match the configuration of an existing channel, e.g. '2345678' (a channel ID)
    #
    #   @return [String]
    #
    # @!attribute codec
    #   Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'
    #
    #   @return [String]
    #
    # @!attribute duration
    #   Filter by offering duration, e.g. '12'
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #
    #   @return [Integer]
    #
    # @!attribute maximum_bitrate
    #   Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
    #
    #   @return [String]
    #
    # @!attribute maximum_framerate
    #   Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    # @!attribute resolution
    #   Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
    #
    #   @return [String]
    #
    # @!attribute special_feature
    #   Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
    #
    #   @return [String]
    #
    # @!attribute video_quality
    #   Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
    #
    #   @return [String]
    #
    ListOfferingsInput = ::Struct.new(
      :channel_class,
      :channel_configuration,
      :codec,
      :duration,
      :max_results,
      :maximum_bitrate,
      :maximum_framerate,
      :next_token,
      :resolution,
      :resource_type,
      :special_feature,
      :video_quality,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for ListOfferingsResponse
    #
    # @!attribute next_token
    #   Token to retrieve the next page of results
    #
    #   @return [String]
    #
    # @!attribute offerings
    #   List of offerings
    #
    #   @return [Array<Offering>]
    #
    ListOfferingsOutput = ::Struct.new(
      :next_token,
      :offerings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListReservationsRequest
    #
    # @!attribute channel_class
    #   Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'
    #
    #   @return [String]
    #
    # @!attribute codec
    #   Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #
    #   @return [Integer]
    #
    # @!attribute maximum_bitrate
    #   Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
    #
    #   @return [String]
    #
    # @!attribute maximum_framerate
    #   Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    # @!attribute resolution
    #   Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
    #
    #   @return [String]
    #
    # @!attribute special_feature
    #   Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
    #
    #   @return [String]
    #
    # @!attribute video_quality
    #   Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
    #
    #   @return [String]
    #
    ListReservationsInput = ::Struct.new(
      :channel_class,
      :codec,
      :max_results,
      :maximum_bitrate,
      :maximum_framerate,
      :next_token,
      :resolution,
      :resource_type,
      :special_feature,
      :video_quality,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # Placeholder documentation for ListReservationsResponse
    #
    # @!attribute next_token
    #   Token to retrieve the next page of results
    #
    #   @return [String]
    #
    # @!attribute reservations
    #   List of reservations
    #
    #   @return [Array<Reservation>]
    #
    ListReservationsOutput = ::Struct.new(
      :next_token,
      :reservations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListTagsForResourceRequest
    #
    # @!attribute resource_arn
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ListTagsForResourceResponse
    #
    # @!attribute tags
    #   Placeholder documentation for Tags
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogLevel
    #
    module LogLevel
      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      WARNING = "WARNING"

      # No documentation available.
      #
      INFO = "INFO"

      # No documentation available.
      #
      DEBUG = "DEBUG"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for M2tsAbsentInputAudioBehavior
    #
    module M2tsAbsentInputAudioBehavior
      # No documentation available.
      #
      DROP = "DROP"

      # No documentation available.
      #
      ENCODE_SILENCE = "ENCODE_SILENCE"
    end

    # Includes enum constants for M2tsArib
    #
    module M2tsArib
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for M2tsAribCaptionsPidControl
    #
    module M2tsAribCaptionsPidControl
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      USE_CONFIGURED = "USE_CONFIGURED"
    end

    # Includes enum constants for M2tsAudioBufferModel
    #
    module M2tsAudioBufferModel
      # No documentation available.
      #
      ATSC = "ATSC"

      # No documentation available.
      #
      DVB = "DVB"
    end

    # Includes enum constants for M2tsAudioInterval
    #
    module M2tsAudioInterval
      # No documentation available.
      #
      VIDEO_AND_FIXED_INTERVALS = "VIDEO_AND_FIXED_INTERVALS"

      # No documentation available.
      #
      VIDEO_INTERVAL = "VIDEO_INTERVAL"
    end

    # Includes enum constants for M2tsAudioStreamType
    #
    module M2tsAudioStreamType
      # No documentation available.
      #
      ATSC = "ATSC"

      # No documentation available.
      #
      DVB = "DVB"
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

    # Includes enum constants for M2tsCcDescriptor
    #
    module M2tsCcDescriptor
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for M2tsEbifControl
    #
    module M2tsEbifControl
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
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
      EXCLUDE = "EXCLUDE"

      # No documentation available.
      #
      INCLUDE = "INCLUDE"
    end

    # Includes enum constants for M2tsKlv
    #
    module M2tsKlv
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Includes enum constants for M2tsNielsenId3Behavior
    #
    module M2tsNielsenId3Behavior
      # No documentation available.
      #
      NO_PASSTHROUGH = "NO_PASSTHROUGH"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Includes enum constants for M2tsPcrControl
    #
    module M2tsPcrControl
      # No documentation available.
      #
      CONFIGURED_PCR_PERIOD = "CONFIGURED_PCR_PERIOD"

      # No documentation available.
      #
      PCR_EVERY_PES_PACKET = "PCR_EVERY_PES_PACKET"
    end

    # Includes enum constants for M2tsRateMode
    #
    module M2tsRateMode
      # No documentation available.
      #
      CBR = "CBR"

      # No documentation available.
      #
      VBR = "VBR"
    end

    # Includes enum constants for M2tsScte35Control
    #
    module M2tsScte35Control
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Includes enum constants for M2tsSegmentationMarkers
    #
    module M2tsSegmentationMarkers
      # No documentation available.
      #
      EBP = "EBP"

      # No documentation available.
      #
      EBP_LEGACY = "EBP_LEGACY"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PSI_SEGSTART = "PSI_SEGSTART"

      # No documentation available.
      #
      RAI_ADAPT = "RAI_ADAPT"

      # No documentation available.
      #
      RAI_SEGSTART = "RAI_SEGSTART"
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

    # M2ts Settings
    #
    # @!attribute absent_input_audio_behavior
    #   When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream.
    #
    #   Enum, one of: ["DROP", "ENCODE_SILENCE"]
    #
    #   @return [String]
    #
    # @!attribute arib
    #   When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute arib_captions_pid
    #   Packet Identifier (PID) for ARIB Captions in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute arib_captions_pid_control
    #   If set to auto, pid number used for ARIB Captions will be auto-selected from unused pids.  If set to useConfigured, ARIB Captions will be on the configured pid number.
    #
    #   Enum, one of: ["AUTO", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute audio_buffer_model
    #   When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used.
    #
    #   Enum, one of: ["ATSC", "DVB"]
    #
    #   @return [String]
    #
    # @!attribute audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #
    #   @return [Integer]
    #
    # @!attribute audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values. Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute audio_stream_type
    #   When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06.
    #
    #   Enum, one of: ["ATSC", "DVB"]
    #
    #   @return [String]
    #
    # @!attribute bitrate
    #   The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate.
    #
    #   @return [Integer]
    #
    # @!attribute buffer_model
    #   Controls the timing accuracy for output network traffic. Leave as MULTIPLEX to ensure accurate network packet timing. Or set to NONE, which might result in lower latency but will result in more variability in output network packet timing. This variability might cause interruptions, jitter, or bursty behavior in your playback or receiving devices.
    #
    #   Enum, one of: ["MULTIPLEX", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute cc_descriptor
    #   When set to enabled, generates captionServiceDescriptor in PMT.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute dvb_nit_settings
    #   Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
    #
    #   @return [DvbNitSettings]
    #
    # @!attribute dvb_sdt_settings
    #   Inserts DVB Service Description Table (SDT) at the specified table repetition interval.
    #
    #   @return [DvbSdtSettings]
    #
    # @!attribute dvb_sub_pids
    #   Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute dvb_tdt_settings
    #   Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
    #
    #   @return [DvbTdtSettings]
    #
    # @!attribute dvb_teletext_pid
    #   Packet Identifier (PID) for input source DVB Teletext data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute ebif
    #   If set to passthrough, passes any EBIF data from the input source to this output.
    #
    #   Enum, one of: ["NONE", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute ebp_audio_interval
    #   When videoAndFixedIntervals is selected, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. Only available when EBP Cablelabs segmentation markers are selected.  Partitions 1 and 2 will always follow the video interval.
    #
    #   Enum, one of: ["VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"]
    #
    #   @return [String]
    #
    # @!attribute ebp_lookahead_ms
    #   When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker.  The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
    #
    #   @return [Integer]
    #
    # @!attribute ebp_placement
    #   Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids, EBP markers will be placed on the video PID and all audio PIDs.  If set to videoPid, EBP markers will be placed on only the video PID.
    #
    #   Enum, one of: ["VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"]
    #
    #   @return [String]
    #
    # @!attribute ecm_pid
    #   This field is unused and deprecated.
    #
    #   @return [String]
    #
    # @!attribute es_rate_in_pes
    #   Include or exclude the ES Rate field in the PES header.
    #
    #   Enum, one of: ["EXCLUDE", "INCLUDE"]
    #
    #   @return [String]
    #
    # @!attribute etv_platform_pid
    #   Packet Identifier (PID) for input source ETV Platform data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute etv_signal_pid
    #   Packet Identifier (PID) for input source ETV Signal data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute fragment_time
    #   The length in seconds of each fragment. Only used with EBP markers.
    #
    #   @return [Float]
    #
    # @!attribute klv
    #   If set to passthrough, passes any KLV data from the input source to this output.
    #
    #   Enum, one of: ["NONE", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute klv_data_pids
    #   Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute nielsen_id3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #
    #   Enum, one of: ["NO_PASSTHROUGH", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute null_packet_bitrate
    #   Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
    #
    #   @return [Float]
    #
    # @!attribute pat_interval
    #   The number of milliseconds between instances of this table in the output transport stream.  Valid values are 0, 10..1000.
    #
    #   @return [Integer]
    #
    # @!attribute pcr_control
    #   When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
    #
    #   Enum, one of: ["CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"]
    #
    #   @return [String]
    #
    # @!attribute pcr_period
    #   Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute pmt_interval
    #   The number of milliseconds between instances of this table in the output transport stream. Valid values are 0, 10..1000.
    #
    #   @return [Integer]
    #
    # @!attribute pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute program_num
    #   The value of the program number field in the Program Map Table.
    #
    #   @return [Integer]
    #
    # @!attribute rate_mode
    #   When vbr, does not insert null packets into transport stream to fill specified bitrate. The bitrate setting acts as the maximum bitrate when vbr is set.
    #
    #   Enum, one of: ["CBR", "VBR"]
    #
    #   @return [String]
    #
    # @!attribute scte27_pids
    #   Packet Identifier (PID) for input source SCTE-27 data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute scte35_control
    #   Optionally pass SCTE-35 signals from the input source to this output.
    #
    #   Enum, one of: ["NONE", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute scte35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute segmentation_markers
    #   Inserts segmentation markers at each segmentationTime period. raiSegstart sets the Random Access Indicator bit in the adaptation field. raiAdapt sets the RAI bit and adds the current timecode in the private data bytes. psiSegstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
    #
    #   Enum, one of: ["EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"]
    #
    #   @return [String]
    #
    # @!attribute segmentation_style
    #   The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted.
    #
    #   When a segmentation style of "resetCadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of $segmentationTime seconds.
    #
    #   When a segmentation style of "maintainCadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentationTime seconds. Note that EBP lookahead is a slight exception to this rule.
    #
    #   Enum, one of: ["MAINTAIN_CADENCE", "RESET_CADENCE"]
    #
    #   @return [String]
    #
    # @!attribute segmentation_time
    #   The length in seconds of each segment. Required unless markers is set to _none_.
    #
    #   @return [Float]
    #
    # @!attribute timed_metadata_behavior
    #   When set to passthrough, timed metadata will be passed through from input to output.
    #
    #   Enum, one of: ["NO_PASSTHROUGH", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_pid
    #   Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #
    #   @return [Integer]
    #
    # @!attribute video_pid
    #   Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    M2tsSettings = ::Struct.new(
      :absent_input_audio_behavior,
      :arib,
      :arib_captions_pid,
      :arib_captions_pid_control,
      :audio_buffer_model,
      :audio_frames_per_pes,
      :audio_pids,
      :audio_stream_type,
      :bitrate,
      :buffer_model,
      :cc_descriptor,
      :dvb_nit_settings,
      :dvb_sdt_settings,
      :dvb_sub_pids,
      :dvb_tdt_settings,
      :dvb_teletext_pid,
      :ebif,
      :ebp_audio_interval,
      :ebp_lookahead_ms,
      :ebp_placement,
      :ecm_pid,
      :es_rate_in_pes,
      :etv_platform_pid,
      :etv_signal_pid,
      :fragment_time,
      :klv,
      :klv_data_pids,
      :nielsen_id3_behavior,
      :null_packet_bitrate,
      :pat_interval,
      :pcr_control,
      :pcr_period,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :program_num,
      :rate_mode,
      :scte27_pids,
      :scte35_control,
      :scte35_pid,
      :segmentation_markers,
      :segmentation_style,
      :segmentation_time,
      :timed_metadata_behavior,
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
        self.ebp_lookahead_ms ||= 0
        self.fragment_time ||= 0
        self.null_packet_bitrate ||= 0
        self.pat_interval ||= 0
        self.pcr_period ||= 0
        self.pmt_interval ||= 0
        self.program_num ||= 0
        self.segmentation_time ||= 0
        self.transport_stream_id ||= 0
      end
    end

    # Includes enum constants for M2tsTimedMetadataBehavior
    #
    module M2tsTimedMetadataBehavior
      # No documentation available.
      #
      NO_PASSTHROUGH = "NO_PASSTHROUGH"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Includes enum constants for M3u8NielsenId3Behavior
    #
    module M3u8NielsenId3Behavior
      # No documentation available.
      #
      NO_PASSTHROUGH = "NO_PASSTHROUGH"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Includes enum constants for M3u8PcrControl
    #
    module M3u8PcrControl
      # No documentation available.
      #
      CONFIGURED_PCR_PERIOD = "CONFIGURED_PCR_PERIOD"

      # No documentation available.
      #
      PCR_EVERY_PES_PACKET = "PCR_EVERY_PES_PACKET"
    end

    # Includes enum constants for M3u8Scte35Behavior
    #
    module M3u8Scte35Behavior
      # No documentation available.
      #
      NO_PASSTHROUGH = "NO_PASSTHROUGH"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Settings information for the .m3u8 container
    #
    # @!attribute audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #
    #   @return [Integer]
    #
    # @!attribute audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.
    #
    #   @return [String]
    #
    # @!attribute ecm_pid
    #   This parameter is unused and deprecated.
    #
    #   @return [String]
    #
    # @!attribute nielsen_id3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #
    #   Enum, one of: ["NO_PASSTHROUGH", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute pat_interval
    #   The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
    #
    #   @return [Integer]
    #
    # @!attribute pcr_control
    #   When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
    #
    #   Enum, one of: ["CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"]
    #
    #   @return [String]
    #
    # @!attribute pcr_period
    #   Maximum time in milliseconds between Program Clock References (PCRs) inserted into the transport stream.
    #
    #   @return [Integer]
    #
    # @!attribute pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.
    #
    #   @return [String]
    #
    # @!attribute pmt_interval
    #   The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
    #
    #   @return [Integer]
    #
    # @!attribute pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value.
    #
    #   @return [String]
    #
    # @!attribute program_num
    #   The value of the program number field in the Program Map Table.
    #
    #   @return [Integer]
    #
    # @!attribute scte35_behavior
    #   If set to passthrough, passes any SCTE-35 signals from the input source to this output.
    #
    #   Enum, one of: ["NO_PASSTHROUGH", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute scte35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_behavior
    #   When set to passthrough, timed metadata is passed through from input to output.
    #
    #   Enum, one of: ["NO_PASSTHROUGH", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_pid
    #   Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #
    #   @return [String]
    #
    # @!attribute transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #
    #   @return [Integer]
    #
    # @!attribute video_pid
    #   Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.
    #
    #   @return [String]
    #
    M3u8Settings = ::Struct.new(
      :audio_frames_per_pes,
      :audio_pids,
      :ecm_pid,
      :nielsen_id3_behavior,
      :pat_interval,
      :pcr_control,
      :pcr_period,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :program_num,
      :scte35_behavior,
      :scte35_pid,
      :timed_metadata_behavior,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.audio_frames_per_pes ||= 0
        self.pat_interval ||= 0
        self.pcr_period ||= 0
        self.pmt_interval ||= 0
        self.program_num ||= 0
        self.transport_stream_id ||= 0
      end
    end

    # Includes enum constants for M3u8TimedMetadataBehavior
    #
    module M3u8TimedMetadataBehavior
      # No documentation available.
      #
      NO_PASSTHROUGH = "NO_PASSTHROUGH"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Placeholder documentation for MaintenanceCreateSettings
    #
    # @!attribute maintenance_day
    #   Choose one day of the week for maintenance. The chosen day is used for all future maintenance windows.
    #
    #   Enum, one of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #
    #   @return [String]
    #
    # @!attribute maintenance_start_time
    #   Choose the hour that maintenance will start. The chosen time is used for all future maintenance windows.
    #
    #   @return [String]
    #
    MaintenanceCreateSettings = ::Struct.new(
      :maintenance_day,
      :maintenance_start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MaintenanceDay
    #
    module MaintenanceDay
      # No documentation available.
      #
      MONDAY = "MONDAY"

      # No documentation available.
      #
      TUESDAY = "TUESDAY"

      # No documentation available.
      #
      WEDNESDAY = "WEDNESDAY"

      # No documentation available.
      #
      THURSDAY = "THURSDAY"

      # No documentation available.
      #
      FRIDAY = "FRIDAY"

      # No documentation available.
      #
      SATURDAY = "SATURDAY"

      # No documentation available.
      #
      SUNDAY = "SUNDAY"
    end

    # Placeholder documentation for MaintenanceStatus
    #
    # @!attribute maintenance_day
    #   The currently selected maintenance day.
    #
    #   Enum, one of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #
    #   @return [String]
    #
    # @!attribute maintenance_deadline
    #   Maintenance is required by the displayed date and time. Date and time is in ISO.
    #
    #   @return [String]
    #
    # @!attribute maintenance_scheduled_date
    #   The currently scheduled maintenance date and time. Date and time is in ISO.
    #
    #   @return [String]
    #
    # @!attribute maintenance_start_time
    #   The currently selected maintenance start time. Time is in UTC.
    #
    #   @return [String]
    #
    MaintenanceStatus = ::Struct.new(
      :maintenance_day,
      :maintenance_deadline,
      :maintenance_scheduled_date,
      :maintenance_start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for MaintenanceUpdateSettings
    #
    # @!attribute maintenance_day
    #   Choose one day of the week for maintenance. The chosen day is used for all future maintenance windows.
    #
    #   Enum, one of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #
    #   @return [String]
    #
    # @!attribute maintenance_scheduled_date
    #   Choose a specific date for maintenance to occur. The chosen date is used for the next maintenance window only.
    #
    #   @return [String]
    #
    # @!attribute maintenance_start_time
    #   Choose the hour that maintenance will start. The chosen time is used for all future maintenance windows.
    #
    #   @return [String]
    #
    MaintenanceUpdateSettings = ::Struct.new(
      :maintenance_day,
      :maintenance_scheduled_date,
      :maintenance_start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The settings for a MediaConnect Flow.
    #
    # @!attribute flow_arn
    #   The unique ARN of the MediaConnect Flow being used as a source.
    #
    #   @return [String]
    #
    MediaConnectFlow = ::Struct.new(
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The settings for a MediaConnect Flow.
    #
    # @!attribute flow_arn
    #   The ARN of the MediaConnect Flow that you want to use as a source.
    #
    #   @return [String]
    #
    MediaConnectFlowRequest = ::Struct.new(
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Media Package Group Settings
    #
    # @!attribute destination
    #   MediaPackage channel destination.
    #
    #   @return [OutputLocationRef]
    #
    MediaPackageGroupSettings = ::Struct.new(
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # MediaPackage Output Destination Settings
    #
    # @!attribute channel_id
    #   ID of the channel in MediaPackage that is the destination for this output group. You do not need to specify the individual inputs in MediaPackage; MediaLive will handle the connection of the two MediaLive pipelines to the two MediaPackage inputs. The MediaPackage channel and MediaLive channel must be in the same region.
    #
    #   @return [String]
    #
    MediaPackageOutputDestinationSettings = ::Struct.new(
      :channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Media Package Output Settings
    #
    MediaPackageOutputSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings to specify the rendering of motion graphics into the video stream.
    #
    # @!attribute duration
    #   Duration (in milliseconds) that motion graphics should render on to the video stream. Leaving out this property or setting to 0 will result in rendering continuing until a deactivate action is processed.
    #
    #   @return [Integer]
    #
    # @!attribute password_param
    #   Key used to extract the password from EC2 Parameter store
    #
    #   @return [String]
    #
    # @!attribute url
    #   URI of the HTML5 content to be rendered into the live stream.
    #
    #   @return [String]
    #
    # @!attribute username
    #   Documentation update needed
    #
    #   @return [String]
    #
    MotionGraphicsActivateScheduleActionSettings = ::Struct.new(
      :duration,
      :password_param,
      :url,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
      end
    end

    # Motion Graphics Configuration
    #
    # @!attribute motion_graphics_insertion
    #   Motion Graphics Insertion
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute motion_graphics_settings
    #   Motion Graphics Settings
    #
    #   @return [MotionGraphicsSettings]
    #
    MotionGraphicsConfiguration = ::Struct.new(
      :motion_graphics_insertion,
      :motion_graphics_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings to specify the ending of rendering motion graphics into the video stream.
    #
    MotionGraphicsDeactivateScheduleActionSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MotionGraphicsInsertion
    #
    module MotionGraphicsInsertion
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Motion Graphics Settings
    #
    # @!attribute html_motion_graphics_settings
    #   Html Motion Graphics Settings
    #
    #   @return [HtmlMotionGraphicsSettings]
    #
    MotionGraphicsSettings = ::Struct.new(
      :html_motion_graphics_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Mp2CodingMode
    #
    module Mp2CodingMode
      # No documentation available.
      #
      CODING_MODE_1_0 = "CODING_MODE_1_0"

      # No documentation available.
      #
      CODING_MODE_2_0 = "CODING_MODE_2_0"
    end

    # Mp2 Settings
    #
    # @!attribute bitrate
    #   Average bitrate in bits/second.
    #
    #   @return [Float]
    #
    # @!attribute coding_mode
    #   The MPEG2 Audio coding mode.  Valid values are codingMode10 (for mono) or codingMode20 (for stereo).
    #
    #   Enum, one of: ["CODING_MODE_1_0", "CODING_MODE_2_0"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #
    #   @return [Float]
    #
    Mp2Settings = ::Struct.new(
      :bitrate,
      :coding_mode,
      :sample_rate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bitrate ||= 0
        self.sample_rate ||= 0
      end
    end

    # Includes enum constants for Mpeg2AdaptiveQuantization
    #
    module Mpeg2AdaptiveQuantization
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      OFF = "OFF"
    end

    # Includes enum constants for Mpeg2ColorMetadata
    #
    module Mpeg2ColorMetadata
      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      INSERT = "INSERT"
    end

    # Includes enum constants for Mpeg2ColorSpace
    #
    module Mpeg2ColorSpace
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

    # Includes enum constants for Mpeg2DisplayRatio
    #
    module Mpeg2DisplayRatio
      # No documentation available.
      #
      DISPLAYRATIO16X9 = "DISPLAYRATIO16X9"

      # No documentation available.
      #
      DISPLAYRATIO4X3 = "DISPLAYRATIO4X3"
    end

    # Mpeg2 Filter Settings
    #
    # @!attribute temporal_filter_settings
    #   Temporal Filter Settings
    #
    #   @return [TemporalFilterSettings]
    #
    Mpeg2FilterSettings = ::Struct.new(
      :temporal_filter_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
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

    # Includes enum constants for Mpeg2ScanType
    #
    module Mpeg2ScanType
      # No documentation available.
      #
      INTERLACED = "INTERLACED"

      # No documentation available.
      #
      PROGRESSIVE = "PROGRESSIVE"
    end

    # Mpeg2 Settings
    #
    # @!attribute adaptive_quantization
    #   Choose Off to disable adaptive quantization. Or choose another value to enable the quantizer and set its strength. The strengths are: Auto, Off, Low, Medium, High. When you enable this field, MediaLive allows intra-frame quantizers to vary, which might improve visual quality.
    #
    #   Enum, one of: ["AUTO", "HIGH", "LOW", "MEDIUM", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute afd_signaling
    #   Indicates the AFD values that MediaLive will write into the video encode. If you do not know what AFD signaling is, or if your downstream system has not given you guidance, choose AUTO.
    #   AUTO: MediaLive will try to preserve the input AFD value (in cases where multiple AFD values are valid).
    #   FIXED: MediaLive will use the value you specify in fixedAFD.
    #
    #   Enum, one of: ["AUTO", "FIXED", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute color_metadata
    #   Specifies whether to include the color space metadata. The metadata describes the color space that applies to the video (the colorSpace field). We recommend that you insert the metadata.
    #
    #   Enum, one of: ["IGNORE", "INSERT"]
    #
    #   @return [String]
    #
    # @!attribute color_space
    #   Choose the type of color space conversion to apply to the output. For detailed information on setting up both the input and the output to obtain the desired color space in the output, see the section on \"MediaLive Features - Video - color space\" in the MediaLive User Guide.
    #   PASSTHROUGH: Keep the color space of the input content - do not convert it.
    #   AUTO:Convert all content that is SD to rec 601, and convert all content that is HD to rec 709.
    #
    #   Enum, one of: ["AUTO", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    # @!attribute display_aspect_ratio
    #   Sets the pixel aspect ratio for the encode.
    #
    #   Enum, one of: ["DISPLAYRATIO16X9", "DISPLAYRATIO4X3"]
    #
    #   @return [String]
    #
    # @!attribute filter_settings
    #   Optionally specify a noise reduction filter, which can improve quality of compressed content. If you do not choose a filter, no filter will be applied.
    #   TEMPORAL: This filter is useful for both source content that is noisy (when it has excessive digital artifacts) and source content that is clean.
    #   When the content is noisy, the filter cleans up the source content before the encoding phase, with these two effects: First, it improves the output video quality because the content has been cleaned up. Secondly, it decreases the bandwidth because MediaLive does not waste bits on encoding noise.
    #   When the content is reasonably clean, the filter tends to decrease the bitrate.
    #
    #   @return [Mpeg2FilterSettings]
    #
    # @!attribute fixed_afd
    #   Complete this field only when afdSignaling is set to FIXED. Enter the AFD value (4 bits) to write on all frames of the video encode.
    #
    #   Enum, one of: ["AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"]
    #
    #   @return [String]
    #
    # @!attribute framerate_denominator
    #   description": "The framerate denominator. For example, 1001. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS.
    #
    #   @return [Integer]
    #
    # @!attribute framerate_numerator
    #   The framerate numerator. For example, 24000. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS.
    #
    #   @return [Integer]
    #
    # @!attribute gop_closed_cadence
    #   MPEG2: default is open GOP.
    #
    #   @return [Integer]
    #
    # @!attribute gop_num_b_frames
    #   Relates to the GOP structure. The number of B-frames between reference frames. If you do not know what a B-frame is, use the default.
    #
    #   @return [Integer]
    #
    # @!attribute gop_size
    #   Relates to the GOP structure. The GOP size (keyframe interval) in the units specified in gopSizeUnits. If you do not know what GOP is, use the default.
    #   If gopSizeUnits is frames, then the gopSize must be an integer and must be greater than or equal to 1.
    #   If gopSizeUnits is seconds, the gopSize must be greater than 0, but does not need to be an integer.
    #
    #   @return [Float]
    #
    # @!attribute gop_size_units
    #   Relates to the GOP structure. Specifies whether the gopSize is specified in frames or seconds. If you do not plan to change the default gopSize, leave the default. If you specify SECONDS, MediaLive will internally convert the gop size to a frame count.
    #
    #   Enum, one of: ["FRAMES", "SECONDS"]
    #
    #   @return [String]
    #
    # @!attribute scan_type
    #   Set the scan type of the output to PROGRESSIVE or INTERLACED (top field first).
    #
    #   Enum, one of: ["INTERLACED", "PROGRESSIVE"]
    #
    #   @return [String]
    #
    # @!attribute subgop_length
    #   Relates to the GOP structure. If you do not know what GOP is, use the default.
    #   FIXED: Set the number of B-frames in each sub-GOP to the value in gopNumBFrames.
    #   DYNAMIC: Let MediaLive optimize the number of B-frames in each sub-GOP, to improve visual quality.
    #
    #   Enum, one of: ["DYNAMIC", "FIXED"]
    #
    #   @return [String]
    #
    # @!attribute timecode_insertion
    #   Determines how MediaLive inserts timecodes in the output video. For detailed information about setting up the input and the output for a timecode, see the section on \"MediaLive Features - Timecode configuration\" in the MediaLive User Guide.
    #   DISABLED: do not include timecodes.
    #   GOP_TIMECODE: Include timecode metadata in the GOP header.
    #
    #   Enum, one of: ["DISABLED", "GOP_TIMECODE"]
    #
    #   @return [String]
    #
    Mpeg2Settings = ::Struct.new(
      :adaptive_quantization,
      :afd_signaling,
      :color_metadata,
      :color_space,
      :display_aspect_ratio,
      :filter_settings,
      :fixed_afd,
      :framerate_denominator,
      :framerate_numerator,
      :gop_closed_cadence,
      :gop_num_b_frames,
      :gop_size,
      :gop_size_units,
      :scan_type,
      :subgop_length,
      :timecode_insertion,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.framerate_denominator ||= 0
        self.framerate_numerator ||= 0
        self.gop_closed_cadence ||= 0
        self.gop_num_b_frames ||= 0
        self.gop_size ||= 0
      end
    end

    # Includes enum constants for Mpeg2SubGopLength
    #
    module Mpeg2SubGopLength
      # No documentation available.
      #
      DYNAMIC = "DYNAMIC"

      # No documentation available.
      #
      FIXED = "FIXED"
    end

    # Includes enum constants for Mpeg2TimecodeInsertionBehavior
    #
    module Mpeg2TimecodeInsertionBehavior
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      GOP_TIMECODE = "GOP_TIMECODE"
    end

    # Ms Smooth Group Settings
    #
    # @!attribute acquisition_point_id
    #   The ID to include in each message in the sparse track. Ignored if sparseTrackType is NONE.
    #
    #   @return [String]
    #
    # @!attribute audio_only_timecode_control
    #   If set to passthrough for an audio-only MS Smooth output, the fragment absolute time will be set to the current timecode. This option does not write timecodes to the audio elementary stream.
    #
    #   Enum, one of: ["PASSTHROUGH", "USE_CONFIGURED_CLOCK"]
    #
    #   @return [String]
    #
    # @!attribute certificate_mode
    #   If set to verifyAuthenticity, verify the https certificate chain to a trusted Certificate Authority (CA).  This will cause https outputs to self-signed certificates to fail.
    #
    #   Enum, one of: ["SELF_SIGNED", "VERIFY_AUTHENTICITY"]
    #
    #   @return [String]
    #
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the IIS server if the connection is lost. Content will be cached during this time and the cache will be be delivered to the IIS server once the connection is re-established.
    #
    #   @return [Integer]
    #
    # @!attribute destination
    #   Smooth Streaming publish point on an IIS server. Elemental Live acts as a "Push" encoder to IIS.
    #
    #   @return [OutputLocationRef]
    #
    # @!attribute event_id
    #   MS Smooth event ID to be sent to the IIS server.
    #
    #   Should only be specified if eventIdMode is set to useConfigured.
    #
    #   @return [String]
    #
    # @!attribute event_id_mode
    #   Specifies whether or not to send an event ID to the IIS server. If no event ID is sent and the same Live Event is used without changing the publishing point, clients might see cached video from the previous run.
    #
    #   Options:
    #   - "useConfigured" - use the value provided in eventId
    #   - "useTimestamp" - generate and send an event ID based on the current timestamp
    #   - "noEventId" - do not send an event ID to the IIS server.
    #
    #   Enum, one of: ["NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"]
    #
    #   @return [String]
    #
    # @!attribute event_stop_behavior
    #   When set to sendEos, send EOS signal to IIS server when stopping the event
    #
    #   Enum, one of: ["NONE", "SEND_EOS"]
    #
    #   @return [String]
    #
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #
    #   @return [Integer]
    #
    # @!attribute fragment_length
    #   Length of mp4 fragments to generate (in seconds). Fragment length must be compatible with GOP size and framerate.
    #
    #   @return [Integer]
    #
    # @!attribute input_loss_action
    #   Parameter that control output group behavior on input loss.
    #
    #   Enum, one of: ["EMIT_OUTPUT", "PAUSE_OUTPUT"]
    #
    #   @return [String]
    #
    # @!attribute num_retries
    #   Number of retry attempts.
    #
    #   @return [Integer]
    #
    # @!attribute restart_delay
    #   Number of seconds before initiating a restart due to output failure, due to exhausting the numRetries on one segment, or exceeding filecacheDuration.
    #
    #   @return [Integer]
    #
    # @!attribute segmentation_mode
    #   useInputSegmentation has been deprecated. The configured segment size is always used.
    #
    #   Enum, one of: ["USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"]
    #
    #   @return [String]
    #
    # @!attribute send_delay_ms
    #   Number of milliseconds to delay the output from the second pipeline.
    #
    #   @return [Integer]
    #
    # @!attribute sparse_track_type
    #   Identifies the type of data to place in the sparse track:
    #   - SCTE35: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame to start a new segment.
    #   - SCTE35_WITHOUT_SEGMENTATION: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame but don't start a new segment.
    #   - NONE: Don't generate a sparse track for any outputs in this output group.
    #
    #   Enum, one of: ["NONE", "SCTE_35", "SCTE_35_WITHOUT_SEGMENTATION"]
    #
    #   @return [String]
    #
    # @!attribute stream_manifest_behavior
    #   When set to send, send stream manifest so publishing point doesn't start until all streams start.
    #
    #   Enum, one of: ["DO_NOT_SEND", "SEND"]
    #
    #   @return [String]
    #
    # @!attribute timestamp_offset
    #   Timestamp offset for the event.  Only used if timestampOffsetMode is set to useConfiguredOffset.
    #
    #   @return [String]
    #
    # @!attribute timestamp_offset_mode
    #   Type of timestamp date offset to use.
    #   - useEventStartDate: Use the date the event was started as the offset
    #   - useConfiguredOffset: Use an explicitly configured date as the offset
    #
    #   Enum, one of: ["USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"]
    #
    #   @return [String]
    #
    MsSmoothGroupSettings = ::Struct.new(
      :acquisition_point_id,
      :audio_only_timecode_control,
      :certificate_mode,
      :connection_retry_interval,
      :destination,
      :event_id,
      :event_id_mode,
      :event_stop_behavior,
      :filecache_duration,
      :fragment_length,
      :input_loss_action,
      :num_retries,
      :restart_delay,
      :segmentation_mode,
      :send_delay_ms,
      :sparse_track_type,
      :stream_manifest_behavior,
      :timestamp_offset,
      :timestamp_offset_mode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.connection_retry_interval ||= 0
        self.filecache_duration ||= 0
        self.fragment_length ||= 0
        self.num_retries ||= 0
        self.restart_delay ||= 0
        self.send_delay_ms ||= 0
      end
    end

    # Includes enum constants for MsSmoothH265PackagingType
    #
    module MsSmoothH265PackagingType
      # No documentation available.
      #
      HEV1 = "HEV1"

      # No documentation available.
      #
      HVC1 = "HVC1"
    end

    # Ms Smooth Output Settings
    #
    # @!attribute h265_packaging_type
    #   Only applicable when this output is referencing an H.265 video description.
    #   Specifies whether MP4 segments should be packaged as HEV1 or HVC1.
    #
    #   Enum, one of: ["HEV1", "HVC1"]
    #
    #   @return [String]
    #
    # @!attribute name_modifier
    #   String concatenated to the end of the destination filename.  Required for multiple outputs of the same type.
    #
    #   @return [String]
    #
    MsSmoothOutputSettings = ::Struct.new(
      :h265_packaging_type,
      :name_modifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The multiplex object.
    #
    # @!attribute arn
    #   The unique arn of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #
    #   @return [Array<String>]
    #
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #
    #   @return [Array<MultiplexOutputDestination>]
    #
    # @!attribute id
    #   The unique id of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #
    #   @return [MultiplexSettings]
    #
    # @!attribute name
    #   The name of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   The current state of the multiplex.
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    Multiplex = ::Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
        self.program_count ||= 0
      end
    end

    # Multiplex Group Settings
    #
    MultiplexGroupSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Multiplex MediaConnect output destination settings.
    #
    # @!attribute entitlement_arn
    #   The MediaConnect entitlement ARN available as a Flow source.
    #
    #   @return [String]
    #
    MultiplexMediaConnectOutputDestinationSettings = ::Struct.new(
      :entitlement_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Multiplex output destination settings
    #
    # @!attribute media_connect_settings
    #   Multiplex MediaConnect output destination settings.
    #
    #   @return [MultiplexMediaConnectOutputDestinationSettings]
    #
    MultiplexOutputDestination = ::Struct.new(
      :media_connect_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Multiplex Output Settings
    #
    # @!attribute destination
    #   Destination is a Multiplex.
    #
    #   @return [OutputLocationRef]
    #
    MultiplexOutputSettings = ::Struct.new(
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The multiplex program object.
    #
    # @!attribute channel_id
    #   The MediaLive channel associated with the program.
    #
    #   @return [String]
    #
    # @!attribute multiplex_program_settings
    #   The settings for this multiplex program.
    #
    #   @return [MultiplexProgramSettings]
    #
    # @!attribute packet_identifiers_map
    #   The packet identifier map for this multiplex program.
    #
    #   @return [MultiplexProgramPacketIdentifiersMap]
    #
    # @!attribute pipeline_details
    #   Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
    #
    #   @return [Array<MultiplexProgramPipelineDetail>]
    #
    # @!attribute program_name
    #   The name of the multiplex program.
    #
    #   @return [String]
    #
    MultiplexProgram = ::Struct.new(
      :channel_id,
      :multiplex_program_settings,
      :packet_identifiers_map,
      :pipeline_details,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Multiplex Program Input Destination Settings for outputting a Channel to a Multiplex
    #
    # @!attribute multiplex_id
    #   The ID of the Multiplex that the encoder is providing output to. You do not need to specify the individual inputs to the Multiplex; MediaLive will handle the connection of the two MediaLive pipelines to the two Multiplex instances.
    #   The Multiplex must be in the same region as the Channel.
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   The program name of the Multiplex program that the encoder is providing output to.
    #
    #   @return [String]
    #
    MultiplexProgramChannelDestinationSettings = ::Struct.new(
      :multiplex_id,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Packet identifiers map for a given Multiplex program.
    #
    # @!attribute audio_pids
    #   Placeholder documentation for __listOf__integer
    #
    #   @return [Array<Integer>]
    #
    # @!attribute dvb_sub_pids
    #   Placeholder documentation for __listOf__integer
    #
    #   @return [Array<Integer>]
    #
    # @!attribute dvb_teletext_pid
    #   Placeholder documentation for __integer
    #
    #   @return [Integer]
    #
    # @!attribute etv_platform_pid
    #   Placeholder documentation for __integer
    #
    #   @return [Integer]
    #
    # @!attribute etv_signal_pid
    #   Placeholder documentation for __integer
    #
    #   @return [Integer]
    #
    # @!attribute klv_data_pids
    #   Placeholder documentation for __listOf__integer
    #
    #   @return [Array<Integer>]
    #
    # @!attribute pcr_pid
    #   Placeholder documentation for __integer
    #
    #   @return [Integer]
    #
    # @!attribute pmt_pid
    #   Placeholder documentation for __integer
    #
    #   @return [Integer]
    #
    # @!attribute private_metadata_pid
    #   Placeholder documentation for __integer
    #
    #   @return [Integer]
    #
    # @!attribute scte27_pids
    #   Placeholder documentation for __listOf__integer
    #
    #   @return [Array<Integer>]
    #
    # @!attribute scte35_pid
    #   Placeholder documentation for __integer
    #
    #   @return [Integer]
    #
    # @!attribute timed_metadata_pid
    #   Placeholder documentation for __integer
    #
    #   @return [Integer]
    #
    # @!attribute video_pid
    #   Placeholder documentation for __integer
    #
    #   @return [Integer]
    #
    MultiplexProgramPacketIdentifiersMap = ::Struct.new(
      :audio_pids,
      :dvb_sub_pids,
      :dvb_teletext_pid,
      :etv_platform_pid,
      :etv_signal_pid,
      :klv_data_pids,
      :pcr_pid,
      :pmt_pid,
      :private_metadata_pid,
      :scte27_pids,
      :scte35_pid,
      :timed_metadata_pid,
      :video_pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dvb_teletext_pid ||= 0
        self.etv_platform_pid ||= 0
        self.etv_signal_pid ||= 0
        self.pcr_pid ||= 0
        self.pmt_pid ||= 0
        self.private_metadata_pid ||= 0
        self.scte35_pid ||= 0
        self.timed_metadata_pid ||= 0
        self.video_pid ||= 0
      end
    end

    # The current source for one of the pipelines in the multiplex.
    #
    # @!attribute active_channel_pipeline
    #   Identifies the channel pipeline that is currently active for the pipeline (identified by PipelineId) in the multiplex.
    #
    #   @return [String]
    #
    # @!attribute pipeline_id
    #   Identifies a specific pipeline in the multiplex.
    #
    #   @return [String]
    #
    MultiplexProgramPipelineDetail = ::Struct.new(
      :active_channel_pipeline,
      :pipeline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Transport stream service descriptor configuration for the Multiplex program.
    #
    # @!attribute provider_name
    #   Name of the provider.
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   Name of the service.
    #
    #   @return [String]
    #
    MultiplexProgramServiceDescriptor = ::Struct.new(
      :provider_name,
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Multiplex Program settings configuration.
    #
    # @!attribute preferred_channel_pipeline
    #   Indicates which pipeline is preferred by the multiplex for program ingest.
    #
    #   Enum, one of: ["CURRENTLY_ACTIVE", "PIPELINE_0", "PIPELINE_1"]
    #
    #   @return [String]
    #
    # @!attribute program_number
    #   Unique program number.
    #
    #   @return [Integer]
    #
    # @!attribute service_descriptor
    #   Transport stream service descriptor configuration for the Multiplex program.
    #
    #   @return [MultiplexProgramServiceDescriptor]
    #
    # @!attribute video_settings
    #   Program video settings configuration.
    #
    #   @return [MultiplexVideoSettings]
    #
    MultiplexProgramSettings = ::Struct.new(
      :preferred_channel_pipeline,
      :program_number,
      :service_descriptor,
      :video_settings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.program_number ||= 0
      end
    end

    # Placeholder documentation for MultiplexProgramSummary
    #
    # @!attribute channel_id
    #   The MediaLive Channel associated with the program.
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   The name of the multiplex program.
    #
    #   @return [String]
    #
    MultiplexProgramSummary = ::Struct.new(
      :channel_id,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Contains configuration for a Multiplex event
    #
    # @!attribute maximum_video_buffer_delay_milliseconds
    #   Maximum video buffer delay in milliseconds.
    #
    #   @return [Integer]
    #
    # @!attribute transport_stream_bitrate
    #   Transport stream bit rate.
    #
    #   @return [Integer]
    #
    # @!attribute transport_stream_id
    #   Transport stream ID.
    #
    #   @return [Integer]
    #
    # @!attribute transport_stream_reserved_bitrate
    #   Transport stream reserved bit rate.
    #
    #   @return [Integer]
    #
    MultiplexSettings = ::Struct.new(
      :maximum_video_buffer_delay_milliseconds,
      :transport_stream_bitrate,
      :transport_stream_id,
      :transport_stream_reserved_bitrate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.maximum_video_buffer_delay_milliseconds ||= 0
        self.transport_stream_bitrate ||= 0
        self.transport_stream_id ||= 0
        self.transport_stream_reserved_bitrate ||= 0
      end
    end

    # Contains summary configuration for a Multiplex event.
    #
    # @!attribute transport_stream_bitrate
    #   Transport stream bit rate.
    #
    #   @return [Integer]
    #
    MultiplexSettingsSummary = ::Struct.new(
      :transport_stream_bitrate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.transport_stream_bitrate ||= 0
      end
    end

    # Includes enum constants for MultiplexState
    #
    module MultiplexState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      IDLE = "IDLE"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      RECOVERING = "RECOVERING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # Statmux rate control settings
    #
    # @!attribute maximum_bitrate
    #   Maximum statmux bitrate.
    #
    #   @return [Integer]
    #
    # @!attribute minimum_bitrate
    #   Minimum statmux bitrate.
    #
    #   @return [Integer]
    #
    # @!attribute priority
    #   The purpose of the priority is to use a combination of the\nmultiplex rate control algorithm and the QVBR capability of the\nencoder to prioritize the video quality of some channels in a\nmultiplex over others.  Channels that have a higher priority will\nget higher video quality at the expense of the video quality of\nother channels in the multiplex with lower priority.
    #
    #   @return [Integer]
    #
    MultiplexStatmuxVideoSettings = ::Struct.new(
      :maximum_bitrate,
      :minimum_bitrate,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.maximum_bitrate ||= 0
        self.minimum_bitrate ||= 0
        self.priority ||= 0
      end
    end

    # Placeholder documentation for MultiplexSummary
    #
    # @!attribute arn
    #   The unique arn of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #
    #   @return [Array<String>]
    #
    # @!attribute id
    #   The unique id of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #
    #   @return [MultiplexSettingsSummary]
    #
    # @!attribute name
    #   The name of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   The current state of the multiplex.
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    MultiplexSummary = ::Struct.new(
      :arn,
      :availability_zones,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
        self.program_count ||= 0
      end
    end

    # The video configuration for each program in a multiplex.
    #
    # @!attribute constant_bitrate
    #   The constant bitrate configuration for the video encode.
    #   When this field is defined, StatmuxSettings must be undefined.
    #
    #   @return [Integer]
    #
    # @!attribute statmux_settings
    #   Statmux rate control settings.
    #   When this field is defined, ConstantBitrate must be undefined.
    #
    #   @return [MultiplexStatmuxVideoSettings]
    #
    MultiplexVideoSettings = ::Struct.new(
      :constant_bitrate,
      :statmux_settings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.constant_bitrate ||= 0
      end
    end

    # Includes enum constants for NetworkInputServerValidation
    #
    module NetworkInputServerValidation
      # No documentation available.
      #
      CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME = "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME"

      # No documentation available.
      #
      CHECK_CRYPTOGRAPHY_ONLY = "CHECK_CRYPTOGRAPHY_ONLY"
    end

    # Network source to transcode. Must be accessible to the Elemental Live node that is running the live event through a network connection.
    #
    # @!attribute hls_input_settings
    #   Specifies HLS input settings when the uri is for a HLS manifest.
    #
    #   @return [HlsInputSettings]
    #
    # @!attribute server_validation
    #   Check HTTPS server certificates. When set to checkCryptographyOnly, cryptography in the certificate will be checked, but not the server's name. Certain subdomains (notably S3 buckets that use dots in the bucket name) do not strictly match the corresponding certificate's wildcard pattern and would otherwise cause the event to error. This setting is ignored for protocols that do not use https.
    #
    #   Enum, one of: ["CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"]
    #
    #   @return [String]
    #
    NetworkInputSettings = ::Struct.new(
      :hls_input_settings,
      :server_validation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Nielsen CBET
    #
    # @!attribute cbet_check_digit_string
    #   Enter the CBET check digits to use in the watermark.
    #
    #   @return [String]
    #
    # @!attribute cbet_stepaside
    #   Determines the method of CBET insertion mode when prior encoding is detected on the same layer.
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute csid
    #   Enter the CBET Source ID (CSID) to use in the watermark
    #
    #   @return [String]
    #
    NielsenCBET = ::Struct.new(
      :cbet_check_digit_string,
      :cbet_stepaside,
      :csid,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Nielsen Configuration
    #
    # @!attribute distributor_id
    #   Enter the Distributor ID assigned to your organization by Nielsen.
    #
    #   @return [String]
    #
    # @!attribute nielsen_pcm_to_id3_tagging
    #   Enables Nielsen PCM to ID3 tagging
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    NielsenConfiguration = ::Struct.new(
      :distributor_id,
      :nielsen_pcm_to_id3_tagging,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Nielsen Naes Ii Nw
    #
    # @!attribute check_digit_string
    #   Enter the check digit string for the watermark
    #
    #   @return [String]
    #
    # @!attribute sid
    #   Enter the Nielsen Source ID (SID) to include in the watermark
    #
    #   @return [Float]
    #
    NielsenNaesIiNw = ::Struct.new(
      :check_digit_string,
      :sid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.sid ||= 0
      end
    end

    # Includes enum constants for NielsenPcmToId3TaggingState
    #
    module NielsenPcmToId3TaggingState
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for NielsenWatermarksCbetStepaside
    #
    module NielsenWatermarksCbetStepaside
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for NielsenWatermarksDistributionTypes
    #
    module NielsenWatermarksDistributionTypes
      # No documentation available.
      #
      FINAL_DISTRIBUTOR = "FINAL_DISTRIBUTOR"

      # No documentation available.
      #
      PROGRAM_CONTENT = "PROGRAM_CONTENT"
    end

    # Nielsen Watermarks Settings
    #
    # @!attribute nielsen_cbet_settings
    #   Complete these fields only if you want to insert watermarks of type Nielsen CBET
    #
    #   @return [NielsenCBET]
    #
    # @!attribute nielsen_distribution_type
    #   Choose the distribution types that you want to assign to the watermarks:
    #   - PROGRAM_CONTENT
    #   - FINAL_DISTRIBUTOR
    #
    #   Enum, one of: ["FINAL_DISTRIBUTOR", "PROGRAM_CONTENT"]
    #
    #   @return [String]
    #
    # @!attribute nielsen_naes_ii_nw_settings
    #   Complete these fields only if you want to insert watermarks of type Nielsen NAES II (N2) and Nielsen NAES VI (NW).
    #
    #   @return [NielsenNaesIiNw]
    #
    NielsenWatermarksSettings = ::Struct.new(
      :nielsen_cbet_settings,
      :nielsen_distribution_type,
      :nielsen_naes_ii_nw_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for NotFoundException
    #
    # @!attribute message
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Reserved resources available for purchase
    #
    # @!attribute arn
    #   Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
    #
    #   @return [String]
    #
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #
    #   @return [String]
    #
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #
    #   @return [Integer]
    #
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #
    #   Enum, one of: ["MONTHS"]
    #
    #   @return [String]
    #
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #
    #   @return [Float]
    #
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #
    #   @return [String]
    #
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #
    #   Enum, one of: ["NO_UPFRONT"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   Resource configuration details
    #
    #   @return [ReservationResourceSpecification]
    #
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #
    #   @return [Float]
    #
    Offering = ::Struct.new(
      :arn,
      :currency_code,
      :duration,
      :duration_units,
      :fixed_price,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :resource_specification,
      :usage_price,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.fixed_price ||= 0
        self.usage_price ||= 0
      end
    end

    # Includes enum constants for OfferingDurationUnits
    #
    module OfferingDurationUnits
      # No documentation available.
      #
      MONTHS = "MONTHS"
    end

    # Includes enum constants for OfferingType
    #
    module OfferingType
      # No documentation available.
      #
      NO_UPFRONT = "NO_UPFRONT"
    end

    # Output settings. There can be multiple outputs within a group.
    #
    # @!attribute audio_description_names
    #   The names of the AudioDescriptions used as audio sources for this output.
    #
    #   @return [Array<String>]
    #
    # @!attribute caption_description_names
    #   The names of the CaptionDescriptions used as caption sources for this output.
    #
    #   @return [Array<String>]
    #
    # @!attribute output_name
    #   The name used to identify an output.
    #
    #   @return [String]
    #
    # @!attribute output_settings
    #   Output type-specific settings.
    #
    #   @return [OutputSettings]
    #
    # @!attribute video_description_name
    #   The name of the VideoDescription used as the source for this output.
    #
    #   @return [String]
    #
    Output = ::Struct.new(
      :audio_description_names,
      :caption_description_names,
      :output_name,
      :output_settings,
      :video_description_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for OutputDestination
    #
    # @!attribute id
    #   User-specified id. This is used in an output group or an output.
    #
    #   @return [String]
    #
    # @!attribute media_package_settings
    #   Destination settings for a MediaPackage output; one destination for both encoders.
    #
    #   @return [Array<MediaPackageOutputDestinationSettings>]
    #
    # @!attribute multiplex_settings
    #   Destination settings for a Multiplex output; one destination for both encoders.
    #
    #   @return [MultiplexProgramChannelDestinationSettings]
    #
    # @!attribute settings
    #   Destination settings for a standard output; one destination for each redundant encoder.
    #
    #   @return [Array<OutputDestinationSettings>]
    #
    OutputDestination = ::Struct.new(
      :id,
      :media_package_settings,
      :multiplex_settings,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for OutputDestinationSettings
    #
    # @!attribute password_param
    #   key used to extract the password from EC2 Parameter store
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   Stream name for RTMP destinations (URLs of type rtmp://)
    #
    #   @return [String]
    #
    # @!attribute url
    #   A URL specifying a destination
    #
    #   @return [String]
    #
    # @!attribute username
    #   username for destination
    #
    #   @return [String]
    #
    OutputDestinationSettings = ::Struct.new(
      :password_param,
      :stream_name,
      :url,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Output groups for this Live Event. Output groups contain information about where streams should be distributed.
    #
    # @!attribute name
    #   Custom output group name optionally defined by the user.
    #
    #   @return [String]
    #
    # @!attribute output_group_settings
    #   Settings associated with the output group.
    #
    #   @return [OutputGroupSettings]
    #
    # @!attribute outputs
    #   Placeholder documentation for __listOfOutput
    #
    #   @return [Array<Output>]
    #
    OutputGroup = ::Struct.new(
      :name,
      :output_group_settings,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Output Group Settings
    #
    # @!attribute archive_group_settings
    #   Archive Group Settings
    #
    #   @return [ArchiveGroupSettings]
    #
    # @!attribute frame_capture_group_settings
    #   Frame Capture Group Settings
    #
    #   @return [FrameCaptureGroupSettings]
    #
    # @!attribute hls_group_settings
    #   Hls Group Settings
    #
    #   @return [HlsGroupSettings]
    #
    # @!attribute media_package_group_settings
    #   Media Package Group Settings
    #
    #   @return [MediaPackageGroupSettings]
    #
    # @!attribute ms_smooth_group_settings
    #   Ms Smooth Group Settings
    #
    #   @return [MsSmoothGroupSettings]
    #
    # @!attribute multiplex_group_settings
    #   Multiplex Group Settings
    #
    #   @return [MultiplexGroupSettings]
    #
    # @!attribute rtmp_group_settings
    #   Rtmp Group Settings
    #
    #   @return [RtmpGroupSettings]
    #
    # @!attribute udp_group_settings
    #   Udp Group Settings
    #
    #   @return [UdpGroupSettings]
    #
    OutputGroupSettings = ::Struct.new(
      :archive_group_settings,
      :frame_capture_group_settings,
      :hls_group_settings,
      :media_package_group_settings,
      :ms_smooth_group_settings,
      :multiplex_group_settings,
      :rtmp_group_settings,
      :udp_group_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Reference to an OutputDestination ID defined in the channel
    #
    # @!attribute destination_ref_id
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    OutputLocationRef = ::Struct.new(
      :destination_ref_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Output Settings
    #
    # @!attribute archive_output_settings
    #   Archive Output Settings
    #
    #   @return [ArchiveOutputSettings]
    #
    # @!attribute frame_capture_output_settings
    #   Frame Capture Output Settings
    #
    #   @return [FrameCaptureOutputSettings]
    #
    # @!attribute hls_output_settings
    #   Hls Output Settings
    #
    #   @return [HlsOutputSettings]
    #
    # @!attribute media_package_output_settings
    #   Media Package Output Settings
    #
    #   @return [MediaPackageOutputSettings]
    #
    # @!attribute ms_smooth_output_settings
    #   Ms Smooth Output Settings
    #
    #   @return [MsSmoothOutputSettings]
    #
    # @!attribute multiplex_output_settings
    #   Multiplex Output Settings
    #
    #   @return [MultiplexOutputSettings]
    #
    # @!attribute rtmp_output_settings
    #   Rtmp Output Settings
    #
    #   @return [RtmpOutputSettings]
    #
    # @!attribute udp_output_settings
    #   Udp Output Settings
    #
    #   @return [UdpOutputSettings]
    #
    OutputSettings = ::Struct.new(
      :archive_output_settings,
      :frame_capture_output_settings,
      :hls_output_settings,
      :media_package_output_settings,
      :ms_smooth_output_settings,
      :multiplex_output_settings,
      :rtmp_output_settings,
      :udp_output_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Pass Through Settings
    #
    PassThroughSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings for the action to set pause state of a channel.
    #
    # @!attribute pipelines
    #   Placeholder documentation for __listOfPipelinePauseStateSettings
    #
    #   @return [Array<PipelinePauseStateSettings>]
    #
    PauseStateScheduleActionSettings = ::Struct.new(
      :pipelines,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Runtime details of a pipeline when a channel is running.
    #
    # @!attribute active_input_attachment_name
    #   The name of the active input attachment currently being ingested by this pipeline.
    #
    #   @return [String]
    #
    # @!attribute active_input_switch_action_name
    #   The name of the input switch schedule action that occurred most recently and that resulted in the switch to the current input attachment for this pipeline.
    #
    #   @return [String]
    #
    # @!attribute active_motion_graphics_action_name
    #   The name of the motion graphics activate action that occurred most recently and that resulted in the current graphics URI for this pipeline.
    #
    #   @return [String]
    #
    # @!attribute active_motion_graphics_uri
    #   The current URI being used for HTML5 motion graphics for this pipeline.
    #
    #   @return [String]
    #
    # @!attribute pipeline_id
    #   Pipeline ID
    #
    #   @return [String]
    #
    PipelineDetail = ::Struct.new(
      :active_input_attachment_name,
      :active_input_switch_action_name,
      :active_motion_graphics_action_name,
      :active_motion_graphics_uri,
      :pipeline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PipelineId
    #
    module PipelineId
      # No documentation available.
      #
      PIPELINE_0 = "PIPELINE_0"

      # No documentation available.
      #
      PIPELINE_1 = "PIPELINE_1"
    end

    # Settings for pausing a pipeline.
    #
    # @!attribute pipeline_id
    #   Pipeline ID to pause ("PIPELINE_0" or "PIPELINE_1").
    #
    #   Enum, one of: ["PIPELINE_0", "PIPELINE_1"]
    #
    #   @return [String]
    #
    PipelinePauseStateSettings = ::Struct.new(
      :pipeline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PreferredChannelPipeline
    #
    module PreferredChannelPipeline
      # No documentation available.
      #
      CURRENTLY_ACTIVE = "CURRENTLY_ACTIVE"

      # No documentation available.
      #
      PIPELINE_0 = "PIPELINE_0"

      # No documentation available.
      #
      PIPELINE_1 = "PIPELINE_1"
    end

    # Placeholder documentation for PurchaseOfferingRequest
    #
    # @!attribute count
    #   Number of resources
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   Name for the new reservation
    #
    #   @return [String]
    #
    # @!attribute offering_id
    #   Offering to purchase, e.g. '87654321'
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.
    #
    #   @return [String]
    #
    # @!attribute start
    #   Requested reservation start time (UTC) in ISO-8601 format. The specified time must be between the first day of the current month and one year from now. If no value is given, the default is now.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs
    #
    #   @return [Hash<String, String>]
    #
    PurchaseOfferingInput = ::Struct.new(
      :count,
      :name,
      :offering_id,
      :request_id,
      :start,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
      end
    end

    # Placeholder documentation for PurchaseOfferingResponse
    #
    # @!attribute reservation
    #   Reserved resources available to use
    #
    #   @return [Reservation]
    #
    PurchaseOfferingOutput = ::Struct.new(
      :reservation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Raw Settings
    #
    RawSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Rec601 Settings
    #
    Rec601Settings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Rec709 Settings
    #
    Rec709Settings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for RejectInputDeviceTransferRequest
    #
    # @!attribute input_device_id
    #   The unique ID of the input device to reject. For example, hd-123456789abcdef.
    #
    #   @return [String]
    #
    RejectInputDeviceTransferInput = ::Struct.new(
      :input_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for RejectInputDeviceTransferResponse
    #
    RejectInputDeviceTransferOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Remix Settings
    #
    # @!attribute channel_mappings
    #   Mapping of input channels to output channels, with appropriate gain adjustments.
    #
    #   @return [Array<AudioChannelMapping>]
    #
    # @!attribute channels_in
    #   Number of input channels to be used.
    #
    #   @return [Integer]
    #
    # @!attribute channels_out
    #   Number of output channels to be produced.
    #   Valid values: 1, 2, 4, 6, 8
    #
    #   @return [Integer]
    #
    RemixSettings = ::Struct.new(
      :channel_mappings,
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

    # Reserved resources available to use
    #
    # @!attribute arn
    #   Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
    #
    #   @return [String]
    #
    # @!attribute count
    #   Number of reserved resources
    #
    #   @return [Integer]
    #
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #
    #   @return [String]
    #
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #
    #   @return [Integer]
    #
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #
    #   Enum, one of: ["MONTHS"]
    #
    #   @return [String]
    #
    # @!attribute end
    #   Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
    #
    #   @return [String]
    #
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #
    #   @return [Float]
    #
    # @!attribute name
    #   User specified reservation name
    #
    #   @return [String]
    #
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #
    #   @return [String]
    #
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #
    #   Enum, one of: ["NO_UPFRONT"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #
    #   @return [String]
    #
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   Resource configuration details
    #
    #   @return [ReservationResourceSpecification]
    #
    # @!attribute start
    #   Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
    #
    #   @return [String]
    #
    # @!attribute state
    #   Current state of reservation, e.g. 'ACTIVE'
    #
    #   Enum, one of: ["ACTIVE", "EXPIRED", "CANCELED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #
    #   @return [Float]
    #
    Reservation = ::Struct.new(
      :arn,
      :count,
      :currency_code,
      :duration,
      :duration_units,
      :end,
      :fixed_price,
      :name,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :reservation_id,
      :resource_specification,
      :start,
      :state,
      :tags,
      :usage_price,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
        self.duration ||= 0
        self.fixed_price ||= 0
        self.usage_price ||= 0
      end
    end

    # Includes enum constants for ReservationCodec
    #
    module ReservationCodec
      # No documentation available.
      #
      MPEG2 = "MPEG2"

      # No documentation available.
      #
      AVC = "AVC"

      # No documentation available.
      #
      HEVC = "HEVC"

      # No documentation available.
      #
      AUDIO = "AUDIO"

      # No documentation available.
      #
      LINK = "LINK"
    end

    # Includes enum constants for ReservationMaximumBitrate
    #
    module ReservationMaximumBitrate
      # No documentation available.
      #
      MAX_10_MBPS = "MAX_10_MBPS"

      # No documentation available.
      #
      MAX_20_MBPS = "MAX_20_MBPS"

      # No documentation available.
      #
      MAX_50_MBPS = "MAX_50_MBPS"
    end

    # Includes enum constants for ReservationMaximumFramerate
    #
    module ReservationMaximumFramerate
      # No documentation available.
      #
      MAX_30_FPS = "MAX_30_FPS"

      # No documentation available.
      #
      MAX_60_FPS = "MAX_60_FPS"
    end

    # Includes enum constants for ReservationResolution
    #
    module ReservationResolution
      # No documentation available.
      #
      SD = "SD"

      # No documentation available.
      #
      HD = "HD"

      # No documentation available.
      #
      FHD = "FHD"

      # No documentation available.
      #
      UHD = "UHD"
    end

    # Resource configuration (codec, resolution, bitrate, ...)
    #
    # @!attribute channel_class
    #   Channel class, e.g. 'STANDARD'
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute codec
    #   Codec, e.g. 'AVC'
    #
    #   Enum, one of: ["MPEG2", "AVC", "HEVC", "AUDIO", "LINK"]
    #
    #   @return [String]
    #
    # @!attribute maximum_bitrate
    #   Maximum bitrate, e.g. 'MAX_20_MBPS'
    #
    #   Enum, one of: ["MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"]
    #
    #   @return [String]
    #
    # @!attribute maximum_framerate
    #   Maximum framerate, e.g. 'MAX_30_FPS' (Outputs only)
    #
    #   Enum, one of: ["MAX_30_FPS", "MAX_60_FPS"]
    #
    #   @return [String]
    #
    # @!attribute resolution
    #   Resolution, e.g. 'HD'
    #
    #   Enum, one of: ["SD", "HD", "FHD", "UHD"]
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
    #
    #   Enum, one of: ["INPUT", "OUTPUT", "MULTIPLEX", "CHANNEL"]
    #
    #   @return [String]
    #
    # @!attribute special_feature
    #   Special feature, e.g. 'AUDIO_NORMALIZATION' (Channels only)
    #
    #   Enum, one of: ["ADVANCED_AUDIO", "AUDIO_NORMALIZATION", "MGHD", "MGUHD"]
    #
    #   @return [String]
    #
    # @!attribute video_quality
    #   Video quality, e.g. 'STANDARD' (Outputs only)
    #
    #   Enum, one of: ["STANDARD", "ENHANCED", "PREMIUM"]
    #
    #   @return [String]
    #
    ReservationResourceSpecification = ::Struct.new(
      :channel_class,
      :codec,
      :maximum_bitrate,
      :maximum_framerate,
      :resolution,
      :resource_type,
      :special_feature,
      :video_quality,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReservationResourceType
    #
    module ReservationResourceType
      # No documentation available.
      #
      INPUT = "INPUT"

      # No documentation available.
      #
      OUTPUT = "OUTPUT"

      # No documentation available.
      #
      MULTIPLEX = "MULTIPLEX"

      # No documentation available.
      #
      CHANNEL = "CHANNEL"
    end

    # Includes enum constants for ReservationSpecialFeature
    #
    module ReservationSpecialFeature
      # No documentation available.
      #
      ADVANCED_AUDIO = "ADVANCED_AUDIO"

      # No documentation available.
      #
      AUDIO_NORMALIZATION = "AUDIO_NORMALIZATION"

      # No documentation available.
      #
      MGHD = "MGHD"

      # No documentation available.
      #
      MGUHD = "MGUHD"
    end

    # Includes enum constants for ReservationState
    #
    module ReservationState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # Includes enum constants for ReservationVideoQuality
    #
    module ReservationVideoQuality
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      ENHANCED = "ENHANCED"

      # No documentation available.
      #
      PREMIUM = "PREMIUM"
    end

    # Includes enum constants for RtmpAdMarkers
    #
    module RtmpAdMarkers
      # No documentation available.
      #
      ON_CUE_POINT_SCTE35 = "ON_CUE_POINT_SCTE35"
    end

    # Includes enum constants for RtmpCacheFullBehavior
    #
    module RtmpCacheFullBehavior
      # No documentation available.
      #
      DISCONNECT_IMMEDIATELY = "DISCONNECT_IMMEDIATELY"

      # No documentation available.
      #
      WAIT_FOR_SERVER = "WAIT_FOR_SERVER"
    end

    # Includes enum constants for RtmpCaptionData
    #
    module RtmpCaptionData
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      FIELD1_608 = "FIELD1_608"

      # No documentation available.
      #
      FIELD1_AND_FIELD2_608 = "FIELD1_AND_FIELD2_608"
    end

    # Rtmp Caption Info Destination Settings
    #
    RtmpCaptionInfoDestinationSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Rtmp Group Settings
    #
    # @!attribute ad_markers
    #   Choose the ad marker type for this output group. MediaLive will create a message based on the content of each SCTE-35 message, format it for that marker type, and insert it in the datastream.
    #
    #   @return [Array<String>]
    #
    # @!attribute authentication_scheme
    #   Authentication scheme to use when connecting with CDN
    #
    #   Enum, one of: ["AKAMAI", "COMMON"]
    #
    #   @return [String]
    #
    # @!attribute cache_full_behavior
    #   Controls behavior when content cache fills up. If remote origin server stalls the RTMP connection and does not accept content fast enough the 'Media Cache' will fill up. When the cache reaches the duration specified by cacheLength the cache will stop accepting new content. If set to disconnectImmediately, the RTMP output will force a disconnect. Clear the media cache, and reconnect after restartDelay seconds. If set to waitForServer, the RTMP output will wait up to 5 minutes to allow the origin server to begin accepting data again.
    #
    #   Enum, one of: ["DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"]
    #
    #   @return [String]
    #
    # @!attribute cache_length
    #   Cache length, in seconds, is used to calculate buffer size.
    #
    #   @return [Integer]
    #
    # @!attribute caption_data
    #   Controls the types of data that passes to onCaptionInfo outputs.  If set to 'all' then 608 and 708 carried DTVCC data will be passed.  If set to 'field1AndField2608' then DTVCC data will be stripped out, but 608 data from both fields will be passed. If set to 'field1608' then only the data carried in 608 from field 1 video will be passed.
    #
    #   Enum, one of: ["ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"]
    #
    #   @return [String]
    #
    # @!attribute input_loss_action
    #   Controls the behavior of this RTMP group if input becomes unavailable.
    #
    #   - emitOutput: Emit a slate until input returns.
    #   - pauseOutput: Stop transmitting data until input returns. This does not close the underlying RTMP connection.
    #
    #   Enum, one of: ["EMIT_OUTPUT", "PAUSE_OUTPUT"]
    #
    #   @return [String]
    #
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #
    #   @return [Integer]
    #
    RtmpGroupSettings = ::Struct.new(
      :ad_markers,
      :authentication_scheme,
      :cache_full_behavior,
      :cache_length,
      :caption_data,
      :input_loss_action,
      :restart_delay,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cache_length ||= 0
        self.restart_delay ||= 0
      end
    end

    # Includes enum constants for RtmpOutputCertificateMode
    #
    module RtmpOutputCertificateMode
      # No documentation available.
      #
      SELF_SIGNED = "SELF_SIGNED"

      # No documentation available.
      #
      VERIFY_AUTHENTICITY = "VERIFY_AUTHENTICITY"
    end

    # Rtmp Output Settings
    #
    # @!attribute certificate_mode
    #   If set to verifyAuthenticity, verify the tls certificate chain to a trusted Certificate Authority (CA).  This will cause rtmps outputs with self-signed certificates to fail.
    #
    #   Enum, one of: ["SELF_SIGNED", "VERIFY_AUTHENTICITY"]
    #
    #   @return [String]
    #
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying a connection to the Flash Media server if the connection is lost.
    #
    #   @return [Integer]
    #
    # @!attribute destination
    #   The RTMP endpoint excluding the stream name (eg. rtmp://host/appname). For connection to Akamai, a username and password must be supplied. URI fields accept format identifiers.
    #
    #   @return [OutputLocationRef]
    #
    # @!attribute num_retries
    #   Number of retry attempts.
    #
    #   @return [Integer]
    #
    RtmpOutputSettings = ::Struct.new(
      :certificate_mode,
      :connection_retry_interval,
      :destination,
      :num_retries,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.connection_retry_interval ||= 0
        self.num_retries ||= 0
      end
    end

    # Includes enum constants for S3CannedAcl
    #
    module S3CannedAcl
      # No documentation available.
      #
      AUTHENTICATED_READ = "AUTHENTICATED_READ"

      # No documentation available.
      #
      BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL"

      # No documentation available.
      #
      BUCKET_OWNER_READ = "BUCKET_OWNER_READ"

      # No documentation available.
      #
      PUBLIC_READ = "PUBLIC_READ"
    end

    # Contains information on a single schedule action.
    #
    # @!attribute action_name
    #   The name of the action, must be unique within the schedule. This name provides the main reference to an action once it is added to the schedule. A name is unique if it is no longer in the schedule. The schedule is automatically cleaned up to remove actions with a start time of more than 1 hour ago (approximately) so at that point a name can be reused.
    #
    #   @return [String]
    #
    # @!attribute schedule_action_settings
    #   Settings for this schedule action.
    #
    #   @return [ScheduleActionSettings]
    #
    # @!attribute schedule_action_start_settings
    #   The time for the action to start in the channel.
    #
    #   @return [ScheduleActionStartSettings]
    #
    ScheduleAction = ::Struct.new(
      :action_name,
      :schedule_action_settings,
      :schedule_action_start_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Holds the settings for a single schedule action.
    #
    # @!attribute hls_id3_segment_tagging_settings
    #   Action to insert HLS ID3 segment tagging
    #
    #   @return [HlsId3SegmentTaggingScheduleActionSettings]
    #
    # @!attribute hls_timed_metadata_settings
    #   Action to insert HLS metadata
    #
    #   @return [HlsTimedMetadataScheduleActionSettings]
    #
    # @!attribute input_prepare_settings
    #   Action to prepare an input for a future immediate input switch
    #
    #   @return [InputPrepareScheduleActionSettings]
    #
    # @!attribute input_switch_settings
    #   Action to switch the input
    #
    #   @return [InputSwitchScheduleActionSettings]
    #
    # @!attribute motion_graphics_image_activate_settings
    #   Action to activate a motion graphics image overlay
    #
    #   @return [MotionGraphicsActivateScheduleActionSettings]
    #
    # @!attribute motion_graphics_image_deactivate_settings
    #   Action to deactivate a motion graphics image overlay
    #
    #   @return [MotionGraphicsDeactivateScheduleActionSettings]
    #
    # @!attribute pause_state_settings
    #   Action to pause or unpause one or both channel pipelines
    #
    #   @return [PauseStateScheduleActionSettings]
    #
    # @!attribute scte35_return_to_network_settings
    #   Action to insert SCTE-35 return_to_network message
    #
    #   @return [Scte35ReturnToNetworkScheduleActionSettings]
    #
    # @!attribute scte35_splice_insert_settings
    #   Action to insert SCTE-35 splice_insert message
    #
    #   @return [Scte35SpliceInsertScheduleActionSettings]
    #
    # @!attribute scte35_time_signal_settings
    #   Action to insert SCTE-35 time_signal message
    #
    #   @return [Scte35TimeSignalScheduleActionSettings]
    #
    # @!attribute static_image_activate_settings
    #   Action to activate a static image overlay
    #
    #   @return [StaticImageActivateScheduleActionSettings]
    #
    # @!attribute static_image_deactivate_settings
    #   Action to deactivate a static image overlay
    #
    #   @return [StaticImageDeactivateScheduleActionSettings]
    #
    ScheduleActionSettings = ::Struct.new(
      :hls_id3_segment_tagging_settings,
      :hls_timed_metadata_settings,
      :input_prepare_settings,
      :input_switch_settings,
      :motion_graphics_image_activate_settings,
      :motion_graphics_image_deactivate_settings,
      :pause_state_settings,
      :scte35_return_to_network_settings,
      :scte35_splice_insert_settings,
      :scte35_time_signal_settings,
      :static_image_activate_settings,
      :static_image_deactivate_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings to specify when an action should occur. Only one of the options must be selected.
    #
    # @!attribute fixed_mode_schedule_action_start_settings
    #   Option for specifying the start time for an action.
    #
    #   @return [FixedModeScheduleActionStartSettings]
    #
    # @!attribute follow_mode_schedule_action_start_settings
    #   Option for specifying an action as relative to another action.
    #
    #   @return [FollowModeScheduleActionStartSettings]
    #
    # @!attribute immediate_mode_schedule_action_start_settings
    #   Option for specifying an action that should be applied immediately.
    #
    #   @return [ImmediateModeScheduleActionStartSettings]
    #
    ScheduleActionStartSettings = ::Struct.new(
      :fixed_mode_schedule_action_start_settings,
      :follow_mode_schedule_action_start_settings,
      :immediate_mode_schedule_action_start_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Scte20Convert608To708
    #
    module Scte20Convert608To708
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      UPCONVERT = "UPCONVERT"
    end

    # Scte20 Plus Embedded Destination Settings
    #
    Scte20PlusEmbeddedDestinationSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Scte20 Source Settings
    #
    # @!attribute convert608_to708
    #   If upconvert, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
    #
    #   Enum, one of: ["DISABLED", "UPCONVERT"]
    #
    #   @return [String]
    #
    # @!attribute source608_channel_number
    #   Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
    #
    #   @return [Integer]
    #
    Scte20SourceSettings = ::Struct.new(
      :convert608_to708,
      :source608_channel_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.source608_channel_number ||= 0
      end
    end

    # Scte27 Destination Settings
    #
    Scte27DestinationSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Scte27OcrLanguage
    #
    module Scte27OcrLanguage
      # No documentation available.
      #
      DEU = "DEU"

      # No documentation available.
      #
      ENG = "ENG"

      # No documentation available.
      #
      FRA = "FRA"

      # No documentation available.
      #
      NLD = "NLD"

      # No documentation available.
      #
      POR = "POR"

      # No documentation available.
      #
      SPA = "SPA"
    end

    # Scte27 Source Settings
    #
    # @!attribute ocr_language
    #   If you will configure a WebVTT caption description that references this caption selector, use this field to
    #   provide the language to consider when translating the image-based source to text.
    #
    #   Enum, one of: ["DEU", "ENG", "FRA", "NLD", "POR", "SPA"]
    #
    #   @return [String]
    #
    # @!attribute pid
    #   The pid field is used in conjunction with the caption selector languageCode field as follows:
    #     - Specify PID and Language: Extracts captions from that PID; the language is "informational".
    #     - Specify PID and omit Language: Extracts the specified PID.
    #     - Omit PID and specify Language: Extracts the specified language, whichever PID that happens to be.
    #     - Omit PID and omit Language: Valid only if source is DVB-Sub that is being passed through; all languages will be passed through.
    #
    #   @return [Integer]
    #
    Scte27SourceSettings = ::Struct.new(
      :ocr_language,
      :pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pid ||= 0
      end
    end

    # Includes enum constants for Scte35AposNoRegionalBlackoutBehavior
    #
    module Scte35AposNoRegionalBlackoutBehavior
      # No documentation available.
      #
      FOLLOW = "FOLLOW"

      # No documentation available.
      #
      IGNORE = "IGNORE"
    end

    # Includes enum constants for Scte35AposWebDeliveryAllowedBehavior
    #
    module Scte35AposWebDeliveryAllowedBehavior
      # No documentation available.
      #
      FOLLOW = "FOLLOW"

      # No documentation available.
      #
      IGNORE = "IGNORE"
    end

    # Includes enum constants for Scte35ArchiveAllowedFlag
    #
    module Scte35ArchiveAllowedFlag
      # No documentation available.
      #
      ARCHIVE_NOT_ALLOWED = "ARCHIVE_NOT_ALLOWED"

      # No documentation available.
      #
      ARCHIVE_ALLOWED = "ARCHIVE_ALLOWED"
    end

    # Corresponds to SCTE-35 delivery_not_restricted_flag parameter. To declare delivery restrictions, include this element and its four "restriction" flags. To declare that there are no restrictions, omit this element.
    #
    # @!attribute archive_allowed_flag
    #   Corresponds to SCTE-35 archive_allowed_flag.
    #
    #   Enum, one of: ["ARCHIVE_NOT_ALLOWED", "ARCHIVE_ALLOWED"]
    #
    #   @return [String]
    #
    # @!attribute device_restrictions
    #   Corresponds to SCTE-35 device_restrictions parameter.
    #
    #   Enum, one of: ["NONE", "RESTRICT_GROUP0", "RESTRICT_GROUP1", "RESTRICT_GROUP2"]
    #
    #   @return [String]
    #
    # @!attribute no_regional_blackout_flag
    #   Corresponds to SCTE-35 no_regional_blackout_flag parameter.
    #
    #   Enum, one of: ["REGIONAL_BLACKOUT", "NO_REGIONAL_BLACKOUT"]
    #
    #   @return [String]
    #
    # @!attribute web_delivery_allowed_flag
    #   Corresponds to SCTE-35 web_delivery_allowed_flag parameter.
    #
    #   Enum, one of: ["WEB_DELIVERY_NOT_ALLOWED", "WEB_DELIVERY_ALLOWED"]
    #
    #   @return [String]
    #
    Scte35DeliveryRestrictions = ::Struct.new(
      :archive_allowed_flag,
      :device_restrictions,
      :no_regional_blackout_flag,
      :web_delivery_allowed_flag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Holds one set of SCTE-35 Descriptor Settings.
    #
    # @!attribute scte35_descriptor_settings
    #   SCTE-35 Descriptor Settings.
    #
    #   @return [Scte35DescriptorSettings]
    #
    Scte35Descriptor = ::Struct.new(
      :scte35_descriptor_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # SCTE-35 Descriptor settings.
    #
    # @!attribute segmentation_descriptor_scte35_descriptor_settings
    #   SCTE-35 Segmentation Descriptor.
    #
    #   @return [Scte35SegmentationDescriptor]
    #
    Scte35DescriptorSettings = ::Struct.new(
      :segmentation_descriptor_scte35_descriptor_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Scte35DeviceRestrictions
    #
    module Scte35DeviceRestrictions
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      RESTRICT_GROUP0 = "RESTRICT_GROUP0"

      # No documentation available.
      #
      RESTRICT_GROUP1 = "RESTRICT_GROUP1"

      # No documentation available.
      #
      RESTRICT_GROUP2 = "RESTRICT_GROUP2"
    end

    # Includes enum constants for Scte35NoRegionalBlackoutFlag
    #
    module Scte35NoRegionalBlackoutFlag
      # No documentation available.
      #
      REGIONAL_BLACKOUT = "REGIONAL_BLACKOUT"

      # No documentation available.
      #
      NO_REGIONAL_BLACKOUT = "NO_REGIONAL_BLACKOUT"
    end

    # Settings for a SCTE-35 return_to_network message.
    #
    # @!attribute splice_event_id
    #   The splice_event_id for the SCTE-35 splice_insert, as defined in SCTE-35.
    #
    #   @return [Integer]
    #
    Scte35ReturnToNetworkScheduleActionSettings = ::Struct.new(
      :splice_event_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.splice_event_id ||= 0
      end
    end

    # Includes enum constants for Scte35SegmentationCancelIndicator
    #
    module Scte35SegmentationCancelIndicator
      # No documentation available.
      #
      SEGMENTATION_EVENT_NOT_CANCELED = "SEGMENTATION_EVENT_NOT_CANCELED"

      # No documentation available.
      #
      SEGMENTATION_EVENT_CANCELED = "SEGMENTATION_EVENT_CANCELED"
    end

    # Corresponds to SCTE-35 segmentation_descriptor.
    #
    # @!attribute delivery_restrictions
    #   Holds the four SCTE-35 delivery restriction parameters.
    #
    #   @return [Scte35DeliveryRestrictions]
    #
    # @!attribute segment_num
    #   Corresponds to SCTE-35 segment_num. A value that is valid for the specified segmentation_type_id.
    #
    #   @return [Integer]
    #
    # @!attribute segmentation_cancel_indicator
    #   Corresponds to SCTE-35 segmentation_event_cancel_indicator.
    #
    #   Enum, one of: ["SEGMENTATION_EVENT_NOT_CANCELED", "SEGMENTATION_EVENT_CANCELED"]
    #
    #   @return [String]
    #
    # @!attribute segmentation_duration
    #   Corresponds to SCTE-35 segmentation_duration. Optional. The duration for the time_signal, in 90 KHz ticks. To convert seconds to ticks, multiple the seconds by 90,000. Enter time in 90 KHz clock ticks. If you do not enter a duration, the time_signal will continue until you insert a cancellation message.
    #
    #   @return [Integer]
    #
    # @!attribute segmentation_event_id
    #   Corresponds to SCTE-35 segmentation_event_id.
    #
    #   @return [Integer]
    #
    # @!attribute segmentation_type_id
    #   Corresponds to SCTE-35 segmentation_type_id. One of the segmentation_type_id values listed in the SCTE-35 specification. On the console, enter the ID in decimal (for example, "52"). In the CLI, API, or an SDK, enter the ID in hex (for example, "0x34") or decimal (for example, "52").
    #
    #   @return [Integer]
    #
    # @!attribute segmentation_upid
    #   Corresponds to SCTE-35 segmentation_upid. Enter a string containing the hexadecimal representation of the characters that make up the SCTE-35 segmentation_upid value. Must contain an even number of hex characters. Do not include spaces between each hex pair. For example, the ASCII "ADS Information" becomes hex "41445320496e666f726d6174696f6e.
    #
    #   @return [String]
    #
    # @!attribute segmentation_upid_type
    #   Corresponds to SCTE-35 segmentation_upid_type. On the console, enter one of the types listed in the SCTE-35 specification, converted to a decimal. For example, "0x0C" hex from the specification is "12" in decimal. In the CLI, API, or an SDK, enter one of the types listed in the SCTE-35 specification, in either hex (for example, "0x0C" ) or in decimal (for example, "12").
    #
    #   @return [Integer]
    #
    # @!attribute segments_expected
    #   Corresponds to SCTE-35 segments_expected. A value that is valid for the specified segmentation_type_id.
    #
    #   @return [Integer]
    #
    # @!attribute sub_segment_num
    #   Corresponds to SCTE-35 sub_segment_num. A value that is valid for the specified segmentation_type_id.
    #
    #   @return [Integer]
    #
    # @!attribute sub_segments_expected
    #   Corresponds to SCTE-35 sub_segments_expected. A value that is valid for the specified segmentation_type_id.
    #
    #   @return [Integer]
    #
    Scte35SegmentationDescriptor = ::Struct.new(
      :delivery_restrictions,
      :segment_num,
      :segmentation_cancel_indicator,
      :segmentation_duration,
      :segmentation_event_id,
      :segmentation_type_id,
      :segmentation_upid,
      :segmentation_upid_type,
      :segments_expected,
      :sub_segment_num,
      :sub_segments_expected,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.segment_num ||= 0
        self.segmentation_duration ||= 0
        self.segmentation_event_id ||= 0
        self.segmentation_type_id ||= 0
        self.segmentation_upid_type ||= 0
        self.segments_expected ||= 0
        self.sub_segment_num ||= 0
        self.sub_segments_expected ||= 0
      end
    end

    # Scte35 Splice Insert
    #
    # @!attribute ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time. This only applies to embedded SCTE 104/35 messages and does not apply to OOB messages.
    #
    #   @return [Integer]
    #
    # @!attribute no_regional_blackout_flag
    #   When set to ignore, Segment Descriptors with noRegionalBlackoutFlag set to 0 will no longer trigger blackouts or Ad Avail slates
    #
    #   Enum, one of: ["FOLLOW", "IGNORE"]
    #
    #   @return [String]
    #
    # @!attribute web_delivery_allowed_flag
    #   When set to ignore, Segment Descriptors with webDeliveryAllowedFlag set to 0 will no longer trigger blackouts or Ad Avail slates
    #
    #   Enum, one of: ["FOLLOW", "IGNORE"]
    #
    #   @return [String]
    #
    Scte35SpliceInsert = ::Struct.new(
      :ad_avail_offset,
      :no_regional_blackout_flag,
      :web_delivery_allowed_flag,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ad_avail_offset ||= 0
      end
    end

    # Includes enum constants for Scte35SpliceInsertNoRegionalBlackoutBehavior
    #
    module Scte35SpliceInsertNoRegionalBlackoutBehavior
      # No documentation available.
      #
      FOLLOW = "FOLLOW"

      # No documentation available.
      #
      IGNORE = "IGNORE"
    end

    # Settings for a SCTE-35 splice_insert message.
    #
    # @!attribute duration
    #   Optional, the duration for the splice_insert, in 90 KHz ticks. To convert seconds to ticks, multiple the seconds by 90,000. If you enter a duration, there is an expectation that the downstream system can read the duration and cue in at that time. If you do not enter a duration, the splice_insert will continue indefinitely and there is an expectation that you will enter a return_to_network to end the splice_insert at the appropriate time.
    #
    #   @return [Integer]
    #
    # @!attribute splice_event_id
    #   The splice_event_id for the SCTE-35 splice_insert, as defined in SCTE-35.
    #
    #   @return [Integer]
    #
    Scte35SpliceInsertScheduleActionSettings = ::Struct.new(
      :duration,
      :splice_event_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.splice_event_id ||= 0
      end
    end

    # Includes enum constants for Scte35SpliceInsertWebDeliveryAllowedBehavior
    #
    module Scte35SpliceInsertWebDeliveryAllowedBehavior
      # No documentation available.
      #
      FOLLOW = "FOLLOW"

      # No documentation available.
      #
      IGNORE = "IGNORE"
    end

    # Scte35 Time Signal Apos
    #
    # @!attribute ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time. This only applies to embedded SCTE 104/35 messages and does not apply to OOB messages.
    #
    #   @return [Integer]
    #
    # @!attribute no_regional_blackout_flag
    #   When set to ignore, Segment Descriptors with noRegionalBlackoutFlag set to 0 will no longer trigger blackouts or Ad Avail slates
    #
    #   Enum, one of: ["FOLLOW", "IGNORE"]
    #
    #   @return [String]
    #
    # @!attribute web_delivery_allowed_flag
    #   When set to ignore, Segment Descriptors with webDeliveryAllowedFlag set to 0 will no longer trigger blackouts or Ad Avail slates
    #
    #   Enum, one of: ["FOLLOW", "IGNORE"]
    #
    #   @return [String]
    #
    Scte35TimeSignalApos = ::Struct.new(
      :ad_avail_offset,
      :no_regional_blackout_flag,
      :web_delivery_allowed_flag,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ad_avail_offset ||= 0
      end
    end

    # Settings for a SCTE-35 time_signal.
    #
    # @!attribute scte35_descriptors
    #   The list of SCTE-35 descriptors accompanying the SCTE-35 time_signal.
    #
    #   @return [Array<Scte35Descriptor>]
    #
    Scte35TimeSignalScheduleActionSettings = ::Struct.new(
      :scte35_descriptors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Scte35WebDeliveryAllowedFlag
    #
    module Scte35WebDeliveryAllowedFlag
      # No documentation available.
      #
      WEB_DELIVERY_NOT_ALLOWED = "WEB_DELIVERY_NOT_ALLOWED"

      # No documentation available.
      #
      WEB_DELIVERY_ALLOWED = "WEB_DELIVERY_ALLOWED"
    end

    # Includes enum constants for SmoothGroupAudioOnlyTimecodeControl
    #
    module SmoothGroupAudioOnlyTimecodeControl
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      USE_CONFIGURED_CLOCK = "USE_CONFIGURED_CLOCK"
    end

    # Includes enum constants for SmoothGroupCertificateMode
    #
    module SmoothGroupCertificateMode
      # No documentation available.
      #
      SELF_SIGNED = "SELF_SIGNED"

      # No documentation available.
      #
      VERIFY_AUTHENTICITY = "VERIFY_AUTHENTICITY"
    end

    # Includes enum constants for SmoothGroupEventIdMode
    #
    module SmoothGroupEventIdMode
      # No documentation available.
      #
      NO_EVENT_ID = "NO_EVENT_ID"

      # No documentation available.
      #
      USE_CONFIGURED = "USE_CONFIGURED"

      # No documentation available.
      #
      USE_TIMESTAMP = "USE_TIMESTAMP"
    end

    # Includes enum constants for SmoothGroupEventStopBehavior
    #
    module SmoothGroupEventStopBehavior
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SEND_EOS = "SEND_EOS"
    end

    # Includes enum constants for SmoothGroupSegmentationMode
    #
    module SmoothGroupSegmentationMode
      # No documentation available.
      #
      USE_INPUT_SEGMENTATION = "USE_INPUT_SEGMENTATION"

      # No documentation available.
      #
      USE_SEGMENT_DURATION = "USE_SEGMENT_DURATION"
    end

    # Includes enum constants for SmoothGroupSparseTrackType
    #
    module SmoothGroupSparseTrackType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SCTE_35 = "SCTE_35"

      # No documentation available.
      #
      SCTE_35_WITHOUT_SEGMENTATION = "SCTE_35_WITHOUT_SEGMENTATION"
    end

    # Includes enum constants for SmoothGroupStreamManifestBehavior
    #
    module SmoothGroupStreamManifestBehavior
      # No documentation available.
      #
      DO_NOT_SEND = "DO_NOT_SEND"

      # No documentation available.
      #
      SEND = "SEND"
    end

    # Includes enum constants for SmoothGroupTimestampOffsetMode
    #
    module SmoothGroupTimestampOffsetMode
      # No documentation available.
      #
      USE_CONFIGURED_OFFSET = "USE_CONFIGURED_OFFSET"

      # No documentation available.
      #
      USE_EVENT_START_DATE = "USE_EVENT_START_DATE"
    end

    # Includes enum constants for Smpte2038DataPreference
    #
    module Smpte2038DataPreference
      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      PREFER = "PREFER"
    end

    # Smpte Tt Destination Settings
    #
    SmpteTtDestinationSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Standard Hls Settings
    #
    # @!attribute audio_rendition_sets
    #   List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
    #
    #   @return [String]
    #
    # @!attribute m3u8_settings
    #   Settings information for the .m3u8 container
    #
    #   @return [M3u8Settings]
    #
    StandardHlsSettings = ::Struct.new(
      :audio_rendition_sets,
      :m3u8_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for StartChannelRequest
    #
    # @!attribute channel_id
    #   A request to start a channel
    #
    #   @return [String]
    #
    StartChannelInput = ::Struct.new(
      :channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for StartChannelResponse
    #
    # @!attribute arn
    #   The unique arn of the channel.
    #
    #   @return [String]
    #
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #
    #   @return [CdiInputSpecification]
    #
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #
    #   @return [Array<OutputDestination>]
    #
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #
    #   @return [Array<ChannelEgressEndpoint>]
    #
    # @!attribute encoder_settings
    #   Encoder Settings
    #
    #   @return [EncoderSettings]
    #
    # @!attribute id
    #   The unique id of the channel.
    #
    #   @return [String]
    #
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #
    #   @return [Array<InputAttachment>]
    #
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #
    #   @return [InputSpecification]
    #
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #
    #   Enum, one of: ["ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #
    #   @return [MaintenanceStatus]
    #
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #
    #   @return [String]
    #
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #
    #   @return [Array<PipelineDetail>]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #
    #   @return [String]
    #
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc
    #   Settings for VPC output
    #
    #   @return [VpcOutputSettingsDescription]
    #
    StartChannelOutput = ::Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
      end
    end

    # Placeholder documentation for StartMultiplexRequest
    #
    # @!attribute multiplex_id
    #   The ID of the multiplex.
    #
    #   @return [String]
    #
    StartMultiplexInput = ::Struct.new(
      :multiplex_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for StartMultiplexResponse
    #
    # @!attribute arn
    #   The unique arn of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #
    #   @return [Array<String>]
    #
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #
    #   @return [Array<MultiplexOutputDestination>]
    #
    # @!attribute id
    #   The unique id of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #
    #   @return [MultiplexSettings]
    #
    # @!attribute name
    #   The name of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   The current state of the multiplex.
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    StartMultiplexOutput = ::Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
        self.program_count ||= 0
      end
    end

    # Settings to identify the start of the clip.
    #
    # @!attribute timecode
    #   The timecode for the frame where you want to start the clip. Optional; if not specified, the clip starts at first frame in the file. Enter the timecode as HH:MM:SS:FF or HH:MM:SS;FF.
    #
    #   @return [String]
    #
    StartTimecode = ::Struct.new(
      :timecode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Settings for the action to activate a static image.
    #
    # @!attribute duration
    #   The duration in milliseconds for the image to remain on the video. If omitted or set to 0 the duration is unlimited and the image will remain until it is explicitly deactivated.
    #
    #   @return [Integer]
    #
    # @!attribute fade_in
    #   The time in milliseconds for the image to fade in. The fade-in starts at the start time of the overlay. Default is 0 (no fade-in).
    #
    #   @return [Integer]
    #
    # @!attribute fade_out
    #   Applies only if a duration is specified. The time in milliseconds for the image to fade out. The fade-out starts when the duration time is hit, so it effectively extends the duration. Default is 0 (no fade-out).
    #
    #   @return [Integer]
    #
    # @!attribute height
    #   The height of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified height. Leave blank to use the native height of the overlay.
    #
    #   @return [Integer]
    #
    # @!attribute image
    #   The location and filename of the image file to overlay on the video. The file must be a 32-bit BMP, PNG, or TGA file, and must not be larger (in pixels) than the input video.
    #
    #   @return [InputLocation]
    #
    # @!attribute image_x
    #   Placement of the left edge of the overlay relative to the left edge of the video frame, in pixels. 0 (the default) is the left edge of the frame. If the placement causes the overlay to extend beyond the right edge of the underlying video, then the overlay is cropped on the right.
    #
    #   @return [Integer]
    #
    # @!attribute image_y
    #   Placement of the top edge of the overlay relative to the top edge of the video frame, in pixels. 0 (the default) is the top edge of the frame. If the placement causes the overlay to extend beyond the bottom edge of the underlying video, then the overlay is cropped on the bottom.
    #
    #   @return [Integer]
    #
    # @!attribute layer
    #   The number of the layer, 0 to 7. There are 8 layers that can be overlaid on the video, each layer with a different image. The layers are in Z order, which means that overlays with higher values of layer are inserted on top of overlays with lower values of layer. Default is 0.
    #
    #   @return [Integer]
    #
    # @!attribute opacity
    #   Opacity of image where 0 is transparent and 100 is fully opaque. Default is 100.
    #
    #   @return [Integer]
    #
    # @!attribute width
    #   The width of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified width. Leave blank to use the native width of the overlay.
    #
    #   @return [Integer]
    #
    StaticImageActivateScheduleActionSettings = ::Struct.new(
      :duration,
      :fade_in,
      :fade_out,
      :height,
      :image,
      :image_x,
      :image_y,
      :layer,
      :opacity,
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

    # Settings for the action to deactivate the image in a specific layer.
    #
    # @!attribute fade_out
    #   The time in milliseconds for the image to fade out. Default is 0 (no fade-out).
    #
    #   @return [Integer]
    #
    # @!attribute layer
    #   The image overlay layer to deactivate, 0 to 7. Default is 0.
    #
    #   @return [Integer]
    #
    StaticImageDeactivateScheduleActionSettings = ::Struct.new(
      :fade_out,
      :layer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.fade_out ||= 0
        self.layer ||= 0
      end
    end

    # Static Key Settings
    #
    # @!attribute key_provider_server
    #   The URL of the license server used for protecting content.
    #
    #   @return [InputLocation]
    #
    # @!attribute static_key_value
    #   Static key value as a 32 character hexadecimal string.
    #
    #   @return [String]
    #
    StaticKeySettings = ::Struct.new(
      :key_provider_server,
      :static_key_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for StopChannelRequest
    #
    # @!attribute channel_id
    #   A request to stop a running channel
    #
    #   @return [String]
    #
    StopChannelInput = ::Struct.new(
      :channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for StopChannelResponse
    #
    # @!attribute arn
    #   The unique arn of the channel.
    #
    #   @return [String]
    #
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #
    #   @return [CdiInputSpecification]
    #
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #
    #   @return [Array<OutputDestination>]
    #
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #
    #   @return [Array<ChannelEgressEndpoint>]
    #
    # @!attribute encoder_settings
    #   Encoder Settings
    #
    #   @return [EncoderSettings]
    #
    # @!attribute id
    #   The unique id of the channel.
    #
    #   @return [String]
    #
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #
    #   @return [Array<InputAttachment>]
    #
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #
    #   @return [InputSpecification]
    #
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #
    #   Enum, one of: ["ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #
    #   @return [MaintenanceStatus]
    #
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #
    #   @return [String]
    #
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #
    #   @return [Array<PipelineDetail>]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #
    #   @return [String]
    #
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc
    #   Settings for VPC output
    #
    #   @return [VpcOutputSettingsDescription]
    #
    StopChannelOutput = ::Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
      end
    end

    # Placeholder documentation for StopMultiplexRequest
    #
    # @!attribute multiplex_id
    #   The ID of the multiplex.
    #
    #   @return [String]
    #
    StopMultiplexInput = ::Struct.new(
      :multiplex_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for StopMultiplexResponse
    #
    # @!attribute arn
    #   The unique arn of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #
    #   @return [Array<String>]
    #
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #
    #   @return [Array<MultiplexOutputDestination>]
    #
    # @!attribute id
    #   The unique id of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #
    #   @return [MultiplexSettings]
    #
    # @!attribute name
    #   The name of the multiplex.
    #
    #   @return [String]
    #
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #
    #   @return [Integer]
    #
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   The current state of the multiplex.
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    StopMultiplexOutput = ::Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pipelines_running_count ||= 0
        self.program_count ||= 0
      end
    end

    # Settings to identify the end of the clip.
    #
    # @!attribute last_frame_clipping_behavior
    #   If you specify a StopTimecode in an input (in order to clip the file), you can specify if you want the clip to exclude (the default) or include the frame specified by the timecode.
    #
    #   Enum, one of: ["EXCLUDE_LAST_FRAME", "INCLUDE_LAST_FRAME"]
    #
    #   @return [String]
    #
    # @!attribute timecode
    #   The timecode for the frame where you want to stop the clip. Optional; if not specified, the clip continues to the end of the file. Enter the timecode as HH:MM:SS:FF or HH:MM:SS;FF.
    #
    #   @return [String]
    #
    StopTimecode = ::Struct.new(
      :last_frame_clipping_behavior,
      :timecode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Teletext Destination Settings
    #
    TeletextDestinationSettings = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Teletext Source Settings
    #
    # @!attribute output_rectangle
    #   Optionally defines a region where TTML style captions will be displayed
    #
    #   @return [CaptionRectangle]
    #
    # @!attribute page_number
    #   Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no "0x" prefix.
    #
    #   @return [String]
    #
    TeletextSourceSettings = ::Struct.new(
      :output_rectangle,
      :page_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TemporalFilterPostFilterSharpening
    #
    module TemporalFilterPostFilterSharpening
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Temporal Filter Settings
    #
    # @!attribute post_filter_sharpening
    #   If you enable this filter, the results are the following:
    #   - If the source content is noisy (it contains excessive digital artifacts), the filter cleans up the source.
    #   - If the source content is already clean, the filter tends to decrease the bitrate, especially when the rate control mode is QVBR.
    #
    #   Enum, one of: ["AUTO", "DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute strength
    #   Choose a filter strength. We recommend a strength of 1 or 2. A higher strength might take out good information, resulting in an image that is overly soft.
    #
    #   Enum, one of: ["AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"]
    #
    #   @return [String]
    #
    TemporalFilterSettings = ::Struct.new(
      :post_filter_sharpening,
      :strength,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TemporalFilterStrength
    #
    module TemporalFilterStrength
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      STRENGTH_1 = "STRENGTH_1"

      # No documentation available.
      #
      STRENGTH_2 = "STRENGTH_2"

      # No documentation available.
      #
      STRENGTH_3 = "STRENGTH_3"

      # No documentation available.
      #
      STRENGTH_4 = "STRENGTH_4"

      # No documentation available.
      #
      STRENGTH_5 = "STRENGTH_5"

      # No documentation available.
      #
      STRENGTH_6 = "STRENGTH_6"

      # No documentation available.
      #
      STRENGTH_7 = "STRENGTH_7"

      # No documentation available.
      #
      STRENGTH_8 = "STRENGTH_8"

      # No documentation available.
      #
      STRENGTH_9 = "STRENGTH_9"

      # No documentation available.
      #
      STRENGTH_10 = "STRENGTH_10"

      # No documentation available.
      #
      STRENGTH_11 = "STRENGTH_11"

      # No documentation available.
      #
      STRENGTH_12 = "STRENGTH_12"

      # No documentation available.
      #
      STRENGTH_13 = "STRENGTH_13"

      # No documentation available.
      #
      STRENGTH_14 = "STRENGTH_14"

      # No documentation available.
      #
      STRENGTH_15 = "STRENGTH_15"

      # No documentation available.
      #
      STRENGTH_16 = "STRENGTH_16"
    end

    # Timecode Config
    #
    # @!attribute source
    #   Identifies the source for the timecode that will be associated with the events outputs.
    #   -Embedded (embedded): Initialize the output timecode with timecode from the the source.  If no embedded timecode is detected in the source, the system falls back to using "Start at 0" (zerobased).
    #   -System Clock (systemclock): Use the UTC time.
    #   -Start at 0 (zerobased): The time of the first frame of the event will be 00:00:00:00.
    #
    #   Enum, one of: ["EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"]
    #
    #   @return [String]
    #
    # @!attribute sync_threshold
    #   Threshold in frames beyond which output timecode is resynchronized to the input timecode. Discrepancies below this threshold are permitted to avoid unnecessary discontinuities in the output timecode. No timecode sync when this is not specified.
    #
    #   @return [Integer]
    #
    TimecodeConfig = ::Struct.new(
      :source,
      :sync_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.sync_threshold ||= 0
      end
    end

    # Includes enum constants for TimecodeConfigSource
    #
    module TimecodeConfigSource
      # No documentation available.
      #
      EMBEDDED = "EMBEDDED"

      # No documentation available.
      #
      SYSTEMCLOCK = "SYSTEMCLOCK"

      # No documentation available.
      #
      ZEROBASED = "ZEROBASED"
    end

    # Placeholder documentation for TooManyRequestsException
    #
    # @!attribute message
    #   Placeholder documentation for __string
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to transfer an input device.
    #
    # @!attribute input_device_id
    #   The unique ID of this input device. For example, hd-123456789abcdef.
    #
    #   @return [String]
    #
    # @!attribute target_customer_id
    #   The AWS account ID (12 digits) for the recipient of the device transfer.
    #
    #   @return [String]
    #
    # @!attribute target_region
    #   The target AWS region to transfer the device.
    #
    #   @return [String]
    #
    # @!attribute transfer_message
    #   An optional message for the recipient. Maximum 280 characters.
    #
    #   @return [String]
    #
    TransferInputDeviceInput = ::Struct.new(
      :input_device_id,
      :target_customer_id,
      :target_region,
      :transfer_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for TransferInputDeviceResponse
    #
    TransferInputDeviceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Details about the input device that is being transferred.
    #
    # @!attribute id
    #   The unique ID of the input device.
    #
    #   @return [String]
    #
    # @!attribute message
    #   The optional message that the sender has attached to the transfer.
    #
    #   @return [String]
    #
    # @!attribute target_customer_id
    #   The AWS account ID for the recipient of the input device transfer.
    #
    #   @return [String]
    #
    # @!attribute transfer_type
    #   The type (direction) of the input device transfer.
    #
    #   Enum, one of: ["OUTGOING", "INCOMING"]
    #
    #   @return [String]
    #
    TransferringInputDeviceSummary = ::Struct.new(
      :id,
      :message,
      :target_customer_id,
      :transfer_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Ttml Destination Settings
    #
    # @!attribute style_control
    #   This field is not currently supported and will not affect the output styling. Leave the default value.
    #
    #   Enum, one of: ["PASSTHROUGH", "USE_CONFIGURED"]
    #
    #   @return [String]
    #
    TtmlDestinationSettings = ::Struct.new(
      :style_control,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TtmlDestinationStyleControl
    #
    module TtmlDestinationStyleControl
      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      USE_CONFIGURED = "USE_CONFIGURED"
    end

    # Udp Container Settings
    #
    # @!attribute m2ts_settings
    #   M2ts Settings
    #
    #   @return [M2tsSettings]
    #
    UdpContainerSettings = ::Struct.new(
      :m2ts_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Udp Group Settings
    #
    # @!attribute input_loss_action
    #   Specifies behavior of last resort when input video is lost, and no more backup inputs are available. When dropTs is selected the entire transport stream will stop being emitted.  When dropProgram is selected the program can be dropped from the transport stream (and replaced with null packets to meet the TS bitrate requirement).  Or, when emitProgram is chosen the transport stream will continue to be produced normally with repeat frames, black frames, or slate frames substituted for the absent input video.
    #
    #   Enum, one of: ["DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_id3_frame
    #   Indicates ID3 frame that has the timecode.
    #
    #   Enum, one of: ["NONE", "PRIV", "TDRL"]
    #
    #   @return [String]
    #
    # @!attribute timed_metadata_id3_period
    #   Timed Metadata interval in seconds.
    #
    #   @return [Integer]
    #
    UdpGroupSettings = ::Struct.new(
      :input_loss_action,
      :timed_metadata_id3_frame,
      :timed_metadata_id3_period,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.timed_metadata_id3_period ||= 0
      end
    end

    # Udp Output Settings
    #
    # @!attribute buffer_msec
    #   UDP output buffering in milliseconds. Larger values increase latency through the transcoder but simultaneously assist the transcoder in maintaining a constant, low-jitter UDP/RTP output while accommodating clock recovery, input switching, input disruptions, picture reordering, etc.
    #
    #   @return [Integer]
    #
    # @!attribute container_settings
    #   Udp Container Settings
    #
    #   @return [UdpContainerSettings]
    #
    # @!attribute destination
    #   Destination address and port number for RTP or UDP packets. Can be unicast or multicast RTP or UDP (eg. rtp://239.10.10.10:5001 or udp://10.100.100.100:5002).
    #
    #   @return [OutputLocationRef]
    #
    # @!attribute fec_output_settings
    #   Settings for enabling and adjusting Forward Error Correction on UDP outputs.
    #
    #   @return [FecOutputSettings]
    #
    UdpOutputSettings = ::Struct.new(
      :buffer_msec,
      :container_settings,
      :destination,
      :fec_output_settings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.buffer_msec ||= 0
      end
    end

    # Includes enum constants for UdpTimedMetadataId3Frame
    #
    module UdpTimedMetadataId3Frame
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

    # Placeholder documentation for UnprocessableEntityException
    #
    # @!attribute message
    #   The error message.
    #
    #   @return [String]
    #
    # @!attribute validation_errors
    #   A collection of validation error responses.
    #
    #   @return [Array<ValidationError>]
    #
    UnprocessableEntityException = ::Struct.new(
      :message,
      :validation_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Channel class that the channel should be updated to.
    #
    # @!attribute channel_class
    #   The channel class that you wish to update this channel to use.
    #
    #   Enum, one of: ["STANDARD", "SINGLE_PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute channel_id
    #   Channel Id of the channel whose class should be updated.
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   A list of output destinations for this channel.
    #
    #   @return [Array<OutputDestination>]
    #
    UpdateChannelClassInput = ::Struct.new(
      :channel_class,
      :channel_id,
      :destinations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for UpdateChannelClassResponse
    #
    # @!attribute channel
    #   Placeholder documentation for Channel
    #
    #   @return [Channel]
    #
    UpdateChannelClassOutput = ::Struct.new(
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to update a channel.
    #
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #
    #   @return [CdiInputSpecification]
    #
    # @!attribute channel_id
    #   channel ID
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   A list of output destinations for this channel.
    #
    #   @return [Array<OutputDestination>]
    #
    # @!attribute encoder_settings
    #   The encoder settings for this channel.
    #
    #   @return [EncoderSettings]
    #
    # @!attribute input_attachments
    #   Placeholder documentation for __listOfInputAttachment
    #
    #   @return [Array<InputAttachment>]
    #
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #
    #   @return [InputSpecification]
    #
    # @!attribute log_level
    #   The log level to write to CloudWatch Logs.
    #
    #   Enum, one of: ["ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #
    #   @return [MaintenanceUpdateSettings]
    #
    # @!attribute name
    #   The name of the channel.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   An optional Amazon Resource Name (ARN) of the role to assume when running the Channel. If you do not specify this on an update call but the role was previously set that role will be removed.
    #
    #   @return [String]
    #
    UpdateChannelInput = ::Struct.new(
      :cdi_input_specification,
      :channel_id,
      :destinations,
      :encoder_settings,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for UpdateChannelResponse
    #
    # @!attribute channel
    #   Placeholder documentation for Channel
    #
    #   @return [Channel]
    #
    UpdateChannelOutput = ::Struct.new(
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to update an input device.
    #
    # @!attribute hd_device_settings
    #   The settings that you want to apply to the HD input device.
    #
    #   @return [InputDeviceConfigurableSettings]
    #
    # @!attribute input_device_id
    #   The unique ID of the input device. For example, hd-123456789abcdef.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name that you assigned to this input device (not the unique ID).
    #
    #   @return [String]
    #
    # @!attribute uhd_device_settings
    #   The settings that you want to apply to the UHD input device.
    #
    #   @return [InputDeviceConfigurableSettings]
    #
    UpdateInputDeviceInput = ::Struct.new(
      :hd_device_settings,
      :input_device_id,
      :name,
      :uhd_device_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for UpdateInputDeviceResponse
    #
    # @!attribute arn
    #   The unique ARN of the input device.
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   The state of the connection between the input device and AWS.
    #
    #   Enum, one of: ["DISCONNECTED", "CONNECTED"]
    #
    #   @return [String]
    #
    # @!attribute device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
    #
    #   Enum, one of: ["SYNCED", "SYNCING"]
    #
    #   @return [String]
    #
    # @!attribute device_update_status
    #   The status of software on the input device.
    #
    #   Enum, one of: ["UP_TO_DATE", "NOT_UP_TO_DATE"]
    #
    #   @return [String]
    #
    # @!attribute hd_device_settings
    #   Settings that describe an input device that is type HD.
    #
    #   @return [InputDeviceHdSettings]
    #
    # @!attribute id
    #   The unique ID of the input device.
    #
    #   @return [String]
    #
    # @!attribute mac_address
    #   The network MAC address of the input device.
    #
    #   @return [String]
    #
    # @!attribute name
    #   A name that you specify for the input device.
    #
    #   @return [String]
    #
    # @!attribute network_settings
    #   The network settings for the input device.
    #
    #   @return [InputDeviceNetworkSettings]
    #
    # @!attribute serial_number
    #   The unique serial number of the input device.
    #
    #   @return [String]
    #
    # @!attribute type
    #   The type of the input device.
    #
    #   Enum, one of: ["HD"]
    #
    #   @return [String]
    #
    # @!attribute uhd_device_settings
    #   Settings that describe an input device that is type UHD.
    #
    #   @return [InputDeviceUhdSettings]
    #
    UpdateInputDeviceOutput = ::Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :device_update_status,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type,
      :uhd_device_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to update an input.
    #
    # @!attribute destinations
    #   Destination settings for PUSH type inputs.
    #
    #   @return [Array<InputDestinationRequest>]
    #
    # @!attribute input_devices
    #   Settings for the devices.
    #
    #   @return [Array<InputDeviceRequest>]
    #
    # @!attribute input_id
    #   Unique ID of the input.
    #
    #   @return [String]
    #
    # @!attribute input_security_groups
    #   A list of security groups referenced by IDs to attach to the input.
    #
    #   @return [Array<String>]
    #
    # @!attribute media_connect_flows
    #   A list of the MediaConnect Flow ARNs that you want to use as the source of the input. You can specify as few as one
    #   Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a
    #   separate Availability Zone as this ensures your EML input is redundant to AZ issues.
    #
    #   @return [Array<MediaConnectFlowRequest>]
    #
    # @!attribute name
    #   Name of the input.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    #
    #   @return [String]
    #
    # @!attribute sources
    #   The source URLs for a PULL-type input. Every PULL type input needs
    #   exactly two source URLs for redundancy.
    #   Only specify sources for PULL type Inputs. Leave Destinations empty.
    #
    #   @return [Array<InputSourceRequest>]
    #
    UpdateInputInput = ::Struct.new(
      :destinations,
      :input_devices,
      :input_id,
      :input_security_groups,
      :media_connect_flows,
      :name,
      :role_arn,
      :sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for UpdateInputResponse
    #
    # @!attribute input
    #   Placeholder documentation for Input
    #
    #   @return [Input]
    #
    UpdateInputOutput = ::Struct.new(
      :input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The request to update some combination of the Input Security Group name and the IPv4 CIDRs the Input Security Group should allow.
    #
    # @!attribute input_security_group_id
    #   The id of the Input Security Group to update.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of key-value pairs.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute whitelist_rules
    #   List of IPv4 CIDR addresses to whitelist
    #
    #   @return [Array<InputWhitelistRuleCidr>]
    #
    UpdateInputSecurityGroupInput = ::Struct.new(
      :input_security_group_id,
      :tags,
      :whitelist_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for UpdateInputSecurityGroupResponse
    #
    # @!attribute security_group
    #   An Input Security Group
    #
    #   @return [InputSecurityGroup]
    #
    UpdateInputSecurityGroupOutput = ::Struct.new(
      :security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to update a multiplex.
    #
    # @!attribute multiplex_id
    #   ID of the multiplex to update.
    #
    #   @return [String]
    #
    # @!attribute multiplex_settings
    #   The new settings for a multiplex.
    #
    #   @return [MultiplexSettings]
    #
    # @!attribute name
    #   Name of the multiplex.
    #
    #   @return [String]
    #
    UpdateMultiplexInput = ::Struct.new(
      :multiplex_id,
      :multiplex_settings,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for UpdateMultiplexResponse
    #
    # @!attribute multiplex
    #   The updated multiplex.
    #
    #   @return [Multiplex]
    #
    UpdateMultiplexOutput = ::Struct.new(
      :multiplex,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to update a program in a multiplex.
    #
    # @!attribute multiplex_id
    #   The ID of the multiplex of the program to update.
    #
    #   @return [String]
    #
    # @!attribute multiplex_program_settings
    #   The new settings for a multiplex program.
    #
    #   @return [MultiplexProgramSettings]
    #
    # @!attribute program_name
    #   The name of the program to update.
    #
    #   @return [String]
    #
    UpdateMultiplexProgramInput = ::Struct.new(
      :multiplex_id,
      :multiplex_program_settings,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for UpdateMultiplexProgramResponse
    #
    # @!attribute multiplex_program
    #   The updated multiplex program.
    #
    #   @return [MultiplexProgram]
    #
    UpdateMultiplexProgramOutput = ::Struct.new(
      :multiplex_program,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request to update a reservation
    #
    # @!attribute name
    #   Name of the reservation
    #
    #   @return [String]
    #
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #
    #   @return [String]
    #
    UpdateReservationInput = ::Struct.new(
      :name,
      :reservation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for UpdateReservationResponse
    #
    # @!attribute reservation
    #   Reserved resources available to use
    #
    #   @return [Reservation]
    #
    UpdateReservationOutput = ::Struct.new(
      :reservation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for ValidationError
    #
    # @!attribute element_path
    #   Path to the source of the error.
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   The error message.
    #
    #   @return [String]
    #
    ValidationError = ::Struct.new(
      :element_path,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Placeholder documentation for VideoBlackFailoverSettings
    #
    # @!attribute black_detect_threshold
    #   A value used in calculating the threshold below which MediaLive considers a pixel to be 'black'. For the input to be considered black, every pixel in a frame must be below this threshold. The threshold is calculated as a percentage (expressed as a decimal) of white. Therefore .1 means 10% white (or 90% black). Note how the formula works for any color depth. For example, if you set this field to 0.1 in 10-bit color depth: (1023*0.1=102.3), which means a pixel value of 102 or less is 'black'. If you set this field to .1 in an 8-bit color depth: (255*0.1=25.5), which means a pixel value of 25 or less is 'black'. The range is 0.0 to 1.0, with any number of decimal places.
    #
    #   @return [Float]
    #
    # @!attribute video_black_threshold_msec
    #   The amount of time (in milliseconds) that the active input must be black before automatic input failover occurs.
    #
    #   @return [Integer]
    #
    VideoBlackFailoverSettings = ::Struct.new(
      :black_detect_threshold,
      :video_black_threshold_msec,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.black_detect_threshold ||= 0
        self.video_black_threshold_msec ||= 0
      end
    end

    # Video Codec Settings
    #
    # @!attribute frame_capture_settings
    #   Frame Capture Settings
    #
    #   @return [FrameCaptureSettings]
    #
    # @!attribute h264_settings
    #   H264 Settings
    #
    #   @return [H264Settings]
    #
    # @!attribute h265_settings
    #   H265 Settings
    #
    #   @return [H265Settings]
    #
    # @!attribute mpeg2_settings
    #   Mpeg2 Settings
    #
    #   @return [Mpeg2Settings]
    #
    VideoCodecSettings = ::Struct.new(
      :frame_capture_settings,
      :h264_settings,
      :h265_settings,
      :mpeg2_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Video settings for this stream.
    #
    # @!attribute codec_settings
    #   Video codec settings.
    #
    #   @return [VideoCodecSettings]
    #
    # @!attribute height
    #   Output video height, in pixels. Must be an even number. For most codecs, you can leave this field and width blank in order to use the height and width (resolution) from the source. Note, however, that leaving blank is not recommended. For the Frame Capture codec, height and width are required.
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   The name of this VideoDescription. Outputs will use this name to uniquely identify this Description.  Description names should be unique within this Live Event.
    #
    #   @return [String]
    #
    # @!attribute respond_to_afd
    #   Indicates how MediaLive will respond to the AFD values that might be in the input video. If you do not know what AFD signaling is, or if your downstream system has not given you guidance, choose PASSTHROUGH.
    #   RESPOND: MediaLive clips the input video using a formula that uses the AFD values (configured in afdSignaling ), the input display aspect ratio, and the output display aspect ratio. MediaLive also includes the AFD values in the output, unless the codec for this encode is FRAME_CAPTURE.
    #   PASSTHROUGH: MediaLive ignores the AFD values and does not clip the video. But MediaLive does include the values in the output.
    #   NONE: MediaLive does not clip the input video and does not include the AFD values in the output
    #
    #   Enum, one of: ["NONE", "PASSTHROUGH", "RESPOND"]
    #
    #   @return [String]
    #
    # @!attribute scaling_behavior
    #   STRETCH_TO_OUTPUT configures the output position to stretch the video to the specified output resolution (height and width). This option will override any position value. DEFAULT may insert black boxes (pillar boxes or letter boxes) around the video to provide the specified output resolution.
    #
    #   Enum, one of: ["DEFAULT", "STRETCH_TO_OUTPUT"]
    #
    #   @return [String]
    #
    # @!attribute sharpness
    #   Changes the strength of the anti-alias filter used for scaling. 0 is the softest setting, 100 is the sharpest. A setting of 50 is recommended for most content.
    #
    #   @return [Integer]
    #
    # @!attribute width
    #   Output video width, in pixels. Must be an even number. For most codecs, you can leave this field and height blank in order to use the height and width (resolution) from the source. Note, however, that leaving blank is not recommended. For the Frame Capture codec, height and width are required.
    #
    #   @return [Integer]
    #
    VideoDescription = ::Struct.new(
      :codec_settings,
      :height,
      :name,
      :respond_to_afd,
      :scaling_behavior,
      :sharpness,
      :width,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.height ||= 0
        self.sharpness ||= 0
        self.width ||= 0
      end
    end

    # Includes enum constants for VideoDescriptionRespondToAfd
    #
    module VideoDescriptionRespondToAfd
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      RESPOND = "RESPOND"
    end

    # Includes enum constants for VideoDescriptionScalingBehavior
    #
    module VideoDescriptionScalingBehavior
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      STRETCH_TO_OUTPUT = "STRETCH_TO_OUTPUT"
    end

    # Specifies a particular video stream within an input source. An input may have only a single video selector.
    #
    # @!attribute color_space
    #   Specifies the color space of an input. This setting works in tandem with colorSpaceUsage and a video description's colorSpaceSettingsChoice to determine if any conversion will be performed.
    #
    #   Enum, one of: ["FOLLOW", "HDR10", "HLG_2020", "REC_601", "REC_709"]
    #
    #   @return [String]
    #
    # @!attribute color_space_settings
    #   Color space settings
    #
    #   @return [VideoSelectorColorSpaceSettings]
    #
    # @!attribute color_space_usage
    #   Applies only if colorSpace is a value other than follow. This field controls how the value in the colorSpace field will be used. fallback means that when the input does include color space data, that data will be used, but when the input has no color space data, the value in colorSpace will be used. Choose fallback if your input is sometimes missing color space data, but when it does have color space data, that data is correct. force means to always use the value in colorSpace. Choose force if your input usually has no color space data or might have unreliable color space data.
    #
    #   Enum, one of: ["FALLBACK", "FORCE"]
    #
    #   @return [String]
    #
    # @!attribute selector_settings
    #   The video selector settings.
    #
    #   @return [VideoSelectorSettings]
    #
    VideoSelector = ::Struct.new(
      :color_space,
      :color_space_settings,
      :color_space_usage,
      :selector_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VideoSelectorColorSpace
    #
    module VideoSelectorColorSpace
      # No documentation available.
      #
      FOLLOW = "FOLLOW"

      # No documentation available.
      #
      HDR10 = "HDR10"

      # No documentation available.
      #
      HLG_2020 = "HLG_2020"

      # No documentation available.
      #
      REC_601 = "REC_601"

      # No documentation available.
      #
      REC_709 = "REC_709"
    end

    # Video Selector Color Space Settings
    #
    # @!attribute hdr10_settings
    #   Hdr10 Settings
    #
    #   @return [Hdr10Settings]
    #
    VideoSelectorColorSpaceSettings = ::Struct.new(
      :hdr10_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VideoSelectorColorSpaceUsage
    #
    module VideoSelectorColorSpaceUsage
      # No documentation available.
      #
      FALLBACK = "FALLBACK"

      # No documentation available.
      #
      FORCE = "FORCE"
    end

    # Video Selector Pid
    #
    # @!attribute pid
    #   Selects a specific PID from within a video source.
    #
    #   @return [Integer]
    #
    VideoSelectorPid = ::Struct.new(
      :pid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.pid ||= 0
      end
    end

    # Video Selector Program Id
    #
    # @!attribute program_id
    #   Selects a specific program from within a multi-program transport stream. If the program doesn't exist, the first program within the transport stream will be selected by default.
    #
    #   @return [Integer]
    #
    VideoSelectorProgramId = ::Struct.new(
      :program_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.program_id ||= 0
      end
    end

    # Video Selector Settings
    #
    # @!attribute video_selector_pid
    #   Video Selector Pid
    #
    #   @return [VideoSelectorPid]
    #
    # @!attribute video_selector_program_id
    #   Video Selector Program Id
    #
    #   @return [VideoSelectorProgramId]
    #
    VideoSelectorSettings = ::Struct.new(
      :video_selector_pid,
      :video_selector_program_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The properties for a private VPC Output
    # When this property is specified, the output egress addresses will be created in a user specified VPC
    #
    # @!attribute public_address_allocation_ids
    #   List of public address allocation ids to associate with ENIs that will be created in Output VPC.
    #   Must specify one for SINGLE_PIPELINE, two for STANDARD channels
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   A list of up to 5 EC2 VPC security group IDs to attach to the Output VPC network interfaces.
    #   If none are specified then the VPC default security group will be used
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_ids
    #   A list of VPC subnet IDs from the same VPC.
    #   If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).
    #
    #   @return [Array<String>]
    #
    VpcOutputSettings = ::Struct.new(
      :public_address_allocation_ids,
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The properties for a private VPC Output
    #
    # @!attribute availability_zones
    #   The Availability Zones where the vpc subnets are located.
    #   The first Availability Zone applies to the first subnet in the list of subnets.
    #   The second Availability Zone applies to the second subnet.
    #
    #   @return [Array<String>]
    #
    # @!attribute network_interface_ids
    #   A list of Elastic Network Interfaces created by MediaLive in the customer's VPC
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   A list of up EC2 VPC security group IDs attached to the Output VPC network interfaces.
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_ids
    #   A list of VPC subnet IDs from the same VPC.
    #   If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).
    #
    #   @return [Array<String>]
    #
    VpcOutputSettingsDescription = ::Struct.new(
      :availability_zones,
      :network_interface_ids,
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WavCodingMode
    #
    module WavCodingMode
      # No documentation available.
      #
      CODING_MODE_1_0 = "CODING_MODE_1_0"

      # No documentation available.
      #
      CODING_MODE_2_0 = "CODING_MODE_2_0"

      # No documentation available.
      #
      CODING_MODE_4_0 = "CODING_MODE_4_0"

      # No documentation available.
      #
      CODING_MODE_8_0 = "CODING_MODE_8_0"
    end

    # Wav Settings
    #
    # @!attribute bit_depth
    #   Bits per sample.
    #
    #   @return [Float]
    #
    # @!attribute coding_mode
    #   The audio coding mode for the WAV audio. The mode determines the number of channels in the audio.
    #
    #   Enum, one of: ["CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_4_0", "CODING_MODE_8_0"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #
    #   @return [Float]
    #
    WavSettings = ::Struct.new(
      :bit_depth,
      :coding_mode,
      :sample_rate,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bit_depth ||= 0
        self.sample_rate ||= 0
      end
    end

    # Webvtt Destination Settings
    #
    # @!attribute style_control
    #   Controls whether the color and position of the source captions is passed through to the WebVTT output captions.  PASSTHROUGH - Valid only if the source captions are EMBEDDED or TELETEXT.  NO_STYLE_DATA - Don't pass through the style. The output captions will not contain any font styling information.
    #
    #   Enum, one of: ["NO_STYLE_DATA", "PASSTHROUGH"]
    #
    #   @return [String]
    #
    WebvttDestinationSettings = ::Struct.new(
      :style_control,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WebvttDestinationStyleControl
    #
    module WebvttDestinationStyleControl
      # No documentation available.
      #
      NO_STYLE_DATA = "NO_STYLE_DATA"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"
    end

  end
end
