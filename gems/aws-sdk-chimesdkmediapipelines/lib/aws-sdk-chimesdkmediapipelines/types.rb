# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMediaPipelines
  module Types

    # <p>The configuration for the artifacts.</p>
    #
    # @!attribute audio
    #   <p>The configuration for the audio artifacts.</p>
    #
    #   @return [AudioArtifactsConfiguration]
    #
    # @!attribute video
    #   <p>The configuration for the video artifacts.</p>
    #
    #   @return [VideoArtifactsConfiguration]
    #
    # @!attribute content
    #   <p>The configuration for the content artifacts.</p>
    #
    #   @return [ContentArtifactsConfiguration]
    #
    ArtifactsConfiguration = ::Struct.new(
      :audio,
      :video,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ArtifactsState
    #
    module ArtifactsState
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # <p>The audio artifact configuration object.</p>
    #
    # @!attribute mux_type
    #   <p>The MUX type of the audio artifact configuration object.</p>
    #
    #   Enum, one of: ["AudioOnly", "AudioWithActiveSpeakerVideo"]
    #
    #   @return [String]
    #
    AudioArtifactsConfiguration = ::Struct.new(
      :mux_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioMuxType
    #
    module AudioMuxType
      # No documentation available.
      #
      AudioOnly = "AudioOnly"

      # No documentation available.
      #
      AudioWithActiveSpeakerVideo = "AudioWithActiveSpeakerVideo"
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Forbidden", "NotFound", "ResourceLimitExceeded", "ServiceFailure", "ServiceUnavailable", "Throttling"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration object of the Amazon Chime SDK meeting for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>
    #
    # @!attribute source_configuration
    #   <p>The source configuration for a specified media capture pipline.</p>
    #
    #   @return [SourceConfiguration]
    #
    # @!attribute artifacts_configuration
    #   <p>The configuration for the artifacts in an Amazon Chime SDK meeting.</p>
    #
    #   @return [ArtifactsConfiguration]
    #
    ChimeSdkMeetingConfiguration = ::Struct.new(
      :source_configuration,
      :artifacts_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content artifact object.</p>
    #
    # @!attribute state
    #   <p>Indicates whether the content artifact is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute mux_type
    #   <p>The MUX type of the artifact configuration.</p>
    #
    #   Enum, one of: ["ContentOnly"]
    #
    #   @return [String]
    #
    ContentArtifactsConfiguration = ::Struct.new(
      :state,
      :mux_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContentMuxType
    #
    module ContentMuxType
      # No documentation available.
      #
      ContentOnly = "ContentOnly"
    end

    # @!attribute source_type
    #   <p>Source type from which the media artifacts are captured. A Chime SDK Meeting
    #            is the only supported source.</p>
    #
    #   Enum, one of: ["ChimeSdkMeeting"]
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>ARN of the source from which the media artifacts are captured.</p>
    #
    #   @return [String]
    #
    # @!attribute sink_type
    #   <p>Destination type to which the media artifacts are saved. You must use an S3 bucket. </p>
    #
    #   Enum, one of: ["S3Bucket"]
    #
    #   @return [String]
    #
    # @!attribute sink_arn
    #   <p>The ARN of the sink type.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The token assigned to the client making the pipeline request.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_sdk_meeting_configuration
    #   <p>The configuration for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>
    #
    #   @return [ChimeSdkMeetingConfiguration]
    #
    # @!attribute tags
    #   <p>The list of tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateMediaCapturePipelineInput = ::Struct.new(
      :source_type,
      :source_arn,
      :sink_type,
      :sink_arn,
      :client_request_token,
      :chime_sdk_meeting_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMediaPipelines::Types::CreateMediaCapturePipelineInput "\
          "source_type=#{source_type || 'nil'}, "\
          "source_arn=\"[SENSITIVE]\", "\
          "sink_type=#{sink_type || 'nil'}, "\
          "sink_arn=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "chime_sdk_meeting_configuration=#{chime_sdk_meeting_configuration || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute media_capture_pipeline
    #   <p>A media capture pipeline object, the ID, source type, source ARN, sink type, and  sink ARN of a media capture pipeline object.</p>
    #
    #   @return [MediaCapturePipeline]
    #
    CreateMediaCapturePipelineOutput = ::Struct.new(
      :media_capture_pipeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute media_pipeline_id
    #   <p>The ID of the media capture pipeline being deleted. </p>
    #
    #   @return [String]
    #
    DeleteMediaCapturePipelineInput = ::Struct.new(
      :media_pipeline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMediaCapturePipelineOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      BadRequest = "BadRequest"

      # No documentation available.
      #
      Forbidden = "Forbidden"

      # No documentation available.
      #
      NotFound = "NotFound"

      # No documentation available.
      #
      ResourceLimitExceeded = "ResourceLimitExceeded"

      # No documentation available.
      #
      ServiceFailure = "ServiceFailure"

      # No documentation available.
      #
      ServiceUnavailable = "ServiceUnavailable"

      # No documentation available.
      #
      Throttling = "Throttling"
    end

    # <p>The client is permanently forbidden from making the request.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Forbidden", "NotFound", "ResourceLimitExceeded", "ServiceFailure", "ServiceUnavailable", "Throttling"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute media_pipeline_id
    #   <p>The ID of the pipeline that you want to get.</p>
    #
    #   @return [String]
    #
    GetMediaCapturePipelineInput = ::Struct.new(
      :media_pipeline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute media_capture_pipeline
    #   <p>The media capture pipeline object.</p>
    #
    #   @return [MediaCapturePipeline]
    #
    GetMediaCapturePipelineOutput = ::Struct.new(
      :media_capture_pipeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>
    #
    #   @return [Integer]
    #
    ListMediaCapturePipelinesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute media_capture_pipelines
    #   <p>The media capture pipeline objects in the list.</p>
    #
    #   @return [Array<MediaCapturePipelineSummary>]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. </p>
    #
    #   @return [String]
    #
    ListMediaCapturePipelinesOutput = ::Struct.new(
      :media_capture_pipelines,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
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
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A media capture pipeline object consisting of an ID, source type, source ARN, a sink type, a sink ARN, and a configuration object.</p>
    #
    # @!attribute media_pipeline_id
    #   <p>The ID of a media capture pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute media_pipeline_arn
    #   <p>The ARN of a media capture pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>Source type from which media artifacts are saved. You must use <code>ChimeMeeting</code>.</p>
    #
    #   Enum, one of: ["ChimeSdkMeeting"]
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>ARN of the source from which the media artifacts are saved.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the media capture pipeline.</p>
    #
    #   Enum, one of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped"]
    #
    #   @return [String]
    #
    # @!attribute sink_type
    #   <p>Destination type to which the media artifacts are saved. You must use an S3 Bucket.</p>
    #
    #   Enum, one of: ["S3Bucket"]
    #
    #   @return [String]
    #
    # @!attribute sink_arn
    #   <p>ARN of the destination to which the media artifacts are saved.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the capture pipeline was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The time at which the capture pipeline was updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute chime_sdk_meeting_configuration
    #   <p>The configuration for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>
    #
    #   @return [ChimeSdkMeetingConfiguration]
    #
    MediaCapturePipeline = ::Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn,
      :source_type,
      :source_arn,
      :status,
      :sink_type,
      :sink_arn,
      :created_timestamp,
      :updated_timestamp,
      :chime_sdk_meeting_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMediaPipelines::Types::MediaCapturePipeline "\
          "media_pipeline_id=#{media_pipeline_id || 'nil'}, "\
          "media_pipeline_arn=#{media_pipeline_arn || 'nil'}, "\
          "source_type=#{source_type || 'nil'}, "\
          "source_arn=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "sink_type=#{sink_type || 'nil'}, "\
          "sink_arn=\"[SENSITIVE]\", "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "updated_timestamp=#{updated_timestamp || 'nil'}, "\
          "chime_sdk_meeting_configuration=#{chime_sdk_meeting_configuration || 'nil'}>"
      end
    end

    # <p>A summary of a media capture pipeline.</p>
    #
    # @!attribute media_pipeline_id
    #   <p>The ID of a media capture pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute media_pipeline_arn
    #   <p>The ARN of a media capture pipeline.</p>
    #
    #   @return [String]
    #
    MediaCapturePipelineSummary = ::Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MediaPipelineSinkType
    #
    module MediaPipelineSinkType
      # No documentation available.
      #
      S3Bucket = "S3Bucket"
    end

    # Includes enum constants for MediaPipelineSourceType
    #
    module MediaPipelineSourceType
      # No documentation available.
      #
      ChimeSdkMeeting = "ChimeSdkMeeting"
    end

    # Includes enum constants for MediaPipelineStatus
    #
    module MediaPipelineStatus
      # No documentation available.
      #
      Initializing = "Initializing"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Stopping = "Stopping"

      # No documentation available.
      #
      Stopped = "Stopped"
    end

    # <p>One or more of the resources in the request does not exist in the system.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Forbidden", "NotFound", "ResourceLimitExceeded", "ServiceFailure", "ServiceUnavailable", "Throttling"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request exceeds the resource limit.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Forbidden", "NotFound", "ResourceLimitExceeded", "ServiceFailure", "ServiceUnavailable", "Throttling"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    ResourceLimitExceededException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The video streams to capture for a specified media capture pipeline. The total number of video streams can't exceed 25.</p>
    #
    # @!attribute attendee_ids
    #   <p>The attendee IDs of the streams selected for a media capture pipeline. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute external_user_ids
    #   <p>The external user IDs of the streams selected for a media capture pipeline.</p>
    #
    #   @return [Array<String>]
    #
    SelectedVideoStreams = ::Struct.new(
      :attendee_ids,
      :external_user_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service encountered an unexpected error.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Forbidden", "NotFound", "ResourceLimitExceeded", "ServiceFailure", "ServiceUnavailable", "Throttling"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    ServiceFailureException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is currently unavailable.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Forbidden", "NotFound", "ResourceLimitExceeded", "ServiceFailure", "ServiceUnavailable", "Throttling"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Source configuration for a specified media capture pipeline.</p>
    #
    # @!attribute selected_video_streams
    #   <p>The selected video streams to capture for a specified media capture pipeline. The number of video streams can't exceed 25.</p>
    #
    #   @return [SelectedVideoStreams]
    #
    SourceConfiguration = ::Struct.new(
      :selected_video_streams,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a tag applied to a resource.</p>
    #
    # @!attribute key
    #   <p>The key of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag.</p>
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
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
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

    # <p>The client exceeded its request rate limit.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Forbidden", "NotFound", "ResourceLimitExceeded", "ServiceFailure", "ServiceUnavailable", "Throttling"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    ThrottledClientException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client is not currently authorized to make the request.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Forbidden", "NotFound", "ResourceLimitExceeded", "ServiceFailure", "ServiceUnavailable", "Throttling"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    UnauthorizedClientException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
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

    # <p>The video artifact configuration object.</p>
    #
    # @!attribute state
    #   <p>Indicates whether the video artifact is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute mux_type
    #   <p>The MUX type of the video artifact configuration object.</p>
    #
    #   Enum, one of: ["VideoOnly"]
    #
    #   @return [String]
    #
    VideoArtifactsConfiguration = ::Struct.new(
      :state,
      :mux_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VideoMuxType
    #
    module VideoMuxType
      # No documentation available.
      #
      VideoOnly = "VideoOnly"
    end

  end
end
