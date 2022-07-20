# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module Builders

    # Operation Builder for AddTagsToStream
    class AddTagsToStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.AddTagsToStream'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateStream
    class CreateStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.CreateStream'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['ShardCount'] = input[:shard_count] unless input[:shard_count].nil?
        data['StreamModeDetails'] = Builders::StreamModeDetails.build(input[:stream_mode_details]) unless input[:stream_mode_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StreamModeDetails
    class StreamModeDetails
      def self.build(input)
        data = {}
        data['StreamMode'] = input[:stream_mode] unless input[:stream_mode].nil?
        data
      end
    end

    # Operation Builder for DecreaseStreamRetentionPeriod
    class DecreaseStreamRetentionPeriod
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.DecreaseStreamRetentionPeriod'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['RetentionPeriodHours'] = input[:retention_period_hours] unless input[:retention_period_hours].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStream
    class DeleteStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.DeleteStream'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['EnforceConsumerDeletion'] = input[:enforce_consumer_deletion] unless input[:enforce_consumer_deletion].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterStreamConsumer
    class DeregisterStreamConsumer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.DeregisterStreamConsumer'
        data = {}
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['ConsumerName'] = input[:consumer_name] unless input[:consumer_name].nil?
        data['ConsumerARN'] = input[:consumer_arn] unless input[:consumer_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLimits
    class DescribeLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.DescribeLimits'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStream
    class DescribeStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.DescribeStream'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ExclusiveStartShardId'] = input[:exclusive_start_shard_id] unless input[:exclusive_start_shard_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStreamConsumer
    class DescribeStreamConsumer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.DescribeStreamConsumer'
        data = {}
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['ConsumerName'] = input[:consumer_name] unless input[:consumer_name].nil?
        data['ConsumerARN'] = input[:consumer_arn] unless input[:consumer_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStreamSummary
    class DescribeStreamSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.DescribeStreamSummary'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableEnhancedMonitoring
    class DisableEnhancedMonitoring
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.DisableEnhancedMonitoring'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['ShardLevelMetrics'] = Builders::MetricsNameList.build(input[:shard_level_metrics]) unless input[:shard_level_metrics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MetricsNameList
    class MetricsNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for EnableEnhancedMonitoring
    class EnableEnhancedMonitoring
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.EnableEnhancedMonitoring'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['ShardLevelMetrics'] = Builders::MetricsNameList.build(input[:shard_level_metrics]) unless input[:shard_level_metrics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRecords
    class GetRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.GetRecords'
        data = {}
        data['ShardIterator'] = input[:shard_iterator] unless input[:shard_iterator].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetShardIterator
    class GetShardIterator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.GetShardIterator'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['ShardId'] = input[:shard_id] unless input[:shard_id].nil?
        data['ShardIteratorType'] = input[:shard_iterator_type] unless input[:shard_iterator_type].nil?
        data['StartingSequenceNumber'] = input[:starting_sequence_number] unless input[:starting_sequence_number].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for IncreaseStreamRetentionPeriod
    class IncreaseStreamRetentionPeriod
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.IncreaseStreamRetentionPeriod'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['RetentionPeriodHours'] = input[:retention_period_hours] unless input[:retention_period_hours].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListShards
    class ListShards
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.ListShards'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ExclusiveStartShardId'] = input[:exclusive_start_shard_id] unless input[:exclusive_start_shard_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['StreamCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:stream_creation_timestamp]).to_i unless input[:stream_creation_timestamp].nil?
        data['ShardFilter'] = Builders::ShardFilter.build(input[:shard_filter]) unless input[:shard_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ShardFilter
    class ShardFilter
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['ShardId'] = input[:shard_id] unless input[:shard_id].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data
      end
    end

    # Operation Builder for ListStreamConsumers
    class ListStreamConsumers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.ListStreamConsumers'
        data = {}
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['StreamCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:stream_creation_timestamp]).to_i unless input[:stream_creation_timestamp].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStreams
    class ListStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.ListStreams'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ExclusiveStartStreamName'] = input[:exclusive_start_stream_name] unless input[:exclusive_start_stream_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForStream
    class ListTagsForStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.ListTagsForStream'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['ExclusiveStartTagKey'] = input[:exclusive_start_tag_key] unless input[:exclusive_start_tag_key].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MergeShards
    class MergeShards
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.MergeShards'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['ShardToMerge'] = input[:shard_to_merge] unless input[:shard_to_merge].nil?
        data['AdjacentShardToMerge'] = input[:adjacent_shard_to_merge] unless input[:adjacent_shard_to_merge].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRecord
    class PutRecord
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.PutRecord'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['Data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data['PartitionKey'] = input[:partition_key] unless input[:partition_key].nil?
        data['ExplicitHashKey'] = input[:explicit_hash_key] unless input[:explicit_hash_key].nil?
        data['SequenceNumberForOrdering'] = input[:sequence_number_for_ordering] unless input[:sequence_number_for_ordering].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRecords
    class PutRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.PutRecords'
        data = {}
        data['Records'] = Builders::PutRecordsRequestEntryList.build(input[:records]) unless input[:records].nil?
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PutRecordsRequestEntryList
    class PutRecordsRequestEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PutRecordsRequestEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PutRecordsRequestEntry
    class PutRecordsRequestEntry
      def self.build(input)
        data = {}
        data['Data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data['ExplicitHashKey'] = input[:explicit_hash_key] unless input[:explicit_hash_key].nil?
        data['PartitionKey'] = input[:partition_key] unless input[:partition_key].nil?
        data
      end
    end

    # Operation Builder for RegisterStreamConsumer
    class RegisterStreamConsumer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.RegisterStreamConsumer'
        data = {}
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['ConsumerName'] = input[:consumer_name] unless input[:consumer_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveTagsFromStream
    class RemoveTagsFromStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.RemoveTagsFromStream'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
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

    # Operation Builder for SplitShard
    class SplitShard
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.SplitShard'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['ShardToSplit'] = input[:shard_to_split] unless input[:shard_to_split].nil?
        data['NewStartingHashKey'] = input[:new_starting_hash_key] unless input[:new_starting_hash_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartStreamEncryption
    class StartStreamEncryption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.StartStreamEncryption'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['EncryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopStreamEncryption
    class StopStreamEncryption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.StopStreamEncryption'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['EncryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateShardCount
    class UpdateShardCount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.UpdateShardCount'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['TargetShardCount'] = input[:target_shard_count] unless input[:target_shard_count].nil?
        data['ScalingType'] = input[:scaling_type] unless input[:scaling_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStreamMode
    class UpdateStreamMode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Kinesis_20131202.UpdateStreamMode'
        data = {}
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['StreamModeDetails'] = Builders::StreamModeDetails.build(input[:stream_mode_details]) unless input[:stream_mode_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
