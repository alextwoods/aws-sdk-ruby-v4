# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CloudWatchLogs
  module Params

    module AssociateKmsKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateKmsKeyInput, context: context)
        type = Types::AssociateKmsKeyInput.new
        type.log_group_name = params[:log_group_name]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module AssociateKmsKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateKmsKeyOutput, context: context)
        type = Types::AssociateKmsKeyOutput.new
        type
      end
    end

    module CancelExportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelExportTaskInput, context: context)
        type = Types::CancelExportTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module CancelExportTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelExportTaskOutput, context: context)
        type = Types::CancelExportTaskOutput.new
        type
      end
    end

    module CreateExportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExportTaskInput, context: context)
        type = Types::CreateExportTaskInput.new
        type.task_name = params[:task_name]
        type.log_group_name = params[:log_group_name]
        type.log_stream_name_prefix = params[:log_stream_name_prefix]
        type.from = params[:from]
        type.to = params[:to]
        type.destination = params[:destination]
        type.destination_prefix = params[:destination_prefix]
        type
      end
    end

    module CreateExportTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExportTaskOutput, context: context)
        type = Types::CreateExportTaskOutput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module CreateLogGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLogGroupInput, context: context)
        type = Types::CreateLogGroupInput.new
        type.log_group_name = params[:log_group_name]
        type.kms_key_id = params[:kms_key_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLogGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLogGroupOutput, context: context)
        type = Types::CreateLogGroupOutput.new
        type
      end
    end

    module CreateLogStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLogStreamInput, context: context)
        type = Types::CreateLogStreamInput.new
        type.log_group_name = params[:log_group_name]
        type.log_stream_name = params[:log_stream_name]
        type
      end
    end

    module CreateLogStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLogStreamOutput, context: context)
        type = Types::CreateLogStreamOutput.new
        type
      end
    end

    module DataAlreadyAcceptedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataAlreadyAcceptedException, context: context)
        type = Types::DataAlreadyAcceptedException.new
        type.expected_sequence_token = params[:expected_sequence_token]
        type.message = params[:message]
        type
      end
    end

    module DeleteDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDestinationInput, context: context)
        type = Types::DeleteDestinationInput.new
        type.destination_name = params[:destination_name]
        type
      end
    end

    module DeleteDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDestinationOutput, context: context)
        type = Types::DeleteDestinationOutput.new
        type
      end
    end

    module DeleteLogGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLogGroupInput, context: context)
        type = Types::DeleteLogGroupInput.new
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module DeleteLogGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLogGroupOutput, context: context)
        type = Types::DeleteLogGroupOutput.new
        type
      end
    end

    module DeleteLogStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLogStreamInput, context: context)
        type = Types::DeleteLogStreamInput.new
        type.log_group_name = params[:log_group_name]
        type.log_stream_name = params[:log_stream_name]
        type
      end
    end

    module DeleteLogStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLogStreamOutput, context: context)
        type = Types::DeleteLogStreamOutput.new
        type
      end
    end

    module DeleteMetricFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMetricFilterInput, context: context)
        type = Types::DeleteMetricFilterInput.new
        type.log_group_name = params[:log_group_name]
        type.filter_name = params[:filter_name]
        type
      end
    end

    module DeleteMetricFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMetricFilterOutput, context: context)
        type = Types::DeleteMetricFilterOutput.new
        type
      end
    end

    module DeleteQueryDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueryDefinitionInput, context: context)
        type = Types::DeleteQueryDefinitionInput.new
        type.query_definition_id = params[:query_definition_id]
        type
      end
    end

    module DeleteQueryDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueryDefinitionOutput, context: context)
        type = Types::DeleteQueryDefinitionOutput.new
        type.success = params[:success]
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.policy_name = params[:policy_name]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type
      end
    end

    module DeleteRetentionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRetentionPolicyInput, context: context)
        type = Types::DeleteRetentionPolicyInput.new
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module DeleteRetentionPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRetentionPolicyOutput, context: context)
        type = Types::DeleteRetentionPolicyOutput.new
        type
      end
    end

    module DeleteSubscriptionFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubscriptionFilterInput, context: context)
        type = Types::DeleteSubscriptionFilterInput.new
        type.log_group_name = params[:log_group_name]
        type.filter_name = params[:filter_name]
        type
      end
    end

    module DeleteSubscriptionFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubscriptionFilterOutput, context: context)
        type = Types::DeleteSubscriptionFilterOutput.new
        type
      end
    end

    module DescribeDestinationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDestinationsInput, context: context)
        type = Types::DescribeDestinationsInput.new
        type.destination_name_prefix = params[:destination_name_prefix]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeDestinationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDestinationsOutput, context: context)
        type = Types::DescribeDestinationsOutput.new
        type.destinations = Destinations.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeExportTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportTasksInput, context: context)
        type = Types::DescribeExportTasksInput.new
        type.task_id = params[:task_id]
        type.status_code = params[:status_code]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeExportTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportTasksOutput, context: context)
        type = Types::DescribeExportTasksOutput.new
        type.export_tasks = ExportTasks.build(params[:export_tasks], context: "#{context}[:export_tasks]") unless params[:export_tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeLogGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLogGroupsInput, context: context)
        type = Types::DescribeLogGroupsInput.new
        type.log_group_name_prefix = params[:log_group_name_prefix]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeLogGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLogGroupsOutput, context: context)
        type = Types::DescribeLogGroupsOutput.new
        type.log_groups = LogGroups.build(params[:log_groups], context: "#{context}[:log_groups]") unless params[:log_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeLogStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLogStreamsInput, context: context)
        type = Types::DescribeLogStreamsInput.new
        type.log_group_name = params[:log_group_name]
        type.log_stream_name_prefix = params[:log_stream_name_prefix]
        type.order_by = params[:order_by]
        type.descending = params[:descending]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeLogStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLogStreamsOutput, context: context)
        type = Types::DescribeLogStreamsOutput.new
        type.log_streams = LogStreams.build(params[:log_streams], context: "#{context}[:log_streams]") unless params[:log_streams].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMetricFiltersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMetricFiltersInput, context: context)
        type = Types::DescribeMetricFiltersInput.new
        type.log_group_name = params[:log_group_name]
        type.filter_name_prefix = params[:filter_name_prefix]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.metric_name = params[:metric_name]
        type.metric_namespace = params[:metric_namespace]
        type
      end
    end

    module DescribeMetricFiltersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMetricFiltersOutput, context: context)
        type = Types::DescribeMetricFiltersOutput.new
        type.metric_filters = MetricFilters.build(params[:metric_filters], context: "#{context}[:metric_filters]") unless params[:metric_filters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeQueriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQueriesInput, context: context)
        type = Types::DescribeQueriesInput.new
        type.log_group_name = params[:log_group_name]
        type.status = params[:status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeQueriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQueriesOutput, context: context)
        type = Types::DescribeQueriesOutput.new
        type.queries = QueryInfoList.build(params[:queries], context: "#{context}[:queries]") unless params[:queries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeQueryDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQueryDefinitionsInput, context: context)
        type = Types::DescribeQueryDefinitionsInput.new
        type.query_definition_name_prefix = params[:query_definition_name_prefix]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeQueryDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQueryDefinitionsOutput, context: context)
        type = Types::DescribeQueryDefinitionsOutput.new
        type.query_definitions = QueryDefinitionList.build(params[:query_definitions], context: "#{context}[:query_definitions]") unless params[:query_definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeResourcePoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePoliciesInput, context: context)
        type = Types::DescribeResourcePoliciesInput.new
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeResourcePoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePoliciesOutput, context: context)
        type = Types::DescribeResourcePoliciesOutput.new
        type.resource_policies = ResourcePolicies.build(params[:resource_policies], context: "#{context}[:resource_policies]") unless params[:resource_policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSubscriptionFiltersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubscriptionFiltersInput, context: context)
        type = Types::DescribeSubscriptionFiltersInput.new
        type.log_group_name = params[:log_group_name]
        type.filter_name_prefix = params[:filter_name_prefix]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeSubscriptionFiltersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubscriptionFiltersOutput, context: context)
        type = Types::DescribeSubscriptionFiltersOutput.new
        type.subscription_filters = SubscriptionFilters.build(params[:subscription_filters], context: "#{context}[:subscription_filters]") unless params[:subscription_filters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.destination_name = params[:destination_name]
        type.target_arn = params[:target_arn]
        type.role_arn = params[:role_arn]
        type.access_policy = params[:access_policy]
        type.arn = params[:arn]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module Destinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Destination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Dimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DisassociateKmsKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateKmsKeyInput, context: context)
        type = Types::DisassociateKmsKeyInput.new
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module DisassociateKmsKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateKmsKeyOutput, context: context)
        type = Types::DisassociateKmsKeyOutput.new
        type
      end
    end

    module ExportTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportTask, context: context)
        type = Types::ExportTask.new
        type.task_id = params[:task_id]
        type.task_name = params[:task_name]
        type.log_group_name = params[:log_group_name]
        type.from = params[:from]
        type.to = params[:to]
        type.destination = params[:destination]
        type.destination_prefix = params[:destination_prefix]
        type.status = ExportTaskStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.execution_info = ExportTaskExecutionInfo.build(params[:execution_info], context: "#{context}[:execution_info]") unless params[:execution_info].nil?
        type
      end
    end

    module ExportTaskExecutionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportTaskExecutionInfo, context: context)
        type = Types::ExportTaskExecutionInfo.new
        type.creation_time = params[:creation_time]
        type.completion_time = params[:completion_time]
        type
      end
    end

    module ExportTaskStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportTaskStatus, context: context)
        type = Types::ExportTaskStatus.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ExportTasks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExtractedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FilterLogEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterLogEventsInput, context: context)
        type = Types::FilterLogEventsInput.new
        type.log_group_name = params[:log_group_name]
        type.log_stream_names = InputLogStreamNames.build(params[:log_stream_names], context: "#{context}[:log_stream_names]") unless params[:log_stream_names].nil?
        type.log_stream_name_prefix = params[:log_stream_name_prefix]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.filter_pattern = params[:filter_pattern]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.interleaved = params[:interleaved]
        type
      end
    end

    module FilterLogEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterLogEventsOutput, context: context)
        type = Types::FilterLogEventsOutput.new
        type.events = FilteredLogEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.searched_log_streams = SearchedLogStreams.build(params[:searched_log_streams], context: "#{context}[:searched_log_streams]") unless params[:searched_log_streams].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module FilteredLogEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilteredLogEvent, context: context)
        type = Types::FilteredLogEvent.new
        type.log_stream_name = params[:log_stream_name]
        type.timestamp = params[:timestamp]
        type.message = params[:message]
        type.ingestion_time = params[:ingestion_time]
        type.event_id = params[:event_id]
        type
      end
    end

    module FilteredLogEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilteredLogEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetLogEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLogEventsInput, context: context)
        type = Types::GetLogEventsInput.new
        type.log_group_name = params[:log_group_name]
        type.log_stream_name = params[:log_stream_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.start_from_head = params[:start_from_head]
        type
      end
    end

    module GetLogEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLogEventsOutput, context: context)
        type = Types::GetLogEventsOutput.new
        type.events = OutputLogEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_forward_token = params[:next_forward_token]
        type.next_backward_token = params[:next_backward_token]
        type
      end
    end

    module GetLogGroupFieldsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLogGroupFieldsInput, context: context)
        type = Types::GetLogGroupFieldsInput.new
        type.log_group_name = params[:log_group_name]
        type.time = params[:time]
        type
      end
    end

    module GetLogGroupFieldsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLogGroupFieldsOutput, context: context)
        type = Types::GetLogGroupFieldsOutput.new
        type.log_group_fields = LogGroupFieldList.build(params[:log_group_fields], context: "#{context}[:log_group_fields]") unless params[:log_group_fields].nil?
        type
      end
    end

    module GetLogRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLogRecordInput, context: context)
        type = Types::GetLogRecordInput.new
        type.log_record_pointer = params[:log_record_pointer]
        type
      end
    end

    module GetLogRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLogRecordOutput, context: context)
        type = Types::GetLogRecordOutput.new
        type.log_record = LogRecord.build(params[:log_record], context: "#{context}[:log_record]") unless params[:log_record].nil?
        type
      end
    end

    module GetQueryResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryResultsInput, context: context)
        type = Types::GetQueryResultsInput.new
        type.query_id = params[:query_id]
        type
      end
    end

    module GetQueryResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryResultsOutput, context: context)
        type = Types::GetQueryResultsOutput.new
        type.results = QueryResults.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.statistics = QueryStatistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.status = params[:status]
        type
      end
    end

    module InputLogEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputLogEvent, context: context)
        type = Types::InputLogEvent.new
        type.timestamp = params[:timestamp]
        type.message = params[:message]
        type
      end
    end

    module InputLogEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputLogEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InputLogStreamNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InvalidOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOperationException, context: context)
        type = Types::InvalidOperationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSequenceTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSequenceTokenException, context: context)
        type = Types::InvalidSequenceTokenException.new
        type.expected_sequence_token = params[:expected_sequence_token]
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

    module ListTagsLogGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsLogGroupInput, context: context)
        type = Types::ListTagsLogGroupInput.new
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module ListTagsLogGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsLogGroupOutput, context: context)
        type = Types::ListTagsLogGroupOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LogGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogGroup, context: context)
        type = Types::LogGroup.new
        type.log_group_name = params[:log_group_name]
        type.creation_time = params[:creation_time]
        type.retention_in_days = params[:retention_in_days]
        type.metric_filter_count = params[:metric_filter_count]
        type.arn = params[:arn]
        type.stored_bytes = params[:stored_bytes]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module LogGroupField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogGroupField, context: context)
        type = Types::LogGroupField.new
        type.name = params[:name]
        type.percent = params[:percent]
        type
      end
    end

    module LogGroupFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogGroupField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LogGroupNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LogGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LogRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LogStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogStream, context: context)
        type = Types::LogStream.new
        type.log_stream_name = params[:log_stream_name]
        type.creation_time = params[:creation_time]
        type.first_event_timestamp = params[:first_event_timestamp]
        type.last_event_timestamp = params[:last_event_timestamp]
        type.last_ingestion_time = params[:last_ingestion_time]
        type.upload_sequence_token = params[:upload_sequence_token]
        type.arn = params[:arn]
        type.stored_bytes = params[:stored_bytes]
        type
      end
    end

    module LogStreams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogStream.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MalformedQueryException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedQueryException, context: context)
        type = Types::MalformedQueryException.new
        type.query_compile_error = QueryCompileError.build(params[:query_compile_error], context: "#{context}[:query_compile_error]") unless params[:query_compile_error].nil?
        type.message = params[:message]
        type
      end
    end

    module MetricFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricFilter, context: context)
        type = Types::MetricFilter.new
        type.filter_name = params[:filter_name]
        type.filter_pattern = params[:filter_pattern]
        type.metric_transformations = MetricTransformations.build(params[:metric_transformations], context: "#{context}[:metric_transformations]") unless params[:metric_transformations].nil?
        type.creation_time = params[:creation_time]
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module MetricFilterMatchRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricFilterMatchRecord, context: context)
        type = Types::MetricFilterMatchRecord.new
        type.event_number = params[:event_number]
        type.event_message = params[:event_message]
        type.extracted_values = ExtractedValues.build(params[:extracted_values], context: "#{context}[:extracted_values]") unless params[:extracted_values].nil?
        type
      end
    end

    module MetricFilterMatches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricFilterMatchRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricTransformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricTransformation, context: context)
        type = Types::MetricTransformation.new
        type.metric_name = params[:metric_name]
        type.metric_namespace = params[:metric_namespace]
        type.metric_value = params[:metric_value]
        type.default_value = params[:default_value]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.unit = params[:unit]
        type
      end
    end

    module MetricTransformations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricTransformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OperationAbortedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationAbortedException, context: context)
        type = Types::OperationAbortedException.new
        type.message = params[:message]
        type
      end
    end

    module OutputLogEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputLogEvent, context: context)
        type = Types::OutputLogEvent.new
        type.timestamp = params[:timestamp]
        type.message = params[:message]
        type.ingestion_time = params[:ingestion_time]
        type
      end
    end

    module OutputLogEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputLogEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDestinationInput, context: context)
        type = Types::PutDestinationInput.new
        type.destination_name = params[:destination_name]
        type.target_arn = params[:target_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module PutDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDestinationOutput, context: context)
        type = Types::PutDestinationOutput.new
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module PutDestinationPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDestinationPolicyInput, context: context)
        type = Types::PutDestinationPolicyInput.new
        type.destination_name = params[:destination_name]
        type.access_policy = params[:access_policy]
        type.force_update = params[:force_update]
        type
      end
    end

    module PutDestinationPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDestinationPolicyOutput, context: context)
        type = Types::PutDestinationPolicyOutput.new
        type
      end
    end

    module PutLogEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLogEventsInput, context: context)
        type = Types::PutLogEventsInput.new
        type.log_group_name = params[:log_group_name]
        type.log_stream_name = params[:log_stream_name]
        type.log_events = InputLogEvents.build(params[:log_events], context: "#{context}[:log_events]") unless params[:log_events].nil?
        type.sequence_token = params[:sequence_token]
        type
      end
    end

    module PutLogEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLogEventsOutput, context: context)
        type = Types::PutLogEventsOutput.new
        type.next_sequence_token = params[:next_sequence_token]
        type.rejected_log_events_info = RejectedLogEventsInfo.build(params[:rejected_log_events_info], context: "#{context}[:rejected_log_events_info]") unless params[:rejected_log_events_info].nil?
        type
      end
    end

    module PutMetricFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMetricFilterInput, context: context)
        type = Types::PutMetricFilterInput.new
        type.log_group_name = params[:log_group_name]
        type.filter_name = params[:filter_name]
        type.filter_pattern = params[:filter_pattern]
        type.metric_transformations = MetricTransformations.build(params[:metric_transformations], context: "#{context}[:metric_transformations]") unless params[:metric_transformations].nil?
        type
      end
    end

    module PutMetricFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMetricFilterOutput, context: context)
        type = Types::PutMetricFilterOutput.new
        type
      end
    end

    module PutQueryDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutQueryDefinitionInput, context: context)
        type = Types::PutQueryDefinitionInput.new
        type.name = params[:name]
        type.query_definition_id = params[:query_definition_id]
        type.log_group_names = LogGroupNames.build(params[:log_group_names], context: "#{context}[:log_group_names]") unless params[:log_group_names].nil?
        type.query_string = params[:query_string]
        type
      end
    end

    module PutQueryDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutQueryDefinitionOutput, context: context)
        type = Types::PutQueryDefinitionOutput.new
        type.query_definition_id = params[:query_definition_id]
        type
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type.resource_policy = ResourcePolicy.build(params[:resource_policy], context: "#{context}[:resource_policy]") unless params[:resource_policy].nil?
        type
      end
    end

    module PutRetentionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRetentionPolicyInput, context: context)
        type = Types::PutRetentionPolicyInput.new
        type.log_group_name = params[:log_group_name]
        type.retention_in_days = params[:retention_in_days]
        type
      end
    end

    module PutRetentionPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRetentionPolicyOutput, context: context)
        type = Types::PutRetentionPolicyOutput.new
        type
      end
    end

    module PutSubscriptionFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSubscriptionFilterInput, context: context)
        type = Types::PutSubscriptionFilterInput.new
        type.log_group_name = params[:log_group_name]
        type.filter_name = params[:filter_name]
        type.filter_pattern = params[:filter_pattern]
        type.destination_arn = params[:destination_arn]
        type.role_arn = params[:role_arn]
        type.distribution = params[:distribution]
        type
      end
    end

    module PutSubscriptionFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSubscriptionFilterOutput, context: context)
        type = Types::PutSubscriptionFilterOutput.new
        type
      end
    end

    module QueryCompileError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryCompileError, context: context)
        type = Types::QueryCompileError.new
        type.location = QueryCompileErrorLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.message = params[:message]
        type
      end
    end

    module QueryCompileErrorLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryCompileErrorLocation, context: context)
        type = Types::QueryCompileErrorLocation.new
        type.start_char_offset = params[:start_char_offset]
        type.end_char_offset = params[:end_char_offset]
        type
      end
    end

    module QueryDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryDefinition, context: context)
        type = Types::QueryDefinition.new
        type.query_definition_id = params[:query_definition_id]
        type.name = params[:name]
        type.query_string = params[:query_string]
        type.last_modified = params[:last_modified]
        type.log_group_names = LogGroupNames.build(params[:log_group_names], context: "#{context}[:log_group_names]") unless params[:log_group_names].nil?
        type
      end
    end

    module QueryDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueryInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryInfo, context: context)
        type = Types::QueryInfo.new
        type.query_id = params[:query_id]
        type.query_string = params[:query_string]
        type.status = params[:status]
        type.create_time = params[:create_time]
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module QueryInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueryResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResultRows.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueryStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryStatistics, context: context)
        type = Types::QueryStatistics.new
        type.records_matched = params[:records_matched]
        type.records_scanned = params[:records_scanned]
        type.bytes_scanned = params[:bytes_scanned]
        type
      end
    end

    module RejectedLogEventsInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectedLogEventsInfo, context: context)
        type = Types::RejectedLogEventsInfo.new
        type.too_new_log_event_start_index = params[:too_new_log_event_start_index]
        type.too_old_log_event_end_index = params[:too_old_log_event_end_index]
        type.expired_log_event_end_index = params[:expired_log_event_end_index]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
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

    module ResourcePolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourcePolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourcePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePolicy, context: context)
        type = Types::ResourcePolicy.new
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module ResultField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultField, context: context)
        type = Types::ResultField.new
        type.field = params[:field]
        type.value = params[:value]
        type
      end
    end

    module ResultRows
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResultField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchedLogStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchedLogStream, context: context)
        type = Types::SearchedLogStream.new
        type.log_stream_name = params[:log_stream_name]
        type.searched_completely = params[:searched_completely]
        type
      end
    end

    module SearchedLogStreams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchedLogStream.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module StartQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartQueryInput, context: context)
        type = Types::StartQueryInput.new
        type.log_group_name = params[:log_group_name]
        type.log_group_names = LogGroupNames.build(params[:log_group_names], context: "#{context}[:log_group_names]") unless params[:log_group_names].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.query_string = params[:query_string]
        type.limit = params[:limit]
        type
      end
    end

    module StartQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartQueryOutput, context: context)
        type = Types::StartQueryOutput.new
        type.query_id = params[:query_id]
        type
      end
    end

    module StopQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopQueryInput, context: context)
        type = Types::StopQueryInput.new
        type.query_id = params[:query_id]
        type
      end
    end

    module StopQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopQueryOutput, context: context)
        type = Types::StopQueryOutput.new
        type.success = params[:success]
        type
      end
    end

    module SubscriptionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionFilter, context: context)
        type = Types::SubscriptionFilter.new
        type.filter_name = params[:filter_name]
        type.log_group_name = params[:log_group_name]
        type.filter_pattern = params[:filter_pattern]
        type.destination_arn = params[:destination_arn]
        type.role_arn = params[:role_arn]
        type.distribution = params[:distribution]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module SubscriptionFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubscriptionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagLogGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagLogGroupInput, context: context)
        type = Types::TagLogGroupInput.new
        type.log_group_name = params[:log_group_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagLogGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagLogGroupOutput, context: context)
        type = Types::TagLogGroupOutput.new
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TestEventMessages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TestMetricFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestMetricFilterInput, context: context)
        type = Types::TestMetricFilterInput.new
        type.filter_pattern = params[:filter_pattern]
        type.log_event_messages = TestEventMessages.build(params[:log_event_messages], context: "#{context}[:log_event_messages]") unless params[:log_event_messages].nil?
        type
      end
    end

    module TestMetricFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestMetricFilterOutput, context: context)
        type = Types::TestMetricFilterOutput.new
        type.matches = MetricFilterMatches.build(params[:matches], context: "#{context}[:matches]") unless params[:matches].nil?
        type
      end
    end

    module UnrecognizedClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnrecognizedClientException, context: context)
        type = Types::UnrecognizedClientException.new
        type.message = params[:message]
        type
      end
    end

    module UntagLogGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagLogGroupInput, context: context)
        type = Types::UntagLogGroupInput.new
        type.log_group_name = params[:log_group_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UntagLogGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagLogGroupOutput, context: context)
        type = Types::UntagLogGroupOutput.new
        type
      end
    end

  end
end
