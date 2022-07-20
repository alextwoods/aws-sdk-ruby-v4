# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module Parsers

    # Operation Parser for AddTagsToStream
    class AddTagsToStream
      def self.parse(http_resp)
        data = Types::AddTagsToStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidArgumentException
    class InvalidArgumentException
      def self.parse(http_resp)
        data = Types::InvalidArgumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateStream
    class CreateStream
      def self.parse(http_resp)
        data = Types::CreateStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DecreaseStreamRetentionPeriod
    class DecreaseStreamRetentionPeriod
      def self.parse(http_resp)
        data = Types::DecreaseStreamRetentionPeriodOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteStream
    class DeleteStream
      def self.parse(http_resp)
        data = Types::DeleteStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterStreamConsumer
    class DeregisterStreamConsumer
      def self.parse(http_resp)
        data = Types::DeregisterStreamConsumerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeLimits
    class DescribeLimits
      def self.parse(http_resp)
        data = Types::DescribeLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shard_limit = map['ShardLimit']
        data.open_shard_count = map['OpenShardCount']
        data.on_demand_stream_count = map['OnDemandStreamCount']
        data.on_demand_stream_count_limit = map['OnDemandStreamCountLimit']
        data
      end
    end

    # Operation Parser for DescribeStream
    class DescribeStream
      def self.parse(http_resp)
        data = Types::DescribeStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stream_description = (Parsers::StreamDescription.parse(map['StreamDescription']) unless map['StreamDescription'].nil?)
        data
      end
    end

    class StreamDescription
      def self.parse(map)
        data = Types::StreamDescription.new
        data.stream_name = map['StreamName']
        data.stream_arn = map['StreamARN']
        data.stream_status = map['StreamStatus']
        data.stream_mode_details = (Parsers::StreamModeDetails.parse(map['StreamModeDetails']) unless map['StreamModeDetails'].nil?)
        data.shards = (Parsers::ShardList.parse(map['Shards']) unless map['Shards'].nil?)
        data.has_more_shards = map['HasMoreShards']
        data.retention_period_hours = map['RetentionPeriodHours']
        data.stream_creation_timestamp = Time.at(map['StreamCreationTimestamp'].to_i) if map['StreamCreationTimestamp']
        data.enhanced_monitoring = (Parsers::EnhancedMonitoringList.parse(map['EnhancedMonitoring']) unless map['EnhancedMonitoring'].nil?)
        data.encryption_type = map['EncryptionType']
        data.key_id = map['KeyId']
        return data
      end
    end

    class EnhancedMonitoringList
      def self.parse(list)
        list.map do |value|
          Parsers::EnhancedMetrics.parse(value) unless value.nil?
        end
      end
    end

    class EnhancedMetrics
      def self.parse(map)
        data = Types::EnhancedMetrics.new
        data.shard_level_metrics = (Parsers::MetricsNameList.parse(map['ShardLevelMetrics']) unless map['ShardLevelMetrics'].nil?)
        return data
      end
    end

    class MetricsNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ShardList
      def self.parse(list)
        list.map do |value|
          Parsers::Shard.parse(value) unless value.nil?
        end
      end
    end

    class Shard
      def self.parse(map)
        data = Types::Shard.new
        data.shard_id = map['ShardId']
        data.parent_shard_id = map['ParentShardId']
        data.adjacent_parent_shard_id = map['AdjacentParentShardId']
        data.hash_key_range = (Parsers::HashKeyRange.parse(map['HashKeyRange']) unless map['HashKeyRange'].nil?)
        data.sequence_number_range = (Parsers::SequenceNumberRange.parse(map['SequenceNumberRange']) unless map['SequenceNumberRange'].nil?)
        return data
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

    class HashKeyRange
      def self.parse(map)
        data = Types::HashKeyRange.new
        data.starting_hash_key = map['StartingHashKey']
        data.ending_hash_key = map['EndingHashKey']
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

    # Operation Parser for DescribeStreamConsumer
    class DescribeStreamConsumer
      def self.parse(http_resp)
        data = Types::DescribeStreamConsumerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.consumer_description = (Parsers::ConsumerDescription.parse(map['ConsumerDescription']) unless map['ConsumerDescription'].nil?)
        data
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

    # Operation Parser for DescribeStreamSummary
    class DescribeStreamSummary
      def self.parse(http_resp)
        data = Types::DescribeStreamSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stream_description_summary = (Parsers::StreamDescriptionSummary.parse(map['StreamDescriptionSummary']) unless map['StreamDescriptionSummary'].nil?)
        data
      end
    end

    class StreamDescriptionSummary
      def self.parse(map)
        data = Types::StreamDescriptionSummary.new
        data.stream_name = map['StreamName']
        data.stream_arn = map['StreamARN']
        data.stream_status = map['StreamStatus']
        data.stream_mode_details = (Parsers::StreamModeDetails.parse(map['StreamModeDetails']) unless map['StreamModeDetails'].nil?)
        data.retention_period_hours = map['RetentionPeriodHours']
        data.stream_creation_timestamp = Time.at(map['StreamCreationTimestamp'].to_i) if map['StreamCreationTimestamp']
        data.enhanced_monitoring = (Parsers::EnhancedMonitoringList.parse(map['EnhancedMonitoring']) unless map['EnhancedMonitoring'].nil?)
        data.encryption_type = map['EncryptionType']
        data.key_id = map['KeyId']
        data.open_shard_count = map['OpenShardCount']
        data.consumer_count = map['ConsumerCount']
        return data
      end
    end

    # Operation Parser for DisableEnhancedMonitoring
    class DisableEnhancedMonitoring
      def self.parse(http_resp)
        data = Types::DisableEnhancedMonitoringOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stream_name = map['StreamName']
        data.current_shard_level_metrics = (Parsers::MetricsNameList.parse(map['CurrentShardLevelMetrics']) unless map['CurrentShardLevelMetrics'].nil?)
        data.desired_shard_level_metrics = (Parsers::MetricsNameList.parse(map['DesiredShardLevelMetrics']) unless map['DesiredShardLevelMetrics'].nil?)
        data
      end
    end

    # Operation Parser for EnableEnhancedMonitoring
    class EnableEnhancedMonitoring
      def self.parse(http_resp)
        data = Types::EnableEnhancedMonitoringOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stream_name = map['StreamName']
        data.current_shard_level_metrics = (Parsers::MetricsNameList.parse(map['CurrentShardLevelMetrics']) unless map['CurrentShardLevelMetrics'].nil?)
        data.desired_shard_level_metrics = (Parsers::MetricsNameList.parse(map['DesiredShardLevelMetrics']) unless map['DesiredShardLevelMetrics'].nil?)
        data
      end
    end

    # Operation Parser for GetRecords
    class GetRecords
      def self.parse(http_resp)
        data = Types::GetRecordsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.records = (Parsers::RecordList.parse(map['Records']) unless map['Records'].nil?)
        data.next_shard_iterator = map['NextShardIterator']
        data.millis_behind_latest = map['MillisBehindLatest']
        data.child_shards = (Parsers::ChildShardList.parse(map['ChildShards']) unless map['ChildShards'].nil?)
        data
      end
    end

    class ChildShardList
      def self.parse(list)
        list.map do |value|
          Parsers::ChildShard.parse(value) unless value.nil?
        end
      end
    end

    class ChildShard
      def self.parse(map)
        data = Types::ChildShard.new
        data.shard_id = map['ShardId']
        data.parent_shards = (Parsers::ShardIdList.parse(map['ParentShards']) unless map['ParentShards'].nil?)
        data.hash_key_range = (Parsers::HashKeyRange.parse(map['HashKeyRange']) unless map['HashKeyRange'].nil?)
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

    class RecordList
      def self.parse(list)
        list.map do |value|
          Parsers::Record.parse(value) unless value.nil?
        end
      end
    end

    class Record
      def self.parse(map)
        data = Types::Record.new
        data.sequence_number = map['SequenceNumber']
        data.approximate_arrival_timestamp = Time.at(map['ApproximateArrivalTimestamp'].to_i) if map['ApproximateArrivalTimestamp']
        data.data = Base64::decode64(map['Data']) unless map['Data'].nil?
        data.partition_key = map['PartitionKey']
        data.encryption_type = map['EncryptionType']
        return data
      end
    end

    # Error Parser for ExpiredIteratorException
    class ExpiredIteratorException
      def self.parse(http_resp)
        data = Types::ExpiredIteratorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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
        map = Hearth::JSON.load(body)
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
        map = Hearth::JSON.load(body)
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
        map = Hearth::JSON.load(body)
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
        map = Hearth::JSON.load(body)
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
        map = Hearth::JSON.load(body)
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
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ProvisionedThroughputExceededException
    class ProvisionedThroughputExceededException
      def self.parse(http_resp)
        data = Types::ProvisionedThroughputExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetShardIterator
    class GetShardIterator
      def self.parse(http_resp)
        data = Types::GetShardIteratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shard_iterator = map['ShardIterator']
        data
      end
    end

    # Operation Parser for IncreaseStreamRetentionPeriod
    class IncreaseStreamRetentionPeriod
      def self.parse(http_resp)
        data = Types::IncreaseStreamRetentionPeriodOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ListShards
    class ListShards
      def self.parse(http_resp)
        data = Types::ListShardsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shards = (Parsers::ShardList.parse(map['Shards']) unless map['Shards'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Error Parser for ExpiredNextTokenException
    class ExpiredNextTokenException
      def self.parse(http_resp)
        data = Types::ExpiredNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListStreamConsumers
    class ListStreamConsumers
      def self.parse(http_resp)
        data = Types::ListStreamConsumersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.consumers = (Parsers::ConsumerList.parse(map['Consumers']) unless map['Consumers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConsumerList
      def self.parse(list)
        list.map do |value|
          Parsers::Consumer.parse(value) unless value.nil?
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

    # Operation Parser for ListStreams
    class ListStreams
      def self.parse(http_resp)
        data = Types::ListStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stream_names = (Parsers::StreamNameList.parse(map['StreamNames']) unless map['StreamNames'].nil?)
        data.has_more_streams = map['HasMoreStreams']
        data
      end
    end

    class StreamNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForStream
    class ListTagsForStream
      def self.parse(http_resp)
        data = Types::ListTagsForStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.has_more_tags = map['HasMoreTags']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
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

    # Operation Parser for MergeShards
    class MergeShards
      def self.parse(http_resp)
        data = Types::MergeShardsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutRecord
    class PutRecord
      def self.parse(http_resp)
        data = Types::PutRecordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shard_id = map['ShardId']
        data.sequence_number = map['SequenceNumber']
        data.encryption_type = map['EncryptionType']
        data
      end
    end

    # Operation Parser for PutRecords
    class PutRecords
      def self.parse(http_resp)
        data = Types::PutRecordsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_record_count = map['FailedRecordCount']
        data.records = (Parsers::PutRecordsResultEntryList.parse(map['Records']) unless map['Records'].nil?)
        data.encryption_type = map['EncryptionType']
        data
      end
    end

    class PutRecordsResultEntryList
      def self.parse(list)
        list.map do |value|
          Parsers::PutRecordsResultEntry.parse(value) unless value.nil?
        end
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

    # Operation Parser for RegisterStreamConsumer
    class RegisterStreamConsumer
      def self.parse(http_resp)
        data = Types::RegisterStreamConsumerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.consumer = (Parsers::Consumer.parse(map['Consumer']) unless map['Consumer'].nil?)
        data
      end
    end

    # Operation Parser for RemoveTagsFromStream
    class RemoveTagsFromStream
      def self.parse(http_resp)
        data = Types::RemoveTagsFromStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SplitShard
    class SplitShard
      def self.parse(http_resp)
        data = Types::SplitShardOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartStreamEncryption
    class StartStreamEncryption
      def self.parse(http_resp)
        data = Types::StartStreamEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopStreamEncryption
    class StopStreamEncryption
      def self.parse(http_resp)
        data = Types::StopStreamEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateShardCount
    class UpdateShardCount
      def self.parse(http_resp)
        data = Types::UpdateShardCountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stream_name = map['StreamName']
        data.current_shard_count = map['CurrentShardCount']
        data.target_shard_count = map['TargetShardCount']
        data
      end
    end

    # Operation Parser for UpdateStreamMode
    class UpdateStreamMode
      def self.parse(http_resp)
        data = Types::UpdateStreamModeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
