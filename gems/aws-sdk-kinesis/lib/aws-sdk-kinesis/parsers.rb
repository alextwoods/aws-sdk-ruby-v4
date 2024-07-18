# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Kinesis
  # @api private
  module Parsers

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    class AddTagsToStream
      def self.parse(http_resp)
        data = Types::AddTagsToStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class ChildShard
      def self.parse(map)
        data = Types::ChildShard.new
        data.shard_id = map['ShardId']
        data.parent_shards = (ShardIdList.parse(map['ParentShards']) unless map['ParentShards'].nil?)
        data.hash_key_range = (HashKeyRange.parse(map['HashKeyRange']) unless map['HashKeyRange'].nil?)
        return data
      end
    end

    class ChildShardList
      def self.parse(list)
        list.map do |value|
          ChildShard.parse(value) unless value.nil?
        end
      end
    end

    class Consumer
      def self.parse(map)
        data = Types::Consumer.new
        data.consumer_name = map['ConsumerName']
        data.consumer_arn = map['ConsumerARN']
        data.consumer_status = map['ConsumerStatus']
        data.consumer_creation_timestamp = Time.at(map['ConsumerCreationTimestamp'].to_i) if map['ConsumerCreationTimestamp']
        return data
      end
    end

    class ConsumerDescription
      def self.parse(map)
        data = Types::ConsumerDescription.new
        data.consumer_name = map['ConsumerName']
        data.consumer_arn = map['ConsumerARN']
        data.consumer_status = map['ConsumerStatus']
        data.consumer_creation_timestamp = Time.at(map['ConsumerCreationTimestamp'].to_i) if map['ConsumerCreationTimestamp']
        data.stream_arn = map['StreamARN']
        return data
      end
    end

    class ConsumerList
      def self.parse(list)
        list.map do |value|
          Consumer.parse(value) unless value.nil?
        end
      end
    end

    class CreateStream
      def self.parse(http_resp)
        data = Types::CreateStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class DecreaseStreamRetentionPeriod
      def self.parse(http_resp)
        data = Types::DecreaseStreamRetentionPeriodOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class DeleteStream
      def self.parse(http_resp)
        data = Types::DeleteStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class DeregisterStreamConsumer
      def self.parse(http_resp)
        data = Types::DeregisterStreamConsumerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class DescribeLimits
      def self.parse(http_resp)
        data = Types::DescribeLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.shard_limit = map['ShardLimit']
        data.open_shard_count = map['OpenShardCount']
        data.on_demand_stream_count = map['OnDemandStreamCount']
        data.on_demand_stream_count_limit = map['OnDemandStreamCountLimit']
        data
      end
    end

    class DescribeStream
      def self.parse(http_resp)
        data = Types::DescribeStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.stream_description = (StreamDescription.parse(map['StreamDescription']) unless map['StreamDescription'].nil?)
        data
      end
    end

    class DescribeStreamConsumer
      def self.parse(http_resp)
        data = Types::DescribeStreamConsumerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.consumer_description = (ConsumerDescription.parse(map['ConsumerDescription']) unless map['ConsumerDescription'].nil?)
        data
      end
    end

    class DescribeStreamSummary
      def self.parse(http_resp)
        data = Types::DescribeStreamSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.stream_description_summary = (StreamDescriptionSummary.parse(map['StreamDescriptionSummary']) unless map['StreamDescriptionSummary'].nil?)
        data
      end
    end

    class DisableEnhancedMonitoring
      def self.parse(http_resp)
        data = Types::DisableEnhancedMonitoringOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.stream_name = map['StreamName']
        data.current_shard_level_metrics = (MetricsNameList.parse(map['CurrentShardLevelMetrics']) unless map['CurrentShardLevelMetrics'].nil?)
        data.desired_shard_level_metrics = (MetricsNameList.parse(map['DesiredShardLevelMetrics']) unless map['DesiredShardLevelMetrics'].nil?)
        data.stream_arn = map['StreamARN']
        data
      end
    end

    class EnableEnhancedMonitoring
      def self.parse(http_resp)
        data = Types::EnableEnhancedMonitoringOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.stream_name = map['StreamName']
        data.current_shard_level_metrics = (MetricsNameList.parse(map['CurrentShardLevelMetrics']) unless map['CurrentShardLevelMetrics'].nil?)
        data.desired_shard_level_metrics = (MetricsNameList.parse(map['DesiredShardLevelMetrics']) unless map['DesiredShardLevelMetrics'].nil?)
        data.stream_arn = map['StreamARN']
        data
      end
    end

    class EnhancedMetrics
      def self.parse(map)
        data = Types::EnhancedMetrics.new
        data.shard_level_metrics = (MetricsNameList.parse(map['ShardLevelMetrics']) unless map['ShardLevelMetrics'].nil?)
        return data
      end
    end

    class EnhancedMonitoringList
      def self.parse(list)
        list.map do |value|
          EnhancedMetrics.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for ExpiredIteratorException
    class ExpiredIteratorException
      def self.parse(http_resp)
        data = Types::ExpiredIteratorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ExpiredNextTokenException
    class ExpiredNextTokenException
      def self.parse(http_resp)
        data = Types::ExpiredNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    class GetRecords
      def self.parse(http_resp)
        data = Types::GetRecordsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.records = (RecordList.parse(map['Records']) unless map['Records'].nil?)
        data.next_shard_iterator = map['NextShardIterator']
        data.millis_behind_latest = map['MillisBehindLatest']
        data.child_shards = (ChildShardList.parse(map['ChildShards']) unless map['ChildShards'].nil?)
        data
      end
    end

    class GetResourcePolicy
      def self.parse(http_resp)
        data = Types::GetResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.policy = map['Policy']
        data
      end
    end

    class GetShardIterator
      def self.parse(http_resp)
        data = Types::GetShardIteratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.shard_iterator = map['ShardIterator']
        data
      end
    end

    class HashKeyRange
      def self.parse(map)
        data = Types::HashKeyRange.new
        data.starting_hash_key = map['StartingHashKey']
        data.ending_hash_key = map['EndingHashKey']
        return data
      end
    end

    class IncreaseStreamRetentionPeriod
      def self.parse(http_resp)
        data = Types::IncreaseStreamRetentionPeriodOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidArgumentException
    class InvalidArgumentException
      def self.parse(http_resp)
        data = Types::InvalidArgumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSAccessDeniedException
    class KMSAccessDeniedException
      def self.parse(http_resp)
        data = Types::KMSAccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSDisabledException
    class KMSDisabledException
      def self.parse(http_resp)
        data = Types::KMSDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSInvalidStateException
    class KMSInvalidStateException
      def self.parse(http_resp)
        data = Types::KMSInvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSNotFoundException
    class KMSNotFoundException
      def self.parse(http_resp)
        data = Types::KMSNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSOptInRequired
    class KMSOptInRequired
      def self.parse(http_resp)
        data = Types::KMSOptInRequired.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSThrottlingException
    class KMSThrottlingException
      def self.parse(http_resp)
        data = Types::KMSThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    class ListShards
      def self.parse(http_resp)
        data = Types::ListShardsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.shards = (ShardList.parse(map['Shards']) unless map['Shards'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListStreamConsumers
      def self.parse(http_resp)
        data = Types::ListStreamConsumersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.consumers = (ConsumerList.parse(map['Consumers']) unless map['Consumers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListStreams
      def self.parse(http_resp)
        data = Types::ListStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.stream_names = (StreamNameList.parse(map['StreamNames']) unless map['StreamNames'].nil?)
        data.has_more_streams = map['HasMoreStreams']
        data.next_token = map['NextToken']
        data.stream_summaries = (StreamSummaryList.parse(map['StreamSummaries']) unless map['StreamSummaries'].nil?)
        data
      end
    end

    class ListTagsForStream
      def self.parse(http_resp)
        data = Types::ListTagsForStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.has_more_tags = map['HasMoreTags']
        data
      end
    end

    class MergeShards
      def self.parse(http_resp)
        data = Types::MergeShardsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class MetricsNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for ProvisionedThroughputExceededException
    class ProvisionedThroughputExceededException
      def self.parse(http_resp)
        data = Types::ProvisionedThroughputExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    class PutRecord
      def self.parse(http_resp)
        data = Types::PutRecordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.shard_id = map['ShardId']
        data.sequence_number = map['SequenceNumber']
        data.encryption_type = map['EncryptionType']
        data
      end
    end

    class PutRecords
      def self.parse(http_resp)
        data = Types::PutRecordsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.failed_record_count = map['FailedRecordCount']
        data.records = (PutRecordsResultEntryList.parse(map['Records']) unless map['Records'].nil?)
        data.encryption_type = map['EncryptionType']
        data
      end
    end

    class PutRecordsResultEntry
      def self.parse(map)
        data = Types::PutRecordsResultEntry.new
        data.sequence_number = map['SequenceNumber']
        data.shard_id = map['ShardId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class PutRecordsResultEntryList
      def self.parse(list)
        list.map do |value|
          PutRecordsResultEntry.parse(value) unless value.nil?
        end
      end
    end

    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class Record
      def self.parse(map)
        data = Types::Record.new
        data.sequence_number = map['SequenceNumber']
        data.approximate_arrival_timestamp = Time.at(map['ApproximateArrivalTimestamp'].to_i) if map['ApproximateArrivalTimestamp']
        data.data = ::Base64::decode64(map['Data']) unless map['Data'].nil?
        data.partition_key = map['PartitionKey']
        data.encryption_type = map['EncryptionType']
        return data
      end
    end

    class RecordList
      def self.parse(list)
        list.map do |value|
          Record.parse(value) unless value.nil?
        end
      end
    end

    class RegisterStreamConsumer
      def self.parse(http_resp)
        data = Types::RegisterStreamConsumerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.consumer = (Consumer.parse(map['Consumer']) unless map['Consumer'].nil?)
        data
      end
    end

    class RemoveTagsFromStream
      def self.parse(http_resp)
        data = Types::RemoveTagsFromStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    class SequenceNumberRange
      def self.parse(map)
        data = Types::SequenceNumberRange.new
        data.starting_sequence_number = map['StartingSequenceNumber']
        data.ending_sequence_number = map['EndingSequenceNumber']
        return data
      end
    end

    class Shard
      def self.parse(map)
        data = Types::Shard.new
        data.shard_id = map['ShardId']
        data.parent_shard_id = map['ParentShardId']
        data.adjacent_parent_shard_id = map['AdjacentParentShardId']
        data.hash_key_range = (HashKeyRange.parse(map['HashKeyRange']) unless map['HashKeyRange'].nil?)
        data.sequence_number_range = (SequenceNumberRange.parse(map['SequenceNumberRange']) unless map['SequenceNumberRange'].nil?)
        return data
      end
    end

    class ShardIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ShardList
      def self.parse(list)
        list.map do |value|
          Shard.parse(value) unless value.nil?
        end
      end
    end

    class SplitShard
      def self.parse(http_resp)
        data = Types::SplitShardOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class StartStreamEncryption
      def self.parse(http_resp)
        data = Types::StartStreamEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class StopStreamEncryption
      def self.parse(http_resp)
        data = Types::StopStreamEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class StreamDescription
      def self.parse(map)
        data = Types::StreamDescription.new
        data.stream_name = map['StreamName']
        data.stream_arn = map['StreamARN']
        data.stream_status = map['StreamStatus']
        data.stream_mode_details = (StreamModeDetails.parse(map['StreamModeDetails']) unless map['StreamModeDetails'].nil?)
        data.shards = (ShardList.parse(map['Shards']) unless map['Shards'].nil?)
        data.has_more_shards = map['HasMoreShards']
        data.retention_period_hours = map['RetentionPeriodHours']
        data.stream_creation_timestamp = Time.at(map['StreamCreationTimestamp'].to_i) if map['StreamCreationTimestamp']
        data.enhanced_monitoring = (EnhancedMonitoringList.parse(map['EnhancedMonitoring']) unless map['EnhancedMonitoring'].nil?)
        data.encryption_type = map['EncryptionType']
        data.key_id = map['KeyId']
        return data
      end
    end

    class StreamDescriptionSummary
      def self.parse(map)
        data = Types::StreamDescriptionSummary.new
        data.stream_name = map['StreamName']
        data.stream_arn = map['StreamARN']
        data.stream_status = map['StreamStatus']
        data.stream_mode_details = (StreamModeDetails.parse(map['StreamModeDetails']) unless map['StreamModeDetails'].nil?)
        data.retention_period_hours = map['RetentionPeriodHours']
        data.stream_creation_timestamp = Time.at(map['StreamCreationTimestamp'].to_i) if map['StreamCreationTimestamp']
        data.enhanced_monitoring = (EnhancedMonitoringList.parse(map['EnhancedMonitoring']) unless map['EnhancedMonitoring'].nil?)
        data.encryption_type = map['EncryptionType']
        data.key_id = map['KeyId']
        data.open_shard_count = map['OpenShardCount']
        data.consumer_count = map['ConsumerCount']
        return data
      end
    end

    class StreamModeDetails
      def self.parse(map)
        data = Types::StreamModeDetails.new
        data.stream_mode = map['StreamMode']
        return data
      end
    end

    class StreamNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class StreamSummary
      def self.parse(map)
        data = Types::StreamSummary.new
        data.stream_name = map['StreamName']
        data.stream_arn = map['StreamARN']
        data.stream_status = map['StreamStatus']
        data.stream_mode_details = (StreamModeDetails.parse(map['StreamModeDetails']) unless map['StreamModeDetails'].nil?)
        data.stream_creation_timestamp = Time.at(map['StreamCreationTimestamp'].to_i) if map['StreamCreationTimestamp']
        return data
      end
    end

    class StreamSummaryList
      def self.parse(list)
        list.map do |value|
          StreamSummary.parse(value) unless value.nil?
        end
      end
    end

    class SubscribeToShard
      def self.parse(http_resp)
        data = Types::SubscribeToShardOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.event_stream = (SubscribeToShardEventStream.parse(map['EventStream']) unless map['EventStream'].nil?)
        data
      end
    end

    class SubscribeToShardEvent
      def self.parse(map)
        data = Types::SubscribeToShardEvent.new
        data.records = (RecordList.parse(map['Records']) unless map['Records'].nil?)
        data.continuation_sequence_number = map['ContinuationSequenceNumber']
        data.millis_behind_latest = map['MillisBehindLatest']
        data.child_shards = (ChildShardList.parse(map['ChildShards']) unless map['ChildShards'].nil?)
        return data
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

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class UpdateShardCount
      def self.parse(http_resp)
        data = Types::UpdateShardCountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.stream_name = map['StreamName']
        data.current_shard_count = map['CurrentShardCount']
        data.target_shard_count = map['TargetShardCount']
        data.stream_arn = map['StreamARN']
        data
      end
    end

    class UpdateStreamMode
      def self.parse(http_resp)
        data = Types::UpdateStreamModeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.message = map['message']
        data
      end
    end

    module EventStream

      class InternalFailureException
        def self.parse(message)
          data = Types::InternalFailureException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message']
          data
        end
      end

      class KMSAccessDeniedException
        def self.parse(message)
          data = Types::KMSAccessDeniedException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message']
          data
        end
      end

      class KMSDisabledException
        def self.parse(message)
          data = Types::KMSDisabledException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message']
          data
        end
      end

      class KMSInvalidStateException
        def self.parse(message)
          data = Types::KMSInvalidStateException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message']
          data
        end
      end

      class KMSNotFoundException
        def self.parse(message)
          data = Types::KMSNotFoundException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message']
          data
        end
      end

      class KMSOptInRequired
        def self.parse(message)
          data = Types::KMSOptInRequired.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message']
          data
        end
      end

      class KMSThrottlingException
        def self.parse(message)
          data = Types::KMSThrottlingException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message']
          data
        end
      end

      class ResourceInUseException
        def self.parse(message)
          data = Types::ResourceInUseException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message']
          data
        end
      end

      class ResourceNotFoundException
        def self.parse(message)
          data = Types::ResourceNotFoundException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message']
          data
        end
      end

      class SubscribeToShardInitialResponse
        def self.parse(message)
          data = Types::SubscribeToShardOutput.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.event_stream = (SubscribeToShardEventStream.parse(map['EventStream']) unless map['EventStream'].nil?)
          data
        end
      end

      class SubscribeToShardEvent
        def self.parse(message)
          data = Types::SubscribeToShardEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.records = (RecordList.parse(map['Records']) unless map['Records'].nil?)
          data.continuation_sequence_number = map['ContinuationSequenceNumber']
          data.millis_behind_latest = map['MillisBehindLatest']
          data.child_shards = (ChildShardList.parse(map['ChildShards']) unless map['ChildShards'].nil?)
          data
        end
      end
    end
  end
end
