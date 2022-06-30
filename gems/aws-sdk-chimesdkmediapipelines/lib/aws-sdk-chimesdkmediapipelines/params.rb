# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ChimeSDKMediaPipelines
  module Params

    module ArtifactsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactsConfiguration, context: context)
        type = Types::ArtifactsConfiguration.new
        type.audio = AudioArtifactsConfiguration.build(params[:audio], context: "#{context}[:audio]") unless params[:audio].nil?
        type.video = VideoArtifactsConfiguration.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.content = ContentArtifactsConfiguration.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type
      end
    end

    module AttendeeIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AudioArtifactsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioArtifactsConfiguration, context: context)
        type = Types::AudioArtifactsConfiguration.new
        type.mux_type = params[:mux_type]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ChimeSdkMeetingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChimeSdkMeetingConfiguration, context: context)
        type = Types::ChimeSdkMeetingConfiguration.new
        type.source_configuration = SourceConfiguration.build(params[:source_configuration], context: "#{context}[:source_configuration]") unless params[:source_configuration].nil?
        type.artifacts_configuration = ArtifactsConfiguration.build(params[:artifacts_configuration], context: "#{context}[:artifacts_configuration]") unless params[:artifacts_configuration].nil?
        type
      end
    end

    module ContentArtifactsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContentArtifactsConfiguration, context: context)
        type = Types::ContentArtifactsConfiguration.new
        type.state = params[:state]
        type.mux_type = params[:mux_type]
        type
      end
    end

    module CreateMediaCapturePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMediaCapturePipelineInput, context: context)
        type = Types::CreateMediaCapturePipelineInput.new
        type.source_type = params[:source_type]
        type.source_arn = params[:source_arn]
        type.sink_type = params[:sink_type]
        type.sink_arn = params[:sink_arn]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.chime_sdk_meeting_configuration = ChimeSdkMeetingConfiguration.build(params[:chime_sdk_meeting_configuration], context: "#{context}[:chime_sdk_meeting_configuration]") unless params[:chime_sdk_meeting_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMediaCapturePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMediaCapturePipelineOutput, context: context)
        type = Types::CreateMediaCapturePipelineOutput.new
        type.media_capture_pipeline = MediaCapturePipeline.build(params[:media_capture_pipeline], context: "#{context}[:media_capture_pipeline]") unless params[:media_capture_pipeline].nil?
        type
      end
    end

    module DeleteMediaCapturePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMediaCapturePipelineInput, context: context)
        type = Types::DeleteMediaCapturePipelineInput.new
        type.media_pipeline_id = params[:media_pipeline_id]
        type
      end
    end

    module DeleteMediaCapturePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMediaCapturePipelineOutput, context: context)
        type = Types::DeleteMediaCapturePipelineOutput.new
        type
      end
    end

    module ExternalUserIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module GetMediaCapturePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMediaCapturePipelineInput, context: context)
        type = Types::GetMediaCapturePipelineInput.new
        type.media_pipeline_id = params[:media_pipeline_id]
        type
      end
    end

    module GetMediaCapturePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMediaCapturePipelineOutput, context: context)
        type = Types::GetMediaCapturePipelineOutput.new
        type.media_capture_pipeline = MediaCapturePipeline.build(params[:media_capture_pipeline], context: "#{context}[:media_capture_pipeline]") unless params[:media_capture_pipeline].nil?
        type
      end
    end

    module ListMediaCapturePipelinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMediaCapturePipelinesInput, context: context)
        type = Types::ListMediaCapturePipelinesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMediaCapturePipelinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMediaCapturePipelinesOutput, context: context)
        type = Types::ListMediaCapturePipelinesOutput.new
        type.media_capture_pipelines = MediaCapturePipelineSummaryList.build(params[:media_capture_pipelines], context: "#{context}[:media_capture_pipelines]") unless params[:media_capture_pipelines].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MediaCapturePipeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaCapturePipeline, context: context)
        type = Types::MediaCapturePipeline.new
        type.media_pipeline_id = params[:media_pipeline_id]
        type.media_pipeline_arn = params[:media_pipeline_arn]
        type.source_type = params[:source_type]
        type.source_arn = params[:source_arn]
        type.status = params[:status]
        type.sink_type = params[:sink_type]
        type.sink_arn = params[:sink_arn]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type.chime_sdk_meeting_configuration = ChimeSdkMeetingConfiguration.build(params[:chime_sdk_meeting_configuration], context: "#{context}[:chime_sdk_meeting_configuration]") unless params[:chime_sdk_meeting_configuration].nil?
        type
      end
    end

    module MediaCapturePipelineSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaCapturePipelineSummary, context: context)
        type = Types::MediaCapturePipelineSummary.new
        type.media_pipeline_id = params[:media_pipeline_id]
        type.media_pipeline_arn = params[:media_pipeline_arn]
        type
      end
    end

    module MediaCapturePipelineSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaCapturePipelineSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module SelectedVideoStreams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectedVideoStreams, context: context)
        type = Types::SelectedVideoStreams.new
        type.attendee_ids = AttendeeIdList.build(params[:attendee_ids], context: "#{context}[:attendee_ids]") unless params[:attendee_ids].nil?
        type.external_user_ids = ExternalUserIdList.build(params[:external_user_ids], context: "#{context}[:external_user_ids]") unless params[:external_user_ids].nil?
        type
      end
    end

    module ServiceFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceFailureException, context: context)
        type = Types::ServiceFailureException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module SourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceConfiguration, context: context)
        type = Types::SourceConfiguration.new
        type.selected_video_streams = SelectedVideoStreams.build(params[:selected_video_streams], context: "#{context}[:selected_video_streams]") unless params[:selected_video_streams].nil?
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottledClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottledClientException, context: context)
        type = Types::ThrottledClientException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module UnauthorizedClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedClientException, context: context)
        type = Types::UnauthorizedClientException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module VideoArtifactsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoArtifactsConfiguration, context: context)
        type = Types::VideoArtifactsConfiguration.new
        type.state = params[:state]
        type.mux_type = params[:mux_type]
        type
      end
    end

  end
end
