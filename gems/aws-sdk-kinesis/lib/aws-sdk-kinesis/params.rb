# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Kinesis
  module Params

    module AddTagsToStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToStreamInput, context: context)
        type = Types::AddTagsToStreamInput.new
        type.stream_name = params[:stream_name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsToStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToStreamOutput, context: context)
        type = Types::AddTagsToStreamOutput.new
        type
      end
    end

    module ChildShard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChildShard, context: context)
        type = Types::ChildShard.new
        type.shard_id = params[:shard_id]
        type.parent_shards = ShardIdList.build(params[:parent_shards], context: "#{context}[:parent_shards]") unless params[:parent_shards].nil?
        type.hash_key_range = HashKeyRange.build(params[:hash_key_range], context: "#{context}[:hash_key_range]") unless params[:hash_key_range].nil?
        type
      end
    end

    module ChildShardList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChildShard.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Consumer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Consumer, context: context)
        type = Types::Consumer.new
        type.consumer_name = params[:consumer_name]
        type.consumer_arn = params[:consumer_arn]
        type.consumer_status = params[:consumer_status]
        type.consumer_creation_timestamp = params[:consumer_creation_timestamp]
        type
      end
    end

    module ConsumerDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConsumerDescription, context: context)
        type = Types::ConsumerDescription.new
        type.consumer_name = params[:consumer_name]
        type.consumer_arn = params[:consumer_arn]
        type.consumer_status = params[:consumer_status]
        type.consumer_creation_timestamp = params[:consumer_creation_timestamp]
        type.stream_arn = params[:stream_arn]
        type
      end
    end

    module ConsumerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Consumer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamInput, context: context)
        type = Types::CreateStreamInput.new
        type.stream_name = params[:stream_name]
        type.shard_count = params[:shard_count]
        type.stream_mode_details = StreamModeDetails.build(params[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless params[:stream_mode_details].nil?
        type
      end
    end

    module CreateStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamOutput, context: context)
        type = Types::CreateStreamOutput.new
        type
      end
    end

    module DecreaseStreamRetentionPeriodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecreaseStreamRetentionPeriodInput, context: context)
        type = Types::DecreaseStreamRetentionPeriodInput.new
        type.stream_name = params[:stream_name]
        type.retention_period_hours = params[:retention_period_hours]
        type
      end
    end

    module DecreaseStreamRetentionPeriodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecreaseStreamRetentionPeriodOutput, context: context)
        type = Types::DecreaseStreamRetentionPeriodOutput.new
        type
      end
    end

    module DeleteStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamInput, context: context)
        type = Types::DeleteStreamInput.new
        type.stream_name = params[:stream_name]
        type.enforce_consumer_deletion = params[:enforce_consumer_deletion]
        type
      end
    end

    module DeleteStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamOutput, context: context)
        type = Types::DeleteStreamOutput.new
        type
      end
    end

    module DeregisterStreamConsumerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterStreamConsumerInput, context: context)
        type = Types::DeregisterStreamConsumerInput.new
        type.stream_arn = params[:stream_arn]
        type.consumer_name = params[:consumer_name]
        type.consumer_arn = params[:consumer_arn]
        type
      end
    end

    module DeregisterStreamConsumerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterStreamConsumerOutput, context: context)
        type = Types::DeregisterStreamConsumerOutput.new
        type
      end
    end

    module DescribeLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLimitsInput, context: context)
        type = Types::DescribeLimitsInput.new
        type
      end
    end

    module DescribeLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLimitsOutput, context: context)
        type = Types::DescribeLimitsOutput.new
        type.shard_limit = params[:shard_limit]
        type.open_shard_count = params[:open_shard_count]
        type.on_demand_stream_count = params[:on_demand_stream_count]
        type.on_demand_stream_count_limit = params[:on_demand_stream_count_limit]
        type
      end
    end

    module DescribeStreamConsumerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamConsumerInput, context: context)
        type = Types::DescribeStreamConsumerInput.new
        type.stream_arn = params[:stream_arn]
        type.consumer_name = params[:consumer_name]
        type.consumer_arn = params[:consumer_arn]
        type
      end
    end

    module DescribeStreamConsumerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamConsumerOutput, context: context)
        type = Types::DescribeStreamConsumerOutput.new
        type.consumer_description = ConsumerDescription.build(params[:consumer_description], context: "#{context}[:consumer_description]") unless params[:consumer_description].nil?
        type
      end
    end

    module DescribeStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamInput, context: context)
        type = Types::DescribeStreamInput.new
        type.stream_name = params[:stream_name]
        type.limit = params[:limit]
        type.exclusive_start_shard_id = params[:exclusive_start_shard_id]
        type
      end
    end

    module DescribeStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamOutput, context: context)
        type = Types::DescribeStreamOutput.new
        type.stream_description = StreamDescription.build(params[:stream_description], context: "#{context}[:stream_description]") unless params[:stream_description].nil?
        type
      end
    end

    module DescribeStreamSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamSummaryInput, context: context)
        type = Types::DescribeStreamSummaryInput.new
        type.stream_name = params[:stream_name]
        type
      end
    end

    module DescribeStreamSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamSummaryOutput, context: context)
        type = Types::DescribeStreamSummaryOutput.new
        type.stream_description_summary = StreamDescriptionSummary.build(params[:stream_description_summary], context: "#{context}[:stream_description_summary]") unless params[:stream_description_summary].nil?
        type
      end
    end

    module DisableEnhancedMonitoringInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableEnhancedMonitoringInput, context: context)
        type = Types::DisableEnhancedMonitoringInput.new
        type.stream_name = params[:stream_name]
        type.shard_level_metrics = MetricsNameList.build(params[:shard_level_metrics], context: "#{context}[:shard_level_metrics]") unless params[:shard_level_metrics].nil?
        type
      end
    end

    module DisableEnhancedMonitoringOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableEnhancedMonitoringOutput, context: context)
        type = Types::DisableEnhancedMonitoringOutput.new
        type.stream_name = params[:stream_name]
        type.current_shard_level_metrics = MetricsNameList.build(params[:current_shard_level_metrics], context: "#{context}[:current_shard_level_metrics]") unless params[:current_shard_level_metrics].nil?
        type.desired_shard_level_metrics = MetricsNameList.build(params[:desired_shard_level_metrics], context: "#{context}[:desired_shard_level_metrics]") unless params[:desired_shard_level_metrics].nil?
        type
      end
    end

    module EnableEnhancedMonitoringInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableEnhancedMonitoringInput, context: context)
        type = Types::EnableEnhancedMonitoringInput.new
        type.stream_name = params[:stream_name]
        type.shard_level_metrics = MetricsNameList.build(params[:shard_level_metrics], context: "#{context}[:shard_level_metrics]") unless params[:shard_level_metrics].nil?
        type
      end
    end

    module EnableEnhancedMonitoringOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableEnhancedMonitoringOutput, context: context)
        type = Types::EnableEnhancedMonitoringOutput.new
        type.stream_name = params[:stream_name]
        type.current_shard_level_metrics = MetricsNameList.build(params[:current_shard_level_metrics], context: "#{context}[:current_shard_level_metrics]") unless params[:current_shard_level_metrics].nil?
        type.desired_shard_level_metrics = MetricsNameList.build(params[:desired_shard_level_metrics], context: "#{context}[:desired_shard_level_metrics]") unless params[:desired_shard_level_metrics].nil?
        type
      end
    end

    module EnhancedMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnhancedMetrics, context: context)
        type = Types::EnhancedMetrics.new
        type.shard_level_metrics = MetricsNameList.build(params[:shard_level_metrics], context: "#{context}[:shard_level_metrics]") unless params[:shard_level_metrics].nil?
        type
      end
    end

    module EnhancedMonitoringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnhancedMetrics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExpiredIteratorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredIteratorException, context: context)
        type = Types::ExpiredIteratorException.new
        type.message = params[:message]
        type
      end
    end

    module ExpiredNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredNextTokenException, context: context)
        type = Types::ExpiredNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module GetRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecordsInput, context: context)
        type = Types::GetRecordsInput.new
        type.shard_iterator = params[:shard_iterator]
        type.limit = params[:limit]
        type
      end
    end

    module GetRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecordsOutput, context: context)
        type = Types::GetRecordsOutput.new
        type.records = RecordList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.next_shard_iterator = params[:next_shard_iterator]
        type.millis_behind_latest = params[:millis_behind_latest]
        type.child_shards = ChildShardList.build(params[:child_shards], context: "#{context}[:child_shards]") unless params[:child_shards].nil?
        type
      end
    end

    module GetShardIteratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetShardIteratorInput, context: context)
        type = Types::GetShardIteratorInput.new
        type.stream_name = params[:stream_name]
        type.shard_id = params[:shard_id]
        type.shard_iterator_type = params[:shard_iterator_type]
        type.starting_sequence_number = params[:starting_sequence_number]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module GetShardIteratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetShardIteratorOutput, context: context)
        type = Types::GetShardIteratorOutput.new
        type.shard_iterator = params[:shard_iterator]
        type
      end
    end

    module HashKeyRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HashKeyRange, context: context)
        type = Types::HashKeyRange.new
        type.starting_hash_key = params[:starting_hash_key]
        type.ending_hash_key = params[:ending_hash_key]
        type
      end
    end

    module IncreaseStreamRetentionPeriodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncreaseStreamRetentionPeriodInput, context: context)
        type = Types::IncreaseStreamRetentionPeriodInput.new
        type.stream_name = params[:stream_name]
        type.retention_period_hours = params[:retention_period_hours]
        type
      end
    end

    module IncreaseStreamRetentionPeriodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncreaseStreamRetentionPeriodOutput, context: context)
        type = Types::IncreaseStreamRetentionPeriodOutput.new
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module KMSAccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSAccessDeniedException, context: context)
        type = Types::KMSAccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module KMSDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSDisabledException, context: context)
        type = Types::KMSDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module KMSInvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSInvalidStateException, context: context)
        type = Types::KMSInvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module KMSNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSNotFoundException, context: context)
        type = Types::KMSNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module KMSOptInRequired
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSOptInRequired, context: context)
        type = Types::KMSOptInRequired.new
        type.message = params[:message]
        type
      end
    end

    module KMSThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSThrottlingException, context: context)
        type = Types::KMSThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListShardsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListShardsInput, context: context)
        type = Types::ListShardsInput.new
        type.stream_name = params[:stream_name]
        type.next_token = params[:next_token]
        type.exclusive_start_shard_id = params[:exclusive_start_shard_id]
        type.max_results = params[:max_results]
        type.stream_creation_timestamp = params[:stream_creation_timestamp]
        type.shard_filter = ShardFilter.build(params[:shard_filter], context: "#{context}[:shard_filter]") unless params[:shard_filter].nil?
        type
      end
    end

    module ListShardsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListShardsOutput, context: context)
        type = Types::ListShardsOutput.new
        type.shards = ShardList.build(params[:shards], context: "#{context}[:shards]") unless params[:shards].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStreamConsumersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamConsumersInput, context: context)
        type = Types::ListStreamConsumersInput.new
        type.stream_arn = params[:stream_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.stream_creation_timestamp = params[:stream_creation_timestamp]
        type
      end
    end

    module ListStreamConsumersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamConsumersOutput, context: context)
        type = Types::ListStreamConsumersOutput.new
        type.consumers = ConsumerList.build(params[:consumers], context: "#{context}[:consumers]") unless params[:consumers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsInput, context: context)
        type = Types::ListStreamsInput.new
        type.limit = params[:limit]
        type.exclusive_start_stream_name = params[:exclusive_start_stream_name]
        type
      end
    end

    module ListStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsOutput, context: context)
        type = Types::ListStreamsOutput.new
        type.stream_names = StreamNameList.build(params[:stream_names], context: "#{context}[:stream_names]") unless params[:stream_names].nil?
        type.has_more_streams = params[:has_more_streams]
        type
      end
    end

    module ListTagsForStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForStreamInput, context: context)
        type = Types::ListTagsForStreamInput.new
        type.stream_name = params[:stream_name]
        type.exclusive_start_tag_key = params[:exclusive_start_tag_key]
        type.limit = params[:limit]
        type
      end
    end

    module ListTagsForStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForStreamOutput, context: context)
        type = Types::ListTagsForStreamOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.has_more_tags = params[:has_more_tags]
        type
      end
    end

    module MergeShardsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeShardsInput, context: context)
        type = Types::MergeShardsInput.new
        type.stream_name = params[:stream_name]
        type.shard_to_merge = params[:shard_to_merge]
        type.adjacent_shard_to_merge = params[:adjacent_shard_to_merge]
        type
      end
    end

    module MergeShardsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeShardsOutput, context: context)
        type = Types::MergeShardsOutput.new
        type
      end
    end

    module MetricsNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProvisionedThroughputExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedThroughputExceededException, context: context)
        type = Types::ProvisionedThroughputExceededException.new
        type.message = params[:message]
        type
      end
    end

    module PutRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordInput, context: context)
        type = Types::PutRecordInput.new
        type.stream_name = params[:stream_name]
        type.data = params[:data]
        type.partition_key = params[:partition_key]
        type.explicit_hash_key = params[:explicit_hash_key]
        type.sequence_number_for_ordering = params[:sequence_number_for_ordering]
        type
      end
    end

    module PutRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordOutput, context: context)
        type = Types::PutRecordOutput.new
        type.shard_id = params[:shard_id]
        type.sequence_number = params[:sequence_number]
        type.encryption_type = params[:encryption_type]
        type
      end
    end

    module PutRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordsInput, context: context)
        type = Types::PutRecordsInput.new
        type.records = PutRecordsRequestEntryList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.stream_name = params[:stream_name]
        type
      end
    end

    module PutRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordsOutput, context: context)
        type = Types::PutRecordsOutput.new
        type.failed_record_count = params[:failed_record_count]
        type.records = PutRecordsResultEntryList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.encryption_type = params[:encryption_type]
        type
      end
    end

    module PutRecordsRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordsRequestEntry, context: context)
        type = Types::PutRecordsRequestEntry.new
        type.data = params[:data]
        type.explicit_hash_key = params[:explicit_hash_key]
        type.partition_key = params[:partition_key]
        type
      end
    end

    module PutRecordsRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutRecordsRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutRecordsResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordsResultEntry, context: context)
        type = Types::PutRecordsResultEntry.new
        type.sequence_number = params[:sequence_number]
        type.shard_id = params[:shard_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module PutRecordsResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutRecordsResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Record, context: context)
        type = Types::Record.new
        type.sequence_number = params[:sequence_number]
        type.approximate_arrival_timestamp = params[:approximate_arrival_timestamp]
        type.data = params[:data]
        type.partition_key = params[:partition_key]
        type.encryption_type = params[:encryption_type]
        type
      end
    end

    module RecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Record.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegisterStreamConsumerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterStreamConsumerInput, context: context)
        type = Types::RegisterStreamConsumerInput.new
        type.stream_arn = params[:stream_arn]
        type.consumer_name = params[:consumer_name]
        type
      end
    end

    module RegisterStreamConsumerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterStreamConsumerOutput, context: context)
        type = Types::RegisterStreamConsumerOutput.new
        type.consumer = Consumer.build(params[:consumer], context: "#{context}[:consumer]") unless params[:consumer].nil?
        type
      end
    end

    module RemoveTagsFromStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromStreamInput, context: context)
        type = Types::RemoveTagsFromStreamInput.new
        type.stream_name = params[:stream_name]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsFromStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromStreamOutput, context: context)
        type = Types::RemoveTagsFromStreamOutput.new
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SequenceNumberRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SequenceNumberRange, context: context)
        type = Types::SequenceNumberRange.new
        type.starting_sequence_number = params[:starting_sequence_number]
        type.ending_sequence_number = params[:ending_sequence_number]
        type
      end
    end

    module Shard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Shard, context: context)
        type = Types::Shard.new
        type.shard_id = params[:shard_id]
        type.parent_shard_id = params[:parent_shard_id]
        type.adjacent_parent_shard_id = params[:adjacent_parent_shard_id]
        type.hash_key_range = HashKeyRange.build(params[:hash_key_range], context: "#{context}[:hash_key_range]") unless params[:hash_key_range].nil?
        type.sequence_number_range = SequenceNumberRange.build(params[:sequence_number_range], context: "#{context}[:sequence_number_range]") unless params[:sequence_number_range].nil?
        type
      end
    end

    module ShardFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShardFilter, context: context)
        type = Types::ShardFilter.new
        type.type = params[:type]
        type.shard_id = params[:shard_id]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module ShardIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ShardList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Shard.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SplitShardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SplitShardInput, context: context)
        type = Types::SplitShardInput.new
        type.stream_name = params[:stream_name]
        type.shard_to_split = params[:shard_to_split]
        type.new_starting_hash_key = params[:new_starting_hash_key]
        type
      end
    end

    module SplitShardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SplitShardOutput, context: context)
        type = Types::SplitShardOutput.new
        type
      end
    end

    module StartStreamEncryptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStreamEncryptionInput, context: context)
        type = Types::StartStreamEncryptionInput.new
        type.stream_name = params[:stream_name]
        type.encryption_type = params[:encryption_type]
        type.key_id = params[:key_id]
        type
      end
    end

    module StartStreamEncryptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStreamEncryptionOutput, context: context)
        type = Types::StartStreamEncryptionOutput.new
        type
      end
    end

    module StartingPosition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartingPosition, context: context)
        type = Types::StartingPosition.new
        type.type = params[:type]
        type.sequence_number = params[:sequence_number]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module StopStreamEncryptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStreamEncryptionInput, context: context)
        type = Types::StopStreamEncryptionInput.new
        type.stream_name = params[:stream_name]
        type.encryption_type = params[:encryption_type]
        type.key_id = params[:key_id]
        type
      end
    end

    module StopStreamEncryptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStreamEncryptionOutput, context: context)
        type = Types::StopStreamEncryptionOutput.new
        type
      end
    end

    module StreamDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamDescription, context: context)
        type = Types::StreamDescription.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.stream_status = params[:stream_status]
        type.stream_mode_details = StreamModeDetails.build(params[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless params[:stream_mode_details].nil?
        type.shards = ShardList.build(params[:shards], context: "#{context}[:shards]") unless params[:shards].nil?
        type.has_more_shards = params[:has_more_shards]
        type.retention_period_hours = params[:retention_period_hours]
        type.stream_creation_timestamp = params[:stream_creation_timestamp]
        type.enhanced_monitoring = EnhancedMonitoringList.build(params[:enhanced_monitoring], context: "#{context}[:enhanced_monitoring]") unless params[:enhanced_monitoring].nil?
        type.encryption_type = params[:encryption_type]
        type.key_id = params[:key_id]
        type
      end
    end

    module StreamDescriptionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamDescriptionSummary, context: context)
        type = Types::StreamDescriptionSummary.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.stream_status = params[:stream_status]
        type.stream_mode_details = StreamModeDetails.build(params[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless params[:stream_mode_details].nil?
        type.retention_period_hours = params[:retention_period_hours]
        type.stream_creation_timestamp = params[:stream_creation_timestamp]
        type.enhanced_monitoring = EnhancedMonitoringList.build(params[:enhanced_monitoring], context: "#{context}[:enhanced_monitoring]") unless params[:enhanced_monitoring].nil?
        type.encryption_type = params[:encryption_type]
        type.key_id = params[:key_id]
        type.open_shard_count = params[:open_shard_count]
        type.consumer_count = params[:consumer_count]
        type
      end
    end

    module StreamModeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamModeDetails, context: context)
        type = Types::StreamModeDetails.new
        type.stream_mode = params[:stream_mode]
        type
      end
    end

    module StreamNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubscribeToShardEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeToShardEvent, context: context)
        type = Types::SubscribeToShardEvent.new
        type.records = RecordList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.continuation_sequence_number = params[:continuation_sequence_number]
        type.millis_behind_latest = params[:millis_behind_latest]
        type.child_shards = ChildShardList.build(params[:child_shards], context: "#{context}[:child_shards]") unless params[:child_shards].nil?
        type
      end
    end

    module SubscribeToShardEventStream
      def self.build(params, context: '')
        return params if params.is_a?(Types::SubscribeToShardEventStream)
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeToShardEventStream, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :subscribe_to_shard_event
          Types::SubscribeToShardEventStream::SubscribeToShardEvent.new(
            (SubscribeToShardEvent.build(params[:subscribe_to_shard_event], context: "#{context}[:subscribe_to_shard_event]") unless params[:subscribe_to_shard_event].nil?)
          )
        when :resource_not_found_exception
          Types::SubscribeToShardEventStream::ResourceNotFoundException.new(
            (ResourceNotFoundException.build(params[:resource_not_found_exception], context: "#{context}[:resource_not_found_exception]") unless params[:resource_not_found_exception].nil?)
          )
        when :resource_in_use_exception
          Types::SubscribeToShardEventStream::ResourceInUseException.new(
            (ResourceInUseException.build(params[:resource_in_use_exception], context: "#{context}[:resource_in_use_exception]") unless params[:resource_in_use_exception].nil?)
          )
        when :kms_disabled_exception
          Types::SubscribeToShardEventStream::KmsDisabledException.new(
            (KMSDisabledException.build(params[:kms_disabled_exception], context: "#{context}[:kms_disabled_exception]") unless params[:kms_disabled_exception].nil?)
          )
        when :kms_invalid_state_exception
          Types::SubscribeToShardEventStream::KmsInvalidStateException.new(
            (KMSInvalidStateException.build(params[:kms_invalid_state_exception], context: "#{context}[:kms_invalid_state_exception]") unless params[:kms_invalid_state_exception].nil?)
          )
        when :kms_access_denied_exception
          Types::SubscribeToShardEventStream::KmsAccessDeniedException.new(
            (KMSAccessDeniedException.build(params[:kms_access_denied_exception], context: "#{context}[:kms_access_denied_exception]") unless params[:kms_access_denied_exception].nil?)
          )
        when :kms_not_found_exception
          Types::SubscribeToShardEventStream::KmsNotFoundException.new(
            (KMSNotFoundException.build(params[:kms_not_found_exception], context: "#{context}[:kms_not_found_exception]") unless params[:kms_not_found_exception].nil?)
          )
        when :kms_opt_in_required
          Types::SubscribeToShardEventStream::KmsOptInRequired.new(
            (KMSOptInRequired.build(params[:kms_opt_in_required], context: "#{context}[:kms_opt_in_required]") unless params[:kms_opt_in_required].nil?)
          )
        when :kms_throttling_exception
          Types::SubscribeToShardEventStream::KmsThrottlingException.new(
            (KMSThrottlingException.build(params[:kms_throttling_exception], context: "#{context}[:kms_throttling_exception]") unless params[:kms_throttling_exception].nil?)
          )
        when :internal_failure_exception
          Types::SubscribeToShardEventStream::InternalFailureException.new(
            (InternalFailureException.build(params[:internal_failure_exception], context: "#{context}[:internal_failure_exception]") unless params[:internal_failure_exception].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :subscribe_to_shard_event, :resource_not_found_exception, :resource_in_use_exception, :kms_disabled_exception, :kms_invalid_state_exception, :kms_access_denied_exception, :kms_not_found_exception, :kms_opt_in_required, :kms_throttling_exception, :internal_failure_exception set"
        end
      end
    end

    module SubscribeToShardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeToShardInput, context: context)
        type = Types::SubscribeToShardInput.new
        type.consumer_arn = params[:consumer_arn]
        type.shard_id = params[:shard_id]
        type.starting_position = StartingPosition.build(params[:starting_position], context: "#{context}[:starting_position]") unless params[:starting_position].nil?
        type
      end
    end

    module SubscribeToShardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeToShardOutput, context: context)
        type = Types::SubscribeToShardOutput.new
        type.event_stream = SubscribeToShardEventStream.build(params[:event_stream], context: "#{context}[:event_stream]") unless params[:event_stream].nil?
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UpdateShardCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateShardCountInput, context: context)
        type = Types::UpdateShardCountInput.new
        type.stream_name = params[:stream_name]
        type.target_shard_count = params[:target_shard_count]
        type.scaling_type = params[:scaling_type]
        type
      end
    end

    module UpdateShardCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateShardCountOutput, context: context)
        type = Types::UpdateShardCountOutput.new
        type.stream_name = params[:stream_name]
        type.current_shard_count = params[:current_shard_count]
        type.target_shard_count = params[:target_shard_count]
        type
      end
    end

    module UpdateStreamModeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamModeInput, context: context)
        type = Types::UpdateStreamModeInput.new
        type.stream_arn = params[:stream_arn]
        type.stream_mode_details = StreamModeDetails.build(params[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless params[:stream_mode_details].nil?
        type
      end
    end

    module UpdateStreamModeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamModeOutput, context: context)
        type = Types::UpdateStreamModeOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
