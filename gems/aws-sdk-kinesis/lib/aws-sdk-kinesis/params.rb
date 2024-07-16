# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  # @api private
  module Params

    class AccessDeniedException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class AddTagsToStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AddTagsToStreamInput, context: context)
        type = Types::AddTagsToStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class AddTagsToStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AddTagsToStreamOutput, context: context)
        type = Types::AddTagsToStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ChildShard
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ChildShard, context: context)
        type = Types::ChildShard.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.shard_id = params[:shard_id] unless params[:shard_id].nil?
        type.parent_shards = ShardIdList.build(params[:parent_shards], context: "#{context}[:parent_shards]") unless params[:parent_shards].nil?
        type.hash_key_range = HashKeyRange.build(params[:hash_key_range], context: "#{context}[:hash_key_range]") unless params[:hash_key_range].nil?
        type
      end
    end

    class ChildShardList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChildShard.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Consumer
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Consumer, context: context)
        type = Types::Consumer.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.consumer_name = params[:consumer_name] unless params[:consumer_name].nil?
        type.consumer_arn = params[:consumer_arn] unless params[:consumer_arn].nil?
        type.consumer_status = params[:consumer_status] unless params[:consumer_status].nil?
        type.consumer_creation_timestamp = params[:consumer_creation_timestamp] unless params[:consumer_creation_timestamp].nil?
        type
      end
    end

    class ConsumerDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConsumerDescription, context: context)
        type = Types::ConsumerDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.consumer_name = params[:consumer_name] unless params[:consumer_name].nil?
        type.consumer_arn = params[:consumer_arn] unless params[:consumer_arn].nil?
        type.consumer_status = params[:consumer_status] unless params[:consumer_status].nil?
        type.consumer_creation_timestamp = params[:consumer_creation_timestamp] unless params[:consumer_creation_timestamp].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class ConsumerList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Consumer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class CreateStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateStreamInput, context: context)
        type = Types::CreateStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.shard_count = params[:shard_count] unless params[:shard_count].nil?
        type.stream_mode_details = StreamModeDetails.build(params[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless params[:stream_mode_details].nil?
        type
      end
    end

    class CreateStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateStreamOutput, context: context)
        type = Types::CreateStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DecreaseStreamRetentionPeriodInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DecreaseStreamRetentionPeriodInput, context: context)
        type = Types::DecreaseStreamRetentionPeriodInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.retention_period_hours = params[:retention_period_hours] unless params[:retention_period_hours].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class DecreaseStreamRetentionPeriodOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DecreaseStreamRetentionPeriodOutput, context: context)
        type = Types::DecreaseStreamRetentionPeriodOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteResourcePolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type
      end
    end

    class DeleteResourcePolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteStreamInput, context: context)
        type = Types::DeleteStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.enforce_consumer_deletion = params[:enforce_consumer_deletion] unless params[:enforce_consumer_deletion].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class DeleteStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteStreamOutput, context: context)
        type = Types::DeleteStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeregisterStreamConsumerInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeregisterStreamConsumerInput, context: context)
        type = Types::DeregisterStreamConsumerInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.consumer_name = params[:consumer_name] unless params[:consumer_name].nil?
        type.consumer_arn = params[:consumer_arn] unless params[:consumer_arn].nil?
        type
      end
    end

    class DeregisterStreamConsumerOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeregisterStreamConsumerOutput, context: context)
        type = Types::DeregisterStreamConsumerOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DescribeLimitsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeLimitsInput, context: context)
        type = Types::DescribeLimitsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DescribeLimitsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeLimitsOutput, context: context)
        type = Types::DescribeLimitsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.shard_limit = params[:shard_limit] unless params[:shard_limit].nil?
        type.open_shard_count = params[:open_shard_count] unless params[:open_shard_count].nil?
        type.on_demand_stream_count = params[:on_demand_stream_count] unless params[:on_demand_stream_count].nil?
        type.on_demand_stream_count_limit = params[:on_demand_stream_count_limit] unless params[:on_demand_stream_count_limit].nil?
        type
      end
    end

    class DescribeStreamConsumerInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeStreamConsumerInput, context: context)
        type = Types::DescribeStreamConsumerInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.consumer_name = params[:consumer_name] unless params[:consumer_name].nil?
        type.consumer_arn = params[:consumer_arn] unless params[:consumer_arn].nil?
        type
      end
    end

    class DescribeStreamConsumerOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeStreamConsumerOutput, context: context)
        type = Types::DescribeStreamConsumerOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.consumer_description = ConsumerDescription.build(params[:consumer_description], context: "#{context}[:consumer_description]") unless params[:consumer_description].nil?
        type
      end
    end

    class DescribeStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeStreamInput, context: context)
        type = Types::DescribeStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.exclusive_start_shard_id = params[:exclusive_start_shard_id] unless params[:exclusive_start_shard_id].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class DescribeStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeStreamOutput, context: context)
        type = Types::DescribeStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_description = StreamDescription.build(params[:stream_description], context: "#{context}[:stream_description]") unless params[:stream_description].nil?
        type
      end
    end

    class DescribeStreamSummaryInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeStreamSummaryInput, context: context)
        type = Types::DescribeStreamSummaryInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class DescribeStreamSummaryOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeStreamSummaryOutput, context: context)
        type = Types::DescribeStreamSummaryOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_description_summary = StreamDescriptionSummary.build(params[:stream_description_summary], context: "#{context}[:stream_description_summary]") unless params[:stream_description_summary].nil?
        type
      end
    end

    class DisableEnhancedMonitoringInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableEnhancedMonitoringInput, context: context)
        type = Types::DisableEnhancedMonitoringInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.shard_level_metrics = MetricsNameList.build(params[:shard_level_metrics], context: "#{context}[:shard_level_metrics]") unless params[:shard_level_metrics].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class DisableEnhancedMonitoringOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableEnhancedMonitoringOutput, context: context)
        type = Types::DisableEnhancedMonitoringOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.current_shard_level_metrics = MetricsNameList.build(params[:current_shard_level_metrics], context: "#{context}[:current_shard_level_metrics]") unless params[:current_shard_level_metrics].nil?
        type.desired_shard_level_metrics = MetricsNameList.build(params[:desired_shard_level_metrics], context: "#{context}[:desired_shard_level_metrics]") unless params[:desired_shard_level_metrics].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class EnableEnhancedMonitoringInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableEnhancedMonitoringInput, context: context)
        type = Types::EnableEnhancedMonitoringInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.shard_level_metrics = MetricsNameList.build(params[:shard_level_metrics], context: "#{context}[:shard_level_metrics]") unless params[:shard_level_metrics].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class EnableEnhancedMonitoringOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableEnhancedMonitoringOutput, context: context)
        type = Types::EnableEnhancedMonitoringOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.current_shard_level_metrics = MetricsNameList.build(params[:current_shard_level_metrics], context: "#{context}[:current_shard_level_metrics]") unless params[:current_shard_level_metrics].nil?
        type.desired_shard_level_metrics = MetricsNameList.build(params[:desired_shard_level_metrics], context: "#{context}[:desired_shard_level_metrics]") unless params[:desired_shard_level_metrics].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class EnhancedMetrics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnhancedMetrics, context: context)
        type = Types::EnhancedMetrics.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.shard_level_metrics = MetricsNameList.build(params[:shard_level_metrics], context: "#{context}[:shard_level_metrics]") unless params[:shard_level_metrics].nil?
        type
      end
    end

    class EnhancedMonitoringList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnhancedMetrics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ExpiredIteratorException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExpiredIteratorException, context: context)
        type = Types::ExpiredIteratorException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ExpiredNextTokenException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExpiredNextTokenException, context: context)
        type = Types::ExpiredNextTokenException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class GetRecordsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetRecordsInput, context: context)
        type = Types::GetRecordsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.shard_iterator = params[:shard_iterator] unless params[:shard_iterator].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class GetRecordsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetRecordsOutput, context: context)
        type = Types::GetRecordsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.records = RecordList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.next_shard_iterator = params[:next_shard_iterator] unless params[:next_shard_iterator].nil?
        type.millis_behind_latest = params[:millis_behind_latest] unless params[:millis_behind_latest].nil?
        type.child_shards = ChildShardList.build(params[:child_shards], context: "#{context}[:child_shards]") unless params[:child_shards].nil?
        type
      end
    end

    class GetResourcePolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetResourcePolicyInput, context: context)
        type = Types::GetResourcePolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type
      end
    end

    class GetResourcePolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetResourcePolicyOutput, context: context)
        type = Types::GetResourcePolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy = params[:policy] unless params[:policy].nil?
        type
      end
    end

    class GetShardIteratorInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetShardIteratorInput, context: context)
        type = Types::GetShardIteratorInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.shard_id = params[:shard_id] unless params[:shard_id].nil?
        type.shard_iterator_type = params[:shard_iterator_type] unless params[:shard_iterator_type].nil?
        type.starting_sequence_number = params[:starting_sequence_number] unless params[:starting_sequence_number].nil?
        type.timestamp = params[:timestamp] unless params[:timestamp].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class GetShardIteratorOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetShardIteratorOutput, context: context)
        type = Types::GetShardIteratorOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.shard_iterator = params[:shard_iterator] unless params[:shard_iterator].nil?
        type
      end
    end

    class HashKeyRange
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HashKeyRange, context: context)
        type = Types::HashKeyRange.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.starting_hash_key = params[:starting_hash_key] unless params[:starting_hash_key].nil?
        type.ending_hash_key = params[:ending_hash_key] unless params[:ending_hash_key].nil?
        type
      end
    end

    class IncreaseStreamRetentionPeriodInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IncreaseStreamRetentionPeriodInput, context: context)
        type = Types::IncreaseStreamRetentionPeriodInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.retention_period_hours = params[:retention_period_hours] unless params[:retention_period_hours].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class IncreaseStreamRetentionPeriodOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IncreaseStreamRetentionPeriodOutput, context: context)
        type = Types::IncreaseStreamRetentionPeriodOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class InternalFailureException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidArgumentException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSAccessDeniedException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSAccessDeniedException, context: context)
        type = Types::KMSAccessDeniedException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSDisabledException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSDisabledException, context: context)
        type = Types::KMSDisabledException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSInvalidStateException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSInvalidStateException, context: context)
        type = Types::KMSInvalidStateException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSNotFoundException, context: context)
        type = Types::KMSNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSOptInRequired
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSOptInRequired, context: context)
        type = Types::KMSOptInRequired.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSThrottlingException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSThrottlingException, context: context)
        type = Types::KMSThrottlingException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class LimitExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ListShardsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListShardsInput, context: context)
        type = Types::ListShardsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.exclusive_start_shard_id = params[:exclusive_start_shard_id] unless params[:exclusive_start_shard_id].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type.stream_creation_timestamp = params[:stream_creation_timestamp] unless params[:stream_creation_timestamp].nil?
        type.shard_filter = ShardFilter.build(params[:shard_filter], context: "#{context}[:shard_filter]") unless params[:shard_filter].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class ListShardsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListShardsOutput, context: context)
        type = Types::ListShardsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.shards = ShardList.build(params[:shards], context: "#{context}[:shards]") unless params[:shards].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListStreamConsumersInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListStreamConsumersInput, context: context)
        type = Types::ListStreamConsumersInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type.stream_creation_timestamp = params[:stream_creation_timestamp] unless params[:stream_creation_timestamp].nil?
        type
      end
    end

    class ListStreamConsumersOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListStreamConsumersOutput, context: context)
        type = Types::ListStreamConsumersOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.consumers = ConsumerList.build(params[:consumers], context: "#{context}[:consumers]") unless params[:consumers].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListStreamsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListStreamsInput, context: context)
        type = Types::ListStreamsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.limit = params[:limit] unless params[:limit].nil?
        type.exclusive_start_stream_name = params[:exclusive_start_stream_name] unless params[:exclusive_start_stream_name].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListStreamsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListStreamsOutput, context: context)
        type = Types::ListStreamsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_names = StreamNameList.build(params[:stream_names], context: "#{context}[:stream_names]") unless params[:stream_names].nil?
        type.has_more_streams = params[:has_more_streams] unless params[:has_more_streams].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.stream_summaries = StreamSummaryList.build(params[:stream_summaries], context: "#{context}[:stream_summaries]") unless params[:stream_summaries].nil?
        type
      end
    end

    class ListTagsForStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTagsForStreamInput, context: context)
        type = Types::ListTagsForStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.exclusive_start_tag_key = params[:exclusive_start_tag_key] unless params[:exclusive_start_tag_key].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class ListTagsForStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTagsForStreamOutput, context: context)
        type = Types::ListTagsForStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.has_more_tags = params[:has_more_tags] unless params[:has_more_tags].nil?
        type
      end
    end

    class MergeShardsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MergeShardsInput, context: context)
        type = Types::MergeShardsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.shard_to_merge = params[:shard_to_merge] unless params[:shard_to_merge].nil?
        type.adjacent_shard_to_merge = params[:adjacent_shard_to_merge] unless params[:adjacent_shard_to_merge].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class MergeShardsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MergeShardsOutput, context: context)
        type = Types::MergeShardsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class MetricsNameList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ProvisionedThroughputExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProvisionedThroughputExceededException, context: context)
        type = Types::ProvisionedThroughputExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class PutRecordInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutRecordInput, context: context)
        type = Types::PutRecordInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.data = params[:data] unless params[:data].nil?
        type.partition_key = params[:partition_key] unless params[:partition_key].nil?
        type.explicit_hash_key = params[:explicit_hash_key] unless params[:explicit_hash_key].nil?
        type.sequence_number_for_ordering = params[:sequence_number_for_ordering] unless params[:sequence_number_for_ordering].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class PutRecordOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutRecordOutput, context: context)
        type = Types::PutRecordOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.shard_id = params[:shard_id] unless params[:shard_id].nil?
        type.sequence_number = params[:sequence_number] unless params[:sequence_number].nil?
        type.encryption_type = params[:encryption_type] unless params[:encryption_type].nil?
        type
      end
    end

    class PutRecordsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutRecordsInput, context: context)
        type = Types::PutRecordsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.records = PutRecordsRequestEntryList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class PutRecordsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutRecordsOutput, context: context)
        type = Types::PutRecordsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failed_record_count = params[:failed_record_count] unless params[:failed_record_count].nil?
        type.records = PutRecordsResultEntryList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.encryption_type = params[:encryption_type] unless params[:encryption_type].nil?
        type
      end
    end

    class PutRecordsRequestEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutRecordsRequestEntry, context: context)
        type = Types::PutRecordsRequestEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.data = params[:data] unless params[:data].nil?
        type.explicit_hash_key = params[:explicit_hash_key] unless params[:explicit_hash_key].nil?
        type.partition_key = params[:partition_key] unless params[:partition_key].nil?
        type
      end
    end

    class PutRecordsRequestEntryList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutRecordsRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class PutRecordsResultEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutRecordsResultEntry, context: context)
        type = Types::PutRecordsResultEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sequence_number = params[:sequence_number] unless params[:sequence_number].nil?
        type.shard_id = params[:shard_id] unless params[:shard_id].nil?
        type.error_code = params[:error_code] unless params[:error_code].nil?
        type.error_message = params[:error_message] unless params[:error_message].nil?
        type
      end
    end

    class PutRecordsResultEntryList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutRecordsResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class PutResourcePolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type.policy = params[:policy] unless params[:policy].nil?
        type
      end
    end

    class PutResourcePolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class Record
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Record, context: context)
        type = Types::Record.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sequence_number = params[:sequence_number] unless params[:sequence_number].nil?
        type.approximate_arrival_timestamp = params[:approximate_arrival_timestamp] unless params[:approximate_arrival_timestamp].nil?
        type.data = params[:data] unless params[:data].nil?
        type.partition_key = params[:partition_key] unless params[:partition_key].nil?
        type.encryption_type = params[:encryption_type] unless params[:encryption_type].nil?
        type
      end
    end

    class RecordList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Record.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class RegisterStreamConsumerInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RegisterStreamConsumerInput, context: context)
        type = Types::RegisterStreamConsumerInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.consumer_name = params[:consumer_name] unless params[:consumer_name].nil?
        type
      end
    end

    class RegisterStreamConsumerOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RegisterStreamConsumerOutput, context: context)
        type = Types::RegisterStreamConsumerOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.consumer = Consumer.build(params[:consumer], context: "#{context}[:consumer]") unless params[:consumer].nil?
        type
      end
    end

    class RemoveTagsFromStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RemoveTagsFromStreamInput, context: context)
        type = Types::RemoveTagsFromStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class RemoveTagsFromStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RemoveTagsFromStreamOutput, context: context)
        type = Types::RemoveTagsFromStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ResourceInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ResourceNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class SequenceNumberRange
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SequenceNumberRange, context: context)
        type = Types::SequenceNumberRange.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.starting_sequence_number = params[:starting_sequence_number] unless params[:starting_sequence_number].nil?
        type.ending_sequence_number = params[:ending_sequence_number] unless params[:ending_sequence_number].nil?
        type
      end
    end

    class Shard
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Shard, context: context)
        type = Types::Shard.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.shard_id = params[:shard_id] unless params[:shard_id].nil?
        type.parent_shard_id = params[:parent_shard_id] unless params[:parent_shard_id].nil?
        type.adjacent_parent_shard_id = params[:adjacent_parent_shard_id] unless params[:adjacent_parent_shard_id].nil?
        type.hash_key_range = HashKeyRange.build(params[:hash_key_range], context: "#{context}[:hash_key_range]") unless params[:hash_key_range].nil?
        type.sequence_number_range = SequenceNumberRange.build(params[:sequence_number_range], context: "#{context}[:sequence_number_range]") unless params[:sequence_number_range].nil?
        type
      end
    end

    class ShardFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ShardFilter, context: context)
        type = Types::ShardFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.type = params[:type] unless params[:type].nil?
        type.shard_id = params[:shard_id] unless params[:shard_id].nil?
        type.timestamp = params[:timestamp] unless params[:timestamp].nil?
        type
      end
    end

    class ShardIdList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ShardList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Shard.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class SplitShardInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SplitShardInput, context: context)
        type = Types::SplitShardInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.shard_to_split = params[:shard_to_split] unless params[:shard_to_split].nil?
        type.new_starting_hash_key = params[:new_starting_hash_key] unless params[:new_starting_hash_key].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class SplitShardOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SplitShardOutput, context: context)
        type = Types::SplitShardOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class StartStreamEncryptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartStreamEncryptionInput, context: context)
        type = Types::StartStreamEncryptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.encryption_type = params[:encryption_type] unless params[:encryption_type].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class StartStreamEncryptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartStreamEncryptionOutput, context: context)
        type = Types::StartStreamEncryptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class StartingPosition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartingPosition, context: context)
        type = Types::StartingPosition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.type = params[:type] unless params[:type].nil?
        type.sequence_number = params[:sequence_number] unless params[:sequence_number].nil?
        type.timestamp = params[:timestamp] unless params[:timestamp].nil?
        type
      end
    end

    class StopStreamEncryptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopStreamEncryptionInput, context: context)
        type = Types::StopStreamEncryptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.encryption_type = params[:encryption_type] unless params[:encryption_type].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class StopStreamEncryptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopStreamEncryptionOutput, context: context)
        type = Types::StopStreamEncryptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class StreamDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StreamDescription, context: context)
        type = Types::StreamDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.stream_status = params[:stream_status] unless params[:stream_status].nil?
        type.stream_mode_details = StreamModeDetails.build(params[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless params[:stream_mode_details].nil?
        type.shards = ShardList.build(params[:shards], context: "#{context}[:shards]") unless params[:shards].nil?
        type.has_more_shards = params[:has_more_shards] unless params[:has_more_shards].nil?
        type.retention_period_hours = params[:retention_period_hours] unless params[:retention_period_hours].nil?
        type.stream_creation_timestamp = params[:stream_creation_timestamp] unless params[:stream_creation_timestamp].nil?
        type.enhanced_monitoring = EnhancedMonitoringList.build(params[:enhanced_monitoring], context: "#{context}[:enhanced_monitoring]") unless params[:enhanced_monitoring].nil?
        type.encryption_type = params[:encryption_type] unless params[:encryption_type].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class StreamDescriptionSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StreamDescriptionSummary, context: context)
        type = Types::StreamDescriptionSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.stream_status = params[:stream_status] unless params[:stream_status].nil?
        type.stream_mode_details = StreamModeDetails.build(params[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless params[:stream_mode_details].nil?
        type.retention_period_hours = params[:retention_period_hours] unless params[:retention_period_hours].nil?
        type.stream_creation_timestamp = params[:stream_creation_timestamp] unless params[:stream_creation_timestamp].nil?
        type.enhanced_monitoring = EnhancedMonitoringList.build(params[:enhanced_monitoring], context: "#{context}[:enhanced_monitoring]") unless params[:enhanced_monitoring].nil?
        type.encryption_type = params[:encryption_type] unless params[:encryption_type].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.open_shard_count = params[:open_shard_count] unless params[:open_shard_count].nil?
        type.consumer_count = params[:consumer_count] unless params[:consumer_count].nil?
        type
      end
    end

    class StreamModeDetails
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StreamModeDetails, context: context)
        type = Types::StreamModeDetails.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_mode = params[:stream_mode] unless params[:stream_mode].nil?
        type
      end
    end

    class StreamNameList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class StreamSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StreamSummary, context: context)
        type = Types::StreamSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.stream_status = params[:stream_status] unless params[:stream_status].nil?
        type.stream_mode_details = StreamModeDetails.build(params[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless params[:stream_mode_details].nil?
        type.stream_creation_timestamp = params[:stream_creation_timestamp] unless params[:stream_creation_timestamp].nil?
        type
      end
    end

    class StreamSummaryList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class SubscribeToShardEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SubscribeToShardEvent, context: context)
        type = Types::SubscribeToShardEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.records = RecordList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.continuation_sequence_number = params[:continuation_sequence_number] unless params[:continuation_sequence_number].nil?
        type.millis_behind_latest = params[:millis_behind_latest] unless params[:millis_behind_latest].nil?
        type.child_shards = ChildShardList.build(params[:child_shards], context: "#{context}[:child_shards]") unless params[:child_shards].nil?
        type
      end
    end

    class SubscribeToShardEventStream
      def self.build(params, context:)
        return params if params.is_a?(Types::SubscribeToShardEventStream)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SubscribeToShardEventStream, context: context)
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

    class SubscribeToShardInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SubscribeToShardInput, context: context)
        type = Types::SubscribeToShardInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.consumer_arn = params[:consumer_arn] unless params[:consumer_arn].nil?
        type.shard_id = params[:shard_id] unless params[:shard_id].nil?
        type.starting_position = StartingPosition.build(params[:starting_position], context: "#{context}[:starting_position]") unless params[:starting_position].nil?
        type
      end
    end

    class SubscribeToShardOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SubscribeToShardOutput, context: context)
        type = Types::SubscribeToShardOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.event_stream = SubscribeToShardEventStream.build(params[:event_stream], context: "#{context}[:event_stream]") unless params[:event_stream].nil?
        type
      end
    end

    class Tag
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class TagKeyList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TagList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class TagMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class UpdateShardCountInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateShardCountInput, context: context)
        type = Types::UpdateShardCountInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.target_shard_count = params[:target_shard_count] unless params[:target_shard_count].nil?
        type.scaling_type = params[:scaling_type] unless params[:scaling_type].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class UpdateShardCountOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateShardCountOutput, context: context)
        type = Types::UpdateShardCountOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_name = params[:stream_name] unless params[:stream_name].nil?
        type.current_shard_count = params[:current_shard_count] unless params[:current_shard_count].nil?
        type.target_shard_count = params[:target_shard_count] unless params[:target_shard_count].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type
      end
    end

    class UpdateStreamModeInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateStreamModeInput, context: context)
        type = Types::UpdateStreamModeInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.stream_mode_details = StreamModeDetails.build(params[:stream_mode_details], context: "#{context}[:stream_mode_details]") unless params[:stream_mode_details].nil?
        type
      end
    end

    class UpdateStreamModeOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateStreamModeOutput, context: context)
        type = Types::UpdateStreamModeOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ValidationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

  end
end
