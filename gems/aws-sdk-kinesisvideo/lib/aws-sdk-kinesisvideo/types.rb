# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideo
  module Types

    # Includes enum constants for APIName
    #
    module APIName
      # No documentation available.
      #
      PUT_MEDIA = "PUT_MEDIA"

      # No documentation available.
      #
      GET_MEDIA = "GET_MEDIA"

      # No documentation available.
      #
      LIST_FRAGMENTS = "LIST_FRAGMENTS"

      # No documentation available.
      #
      GET_MEDIA_FOR_FRAGMENT_LIST = "GET_MEDIA_FOR_FRAGMENT_LIST"

      # No documentation available.
      #
      GET_HLS_STREAMING_SESSION_URL = "GET_HLS_STREAMING_SESSION_URL"

      # No documentation available.
      #
      GET_DASH_STREAMING_SESSION_URL = "GET_DASH_STREAMING_SESSION_URL"

      # No documentation available.
      #
      GET_CLIP = "GET_CLIP"

      # No documentation available.
      #
      GET_IMAGES = "GET_IMAGES"
    end

    # <p>You do not have required permissions to perform this operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum limit of active signaling channels for this Amazon Web Services account
    #             in this region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountChannelLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of streams created for the account is too high.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountStreamLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that encapsulates a signaling channel's metadata and properties.</p>
    #
    # @!attribute channel_name
    #   <p>The name of the signaling channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_type
    #   <p>The type of the signaling channel.</p>
    #
    #   Enum, one of: ["SINGLE_MASTER", "FULL_MESH"]
    #
    #   @return [String]
    #
    # @!attribute channel_status
    #   <p>Current status of the signaling channel.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time at which the signaling channel was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute single_master_configuration
    #   <p>A structure that contains the configuration for the <code>SINGLE_MASTER</code> channel
    #               type.</p>
    #
    #   @return [SingleMasterConfiguration]
    #
    # @!attribute version
    #   <p>The current version of the signaling channel.</p>
    #
    #   @return [String]
    #
    ChannelInfo = ::Struct.new(
      :channel_name,
      :channel_arn,
      :channel_type,
      :channel_status,
      :creation_time,
      :single_master_configuration,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An optional input parameter for the <code>ListSignalingChannels</code> API. When this
    #             parameter is specified while invoking <code>ListSignalingChannels</code>, the API
    #             returns only the channels that satisfy a condition specified in
    #                 <code>ChannelNameCondition</code>.</p>
    #
    # @!attribute comparison_operator
    #   <p>A comparison operator. Currently, you can only specify the <code>BEGINS_WITH</code>
    #               operator, which finds signaling channels whose names begin with a given prefix.</p>
    #
    #   Enum, one of: ["BEGINS_WITH"]
    #
    #   @return [String]
    #
    # @!attribute comparison_value
    #   <p>A value to compare.</p>
    #
    #   @return [String]
    #
    ChannelNameCondition = ::Struct.new(
      :comparison_operator,
      :comparison_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChannelProtocol
    #
    module ChannelProtocol
      # No documentation available.
      #
      WSS = "WSS"

      # No documentation available.
      #
      HTTPS = "HTTPS"
    end

    # Includes enum constants for ChannelRole
    #
    module ChannelRole
      # No documentation available.
      #
      MASTER = "MASTER"

      # No documentation available.
      #
      VIEWER = "VIEWER"
    end

    # Includes enum constants for ChannelType
    #
    module ChannelType
      # No documentation available.
      #
      SINGLE_MASTER = "SINGLE_MASTER"

      # No documentation available.
      #
      FULL_MESH = "FULL_MESH"
    end

    # <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of
    #             allowed client calls. Try making the call later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClientLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComparisonOperator
    #
    module ComparisonOperator
      # No documentation available.
      #
      BEGINS_WITH = "BEGINS_WITH"
    end

    # Includes enum constants for ConfigurationStatus
    #
    module ConfigurationStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # @!attribute channel_name
    #   <p>A name for the signaling channel that you are creating. It must be unique for each Amazon Web Services account and Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_type
    #   <p>A type of the signaling channel that you are creating. Currently,
    #                   <code>SINGLE_MASTER</code> is the only supported channel type. </p>
    #
    #   Enum, one of: ["SINGLE_MASTER", "FULL_MESH"]
    #
    #   @return [String]
    #
    # @!attribute single_master_configuration
    #   <p>A structure containing the configuration for the <code>SINGLE_MASTER</code> channel
    #               type. </p>
    #
    #   @return [SingleMasterConfiguration]
    #
    # @!attribute tags
    #   <p>A set of tags (key-value pairs) that you want to associate with this channel.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateSignalingChannelInput = ::Struct.new(
      :channel_name,
      :channel_type,
      :single_master_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the created channel.</p>
    #
    #   @return [String]
    #
    CreateSignalingChannelOutput = ::Struct.new(
      :channel_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_name
    #   <p>The name of the device that is writing to the stream. </p>
    #           <note>
    #               <p>In the current implementation, Kinesis Video Streams does not use this
    #                   name.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   <p>A name for the stream that you are creating.</p>
    #           <p>The stream name is an identifier for the stream, and must be unique for each
    #               account and region.</p>
    #
    #   @return [String]
    #
    # @!attribute media_type
    #   <p>The media type of the stream. Consumers of the stream can use this information when
    #               processing the stream. For more information about media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media
    #                   Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838 section-4.2">Naming Requirements</a>
    #               for guidelines.</p>
    #
    #           <p>Example valid values include "video/h264" and "video/h264,audio/aac".</p>
    #           <p>This parameter is optional; the default value is <code>null</code> (or empty in
    #               JSON).</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key that you want Kinesis Video
    #               Streams to use to encrypt stream data.</p>
    #           <p>If no key ID is specified, the default, Kinesis Video-managed key
    #                   (<code>aws/kinesisvideo</code>) is used.</p>
    #           <p> For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html API_DescribeKey_RequestParameters">DescribeKey</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute data_retention_in_hours
    #   <p>The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream.</p>
    #           <p>The default value is 0, indicating that the stream does not persist data.</p>
    #           <p>When the <code>DataRetentionInHours</code> value is 0, consumers can still consume
    #               the fragments that remain in the service host buffer, which has a retention time limit
    #               of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the
    #               buffer when either limit is reached.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>A list of tags to associate with the specified stream. Each tag is a key-value pair
    #               (the value is optional).</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateStreamInput = ::Struct.new(
      :device_name,
      :stream_name,
      :media_type,
      :kms_key_id,
      :data_retention_in_hours,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #
    #   @return [String]
    #
    CreateStreamOutput = ::Struct.new(
      :stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel that you want to
    #               delete.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The current version of the signaling channel that you want to delete. You can obtain
    #               the current version by invoking the <code>DescribeSignalingChannel</code> or
    #                   <code>ListSignalingChannels</code> API operations.</p>
    #
    #   @return [String]
    #
    DeleteSignalingChannelInput = ::Struct.new(
      :channel_arn,
      :current_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSignalingChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to delete. </p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>Optional: The version of the stream that you want to delete. </p>
    #           <p>Specify the version as a safeguard to ensure that your are deleting the correct
    #               stream. To get the stream version, use the <code>DescribeStream</code> API.</p>
    #           <p>If not specified, only the <code>CreationTime</code> is checked before deleting the
    #               stream.</p>
    #
    #   @return [String]
    #
    DeleteStreamInput = ::Struct.new(
      :stream_arn,
      :current_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.  </p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    #   @return [String]
    #
    DescribeImageGenerationConfigurationInput = ::Struct.new(
      :stream_name,
      :stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_generation_configuration
    #   <p>The structure that contains the information required for the Kinesis video stream (KVS) images delivery. If this structure is null, the configuration will be deleted from the stream.</p>
    #
    #   @return [ImageGenerationConfiguration]
    #
    DescribeImageGenerationConfigurationOutput = ::Struct.new(
      :image_generation_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the StreamARN.</p>
    #
    #   @return [String]
    #
    DescribeNotificationConfigurationInput = ::Struct.new(
      :stream_name,
      :stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute notification_configuration
    #   <p>The structure that contains the information required for notifications. If the structure is null, the configuration will be deleted from the stream.</p>
    #
    #   @return [NotificationConfiguration]
    #
    DescribeNotificationConfigurationOutput = ::Struct.new(
      :notification_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the signaling channel that you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_arn
    #   <p>The ARN of the signaling channel that you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeSignalingChannelInput = ::Struct.new(
      :channel_name,
      :channel_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_info
    #   <p>A structure that encapsulates the specified signaling channel's metadata and
    #               properties.</p>
    #
    #   @return [ChannelInfo]
    #
    DescribeSignalingChannelOutput = ::Struct.new(
      :channel_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #
    #   @return [String]
    #
    DescribeStreamInput = ::Struct.new(
      :stream_name,
      :stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_info
    #   <p>An object that describes the stream.</p>
    #
    #   @return [StreamInfo]
    #
    DescribeStreamOutput = ::Struct.new(
      :stream_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Not implemented.
    #             </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DeviceStreamLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Format
    #
    module Format
      # No documentation available.
      #
      JPEG = "JPEG"

      # No documentation available.
      #
      PNG = "PNG"
    end

    # Includes enum constants for FormatConfigKey
    #
    module FormatConfigKey
      # No documentation available.
      #
      JPEGQuality = "JPEGQuality"
    end

    # @!attribute stream_name
    #   <p>The name of the stream that you want to get the endpoint for. You must specify
    #               either this parameter or a <code>StreamARN</code> in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for.
    #               You must specify either this parameter or a <code>StreamName</code> in the request.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute api_name
    #   <p>The name of the API action for which to get an endpoint.</p>
    #
    #   Enum, one of: ["PUT_MEDIA", "GET_MEDIA", "LIST_FRAGMENTS", "GET_MEDIA_FOR_FRAGMENT_LIST", "GET_HLS_STREAMING_SESSION_URL", "GET_DASH_STREAMING_SESSION_URL", "GET_CLIP", "GET_IMAGES"]
    #
    #   @return [String]
    #
    GetDataEndpointInput = ::Struct.new(
      :stream_name,
      :stream_arn,
      :api_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_endpoint
    #   <p>The endpoint value. To read data from the stream or to write data to it, specify
    #               this endpoint in your application.</p>
    #
    #   @return [String]
    #
    GetDataEndpointOutput = ::Struct.new(
      :data_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signalling channel for which you want to get an
    #               endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute single_master_channel_endpoint_configuration
    #   <p>A structure containing the endpoint configuration for the <code>SINGLE_MASTER</code>
    #               channel type.</p>
    #
    #   @return [SingleMasterChannelEndpointConfiguration]
    #
    GetSignalingChannelEndpointInput = ::Struct.new(
      :channel_arn,
      :single_master_channel_endpoint_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_endpoint_list
    #   <p>A list of endpoints for the specified signaling channel.</p>
    #
    #   @return [Array<ResourceEndpointListItem>]
    #
    GetSignalingChannelEndpointOutput = ::Struct.new(
      :resource_endpoint_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure that contains the information required for the KVS images delivery. If null, the configuration will be deleted from the stream.</p>
    #
    # @!attribute status
    #   <p>Indicates whether the <code>ContinuousImageGenerationConfigurations</code> API is enabled or disabled.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute image_selector_type
    #   <p>The origin of the Server or Producer timestamps to use to generate the images.</p>
    #
    #   Enum, one of: ["SERVER_TIMESTAMP", "PRODUCER_TIMESTAMP"]
    #
    #   @return [String]
    #
    # @!attribute destination_config
    #   <p>The structure that contains the information required to deliver images to a customer.</p>
    #
    #   @return [ImageGenerationDestinationConfig]
    #
    # @!attribute sampling_interval
    #   <p>The time interval in milliseconds (ms) at which the images need to be generated from the stream. The minimum value that can be provided is 33 ms,
    #               because a camera that generates content at 30 FPS would create a frame every 33.3 ms. If the timestamp range is less than the sampling interval, the
    #               Image from the <code>StartTimestamp</code> will be returned if available. </p>
    #
    #   @return [Integer]
    #
    # @!attribute format
    #   <p>The accepted image format.</p>
    #
    #   Enum, one of: ["JPEG", "PNG"]
    #
    #   @return [String]
    #
    # @!attribute format_config
    #   <p>The list of a key-value pair structure that contains extra parameters that can be applied when the image is generated.
    #               The <code>FormatConfig</code> key is the <code>JPEGQuality</code>, which indicates the JPEG quality key to be used to generate the image.
    #               The <code>FormatConfig</code> value accepts ints from 1 to 100. If the value is 1, the image will be generated with less quality and the best compression.
    #               If the value is 100, the image will be generated with the best quality and less compression. If no value is provided, the default value of the <code>JPEGQuality</code>
    #               key will be set to 80.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute width_pixels
    #   <p>The width of the output image that is used in conjunction with the <code>HeightPixels</code> parameter. When both <code>WidthPixels</code> and
    #               <code>HeightPixels</code> parameters are provided, the image will be stretched to fit the specified aspect ratio. If only the <code>WidthPixels</code> parameter is
    #               provided, its original aspect ratio will be used to calculate the <code>HeightPixels</code> ratio. If neither parameter is provided, the original image size will be returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute height_pixels
    #   <p>The height of the output image that is used in conjunction with the <code>WidthPixels</code> parameter. When both
    #               <code>HeightPixels</code> and <code>WidthPixels</code> parameters are provided, the image will be stretched to fit the specified aspect ratio.
    #               If only the <code>HeightPixels</code> parameter is provided, its original aspect ratio will be used to calculate the <code>WidthPixels</code> ratio.
    #               If neither parameter is provided, the original image size will be returned.</p>
    #
    #   @return [Integer]
    #
    ImageGenerationConfiguration = ::Struct.new(
      :status,
      :image_selector_type,
      :destination_config,
      :sampling_interval,
      :format,
      :format_config,
      :width_pixels,
      :height_pixels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure that contains the information required to deliver images to a customer.</p>
    #
    # @!attribute uri
    #   <p>The Uniform Resource Idenifier (URI) that identifies where the images will be delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_region
    #   <p>The AWS Region of the S3 bucket where images will be delivered. This <code>DestinationRegion</code> must match the Region where the stream is located.</p>
    #
    #   @return [String]
    #
    ImageGenerationDestinationConfig = ::Struct.new(
      :uri,
      :destination_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageSelectorType
    #
    module ImageSelectorType
      # No documentation available.
      #
      SERVER_TIMESTAMP = "SERVER_TIMESTAMP"

      # No documentation available.
      #
      PRODUCER_TIMESTAMP = "PRODUCER_TIMESTAMP"
    end

    # <p>The value for this input parameter is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArgumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Not implemented.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDeviceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The format of the <code>StreamARN</code> is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResourceFormatException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of channels to return in the response. The default is 500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If you specify this parameter, when the result of a <code>ListSignalingChannels</code>
    #               operation is truncated, the call returns the <code>NextToken</code> in the response. To
    #               get another batch of channels, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_name_condition
    #   <p>Optional: Returns only the channels that satisfy a specific condition.</p>
    #
    #   @return [ChannelNameCondition]
    #
    ListSignalingChannelsInput = ::Struct.new(
      :max_results,
      :next_token,
      :channel_name_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_info_list
    #   <p>An array of <code>ChannelInfo</code> objects.</p>
    #
    #   @return [Array<ChannelInfo>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, the call returns this element with a token. To get the
    #               next batch of streams, use this token in your next request.</p>
    #
    #   @return [String]
    #
    ListSignalingChannelsOutput = ::Struct.new(
      :channel_info_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of streams to return in the response. The default is
    #               10,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If you specify this parameter, when the result of a <code>ListStreams</code>
    #               operation is truncated, the call returns the <code>NextToken</code> in the response. To
    #               get another batch of streams, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_name_condition
    #   <p>Optional: Returns only streams that satisfy a specific condition. Currently, you
    #               can specify only the prefix of a stream name as a condition. </p>
    #
    #   @return [StreamNameCondition]
    #
    ListStreamsInput = ::Struct.new(
      :max_results,
      :next_token,
      :stream_name_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_info_list
    #   <p>An array of <code>StreamInfo</code> objects.</p>
    #
    #   @return [Array<StreamInfo>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, the call returns this element with a token. To get
    #               the next batch of streams, use this token in your next request. </p>
    #
    #   @return [String]
    #
    ListStreamsOutput = ::Struct.new(
      :stream_info_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForResource</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next batch of tags. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel for which you want to list
    #               tags.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :next_token,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForResource</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next set of tags. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map of tag keys and values associated with the specified signaling channel.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :next_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForStream</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next batch of tags.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to list tags
    #               for.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   <p>The name of the stream that you want to list tags for.</p>
    #
    #   @return [String]
    #
    ListTagsForStreamInput = ::Struct.new(
      :next_token,
      :stream_arn,
      :stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If you specify this parameter and the result of a <code>ListTags</code> call is
    #               truncated, the response includes a token that you can use in the next request to fetch
    #               the next set of tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map of tag keys and values associated with the specified stream.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForStreamOutput = ::Struct.new(
      :next_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Stream data retention in hours is equal to zero.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoDataRetentionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The caller is not authorized to perform this operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotAuthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure that contains the notification information for the KVS images delivery. If this parameter is null, the configuration will be deleted from the stream.</p>
    #
    # @!attribute status
    #   <p>Indicates if a notification configuration is enabled or disabled.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute destination_config
    #   <p>The destination information required to deliver a notification to a customer.</p>
    #
    #   @return [NotificationDestinationConfig]
    #
    NotificationConfiguration = ::Struct.new(
      :status,
      :destination_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure that contains the information required to deliver a notification to a customer.</p>
    #
    # @!attribute uri
    #   <p>The Uniform Resource Idenifier (URI) that identifies where the images will be delivered.</p>
    #
    #   @return [String]
    #
    NotificationDestinationConfig = ::Struct.new(
      :uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes the endpoint of the signaling channel returned by the
    #                 <code>GetSignalingChannelEndpoint</code> API.</p>
    #
    # @!attribute protocol
    #   <p>The protocol of the signaling channel returned by the
    #                   <code>GetSignalingChannelEndpoint</code> API.</p>
    #
    #   Enum, one of: ["WSS", "HTTPS"]
    #
    #   @return [String]
    #
    # @!attribute resource_endpoint
    #   <p>The endpoint of the signaling channel returned by the
    #                   <code>GetSignalingChannelEndpoint</code> API.</p>
    #
    #   @return [String]
    #
    ResourceEndpointListItem = ::Struct.new(
      :protocol,
      :resource_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource is currently not available for this operation. New resources cannot be
    #             created with the same name as existing resources. Also, resources cannot be updated or
    #             deleted unless they are in an <code>ACTIVE</code> state.</p>
    #         <p>If this exception is returned, do not use it to determine whether the requested
    #             resource already exists. Instead, it is recommended you use the resource-specific
    #             describe API, for example, <code>DescribeStream</code> for video streams.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Kinesis Video Streams can't find the stream that you specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the endpoint configuration for the <code>SINGLE_MASTER</code>
    #             channel type. </p>
    #
    # @!attribute protocols
    #   <p>This property is used to determine the nature of communication over this
    #                   <code>SINGLE_MASTER</code> signaling channel. If <code>WSS</code> is specified, this
    #               API returns a websocket endpoint. If <code>HTTPS</code> is specified, this API returns
    #               an <code>HTTPS</code> endpoint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role
    #   <p>This property is used to determine messaging permissions in this
    #                   <code>SINGLE_MASTER</code> signaling channel. If <code>MASTER</code> is specified,
    #               this API returns an endpoint that a client can use to receive offers from and send
    #               answers to any of the viewers on this signaling channel. If <code>VIEWER</code> is
    #               specified, this API returns an endpoint that a client can use only to send offers to
    #               another <code>MASTER</code> client on this signaling channel. </p>
    #
    #   Enum, one of: ["MASTER", "VIEWER"]
    #
    #   @return [String]
    #
    SingleMasterChannelEndpointConfiguration = ::Struct.new(
      :protocols,
      :role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the configuration for the <code>SINGLE_MASTER</code> channel
    #             type.</p>
    #
    # @!attribute message_ttl_seconds
    #   <p>The period of time a signaling channel retains undelivered messages before they are
    #               discarded.</p>
    #
    #   @return [Integer]
    #
    SingleMasterConfiguration = ::Struct.new(
      :message_ttl_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>An object describing a Kinesis video stream.</p>
    #
    # @!attribute device_name
    #   <p>The name of the device that is associated with the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute media_type
    #   <p>The <code>MediaType</code> of the stream. </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key that Kinesis Video Streams
    #               uses to encrypt data on the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the stream.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp that indicates when the stream was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_retention_in_hours
    #   <p>How long the stream retains data, in hours.</p>
    #
    #   @return [Integer]
    #
    StreamInfo = ::Struct.new(
      :device_name,
      :stream_name,
      :stream_arn,
      :media_type,
      :kms_key_id,
      :version,
      :status,
      :creation_time,
      :data_retention_in_hours,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the condition that streams must satisfy to be returned when you list
    #             streams (see the <code>ListStreams</code> API). A condition has a comparison operation
    #             and a value. Currently, you can specify only the <code>BEGINS_WITH</code> operator,
    #             which finds streams whose names start with a given prefix. </p>
    #
    # @!attribute comparison_operator
    #   <p>A comparison operator. Currently, you can specify only the <code>BEGINS_WITH</code>
    #               operator, which finds streams whose names start with a given prefix.</p>
    #
    #   Enum, one of: ["BEGINS_WITH"]
    #
    #   @return [String]
    #
    # @!attribute comparison_value
    #   <p>A value to compare.</p>
    #
    #   @return [String]
    #
    StreamNameCondition = ::Struct.new(
      :comparison_operator,
      :comparison_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key and value pair that is associated with the specified signaling channel.</p>
    #
    # @!attribute key
    #   <p>The key of the tag that is associated with the specified signaling channel.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag that is associated with the specified signaling channel.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel to which you want to add
    #               tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to associate with the specified signaling channel. Each tag is a
    #               key-value pair.</p>
    #
    #   @return [Array<Tag>]
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

    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags
    #               to.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   <p>The name of the stream that you want to add the tag or tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to associate with the specified stream. Each tag is a key-value pair
    #               (the value is optional).</p>
    #
    #   @return [Hash<String, String>]
    #
    TagStreamInput = ::Struct.new(
      :stream_arn,
      :stream_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the limit of tags that you can associate with the resource.
    #             A Kinesis video stream can support up to 50 tags. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagsPerResourceExceededLimitException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel from which you want to remove
    #               tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_key_list
    #   <p>A list of the keys of the tags that you want to remove.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_key_list,
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

    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to remove tags
    #               from.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   <p>The name of the stream that you want to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_key_list
    #   <p>A list of the keys of the tags that you want to remove.</p>
    #
    #   @return [Array<String>]
    #
    UntagStreamInput = ::Struct.new(
      :stream_arn,
      :stream_name,
      :tag_key_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream whose retention period you want to change.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream whose retention period you want to
    #               change.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The version of the stream whose retention period you want to change. To get the
    #               version, call either the <code>DescribeStream</code> or the <code>ListStreams</code>
    #               API.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>Indicates whether you want to increase or decrease the retention period.</p>
    #
    #   Enum, one of: ["INCREASE_DATA_RETENTION", "DECREASE_DATA_RETENTION"]
    #
    #   @return [String]
    #
    # @!attribute data_retention_change_in_hours
    #   <p>The retention period, in hours. The value you specify replaces the current value.
    #               The maximum value for this parameter is 87600 (ten years).</p>
    #
    #   @return [Integer]
    #
    UpdateDataRetentionInput = ::Struct.new(
      :stream_name,
      :stream_arn,
      :current_version,
      :operation,
      :data_retention_change_in_hours,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpdateDataRetentionOperation
    #
    module UpdateDataRetentionOperation
      # No documentation available.
      #
      INCREASE_DATA_RETENTION = "INCREASE_DATA_RETENTION"

      # No documentation available.
      #
      DECREASE_DATA_RETENTION = "DECREASE_DATA_RETENTION"
    end

    UpdateDataRetentionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which to update the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the image generation configuration. You must specify either the <code>StreamName</code>
    #               or the <code>StreamARN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute image_generation_configuration
    #   <p>The structure that contains the information required for the KVS images delivery. If the structure is null, the configuration will be deleted from the stream.</p>
    #
    #   @return [ImageGenerationConfiguration]
    #
    UpdateImageGenerationConfigurationInput = ::Struct.new(
      :stream_name,
      :stream_arn,
      :image_generation_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateImageGenerationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_configuration
    #   <p>The structure containing the information required for notifications. If the structure is null, the configuration will be deleted from the stream.</p>
    #
    #   @return [NotificationConfiguration]
    #
    UpdateNotificationConfigurationInput = ::Struct.new(
      :stream_name,
      :stream_arn,
      :notification_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateNotificationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel that you want to
    #               update.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The current version of the signaling channel that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute single_master_configuration
    #   <p>The structure containing the configuration for the <code>SINGLE_MASTER</code> type of
    #               the signaling channel that you want to update. </p>
    #
    #   @return [SingleMasterConfiguration]
    #
    UpdateSignalingChannelInput = ::Struct.new(
      :channel_arn,
      :current_version,
      :single_master_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateSignalingChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream whose metadata you want to update.</p>
    #           <p>The stream name is an identifier for the stream, and must be unique for each
    #               account and region.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The ARN of the stream whose metadata you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The version of the stream whose metadata you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The name of the device that is writing to the stream. </p>
    #           <note>
    #               <p> In the current implementation, Kinesis Video Streams does not use this name.
    #               </p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute media_type
    #   <p>The stream's media type. Use <code>MediaType</code> to specify the type of content
    #               that the stream contains to the consumers of the stream. For more information about
    #               media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media
    #                   Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838 section-4.2">Naming
    #               Requirements</a>.</p>
    #           <p>To play video on the console, you must specify the correct video type. For example,
    #               if the video in the stream is H.264, specify <code>video/h264</code> as the
    #                   <code>MediaType</code>.</p>
    #
    #   @return [String]
    #
    UpdateStreamInput = ::Struct.new(
      :stream_name,
      :stream_arn,
      :current_version,
      :device_name,
      :media_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The stream version that you specified is not the latest version. To get the latest
    #             version, use the <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_DescribeStream.html">DescribeStream</a>
    #             API.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    VersionMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
