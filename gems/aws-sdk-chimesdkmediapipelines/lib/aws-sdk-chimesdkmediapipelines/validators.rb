# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMediaPipelines
  module Validators

    class ArtifactsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactsConfiguration, context: context)
        Validators::AudioArtifactsConfiguration.validate!(input[:audio], context: "#{context}[:audio]") unless input[:audio].nil?
        Validators::VideoArtifactsConfiguration.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Validators::ContentArtifactsConfiguration.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
      end
    end

    class AttendeeIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AudioArtifactsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioArtifactsConfiguration, context: context)
        Hearth::Validator.validate!(input[:mux_type], ::String, context: "#{context}[:mux_type]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ChimeSdkMeetingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChimeSdkMeetingConfiguration, context: context)
        Validators::SourceConfiguration.validate!(input[:source_configuration], context: "#{context}[:source_configuration]") unless input[:source_configuration].nil?
        Validators::ArtifactsConfiguration.validate!(input[:artifacts_configuration], context: "#{context}[:artifacts_configuration]") unless input[:artifacts_configuration].nil?
      end
    end

    class ContentArtifactsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentArtifactsConfiguration, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:mux_type], ::String, context: "#{context}[:mux_type]")
      end
    end

    class CreateMediaCapturePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMediaCapturePipelineInput, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:sink_type], ::String, context: "#{context}[:sink_type]")
        Hearth::Validator.validate!(input[:sink_arn], ::String, context: "#{context}[:sink_arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::ChimeSdkMeetingConfiguration.validate!(input[:chime_sdk_meeting_configuration], context: "#{context}[:chime_sdk_meeting_configuration]") unless input[:chime_sdk_meeting_configuration].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMediaCapturePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMediaCapturePipelineOutput, context: context)
        Validators::MediaCapturePipeline.validate!(input[:media_capture_pipeline], context: "#{context}[:media_capture_pipeline]") unless input[:media_capture_pipeline].nil?
      end
    end

    class DeleteMediaCapturePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMediaCapturePipelineInput, context: context)
        Hearth::Validator.validate!(input[:media_pipeline_id], ::String, context: "#{context}[:media_pipeline_id]")
      end
    end

    class DeleteMediaCapturePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMediaCapturePipelineOutput, context: context)
      end
    end

    class ExternalUserIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class GetMediaCapturePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMediaCapturePipelineInput, context: context)
        Hearth::Validator.validate!(input[:media_pipeline_id], ::String, context: "#{context}[:media_pipeline_id]")
      end
    end

    class GetMediaCapturePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMediaCapturePipelineOutput, context: context)
        Validators::MediaCapturePipeline.validate!(input[:media_capture_pipeline], context: "#{context}[:media_capture_pipeline]") unless input[:media_capture_pipeline].nil?
      end
    end

    class ListMediaCapturePipelinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMediaCapturePipelinesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMediaCapturePipelinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMediaCapturePipelinesOutput, context: context)
        Validators::MediaCapturePipelineSummaryList.validate!(input[:media_capture_pipelines], context: "#{context}[:media_capture_pipelines]") unless input[:media_capture_pipelines].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MediaCapturePipeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaCapturePipeline, context: context)
        Hearth::Validator.validate!(input[:media_pipeline_id], ::String, context: "#{context}[:media_pipeline_id]")
        Hearth::Validator.validate!(input[:media_pipeline_arn], ::String, context: "#{context}[:media_pipeline_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:sink_type], ::String, context: "#{context}[:sink_type]")
        Hearth::Validator.validate!(input[:sink_arn], ::String, context: "#{context}[:sink_arn]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
        Validators::ChimeSdkMeetingConfiguration.validate!(input[:chime_sdk_meeting_configuration], context: "#{context}[:chime_sdk_meeting_configuration]") unless input[:chime_sdk_meeting_configuration].nil?
      end
    end

    class MediaCapturePipelineSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaCapturePipelineSummary, context: context)
        Hearth::Validator.validate!(input[:media_pipeline_id], ::String, context: "#{context}[:media_pipeline_id]")
        Hearth::Validator.validate!(input[:media_pipeline_arn], ::String, context: "#{context}[:media_pipeline_arn]")
      end
    end

    class MediaCapturePipelineSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MediaCapturePipelineSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class SelectedVideoStreams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectedVideoStreams, context: context)
        Validators::AttendeeIdList.validate!(input[:attendee_ids], context: "#{context}[:attendee_ids]") unless input[:attendee_ids].nil?
        Validators::ExternalUserIdList.validate!(input[:external_user_ids], context: "#{context}[:external_user_ids]") unless input[:external_user_ids].nil?
      end
    end

    class ServiceFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceFailureException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class SourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceConfiguration, context: context)
        Validators::SelectedVideoStreams.validate!(input[:selected_video_streams], context: "#{context}[:selected_video_streams]") unless input[:selected_video_streams].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottledClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottledClientException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UnauthorizedClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedClientException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class VideoArtifactsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoArtifactsConfiguration, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:mux_type], ::String, context: "#{context}[:mux_type]")
      end
    end

  end
end
