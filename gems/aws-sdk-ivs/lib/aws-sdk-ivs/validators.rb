# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivs
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
      end
    end

    class AudioConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioConfiguration, context: context)
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Hearth::Validator.validate!(input[:target_bitrate], ::Integer, context: "#{context}[:target_bitrate]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:channels], ::Integer, context: "#{context}[:channels]")
      end
    end

    class BatchError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchError, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetChannelInput, context: context)
        Validators::ChannelArnList.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
      end
    end

    class BatchGetChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetChannelOutput, context: context)
        Validators::Channels.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
        Validators::BatchErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchGetStreamKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetStreamKeyInput, context: context)
        Validators::StreamKeyArnList.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
      end
    end

    class BatchGetStreamKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetStreamKeyOutput, context: context)
        Validators::StreamKeys.validate!(input[:stream_keys], context: "#{context}[:stream_keys]") unless input[:stream_keys].nil?
        Validators::BatchErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class Channel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Channel, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:latency_mode], ::String, context: "#{context}[:latency_mode]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:recording_configuration_arn], ::String, context: "#{context}[:recording_configuration_arn]")
        Hearth::Validator.validate!(input[:ingest_endpoint], ::String, context: "#{context}[:ingest_endpoint]")
        Hearth::Validator.validate!(input[:playback_url], ::String, context: "#{context}[:playback_url]")
        Hearth::Validator.validate!(input[:authorized], ::TrueClass, ::FalseClass, context: "#{context}[:authorized]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ChannelArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ChannelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ChannelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelNotBroadcasting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelNotBroadcasting, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
      end
    end

    class ChannelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:latency_mode], ::String, context: "#{context}[:latency_mode]")
        Hearth::Validator.validate!(input[:authorized], ::TrueClass, ::FalseClass, context: "#{context}[:authorized]")
        Hearth::Validator.validate!(input[:recording_configuration_arn], ::String, context: "#{context}[:recording_configuration_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Channels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Channel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
      end
    end

    class CreateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:latency_mode], ::String, context: "#{context}[:latency_mode]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:authorized], ::TrueClass, ::FalseClass, context: "#{context}[:authorized]")
        Hearth::Validator.validate!(input[:recording_configuration_arn], ::String, context: "#{context}[:recording_configuration_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelOutput, context: context)
        Validators::Channel.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
        Validators::StreamKey.validate!(input[:stream_key], context: "#{context}[:stream_key]") unless input[:stream_key].nil?
      end
    end

    class CreateRecordingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecordingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DestinationConfiguration.validate!(input[:destination_configuration], context: "#{context}[:destination_configuration]") unless input[:destination_configuration].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ThumbnailConfiguration.validate!(input[:thumbnail_configuration], context: "#{context}[:thumbnail_configuration]") unless input[:thumbnail_configuration].nil?
      end
    end

    class CreateRecordingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecordingConfigurationOutput, context: context)
        Validators::RecordingConfiguration.validate!(input[:recording_configuration], context: "#{context}[:recording_configuration]") unless input[:recording_configuration].nil?
      end
    end

    class CreateStreamKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamKeyInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStreamKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamKeyOutput, context: context)
        Validators::StreamKey.validate!(input[:stream_key], context: "#{context}[:stream_key]") unless input[:stream_key].nil?
      end
    end

    class DeleteChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelOutput, context: context)
      end
    end

    class DeletePlaybackKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlaybackKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeletePlaybackKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlaybackKeyPairOutput, context: context)
      end
    end

    class DeleteRecordingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecordingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteRecordingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecordingConfigurationOutput, context: context)
      end
    end

    class DeleteStreamKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamKeyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteStreamKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamKeyOutput, context: context)
      end
    end

    class DestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationConfiguration, context: context)
        Validators::S3DestinationConfiguration.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class GetChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelOutput, context: context)
        Validators::Channel.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
      end
    end

    class GetPlaybackKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlaybackKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetPlaybackKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlaybackKeyPairOutput, context: context)
        Validators::PlaybackKeyPair.validate!(input[:key_pair], context: "#{context}[:key_pair]") unless input[:key_pair].nil?
      end
    end

    class GetRecordingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecordingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetRecordingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecordingConfigurationOutput, context: context)
        Validators::RecordingConfiguration.validate!(input[:recording_configuration], context: "#{context}[:recording_configuration]") unless input[:recording_configuration].nil?
      end
    end

    class GetStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
      end
    end

    class GetStreamKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamKeyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetStreamKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamKeyOutput, context: context)
        Validators::StreamKey.validate!(input[:stream_key], context: "#{context}[:stream_key]") unless input[:stream_key].nil?
      end
    end

    class GetStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamOutput, context: context)
        Validators::Stream.validate!(input[:stream], context: "#{context}[:stream]") unless input[:stream].nil?
      end
    end

    class GetStreamSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamSessionInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class GetStreamSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamSessionOutput, context: context)
        Validators::StreamSession.validate!(input[:stream_session], context: "#{context}[:stream_session]") unless input[:stream_session].nil?
      end
    end

    class ImportPlaybackKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportPlaybackKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:public_key_material], ::String, context: "#{context}[:public_key_material]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ImportPlaybackKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportPlaybackKeyPairOutput, context: context)
        Validators::PlaybackKeyPair.validate!(input[:key_pair], context: "#{context}[:key_pair]") unless input[:key_pair].nil?
      end
    end

    class IngestConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IngestConfiguration, context: context)
        Validators::VideoConfiguration.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Validators::AudioConfiguration.validate!(input[:audio], context: "#{context}[:audio]") unless input[:audio].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
      end
    end

    class ListChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsInput, context: context)
        Hearth::Validator.validate!(input[:filter_by_name], ::String, context: "#{context}[:filter_by_name]")
        Hearth::Validator.validate!(input[:filter_by_recording_configuration_arn], ::String, context: "#{context}[:filter_by_recording_configuration_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsOutput, context: context)
        Validators::ChannelList.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlaybackKeyPairsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlaybackKeyPairsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPlaybackKeyPairsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlaybackKeyPairsOutput, context: context)
        Validators::PlaybackKeyPairList.validate!(input[:key_pairs], context: "#{context}[:key_pairs]") unless input[:key_pairs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecordingConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecordingConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRecordingConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecordingConfigurationsOutput, context: context)
        Validators::RecordingConfigurationList.validate!(input[:recording_configurations], context: "#{context}[:recording_configurations]") unless input[:recording_configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamKeysInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListStreamKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamKeysOutput, context: context)
        Validators::StreamKeyList.validate!(input[:stream_keys], context: "#{context}[:stream_keys]") unless input[:stream_keys].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamSessionsInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListStreamSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamSessionsOutput, context: context)
        Validators::StreamSessionList.validate!(input[:stream_sessions], context: "#{context}[:stream_sessions]") unless input[:stream_sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsInput, context: context)
        Validators::StreamFilters.validate!(input[:filter_by], context: "#{context}[:filter_by]") unless input[:filter_by].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsOutput, context: context)
        Validators::StreamList.validate!(input[:streams], context: "#{context}[:streams]") unless input[:streams].nil?
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
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PendingVerification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingVerification, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
      end
    end

    class PlaybackKeyPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlaybackKeyPair, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:fingerprint], ::String, context: "#{context}[:fingerprint]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PlaybackKeyPairList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PlaybackKeyPairSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlaybackKeyPairSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlaybackKeyPairSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetadataInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class PutMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetadataOutput, context: context)
      end
    end

    class RecordingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordingConfiguration, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DestinationConfiguration.validate!(input[:destination_configuration], context: "#{context}[:destination_configuration]") unless input[:destination_configuration].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ThumbnailConfiguration.validate!(input[:thumbnail_configuration], context: "#{context}[:thumbnail_configuration]") unless input[:thumbnail_configuration].nil?
      end
    end

    class RecordingConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecordingConfigurationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordingConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordingConfigurationSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DestinationConfiguration.validate!(input[:destination_configuration], context: "#{context}[:destination_configuration]") unless input[:destination_configuration].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
      end
    end

    class S3DestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
      end
    end

    class StopStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStreamInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
      end
    end

    class StopStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStreamOutput, context: context)
      end
    end

    class Stream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stream, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:playback_url], ::String, context: "#{context}[:playback_url]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:health], ::String, context: "#{context}[:health]")
        Hearth::Validator.validate!(input[:viewer_count], ::Integer, context: "#{context}[:viewer_count]")
      end
    end

    class StreamEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamEvent, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
      end
    end

    class StreamEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamFilters, context: context)
        Hearth::Validator.validate!(input[:health], ::String, context: "#{context}[:health]")
      end
    end

    class StreamKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamKey, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StreamKeyArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StreamKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamKeySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamKeySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamKeySummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StreamKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamSession, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::Channel.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
        Validators::IngestConfiguration.validate!(input[:ingest_configuration], context: "#{context}[:ingest_configuration]") unless input[:ingest_configuration].nil?
        Validators::RecordingConfiguration.validate!(input[:recording_configuration], context: "#{context}[:recording_configuration]") unless input[:recording_configuration].nil?
        Validators::StreamEvents.validate!(input[:truncated_events], context: "#{context}[:truncated_events]") unless input[:truncated_events].nil?
      end
    end

    class StreamSessionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamSessionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamSessionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamSessionSummary, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:has_error_event], ::TrueClass, ::FalseClass, context: "#{context}[:has_error_event]")
      end
    end

    class StreamSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamSummary, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:health], ::String, context: "#{context}[:health]")
        Hearth::Validator.validate!(input[:viewer_count], ::Integer, context: "#{context}[:viewer_count]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class StreamUnavailable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamUnavailable, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
      end
    end

    class ThumbnailConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThumbnailConfiguration, context: context)
        Hearth::Validator.validate!(input[:recording_mode], ::String, context: "#{context}[:recording_mode]")
        Hearth::Validator.validate!(input[:target_interval_seconds], ::Integer, context: "#{context}[:target_interval_seconds]")
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

    class UpdateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:latency_mode], ::String, context: "#{context}[:latency_mode]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:authorized], ::TrueClass, ::FalseClass, context: "#{context}[:authorized]")
        Hearth::Validator.validate!(input[:recording_configuration_arn], ::String, context: "#{context}[:recording_configuration_arn]")
      end
    end

    class UpdateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelOutput, context: context)
        Validators::Channel.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:exception_message], ::String, context: "#{context}[:exception_message]")
      end
    end

    class VideoConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoConfiguration, context: context)
        Hearth::Validator.validate!(input[:avc_profile], ::String, context: "#{context}[:avc_profile]")
        Hearth::Validator.validate!(input[:avc_level], ::String, context: "#{context}[:avc_level]")
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Hearth::Validator.validate!(input[:encoder], ::String, context: "#{context}[:encoder]")
        Hearth::Validator.validate!(input[:target_bitrate], ::Integer, context: "#{context}[:target_bitrate]")
        Hearth::Validator.validate!(input[:target_framerate], ::Integer, context: "#{context}[:target_framerate]")
        Hearth::Validator.validate!(input[:video_height], ::Integer, context: "#{context}[:video_height]")
        Hearth::Validator.validate!(input[:video_width], ::Integer, context: "#{context}[:video_width]")
      end
    end

  end
end
