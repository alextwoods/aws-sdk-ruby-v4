# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module Stubs

    # Operation Stubber for AddTagsToStream
    class AddTagsToStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStream
    class CreateStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DecreaseStreamRetentionPeriod
    class DecreaseStreamRetentionPeriod
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStream
    class DeleteStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterStreamConsumer
    class DeregisterStreamConsumer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeLimits
    class DescribeLimits
      def self.default(visited=[])
        {
          shard_limit: 1,
          open_shard_count: 1,
          on_demand_stream_count: 1,
          on_demand_stream_count_limit: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ShardLimit'] = stub[:shard_limit] unless stub[:shard_limit].nil?
        data['OpenShardCount'] = stub[:open_shard_count] unless stub[:open_shard_count].nil?
        data['OnDemandStreamCount'] = stub[:on_demand_stream_count] unless stub[:on_demand_stream_count].nil?
        data['OnDemandStreamCountLimit'] = stub[:on_demand_stream_count_limit] unless stub[:on_demand_stream_count_limit].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeStream
    class DescribeStream
      def self.default(visited=[])
        {
          stream_description: Stubs::StreamDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamDescription'] = Stubs::StreamDescription.stub(stub[:stream_description]) unless stub[:stream_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for StreamDescription
    class StreamDescription
      def self.default(visited=[])
        return nil if visited.include?('StreamDescription')
        visited = visited + ['StreamDescription']
        {
          stream_name: 'stream_name',
          stream_arn: 'stream_arn',
          stream_status: 'stream_status',
          stream_mode_details: Stubs::StreamModeDetails.default(visited),
          shards: Stubs::ShardList.default(visited),
          has_more_shards: false,
          retention_period_hours: 1,
          stream_creation_timestamp: Time.now,
          enhanced_monitoring: Stubs::EnhancedMonitoringList.default(visited),
          encryption_type: 'encryption_type',
          key_id: 'key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamDescription.new
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['StreamARN'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['StreamStatus'] = stub[:stream_status] unless stub[:stream_status].nil?
        data['StreamModeDetails'] = Stubs::StreamModeDetails.stub(stub[:stream_mode_details]) unless stub[:stream_mode_details].nil?
        data['Shards'] = Stubs::ShardList.stub(stub[:shards]) unless stub[:shards].nil?
        data['HasMoreShards'] = stub[:has_more_shards] unless stub[:has_more_shards].nil?
        data['RetentionPeriodHours'] = stub[:retention_period_hours] unless stub[:retention_period_hours].nil?
        data['StreamCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stream_creation_timestamp]).to_i unless stub[:stream_creation_timestamp].nil?
        data['EnhancedMonitoring'] = Stubs::EnhancedMonitoringList.stub(stub[:enhanced_monitoring]) unless stub[:enhanced_monitoring].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data
      end
    end

    # List Stubber for EnhancedMonitoringList
    class EnhancedMonitoringList
      def self.default(visited=[])
        return nil if visited.include?('EnhancedMonitoringList')
        visited = visited + ['EnhancedMonitoringList']
        [
          Stubs::EnhancedMetrics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EnhancedMetrics.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnhancedMetrics
    class EnhancedMetrics
      def self.default(visited=[])
        return nil if visited.include?('EnhancedMetrics')
        visited = visited + ['EnhancedMetrics']
        {
          shard_level_metrics: Stubs::MetricsNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EnhancedMetrics.new
        data = {}
        data['ShardLevelMetrics'] = Stubs::MetricsNameList.stub(stub[:shard_level_metrics]) unless stub[:shard_level_metrics].nil?
        data
      end
    end

    # List Stubber for MetricsNameList
    class MetricsNameList
      def self.default(visited=[])
        return nil if visited.include?('MetricsNameList')
        visited = visited + ['MetricsNameList']
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

    # List Stubber for ShardList
    class ShardList
      def self.default(visited=[])
        return nil if visited.include?('ShardList')
        visited = visited + ['ShardList']
        [
          Stubs::Shard.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Shard.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Shard
    class Shard
      def self.default(visited=[])
        return nil if visited.include?('Shard')
        visited = visited + ['Shard']
        {
          shard_id: 'shard_id',
          parent_shard_id: 'parent_shard_id',
          adjacent_parent_shard_id: 'adjacent_parent_shard_id',
          hash_key_range: Stubs::HashKeyRange.default(visited),
          sequence_number_range: Stubs::SequenceNumberRange.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Shard.new
        data = {}
        data['ShardId'] = stub[:shard_id] unless stub[:shard_id].nil?
        data['ParentShardId'] = stub[:parent_shard_id] unless stub[:parent_shard_id].nil?
        data['AdjacentParentShardId'] = stub[:adjacent_parent_shard_id] unless stub[:adjacent_parent_shard_id].nil?
        data['HashKeyRange'] = Stubs::HashKeyRange.stub(stub[:hash_key_range]) unless stub[:hash_key_range].nil?
        data['SequenceNumberRange'] = Stubs::SequenceNumberRange.stub(stub[:sequence_number_range]) unless stub[:sequence_number_range].nil?
        data
      end
    end

    # Structure Stubber for SequenceNumberRange
    class SequenceNumberRange
      def self.default(visited=[])
        return nil if visited.include?('SequenceNumberRange')
        visited = visited + ['SequenceNumberRange']
        {
          starting_sequence_number: 'starting_sequence_number',
          ending_sequence_number: 'ending_sequence_number',
        }
      end

      def self.stub(stub)
        stub ||= Types::SequenceNumberRange.new
        data = {}
        data['StartingSequenceNumber'] = stub[:starting_sequence_number] unless stub[:starting_sequence_number].nil?
        data['EndingSequenceNumber'] = stub[:ending_sequence_number] unless stub[:ending_sequence_number].nil?
        data
      end
    end

    # Structure Stubber for HashKeyRange
    class HashKeyRange
      def self.default(visited=[])
        return nil if visited.include?('HashKeyRange')
        visited = visited + ['HashKeyRange']
        {
          starting_hash_key: 'starting_hash_key',
          ending_hash_key: 'ending_hash_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::HashKeyRange.new
        data = {}
        data['StartingHashKey'] = stub[:starting_hash_key] unless stub[:starting_hash_key].nil?
        data['EndingHashKey'] = stub[:ending_hash_key] unless stub[:ending_hash_key].nil?
        data
      end
    end

    # Structure Stubber for StreamModeDetails
    class StreamModeDetails
      def self.default(visited=[])
        return nil if visited.include?('StreamModeDetails')
        visited = visited + ['StreamModeDetails']
        {
          stream_mode: 'stream_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamModeDetails.new
        data = {}
        data['StreamMode'] = stub[:stream_mode] unless stub[:stream_mode].nil?
        data
      end
    end

    # Operation Stubber for DescribeStreamConsumer
    class DescribeStreamConsumer
      def self.default(visited=[])
        {
          consumer_description: Stubs::ConsumerDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConsumerDescription'] = Stubs::ConsumerDescription.stub(stub[:consumer_description]) unless stub[:consumer_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ConsumerDescription
    class ConsumerDescription
      def self.default(visited=[])
        return nil if visited.include?('ConsumerDescription')
        visited = visited + ['ConsumerDescription']
        {
          consumer_name: 'consumer_name',
          consumer_arn: 'consumer_arn',
          consumer_status: 'consumer_status',
          consumer_creation_timestamp: Time.now,
          stream_arn: 'stream_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConsumerDescription.new
        data = {}
        data['ConsumerName'] = stub[:consumer_name] unless stub[:consumer_name].nil?
        data['ConsumerARN'] = stub[:consumer_arn] unless stub[:consumer_arn].nil?
        data['ConsumerStatus'] = stub[:consumer_status] unless stub[:consumer_status].nil?
        data['ConsumerCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:consumer_creation_timestamp]).to_i unless stub[:consumer_creation_timestamp].nil?
        data['StreamARN'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeStreamSummary
    class DescribeStreamSummary
      def self.default(visited=[])
        {
          stream_description_summary: Stubs::StreamDescriptionSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamDescriptionSummary'] = Stubs::StreamDescriptionSummary.stub(stub[:stream_description_summary]) unless stub[:stream_description_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for StreamDescriptionSummary
    class StreamDescriptionSummary
      def self.default(visited=[])
        return nil if visited.include?('StreamDescriptionSummary')
        visited = visited + ['StreamDescriptionSummary']
        {
          stream_name: 'stream_name',
          stream_arn: 'stream_arn',
          stream_status: 'stream_status',
          stream_mode_details: Stubs::StreamModeDetails.default(visited),
          retention_period_hours: 1,
          stream_creation_timestamp: Time.now,
          enhanced_monitoring: Stubs::EnhancedMonitoringList.default(visited),
          encryption_type: 'encryption_type',
          key_id: 'key_id',
          open_shard_count: 1,
          consumer_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamDescriptionSummary.new
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['StreamARN'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['StreamStatus'] = stub[:stream_status] unless stub[:stream_status].nil?
        data['StreamModeDetails'] = Stubs::StreamModeDetails.stub(stub[:stream_mode_details]) unless stub[:stream_mode_details].nil?
        data['RetentionPeriodHours'] = stub[:retention_period_hours] unless stub[:retention_period_hours].nil?
        data['StreamCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stream_creation_timestamp]).to_i unless stub[:stream_creation_timestamp].nil?
        data['EnhancedMonitoring'] = Stubs::EnhancedMonitoringList.stub(stub[:enhanced_monitoring]) unless stub[:enhanced_monitoring].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['OpenShardCount'] = stub[:open_shard_count] unless stub[:open_shard_count].nil?
        data['ConsumerCount'] = stub[:consumer_count] unless stub[:consumer_count].nil?
        data
      end
    end

    # Operation Stubber for DisableEnhancedMonitoring
    class DisableEnhancedMonitoring
      def self.default(visited=[])
        {
          stream_name: 'stream_name',
          current_shard_level_metrics: Stubs::MetricsNameList.default(visited),
          desired_shard_level_metrics: Stubs::MetricsNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['CurrentShardLevelMetrics'] = Stubs::MetricsNameList.stub(stub[:current_shard_level_metrics]) unless stub[:current_shard_level_metrics].nil?
        data['DesiredShardLevelMetrics'] = Stubs::MetricsNameList.stub(stub[:desired_shard_level_metrics]) unless stub[:desired_shard_level_metrics].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableEnhancedMonitoring
    class EnableEnhancedMonitoring
      def self.default(visited=[])
        {
          stream_name: 'stream_name',
          current_shard_level_metrics: Stubs::MetricsNameList.default(visited),
          desired_shard_level_metrics: Stubs::MetricsNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['CurrentShardLevelMetrics'] = Stubs::MetricsNameList.stub(stub[:current_shard_level_metrics]) unless stub[:current_shard_level_metrics].nil?
        data['DesiredShardLevelMetrics'] = Stubs::MetricsNameList.stub(stub[:desired_shard_level_metrics]) unless stub[:desired_shard_level_metrics].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRecords
    class GetRecords
      def self.default(visited=[])
        {
          records: Stubs::RecordList.default(visited),
          next_shard_iterator: 'next_shard_iterator',
          millis_behind_latest: 1,
          child_shards: Stubs::ChildShardList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Records'] = Stubs::RecordList.stub(stub[:records]) unless stub[:records].nil?
        data['NextShardIterator'] = stub[:next_shard_iterator] unless stub[:next_shard_iterator].nil?
        data['MillisBehindLatest'] = stub[:millis_behind_latest] unless stub[:millis_behind_latest].nil?
        data['ChildShards'] = Stubs::ChildShardList.stub(stub[:child_shards]) unless stub[:child_shards].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ChildShardList
    class ChildShardList
      def self.default(visited=[])
        return nil if visited.include?('ChildShardList')
        visited = visited + ['ChildShardList']
        [
          Stubs::ChildShard.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChildShard.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChildShard
    class ChildShard
      def self.default(visited=[])
        return nil if visited.include?('ChildShard')
        visited = visited + ['ChildShard']
        {
          shard_id: 'shard_id',
          parent_shards: Stubs::ShardIdList.default(visited),
          hash_key_range: Stubs::HashKeyRange.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChildShard.new
        data = {}
        data['ShardId'] = stub[:shard_id] unless stub[:shard_id].nil?
        data['ParentShards'] = Stubs::ShardIdList.stub(stub[:parent_shards]) unless stub[:parent_shards].nil?
        data['HashKeyRange'] = Stubs::HashKeyRange.stub(stub[:hash_key_range]) unless stub[:hash_key_range].nil?
        data
      end
    end

    # List Stubber for ShardIdList
    class ShardIdList
      def self.default(visited=[])
        return nil if visited.include?('ShardIdList')
        visited = visited + ['ShardIdList']
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

    # List Stubber for RecordList
    class RecordList
      def self.default(visited=[])
        return nil if visited.include?('RecordList')
        visited = visited + ['RecordList']
        [
          Stubs::Record.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Record.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Record
    class Record
      def self.default(visited=[])
        return nil if visited.include?('Record')
        visited = visited + ['Record']
        {
          sequence_number: 'sequence_number',
          approximate_arrival_timestamp: Time.now,
          data: 'data',
          partition_key: 'partition_key',
          encryption_type: 'encryption_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Record.new
        data = {}
        data['SequenceNumber'] = stub[:sequence_number] unless stub[:sequence_number].nil?
        data['ApproximateArrivalTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:approximate_arrival_timestamp]).to_i unless stub[:approximate_arrival_timestamp].nil?
        data['Data'] = Base64::encode64(stub[:data]) unless stub[:data].nil?
        data['PartitionKey'] = stub[:partition_key] unless stub[:partition_key].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data
      end
    end

    # Operation Stubber for GetShardIterator
    class GetShardIterator
      def self.default(visited=[])
        {
          shard_iterator: 'shard_iterator',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ShardIterator'] = stub[:shard_iterator] unless stub[:shard_iterator].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for IncreaseStreamRetentionPeriod
    class IncreaseStreamRetentionPeriod
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListShards
    class ListShards
      def self.default(visited=[])
        {
          shards: Stubs::ShardList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Shards'] = Stubs::ShardList.stub(stub[:shards]) unless stub[:shards].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListStreamConsumers
    class ListStreamConsumers
      def self.default(visited=[])
        {
          consumers: Stubs::ConsumerList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Consumers'] = Stubs::ConsumerList.stub(stub[:consumers]) unless stub[:consumers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConsumerList
    class ConsumerList
      def self.default(visited=[])
        return nil if visited.include?('ConsumerList')
        visited = visited + ['ConsumerList']
        [
          Stubs::Consumer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Consumer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Consumer
    class Consumer
      def self.default(visited=[])
        return nil if visited.include?('Consumer')
        visited = visited + ['Consumer']
        {
          consumer_name: 'consumer_name',
          consumer_arn: 'consumer_arn',
          consumer_status: 'consumer_status',
          consumer_creation_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Consumer.new
        data = {}
        data['ConsumerName'] = stub[:consumer_name] unless stub[:consumer_name].nil?
        data['ConsumerARN'] = stub[:consumer_arn] unless stub[:consumer_arn].nil?
        data['ConsumerStatus'] = stub[:consumer_status] unless stub[:consumer_status].nil?
        data['ConsumerCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:consumer_creation_timestamp]).to_i unless stub[:consumer_creation_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListStreams
    class ListStreams
      def self.default(visited=[])
        {
          stream_names: Stubs::StreamNameList.default(visited),
          has_more_streams: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamNames'] = Stubs::StreamNameList.stub(stub[:stream_names]) unless stub[:stream_names].nil?
        data['HasMoreStreams'] = stub[:has_more_streams] unless stub[:has_more_streams].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StreamNameList
    class StreamNameList
      def self.default(visited=[])
        return nil if visited.include?('StreamNameList')
        visited = visited + ['StreamNameList']
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

    # Operation Stubber for ListTagsForStream
    class ListTagsForStream
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
          has_more_tags: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['HasMoreTags'] = stub[:has_more_tags] unless stub[:has_more_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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

    # Operation Stubber for MergeShards
    class MergeShards
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRecord
    class PutRecord
      def self.default(visited=[])
        {
          shard_id: 'shard_id',
          sequence_number: 'sequence_number',
          encryption_type: 'encryption_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ShardId'] = stub[:shard_id] unless stub[:shard_id].nil?
        data['SequenceNumber'] = stub[:sequence_number] unless stub[:sequence_number].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRecords
    class PutRecords
      def self.default(visited=[])
        {
          failed_record_count: 1,
          records: Stubs::PutRecordsResultEntryList.default(visited),
          encryption_type: 'encryption_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedRecordCount'] = stub[:failed_record_count] unless stub[:failed_record_count].nil?
        data['Records'] = Stubs::PutRecordsResultEntryList.stub(stub[:records]) unless stub[:records].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PutRecordsResultEntryList
    class PutRecordsResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('PutRecordsResultEntryList')
        visited = visited + ['PutRecordsResultEntryList']
        [
          Stubs::PutRecordsResultEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PutRecordsResultEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PutRecordsResultEntry
    class PutRecordsResultEntry
      def self.default(visited=[])
        return nil if visited.include?('PutRecordsResultEntry')
        visited = visited + ['PutRecordsResultEntry']
        {
          sequence_number: 'sequence_number',
          shard_id: 'shard_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PutRecordsResultEntry.new
        data = {}
        data['SequenceNumber'] = stub[:sequence_number] unless stub[:sequence_number].nil?
        data['ShardId'] = stub[:shard_id] unless stub[:shard_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for RegisterStreamConsumer
    class RegisterStreamConsumer
      def self.default(visited=[])
        {
          consumer: Stubs::Consumer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Consumer'] = Stubs::Consumer.stub(stub[:consumer]) unless stub[:consumer].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTagsFromStream
    class RemoveTagsFromStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SplitShard
    class SplitShard
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartStreamEncryption
    class StartStreamEncryption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopStreamEncryption
    class StopStreamEncryption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SubscribeToShard
    class SubscribeToShard
      def self.default(visited=[])
        {
          event_stream: Stubs::SubscribeToShardEventStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventStream'] = Stubs::SubscribeToShardEventStream.stub(stub[:event_stream]) unless stub[:event_stream].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Union Stubber for SubscribeToShardEventStream
    class SubscribeToShardEventStream
      def self.default(visited=[])
        return nil if visited.include?('SubscribeToShardEventStream')
        visited = visited + ['SubscribeToShardEventStream']
        {
          subscribe_to_shard_event: Stubs::SubscribeToShardEvent.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::SubscribeToShardEventStream::SubscribeToShardEvent
          data['SubscribeToShardEvent'] = (Stubs::SubscribeToShardEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::ResourceNotFoundException
          data['ResourceNotFoundException'] = (Stubs::ResourceNotFoundException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::ResourceInUseException
          data['ResourceInUseException'] = (Stubs::ResourceInUseException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsDisabledException
          data['KMSDisabledException'] = (Stubs::KMSDisabledException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsInvalidStateException
          data['KMSInvalidStateException'] = (Stubs::KMSInvalidStateException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsAccessDeniedException
          data['KMSAccessDeniedException'] = (Stubs::KMSAccessDeniedException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsNotFoundException
          data['KMSNotFoundException'] = (Stubs::KMSNotFoundException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsOptInRequired
          data['KMSOptInRequired'] = (Stubs::KMSOptInRequired.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsThrottlingException
          data['KMSThrottlingException'] = (Stubs::KMSThrottlingException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::InternalFailureException
          data['InternalFailureException'] = (Stubs::InternalFailureException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::SubscribeToShardEventStream"
        end

        data
      end
    end

    # Structure Stubber for InternalFailureException
    class InternalFailureException
      def self.default(visited=[])
        return nil if visited.include?('InternalFailureException')
        visited = visited + ['InternalFailureException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::InternalFailureException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for KMSThrottlingException
    class KMSThrottlingException
      def self.default(visited=[])
        return nil if visited.include?('KMSThrottlingException')
        visited = visited + ['KMSThrottlingException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::KMSThrottlingException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for KMSOptInRequired
    class KMSOptInRequired
      def self.default(visited=[])
        return nil if visited.include?('KMSOptInRequired')
        visited = visited + ['KMSOptInRequired']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::KMSOptInRequired.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for KMSNotFoundException
    class KMSNotFoundException
      def self.default(visited=[])
        return nil if visited.include?('KMSNotFoundException')
        visited = visited + ['KMSNotFoundException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::KMSNotFoundException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for KMSAccessDeniedException
    class KMSAccessDeniedException
      def self.default(visited=[])
        return nil if visited.include?('KMSAccessDeniedException')
        visited = visited + ['KMSAccessDeniedException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::KMSAccessDeniedException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for KMSInvalidStateException
    class KMSInvalidStateException
      def self.default(visited=[])
        return nil if visited.include?('KMSInvalidStateException')
        visited = visited + ['KMSInvalidStateException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::KMSInvalidStateException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for KMSDisabledException
    class KMSDisabledException
      def self.default(visited=[])
        return nil if visited.include?('KMSDisabledException')
        visited = visited + ['KMSDisabledException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::KMSDisabledException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ResourceInUseException
    class ResourceInUseException
      def self.default(visited=[])
        return nil if visited.include?('ResourceInUseException')
        visited = visited + ['ResourceInUseException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceInUseException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ResourceNotFoundException
    class ResourceNotFoundException
      def self.default(visited=[])
        return nil if visited.include?('ResourceNotFoundException')
        visited = visited + ['ResourceNotFoundException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceNotFoundException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for SubscribeToShardEvent
    class SubscribeToShardEvent
      def self.default(visited=[])
        return nil if visited.include?('SubscribeToShardEvent')
        visited = visited + ['SubscribeToShardEvent']
        {
          records: Stubs::RecordList.default(visited),
          continuation_sequence_number: 'continuation_sequence_number',
          millis_behind_latest: 1,
          child_shards: Stubs::ChildShardList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubscribeToShardEvent.new
        data = {}
        data['Records'] = Stubs::RecordList.stub(stub[:records]) unless stub[:records].nil?
        data['ContinuationSequenceNumber'] = stub[:continuation_sequence_number] unless stub[:continuation_sequence_number].nil?
        data['MillisBehindLatest'] = stub[:millis_behind_latest] unless stub[:millis_behind_latest].nil?
        data['ChildShards'] = Stubs::ChildShardList.stub(stub[:child_shards]) unless stub[:child_shards].nil?
        data
      end
    end

    # Operation Stubber for UpdateShardCount
    class UpdateShardCount
      def self.default(visited=[])
        {
          stream_name: 'stream_name',
          current_shard_count: 1,
          target_shard_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['CurrentShardCount'] = stub[:current_shard_count] unless stub[:current_shard_count].nil?
        data['TargetShardCount'] = stub[:target_shard_count] unless stub[:target_shard_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStreamMode
    class UpdateStreamMode
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
