# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivs
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.exception_message = params[:exception_message]
        type
      end
    end

    module AudioConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioConfiguration, context: context)
        type = Types::AudioConfiguration.new
        type.codec = params[:codec]
        type.target_bitrate = params[:target_bitrate]
        type.sample_rate = params[:sample_rate]
        type.channels = params[:channels]
        type
      end
    end

    module BatchError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchError, context: context)
        type = Types::BatchError.new
        type.arn = params[:arn]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module BatchErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetChannelInput, context: context)
        type = Types::BatchGetChannelInput.new
        type.arns = ChannelArnList.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type
      end
    end

    module BatchGetChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetChannelOutput, context: context)
        type = Types::BatchGetChannelOutput.new
        type.channels = Channels.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type.errors = BatchErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchGetStreamKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetStreamKeyInput, context: context)
        type = Types::BatchGetStreamKeyInput.new
        type.arns = StreamKeyArnList.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type
      end
    end

    module BatchGetStreamKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetStreamKeyOutput, context: context)
        type = Types::BatchGetStreamKeyOutput.new
        type.stream_keys = StreamKeys.build(params[:stream_keys], context: "#{context}[:stream_keys]") unless params[:stream_keys].nil?
        type.errors = BatchErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module Channel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Channel, context: context)
        type = Types::Channel.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.latency_mode = params[:latency_mode]
        type.type = params[:type]
        type.recording_configuration_arn = params[:recording_configuration_arn]
        type.ingest_endpoint = params[:ingest_endpoint]
        type.playback_url = params[:playback_url]
        type.authorized = params[:authorized]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ChannelArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ChannelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelNotBroadcasting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelNotBroadcasting, context: context)
        type = Types::ChannelNotBroadcasting.new
        type.exception_message = params[:exception_message]
        type
      end
    end

    module ChannelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelSummary, context: context)
        type = Types::ChannelSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.latency_mode = params[:latency_mode]
        type.authorized = params[:authorized]
        type.recording_configuration_arn = params[:recording_configuration_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Channels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Channel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.exception_message = params[:exception_message]
        type
      end
    end

    module CreateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelInput, context: context)
        type = Types::CreateChannelInput.new
        type.name = params[:name]
        type.latency_mode = params[:latency_mode]
        type.type = params[:type]
        type.authorized = params[:authorized]
        type.recording_configuration_arn = params[:recording_configuration_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelOutput, context: context)
        type = Types::CreateChannelOutput.new
        type.channel = Channel.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type.stream_key = StreamKey.build(params[:stream_key], context: "#{context}[:stream_key]") unless params[:stream_key].nil?
        type
      end
    end

    module CreateRecordingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecordingConfigurationInput, context: context)
        type = Types::CreateRecordingConfigurationInput.new
        type.name = params[:name]
        type.destination_configuration = DestinationConfiguration.build(params[:destination_configuration], context: "#{context}[:destination_configuration]") unless params[:destination_configuration].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.thumbnail_configuration = ThumbnailConfiguration.build(params[:thumbnail_configuration], context: "#{context}[:thumbnail_configuration]") unless params[:thumbnail_configuration].nil?
        type
      end
    end

    module CreateRecordingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecordingConfigurationOutput, context: context)
        type = Types::CreateRecordingConfigurationOutput.new
        type.recording_configuration = RecordingConfiguration.build(params[:recording_configuration], context: "#{context}[:recording_configuration]") unless params[:recording_configuration].nil?
        type
      end
    end

    module CreateStreamKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamKeyInput, context: context)
        type = Types::CreateStreamKeyInput.new
        type.channel_arn = params[:channel_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStreamKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamKeyOutput, context: context)
        type = Types::CreateStreamKeyOutput.new
        type.stream_key = StreamKey.build(params[:stream_key], context: "#{context}[:stream_key]") unless params[:stream_key].nil?
        type
      end
    end

    module DeleteChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelInput, context: context)
        type = Types::DeleteChannelInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelOutput, context: context)
        type = Types::DeleteChannelOutput.new
        type
      end
    end

    module DeletePlaybackKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlaybackKeyPairInput, context: context)
        type = Types::DeletePlaybackKeyPairInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeletePlaybackKeyPairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlaybackKeyPairOutput, context: context)
        type = Types::DeletePlaybackKeyPairOutput.new
        type
      end
    end

    module DeleteRecordingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecordingConfigurationInput, context: context)
        type = Types::DeleteRecordingConfigurationInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteRecordingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecordingConfigurationOutput, context: context)
        type = Types::DeleteRecordingConfigurationOutput.new
        type
      end
    end

    module DeleteStreamKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamKeyInput, context: context)
        type = Types::DeleteStreamKeyInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteStreamKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamKeyOutput, context: context)
        type = Types::DeleteStreamKeyOutput.new
        type
      end
    end

    module DestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationConfiguration, context: context)
        type = Types::DestinationConfiguration.new
        type.s3 = S3DestinationConfiguration.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module GetChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelInput, context: context)
        type = Types::GetChannelInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelOutput, context: context)
        type = Types::GetChannelOutput.new
        type.channel = Channel.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type
      end
    end

    module GetPlaybackKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlaybackKeyPairInput, context: context)
        type = Types::GetPlaybackKeyPairInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetPlaybackKeyPairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlaybackKeyPairOutput, context: context)
        type = Types::GetPlaybackKeyPairOutput.new
        type.key_pair = PlaybackKeyPair.build(params[:key_pair], context: "#{context}[:key_pair]") unless params[:key_pair].nil?
        type
      end
    end

    module GetRecordingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecordingConfigurationInput, context: context)
        type = Types::GetRecordingConfigurationInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetRecordingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecordingConfigurationOutput, context: context)
        type = Types::GetRecordingConfigurationOutput.new
        type.recording_configuration = RecordingConfiguration.build(params[:recording_configuration], context: "#{context}[:recording_configuration]") unless params[:recording_configuration].nil?
        type
      end
    end

    module GetStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamInput, context: context)
        type = Types::GetStreamInput.new
        type.channel_arn = params[:channel_arn]
        type
      end
    end

    module GetStreamKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamKeyInput, context: context)
        type = Types::GetStreamKeyInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetStreamKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamKeyOutput, context: context)
        type = Types::GetStreamKeyOutput.new
        type.stream_key = StreamKey.build(params[:stream_key], context: "#{context}[:stream_key]") unless params[:stream_key].nil?
        type
      end
    end

    module GetStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamOutput, context: context)
        type = Types::GetStreamOutput.new
        type.stream = Stream.build(params[:stream], context: "#{context}[:stream]") unless params[:stream].nil?
        type
      end
    end

    module GetStreamSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamSessionInput, context: context)
        type = Types::GetStreamSessionInput.new
        type.channel_arn = params[:channel_arn]
        type.stream_id = params[:stream_id]
        type
      end
    end

    module GetStreamSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamSessionOutput, context: context)
        type = Types::GetStreamSessionOutput.new
        type.stream_session = StreamSession.build(params[:stream_session], context: "#{context}[:stream_session]") unless params[:stream_session].nil?
        type
      end
    end

    module ImportPlaybackKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportPlaybackKeyPairInput, context: context)
        type = Types::ImportPlaybackKeyPairInput.new
        type.public_key_material = params[:public_key_material]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ImportPlaybackKeyPairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportPlaybackKeyPairOutput, context: context)
        type = Types::ImportPlaybackKeyPairOutput.new
        type.key_pair = PlaybackKeyPair.build(params[:key_pair], context: "#{context}[:key_pair]") unless params[:key_pair].nil?
        type
      end
    end

    module IngestConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IngestConfiguration, context: context)
        type = Types::IngestConfiguration.new
        type.video = VideoConfiguration.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.audio = AudioConfiguration.build(params[:audio], context: "#{context}[:audio]") unless params[:audio].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.exception_message = params[:exception_message]
        type
      end
    end

    module ListChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsInput, context: context)
        type = Types::ListChannelsInput.new
        type.filter_by_name = params[:filter_by_name]
        type.filter_by_recording_configuration_arn = params[:filter_by_recording_configuration_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsOutput, context: context)
        type = Types::ListChannelsOutput.new
        type.channels = ChannelList.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlaybackKeyPairsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlaybackKeyPairsInput, context: context)
        type = Types::ListPlaybackKeyPairsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPlaybackKeyPairsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlaybackKeyPairsOutput, context: context)
        type = Types::ListPlaybackKeyPairsOutput.new
        type.key_pairs = PlaybackKeyPairList.build(params[:key_pairs], context: "#{context}[:key_pairs]") unless params[:key_pairs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecordingConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecordingConfigurationsInput, context: context)
        type = Types::ListRecordingConfigurationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRecordingConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecordingConfigurationsOutput, context: context)
        type = Types::ListRecordingConfigurationsOutput.new
        type.recording_configurations = RecordingConfigurationList.build(params[:recording_configurations], context: "#{context}[:recording_configurations]") unless params[:recording_configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStreamKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamKeysInput, context: context)
        type = Types::ListStreamKeysInput.new
        type.channel_arn = params[:channel_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListStreamKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamKeysOutput, context: context)
        type = Types::ListStreamKeysOutput.new
        type.stream_keys = StreamKeyList.build(params[:stream_keys], context: "#{context}[:stream_keys]") unless params[:stream_keys].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStreamSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamSessionsInput, context: context)
        type = Types::ListStreamSessionsInput.new
        type.channel_arn = params[:channel_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListStreamSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamSessionsOutput, context: context)
        type = Types::ListStreamSessionsOutput.new
        type.stream_sessions = StreamSessionList.build(params[:stream_sessions], context: "#{context}[:stream_sessions]") unless params[:stream_sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsInput, context: context)
        type = Types::ListStreamsInput.new
        type.filter_by = StreamFilters.build(params[:filter_by], context: "#{context}[:filter_by]") unless params[:filter_by].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsOutput, context: context)
        type = Types::ListStreamsOutput.new
        type.streams = StreamList.build(params[:streams], context: "#{context}[:streams]") unless params[:streams].nil?
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
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PendingVerification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingVerification, context: context)
        type = Types::PendingVerification.new
        type.exception_message = params[:exception_message]
        type
      end
    end

    module PlaybackKeyPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlaybackKeyPair, context: context)
        type = Types::PlaybackKeyPair.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.fingerprint = params[:fingerprint]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PlaybackKeyPairList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlaybackKeyPairSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlaybackKeyPairSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlaybackKeyPairSummary, context: context)
        type = Types::PlaybackKeyPairSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMetadataInput, context: context)
        type = Types::PutMetadataInput.new
        type.channel_arn = params[:channel_arn]
        type.metadata = params[:metadata]
        type
      end
    end

    module PutMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMetadataOutput, context: context)
        type = Types::PutMetadataOutput.new
        type
      end
    end

    module RecordingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordingConfiguration, context: context)
        type = Types::RecordingConfiguration.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.destination_configuration = DestinationConfiguration.build(params[:destination_configuration], context: "#{context}[:destination_configuration]") unless params[:destination_configuration].nil?
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.thumbnail_configuration = ThumbnailConfiguration.build(params[:thumbnail_configuration], context: "#{context}[:thumbnail_configuration]") unless params[:thumbnail_configuration].nil?
        type
      end
    end

    module RecordingConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecordingConfigurationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordingConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordingConfigurationSummary, context: context)
        type = Types::RecordingConfigurationSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.destination_configuration = DestinationConfiguration.build(params[:destination_configuration], context: "#{context}[:destination_configuration]") unless params[:destination_configuration].nil?
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.exception_message = params[:exception_message]
        type
      end
    end

    module S3DestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationConfiguration, context: context)
        type = Types::S3DestinationConfiguration.new
        type.bucket_name = params[:bucket_name]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.exception_message = params[:exception_message]
        type
      end
    end

    module StopStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStreamInput, context: context)
        type = Types::StopStreamInput.new
        type.channel_arn = params[:channel_arn]
        type
      end
    end

    module StopStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStreamOutput, context: context)
        type = Types::StopStreamOutput.new
        type
      end
    end

    module Stream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Stream, context: context)
        type = Types::Stream.new
        type.channel_arn = params[:channel_arn]
        type.stream_id = params[:stream_id]
        type.playback_url = params[:playback_url]
        type.start_time = params[:start_time]
        type.state = params[:state]
        type.health = params[:health]
        type.viewer_count = params[:viewer_count]
        type
      end
    end

    module StreamEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamEvent, context: context)
        type = Types::StreamEvent.new
        type.name = params[:name]
        type.type = params[:type]
        type.event_time = params[:event_time]
        type
      end
    end

    module StreamEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamFilters, context: context)
        type = Types::StreamFilters.new
        type.health = params[:health]
        type
      end
    end

    module StreamKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamKey, context: context)
        type = Types::StreamKey.new
        type.arn = params[:arn]
        type.value = params[:value]
        type.channel_arn = params[:channel_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StreamKeyArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StreamKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamKeySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamKeySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamKeySummary, context: context)
        type = Types::StreamKeySummary.new
        type.arn = params[:arn]
        type.channel_arn = params[:channel_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StreamKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamSession, context: context)
        type = Types::StreamSession.new
        type.stream_id = params[:stream_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.channel = Channel.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type.ingest_configuration = IngestConfiguration.build(params[:ingest_configuration], context: "#{context}[:ingest_configuration]") unless params[:ingest_configuration].nil?
        type.recording_configuration = RecordingConfiguration.build(params[:recording_configuration], context: "#{context}[:recording_configuration]") unless params[:recording_configuration].nil?
        type.truncated_events = StreamEvents.build(params[:truncated_events], context: "#{context}[:truncated_events]") unless params[:truncated_events].nil?
        type
      end
    end

    module StreamSessionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamSessionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamSessionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamSessionSummary, context: context)
        type = Types::StreamSessionSummary.new
        type.stream_id = params[:stream_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.has_error_event = params[:has_error_event]
        type
      end
    end

    module StreamSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamSummary, context: context)
        type = Types::StreamSummary.new
        type.channel_arn = params[:channel_arn]
        type.stream_id = params[:stream_id]
        type.state = params[:state]
        type.health = params[:health]
        type.viewer_count = params[:viewer_count]
        type.start_time = params[:start_time]
        type
      end
    end

    module StreamUnavailable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamUnavailable, context: context)
        type = Types::StreamUnavailable.new
        type.exception_message = params[:exception_message]
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

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.exception_message = params[:exception_message]
        type
      end
    end

    module ThumbnailConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThumbnailConfiguration, context: context)
        type = Types::ThumbnailConfiguration.new
        type.recording_mode = params[:recording_mode]
        type.target_interval_seconds = params[:target_interval_seconds]
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

    module UpdateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelInput, context: context)
        type = Types::UpdateChannelInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.latency_mode = params[:latency_mode]
        type.type = params[:type]
        type.authorized = params[:authorized]
        type.recording_configuration_arn = params[:recording_configuration_arn]
        type
      end
    end

    module UpdateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelOutput, context: context)
        type = Types::UpdateChannelOutput.new
        type.channel = Channel.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.exception_message = params[:exception_message]
        type
      end
    end

    module VideoConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoConfiguration, context: context)
        type = Types::VideoConfiguration.new
        type.avc_profile = params[:avc_profile]
        type.avc_level = params[:avc_level]
        type.codec = params[:codec]
        type.encoder = params[:encoder]
        type.target_bitrate = params[:target_bitrate]
        type.target_framerate = params[:target_framerate]
        type.video_height = params[:video_height]
        type.video_width = params[:video_width]
        type
      end
    end

  end
end
