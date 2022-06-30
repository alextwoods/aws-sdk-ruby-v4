# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMediaPipelines
  module Stubs

    # Operation Stubber for CreateMediaCapturePipeline
    class CreateMediaCapturePipeline
      def self.default(visited=[])
        {
          media_capture_pipeline: Stubs::MediaCapturePipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['MediaCapturePipeline'] = Stubs::MediaCapturePipeline.stub(stub[:media_capture_pipeline]) unless stub[:media_capture_pipeline].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MediaCapturePipeline
    class MediaCapturePipeline
      def self.default(visited=[])
        return nil if visited.include?('MediaCapturePipeline')
        visited = visited + ['MediaCapturePipeline']
        {
          media_pipeline_id: 'media_pipeline_id',
          media_pipeline_arn: 'media_pipeline_arn',
          source_type: 'source_type',
          source_arn: 'source_arn',
          status: 'status',
          sink_type: 'sink_type',
          sink_arn: 'sink_arn',
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
          chime_sdk_meeting_configuration: Stubs::ChimeSdkMeetingConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaCapturePipeline.new
        data = {}
        data['MediaPipelineId'] = stub[:media_pipeline_id] unless stub[:media_pipeline_id].nil?
        data['MediaPipelineArn'] = stub[:media_pipeline_arn] unless stub[:media_pipeline_arn].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SinkType'] = stub[:sink_type] unless stub[:sink_type].nil?
        data['SinkArn'] = stub[:sink_arn] unless stub[:sink_arn].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data['ChimeSdkMeetingConfiguration'] = Stubs::ChimeSdkMeetingConfiguration.stub(stub[:chime_sdk_meeting_configuration]) unless stub[:chime_sdk_meeting_configuration].nil?
        data
      end
    end

    # Structure Stubber for ChimeSdkMeetingConfiguration
    class ChimeSdkMeetingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ChimeSdkMeetingConfiguration')
        visited = visited + ['ChimeSdkMeetingConfiguration']
        {
          source_configuration: Stubs::SourceConfiguration.default(visited),
          artifacts_configuration: Stubs::ArtifactsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChimeSdkMeetingConfiguration.new
        data = {}
        data['SourceConfiguration'] = Stubs::SourceConfiguration.stub(stub[:source_configuration]) unless stub[:source_configuration].nil?
        data['ArtifactsConfiguration'] = Stubs::ArtifactsConfiguration.stub(stub[:artifacts_configuration]) unless stub[:artifacts_configuration].nil?
        data
      end
    end

    # Structure Stubber for ArtifactsConfiguration
    class ArtifactsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ArtifactsConfiguration')
        visited = visited + ['ArtifactsConfiguration']
        {
          audio: Stubs::AudioArtifactsConfiguration.default(visited),
          video: Stubs::VideoArtifactsConfiguration.default(visited),
          content: Stubs::ContentArtifactsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactsConfiguration.new
        data = {}
        data['Audio'] = Stubs::AudioArtifactsConfiguration.stub(stub[:audio]) unless stub[:audio].nil?
        data['Video'] = Stubs::VideoArtifactsConfiguration.stub(stub[:video]) unless stub[:video].nil?
        data['Content'] = Stubs::ContentArtifactsConfiguration.stub(stub[:content]) unless stub[:content].nil?
        data
      end
    end

    # Structure Stubber for ContentArtifactsConfiguration
    class ContentArtifactsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ContentArtifactsConfiguration')
        visited = visited + ['ContentArtifactsConfiguration']
        {
          state: 'state',
          mux_type: 'mux_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContentArtifactsConfiguration.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['MuxType'] = stub[:mux_type] unless stub[:mux_type].nil?
        data
      end
    end

    # Structure Stubber for VideoArtifactsConfiguration
    class VideoArtifactsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VideoArtifactsConfiguration')
        visited = visited + ['VideoArtifactsConfiguration']
        {
          state: 'state',
          mux_type: 'mux_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoArtifactsConfiguration.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['MuxType'] = stub[:mux_type] unless stub[:mux_type].nil?
        data
      end
    end

    # Structure Stubber for AudioArtifactsConfiguration
    class AudioArtifactsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AudioArtifactsConfiguration')
        visited = visited + ['AudioArtifactsConfiguration']
        {
          mux_type: 'mux_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioArtifactsConfiguration.new
        data = {}
        data['MuxType'] = stub[:mux_type] unless stub[:mux_type].nil?
        data
      end
    end

    # Structure Stubber for SourceConfiguration
    class SourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SourceConfiguration')
        visited = visited + ['SourceConfiguration']
        {
          selected_video_streams: Stubs::SelectedVideoStreams.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceConfiguration.new
        data = {}
        data['SelectedVideoStreams'] = Stubs::SelectedVideoStreams.stub(stub[:selected_video_streams]) unless stub[:selected_video_streams].nil?
        data
      end
    end

    # Structure Stubber for SelectedVideoStreams
    class SelectedVideoStreams
      def self.default(visited=[])
        return nil if visited.include?('SelectedVideoStreams')
        visited = visited + ['SelectedVideoStreams']
        {
          attendee_ids: Stubs::AttendeeIdList.default(visited),
          external_user_ids: Stubs::ExternalUserIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SelectedVideoStreams.new
        data = {}
        data['AttendeeIds'] = Stubs::AttendeeIdList.stub(stub[:attendee_ids]) unless stub[:attendee_ids].nil?
        data['ExternalUserIds'] = Stubs::ExternalUserIdList.stub(stub[:external_user_ids]) unless stub[:external_user_ids].nil?
        data
      end
    end

    # List Stubber for ExternalUserIdList
    class ExternalUserIdList
      def self.default(visited=[])
        return nil if visited.include?('ExternalUserIdList')
        visited = visited + ['ExternalUserIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for AttendeeIdList
    class AttendeeIdList
      def self.default(visited=[])
        return nil if visited.include?('AttendeeIdList')
        visited = visited + ['AttendeeIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DeleteMediaCapturePipeline
    class DeleteMediaCapturePipeline
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetMediaCapturePipeline
    class GetMediaCapturePipeline
      def self.default(visited=[])
        {
          media_capture_pipeline: Stubs::MediaCapturePipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MediaCapturePipeline'] = Stubs::MediaCapturePipeline.stub(stub[:media_capture_pipeline]) unless stub[:media_capture_pipeline].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListMediaCapturePipelines
    class ListMediaCapturePipelines
      def self.default(visited=[])
        {
          media_capture_pipelines: Stubs::MediaCapturePipelineSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MediaCapturePipelines'] = Stubs::MediaCapturePipelineSummaryList.stub(stub[:media_capture_pipelines]) unless stub[:media_capture_pipelines].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MediaCapturePipelineSummaryList
    class MediaCapturePipelineSummaryList
      def self.default(visited=[])
        return nil if visited.include?('MediaCapturePipelineSummaryList')
        visited = visited + ['MediaCapturePipelineSummaryList']
        [
          Stubs::MediaCapturePipelineSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MediaCapturePipelineSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MediaCapturePipelineSummary
    class MediaCapturePipelineSummary
      def self.default(visited=[])
        return nil if visited.include?('MediaCapturePipelineSummary')
        visited = visited + ['MediaCapturePipelineSummary']
        {
          media_pipeline_id: 'media_pipeline_id',
          media_pipeline_arn: 'media_pipeline_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaCapturePipelineSummary.new
        data = {}
        data['MediaPipelineId'] = stub[:media_pipeline_id] unless stub[:media_pipeline_id].nil?
        data['MediaPipelineArn'] = stub[:media_pipeline_arn] unless stub[:media_pipeline_arn].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end
  end
end
