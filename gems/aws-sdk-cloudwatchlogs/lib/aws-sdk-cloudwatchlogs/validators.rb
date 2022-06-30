# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatchLogs
  module Validators

    class AssociateKmsKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateKmsKeyInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class AssociateKmsKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateKmsKeyOutput, context: context)
      end
    end

    class CancelExportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelExportTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class CancelExportTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelExportTaskOutput, context: context)
      end
    end

    class CreateExportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExportTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_name], ::String, context: "#{context}[:task_name]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:log_stream_name_prefix], ::String, context: "#{context}[:log_stream_name_prefix]")
        Hearth::Validator.validate!(input[:from], ::Integer, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:to], ::Integer, context: "#{context}[:to]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:destination_prefix], ::String, context: "#{context}[:destination_prefix]")
      end
    end

    class CreateExportTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExportTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class CreateLogGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLogGroupInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLogGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLogGroupOutput, context: context)
      end
    end

    class CreateLogStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLogStreamInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
      end
    end

    class CreateLogStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLogStreamOutput, context: context)
      end
    end

    class DataAlreadyAcceptedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataAlreadyAcceptedException, context: context)
        Hearth::Validator.validate!(input[:expected_sequence_token], ::String, context: "#{context}[:expected_sequence_token]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDestinationInput, context: context)
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
      end
    end

    class DeleteDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDestinationOutput, context: context)
      end
    end

    class DeleteLogGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLogGroupInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class DeleteLogGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLogGroupOutput, context: context)
      end
    end

    class DeleteLogStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLogStreamInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
      end
    end

    class DeleteLogStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLogStreamOutput, context: context)
      end
    end

    class DeleteMetricFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMetricFilterInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
      end
    end

    class DeleteMetricFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMetricFilterOutput, context: context)
      end
    end

    class DeleteQueryDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueryDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:query_definition_id], ::String, context: "#{context}[:query_definition_id]")
      end
    end

    class DeleteQueryDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueryDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:success], ::TrueClass, ::FalseClass, context: "#{context}[:success]")
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DeleteRetentionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRetentionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class DeleteRetentionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRetentionPolicyOutput, context: context)
      end
    end

    class DeleteSubscriptionFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubscriptionFilterInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
      end
    end

    class DeleteSubscriptionFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubscriptionFilterOutput, context: context)
      end
    end

    class DescribeDestinationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDestinationsInput, context: context)
        Hearth::Validator.validate!(input[:destination_name_prefix], ::String, context: "#{context}[:destination_name_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeDestinationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDestinationsOutput, context: context)
        Validators::Destinations.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeExportTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportTasksInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeExportTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportTasksOutput, context: context)
        Validators::ExportTasks.validate!(input[:export_tasks], context: "#{context}[:export_tasks]") unless input[:export_tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeLogGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLogGroupsInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name_prefix], ::String, context: "#{context}[:log_group_name_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeLogGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLogGroupsOutput, context: context)
        Validators::LogGroups.validate!(input[:log_groups], context: "#{context}[:log_groups]") unless input[:log_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeLogStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLogStreamsInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:log_stream_name_prefix], ::String, context: "#{context}[:log_stream_name_prefix]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
        Hearth::Validator.validate!(input[:descending], ::TrueClass, ::FalseClass, context: "#{context}[:descending]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeLogStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLogStreamsOutput, context: context)
        Validators::LogStreams.validate!(input[:log_streams], context: "#{context}[:log_streams]") unless input[:log_streams].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMetricFiltersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMetricFiltersInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:filter_name_prefix], ::String, context: "#{context}[:filter_name_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_namespace], ::String, context: "#{context}[:metric_namespace]")
      end
    end

    class DescribeMetricFiltersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMetricFiltersOutput, context: context)
        Validators::MetricFilters.validate!(input[:metric_filters], context: "#{context}[:metric_filters]") unless input[:metric_filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeQueriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQueriesInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeQueriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQueriesOutput, context: context)
        Validators::QueryInfoList.validate!(input[:queries], context: "#{context}[:queries]") unless input[:queries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeQueryDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQueryDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:query_definition_name_prefix], ::String, context: "#{context}[:query_definition_name_prefix]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeQueryDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQueryDefinitionsOutput, context: context)
        Validators::QueryDefinitionList.validate!(input[:query_definitions], context: "#{context}[:query_definitions]") unless input[:query_definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeResourcePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePoliciesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeResourcePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePoliciesOutput, context: context)
        Validators::ResourcePolicies.validate!(input[:resource_policies], context: "#{context}[:resource_policies]") unless input[:resource_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSubscriptionFiltersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubscriptionFiltersInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:filter_name_prefix], ::String, context: "#{context}[:filter_name_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeSubscriptionFiltersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubscriptionFiltersOutput, context: context)
        Validators::SubscriptionFilters.validate!(input[:subscription_filters], context: "#{context}[:subscription_filters]") unless input[:subscription_filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:access_policy], ::String, context: "#{context}[:access_policy]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
      end
    end

    class Destinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Destination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Dimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DisassociateKmsKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateKmsKeyInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class DisassociateKmsKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateKmsKeyOutput, context: context)
      end
    end

    class ExportTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTask, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:task_name], ::String, context: "#{context}[:task_name]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:from], ::Integer, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:to], ::Integer, context: "#{context}[:to]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:destination_prefix], ::String, context: "#{context}[:destination_prefix]")
        Validators::ExportTaskStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::ExportTaskExecutionInfo.validate!(input[:execution_info], context: "#{context}[:execution_info]") unless input[:execution_info].nil?
      end
    end

    class ExportTaskExecutionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTaskExecutionInfo, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Integer, context: "#{context}[:completion_time]")
      end
    end

    class ExportTaskStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTaskStatus, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExportTasks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExportTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExtractedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FilterLogEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterLogEventsInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Validators::InputLogStreamNames.validate!(input[:log_stream_names], context: "#{context}[:log_stream_names]") unless input[:log_stream_names].nil?
        Hearth::Validator.validate!(input[:log_stream_name_prefix], ::String, context: "#{context}[:log_stream_name_prefix]")
        Hearth::Validator.validate!(input[:start_time], ::Integer, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Integer, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:filter_pattern], ::String, context: "#{context}[:filter_pattern]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:interleaved], ::TrueClass, ::FalseClass, context: "#{context}[:interleaved]")
      end
    end

    class FilterLogEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterLogEventsOutput, context: context)
        Validators::FilteredLogEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Validators::SearchedLogStreams.validate!(input[:searched_log_streams], context: "#{context}[:searched_log_streams]") unless input[:searched_log_streams].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class FilteredLogEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilteredLogEvent, context: context)
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:ingestion_time], ::Integer, context: "#{context}[:ingestion_time]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class FilteredLogEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FilteredLogEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetLogEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLogEventsInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
        Hearth::Validator.validate!(input[:start_time], ::Integer, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Integer, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:start_from_head], ::TrueClass, ::FalseClass, context: "#{context}[:start_from_head]")
      end
    end

    class GetLogEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLogEventsOutput, context: context)
        Validators::OutputLogEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_forward_token], ::String, context: "#{context}[:next_forward_token]")
        Hearth::Validator.validate!(input[:next_backward_token], ::String, context: "#{context}[:next_backward_token]")
      end
    end

    class GetLogGroupFieldsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLogGroupFieldsInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:time], ::Integer, context: "#{context}[:time]")
      end
    end

    class GetLogGroupFieldsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLogGroupFieldsOutput, context: context)
        Validators::LogGroupFieldList.validate!(input[:log_group_fields], context: "#{context}[:log_group_fields]") unless input[:log_group_fields].nil?
      end
    end

    class GetLogRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLogRecordInput, context: context)
        Hearth::Validator.validate!(input[:log_record_pointer], ::String, context: "#{context}[:log_record_pointer]")
      end
    end

    class GetLogRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLogRecordOutput, context: context)
        Validators::LogRecord.validate!(input[:log_record], context: "#{context}[:log_record]") unless input[:log_record].nil?
      end
    end

    class GetQueryResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryResultsInput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class GetQueryResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryResultsOutput, context: context)
        Validators::QueryResults.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Validators::QueryStatistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class InputLogEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputLogEvent, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InputLogEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InputLogEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InputLogStreamNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InvalidOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSequenceTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSequenceTokenException, context: context)
        Hearth::Validator.validate!(input[:expected_sequence_token], ::String, context: "#{context}[:expected_sequence_token]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListTagsLogGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsLogGroupInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class ListTagsLogGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsLogGroupOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LogGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogGroup, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:retention_in_days], ::Integer, context: "#{context}[:retention_in_days]")
        Hearth::Validator.validate!(input[:metric_filter_count], ::Integer, context: "#{context}[:metric_filter_count]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:stored_bytes], ::Integer, context: "#{context}[:stored_bytes]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class LogGroupField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogGroupField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:percent], ::Integer, context: "#{context}[:percent]")
      end
    end

    class LogGroupFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogGroupField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogGroupNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LogGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class LogStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogStream, context: context)
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:first_event_timestamp], ::Integer, context: "#{context}[:first_event_timestamp]")
        Hearth::Validator.validate!(input[:last_event_timestamp], ::Integer, context: "#{context}[:last_event_timestamp]")
        Hearth::Validator.validate!(input[:last_ingestion_time], ::Integer, context: "#{context}[:last_ingestion_time]")
        Hearth::Validator.validate!(input[:upload_sequence_token], ::String, context: "#{context}[:upload_sequence_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:stored_bytes], ::Integer, context: "#{context}[:stored_bytes]")
      end
    end

    class LogStreams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogStream.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MalformedQueryException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedQueryException, context: context)
        Validators::QueryCompileError.validate!(input[:query_compile_error], context: "#{context}[:query_compile_error]") unless input[:query_compile_error].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MetricFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricFilter, context: context)
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
        Hearth::Validator.validate!(input[:filter_pattern], ::String, context: "#{context}[:filter_pattern]")
        Validators::MetricTransformations.validate!(input[:metric_transformations], context: "#{context}[:metric_transformations]") unless input[:metric_transformations].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class MetricFilterMatchRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricFilterMatchRecord, context: context)
        Hearth::Validator.validate!(input[:event_number], ::Integer, context: "#{context}[:event_number]")
        Hearth::Validator.validate!(input[:event_message], ::String, context: "#{context}[:event_message]")
        Validators::ExtractedValues.validate!(input[:extracted_values], context: "#{context}[:extracted_values]") unless input[:extracted_values].nil?
      end
    end

    class MetricFilterMatches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricFilterMatchRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricTransformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricTransformation, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_namespace], ::String, context: "#{context}[:metric_namespace]")
        Hearth::Validator.validate!(input[:metric_value], ::String, context: "#{context}[:metric_value]")
        Hearth::Validator.validate!(input[:default_value], ::Float, context: "#{context}[:default_value]")
        Validators::Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class MetricTransformations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricTransformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OperationAbortedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationAbortedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OutputLogEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputLogEvent, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:ingestion_time], ::Integer, context: "#{context}[:ingestion_time]")
      end
    end

    class OutputLogEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OutputLogEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDestinationInput, context: context)
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class PutDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDestinationOutput, context: context)
        Validators::Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class PutDestinationPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDestinationPolicyInput, context: context)
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
        Hearth::Validator.validate!(input[:access_policy], ::String, context: "#{context}[:access_policy]")
        Hearth::Validator.validate!(input[:force_update], ::TrueClass, ::FalseClass, context: "#{context}[:force_update]")
      end
    end

    class PutDestinationPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDestinationPolicyOutput, context: context)
      end
    end

    class PutLogEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLogEventsInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
        Validators::InputLogEvents.validate!(input[:log_events], context: "#{context}[:log_events]") unless input[:log_events].nil?
        Hearth::Validator.validate!(input[:sequence_token], ::String, context: "#{context}[:sequence_token]")
      end
    end

    class PutLogEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLogEventsOutput, context: context)
        Hearth::Validator.validate!(input[:next_sequence_token], ::String, context: "#{context}[:next_sequence_token]")
        Validators::RejectedLogEventsInfo.validate!(input[:rejected_log_events_info], context: "#{context}[:rejected_log_events_info]") unless input[:rejected_log_events_info].nil?
      end
    end

    class PutMetricFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricFilterInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
        Hearth::Validator.validate!(input[:filter_pattern], ::String, context: "#{context}[:filter_pattern]")
        Validators::MetricTransformations.validate!(input[:metric_transformations], context: "#{context}[:metric_transformations]") unless input[:metric_transformations].nil?
      end
    end

    class PutMetricFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricFilterOutput, context: context)
      end
    end

    class PutQueryDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutQueryDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:query_definition_id], ::String, context: "#{context}[:query_definition_id]")
        Validators::LogGroupNames.validate!(input[:log_group_names], context: "#{context}[:log_group_names]") unless input[:log_group_names].nil?
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
      end
    end

    class PutQueryDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutQueryDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:query_definition_id], ::String, context: "#{context}[:query_definition_id]")
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
        Validators::ResourcePolicy.validate!(input[:resource_policy], context: "#{context}[:resource_policy]") unless input[:resource_policy].nil?
      end
    end

    class PutRetentionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRetentionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:retention_in_days], ::Integer, context: "#{context}[:retention_in_days]")
      end
    end

    class PutRetentionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRetentionPolicyOutput, context: context)
      end
    end

    class PutSubscriptionFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSubscriptionFilterInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
        Hearth::Validator.validate!(input[:filter_pattern], ::String, context: "#{context}[:filter_pattern]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:distribution], ::String, context: "#{context}[:distribution]")
      end
    end

    class PutSubscriptionFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSubscriptionFilterOutput, context: context)
      end
    end

    class QueryCompileError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryCompileError, context: context)
        Validators::QueryCompileErrorLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class QueryCompileErrorLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryCompileErrorLocation, context: context)
        Hearth::Validator.validate!(input[:start_char_offset], ::Integer, context: "#{context}[:start_char_offset]")
        Hearth::Validator.validate!(input[:end_char_offset], ::Integer, context: "#{context}[:end_char_offset]")
      end
    end

    class QueryDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryDefinition, context: context)
        Hearth::Validator.validate!(input[:query_definition_id], ::String, context: "#{context}[:query_definition_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:last_modified], ::Integer, context: "#{context}[:last_modified]")
        Validators::LogGroupNames.validate!(input[:log_group_names], context: "#{context}[:log_group_names]") unless input[:log_group_names].nil?
      end
    end

    class QueryDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QueryDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueryInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryInfo, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class QueryInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QueryInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueryResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResultRows.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueryStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryStatistics, context: context)
        Hearth::Validator.validate!(input[:records_matched], ::Float, context: "#{context}[:records_matched]")
        Hearth::Validator.validate!(input[:records_scanned], ::Float, context: "#{context}[:records_scanned]")
        Hearth::Validator.validate!(input[:bytes_scanned], ::Float, context: "#{context}[:bytes_scanned]")
      end
    end

    class RejectedLogEventsInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectedLogEventsInfo, context: context)
        Hearth::Validator.validate!(input[:too_new_log_event_start_index], ::Integer, context: "#{context}[:too_new_log_event_start_index]")
        Hearth::Validator.validate!(input[:too_old_log_event_end_index], ::Integer, context: "#{context}[:too_old_log_event_end_index]")
        Hearth::Validator.validate!(input[:expired_log_event_end_index], ::Integer, context: "#{context}[:expired_log_event_end_index]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourcePolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourcePolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourcePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Integer, context: "#{context}[:last_updated_time]")
      end
    end

    class ResultField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultField, context: context)
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ResultRows
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResultField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchedLogStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchedLogStream, context: context)
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
        Hearth::Validator.validate!(input[:searched_completely], ::TrueClass, ::FalseClass, context: "#{context}[:searched_completely]")
      end
    end

    class SearchedLogStreams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SearchedLogStream.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartQueryInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Validators::LogGroupNames.validate!(input[:log_group_names], context: "#{context}[:log_group_names]") unless input[:log_group_names].nil?
        Hearth::Validator.validate!(input[:start_time], ::Integer, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Integer, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class StartQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartQueryOutput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class StopQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopQueryInput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class StopQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopQueryOutput, context: context)
        Hearth::Validator.validate!(input[:success], ::TrueClass, ::FalseClass, context: "#{context}[:success]")
      end
    end

    class SubscriptionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionFilter, context: context)
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:filter_pattern], ::String, context: "#{context}[:filter_pattern]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:distribution], ::String, context: "#{context}[:distribution]")
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
      end
    end

    class SubscriptionFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SubscriptionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagLogGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagLogGroupInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagLogGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagLogGroupOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TestEventMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TestMetricFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestMetricFilterInput, context: context)
        Hearth::Validator.validate!(input[:filter_pattern], ::String, context: "#{context}[:filter_pattern]")
        Validators::TestEventMessages.validate!(input[:log_event_messages], context: "#{context}[:log_event_messages]") unless input[:log_event_messages].nil?
      end
    end

    class TestMetricFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestMetricFilterOutput, context: context)
        Validators::MetricFilterMatches.validate!(input[:matches], context: "#{context}[:matches]") unless input[:matches].nil?
      end
    end

    class UnrecognizedClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnrecognizedClientException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagLogGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagLogGroupInput, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UntagLogGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagLogGroupOutput, context: context)
      end
    end

  end
end
