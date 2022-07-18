# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivs
  module Parsers

    # Operation Parser for BatchGetChannel
    class BatchGetChannel
      def self.parse(http_resp)
        data = Types::BatchGetChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::Channels.parse(map['channels']) unless map['channels'].nil?)
        data.errors = (Parsers::BatchErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchError
      def self.parse(map)
        data = Types::BatchError.new
        data.arn = map['arn']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    class Channels
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Channel.parse(value) unless value.nil?
        end
        data
      end
    end

    class Channel
      def self.parse(map)
        data = Types::Channel.new
        data.arn = map['arn']
        data.name = map['name']
        data.latency_mode = map['latencyMode']
        data.type = map['type']
        data.recording_configuration_arn = map['recordingConfigurationArn']
        data.ingest_endpoint = map['ingestEndpoint']
        data.playback_url = map['playbackUrl']
        data.authorized = map['authorized']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for BatchGetStreamKey
    class BatchGetStreamKey
      def self.parse(http_resp)
        data = Types::BatchGetStreamKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_keys = (Parsers::StreamKeys.parse(map['streamKeys']) unless map['streamKeys'].nil?)
        data.errors = (Parsers::BatchErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class StreamKeys
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamKey.parse(value) unless value.nil?
        end
        data
      end
    end

    class StreamKey
      def self.parse(map)
        data = Types::StreamKey.new
        data.arn = map['arn']
        data.value = map['value']
        data.channel_arn = map['channelArn']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for CreateChannel
    class CreateChannel
      def self.parse(http_resp)
        data = Types::CreateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::Channel.parse(map['channel']) unless map['channel'].nil?)
        data.stream_key = (Parsers::StreamKey.parse(map['streamKey']) unless map['streamKey'].nil?)
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
      end
    end

    # Error Parser for PendingVerification
    class PendingVerification
      def self.parse(http_resp)
        data = Types::PendingVerification.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
      end
    end

    # Operation Parser for CreateRecordingConfiguration
    class CreateRecordingConfiguration
      def self.parse(http_resp)
        data = Types::CreateRecordingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recording_configuration = (Parsers::RecordingConfiguration.parse(map['recordingConfiguration']) unless map['recordingConfiguration'].nil?)
        data
      end
    end

    class RecordingConfiguration
      def self.parse(map)
        data = Types::RecordingConfiguration.new
        data.arn = map['arn']
        data.name = map['name']
        data.destination_configuration = (Parsers::DestinationConfiguration.parse(map['destinationConfiguration']) unless map['destinationConfiguration'].nil?)
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.thumbnail_configuration = (Parsers::ThumbnailConfiguration.parse(map['thumbnailConfiguration']) unless map['thumbnailConfiguration'].nil?)
        return data
      end
    end

    class ThumbnailConfiguration
      def self.parse(map)
        data = Types::ThumbnailConfiguration.new
        data.recording_mode = map['recordingMode']
        data.target_interval_seconds = map['targetIntervalSeconds']
        return data
      end
    end

    class DestinationConfiguration
      def self.parse(map)
        data = Types::DestinationConfiguration.new
        data.s3 = (Parsers::S3DestinationConfiguration.parse(map['s3']) unless map['s3'].nil?)
        return data
      end
    end

    class S3DestinationConfiguration
      def self.parse(map)
        data = Types::S3DestinationConfiguration.new
        data.bucket_name = map['bucketName']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
      end
    end

    # Operation Parser for CreateStreamKey
    class CreateStreamKey
      def self.parse(http_resp)
        data = Types::CreateStreamKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_key = (Parsers::StreamKey.parse(map['streamKey']) unless map['streamKey'].nil?)
        data
      end
    end

    # Operation Parser for DeleteChannel
    class DeleteChannel
      def self.parse(http_resp)
        data = Types::DeleteChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePlaybackKeyPair
    class DeletePlaybackKeyPair
      def self.parse(http_resp)
        data = Types::DeletePlaybackKeyPairOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRecordingConfiguration
    class DeleteRecordingConfiguration
      def self.parse(http_resp)
        data = Types::DeleteRecordingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteStreamKey
    class DeleteStreamKey
      def self.parse(http_resp)
        data = Types::DeleteStreamKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetChannel
    class GetChannel
      def self.parse(http_resp)
        data = Types::GetChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::Channel.parse(map['channel']) unless map['channel'].nil?)
        data
      end
    end

    # Operation Parser for GetPlaybackKeyPair
    class GetPlaybackKeyPair
      def self.parse(http_resp)
        data = Types::GetPlaybackKeyPairOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.key_pair = (Parsers::PlaybackKeyPair.parse(map['keyPair']) unless map['keyPair'].nil?)
        data
      end
    end

    class PlaybackKeyPair
      def self.parse(map)
        data = Types::PlaybackKeyPair.new
        data.arn = map['arn']
        data.name = map['name']
        data.fingerprint = map['fingerprint']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for GetRecordingConfiguration
    class GetRecordingConfiguration
      def self.parse(http_resp)
        data = Types::GetRecordingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recording_configuration = (Parsers::RecordingConfiguration.parse(map['recordingConfiguration']) unless map['recordingConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for GetStream
    class GetStream
      def self.parse(http_resp)
        data = Types::GetStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream = (Parsers::Stream.parse(map['stream']) unless map['stream'].nil?)
        data
      end
    end

    class Stream
      def self.parse(map)
        data = Types::Stream.new
        data.channel_arn = map['channelArn']
        data.stream_id = map['streamId']
        data.playback_url = map['playbackUrl']
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.state = map['state']
        data.health = map['health']
        data.viewer_count = map['viewerCount']
        return data
      end
    end

    # Error Parser for ChannelNotBroadcasting
    class ChannelNotBroadcasting
      def self.parse(http_resp)
        data = Types::ChannelNotBroadcasting.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
      end
    end

    # Operation Parser for GetStreamKey
    class GetStreamKey
      def self.parse(http_resp)
        data = Types::GetStreamKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_key = (Parsers::StreamKey.parse(map['streamKey']) unless map['streamKey'].nil?)
        data
      end
    end

    # Operation Parser for GetStreamSession
    class GetStreamSession
      def self.parse(http_resp)
        data = Types::GetStreamSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_session = (Parsers::StreamSession.parse(map['streamSession']) unless map['streamSession'].nil?)
        data
      end
    end

    class StreamSession
      def self.parse(map)
        data = Types::StreamSession.new
        data.stream_id = map['streamId']
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        data.channel = (Parsers::Channel.parse(map['channel']) unless map['channel'].nil?)
        data.ingest_configuration = (Parsers::IngestConfiguration.parse(map['ingestConfiguration']) unless map['ingestConfiguration'].nil?)
        data.recording_configuration = (Parsers::RecordingConfiguration.parse(map['recordingConfiguration']) unless map['recordingConfiguration'].nil?)
        data.truncated_events = (Parsers::StreamEvents.parse(map['truncatedEvents']) unless map['truncatedEvents'].nil?)
        return data
      end
    end

    class StreamEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class StreamEvent
      def self.parse(map)
        data = Types::StreamEvent.new
        data.name = map['name']
        data.type = map['type']
        data.event_time = Time.parse(map['eventTime']) if map['eventTime']
        return data
      end
    end

    class IngestConfiguration
      def self.parse(map)
        data = Types::IngestConfiguration.new
        data.video = (Parsers::VideoConfiguration.parse(map['video']) unless map['video'].nil?)
        data.audio = (Parsers::AudioConfiguration.parse(map['audio']) unless map['audio'].nil?)
        return data
      end
    end

    class AudioConfiguration
      def self.parse(map)
        data = Types::AudioConfiguration.new
        data.codec = map['codec']
        data.target_bitrate = map['targetBitrate']
        data.sample_rate = map['sampleRate']
        data.channels = map['channels']
        return data
      end
    end

    class VideoConfiguration
      def self.parse(map)
        data = Types::VideoConfiguration.new
        data.avc_profile = map['avcProfile']
        data.avc_level = map['avcLevel']
        data.codec = map['codec']
        data.encoder = map['encoder']
        data.target_bitrate = map['targetBitrate']
        data.target_framerate = map['targetFramerate']
        data.video_height = map['videoHeight']
        data.video_width = map['videoWidth']
        return data
      end
    end

    # Operation Parser for ImportPlaybackKeyPair
    class ImportPlaybackKeyPair
      def self.parse(http_resp)
        data = Types::ImportPlaybackKeyPairOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.key_pair = (Parsers::PlaybackKeyPair.parse(map['keyPair']) unless map['keyPair'].nil?)
        data
      end
    end

    # Operation Parser for ListChannels
    class ListChannels
      def self.parse(http_resp)
        data = Types::ListChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::ChannelList.parse(map['channels']) unless map['channels'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ChannelList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelSummary
      def self.parse(map)
        data = Types::ChannelSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.latency_mode = map['latencyMode']
        data.authorized = map['authorized']
        data.recording_configuration_arn = map['recordingConfigurationArn']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListPlaybackKeyPairs
    class ListPlaybackKeyPairs
      def self.parse(http_resp)
        data = Types::ListPlaybackKeyPairsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.key_pairs = (Parsers::PlaybackKeyPairList.parse(map['keyPairs']) unless map['keyPairs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PlaybackKeyPairList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PlaybackKeyPairSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PlaybackKeyPairSummary
      def self.parse(map)
        data = Types::PlaybackKeyPairSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListRecordingConfigurations
    class ListRecordingConfigurations
      def self.parse(http_resp)
        data = Types::ListRecordingConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recording_configurations = (Parsers::RecordingConfigurationList.parse(map['recordingConfigurations']) unless map['recordingConfigurations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RecordingConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecordingConfigurationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecordingConfigurationSummary
      def self.parse(map)
        data = Types::RecordingConfigurationSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.destination_configuration = (Parsers::DestinationConfiguration.parse(map['destinationConfiguration']) unless map['destinationConfiguration'].nil?)
        data.state = map['state']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListStreamKeys
    class ListStreamKeys
      def self.parse(http_resp)
        data = Types::ListStreamKeysOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_keys = (Parsers::StreamKeyList.parse(map['streamKeys']) unless map['streamKeys'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class StreamKeyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamKeySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class StreamKeySummary
      def self.parse(map)
        data = Types::StreamKeySummary.new
        data.arn = map['arn']
        data.channel_arn = map['channelArn']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListStreamSessions
    class ListStreamSessions
      def self.parse(http_resp)
        data = Types::ListStreamSessionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_sessions = (Parsers::StreamSessionList.parse(map['streamSessions']) unless map['streamSessions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class StreamSessionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamSessionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class StreamSessionSummary
      def self.parse(map)
        data = Types::StreamSessionSummary.new
        data.stream_id = map['streamId']
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        data.has_error_event = map['hasErrorEvent']
        return data
      end
    end

    # Operation Parser for ListStreams
    class ListStreams
      def self.parse(http_resp)
        data = Types::ListStreamsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streams = (Parsers::StreamList.parse(map['streams']) unless map['streams'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class StreamList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class StreamSummary
      def self.parse(map)
        data = Types::StreamSummary.new
        data.channel_arn = map['channelArn']
        data.stream_id = map['streamId']
        data.state = map['state']
        data.health = map['health']
        data.viewer_count = map['viewerCount']
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for PutMetadata
    class PutMetadata
      def self.parse(http_resp)
        data = Types::PutMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
      end
    end

    # Operation Parser for StopStream
    class StopStream
      def self.parse(http_resp)
        data = Types::StopStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for StreamUnavailable
    class StreamUnavailable
      def self.parse(http_resp)
        data = Types::StreamUnavailable.new
        map = Hearth::JSON.load(http_resp.body)
        data.exception_message = map['exceptionMessage']
        data
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

    # Operation Parser for UpdateChannel
    class UpdateChannel
      def self.parse(http_resp)
        data = Types::UpdateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::Channel.parse(map['channel']) unless map['channel'].nil?)
        data
      end
    end
  end
end
