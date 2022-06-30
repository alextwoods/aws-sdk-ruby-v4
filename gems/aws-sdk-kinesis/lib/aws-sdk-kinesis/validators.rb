# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module Validators

    class AddTagsToStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsToStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToStreamOutput, context: context)
      end
    end

    class ChildShard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChildShard, context: context)
        Hearth::Validator.validate!(input[:shard_id], ::String, context: "#{context}[:shard_id]")
        Validators::ShardIdList.validate!(input[:parent_shards], context: "#{context}[:parent_shards]") unless input[:parent_shards].nil?
        Validators::HashKeyRange.validate!(input[:hash_key_range], context: "#{context}[:hash_key_range]") unless input[:hash_key_range].nil?
      end
    end

    class ChildShardList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ChildShard.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Consumer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Consumer, context: context)
        Hearth::Validator.validate!(input[:consumer_name], ::String, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate!(input[:consumer_status], ::String, context: "#{context}[:consumer_status]")
        Hearth::Validator.validate!(input[:consumer_creation_timestamp], ::Time, context: "#{context}[:consumer_creation_timestamp]")
      end
    end

    class ConsumerDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConsumerDescription, context: context)
        Hearth::Validator.validate!(input[:consumer_name], ::String, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate!(input[:consumer_status], ::String, context: "#{context}[:consumer_status]")
        Hearth::Validator.validate!(input[:consumer_creation_timestamp], ::Time, context: "#{context}[:consumer_creation_timestamp]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class ConsumerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Consumer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:shard_count], ::Integer, context: "#{context}[:shard_count]")
        Validators::StreamModeDetails.validate!(input[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless input[:stream_mode_details].nil?
      end
    end

    class CreateStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamOutput, context: context)
      end
    end

    class DecreaseStreamRetentionPeriodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecreaseStreamRetentionPeriodInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:retention_period_hours], ::Integer, context: "#{context}[:retention_period_hours]")
      end
    end

    class DecreaseStreamRetentionPeriodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecreaseStreamRetentionPeriodOutput, context: context)
      end
    end

    class DeleteStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:enforce_consumer_deletion], ::TrueClass, ::FalseClass, context: "#{context}[:enforce_consumer_deletion]")
      end
    end

    class DeleteStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamOutput, context: context)
      end
    end

    class DeregisterStreamConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterStreamConsumerInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:consumer_name], ::String, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
      end
    end

    class DeregisterStreamConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterStreamConsumerOutput, context: context)
      end
    end

    class DescribeLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLimitsInput, context: context)
      end
    end

    class DescribeLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLimitsOutput, context: context)
        Hearth::Validator.validate!(input[:shard_limit], ::Integer, context: "#{context}[:shard_limit]")
        Hearth::Validator.validate!(input[:open_shard_count], ::Integer, context: "#{context}[:open_shard_count]")
        Hearth::Validator.validate!(input[:on_demand_stream_count], ::Integer, context: "#{context}[:on_demand_stream_count]")
        Hearth::Validator.validate!(input[:on_demand_stream_count_limit], ::Integer, context: "#{context}[:on_demand_stream_count_limit]")
      end
    end

    class DescribeStreamConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamConsumerInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:consumer_name], ::String, context: "#{context}[:consumer_name]")
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
      end
    end

    class DescribeStreamConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamConsumerOutput, context: context)
        Validators::ConsumerDescription.validate!(input[:consumer_description], context: "#{context}[:consumer_description]") unless input[:consumer_description].nil?
      end
    end

    class DescribeStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:exclusive_start_shard_id], ::String, context: "#{context}[:exclusive_start_shard_id]")
      end
    end

    class DescribeStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamOutput, context: context)
        Validators::StreamDescription.validate!(input[:stream_description], context: "#{context}[:stream_description]") unless input[:stream_description].nil?
      end
    end

    class DescribeStreamSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamSummaryInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class DescribeStreamSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamSummaryOutput, context: context)
        Validators::StreamDescriptionSummary.validate!(input[:stream_description_summary], context: "#{context}[:stream_description_summary]") unless input[:stream_description_summary].nil?
      end
    end

    class DisableEnhancedMonitoringInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableEnhancedMonitoringInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Validators::MetricsNameList.validate!(input[:shard_level_metrics], context: "#{context}[:shard_level_metrics]") unless input[:shard_level_metrics].nil?
      end
    end

    class DisableEnhancedMonitoringOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableEnhancedMonitoringOutput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Validators::MetricsNameList.validate!(input[:current_shard_level_metrics], context: "#{context}[:current_shard_level_metrics]") unless input[:current_shard_level_metrics].nil?
        Validators::MetricsNameList.validate!(input[:desired_shard_level_metrics], context: "#{context}[:desired_shard_level_metrics]") unless input[:desired_shard_level_metrics].nil?
      end
    end

    class EnableEnhancedMonitoringInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableEnhancedMonitoringInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Validators::MetricsNameList.validate!(input[:shard_level_metrics], context: "#{context}[:shard_level_metrics]") unless input[:shard_level_metrics].nil?
      end
    end

    class EnableEnhancedMonitoringOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableEnhancedMonitoringOutput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Validators::MetricsNameList.validate!(input[:current_shard_level_metrics], context: "#{context}[:current_shard_level_metrics]") unless input[:current_shard_level_metrics].nil?
        Validators::MetricsNameList.validate!(input[:desired_shard_level_metrics], context: "#{context}[:desired_shard_level_metrics]") unless input[:desired_shard_level_metrics].nil?
      end
    end

    class EnhancedMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnhancedMetrics, context: context)
        Validators::MetricsNameList.validate!(input[:shard_level_metrics], context: "#{context}[:shard_level_metrics]") unless input[:shard_level_metrics].nil?
      end
    end

    class EnhancedMonitoringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EnhancedMetrics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExpiredIteratorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredIteratorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExpiredNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecordsInput, context: context)
        Hearth::Validator.validate!(input[:shard_iterator], ::String, context: "#{context}[:shard_iterator]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecordsOutput, context: context)
        Validators::RecordList.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Hearth::Validator.validate!(input[:next_shard_iterator], ::String, context: "#{context}[:next_shard_iterator]")
        Hearth::Validator.validate!(input[:millis_behind_latest], ::Integer, context: "#{context}[:millis_behind_latest]")
        Validators::ChildShardList.validate!(input[:child_shards], context: "#{context}[:child_shards]") unless input[:child_shards].nil?
      end
    end

    class GetShardIteratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetShardIteratorInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:shard_id], ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate!(input[:shard_iterator_type], ::String, context: "#{context}[:shard_iterator_type]")
        Hearth::Validator.validate!(input[:starting_sequence_number], ::String, context: "#{context}[:starting_sequence_number]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class GetShardIteratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetShardIteratorOutput, context: context)
        Hearth::Validator.validate!(input[:shard_iterator], ::String, context: "#{context}[:shard_iterator]")
      end
    end

    class HashKeyRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HashKeyRange, context: context)
        Hearth::Validator.validate!(input[:starting_hash_key], ::String, context: "#{context}[:starting_hash_key]")
        Hearth::Validator.validate!(input[:ending_hash_key], ::String, context: "#{context}[:ending_hash_key]")
      end
    end

    class IncreaseStreamRetentionPeriodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncreaseStreamRetentionPeriodInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:retention_period_hours], ::Integer, context: "#{context}[:retention_period_hours]")
      end
    end

    class IncreaseStreamRetentionPeriodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncreaseStreamRetentionPeriodOutput, context: context)
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSAccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSAccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSInvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSOptInRequired
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSOptInRequired, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListShardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListShardsInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:exclusive_start_shard_id], ::String, context: "#{context}[:exclusive_start_shard_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:stream_creation_timestamp], ::Time, context: "#{context}[:stream_creation_timestamp]")
        Validators::ShardFilter.validate!(input[:shard_filter], context: "#{context}[:shard_filter]") unless input[:shard_filter].nil?
      end
    end

    class ListShardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListShardsOutput, context: context)
        Validators::ShardList.validate!(input[:shards], context: "#{context}[:shards]") unless input[:shards].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamConsumersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamConsumersInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:stream_creation_timestamp], ::Time, context: "#{context}[:stream_creation_timestamp]")
      end
    end

    class ListStreamConsumersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamConsumersOutput, context: context)
        Validators::ConsumerList.validate!(input[:consumers], context: "#{context}[:consumers]") unless input[:consumers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:exclusive_start_stream_name], ::String, context: "#{context}[:exclusive_start_stream_name]")
      end
    end

    class ListStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsOutput, context: context)
        Validators::StreamNameList.validate!(input[:stream_names], context: "#{context}[:stream_names]") unless input[:stream_names].nil?
        Hearth::Validator.validate!(input[:has_more_streams], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_streams]")
      end
    end

    class ListTagsForStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:exclusive_start_tag_key], ::String, context: "#{context}[:exclusive_start_tag_key]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTagsForStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForStreamOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:has_more_tags], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_tags]")
      end
    end

    class MergeShardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeShardsInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:shard_to_merge], ::String, context: "#{context}[:shard_to_merge]")
        Hearth::Validator.validate!(input[:adjacent_shard_to_merge], ::String, context: "#{context}[:adjacent_shard_to_merge]")
      end
    end

    class MergeShardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeShardsOutput, context: context)
      end
    end

    class MetricsNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProvisionedThroughputExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedThroughputExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:partition_key], ::String, context: "#{context}[:partition_key]")
        Hearth::Validator.validate!(input[:explicit_hash_key], ::String, context: "#{context}[:explicit_hash_key]")
        Hearth::Validator.validate!(input[:sequence_number_for_ordering], ::String, context: "#{context}[:sequence_number_for_ordering]")
      end
    end

    class PutRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordOutput, context: context)
        Hearth::Validator.validate!(input[:shard_id], ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
      end
    end

    class PutRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordsInput, context: context)
        Validators::PutRecordsRequestEntryList.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class PutRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordsOutput, context: context)
        Hearth::Validator.validate!(input[:failed_record_count], ::Integer, context: "#{context}[:failed_record_count]")
        Validators::PutRecordsResultEntryList.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
      end
    end

    class PutRecordsRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordsRequestEntry, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:explicit_hash_key], ::String, context: "#{context}[:explicit_hash_key]")
        Hearth::Validator.validate!(input[:partition_key], ::String, context: "#{context}[:partition_key]")
      end
    end

    class PutRecordsRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PutRecordsRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutRecordsResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordsResultEntry, context: context)
        Hearth::Validator.validate!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate!(input[:shard_id], ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class PutRecordsResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PutRecordsResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Record, context: context)
        Hearth::Validator.validate!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate!(input[:approximate_arrival_timestamp], ::Time, context: "#{context}[:approximate_arrival_timestamp]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:partition_key], ::String, context: "#{context}[:partition_key]")
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
      end
    end

    class RecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Record.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegisterStreamConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterStreamConsumerInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:consumer_name], ::String, context: "#{context}[:consumer_name]")
      end
    end

    class RegisterStreamConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterStreamConsumerOutput, context: context)
        Validators::Consumer.validate!(input[:consumer], context: "#{context}[:consumer]") unless input[:consumer].nil?
      end
    end

    class RemoveTagsFromStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsFromStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromStreamOutput, context: context)
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SequenceNumberRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SequenceNumberRange, context: context)
        Hearth::Validator.validate!(input[:starting_sequence_number], ::String, context: "#{context}[:starting_sequence_number]")
        Hearth::Validator.validate!(input[:ending_sequence_number], ::String, context: "#{context}[:ending_sequence_number]")
      end
    end

    class Shard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Shard, context: context)
        Hearth::Validator.validate!(input[:shard_id], ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate!(input[:parent_shard_id], ::String, context: "#{context}[:parent_shard_id]")
        Hearth::Validator.validate!(input[:adjacent_parent_shard_id], ::String, context: "#{context}[:adjacent_parent_shard_id]")
        Validators::HashKeyRange.validate!(input[:hash_key_range], context: "#{context}[:hash_key_range]") unless input[:hash_key_range].nil?
        Validators::SequenceNumberRange.validate!(input[:sequence_number_range], context: "#{context}[:sequence_number_range]") unless input[:sequence_number_range].nil?
      end
    end

    class ShardFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShardFilter, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:shard_id], ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class ShardIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ShardList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Shard.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SplitShardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SplitShardInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:shard_to_split], ::String, context: "#{context}[:shard_to_split]")
        Hearth::Validator.validate!(input[:new_starting_hash_key], ::String, context: "#{context}[:new_starting_hash_key]")
      end
    end

    class SplitShardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SplitShardOutput, context: context)
      end
    end

    class StartStreamEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStreamEncryptionInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class StartStreamEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStreamEncryptionOutput, context: context)
      end
    end

    class StartingPosition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartingPosition, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class StopStreamEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStreamEncryptionInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class StopStreamEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStreamEncryptionOutput, context: context)
      end
    end

    class StreamDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamDescription, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:stream_status], ::String, context: "#{context}[:stream_status]")
        Validators::StreamModeDetails.validate!(input[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless input[:stream_mode_details].nil?
        Validators::ShardList.validate!(input[:shards], context: "#{context}[:shards]") unless input[:shards].nil?
        Hearth::Validator.validate!(input[:has_more_shards], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_shards]")
        Hearth::Validator.validate!(input[:retention_period_hours], ::Integer, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate!(input[:stream_creation_timestamp], ::Time, context: "#{context}[:stream_creation_timestamp]")
        Validators::EnhancedMonitoringList.validate!(input[:enhanced_monitoring], context: "#{context}[:enhanced_monitoring]") unless input[:enhanced_monitoring].nil?
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class StreamDescriptionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamDescriptionSummary, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:stream_status], ::String, context: "#{context}[:stream_status]")
        Validators::StreamModeDetails.validate!(input[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless input[:stream_mode_details].nil?
        Hearth::Validator.validate!(input[:retention_period_hours], ::Integer, context: "#{context}[:retention_period_hours]")
        Hearth::Validator.validate!(input[:stream_creation_timestamp], ::Time, context: "#{context}[:stream_creation_timestamp]")
        Validators::EnhancedMonitoringList.validate!(input[:enhanced_monitoring], context: "#{context}[:enhanced_monitoring]") unless input[:enhanced_monitoring].nil?
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:open_shard_count], ::Integer, context: "#{context}[:open_shard_count]")
        Hearth::Validator.validate!(input[:consumer_count], ::Integer, context: "#{context}[:consumer_count]")
      end
    end

    class StreamModeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamModeDetails, context: context)
        Hearth::Validator.validate!(input[:stream_mode], ::String, context: "#{context}[:stream_mode]")
      end
    end

    class StreamNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubscribeToShardEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeToShardEvent, context: context)
        Validators::RecordList.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Hearth::Validator.validate!(input[:continuation_sequence_number], ::String, context: "#{context}[:continuation_sequence_number]")
        Hearth::Validator.validate!(input[:millis_behind_latest], ::Integer, context: "#{context}[:millis_behind_latest]")
        Validators::ChildShardList.validate!(input[:child_shards], context: "#{context}[:child_shards]") unless input[:child_shards].nil?
      end
    end

    class SubscribeToShardEventStream
      def self.validate!(input, context:)
        case input
        when Types::SubscribeToShardEventStream::SubscribeToShardEvent
          Validators::SubscribeToShardEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::ResourceNotFoundException
          Validators::ResourceNotFoundException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::ResourceInUseException
          Validators::ResourceInUseException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsDisabledException
          Validators::KMSDisabledException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsInvalidStateException
          Validators::KMSInvalidStateException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsAccessDeniedException
          Validators::KMSAccessDeniedException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsNotFoundException
          Validators::KMSNotFoundException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsOptInRequired
          Validators::KMSOptInRequired.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::KmsThrottlingException
          Validators::KMSThrottlingException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SubscribeToShardEventStream::InternalFailureException
          Validators::InternalFailureException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::SubscribeToShardEventStream, got #{input.class}."
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
        Hearth::Validator.validate!(input, Types::SubscribeToShardInput, context: context)
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate!(input[:shard_id], ::String, context: "#{context}[:shard_id]")
        Validators::StartingPosition.validate!(input[:starting_position], context: "#{context}[:starting_position]") unless input[:starting_position].nil?
      end
    end

    class SubscribeToShardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeToShardOutput, context: context)
        Validators::SubscribeToShardEventStream.validate!(input[:event_stream], context: "#{context}[:event_stream]") unless input[:event_stream].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UpdateShardCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateShardCountInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:target_shard_count], ::Integer, context: "#{context}[:target_shard_count]")
        Hearth::Validator.validate!(input[:scaling_type], ::String, context: "#{context}[:scaling_type]")
      end
    end

    class UpdateShardCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateShardCountOutput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:current_shard_count], ::Integer, context: "#{context}[:current_shard_count]")
        Hearth::Validator.validate!(input[:target_shard_count], ::Integer, context: "#{context}[:target_shard_count]")
      end
    end

    class UpdateStreamModeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamModeInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Validators::StreamModeDetails.validate!(input[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless input[:stream_mode_details].nil?
      end
    end

    class UpdateStreamModeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamModeOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
