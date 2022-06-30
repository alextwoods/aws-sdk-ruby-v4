# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivs
  module Types

    # <p/>
    #
    # @!attribute exception_message
    #   <p>User does not have sufficient access to perform this action.</p>
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object specifying a stream’s audio configuration.</p>
    #
    # @!attribute codec
    #   <p>Codec used for the audio encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute target_bitrate
    #   <p>The expected ingest bitrate (bits per second). This is configured in the encoder.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sample_rate
    #   <p>Number of audio samples recorded per second.</p>
    #
    #   @return [Integer]
    #
    # @!attribute channels
    #   <p>Number of audio channels.</p>
    #
    #   @return [Integer]
    #
    AudioConfiguration = ::Struct.new(
      :codec,
      :target_bitrate,
      :sample_rate,
      :channels,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.target_bitrate ||= 0
        self.sample_rate ||= 0
        self.channels ||= 0
      end

    end

    # <p>Error related to a specific channel, specified by its ARN.</p>
    #
    # @!attribute arn
    #   <p>Channel ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>Error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Error message, determined by the application.</p>
    #
    #   @return [String]
    #
    BatchError = ::Struct.new(
      :arn,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arns
    #   <p>Array of ARNs, one per channel.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetChannelInput = ::Struct.new(
      :arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channels
    #   <p/>
    #
    #   @return [Array<Channel>]
    #
    # @!attribute errors
    #   <p>Each error object is related to a specific ARN in the request.</p>
    #
    #   @return [Array<BatchError>]
    #
    BatchGetChannelOutput = ::Struct.new(
      :channels,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arns
    #   <p>Array of ARNs, one per channel.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetStreamKeyInput = ::Struct.new(
      :arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_keys
    #   <p/>
    #
    #   @return [Array<StreamKey>]
    #
    # @!attribute errors
    #   <p/>
    #
    #   @return [Array<BatchError>]
    #
    BatchGetStreamKeyOutput = ::Struct.new(
      :stream_keys,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object specifying a channel.</p>
    #
    # @!attribute arn
    #   <p>Channel ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Channel name.</p>
    #
    #   @return [String]
    #
    # @!attribute latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default:
    #           <code>LOW</code>. (Note: In the Amazon IVS console, <code>LOW</code> and <code>NORMAL</code>
    #         correspond to Ultra-low and Standard, respectively.)</p>
    #
    #   Enum, one of: ["NORMAL", "LOW"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable resolution or bitrate, the stream probably will disconnect
    #           immediately.</i> Default: <code>STANDARD</code>. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: Multiple qualities are generated from the original input, to
    #             automatically give viewers the best experience for their devices and network conditions.
    #             Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps. Audio is transcoded only
    #             for renditions 360p and below; above that, audio is passed through.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s
    #             video-quality choice is limited to the original input. Resolution can be up to 480p and
    #             bitrate can be up to 1.5 Mbps.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["BASIC", "STANDARD"]
    #
    #   @return [String]
    #
    # @!attribute recording_configuration_arn
    #   <p>Recording-configuration ARN. A value other than an empty string indicates that recording
    #         is enabled. Default: "" (empty string, recording is disabled).</p>
    #
    #   @return [String]
    #
    # @!attribute ingest_endpoint
    #   <p>Channel ingest endpoint, part of the definition of an ingest server, used when you set up
    #         streaming software.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_url
    #   <p>Channel playback URL.</p>
    #
    #   @return [String]
    #
    # @!attribute authorized
    #   <p>Whether the channel is private (enabled for playback authorization). Default:
    #           <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    Channel = ::Struct.new(
      :arn,
      :name,
      :latency_mode,
      :type,
      :recording_configuration_arn,
      :ingest_endpoint,
      :playback_url,
      :authorized,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.authorized ||= false
      end

    end

    # Includes enum constants for ChannelLatencyMode
    #
    module ChannelLatencyMode
      # No documentation available.
      #
      NormalLatency = "NORMAL"

      # No documentation available.
      #
      LowLatency = "LOW"
    end

    # <p/>
    #
    # @!attribute exception_message
    #   <p>The stream is offline for the given channel ARN.</p>
    #
    #   @return [String]
    #
    ChannelNotBroadcasting = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a channel.</p>
    #
    # @!attribute arn
    #   <p>Channel ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Channel name.</p>
    #
    #   @return [String]
    #
    # @!attribute latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default:
    #           <code>LOW</code>. (Note: In the Amazon IVS console, <code>LOW</code> and <code>NORMAL</code>
    #         correspond to Ultra-low and Standard, respectively.)</p>
    #
    #   Enum, one of: ["NORMAL", "LOW"]
    #
    #   @return [String]
    #
    # @!attribute authorized
    #   <p>Whether the channel is private (enabled for playback authorization). Default:
    #           <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute recording_configuration_arn
    #   <p>Recording-configuration ARN. A value other than an empty string indicates that recording
    #         is enabled. Default: "" (empty string, recording is disabled).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    ChannelSummary = ::Struct.new(
      :arn,
      :name,
      :latency_mode,
      :authorized,
      :recording_configuration_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.authorized ||= false
      end

    end

    # Includes enum constants for ChannelType
    #
    module ChannelType
      # No documentation available.
      #
      BasicChannelType = "BASIC"

      # No documentation available.
      #
      StandardChannelType = "STANDARD"
    end

    # <p/>
    #
    # @!attribute exception_message
    #   <p>Updating or deleting a resource can cause an inconsistent state.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Channel name.</p>
    #
    #   @return [String]
    #
    # @!attribute latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. (Note: In the
    #         Amazon IVS console, <code>LOW</code> and <code>NORMAL</code> correspond to Ultra-low and
    #         Standard, respectively.) Default: <code>LOW</code>.</p>
    #
    #   Enum, one of: ["NORMAL", "LOW"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable resolution or bitrate, the stream probably will disconnect
    #           immediately.</i> Default: <code>STANDARD</code>. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: Multiple qualities are generated from the original input, to
    #             automatically give viewers the best experience for their devices and network conditions.
    #             Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps. Audio is transcoded only
    #             for renditions 360p and below; above that, audio is passed through.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s
    #             video-quality choice is limited to the original input. Resolution can be up to 480p and
    #             bitrate can be up to 1.5 Mbps.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["BASIC", "STANDARD"]
    #
    #   @return [String]
    #
    # @!attribute authorized
    #   <p>Whether the channel is private (enabled for playback authorization). Default:
    #           <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute recording_configuration_arn
    #   <p>Recording-configuration ARN. Default: "" (empty string, recording is disabled).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateChannelInput = ::Struct.new(
      :name,
      :latency_mode,
      :type,
      :authorized,
      :recording_configuration_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.authorized ||= false
      end

    end

    # @!attribute channel
    #   <p/>
    #
    #   @return [Channel]
    #
    # @!attribute stream_key
    #   <p/>
    #
    #   @return [StreamKey]
    #
    CreateChannelOutput = ::Struct.new(
      :channel,
      :stream_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Recording-configuration name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_configuration
    #   <p>A complex type that contains a destination configuration for where recorded video will be
    #         stored.</p>
    #
    #   @return [DestinationConfiguration]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute thumbnail_configuration
    #   <p>A complex type that allows you to enable/disable the recording of thumbnails for a live
    #         session and modify the interval at which thumbnails are generated for the live session.</p>
    #
    #   @return [ThumbnailConfiguration]
    #
    CreateRecordingConfigurationInput = ::Struct.new(
      :name,
      :destination_configuration,
      :tags,
      :thumbnail_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recording_configuration
    #
    #
    #   @return [RecordingConfiguration]
    #
    CreateRecordingConfigurationOutput = ::Struct.new(
      :recording_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>ARN of the channel for which to create the stream key.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateStreamKeyInput = ::Struct.new(
      :channel_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_key
    #   <p>Stream key used to authenticate an RTMPS stream for ingestion.</p>
    #
    #   @return [StreamKey]
    #
    CreateStreamKeyOutput = ::Struct.new(
      :stream_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>ARN of the channel to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteChannelInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>ARN of the key pair to be deleted.</p>
    #
    #   @return [String]
    #
    DeletePlaybackKeyPairInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePlaybackKeyPairOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>ARN of the recording configuration to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteRecordingConfigurationInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRecordingConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>ARN of the stream key to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteStreamKeyInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStreamKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that describes a location where recorded videos will be stored. Each member
    #       represents a type of destination configuration. For recording, you define one and only one
    #       type of destination configuration.</p>
    #
    # @!attribute s3
    #   <p>An S3 destination configuration where recorded videos will be stored.</p>
    #
    #   @return [S3DestinationConfiguration]
    #
    DestinationConfiguration = ::Struct.new(
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>ARN of the channel for which the configuration is to be retrieved.</p>
    #
    #   @return [String]
    #
    GetChannelInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel
    #   <p/>
    #
    #   @return [Channel]
    #
    GetChannelOutput = ::Struct.new(
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>ARN of the key pair to be returned.</p>
    #
    #   @return [String]
    #
    GetPlaybackKeyPairInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_pair
    #
    #
    #   @return [PlaybackKeyPair]
    #
    GetPlaybackKeyPairOutput = ::Struct.new(
      :key_pair,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>ARN of the recording configuration to be retrieved.</p>
    #
    #   @return [String]
    #
    GetRecordingConfigurationInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recording_configuration
    #
    #
    #   @return [RecordingConfiguration]
    #
    GetRecordingConfigurationOutput = ::Struct.new(
      :recording_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>Channel ARN for stream to be accessed.</p>
    #
    #   @return [String]
    #
    GetStreamInput = ::Struct.new(
      :channel_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>ARN for the stream key to be retrieved.</p>
    #
    #   @return [String]
    #
    GetStreamKeyInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_key
    #
    #
    #   @return [StreamKey]
    #
    GetStreamKeyOutput = ::Struct.new(
      :stream_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream
    #   <p/>
    #
    #   @return [Stream]
    #
    GetStreamOutput = ::Struct.new(
      :stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>ARN of the channel resource</p>
    #
    #   @return [String]
    #
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel. If no
    #           <code>streamId</code> is provided, this returns the most recent stream session for the
    #         channel, if it exists.</p>
    #
    #   @return [String]
    #
    GetStreamSessionInput = ::Struct.new(
      :channel_arn,
      :stream_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_session
    #   <p>List of stream details.</p>
    #
    #   @return [StreamSession]
    #
    GetStreamSessionOutput = ::Struct.new(
      :stream_session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_key_material
    #   <p>The public portion of a customer-generated key pair.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Playback-key-pair name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Any tags provided with the request are added to the playback key pair tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ImportPlaybackKeyPairInput = ::Struct.new(
      :public_key_material,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_pair
    #   <p/>
    #
    #   @return [PlaybackKeyPair]
    #
    ImportPlaybackKeyPairOutput = ::Struct.new(
      :key_pair,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object specifying the ingest configuration set up by the broadcaster, usually in an
    #       encoder.</p>
    #
    # @!attribute video
    #   <p>Encoder settings for video.</p>
    #
    #   @return [VideoConfiguration]
    #
    # @!attribute audio
    #   <p>Encoder settings for audio.</p>
    #
    #   @return [AudioConfiguration]
    #
    IngestConfiguration = ::Struct.new(
      :video,
      :audio,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute exception_message
    #   <p>Unexpected error during processing of request.</p>
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter_by_name
    #   <p>Filters the channel list to match the specified name.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_by_recording_configuration_arn
    #   <p>Filters the channel list to match the specified recording-configuration ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The first channel to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of channels to return. Default: 50.</p>
    #
    #   @return [Integer]
    #
    ListChannelsInput = ::Struct.new(
      :filter_by_name,
      :filter_by_recording_configuration_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute channels
    #   <p>List of the matching channels.</p>
    #
    #   @return [Array<ChannelSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more channels than <code>maxResults</code>, use <code>nextToken</code> in the
    #         request to get the next set.</p>
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

    # @!attribute next_token
    #   <p>Maximum number of key pairs to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The first key pair to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field. Default: 50.</p>
    #
    #   @return [Integer]
    #
    ListPlaybackKeyPairsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute key_pairs
    #   <p>List of key pairs.</p>
    #
    #   @return [Array<PlaybackKeyPairSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more key pairs than <code>maxResults</code>, use <code>nextToken</code> in
    #         the request to get the next set.</p>
    #
    #   @return [String]
    #
    ListPlaybackKeyPairsOutput = ::Struct.new(
      :key_pairs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The first recording configuration to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of recording configurations to return. Default: 50. </p>
    #
    #   @return [Integer]
    #
    ListRecordingConfigurationsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute recording_configurations
    #   <p>List of the matching recording configurations.</p>
    #
    #   @return [Array<RecordingConfigurationSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more recording configurations than <code>maxResults</code>, use
    #           <code>nextToken</code> in the request to get the next set.</p>
    #
    #   @return [String]
    #
    ListRecordingConfigurationsOutput = ::Struct.new(
      :recording_configurations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>Channel ARN used to filter the list.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The first stream key to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of streamKeys to return. Default: 50.</p>
    #
    #   @return [Integer]
    #
    ListStreamKeysInput = ::Struct.new(
      :channel_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute stream_keys
    #   <p>List of stream keys.</p>
    #
    #   @return [Array<StreamKeySummary>]
    #
    # @!attribute next_token
    #   <p>If there are more stream keys than <code>maxResults</code>, use <code>nextToken</code> in
    #         the request to get the next set.</p>
    #
    #   @return [String]
    #
    ListStreamKeysOutput = ::Struct.new(
      :stream_keys,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>Channel ARN used to filter the list.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of streams to return. Default: 50.</p>
    #
    #   @return [Integer]
    #
    ListStreamSessionsInput = ::Struct.new(
      :channel_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute stream_sessions
    #   <p>List of stream sessions.</p>
    #
    #   @return [Array<StreamSessionSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more streams than <code>maxResults</code>, use <code>nextToken</code> in the
    #         request to get the next set.</p>
    #
    #   @return [String]
    #
    ListStreamSessionsOutput = ::Struct.new(
      :stream_sessions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter_by
    #   <p>Filters the stream list to match the specified criterion.</p>
    #
    #   @return [StreamFilters]
    #
    # @!attribute next_token
    #   <p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of streams to return. Default: 50.</p>
    #
    #   @return [Integer]
    #
    ListStreamsInput = ::Struct.new(
      :filter_by,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute streams
    #   <p>List of streams.</p>
    #
    #   @return [Array<StreamSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more streams than <code>maxResults</code>, use <code>nextToken</code> in the
    #         request to get the next set.</p>
    #
    #   @return [String]
    #
    ListStreamsOutput = ::Struct.new(
      :streams,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be retrieved.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p/>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute exception_message
    #   <p> Your account is pending verification. </p>
    #
    #   @return [String]
    #
    PendingVerification = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key pair used to sign and validate a playback authorization token.</p>
    #
    # @!attribute arn
    #   <p>Key-pair ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Playback-key-pair name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute fingerprint
    #   <p>Key-pair identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    PlaybackKeyPair = ::Struct.new(
      :arn,
      :name,
      :fingerprint,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a playback key pair.</p>
    #
    # @!attribute arn
    #   <p>Key-pair ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Playback-key-pair name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    PlaybackKeyPairSummary = ::Struct.new(
      :arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>ARN of the channel into which metadata is inserted. This channel must have an active
    #         stream.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>Metadata to insert into the stream. Maximum: 1 KB per request.</p>
    #
    #   @return [String]
    #
    PutMetadataInput = ::Struct.new(
      :channel_arn,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Ivs::Types::PutMetadataInput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    PutMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a configuration to record a channel stream.</p>
    #
    # @!attribute arn
    #   <p>Recording-configuration ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Recording-configuration name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_configuration
    #   <p>A complex type that contains information about where recorded video will be stored.</p>
    #
    #   @return [DestinationConfiguration]
    #
    # @!attribute state
    #   <p>Indicates the current state of the recording configuration. When the state is
    #           <code>ACTIVE</code>, the configuration is ready for recording a channel stream.</p>
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute thumbnail_configuration
    #   <p>A complex type that allows you to enable/disable the recording of thumbnails for a live
    #         session and modify the interval at which thumbnails are generated for the live session.</p>
    #
    #   @return [ThumbnailConfiguration]
    #
    RecordingConfiguration = ::Struct.new(
      :arn,
      :name,
      :destination_configuration,
      :state,
      :tags,
      :thumbnail_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecordingConfigurationState
    #
    module RecordingConfigurationState
      # No documentation available.
      #
      Creating = "CREATING"

      # No documentation available.
      #
      CreateFailed = "CREATE_FAILED"

      # No documentation available.
      #
      Active = "ACTIVE"
    end

    # <p>Summary information about a RecordingConfiguration.</p>
    #
    # @!attribute arn
    #   <p>Recording-configuration ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Recording-configuration name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_configuration
    #   <p>A complex type that contains information about where recorded video will be stored.</p>
    #
    #   @return [DestinationConfiguration]
    #
    # @!attribute state
    #   <p>Indicates the current state of the recording configuration. When the state is
    #           <code>ACTIVE</code>, the configuration is ready for recording a channel stream.</p>
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    RecordingConfigurationSummary = ::Struct.new(
      :arn,
      :name,
      :destination_configuration,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecordingMode
    #
    module RecordingMode
      # No documentation available.
      #
      Disabled = "DISABLED"

      # No documentation available.
      #
      Interval = "INTERVAL"
    end

    # <p/>
    #
    # @!attribute exception_message
    #   <p>Request references a resource which does not exist.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that describes an S3 location where recorded videos will be stored.</p>
    #
    # @!attribute bucket_name
    #   <p>Location (S3 bucket name) where recorded videos will be stored.</p>
    #
    #   @return [String]
    #
    S3DestinationConfiguration = ::Struct.new(
      :bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute exception_message
    #   <p>Request would cause a service quota to be exceeded.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>ARN of the channel for which the stream is to be stopped.</p>
    #
    #   @return [String]
    #
    StopStreamInput = ::Struct.new(
      :channel_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a live video stream that has been ingested and distributed.</p>
    #
    # @!attribute channel_arn
    #   <p>Channel ARN for the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_url
    #   <p>URL of the master playlist, required by the video player to play the HLS stream.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Time of the stream’s start. This is an ISO 8601 timestamp returned as a string.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The stream’s state.</p>
    #
    #   Enum, one of: ["LIVE", "OFFLINE"]
    #
    #   @return [String]
    #
    # @!attribute health
    #   <p>The stream’s health.</p>
    #
    #   Enum, one of: ["HEALTHY", "STARVING", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute viewer_count
    #   <p>A count of concurrent views of the stream. Typically, a new view appears in
    #           <code>viewerCount</code> within 15 seconds of when video playback starts and a view is
    #         removed from <code>viewerCount</code> within 1 minute of when video playback ends. A value of
    #         -1 indicates that the request timed out; in this case, retry.</p>
    #
    #   @return [Integer]
    #
    Stream = ::Struct.new(
      :channel_arn,
      :stream_id,
      :playback_url,
      :start_time,
      :state,
      :health,
      :viewer_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.viewer_count ||= 0
      end

    end

    # <p>Object specifying a stream’s events. For a list of events, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html">Using Amazon EventBridge with Amazon
    #       IVS</a>.</p>
    #
    # @!attribute name
    #   <p>Name that identifies the stream event within a <code>type</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Logical group for certain events.</p>
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p>UTC ISO-8601 formatted timestamp of when the event occurred.</p>
    #
    #   @return [Time]
    #
    StreamEvent = ::Struct.new(
      :name,
      :type,
      :event_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object specifying the stream attribute on which to filter.</p>
    #
    # @!attribute health
    #   <p>The stream’s health.</p>
    #
    #   Enum, one of: ["HEALTHY", "STARVING", "UNKNOWN"]
    #
    #   @return [String]
    #
    StreamFilters = ::Struct.new(
      :health,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StreamHealth
    #
    module StreamHealth
      # No documentation available.
      #
      StreamHealthy = "HEALTHY"

      # No documentation available.
      #
      Starving = "STARVING"

      # No documentation available.
      #
      Unknown = "UNKNOWN"
    end

    # <p>Object specifying a stream key.</p>
    #
    # @!attribute arn
    #   <p>Stream-key ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Stream-key value.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_arn
    #   <p>Channel ARN for the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    StreamKey = ::Struct.new(
      :arn,
      :value,
      :channel_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Ivs::Types::StreamKey "\
          "arn=#{arn || 'nil'}, "\
          "value=\"[SENSITIVE]\", "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # <p>Summary information about a stream key.</p>
    #
    # @!attribute arn
    #   <p>Stream-key ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_arn
    #   <p>Channel ARN for the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    StreamKeySummary = ::Struct.new(
      :arn,
      :channel_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object that captures the Amazon IVS configuration that the customer provisioned, the
    #       ingest configurations that the broadcaster used, and the most recent Amazon IVS stream events
    #       it encountered.</p>
    #
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>UTC ISO-8601 formatted timestamp of when the channel went live.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>UTC ISO-8601 formatted timestamp of when the channel went offline. For live streams, this
    #         is <code>NULL</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute channel
    #   <p>The properties of the channel at the time of going live.</p>
    #
    #   @return [Channel]
    #
    # @!attribute ingest_configuration
    #   <p>The properties of the incoming RTMP stream for the stream.</p>
    #
    #   @return [IngestConfiguration]
    #
    # @!attribute recording_configuration
    #   <p>The properties of recording the live stream.</p>
    #
    #   @return [RecordingConfiguration]
    #
    # @!attribute truncated_events
    #   <p>List of Amazon IVS events that the stream encountered. The list is sorted by most recent
    #         events and contains up to 500 events. For Amazon IVS events, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html">Using Amazon EventBridge with Amazon
    #         IVS</a>.</p>
    #
    #   @return [Array<StreamEvent>]
    #
    StreamSession = ::Struct.new(
      :stream_id,
      :start_time,
      :end_time,
      :channel,
      :ingest_configuration,
      :recording_configuration,
      :truncated_events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a stream session.</p>
    #
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>UTC ISO-8601 formatted timestamp of when the channel went live.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>UTC ISO-8601 formatted timestamp of when the channel went offline. For live streams, this
    #         is <code>NULL</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute has_error_event
    #   <p>If <code>true</code>, this stream encountered a quota breach or failure.</p>
    #
    #   @return [Boolean]
    #
    StreamSessionSummary = ::Struct.new(
      :stream_id,
      :start_time,
      :end_time,
      :has_error_event,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.has_error_event ||= false
      end

    end

    # Includes enum constants for StreamState
    #
    module StreamState
      # No documentation available.
      #
      StreamLive = "LIVE"

      # No documentation available.
      #
      StreamOffline = "OFFLINE"
    end

    # <p>Summary information about a stream.</p>
    #
    # @!attribute channel_arn
    #   <p>Channel ARN for the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The stream’s state.</p>
    #
    #   Enum, one of: ["LIVE", "OFFLINE"]
    #
    #   @return [String]
    #
    # @!attribute health
    #   <p>The stream’s health.</p>
    #
    #   Enum, one of: ["HEALTHY", "STARVING", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute viewer_count
    #   <p>A count of concurrent views of the stream. Typically, a new view appears in
    #           <code>viewerCount</code> within 15 seconds of when video playback starts and a view is
    #         removed from <code>viewerCount</code> within 1 minute of when video playback ends. A value of
    #         -1 indicates that the request timed out; in this case, retry.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_time
    #   <p>Time of the stream’s start. This is an ISO 8601 timestamp returned as a string.</p>
    #
    #   @return [Time]
    #
    StreamSummary = ::Struct.new(
      :channel_arn,
      :stream_id,
      :state,
      :health,
      :viewer_count,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.viewer_count ||= 0
      end

    end

    # <p/>
    #
    # @!attribute exception_message
    #   <p>The stream is temporarily unavailable.</p>
    #
    #   @return [String]
    #
    StreamUnavailable = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN of the resource for which tags are to be added or updated.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of tags to be added or updated.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
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

    # <p/>
    #
    # @!attribute exception_message
    #   <p>Request was denied due to request throttling.</p>
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a configuration of thumbnails for recorded video.</p>
    #
    # @!attribute recording_mode
    #   <p>Thumbnail recording mode. Default: <code>INTERVAL</code>.</p>
    #
    #   Enum, one of: ["DISABLED", "INTERVAL"]
    #
    #   @return [String]
    #
    # @!attribute target_interval_seconds
    #   <p>The targeted thumbnail-generation interval in seconds. This is configurable (and required)
    #         only if <code>recordingMode</code> is <code>INTERVAL</code>. Default: 60.</p>
    #            <p>
    #               <b>Important:</b> Setting a value for <code>targetIntervalSeconds</code> does not guarantee that thumbnails
    #         are generated at the specified interval. For thumbnails to be generated at the
    #         <code>targetIntervalSeconds</code> interval, the <code>IDR/Keyframe</code> value for the input video must be less than
    #         the <code>targetIntervalSeconds</code> value. See <a href="https://docs.aws.amazon.com/ivs/latest/userguide/streaming-config.html"> Amazon IVS Streaming Configuration</a> for information on
    #         setting <code>IDR/Keyframe</code> to the recommended value in video-encoder settings.</p>
    #
    #   @return [Integer]
    #
    ThumbnailConfiguration = ::Struct.new(
      :recording_mode,
      :target_interval_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.target_interval_seconds ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>ARN of the resource for which tags are to be removed.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Array of tags to be removed.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
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

    # @!attribute arn
    #   <p>ARN of the channel to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Channel name.</p>
    #
    #   @return [String]
    #
    # @!attribute latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. (Note: In the
    #         Amazon IVS console, <code>LOW</code> and <code>NORMAL</code> correspond to Ultra-low and
    #         Standard, respectively.)</p>
    #
    #   Enum, one of: ["NORMAL", "LOW"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable resolution or bitrate, the stream probably will disconnect
    #           immediately</i>. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: Multiple qualities are generated from the original input, to
    #             automatically give viewers the best experience for their devices and network conditions.
    #             Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps. Audio is transcoded only
    #             for renditions 360p and below; above that, audio is passed through.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s
    #             video-quality choice is limited to the original input. Resolution can be up to 480p and
    #             bitrate can be up to 1.5 Mbps.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["BASIC", "STANDARD"]
    #
    #   @return [String]
    #
    # @!attribute authorized
    #   <p>Whether the channel is private (enabled for playback authorization).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute recording_configuration_arn
    #   <p>Recording-configuration ARN. If this is set to an empty string, recording is disabled. A
    #         value other than an empty string indicates that recording is enabled</p>
    #
    #   @return [String]
    #
    UpdateChannelInput = ::Struct.new(
      :arn,
      :name,
      :latency_mode,
      :type,
      :authorized,
      :recording_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.authorized ||= false
      end

    end

    # @!attribute channel
    #   <p>Object specifying a channel.</p>
    #
    #   @return [Channel]
    #
    UpdateChannelOutput = ::Struct.new(
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute exception_message
    #   <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :exception_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object specifying a stream’s video configuration.</p>
    #
    # @!attribute avc_profile
    #   <p>Indicates to the decoder the requirements for decoding the stream. For definitions of the
    #         valid values, see the H.264 specification.</p>
    #
    #   @return [String]
    #
    # @!attribute avc_level
    #   <p>Indicates the degree of required decoder performance for a profile. Normally this is set
    #         automatically by the encoder. For details, see the H.264 specification.</p>
    #
    #   @return [String]
    #
    # @!attribute codec
    #   <p>Codec used for the video encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute encoder
    #   <p>Software or hardware used to encode the video.</p>
    #
    #   @return [String]
    #
    # @!attribute target_bitrate
    #   <p>The expected ingest bitrate (bits per second). This is configured in the encoder.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_framerate
    #   <p>The expected ingest framerate. This is configured in the encoder.</p>
    #
    #   @return [Integer]
    #
    # @!attribute video_height
    #   <p>Video-resolution height in pixels.</p>
    #
    #   @return [Integer]
    #
    # @!attribute video_width
    #   <p>Video-resolution width in pixels.</p>
    #
    #   @return [Integer]
    #
    VideoConfiguration = ::Struct.new(
      :avc_profile,
      :avc_level,
      :codec,
      :encoder,
      :target_bitrate,
      :target_framerate,
      :video_height,
      :video_width,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.target_bitrate ||= 0
        self.target_framerate ||= 0
        self.video_height ||= 0
        self.video_width ||= 0
      end

    end

  end
end
