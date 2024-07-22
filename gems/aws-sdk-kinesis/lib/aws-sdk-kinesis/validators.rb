# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Kinesis
  # @api private
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class AddTagsToStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AddTagsToStreamInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.tags, context: "#{context}[:tags]")
        TagMap.validate!(input.tags, context: "#{context}[:tags]") unless input.tags.nil?
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class AddTagsToStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AddTagsToStreamOutput, context: context)
      end
    end

    class ChildShard
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ChildShard, context: context)
        Hearth::Validator.validate_required!(input.shard_id, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_types!(input.shard_id, ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_required!(input.parent_shards, context: "#{context}[:parent_shards]")
        ShardIdList.validate!(input.parent_shards, context: "#{context}[:parent_shards]") unless input.parent_shards.nil?
        Hearth::Validator.validate_required!(input.hash_key_range, context: "#{context}[:hash_key_range]")
        HashKeyRange.validate!(input.hash_key_range, context: "#{context}[:hash_key_range]") unless input.hash_key_range.nil?
      end
    end

    class ChildShardList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChildShard.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Consumer
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Consumer, context: context)
        Hearth::Validator.validate_required!(input.consumer_name, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate_types!(input.consumer_name, ::String, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate_required!(input.consumer_arn, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate_types!(input.consumer_arn, ::String, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate_required!(input.consumer_status, context: "#{context}[:consumer_status]")
        Hearth::Validator.validate_types!(input.consumer_status, ::String, context: "#{context}[:consumer_status]")
        Hearth::Validator.validate_required!(input.consumer_creation_timestamp, context: "#{context}[:consumer_creation_timestamp]")
        Hearth::Validator.validate_types!(input.consumer_creation_timestamp, ::Time, context: "#{context}[:consumer_creation_timestamp]")
      end
    end

    class ConsumerDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConsumerDescription, context: context)
        Hearth::Validator.validate_required!(input.consumer_name, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate_types!(input.consumer_name, ::String, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate_required!(input.consumer_arn, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate_types!(input.consumer_arn, ::String, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate_required!(input.consumer_status, context: "#{context}[:consumer_status]")
        Hearth::Validator.validate_types!(input.consumer_status, ::String, context: "#{context}[:consumer_status]")
        Hearth::Validator.validate_required!(input.consumer_creation_timestamp, context: "#{context}[:consumer_creation_timestamp]")
        Hearth::Validator.validate_types!(input.consumer_creation_timestamp, ::Time, context: "#{context}[:consumer_creation_timestamp]")
        Hearth::Validator.validate_required!(input.stream_arn, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class ConsumerList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Consumer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateStreamInput, context: context)
        Hearth::Validator.validate_required!(input.stream_name, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.shard_count, ::Integer, context: "#{context}[:shard_count]")
        StreamModeDetails.validate!(input.stream_mode_details, context: "#{context}[:stream_mode_details]") unless input.stream_mode_details.nil?
      end
    end

    class CreateStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateStreamOutput, context: context)
      end
    end

    class DecreaseStreamRetentionPeriodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DecreaseStreamRetentionPeriodInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.retention_period_hours, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate_types!(input.retention_period_hours, ::Integer, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DecreaseStreamRetentionPeriodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DecreaseStreamRetentionPeriodOutput, context: context)
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate_required!(input.resource_arn, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_types!(input.resource_arn, ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DeleteStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteStreamInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.enforce_consumer_deletion, ::TrueClass, ::FalseClass, context: "#{context}[:enforce_consumer_deletion]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DeleteStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteStreamOutput, context: context)
      end
    end

    class DeregisterStreamConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeregisterStreamConsumerInput, context: context)
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.consumer_name, ::String, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate_types!(input.consumer_arn, ::String, context: "#{context}[:consumer_arn]")
      end
    end

    class DeregisterStreamConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeregisterStreamConsumerOutput, context: context)
      end
    end

    class DescribeLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeLimitsInput, context: context)
      end
    end

    class DescribeLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeLimitsOutput, context: context)
        Hearth::Validator.validate_required!(input.shard_limit, context: "#{context}[:shard_limit]")
        Hearth::Validator.validate_types!(input.shard_limit, ::Integer, context: "#{context}[:shard_limit]")
        Hearth::Validator.validate_required!(input.open_shard_count, context: "#{context}[:open_shard_count]")
        Hearth::Validator.validate_types!(input.open_shard_count, ::Integer, context: "#{context}[:open_shard_count]")
        Hearth::Validator.validate_required!(input.on_demand_stream_count, context: "#{context}[:on_demand_stream_count]")
        Hearth::Validator.validate_types!(input.on_demand_stream_count, ::Integer, context: "#{context}[:on_demand_stream_count]")
        Hearth::Validator.validate_required!(input.on_demand_stream_count_limit, context: "#{context}[:on_demand_stream_count_limit]")
        Hearth::Validator.validate_types!(input.on_demand_stream_count_limit, ::Integer, context: "#{context}[:on_demand_stream_count_limit]")
      end
    end

    class DescribeStreamConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeStreamConsumerInput, context: context)
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.consumer_name, ::String, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate_types!(input.consumer_arn, ::String, context: "#{context}[:consumer_arn]")
      end
    end

    class DescribeStreamConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeStreamConsumerOutput, context: context)
        Hearth::Validator.validate_required!(input.consumer_description, context: "#{context}[:consumer_description]")
        ConsumerDescription.validate!(input.consumer_description, context: "#{context}[:consumer_description]") unless input.consumer_description.nil?
      end
    end

    class DescribeStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeStreamInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.limit, ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input.exclusive_start_shard_id, ::String, context: "#{context}[:exclusive_start_shard_id]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DescribeStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeStreamOutput, context: context)
        Hearth::Validator.validate_required!(input.stream_description, context: "#{context}[:stream_description]")
        StreamDescription.validate!(input.stream_description, context: "#{context}[:stream_description]") unless input.stream_description.nil?
      end
    end

    class DescribeStreamSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeStreamSummaryInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DescribeStreamSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeStreamSummaryOutput, context: context)
        Hearth::Validator.validate_required!(input.stream_description_summary, context: "#{context}[:stream_description_summary]")
        StreamDescriptionSummary.validate!(input.stream_description_summary, context: "#{context}[:stream_description_summary]") unless input.stream_description_summary.nil?
      end
    end

    class DisableEnhancedMonitoringInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableEnhancedMonitoringInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.shard_level_metrics, context: "#{context}[:shard_level_metrics]")
        MetricsNameList.validate!(input.shard_level_metrics, context: "#{context}[:shard_level_metrics]") unless input.shard_level_metrics.nil?
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DisableEnhancedMonitoringOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableEnhancedMonitoringOutput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        MetricsNameList.validate!(input.current_shard_level_metrics, context: "#{context}[:current_shard_level_metrics]") unless input.current_shard_level_metrics.nil?
        MetricsNameList.validate!(input.desired_shard_level_metrics, context: "#{context}[:desired_shard_level_metrics]") unless input.desired_shard_level_metrics.nil?
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class EnableEnhancedMonitoringInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableEnhancedMonitoringInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.shard_level_metrics, context: "#{context}[:shard_level_metrics]")
        MetricsNameList.validate!(input.shard_level_metrics, context: "#{context}[:shard_level_metrics]") unless input.shard_level_metrics.nil?
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class EnableEnhancedMonitoringOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableEnhancedMonitoringOutput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        MetricsNameList.validate!(input.current_shard_level_metrics, context: "#{context}[:current_shard_level_metrics]") unless input.current_shard_level_metrics.nil?
        MetricsNameList.validate!(input.desired_shard_level_metrics, context: "#{context}[:desired_shard_level_metrics]") unless input.desired_shard_level_metrics.nil?
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class EnhancedMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnhancedMetrics, context: context)
        MetricsNameList.validate!(input.shard_level_metrics, context: "#{context}[:shard_level_metrics]") unless input.shard_level_metrics.nil?
      end
    end

    class EnhancedMonitoringList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnhancedMetrics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExpiredIteratorException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ExpiredIteratorException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class ExpiredNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ExpiredNextTokenException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class GetRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetRecordsInput, context: context)
        Hearth::Validator.validate_required!(input.shard_iterator, context: "#{context}[:shard_iterator]")
        Hearth::Validator.validate_types!(input.shard_iterator, ::String, context: "#{context}[:shard_iterator]")
        Hearth::Validator.validate_types!(input.limit, ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class GetRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetRecordsOutput, context: context)
        Hearth::Validator.validate_required!(input.records, context: "#{context}[:records]")
        RecordList.validate!(input.records, context: "#{context}[:records]") unless input.records.nil?
        Hearth::Validator.validate_types!(input.next_shard_iterator, ::String, context: "#{context}[:next_shard_iterator]")
        Hearth::Validator.validate_types!(input.millis_behind_latest, ::Integer, context: "#{context}[:millis_behind_latest]")
        ChildShardList.validate!(input.child_shards, context: "#{context}[:child_shards]") unless input.child_shards.nil?
      end
    end

    class GetResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetResourcePolicyInput, context: context)
        Hearth::Validator.validate_required!(input.resource_arn, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_types!(input.resource_arn, ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetResourcePolicyOutput, context: context)
        Hearth::Validator.validate_required!(input.policy, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input.policy, ::String, context: "#{context}[:policy]")
      end
    end

    class GetShardIteratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetShardIteratorInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.shard_id, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_types!(input.shard_id, ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_required!(input.shard_iterator_type, context: "#{context}[:shard_iterator_type]")
        Hearth::Validator.validate_types!(input.shard_iterator_type, ::String, context: "#{context}[:shard_iterator_type]")
        Hearth::Validator.validate_types!(input.starting_sequence_number, ::String, context: "#{context}[:starting_sequence_number]")
        Hearth::Validator.validate_types!(input.timestamp, ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class GetShardIteratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetShardIteratorOutput, context: context)
        Hearth::Validator.validate_types!(input.shard_iterator, ::String, context: "#{context}[:shard_iterator]")
      end
    end

    class HashKeyRange
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::HashKeyRange, context: context)
        Hearth::Validator.validate_required!(input.starting_hash_key, context: "#{context}[:starting_hash_key]")
        Hearth::Validator.validate_types!(input.starting_hash_key, ::String, context: "#{context}[:starting_hash_key]")
        Hearth::Validator.validate_required!(input.ending_hash_key, context: "#{context}[:ending_hash_key]")
        Hearth::Validator.validate_types!(input.ending_hash_key, ::String, context: "#{context}[:ending_hash_key]")
      end
    end

    class IncreaseStreamRetentionPeriodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IncreaseStreamRetentionPeriodInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.retention_period_hours, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate_types!(input.retention_period_hours, ::Integer, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class IncreaseStreamRetentionPeriodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IncreaseStreamRetentionPeriodOutput, context: context)
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class KMSAccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSAccessDeniedException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class KMSDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSDisabledException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSInvalidStateException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class KMSNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSNotFoundException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class KMSOptInRequired
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSOptInRequired, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class KMSThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSThrottlingException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class ListShardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListShardsInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.exclusive_start_shard_id, ::String, context: "#{context}[:exclusive_start_shard_id]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate_types!(input.stream_creation_timestamp, ::Time, context: "#{context}[:stream_creation_timestamp]")
        ShardFilter.validate!(input.shard_filter, context: "#{context}[:shard_filter]") unless input.shard_filter.nil?
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class ListShardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListShardsOutput, context: context)
        ShardList.validate!(input.shards, context: "#{context}[:shards]") unless input.shards.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamConsumersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListStreamConsumersInput, context: context)
        Hearth::Validator.validate_required!(input.stream_arn, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate_types!(input.stream_creation_timestamp, ::Time, context: "#{context}[:stream_creation_timestamp]")
      end
    end

    class ListStreamConsumersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListStreamConsumersOutput, context: context)
        ConsumerList.validate!(input.consumers, context: "#{context}[:consumers]") unless input.consumers.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListStreamsInput, context: context)
        Hearth::Validator.validate_types!(input.limit, ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input.exclusive_start_stream_name, ::String, context: "#{context}[:exclusive_start_stream_name]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListStreamsOutput, context: context)
        Hearth::Validator.validate_required!(input.stream_names, context: "#{context}[:stream_names]")
        StreamNameList.validate!(input.stream_names, context: "#{context}[:stream_names]") unless input.stream_names.nil?
        Hearth::Validator.validate_required!(input.has_more_streams, context: "#{context}[:has_more_streams]")
        Hearth::Validator.validate_types!(input.has_more_streams, ::TrueClass, ::FalseClass, context: "#{context}[:has_more_streams]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        StreamSummaryList.validate!(input.stream_summaries, context: "#{context}[:stream_summaries]") unless input.stream_summaries.nil?
      end
    end

    class ListTagsForStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListTagsForStreamInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.exclusive_start_tag_key, ::String, context: "#{context}[:exclusive_start_tag_key]")
        Hearth::Validator.validate_types!(input.limit, ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class ListTagsForStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListTagsForStreamOutput, context: context)
        Hearth::Validator.validate_required!(input.tags, context: "#{context}[:tags]")
        TagList.validate!(input.tags, context: "#{context}[:tags]") unless input.tags.nil?
        Hearth::Validator.validate_required!(input.has_more_tags, context: "#{context}[:has_more_tags]")
        Hearth::Validator.validate_types!(input.has_more_tags, ::TrueClass, ::FalseClass, context: "#{context}[:has_more_tags]")
      end
    end

    class MergeShardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MergeShardsInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.shard_to_merge, context: "#{context}[:shard_to_merge]")
        Hearth::Validator.validate_types!(input.shard_to_merge, ::String, context: "#{context}[:shard_to_merge]")
        Hearth::Validator.validate_required!(input.adjacent_shard_to_merge, context: "#{context}[:adjacent_shard_to_merge]")
        Hearth::Validator.validate_types!(input.adjacent_shard_to_merge, ::String, context: "#{context}[:adjacent_shard_to_merge]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class MergeShardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MergeShardsOutput, context: context)
      end
    end

    class MetricsNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProvisionedThroughputExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ProvisionedThroughputExceededException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class PutRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutRecordInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.data, context: "#{context}[:data]")
        Hearth::Validator.validate_types!(input.data, ::String, context: "#{context}[:data]")
        Hearth::Validator.validate_required!(input.partition_key, context: "#{context}[:partition_key]")
        Hearth::Validator.validate_types!(input.partition_key, ::String, context: "#{context}[:partition_key]")
        Hearth::Validator.validate_types!(input.explicit_hash_key, ::String, context: "#{context}[:explicit_hash_key]")
        Hearth::Validator.validate_types!(input.sequence_number_for_ordering, ::String, context: "#{context}[:sequence_number_for_ordering]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class PutRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutRecordOutput, context: context)
        Hearth::Validator.validate_required!(input.shard_id, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_types!(input.shard_id, ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_required!(input.sequence_number, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate_types!(input.sequence_number, ::String, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate_types!(input.encryption_type, ::String, context: "#{context}[:encryption_type]")
      end
    end

    class PutRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutRecordsInput, context: context)
        Hearth::Validator.validate_required!(input.records, context: "#{context}[:records]")
        PutRecordsRequestEntryList.validate!(input.records, context: "#{context}[:records]") unless input.records.nil?
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class PutRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutRecordsOutput, context: context)
        Hearth::Validator.validate_types!(input.failed_record_count, ::Integer, context: "#{context}[:failed_record_count]")
        Hearth::Validator.validate_required!(input.records, context: "#{context}[:records]")
        PutRecordsResultEntryList.validate!(input.records, context: "#{context}[:records]") unless input.records.nil?
        Hearth::Validator.validate_types!(input.encryption_type, ::String, context: "#{context}[:encryption_type]")
      end
    end

    class PutRecordsRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutRecordsRequestEntry, context: context)
        Hearth::Validator.validate_required!(input.data, context: "#{context}[:data]")
        Hearth::Validator.validate_types!(input.data, ::String, context: "#{context}[:data]")
        Hearth::Validator.validate_types!(input.explicit_hash_key, ::String, context: "#{context}[:explicit_hash_key]")
        Hearth::Validator.validate_required!(input.partition_key, context: "#{context}[:partition_key]")
        Hearth::Validator.validate_types!(input.partition_key, ::String, context: "#{context}[:partition_key]")
      end
    end

    class PutRecordsRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PutRecordsRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutRecordsResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutRecordsResultEntry, context: context)
        Hearth::Validator.validate_types!(input.sequence_number, ::String, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate_types!(input.shard_id, ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_types!(input.error_code, ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate_types!(input.error_message, ::String, context: "#{context}[:error_message]")
      end
    end

    class PutRecordsResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PutRecordsResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate_required!(input.resource_arn, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_types!(input.resource_arn, ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_required!(input.policy, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input.policy, ::String, context: "#{context}[:policy]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutResourcePolicyOutput, context: context)
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Record, context: context)
        Hearth::Validator.validate_required!(input.sequence_number, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate_types!(input.sequence_number, ::String, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate_types!(input.approximate_arrival_timestamp, ::Time, context: "#{context}[:approximate_arrival_timestamp]")
        Hearth::Validator.validate_required!(input.data, context: "#{context}[:data]")
        Hearth::Validator.validate_types!(input.data, ::String, context: "#{context}[:data]")
        Hearth::Validator.validate_required!(input.partition_key, context: "#{context}[:partition_key]")
        Hearth::Validator.validate_types!(input.partition_key, ::String, context: "#{context}[:partition_key]")
        Hearth::Validator.validate_types!(input.encryption_type, ::String, context: "#{context}[:encryption_type]")
      end
    end

    class RecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Record.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegisterStreamConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RegisterStreamConsumerInput, context: context)
        Hearth::Validator.validate_required!(input.stream_arn, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_required!(input.consumer_name, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate_types!(input.consumer_name, ::String, context: "#{context}[:consumer_name]")
      end
    end

    class RegisterStreamConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RegisterStreamConsumerOutput, context: context)
        Hearth::Validator.validate_required!(input.consumer, context: "#{context}[:consumer]")
        Consumer.validate!(input.consumer, context: "#{context}[:consumer]") unless input.consumer.nil?
      end
    end

    class RemoveTagsFromStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RemoveTagsFromStreamInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.tag_keys, context: "#{context}[:tag_keys]")
        TagKeyList.validate!(input.tag_keys, context: "#{context}[:tag_keys]") unless input.tag_keys.nil?
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class RemoveTagsFromStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RemoveTagsFromStreamOutput, context: context)
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class SequenceNumberRange
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SequenceNumberRange, context: context)
        Hearth::Validator.validate_required!(input.starting_sequence_number, context: "#{context}[:starting_sequence_number]")
        Hearth::Validator.validate_types!(input.starting_sequence_number, ::String, context: "#{context}[:starting_sequence_number]")
        Hearth::Validator.validate_types!(input.ending_sequence_number, ::String, context: "#{context}[:ending_sequence_number]")
      end
    end

    class Shard
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Shard, context: context)
        Hearth::Validator.validate_required!(input.shard_id, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_types!(input.shard_id, ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_types!(input.parent_shard_id, ::String, context: "#{context}[:parent_shard_id]")
        Hearth::Validator.validate_types!(input.adjacent_parent_shard_id, ::String, context: "#{context}[:adjacent_parent_shard_id]")
        Hearth::Validator.validate_required!(input.hash_key_range, context: "#{context}[:hash_key_range]")
        HashKeyRange.validate!(input.hash_key_range, context: "#{context}[:hash_key_range]") unless input.hash_key_range.nil?
        Hearth::Validator.validate_required!(input.sequence_number_range, context: "#{context}[:sequence_number_range]")
        SequenceNumberRange.validate!(input.sequence_number_range, context: "#{context}[:sequence_number_range]") unless input.sequence_number_range.nil?
      end
    end

    class ShardFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ShardFilter, context: context)
        Hearth::Validator.validate_required!(input.type, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input.type, ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input.shard_id, ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_types!(input.timestamp, ::Time, context: "#{context}[:timestamp]")
      end
    end

    class ShardIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ShardList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Shard.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SplitShardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SplitShardInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.shard_to_split, context: "#{context}[:shard_to_split]")
        Hearth::Validator.validate_types!(input.shard_to_split, ::String, context: "#{context}[:shard_to_split]")
        Hearth::Validator.validate_required!(input.new_starting_hash_key, context: "#{context}[:new_starting_hash_key]")
        Hearth::Validator.validate_types!(input.new_starting_hash_key, ::String, context: "#{context}[:new_starting_hash_key]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class SplitShardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SplitShardOutput, context: context)
      end
    end

    class StartStreamEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartStreamEncryptionInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.encryption_type, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate_types!(input.encryption_type, ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate_required!(input.key_id, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input.key_id, ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class StartStreamEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartStreamEncryptionOutput, context: context)
      end
    end

    class StartingPosition
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartingPosition, context: context)
        Hearth::Validator.validate_required!(input.type, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input.type, ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input.sequence_number, ::String, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate_types!(input.timestamp, ::Time, context: "#{context}[:timestamp]")
      end
    end

    class StopStreamEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StopStreamEncryptionInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.encryption_type, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate_types!(input.encryption_type, ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate_required!(input.key_id, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input.key_id, ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class StopStreamEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StopStreamEncryptionOutput, context: context)
      end
    end

    class StreamDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StreamDescription, context: context)
        Hearth::Validator.validate_required!(input.stream_name, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.stream_arn, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_required!(input.stream_status, context: "#{context}[:stream_status]")
        Hearth::Validator.validate_types!(input.stream_status, ::String, context: "#{context}[:stream_status]")
        StreamModeDetails.validate!(input.stream_mode_details, context: "#{context}[:stream_mode_details]") unless input.stream_mode_details.nil?
        Hearth::Validator.validate_required!(input.shards, context: "#{context}[:shards]")
        ShardList.validate!(input.shards, context: "#{context}[:shards]") unless input.shards.nil?
        Hearth::Validator.validate_required!(input.has_more_shards, context: "#{context}[:has_more_shards]")
        Hearth::Validator.validate_types!(input.has_more_shards, ::TrueClass, ::FalseClass, context: "#{context}[:has_more_shards]")
        Hearth::Validator.validate_required!(input.retention_period_hours, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate_types!(input.retention_period_hours, ::Integer, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate_required!(input.stream_creation_timestamp, context: "#{context}[:stream_creation_timestamp]")
        Hearth::Validator.validate_types!(input.stream_creation_timestamp, ::Time, context: "#{context}[:stream_creation_timestamp]")
        Hearth::Validator.validate_required!(input.enhanced_monitoring, context: "#{context}[:enhanced_monitoring]")
        EnhancedMonitoringList.validate!(input.enhanced_monitoring, context: "#{context}[:enhanced_monitoring]") unless input.enhanced_monitoring.nil?
        Hearth::Validator.validate_types!(input.encryption_type, ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate_types!(input.key_id, ::String, context: "#{context}[:key_id]")
      end
    end

    class StreamDescriptionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StreamDescriptionSummary, context: context)
        Hearth::Validator.validate_required!(input.stream_name, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.stream_arn, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_required!(input.stream_status, context: "#{context}[:stream_status]")
        Hearth::Validator.validate_types!(input.stream_status, ::String, context: "#{context}[:stream_status]")
        StreamModeDetails.validate!(input.stream_mode_details, context: "#{context}[:stream_mode_details]") unless input.stream_mode_details.nil?
        Hearth::Validator.validate_required!(input.retention_period_hours, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate_types!(input.retention_period_hours, ::Integer, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate_required!(input.stream_creation_timestamp, context: "#{context}[:stream_creation_timestamp]")
        Hearth::Validator.validate_types!(input.stream_creation_timestamp, ::Time, context: "#{context}[:stream_creation_timestamp]")
        Hearth::Validator.validate_required!(input.enhanced_monitoring, context: "#{context}[:enhanced_monitoring]")
        EnhancedMonitoringList.validate!(input.enhanced_monitoring, context: "#{context}[:enhanced_monitoring]") unless input.enhanced_monitoring.nil?
        Hearth::Validator.validate_types!(input.encryption_type, ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate_types!(input.key_id, ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input.open_shard_count, context: "#{context}[:open_shard_count]")
        Hearth::Validator.validate_types!(input.open_shard_count, ::Integer, context: "#{context}[:open_shard_count]")
        Hearth::Validator.validate_types!(input.consumer_count, ::Integer, context: "#{context}[:consumer_count]")
      end
    end

    class StreamModeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StreamModeDetails, context: context)
        Hearth::Validator.validate_required!(input.stream_mode, context: "#{context}[:stream_mode]")
        Hearth::Validator.validate_types!(input.stream_mode, ::String, context: "#{context}[:stream_mode]")
      end
    end

    class StreamNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StreamSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StreamSummary, context: context)
        Hearth::Validator.validate_required!(input.stream_name, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.stream_arn, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_required!(input.stream_status, context: "#{context}[:stream_status]")
        Hearth::Validator.validate_types!(input.stream_status, ::String, context: "#{context}[:stream_status]")
        StreamModeDetails.validate!(input.stream_mode_details, context: "#{context}[:stream_mode_details]") unless input.stream_mode_details.nil?
        Hearth::Validator.validate_types!(input.stream_creation_timestamp, ::Time, context: "#{context}[:stream_creation_timestamp]")
      end
    end

    class StreamSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StreamSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubscribeToShardEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SubscribeToShardEvent, context: context)
        Hearth::Validator.validate_required!(input.records, context: "#{context}[:records]")
        RecordList.validate!(input.records, context: "#{context}[:records]") unless input.records.nil?
        Hearth::Validator.validate_required!(input.continuation_sequence_number, context: "#{context}[:continuation_sequence_number]")
        Hearth::Validator.validate_types!(input.continuation_sequence_number, ::String, context: "#{context}[:continuation_sequence_number]")
        Hearth::Validator.validate_required!(input.millis_behind_latest, context: "#{context}[:millis_behind_latest]")
        Hearth::Validator.validate_types!(input.millis_behind_latest, ::Integer, context: "#{context}[:millis_behind_latest]")
        ChildShardList.validate!(input.child_shards, context: "#{context}[:child_shards]") unless input.child_shards.nil?
      end
    end

    class SubscribeToShardEventStream
      def self.validate!(input, context:)
        case input
        when Types::SubscribeToShardEventStream::SubscribeToShardEvent
          SubscribeToShardEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::ResourceNotFoundException
          ResourceNotFoundException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::ResourceInUseException
          ResourceInUseException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsDisabledException
          KMSDisabledException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsInvalidStateException
          KMSInvalidStateException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsAccessDeniedException
          KMSAccessDeniedException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsNotFoundException
          KMSNotFoundException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsOptInRequired
          KMSOptInRequired.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsThrottlingException
          KMSThrottlingException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::InternalFailureException
          InternalFailureException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError, "Expected #{context} to be a union member of Types::SubscribeToShardEventStream, got #{input.class}."
        end
      end

      class SubscribeToShardEvent
        def self.validate!(input, context:)
          Validators::SubscribeToShardEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class ResourceNotFoundException
        def self.validate!(input, context:)
          Validators::ResourceNotFoundException.validate!(input, context: context) unless input.nil?
        end
      end

      class ResourceInUseException
        def self.validate!(input, context:)
          Validators::ResourceInUseException.validate!(input, context: context) unless input.nil?
        end
      end

      class KmsDisabledException
        def self.validate!(input, context:)
          Validators::KMSDisabledException.validate!(input, context: context) unless input.nil?
        end
      end

      class KmsInvalidStateException
        def self.validate!(input, context:)
          Validators::KMSInvalidStateException.validate!(input, context: context) unless input.nil?
        end
      end

      class KmsAccessDeniedException
        def self.validate!(input, context:)
          Validators::KMSAccessDeniedException.validate!(input, context: context) unless input.nil?
        end
      end

      class KmsNotFoundException
        def self.validate!(input, context:)
          Validators::KMSNotFoundException.validate!(input, context: context) unless input.nil?
        end
      end

      class KmsOptInRequired
        def self.validate!(input, context:)
          Validators::KMSOptInRequired.validate!(input, context: context) unless input.nil?
        end
      end

      class KmsThrottlingException
        def self.validate!(input, context:)
          Validators::KMSThrottlingException.validate!(input, context: context) unless input.nil?
        end
      end

      class InternalFailureException
        def self.validate!(input, context:)
          Validators::InternalFailureException.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class SubscribeToShardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SubscribeToShardInput, context: context)
        Hearth::Validator.validate_required!(input.consumer_arn, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate_types!(input.consumer_arn, ::String, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate_required!(input.shard_id, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_types!(input.shard_id, ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate_required!(input.starting_position, context: "#{context}[:starting_position]")
        StartingPosition.validate!(input.starting_position, context: "#{context}[:starting_position]") unless input.starting_position.nil?
      end
    end

    class SubscribeToShardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SubscribeToShardOutput, context: context)
        SubscribeToShardEventStream.validate!(input.event_stream, context: "#{context}[:event_stream]") unless input.event_stream.nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Tag, context: context)
        Hearth::Validator.validate_required!(input.key, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input.key, ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input.value, ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}['#{key}']")
        end
      end
    end

    class UpdateShardCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateShardCountInput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_required!(input.target_shard_count, context: "#{context}[:target_shard_count]")
        Hearth::Validator.validate_types!(input.target_shard_count, ::Integer, context: "#{context}[:target_shard_count]")
        Hearth::Validator.validate_required!(input.scaling_type, context: "#{context}[:scaling_type]")
        Hearth::Validator.validate_types!(input.scaling_type, ::String, context: "#{context}[:scaling_type]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class UpdateShardCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateShardCountOutput, context: context)
        Hearth::Validator.validate_types!(input.stream_name, ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate_types!(input.current_shard_count, ::Integer, context: "#{context}[:current_shard_count]")
        Hearth::Validator.validate_types!(input.target_shard_count, ::Integer, context: "#{context}[:target_shard_count]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
      end
    end

    class UpdateStreamModeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateStreamModeInput, context: context)
        Hearth::Validator.validate_required!(input.stream_arn, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_types!(input.stream_arn, ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate_required!(input.stream_mode_details, context: "#{context}[:stream_mode_details]")
        StreamModeDetails.validate!(input.stream_mode_details, context: "#{context}[:stream_mode_details]") unless input.stream_mode_details.nil?
      end
    end

    class UpdateStreamModeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateStreamModeOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

  end
end
