# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Ivs
  module Builders

    # Operation Builder for BatchGetChannel
    class BatchGetChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/BatchGetChannel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arns'] = Builders::ChannelArnList.build(input[:arns]) unless input[:arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ChannelArnList
    class ChannelArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetStreamKey
    class BatchGetStreamKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/BatchGetStreamKey')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arns'] = Builders::StreamKeyArnList.build(input[:arns]) unless input[:arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StreamKeyArnList
    class StreamKeyArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateChannel
    class CreateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateChannel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['latencyMode'] = input[:latency_mode] unless input[:latency_mode].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['authorized'] = input[:authorized] unless input[:authorized].nil?
        data['recordingConfigurationArn'] = input[:recording_configuration_arn] unless input[:recording_configuration_arn].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRecordingConfiguration
    class CreateRecordingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateRecordingConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['destinationConfiguration'] = Builders::DestinationConfiguration.build(input[:destination_configuration]) unless input[:destination_configuration].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['thumbnailConfiguration'] = Builders::ThumbnailConfiguration.build(input[:thumbnail_configuration]) unless input[:thumbnail_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ThumbnailConfiguration
    class ThumbnailConfiguration
      def self.build(input)
        data = {}
        data['recordingMode'] = input[:recording_mode] unless input[:recording_mode].nil?
        data['targetIntervalSeconds'] = input[:target_interval_seconds] unless input[:target_interval_seconds].nil?
        data
      end
    end

    # Structure Builder for DestinationConfiguration
    class DestinationConfiguration
      def self.build(input)
        data = {}
        data['s3'] = Builders::S3DestinationConfiguration.build(input[:s3]) unless input[:s3].nil?
        data
      end
    end

    # Structure Builder for S3DestinationConfiguration
    class S3DestinationConfiguration
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data
      end
    end

    # Operation Builder for CreateStreamKey
    class CreateStreamKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateStreamKey')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelArn'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteChannel
    class DeleteChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteChannel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePlaybackKeyPair
    class DeletePlaybackKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeletePlaybackKeyPair')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRecordingConfiguration
    class DeleteRecordingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteRecordingConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStreamKey
    class DeleteStreamKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteStreamKey')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetChannel
    class GetChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetChannel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPlaybackKeyPair
    class GetPlaybackKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetPlaybackKeyPair')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRecordingConfiguration
    class GetRecordingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetRecordingConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetStream
    class GetStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetStream')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelArn'] = input[:channel_arn] unless input[:channel_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetStreamKey
    class GetStreamKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetStreamKey')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetStreamSession
    class GetStreamSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetStreamSession')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelArn'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['streamId'] = input[:stream_id] unless input[:stream_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportPlaybackKeyPair
    class ImportPlaybackKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ImportPlaybackKeyPair')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['publicKeyMaterial'] = input[:public_key_material] unless input[:public_key_material].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListChannels
    class ListChannels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListChannels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filterByName'] = input[:filter_by_name] unless input[:filter_by_name].nil?
        data['filterByRecordingConfigurationArn'] = input[:filter_by_recording_configuration_arn] unless input[:filter_by_recording_configuration_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPlaybackKeyPairs
    class ListPlaybackKeyPairs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListPlaybackKeyPairs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRecordingConfigurations
    class ListRecordingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListRecordingConfigurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStreamKeys
    class ListStreamKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListStreamKeys')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelArn'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStreamSessions
    class ListStreamSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListStreamSessions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelArn'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStreams
    class ListStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListStreams')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filterBy'] = Builders::StreamFilters.build(input[:filter_by]) unless input[:filter_by].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StreamFilters
    class StreamFilters
      def self.build(input)
        data = {}
        data['health'] = input[:health] unless input[:health].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutMetadata
    class PutMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/PutMetadata')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelArn'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['metadata'] = input[:metadata] unless input[:metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopStream
    class StopStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/StopStream')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelArn'] = input[:channel_arn] unless input[:channel_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
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

    # Operation Builder for UpdateChannel
    class UpdateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateChannel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['latencyMode'] = input[:latency_mode] unless input[:latency_mode].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['authorized'] = input[:authorized] unless input[:authorized].nil?
        data['recordingConfigurationArn'] = input[:recording_configuration_arn] unless input[:recording_configuration_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
