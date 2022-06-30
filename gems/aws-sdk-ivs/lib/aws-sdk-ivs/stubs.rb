# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivs
  module Stubs

    # Operation Stubber for BatchGetChannel
    class BatchGetChannel
      def self.default(visited=[])
        {
          channels: Stubs::Channels.default(visited),
          errors: Stubs::BatchErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channels'] = Stubs::Channels.stub(stub[:channels]) unless stub[:channels].nil?
        data['errors'] = Stubs::BatchErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchErrors
    class BatchErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchErrors')
        visited = visited + ['BatchErrors']
        [
          Stubs::BatchError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchError
    class BatchError
      def self.default(visited=[])
        return nil if visited.include?('BatchError')
        visited = visited + ['BatchError']
        {
          arn: 'arn',
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchError.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for Channels
    class Channels
      def self.default(visited=[])
        return nil if visited.include?('Channels')
        visited = visited + ['Channels']
        [
          Stubs::Channel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Channel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Channel
    class Channel
      def self.default(visited=[])
        return nil if visited.include?('Channel')
        visited = visited + ['Channel']
        {
          arn: 'arn',
          name: 'name',
          latency_mode: 'latency_mode',
          type: 'type',
          recording_configuration_arn: 'recording_configuration_arn',
          ingest_endpoint: 'ingest_endpoint',
          playback_url: 'playback_url',
          authorized: false,
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Channel.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['latencyMode'] = stub[:latency_mode] unless stub[:latency_mode].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['recordingConfigurationArn'] = stub[:recording_configuration_arn] unless stub[:recording_configuration_arn].nil?
        data['ingestEndpoint'] = stub[:ingest_endpoint] unless stub[:ingest_endpoint].nil?
        data['playbackUrl'] = stub[:playback_url] unless stub[:playback_url].nil?
        data['authorized'] = stub[:authorized] unless stub[:authorized].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for BatchGetStreamKey
    class BatchGetStreamKey
      def self.default(visited=[])
        {
          stream_keys: Stubs::StreamKeys.default(visited),
          errors: Stubs::BatchErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamKeys'] = Stubs::StreamKeys.stub(stub[:stream_keys]) unless stub[:stream_keys].nil?
        data['errors'] = Stubs::BatchErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StreamKeys
    class StreamKeys
      def self.default(visited=[])
        return nil if visited.include?('StreamKeys')
        visited = visited + ['StreamKeys']
        [
          Stubs::StreamKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StreamKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StreamKey
    class StreamKey
      def self.default(visited=[])
        return nil if visited.include?('StreamKey')
        visited = visited + ['StreamKey']
        {
          arn: 'arn',
          value: 'value',
          channel_arn: 'channel_arn',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamKey.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['channelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for CreateChannel
    class CreateChannel
      def self.default(visited=[])
        {
          channel: Stubs::Channel.default(visited),
          stream_key: Stubs::StreamKey.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channel'] = Stubs::Channel.stub(stub[:channel]) unless stub[:channel].nil?
        data['streamKey'] = Stubs::StreamKey.stub(stub[:stream_key]) unless stub[:stream_key].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRecordingConfiguration
    class CreateRecordingConfiguration
      def self.default(visited=[])
        {
          recording_configuration: Stubs::RecordingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recordingConfiguration'] = Stubs::RecordingConfiguration.stub(stub[:recording_configuration]) unless stub[:recording_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RecordingConfiguration
    class RecordingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RecordingConfiguration')
        visited = visited + ['RecordingConfiguration']
        {
          arn: 'arn',
          name: 'name',
          destination_configuration: Stubs::DestinationConfiguration.default(visited),
          state: 'state',
          tags: Stubs::Tags.default(visited),
          thumbnail_configuration: Stubs::ThumbnailConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordingConfiguration.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['destinationConfiguration'] = Stubs::DestinationConfiguration.stub(stub[:destination_configuration]) unless stub[:destination_configuration].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['thumbnailConfiguration'] = Stubs::ThumbnailConfiguration.stub(stub[:thumbnail_configuration]) unless stub[:thumbnail_configuration].nil?
        data
      end
    end

    # Structure Stubber for ThumbnailConfiguration
    class ThumbnailConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ThumbnailConfiguration')
        visited = visited + ['ThumbnailConfiguration']
        {
          recording_mode: 'recording_mode',
          target_interval_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ThumbnailConfiguration.new
        data = {}
        data['recordingMode'] = stub[:recording_mode] unless stub[:recording_mode].nil?
        data['targetIntervalSeconds'] = stub[:target_interval_seconds] unless stub[:target_interval_seconds].nil?
        data
      end
    end

    # Structure Stubber for DestinationConfiguration
    class DestinationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DestinationConfiguration')
        visited = visited + ['DestinationConfiguration']
        {
          s3: Stubs::S3DestinationConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationConfiguration.new
        data = {}
        data['s3'] = Stubs::S3DestinationConfiguration.stub(stub[:s3]) unless stub[:s3].nil?
        data
      end
    end

    # Structure Stubber for S3DestinationConfiguration
    class S3DestinationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3DestinationConfiguration')
        visited = visited + ['S3DestinationConfiguration']
        {
          bucket_name: 'bucket_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DestinationConfiguration.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data
      end
    end

    # Operation Stubber for CreateStreamKey
    class CreateStreamKey
      def self.default(visited=[])
        {
          stream_key: Stubs::StreamKey.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamKey'] = Stubs::StreamKey.stub(stub[:stream_key]) unless stub[:stream_key].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteChannel
    class DeleteChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeletePlaybackKeyPair
    class DeletePlaybackKeyPair
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRecordingConfiguration
    class DeleteRecordingConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStreamKey
    class DeleteStreamKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetChannel
    class GetChannel
      def self.default(visited=[])
        {
          channel: Stubs::Channel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channel'] = Stubs::Channel.stub(stub[:channel]) unless stub[:channel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetPlaybackKeyPair
    class GetPlaybackKeyPair
      def self.default(visited=[])
        {
          key_pair: Stubs::PlaybackKeyPair.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['keyPair'] = Stubs::PlaybackKeyPair.stub(stub[:key_pair]) unless stub[:key_pair].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PlaybackKeyPair
    class PlaybackKeyPair
      def self.default(visited=[])
        return nil if visited.include?('PlaybackKeyPair')
        visited = visited + ['PlaybackKeyPair']
        {
          arn: 'arn',
          name: 'name',
          fingerprint: 'fingerprint',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PlaybackKeyPair.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['fingerprint'] = stub[:fingerprint] unless stub[:fingerprint].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for GetRecordingConfiguration
    class GetRecordingConfiguration
      def self.default(visited=[])
        {
          recording_configuration: Stubs::RecordingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recordingConfiguration'] = Stubs::RecordingConfiguration.stub(stub[:recording_configuration]) unless stub[:recording_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStream
    class GetStream
      def self.default(visited=[])
        {
          stream: Stubs::Stream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['stream'] = Stubs::Stream.stub(stub[:stream]) unless stub[:stream].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Stream
    class Stream
      def self.default(visited=[])
        return nil if visited.include?('Stream')
        visited = visited + ['Stream']
        {
          channel_arn: 'channel_arn',
          stream_id: 'stream_id',
          playback_url: 'playback_url',
          start_time: Time.now,
          state: 'state',
          health: 'health',
          viewer_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Stream.new
        data = {}
        data['channelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['playbackUrl'] = stub[:playback_url] unless stub[:playback_url].nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['health'] = stub[:health] unless stub[:health].nil?
        data['viewerCount'] = stub[:viewer_count] unless stub[:viewer_count].nil?
        data
      end
    end

    # Operation Stubber for GetStreamKey
    class GetStreamKey
      def self.default(visited=[])
        {
          stream_key: Stubs::StreamKey.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamKey'] = Stubs::StreamKey.stub(stub[:stream_key]) unless stub[:stream_key].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStreamSession
    class GetStreamSession
      def self.default(visited=[])
        {
          stream_session: Stubs::StreamSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamSession'] = Stubs::StreamSession.stub(stub[:stream_session]) unless stub[:stream_session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StreamSession
    class StreamSession
      def self.default(visited=[])
        return nil if visited.include?('StreamSession')
        visited = visited + ['StreamSession']
        {
          stream_id: 'stream_id',
          start_time: Time.now,
          end_time: Time.now,
          channel: Stubs::Channel.default(visited),
          ingest_configuration: Stubs::IngestConfiguration.default(visited),
          recording_configuration: Stubs::RecordingConfiguration.default(visited),
          truncated_events: Stubs::StreamEvents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamSession.new
        data = {}
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data['channel'] = Stubs::Channel.stub(stub[:channel]) unless stub[:channel].nil?
        data['ingestConfiguration'] = Stubs::IngestConfiguration.stub(stub[:ingest_configuration]) unless stub[:ingest_configuration].nil?
        data['recordingConfiguration'] = Stubs::RecordingConfiguration.stub(stub[:recording_configuration]) unless stub[:recording_configuration].nil?
        data['truncatedEvents'] = Stubs::StreamEvents.stub(stub[:truncated_events]) unless stub[:truncated_events].nil?
        data
      end
    end

    # List Stubber for StreamEvents
    class StreamEvents
      def self.default(visited=[])
        return nil if visited.include?('StreamEvents')
        visited = visited + ['StreamEvents']
        [
          Stubs::StreamEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StreamEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StreamEvent
    class StreamEvent
      def self.default(visited=[])
        return nil if visited.include?('StreamEvent')
        visited = visited + ['StreamEvent']
        {
          name: 'name',
          type: 'type',
          event_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamEvent.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['eventTime'] = Hearth::TimeHelper.to_date_time(stub[:event_time]) unless stub[:event_time].nil?
        data
      end
    end

    # Structure Stubber for IngestConfiguration
    class IngestConfiguration
      def self.default(visited=[])
        return nil if visited.include?('IngestConfiguration')
        visited = visited + ['IngestConfiguration']
        {
          video: Stubs::VideoConfiguration.default(visited),
          audio: Stubs::AudioConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IngestConfiguration.new
        data = {}
        data['video'] = Stubs::VideoConfiguration.stub(stub[:video]) unless stub[:video].nil?
        data['audio'] = Stubs::AudioConfiguration.stub(stub[:audio]) unless stub[:audio].nil?
        data
      end
    end

    # Structure Stubber for AudioConfiguration
    class AudioConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AudioConfiguration')
        visited = visited + ['AudioConfiguration']
        {
          codec: 'codec',
          target_bitrate: 1,
          sample_rate: 1,
          channels: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioConfiguration.new
        data = {}
        data['codec'] = stub[:codec] unless stub[:codec].nil?
        data['targetBitrate'] = stub[:target_bitrate] unless stub[:target_bitrate].nil?
        data['sampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data['channels'] = stub[:channels] unless stub[:channels].nil?
        data
      end
    end

    # Structure Stubber for VideoConfiguration
    class VideoConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VideoConfiguration')
        visited = visited + ['VideoConfiguration']
        {
          avc_profile: 'avc_profile',
          avc_level: 'avc_level',
          codec: 'codec',
          encoder: 'encoder',
          target_bitrate: 1,
          target_framerate: 1,
          video_height: 1,
          video_width: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoConfiguration.new
        data = {}
        data['avcProfile'] = stub[:avc_profile] unless stub[:avc_profile].nil?
        data['avcLevel'] = stub[:avc_level] unless stub[:avc_level].nil?
        data['codec'] = stub[:codec] unless stub[:codec].nil?
        data['encoder'] = stub[:encoder] unless stub[:encoder].nil?
        data['targetBitrate'] = stub[:target_bitrate] unless stub[:target_bitrate].nil?
        data['targetFramerate'] = stub[:target_framerate] unless stub[:target_framerate].nil?
        data['videoHeight'] = stub[:video_height] unless stub[:video_height].nil?
        data['videoWidth'] = stub[:video_width] unless stub[:video_width].nil?
        data
      end
    end

    # Operation Stubber for ImportPlaybackKeyPair
    class ImportPlaybackKeyPair
      def self.default(visited=[])
        {
          key_pair: Stubs::PlaybackKeyPair.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['keyPair'] = Stubs::PlaybackKeyPair.stub(stub[:key_pair]) unless stub[:key_pair].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListChannels
    class ListChannels
      def self.default(visited=[])
        {
          channels: Stubs::ChannelList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channels'] = Stubs::ChannelList.stub(stub[:channels]) unless stub[:channels].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelList
    class ChannelList
      def self.default(visited=[])
        return nil if visited.include?('ChannelList')
        visited = visited + ['ChannelList']
        [
          Stubs::ChannelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelSummary
    class ChannelSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelSummary')
        visited = visited + ['ChannelSummary']
        {
          arn: 'arn',
          name: 'name',
          latency_mode: 'latency_mode',
          authorized: false,
          recording_configuration_arn: 'recording_configuration_arn',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['latencyMode'] = stub[:latency_mode] unless stub[:latency_mode].nil?
        data['authorized'] = stub[:authorized] unless stub[:authorized].nil?
        data['recordingConfigurationArn'] = stub[:recording_configuration_arn] unless stub[:recording_configuration_arn].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListPlaybackKeyPairs
    class ListPlaybackKeyPairs
      def self.default(visited=[])
        {
          key_pairs: Stubs::PlaybackKeyPairList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['keyPairs'] = Stubs::PlaybackKeyPairList.stub(stub[:key_pairs]) unless stub[:key_pairs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PlaybackKeyPairList
    class PlaybackKeyPairList
      def self.default(visited=[])
        return nil if visited.include?('PlaybackKeyPairList')
        visited = visited + ['PlaybackKeyPairList']
        [
          Stubs::PlaybackKeyPairSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PlaybackKeyPairSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlaybackKeyPairSummary
    class PlaybackKeyPairSummary
      def self.default(visited=[])
        return nil if visited.include?('PlaybackKeyPairSummary')
        visited = visited + ['PlaybackKeyPairSummary']
        {
          arn: 'arn',
          name: 'name',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PlaybackKeyPairSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListRecordingConfigurations
    class ListRecordingConfigurations
      def self.default(visited=[])
        {
          recording_configurations: Stubs::RecordingConfigurationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recordingConfigurations'] = Stubs::RecordingConfigurationList.stub(stub[:recording_configurations]) unless stub[:recording_configurations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecordingConfigurationList
    class RecordingConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('RecordingConfigurationList')
        visited = visited + ['RecordingConfigurationList']
        [
          Stubs::RecordingConfigurationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecordingConfigurationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecordingConfigurationSummary
    class RecordingConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('RecordingConfigurationSummary')
        visited = visited + ['RecordingConfigurationSummary']
        {
          arn: 'arn',
          name: 'name',
          destination_configuration: Stubs::DestinationConfiguration.default(visited),
          state: 'state',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordingConfigurationSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['destinationConfiguration'] = Stubs::DestinationConfiguration.stub(stub[:destination_configuration]) unless stub[:destination_configuration].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListStreamKeys
    class ListStreamKeys
      def self.default(visited=[])
        {
          stream_keys: Stubs::StreamKeyList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamKeys'] = Stubs::StreamKeyList.stub(stub[:stream_keys]) unless stub[:stream_keys].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StreamKeyList
    class StreamKeyList
      def self.default(visited=[])
        return nil if visited.include?('StreamKeyList')
        visited = visited + ['StreamKeyList']
        [
          Stubs::StreamKeySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StreamKeySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StreamKeySummary
    class StreamKeySummary
      def self.default(visited=[])
        return nil if visited.include?('StreamKeySummary')
        visited = visited + ['StreamKeySummary']
        {
          arn: 'arn',
          channel_arn: 'channel_arn',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamKeySummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['channelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListStreamSessions
    class ListStreamSessions
      def self.default(visited=[])
        {
          stream_sessions: Stubs::StreamSessionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamSessions'] = Stubs::StreamSessionList.stub(stub[:stream_sessions]) unless stub[:stream_sessions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StreamSessionList
    class StreamSessionList
      def self.default(visited=[])
        return nil if visited.include?('StreamSessionList')
        visited = visited + ['StreamSessionList']
        [
          Stubs::StreamSessionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StreamSessionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StreamSessionSummary
    class StreamSessionSummary
      def self.default(visited=[])
        return nil if visited.include?('StreamSessionSummary')
        visited = visited + ['StreamSessionSummary']
        {
          stream_id: 'stream_id',
          start_time: Time.now,
          end_time: Time.now,
          has_error_event: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamSessionSummary.new
        data = {}
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data['hasErrorEvent'] = stub[:has_error_event] unless stub[:has_error_event].nil?
        data
      end
    end

    # Operation Stubber for ListStreams
    class ListStreams
      def self.default(visited=[])
        {
          streams: Stubs::StreamList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streams'] = Stubs::StreamList.stub(stub[:streams]) unless stub[:streams].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StreamList
    class StreamList
      def self.default(visited=[])
        return nil if visited.include?('StreamList')
        visited = visited + ['StreamList']
        [
          Stubs::StreamSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StreamSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StreamSummary
    class StreamSummary
      def self.default(visited=[])
        return nil if visited.include?('StreamSummary')
        visited = visited + ['StreamSummary']
        {
          channel_arn: 'channel_arn',
          stream_id: 'stream_id',
          state: 'state',
          health: 'health',
          viewer_count: 1,
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamSummary.new
        data = {}
        data['channelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['health'] = stub[:health] unless stub[:health].nil?
        data['viewerCount'] = stub[:viewer_count] unless stub[:viewer_count].nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutMetadata
    class PutMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopStream
    class StopStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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
        http_resp.status = 200
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateChannel
    class UpdateChannel
      def self.default(visited=[])
        {
          channel: Stubs::Channel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['channel'] = Stubs::Channel.stub(stub[:channel]) unless stub[:channel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
