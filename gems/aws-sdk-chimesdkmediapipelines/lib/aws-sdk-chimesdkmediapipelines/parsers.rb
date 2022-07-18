# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMediaPipelines
  module Parsers

    # Operation Parser for CreateMediaCapturePipeline
    class CreateMediaCapturePipeline
      def self.parse(http_resp)
        data = Types::CreateMediaCapturePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.media_capture_pipeline = (Parsers::MediaCapturePipeline.parse(map['MediaCapturePipeline']) unless map['MediaCapturePipeline'].nil?)
        data
      end
    end

    class MediaCapturePipeline
      def self.parse(map)
        data = Types::MediaCapturePipeline.new
        data.media_pipeline_id = map['MediaPipelineId']
        data.media_pipeline_arn = map['MediaPipelineArn']
        data.source_type = map['SourceType']
        data.source_arn = map['SourceArn']
        data.status = map['Status']
        data.sink_type = map['SinkType']
        data.sink_arn = map['SinkArn']
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        data.chime_sdk_meeting_configuration = (Parsers::ChimeSdkMeetingConfiguration.parse(map['ChimeSdkMeetingConfiguration']) unless map['ChimeSdkMeetingConfiguration'].nil?)
        return data
      end
    end

    class ChimeSdkMeetingConfiguration
      def self.parse(map)
        data = Types::ChimeSdkMeetingConfiguration.new
        data.source_configuration = (Parsers::SourceConfiguration.parse(map['SourceConfiguration']) unless map['SourceConfiguration'].nil?)
        data.artifacts_configuration = (Parsers::ArtifactsConfiguration.parse(map['ArtifactsConfiguration']) unless map['ArtifactsConfiguration'].nil?)
        return data
      end
    end

    class ArtifactsConfiguration
      def self.parse(map)
        data = Types::ArtifactsConfiguration.new
        data.audio = (Parsers::AudioArtifactsConfiguration.parse(map['Audio']) unless map['Audio'].nil?)
        data.video = (Parsers::VideoArtifactsConfiguration.parse(map['Video']) unless map['Video'].nil?)
        data.content = (Parsers::ContentArtifactsConfiguration.parse(map['Content']) unless map['Content'].nil?)
        return data
      end
    end

    class ContentArtifactsConfiguration
      def self.parse(map)
        data = Types::ContentArtifactsConfiguration.new
        data.state = map['State']
        data.mux_type = map['MuxType']
        return data
      end
    end

    class VideoArtifactsConfiguration
      def self.parse(map)
        data = Types::VideoArtifactsConfiguration.new
        data.state = map['State']
        data.mux_type = map['MuxType']
        return data
      end
    end

    class AudioArtifactsConfiguration
      def self.parse(map)
        data = Types::AudioArtifactsConfiguration.new
        data.mux_type = map['MuxType']
        return data
      end
    end

    class SourceConfiguration
      def self.parse(map)
        data = Types::SourceConfiguration.new
        data.selected_video_streams = (Parsers::SelectedVideoStreams.parse(map['SelectedVideoStreams']) unless map['SelectedVideoStreams'].nil?)
        return data
      end
    end

    class SelectedVideoStreams
      def self.parse(map)
        data = Types::SelectedVideoStreams.new
        data.attendee_ids = (Parsers::AttendeeIdList.parse(map['AttendeeIds']) unless map['AttendeeIds'].nil?)
        data.external_user_ids = (Parsers::ExternalUserIdList.parse(map['ExternalUserIds']) unless map['ExternalUserIds'].nil?)
        return data
      end
    end

    class ExternalUserIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AttendeeIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ServiceFailureException
    class ServiceFailureException
      def self.parse(http_resp)
        data = Types::ServiceFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ThrottledClientException
    class ThrottledClientException
      def self.parse(http_resp)
        data = Types::ThrottledClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for UnauthorizedClientException
    class UnauthorizedClientException
      def self.parse(http_resp)
        data = Types::UnauthorizedClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteMediaCapturePipeline
    class DeleteMediaCapturePipeline
      def self.parse(http_resp)
        data = Types::DeleteMediaCapturePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for GetMediaCapturePipeline
    class GetMediaCapturePipeline
      def self.parse(http_resp)
        data = Types::GetMediaCapturePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.media_capture_pipeline = (Parsers::MediaCapturePipeline.parse(map['MediaCapturePipeline']) unless map['MediaCapturePipeline'].nil?)
        data
      end
    end

    # Operation Parser for ListMediaCapturePipelines
    class ListMediaCapturePipelines
      def self.parse(http_resp)
        data = Types::ListMediaCapturePipelinesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.media_capture_pipelines = (Parsers::MediaCapturePipelineSummaryList.parse(map['MediaCapturePipelines']) unless map['MediaCapturePipelines'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MediaCapturePipelineSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MediaCapturePipelineSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class MediaCapturePipelineSummary
      def self.parse(map)
        data = Types::MediaCapturePipelineSummary.new
        data.media_pipeline_id = map['MediaPipelineId']
        data.media_pipeline_arn = map['MediaPipelineArn']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
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
  end
end
