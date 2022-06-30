# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ChimeSDKMediaPipelines
  module Builders

    # Operation Builder for CreateMediaCapturePipeline
    class CreateMediaCapturePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/sdk-media-capture-pipelines')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['SinkType'] = input[:sink_type] unless input[:sink_type].nil?
        data['SinkArn'] = input[:sink_arn] unless input[:sink_arn].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['ChimeSdkMeetingConfiguration'] = Builders::ChimeSdkMeetingConfiguration.build(input[:chime_sdk_meeting_configuration]) unless input[:chime_sdk_meeting_configuration].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for ChimeSdkMeetingConfiguration
    class ChimeSdkMeetingConfiguration
      def self.build(input)
        data = {}
        data['SourceConfiguration'] = Builders::SourceConfiguration.build(input[:source_configuration]) unless input[:source_configuration].nil?
        data['ArtifactsConfiguration'] = Builders::ArtifactsConfiguration.build(input[:artifacts_configuration]) unless input[:artifacts_configuration].nil?
        data
      end
    end

    # Structure Builder for ArtifactsConfiguration
    class ArtifactsConfiguration
      def self.build(input)
        data = {}
        data['Audio'] = Builders::AudioArtifactsConfiguration.build(input[:audio]) unless input[:audio].nil?
        data['Video'] = Builders::VideoArtifactsConfiguration.build(input[:video]) unless input[:video].nil?
        data['Content'] = Builders::ContentArtifactsConfiguration.build(input[:content]) unless input[:content].nil?
        data
      end
    end

    # Structure Builder for ContentArtifactsConfiguration
    class ContentArtifactsConfiguration
      def self.build(input)
        data = {}
        data['State'] = input[:state] unless input[:state].nil?
        data['MuxType'] = input[:mux_type] unless input[:mux_type].nil?
        data
      end
    end

    # Structure Builder for VideoArtifactsConfiguration
    class VideoArtifactsConfiguration
      def self.build(input)
        data = {}
        data['State'] = input[:state] unless input[:state].nil?
        data['MuxType'] = input[:mux_type] unless input[:mux_type].nil?
        data
      end
    end

    # Structure Builder for AudioArtifactsConfiguration
    class AudioArtifactsConfiguration
      def self.build(input)
        data = {}
        data['MuxType'] = input[:mux_type] unless input[:mux_type].nil?
        data
      end
    end

    # Structure Builder for SourceConfiguration
    class SourceConfiguration
      def self.build(input)
        data = {}
        data['SelectedVideoStreams'] = Builders::SelectedVideoStreams.build(input[:selected_video_streams]) unless input[:selected_video_streams].nil?
        data
      end
    end

    # Structure Builder for SelectedVideoStreams
    class SelectedVideoStreams
      def self.build(input)
        data = {}
        data['AttendeeIds'] = Builders::AttendeeIdList.build(input[:attendee_ids]) unless input[:attendee_ids].nil?
        data['ExternalUserIds'] = Builders::ExternalUserIdList.build(input[:external_user_ids]) unless input[:external_user_ids].nil?
        data
      end
    end

    # List Builder for ExternalUserIdList
    class ExternalUserIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AttendeeIdList
    class AttendeeIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteMediaCapturePipeline
    class DeleteMediaCapturePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:media_pipeline_id].to_s.empty?
          raise ArgumentError, "HTTP label :media_pipeline_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sdk-media-capture-pipelines/%<MediaPipelineId>s',
            MediaPipelineId: Hearth::HTTP.uri_escape(input[:media_pipeline_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMediaCapturePipeline
    class GetMediaCapturePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:media_pipeline_id].to_s.empty?
          raise ArgumentError, "HTTP label :media_pipeline_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sdk-media-capture-pipelines/%<MediaPipelineId>s',
            MediaPipelineId: Hearth::HTTP.uri_escape(input[:media_pipeline_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMediaCapturePipelines
    class ListMediaCapturePipelines
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/sdk-media-capture-pipelines')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['arn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=tag-resource').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=untag-resource').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
