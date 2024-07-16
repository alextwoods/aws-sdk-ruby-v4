# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::Kinesis
  # @api private
  module Stubs

    class AccessDeniedException
      def self.build(params, context:)
        Params::AccessDeniedException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::AccessDeniedException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'AccessDeniedException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class AddTagsToStream
      def self.build(params, context:)
        Params::AddTagsToStreamOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::AddTagsToStreamOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ChildShard
      def self.default(visited = [])
        return nil if visited.include?('ChildShard')
        visited = visited + ['ChildShard']
        {
          shard_id: 'shard_id',
          parent_shards: ShardIdList.default(visited),
          hash_key_range: HashKeyRange.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChildShard.new
        data = {}
        data['ShardId'] = stub[:shard_id] unless stub[:shard_id].nil?
        data['ParentShards'] = ShardIdList.stub(stub[:parent_shards]) unless stub[:parent_shards].nil?
        data['HashKeyRange'] = HashKeyRange.stub(stub[:hash_key_range]) unless stub[:hash_key_range].nil?
        data
      end
    end

    class ChildShardList
      def self.default(visited = [])
        return nil if visited.include?('ChildShardList')
        visited = visited + ['ChildShardList']
        [
          ChildShard.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ChildShard.stub(element) unless element.nil?
        end
        data
      end
    end

    class Consumer
      def self.default(visited = [])
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

    class ConsumerDescription
      def self.default(visited = [])
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

    class ConsumerList
      def self.default(visited = [])
        return nil if visited.include?('ConsumerList')
        visited = visited + ['ConsumerList']
        [
          Consumer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Consumer.stub(element) unless element.nil?
        end
        data
      end
    end

    class CreateStream
      def self.build(params, context:)
        Params::CreateStreamOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateStreamOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DecreaseStreamRetentionPeriod
      def self.build(params, context:)
        Params::DecreaseStreamRetentionPeriodOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DecreaseStreamRetentionPeriodOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DeleteResourcePolicy
      def self.build(params, context:)
        Params::DeleteResourcePolicyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteResourcePolicyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DeleteStream
      def self.build(params, context:)
        Params::DeleteStreamOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteStreamOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DeregisterStreamConsumer
      def self.build(params, context:)
        Params::DeregisterStreamConsumerOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeregisterStreamConsumerOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeLimits
      def self.build(params, context:)
        Params::DescribeLimitsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeLimitsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeStream
      def self.build(params, context:)
        Params::DescribeStreamOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeStreamOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          stream_description: StreamDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamDescription'] = StreamDescription.stub(stub[:stream_description]) unless stub[:stream_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeStreamConsumer
      def self.build(params, context:)
        Params::DescribeStreamConsumerOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeStreamConsumerOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          consumer_description: ConsumerDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConsumerDescription'] = ConsumerDescription.stub(stub[:consumer_description]) unless stub[:consumer_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeStreamSummary
      def self.build(params, context:)
        Params::DescribeStreamSummaryOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeStreamSummaryOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          stream_description_summary: StreamDescriptionSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamDescriptionSummary'] = StreamDescriptionSummary.stub(stub[:stream_description_summary]) unless stub[:stream_description_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DisableEnhancedMonitoring
      def self.build(params, context:)
        Params::DisableEnhancedMonitoringOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DisableEnhancedMonitoringOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          stream_name: 'stream_name',
          current_shard_level_metrics: MetricsNameList.default(visited),
          desired_shard_level_metrics: MetricsNameList.default(visited),
          stream_arn: 'stream_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['CurrentShardLevelMetrics'] = MetricsNameList.stub(stub[:current_shard_level_metrics]) unless stub[:current_shard_level_metrics].nil?
        data['DesiredShardLevelMetrics'] = MetricsNameList.stub(stub[:desired_shard_level_metrics]) unless stub[:desired_shard_level_metrics].nil?
        data['StreamARN'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class EnableEnhancedMonitoring
      def self.build(params, context:)
        Params::EnableEnhancedMonitoringOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::EnableEnhancedMonitoringOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          stream_name: 'stream_name',
          current_shard_level_metrics: MetricsNameList.default(visited),
          desired_shard_level_metrics: MetricsNameList.default(visited),
          stream_arn: 'stream_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['CurrentShardLevelMetrics'] = MetricsNameList.stub(stub[:current_shard_level_metrics]) unless stub[:current_shard_level_metrics].nil?
        data['DesiredShardLevelMetrics'] = MetricsNameList.stub(stub[:desired_shard_level_metrics]) unless stub[:desired_shard_level_metrics].nil?
        data['StreamARN'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class EnhancedMetrics
      def self.default(visited = [])
        return nil if visited.include?('EnhancedMetrics')
        visited = visited + ['EnhancedMetrics']
        {
          shard_level_metrics: MetricsNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EnhancedMetrics.new
        data = {}
        data['ShardLevelMetrics'] = MetricsNameList.stub(stub[:shard_level_metrics]) unless stub[:shard_level_metrics].nil?
        data
      end
    end

    class EnhancedMonitoringList
      def self.default(visited = [])
        return nil if visited.include?('EnhancedMonitoringList')
        visited = visited + ['EnhancedMonitoringList']
        [
          EnhancedMetrics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnhancedMetrics.stub(element) unless element.nil?
        end
        data
      end
    end

    class ExpiredIteratorException
      def self.build(params, context:)
        Params::ExpiredIteratorException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExpiredIteratorException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'ExpiredIteratorException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ExpiredNextTokenException
      def self.build(params, context:)
        Params::ExpiredNextTokenException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExpiredNextTokenException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'ExpiredNextTokenException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetRecords
      def self.build(params, context:)
        Params::GetRecordsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetRecordsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          records: RecordList.default(visited),
          next_shard_iterator: 'next_shard_iterator',
          millis_behind_latest: 1,
          child_shards: ChildShardList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Records'] = RecordList.stub(stub[:records]) unless stub[:records].nil?
        data['NextShardIterator'] = stub[:next_shard_iterator] unless stub[:next_shard_iterator].nil?
        data['MillisBehindLatest'] = stub[:millis_behind_latest] unless stub[:millis_behind_latest].nil?
        data['ChildShards'] = ChildShardList.stub(stub[:child_shards]) unless stub[:child_shards].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GetResourcePolicy
      def self.build(params, context:)
        Params::GetResourcePolicyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetResourcePolicyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GetShardIterator
      def self.build(params, context:)
        Params::GetShardIteratorOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetShardIteratorOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          shard_iterator: 'shard_iterator',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ShardIterator'] = stub[:shard_iterator] unless stub[:shard_iterator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class HashKeyRange
      def self.default(visited = [])
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

    class IncreaseStreamRetentionPeriod
      def self.build(params, context:)
        Params::IncreaseStreamRetentionPeriodOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::IncreaseStreamRetentionPeriodOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class InternalFailureException
      def self.build(params, context:)
        Params::InternalFailureException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InternalFailureException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 500
        data = {}
        data['__type'] = 'InternalFailureException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidArgumentException
      def self.build(params, context:)
        Params::InvalidArgumentException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidArgumentException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'InvalidArgumentException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSAccessDeniedException
      def self.build(params, context:)
        Params::KMSAccessDeniedException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSAccessDeniedException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'KMSAccessDeniedException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSDisabledException
      def self.build(params, context:)
        Params::KMSDisabledException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSDisabledException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'KMSDisabledException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSInvalidStateException
      def self.build(params, context:)
        Params::KMSInvalidStateException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSInvalidStateException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'KMSInvalidStateException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSNotFoundException
      def self.build(params, context:)
        Params::KMSNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'KMSNotFoundException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSOptInRequired
      def self.build(params, context:)
        Params::KMSOptInRequired.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSOptInRequired.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'KMSOptInRequired'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSThrottlingException
      def self.build(params, context:)
        Params::KMSThrottlingException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSThrottlingException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'KMSThrottlingException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class LimitExceededException
      def self.build(params, context:)
        Params::LimitExceededException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::LimitExceededException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'LimitExceededException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListShards
      def self.build(params, context:)
        Params::ListShardsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListShardsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          shards: ShardList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Shards'] = ShardList.stub(stub[:shards]) unless stub[:shards].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListStreamConsumers
      def self.build(params, context:)
        Params::ListStreamConsumersOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListStreamConsumersOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          consumers: ConsumerList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Consumers'] = ConsumerList.stub(stub[:consumers]) unless stub[:consumers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListStreams
      def self.build(params, context:)
        Params::ListStreamsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListStreamsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          stream_names: StreamNameList.default(visited),
          has_more_streams: false,
          next_token: 'next_token',
          stream_summaries: StreamSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamNames'] = StreamNameList.stub(stub[:stream_names]) unless stub[:stream_names].nil?
        data['HasMoreStreams'] = stub[:has_more_streams] unless stub[:has_more_streams].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['StreamSummaries'] = StreamSummaryList.stub(stub[:stream_summaries]) unless stub[:stream_summaries].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListTagsForStream
      def self.build(params, context:)
        Params::ListTagsForStreamOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListTagsForStreamOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          tags: TagList.default(visited),
          has_more_tags: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['HasMoreTags'] = stub[:has_more_tags] unless stub[:has_more_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class MergeShards
      def self.build(params, context:)
        Params::MergeShardsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::MergeShardsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class MetricsNameList
      def self.default(visited = [])
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

    class ProvisionedThroughputExceededException
      def self.build(params, context:)
        Params::ProvisionedThroughputExceededException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ProvisionedThroughputExceededException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'ProvisionedThroughputExceededException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class PutRecord
      def self.build(params, context:)
        Params::PutRecordOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::PutRecordOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class PutRecords
      def self.build(params, context:)
        Params::PutRecordsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::PutRecordsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          failed_record_count: 1,
          records: PutRecordsResultEntryList.default(visited),
          encryption_type: 'encryption_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedRecordCount'] = stub[:failed_record_count] unless stub[:failed_record_count].nil?
        data['Records'] = PutRecordsResultEntryList.stub(stub[:records]) unless stub[:records].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class PutRecordsResultEntry
      def self.default(visited = [])
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

    class PutRecordsResultEntryList
      def self.default(visited = [])
        return nil if visited.include?('PutRecordsResultEntryList')
        visited = visited + ['PutRecordsResultEntryList']
        [
          PutRecordsResultEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PutRecordsResultEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    class PutResourcePolicy
      def self.build(params, context:)
        Params::PutResourcePolicyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::PutResourcePolicyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class Record
      def self.default(visited = [])
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
        data['Data'] = ::Base64::strict_encode64(stub[:data]) unless stub[:data].nil?
        data['PartitionKey'] = stub[:partition_key] unless stub[:partition_key].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data
      end
    end

    class RecordList
      def self.default(visited = [])
        return nil if visited.include?('RecordList')
        visited = visited + ['RecordList']
        [
          Record.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Record.stub(element) unless element.nil?
        end
        data
      end
    end

    class RegisterStreamConsumer
      def self.build(params, context:)
        Params::RegisterStreamConsumerOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::RegisterStreamConsumerOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          consumer: Consumer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Consumer'] = Consumer.stub(stub[:consumer]) unless stub[:consumer].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class RemoveTagsFromStream
      def self.build(params, context:)
        Params::RemoveTagsFromStreamOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::RemoveTagsFromStreamOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ResourceInUseException
      def self.build(params, context:)
        Params::ResourceInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ResourceInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'ResourceInUseException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ResourceNotFoundException
      def self.build(params, context:)
        Params::ResourceNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ResourceNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'ResourceNotFoundException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class SequenceNumberRange
      def self.default(visited = [])
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

    class Shard
      def self.default(visited = [])
        return nil if visited.include?('Shard')
        visited = visited + ['Shard']
        {
          shard_id: 'shard_id',
          parent_shard_id: 'parent_shard_id',
          adjacent_parent_shard_id: 'adjacent_parent_shard_id',
          hash_key_range: HashKeyRange.default(visited),
          sequence_number_range: SequenceNumberRange.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Shard.new
        data = {}
        data['ShardId'] = stub[:shard_id] unless stub[:shard_id].nil?
        data['ParentShardId'] = stub[:parent_shard_id] unless stub[:parent_shard_id].nil?
        data['AdjacentParentShardId'] = stub[:adjacent_parent_shard_id] unless stub[:adjacent_parent_shard_id].nil?
        data['HashKeyRange'] = HashKeyRange.stub(stub[:hash_key_range]) unless stub[:hash_key_range].nil?
        data['SequenceNumberRange'] = SequenceNumberRange.stub(stub[:sequence_number_range]) unless stub[:sequence_number_range].nil?
        data
      end
    end

    class ShardIdList
      def self.default(visited = [])
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

    class ShardList
      def self.default(visited = [])
        return nil if visited.include?('ShardList')
        visited = visited + ['ShardList']
        [
          Shard.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Shard.stub(element) unless element.nil?
        end
        data
      end
    end

    class SplitShard
      def self.build(params, context:)
        Params::SplitShardOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::SplitShardOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class StartStreamEncryption
      def self.build(params, context:)
        Params::StartStreamEncryptionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StartStreamEncryptionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class StopStreamEncryption
      def self.build(params, context:)
        Params::StopStreamEncryptionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StopStreamEncryptionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class StreamDescription
      def self.default(visited = [])
        return nil if visited.include?('StreamDescription')
        visited = visited + ['StreamDescription']
        {
          stream_name: 'stream_name',
          stream_arn: 'stream_arn',
          stream_status: 'stream_status',
          stream_mode_details: StreamModeDetails.default(visited),
          shards: ShardList.default(visited),
          has_more_shards: false,
          retention_period_hours: 1,
          stream_creation_timestamp: Time.now,
          enhanced_monitoring: EnhancedMonitoringList.default(visited),
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
        data['StreamModeDetails'] = StreamModeDetails.stub(stub[:stream_mode_details]) unless stub[:stream_mode_details].nil?
        data['Shards'] = ShardList.stub(stub[:shards]) unless stub[:shards].nil?
        data['HasMoreShards'] = stub[:has_more_shards] unless stub[:has_more_shards].nil?
        data['RetentionPeriodHours'] = stub[:retention_period_hours] unless stub[:retention_period_hours].nil?
        data['StreamCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stream_creation_timestamp]).to_i unless stub[:stream_creation_timestamp].nil?
        data['EnhancedMonitoring'] = EnhancedMonitoringList.stub(stub[:enhanced_monitoring]) unless stub[:enhanced_monitoring].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data
      end
    end

    class StreamDescriptionSummary
      def self.default(visited = [])
        return nil if visited.include?('StreamDescriptionSummary')
        visited = visited + ['StreamDescriptionSummary']
        {
          stream_name: 'stream_name',
          stream_arn: 'stream_arn',
          stream_status: 'stream_status',
          stream_mode_details: StreamModeDetails.default(visited),
          retention_period_hours: 1,
          stream_creation_timestamp: Time.now,
          enhanced_monitoring: EnhancedMonitoringList.default(visited),
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
        data['StreamModeDetails'] = StreamModeDetails.stub(stub[:stream_mode_details]) unless stub[:stream_mode_details].nil?
        data['RetentionPeriodHours'] = stub[:retention_period_hours] unless stub[:retention_period_hours].nil?
        data['StreamCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stream_creation_timestamp]).to_i unless stub[:stream_creation_timestamp].nil?
        data['EnhancedMonitoring'] = EnhancedMonitoringList.stub(stub[:enhanced_monitoring]) unless stub[:enhanced_monitoring].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['OpenShardCount'] = stub[:open_shard_count] unless stub[:open_shard_count].nil?
        data['ConsumerCount'] = stub[:consumer_count] unless stub[:consumer_count].nil?
        data
      end
    end

    class StreamModeDetails
      def self.default(visited = [])
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

    class StreamNameList
      def self.default(visited = [])
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

    class StreamSummary
      def self.default(visited = [])
        return nil if visited.include?('StreamSummary')
        visited = visited + ['StreamSummary']
        {
          stream_name: 'stream_name',
          stream_arn: 'stream_arn',
          stream_status: 'stream_status',
          stream_mode_details: StreamModeDetails.default(visited),
          stream_creation_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamSummary.new
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['StreamARN'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['StreamStatus'] = stub[:stream_status] unless stub[:stream_status].nil?
        data['StreamModeDetails'] = StreamModeDetails.stub(stub[:stream_mode_details]) unless stub[:stream_mode_details].nil?
        data['StreamCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stream_creation_timestamp]).to_i unless stub[:stream_creation_timestamp].nil?
        data
      end
    end

    class StreamSummaryList
      def self.default(visited = [])
        return nil if visited.include?('StreamSummaryList')
        visited = visited + ['StreamSummaryList']
        [
          StreamSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StreamSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class SubscribeToShard
      def self.build(params, context:)
        Params::SubscribeToShardOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::SubscribeToShardOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          event_stream: SubscribeToShardEventStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventStream'] = SubscribeToShardEventStream.stub(stub[:event_stream]) unless stub[:event_stream].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class SubscribeToShardEvent
      def self.default(visited = [])
        return nil if visited.include?('SubscribeToShardEvent')
        visited = visited + ['SubscribeToShardEvent']
        {
          records: RecordList.default(visited),
          continuation_sequence_number: 'continuation_sequence_number',
          millis_behind_latest: 1,
          child_shards: ChildShardList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubscribeToShardEvent.new
        data = {}
        data['Records'] = RecordList.stub(stub[:records]) unless stub[:records].nil?
        data['ContinuationSequenceNumber'] = stub[:continuation_sequence_number] unless stub[:continuation_sequence_number].nil?
        data['MillisBehindLatest'] = stub[:millis_behind_latest] unless stub[:millis_behind_latest].nil?
        data['ChildShards'] = ChildShardList.stub(stub[:child_shards]) unless stub[:child_shards].nil?
        data
      end
    end

    class SubscribeToShardEventStream
      def self.default(visited = [])
        return nil if visited.include?('SubscribeToShardEventStream')
        visited = visited + ['SubscribeToShardEventStream']
        {
          subscribe_to_shard_event: SubscribeToShardEvent.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::SubscribeToShardEventStream::SubscribeToShardEvent
          data['SubscribeToShardEvent'] = (SubscribeToShardEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::ResourceNotFoundException
          data['ResourceNotFoundException'] = (ResourceNotFoundException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::ResourceInUseException
          data['ResourceInUseException'] = (ResourceInUseException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsDisabledException
          data['KMSDisabledException'] = (KMSDisabledException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsInvalidStateException
          data['KMSInvalidStateException'] = (KMSInvalidStateException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsAccessDeniedException
          data['KMSAccessDeniedException'] = (KMSAccessDeniedException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsNotFoundException
          data['KMSNotFoundException'] = (KMSNotFoundException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsOptInRequired
          data['KMSOptInRequired'] = (KMSOptInRequired.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::KmsThrottlingException
          data['KMSThrottlingException'] = (KMSThrottlingException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::SubscribeToShardEventStream::InternalFailureException
          data['InternalFailureException'] = (InternalFailureException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::SubscribeToShardEventStream"
        end

        data
      end
    end

    class Tag
      def self.default(visited = [])
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

    class TagList
      def self.default(visited = [])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    class UpdateShardCount
      def self.build(params, context:)
        Params::UpdateShardCountOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateShardCountOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          stream_name: 'stream_name',
          current_shard_count: 1,
          target_shard_count: 1,
          stream_arn: 'stream_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['CurrentShardCount'] = stub[:current_shard_count] unless stub[:current_shard_count].nil?
        data['TargetShardCount'] = stub[:target_shard_count] unless stub[:target_shard_count].nil?
        data['StreamARN'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateStreamMode
      def self.build(params, context:)
        Params::UpdateStreamModeOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateStreamModeOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ValidationException
      def self.build(params, context:)
        Params::ValidationException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ValidationException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'ValidationException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
