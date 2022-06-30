# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SFN
  module Params

    module ActivityDoesNotExist
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityDoesNotExist, context: context)
        type = Types::ActivityDoesNotExist.new
        type.message = params[:message]
        type
      end
    end

    module ActivityFailedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityFailedEventDetails, context: context)
        type = Types::ActivityFailedEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module ActivityLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityLimitExceeded, context: context)
        type = Types::ActivityLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module ActivityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActivityListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActivityListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityListItem, context: context)
        type = Types::ActivityListItem.new
        type.activity_arn = params[:activity_arn]
        type.name = params[:name]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module ActivityScheduleFailedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityScheduleFailedEventDetails, context: context)
        type = Types::ActivityScheduleFailedEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module ActivityScheduledEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityScheduledEventDetails, context: context)
        type = Types::ActivityScheduledEventDetails.new
        type.resource = params[:resource]
        type.input = params[:input]
        type.input_details = HistoryEventExecutionDataDetails.build(params[:input_details], context: "#{context}[:input_details]") unless params[:input_details].nil?
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.heartbeat_in_seconds = params[:heartbeat_in_seconds]
        type
      end
    end

    module ActivityStartedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityStartedEventDetails, context: context)
        type = Types::ActivityStartedEventDetails.new
        type.worker_name = params[:worker_name]
        type
      end
    end

    module ActivitySucceededEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivitySucceededEventDetails, context: context)
        type = Types::ActivitySucceededEventDetails.new
        type.output = params[:output]
        type.output_details = HistoryEventExecutionDataDetails.build(params[:output_details], context: "#{context}[:output_details]") unless params[:output_details].nil?
        type
      end
    end

    module ActivityTimedOutEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTimedOutEventDetails, context: context)
        type = Types::ActivityTimedOutEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module ActivityWorkerLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityWorkerLimitExceeded, context: context)
        type = Types::ActivityWorkerLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module BillingDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BillingDetails, context: context)
        type = Types::BillingDetails.new
        type.billed_memory_used_in_mb = params[:billed_memory_used_in_mb]
        type.billed_duration_in_milliseconds = params[:billed_duration_in_milliseconds]
        type
      end
    end

    module CloudWatchEventsExecutionDataDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchEventsExecutionDataDetails, context: context)
        type = Types::CloudWatchEventsExecutionDataDetails.new
        type.included = params[:included]
        type
      end
    end

    module CloudWatchLogsLogGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsLogGroup, context: context)
        type = Types::CloudWatchLogsLogGroup.new
        type.log_group_arn = params[:log_group_arn]
        type
      end
    end

    module CreateActivityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateActivityInput, context: context)
        type = Types::CreateActivityInput.new
        type.name = params[:name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateActivityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateActivityOutput, context: context)
        type = Types::CreateActivityOutput.new
        type.activity_arn = params[:activity_arn]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module CreateStateMachineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStateMachineInput, context: context)
        type = Types::CreateStateMachineInput.new
        type.name = params[:name]
        type.definition = params[:definition]
        type.role_arn = params[:role_arn]
        type.type = params[:type]
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.tracing_configuration = TracingConfiguration.build(params[:tracing_configuration], context: "#{context}[:tracing_configuration]") unless params[:tracing_configuration].nil?
        type
      end
    end

    module CreateStateMachineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStateMachineOutput, context: context)
        type = Types::CreateStateMachineOutput.new
        type.state_machine_arn = params[:state_machine_arn]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module DeleteActivityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteActivityInput, context: context)
        type = Types::DeleteActivityInput.new
        type.activity_arn = params[:activity_arn]
        type
      end
    end

    module DeleteActivityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteActivityOutput, context: context)
        type = Types::DeleteActivityOutput.new
        type
      end
    end

    module DeleteStateMachineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStateMachineInput, context: context)
        type = Types::DeleteStateMachineInput.new
        type.state_machine_arn = params[:state_machine_arn]
        type
      end
    end

    module DeleteStateMachineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStateMachineOutput, context: context)
        type = Types::DeleteStateMachineOutput.new
        type
      end
    end

    module DescribeActivityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActivityInput, context: context)
        type = Types::DescribeActivityInput.new
        type.activity_arn = params[:activity_arn]
        type
      end
    end

    module DescribeActivityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActivityOutput, context: context)
        type = Types::DescribeActivityOutput.new
        type.activity_arn = params[:activity_arn]
        type.name = params[:name]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module DescribeExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExecutionInput, context: context)
        type = Types::DescribeExecutionInput.new
        type.execution_arn = params[:execution_arn]
        type
      end
    end

    module DescribeExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExecutionOutput, context: context)
        type = Types::DescribeExecutionOutput.new
        type.execution_arn = params[:execution_arn]
        type.state_machine_arn = params[:state_machine_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.start_date = params[:start_date]
        type.stop_date = params[:stop_date]
        type.input = params[:input]
        type.input_details = CloudWatchEventsExecutionDataDetails.build(params[:input_details], context: "#{context}[:input_details]") unless params[:input_details].nil?
        type.output = params[:output]
        type.output_details = CloudWatchEventsExecutionDataDetails.build(params[:output_details], context: "#{context}[:output_details]") unless params[:output_details].nil?
        type.trace_header = params[:trace_header]
        type
      end
    end

    module DescribeStateMachineForExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStateMachineForExecutionInput, context: context)
        type = Types::DescribeStateMachineForExecutionInput.new
        type.execution_arn = params[:execution_arn]
        type
      end
    end

    module DescribeStateMachineForExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStateMachineForExecutionOutput, context: context)
        type = Types::DescribeStateMachineForExecutionOutput.new
        type.state_machine_arn = params[:state_machine_arn]
        type.name = params[:name]
        type.definition = params[:definition]
        type.role_arn = params[:role_arn]
        type.update_date = params[:update_date]
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type.tracing_configuration = TracingConfiguration.build(params[:tracing_configuration], context: "#{context}[:tracing_configuration]") unless params[:tracing_configuration].nil?
        type
      end
    end

    module DescribeStateMachineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStateMachineInput, context: context)
        type = Types::DescribeStateMachineInput.new
        type.state_machine_arn = params[:state_machine_arn]
        type
      end
    end

    module DescribeStateMachineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStateMachineOutput, context: context)
        type = Types::DescribeStateMachineOutput.new
        type.state_machine_arn = params[:state_machine_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.definition = params[:definition]
        type.role_arn = params[:role_arn]
        type.type = params[:type]
        type.creation_date = params[:creation_date]
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type.tracing_configuration = TracingConfiguration.build(params[:tracing_configuration], context: "#{context}[:tracing_configuration]") unless params[:tracing_configuration].nil?
        type
      end
    end

    module ExecutionAbortedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionAbortedEventDetails, context: context)
        type = Types::ExecutionAbortedEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module ExecutionAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionAlreadyExists, context: context)
        type = Types::ExecutionAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module ExecutionDoesNotExist
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionDoesNotExist, context: context)
        type = Types::ExecutionDoesNotExist.new
        type.message = params[:message]
        type
      end
    end

    module ExecutionFailedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionFailedEventDetails, context: context)
        type = Types::ExecutionFailedEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module ExecutionLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionLimitExceeded, context: context)
        type = Types::ExecutionLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module ExecutionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExecutionListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExecutionListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionListItem, context: context)
        type = Types::ExecutionListItem.new
        type.execution_arn = params[:execution_arn]
        type.state_machine_arn = params[:state_machine_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.start_date = params[:start_date]
        type.stop_date = params[:stop_date]
        type
      end
    end

    module ExecutionStartedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionStartedEventDetails, context: context)
        type = Types::ExecutionStartedEventDetails.new
        type.input = params[:input]
        type.input_details = HistoryEventExecutionDataDetails.build(params[:input_details], context: "#{context}[:input_details]") unless params[:input_details].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module ExecutionSucceededEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionSucceededEventDetails, context: context)
        type = Types::ExecutionSucceededEventDetails.new
        type.output = params[:output]
        type.output_details = HistoryEventExecutionDataDetails.build(params[:output_details], context: "#{context}[:output_details]") unless params[:output_details].nil?
        type
      end
    end

    module ExecutionTimedOutEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionTimedOutEventDetails, context: context)
        type = Types::ExecutionTimedOutEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module GetActivityTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetActivityTaskInput, context: context)
        type = Types::GetActivityTaskInput.new
        type.activity_arn = params[:activity_arn]
        type.worker_name = params[:worker_name]
        type
      end
    end

    module GetActivityTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetActivityTaskOutput, context: context)
        type = Types::GetActivityTaskOutput.new
        type.task_token = params[:task_token]
        type.input = params[:input]
        type
      end
    end

    module GetExecutionHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExecutionHistoryInput, context: context)
        type = Types::GetExecutionHistoryInput.new
        type.execution_arn = params[:execution_arn]
        type.max_results = params[:max_results]
        type.reverse_order = params[:reverse_order]
        type.next_token = params[:next_token]
        type.include_execution_data = params[:include_execution_data]
        type
      end
    end

    module GetExecutionHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExecutionHistoryOutput, context: context)
        type = Types::GetExecutionHistoryOutput.new
        type.events = HistoryEventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module HistoryEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HistoryEvent, context: context)
        type = Types::HistoryEvent.new
        type.timestamp = params[:timestamp]
        type.type = params[:type]
        type.id = params[:id]
        type.previous_event_id = params[:previous_event_id]
        type.activity_failed_event_details = ActivityFailedEventDetails.build(params[:activity_failed_event_details], context: "#{context}[:activity_failed_event_details]") unless params[:activity_failed_event_details].nil?
        type.activity_schedule_failed_event_details = ActivityScheduleFailedEventDetails.build(params[:activity_schedule_failed_event_details], context: "#{context}[:activity_schedule_failed_event_details]") unless params[:activity_schedule_failed_event_details].nil?
        type.activity_scheduled_event_details = ActivityScheduledEventDetails.build(params[:activity_scheduled_event_details], context: "#{context}[:activity_scheduled_event_details]") unless params[:activity_scheduled_event_details].nil?
        type.activity_started_event_details = ActivityStartedEventDetails.build(params[:activity_started_event_details], context: "#{context}[:activity_started_event_details]") unless params[:activity_started_event_details].nil?
        type.activity_succeeded_event_details = ActivitySucceededEventDetails.build(params[:activity_succeeded_event_details], context: "#{context}[:activity_succeeded_event_details]") unless params[:activity_succeeded_event_details].nil?
        type.activity_timed_out_event_details = ActivityTimedOutEventDetails.build(params[:activity_timed_out_event_details], context: "#{context}[:activity_timed_out_event_details]") unless params[:activity_timed_out_event_details].nil?
        type.task_failed_event_details = TaskFailedEventDetails.build(params[:task_failed_event_details], context: "#{context}[:task_failed_event_details]") unless params[:task_failed_event_details].nil?
        type.task_scheduled_event_details = TaskScheduledEventDetails.build(params[:task_scheduled_event_details], context: "#{context}[:task_scheduled_event_details]") unless params[:task_scheduled_event_details].nil?
        type.task_start_failed_event_details = TaskStartFailedEventDetails.build(params[:task_start_failed_event_details], context: "#{context}[:task_start_failed_event_details]") unless params[:task_start_failed_event_details].nil?
        type.task_started_event_details = TaskStartedEventDetails.build(params[:task_started_event_details], context: "#{context}[:task_started_event_details]") unless params[:task_started_event_details].nil?
        type.task_submit_failed_event_details = TaskSubmitFailedEventDetails.build(params[:task_submit_failed_event_details], context: "#{context}[:task_submit_failed_event_details]") unless params[:task_submit_failed_event_details].nil?
        type.task_submitted_event_details = TaskSubmittedEventDetails.build(params[:task_submitted_event_details], context: "#{context}[:task_submitted_event_details]") unless params[:task_submitted_event_details].nil?
        type.task_succeeded_event_details = TaskSucceededEventDetails.build(params[:task_succeeded_event_details], context: "#{context}[:task_succeeded_event_details]") unless params[:task_succeeded_event_details].nil?
        type.task_timed_out_event_details = TaskTimedOutEventDetails.build(params[:task_timed_out_event_details], context: "#{context}[:task_timed_out_event_details]") unless params[:task_timed_out_event_details].nil?
        type.execution_failed_event_details = ExecutionFailedEventDetails.build(params[:execution_failed_event_details], context: "#{context}[:execution_failed_event_details]") unless params[:execution_failed_event_details].nil?
        type.execution_started_event_details = ExecutionStartedEventDetails.build(params[:execution_started_event_details], context: "#{context}[:execution_started_event_details]") unless params[:execution_started_event_details].nil?
        type.execution_succeeded_event_details = ExecutionSucceededEventDetails.build(params[:execution_succeeded_event_details], context: "#{context}[:execution_succeeded_event_details]") unless params[:execution_succeeded_event_details].nil?
        type.execution_aborted_event_details = ExecutionAbortedEventDetails.build(params[:execution_aborted_event_details], context: "#{context}[:execution_aborted_event_details]") unless params[:execution_aborted_event_details].nil?
        type.execution_timed_out_event_details = ExecutionTimedOutEventDetails.build(params[:execution_timed_out_event_details], context: "#{context}[:execution_timed_out_event_details]") unless params[:execution_timed_out_event_details].nil?
        type.map_state_started_event_details = MapStateStartedEventDetails.build(params[:map_state_started_event_details], context: "#{context}[:map_state_started_event_details]") unless params[:map_state_started_event_details].nil?
        type.map_iteration_started_event_details = MapIterationEventDetails.build(params[:map_iteration_started_event_details], context: "#{context}[:map_iteration_started_event_details]") unless params[:map_iteration_started_event_details].nil?
        type.map_iteration_succeeded_event_details = MapIterationEventDetails.build(params[:map_iteration_succeeded_event_details], context: "#{context}[:map_iteration_succeeded_event_details]") unless params[:map_iteration_succeeded_event_details].nil?
        type.map_iteration_failed_event_details = MapIterationEventDetails.build(params[:map_iteration_failed_event_details], context: "#{context}[:map_iteration_failed_event_details]") unless params[:map_iteration_failed_event_details].nil?
        type.map_iteration_aborted_event_details = MapIterationEventDetails.build(params[:map_iteration_aborted_event_details], context: "#{context}[:map_iteration_aborted_event_details]") unless params[:map_iteration_aborted_event_details].nil?
        type.lambda_function_failed_event_details = LambdaFunctionFailedEventDetails.build(params[:lambda_function_failed_event_details], context: "#{context}[:lambda_function_failed_event_details]") unless params[:lambda_function_failed_event_details].nil?
        type.lambda_function_schedule_failed_event_details = LambdaFunctionScheduleFailedEventDetails.build(params[:lambda_function_schedule_failed_event_details], context: "#{context}[:lambda_function_schedule_failed_event_details]") unless params[:lambda_function_schedule_failed_event_details].nil?
        type.lambda_function_scheduled_event_details = LambdaFunctionScheduledEventDetails.build(params[:lambda_function_scheduled_event_details], context: "#{context}[:lambda_function_scheduled_event_details]") unless params[:lambda_function_scheduled_event_details].nil?
        type.lambda_function_start_failed_event_details = LambdaFunctionStartFailedEventDetails.build(params[:lambda_function_start_failed_event_details], context: "#{context}[:lambda_function_start_failed_event_details]") unless params[:lambda_function_start_failed_event_details].nil?
        type.lambda_function_succeeded_event_details = LambdaFunctionSucceededEventDetails.build(params[:lambda_function_succeeded_event_details], context: "#{context}[:lambda_function_succeeded_event_details]") unless params[:lambda_function_succeeded_event_details].nil?
        type.lambda_function_timed_out_event_details = LambdaFunctionTimedOutEventDetails.build(params[:lambda_function_timed_out_event_details], context: "#{context}[:lambda_function_timed_out_event_details]") unless params[:lambda_function_timed_out_event_details].nil?
        type.state_entered_event_details = StateEnteredEventDetails.build(params[:state_entered_event_details], context: "#{context}[:state_entered_event_details]") unless params[:state_entered_event_details].nil?
        type.state_exited_event_details = StateExitedEventDetails.build(params[:state_exited_event_details], context: "#{context}[:state_exited_event_details]") unless params[:state_exited_event_details].nil?
        type
      end
    end

    module HistoryEventExecutionDataDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HistoryEventExecutionDataDetails, context: context)
        type = Types::HistoryEventExecutionDataDetails.new
        type.truncated = params[:truncated]
        type
      end
    end

    module HistoryEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HistoryEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidArn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArn, context: context)
        type = Types::InvalidArn.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDefinition, context: context)
        type = Types::InvalidDefinition.new
        type.message = params[:message]
        type
      end
    end

    module InvalidExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidExecutionInput, context: context)
        type = Types::InvalidExecutionInput.new
        type.message = params[:message]
        type
      end
    end

    module InvalidLoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLoggingConfiguration, context: context)
        type = Types::InvalidLoggingConfiguration.new
        type.message = params[:message]
        type
      end
    end

    module InvalidName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidName, context: context)
        type = Types::InvalidName.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOutput, context: context)
        type = Types::InvalidOutput.new
        type.message = params[:message]
        type
      end
    end

    module InvalidToken
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidToken, context: context)
        type = Types::InvalidToken.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTracingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTracingConfiguration, context: context)
        type = Types::InvalidTracingConfiguration.new
        type.message = params[:message]
        type
      end
    end

    module LambdaFunctionFailedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionFailedEventDetails, context: context)
        type = Types::LambdaFunctionFailedEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module LambdaFunctionScheduleFailedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionScheduleFailedEventDetails, context: context)
        type = Types::LambdaFunctionScheduleFailedEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module LambdaFunctionScheduledEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionScheduledEventDetails, context: context)
        type = Types::LambdaFunctionScheduledEventDetails.new
        type.resource = params[:resource]
        type.input = params[:input]
        type.input_details = HistoryEventExecutionDataDetails.build(params[:input_details], context: "#{context}[:input_details]") unless params[:input_details].nil?
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type
      end
    end

    module LambdaFunctionStartFailedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionStartFailedEventDetails, context: context)
        type = Types::LambdaFunctionStartFailedEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module LambdaFunctionSucceededEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionSucceededEventDetails, context: context)
        type = Types::LambdaFunctionSucceededEventDetails.new
        type.output = params[:output]
        type.output_details = HistoryEventExecutionDataDetails.build(params[:output_details], context: "#{context}[:output_details]") unless params[:output_details].nil?
        type
      end
    end

    module LambdaFunctionTimedOutEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionTimedOutEventDetails, context: context)
        type = Types::LambdaFunctionTimedOutEventDetails.new
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module ListActivitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActivitiesInput, context: context)
        type = Types::ListActivitiesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListActivitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActivitiesOutput, context: context)
        type = Types::ListActivitiesOutput.new
        type.activities = ActivityList.build(params[:activities], context: "#{context}[:activities]") unless params[:activities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExecutionsInput, context: context)
        type = Types::ListExecutionsInput.new
        type.state_machine_arn = params[:state_machine_arn]
        type.status_filter = params[:status_filter]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExecutionsOutput, context: context)
        type = Types::ListExecutionsOutput.new
        type.executions = ExecutionList.build(params[:executions], context: "#{context}[:executions]") unless params[:executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStateMachinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStateMachinesInput, context: context)
        type = Types::ListStateMachinesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStateMachinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStateMachinesOutput, context: context)
        type = Types::ListStateMachinesOutput.new
        type.state_machines = StateMachineList.build(params[:state_machines], context: "#{context}[:state_machines]") unless params[:state_machines].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LogDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogDestination, context: context)
        type = Types::LogDestination.new
        type.cloud_watch_logs_log_group = CloudWatchLogsLogGroup.build(params[:cloud_watch_logs_log_group], context: "#{context}[:cloud_watch_logs_log_group]") unless params[:cloud_watch_logs_log_group].nil?
        type
      end
    end

    module LogDestinationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingConfiguration, context: context)
        type = Types::LoggingConfiguration.new
        type.level = params[:level]
        type.include_execution_data = params[:include_execution_data]
        type.destinations = LogDestinationList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type
      end
    end

    module MapIterationEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MapIterationEventDetails, context: context)
        type = Types::MapIterationEventDetails.new
        type.name = params[:name]
        type.index = params[:index]
        type
      end
    end

    module MapStateStartedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MapStateStartedEventDetails, context: context)
        type = Types::MapStateStartedEventDetails.new
        type.length = params[:length]
        type
      end
    end

    module MissingRequiredParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingRequiredParameter, context: context)
        type = Types::MissingRequiredParameter.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFound, context: context)
        type = Types::ResourceNotFound.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module SendTaskFailureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTaskFailureInput, context: context)
        type = Types::SendTaskFailureInput.new
        type.task_token = params[:task_token]
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module SendTaskFailureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTaskFailureOutput, context: context)
        type = Types::SendTaskFailureOutput.new
        type
      end
    end

    module SendTaskHeartbeatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTaskHeartbeatInput, context: context)
        type = Types::SendTaskHeartbeatInput.new
        type.task_token = params[:task_token]
        type
      end
    end

    module SendTaskHeartbeatOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTaskHeartbeatOutput, context: context)
        type = Types::SendTaskHeartbeatOutput.new
        type
      end
    end

    module SendTaskSuccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTaskSuccessInput, context: context)
        type = Types::SendTaskSuccessInput.new
        type.task_token = params[:task_token]
        type.output = params[:output]
        type
      end
    end

    module SendTaskSuccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTaskSuccessOutput, context: context)
        type = Types::SendTaskSuccessOutput.new
        type
      end
    end

    module StartExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExecutionInput, context: context)
        type = Types::StartExecutionInput.new
        type.state_machine_arn = params[:state_machine_arn]
        type.name = params[:name]
        type.input = params[:input]
        type.trace_header = params[:trace_header]
        type
      end
    end

    module StartExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExecutionOutput, context: context)
        type = Types::StartExecutionOutput.new
        type.execution_arn = params[:execution_arn]
        type.start_date = params[:start_date]
        type
      end
    end

    module StartSyncExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSyncExecutionInput, context: context)
        type = Types::StartSyncExecutionInput.new
        type.state_machine_arn = params[:state_machine_arn]
        type.name = params[:name]
        type.input = params[:input]
        type.trace_header = params[:trace_header]
        type
      end
    end

    module StartSyncExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSyncExecutionOutput, context: context)
        type = Types::StartSyncExecutionOutput.new
        type.execution_arn = params[:execution_arn]
        type.state_machine_arn = params[:state_machine_arn]
        type.name = params[:name]
        type.start_date = params[:start_date]
        type.stop_date = params[:stop_date]
        type.status = params[:status]
        type.error = params[:error]
        type.cause = params[:cause]
        type.input = params[:input]
        type.input_details = CloudWatchEventsExecutionDataDetails.build(params[:input_details], context: "#{context}[:input_details]") unless params[:input_details].nil?
        type.output = params[:output]
        type.output_details = CloudWatchEventsExecutionDataDetails.build(params[:output_details], context: "#{context}[:output_details]") unless params[:output_details].nil?
        type.trace_header = params[:trace_header]
        type.billing_details = BillingDetails.build(params[:billing_details], context: "#{context}[:billing_details]") unless params[:billing_details].nil?
        type
      end
    end

    module StateEnteredEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateEnteredEventDetails, context: context)
        type = Types::StateEnteredEventDetails.new
        type.name = params[:name]
        type.input = params[:input]
        type.input_details = HistoryEventExecutionDataDetails.build(params[:input_details], context: "#{context}[:input_details]") unless params[:input_details].nil?
        type
      end
    end

    module StateExitedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateExitedEventDetails, context: context)
        type = Types::StateExitedEventDetails.new
        type.name = params[:name]
        type.output = params[:output]
        type.output_details = HistoryEventExecutionDataDetails.build(params[:output_details], context: "#{context}[:output_details]") unless params[:output_details].nil?
        type
      end
    end

    module StateMachineAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateMachineAlreadyExists, context: context)
        type = Types::StateMachineAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module StateMachineDeleting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateMachineDeleting, context: context)
        type = Types::StateMachineDeleting.new
        type.message = params[:message]
        type
      end
    end

    module StateMachineDoesNotExist
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateMachineDoesNotExist, context: context)
        type = Types::StateMachineDoesNotExist.new
        type.message = params[:message]
        type
      end
    end

    module StateMachineLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateMachineLimitExceeded, context: context)
        type = Types::StateMachineLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module StateMachineList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StateMachineListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StateMachineListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateMachineListItem, context: context)
        type = Types::StateMachineListItem.new
        type.state_machine_arn = params[:state_machine_arn]
        type.name = params[:name]
        type.type = params[:type]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module StateMachineTypeNotSupported
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateMachineTypeNotSupported, context: context)
        type = Types::StateMachineTypeNotSupported.new
        type.message = params[:message]
        type
      end
    end

    module StopExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopExecutionInput, context: context)
        type = Types::StopExecutionInput.new
        type.execution_arn = params[:execution_arn]
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module StopExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopExecutionOutput, context: context)
        type = Types::StopExecutionOutput.new
        type.stop_date = params[:stop_date]
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

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TaskDoesNotExist
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskDoesNotExist, context: context)
        type = Types::TaskDoesNotExist.new
        type.message = params[:message]
        type
      end
    end

    module TaskFailedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskFailedEventDetails, context: context)
        type = Types::TaskFailedEventDetails.new
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module TaskScheduledEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskScheduledEventDetails, context: context)
        type = Types::TaskScheduledEventDetails.new
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type.region = params[:region]
        type.parameters = params[:parameters]
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.heartbeat_in_seconds = params[:heartbeat_in_seconds]
        type
      end
    end

    module TaskStartFailedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskStartFailedEventDetails, context: context)
        type = Types::TaskStartFailedEventDetails.new
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module TaskStartedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskStartedEventDetails, context: context)
        type = Types::TaskStartedEventDetails.new
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type
      end
    end

    module TaskSubmitFailedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskSubmitFailedEventDetails, context: context)
        type = Types::TaskSubmitFailedEventDetails.new
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module TaskSubmittedEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskSubmittedEventDetails, context: context)
        type = Types::TaskSubmittedEventDetails.new
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type.output = params[:output]
        type.output_details = HistoryEventExecutionDataDetails.build(params[:output_details], context: "#{context}[:output_details]") unless params[:output_details].nil?
        type
      end
    end

    module TaskSucceededEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskSucceededEventDetails, context: context)
        type = Types::TaskSucceededEventDetails.new
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type.output = params[:output]
        type.output_details = HistoryEventExecutionDataDetails.build(params[:output_details], context: "#{context}[:output_details]") unless params[:output_details].nil?
        type
      end
    end

    module TaskTimedOut
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskTimedOut, context: context)
        type = Types::TaskTimedOut.new
        type.message = params[:message]
        type
      end
    end

    module TaskTimedOutEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskTimedOutEventDetails, context: context)
        type = Types::TaskTimedOutEventDetails.new
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type.error = params[:error]
        type.cause = params[:cause]
        type
      end
    end

    module TooManyTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTags, context: context)
        type = Types::TooManyTags.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module TracingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TracingConfiguration, context: context)
        type = Types::TracingConfiguration.new
        type.enabled = params[:enabled]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateStateMachineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStateMachineInput, context: context)
        type = Types::UpdateStateMachineInput.new
        type.state_machine_arn = params[:state_machine_arn]
        type.definition = params[:definition]
        type.role_arn = params[:role_arn]
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type.tracing_configuration = TracingConfiguration.build(params[:tracing_configuration], context: "#{context}[:tracing_configuration]") unless params[:tracing_configuration].nil?
        type
      end
    end

    module UpdateStateMachineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStateMachineOutput, context: context)
        type = Types::UpdateStateMachineOutput.new
        type.update_date = params[:update_date]
        type
      end
    end

  end
end
