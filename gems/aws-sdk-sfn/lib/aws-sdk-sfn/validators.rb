# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SFN
  module Validators

    class ActivityDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityDoesNotExist, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ActivityFailedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityFailedEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class ActivityLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ActivityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ActivityListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActivityListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityListItem, context: context)
        Hearth::Validator.validate!(input[:activity_arn], ::String, context: "#{context}[:activity_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class ActivityScheduleFailedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityScheduleFailedEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class ActivityScheduledEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityScheduledEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:input_details], context: "#{context}[:input_details]") unless input[:input_details].nil?
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        Hearth::Validator.validate!(input[:heartbeat_in_seconds], ::Integer, context: "#{context}[:heartbeat_in_seconds]")
      end
    end

    class ActivityStartedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityStartedEventDetails, context: context)
        Hearth::Validator.validate!(input[:worker_name], ::String, context: "#{context}[:worker_name]")
      end
    end

    class ActivitySucceededEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivitySucceededEventDetails, context: context)
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:output_details], context: "#{context}[:output_details]") unless input[:output_details].nil?
      end
    end

    class ActivityTimedOutEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTimedOutEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class ActivityWorkerLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityWorkerLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BillingDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BillingDetails, context: context)
        Hearth::Validator.validate!(input[:billed_memory_used_in_mb], ::Integer, context: "#{context}[:billed_memory_used_in_mb]")
        Hearth::Validator.validate!(input[:billed_duration_in_milliseconds], ::Integer, context: "#{context}[:billed_duration_in_milliseconds]")
      end
    end

    class CloudWatchEventsExecutionDataDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchEventsExecutionDataDetails, context: context)
        Hearth::Validator.validate!(input[:included], ::TrueClass, ::FalseClass, context: "#{context}[:included]")
      end
    end

    class CloudWatchLogsLogGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsLogGroup, context: context)
        Hearth::Validator.validate!(input[:log_group_arn], ::String, context: "#{context}[:log_group_arn]")
      end
    end

    class CreateActivityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateActivityInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateActivityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateActivityOutput, context: context)
        Hearth::Validator.validate!(input[:activity_arn], ::String, context: "#{context}[:activity_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class CreateStateMachineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStateMachineInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::TracingConfiguration.validate!(input[:tracing_configuration], context: "#{context}[:tracing_configuration]") unless input[:tracing_configuration].nil?
      end
    end

    class CreateStateMachineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStateMachineOutput, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class DeleteActivityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteActivityInput, context: context)
        Hearth::Validator.validate!(input[:activity_arn], ::String, context: "#{context}[:activity_arn]")
      end
    end

    class DeleteActivityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteActivityOutput, context: context)
      end
    end

    class DeleteStateMachineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStateMachineInput, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
      end
    end

    class DeleteStateMachineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStateMachineOutput, context: context)
      end
    end

    class DescribeActivityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActivityInput, context: context)
        Hearth::Validator.validate!(input[:activity_arn], ::String, context: "#{context}[:activity_arn]")
      end
    end

    class DescribeActivityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActivityOutput, context: context)
        Hearth::Validator.validate!(input[:activity_arn], ::String, context: "#{context}[:activity_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class DescribeExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExecutionInput, context: context)
        Hearth::Validator.validate!(input[:execution_arn], ::String, context: "#{context}[:execution_arn]")
      end
    end

    class DescribeExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:execution_arn], ::String, context: "#{context}[:execution_arn]")
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:stop_date], ::Time, context: "#{context}[:stop_date]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Validators::CloudWatchEventsExecutionDataDetails.validate!(input[:input_details], context: "#{context}[:input_details]") unless input[:input_details].nil?
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
        Validators::CloudWatchEventsExecutionDataDetails.validate!(input[:output_details], context: "#{context}[:output_details]") unless input[:output_details].nil?
        Hearth::Validator.validate!(input[:trace_header], ::String, context: "#{context}[:trace_header]")
      end
    end

    class DescribeStateMachineForExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStateMachineForExecutionInput, context: context)
        Hearth::Validator.validate!(input[:execution_arn], ::String, context: "#{context}[:execution_arn]")
      end
    end

    class DescribeStateMachineForExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStateMachineForExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:update_date], ::Time, context: "#{context}[:update_date]")
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
        Validators::TracingConfiguration.validate!(input[:tracing_configuration], context: "#{context}[:tracing_configuration]") unless input[:tracing_configuration].nil?
      end
    end

    class DescribeStateMachineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStateMachineInput, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
      end
    end

    class DescribeStateMachineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStateMachineOutput, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
        Validators::TracingConfiguration.validate!(input[:tracing_configuration], context: "#{context}[:tracing_configuration]") unless input[:tracing_configuration].nil?
      end
    end

    class ExecutionAbortedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionAbortedEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class ExecutionAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExecutionDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionDoesNotExist, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExecutionFailedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionFailedEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class ExecutionLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExecutionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExecutionListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExecutionListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionListItem, context: context)
        Hearth::Validator.validate!(input[:execution_arn], ::String, context: "#{context}[:execution_arn]")
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:stop_date], ::Time, context: "#{context}[:stop_date]")
      end
    end

    class ExecutionStartedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionStartedEventDetails, context: context)
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:input_details], context: "#{context}[:input_details]") unless input[:input_details].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class ExecutionSucceededEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionSucceededEventDetails, context: context)
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:output_details], context: "#{context}[:output_details]") unless input[:output_details].nil?
      end
    end

    class ExecutionTimedOutEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionTimedOutEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class GetActivityTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetActivityTaskInput, context: context)
        Hearth::Validator.validate!(input[:activity_arn], ::String, context: "#{context}[:activity_arn]")
        Hearth::Validator.validate!(input[:worker_name], ::String, context: "#{context}[:worker_name]")
      end
    end

    class GetActivityTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetActivityTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
      end
    end

    class GetExecutionHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExecutionHistoryInput, context: context)
        Hearth::Validator.validate!(input[:execution_arn], ::String, context: "#{context}[:execution_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:include_execution_data], ::TrueClass, ::FalseClass, context: "#{context}[:include_execution_data]")
      end
    end

    class GetExecutionHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExecutionHistoryOutput, context: context)
        Validators::HistoryEventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class HistoryEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HistoryEvent, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:previous_event_id], ::Integer, context: "#{context}[:previous_event_id]")
        Validators::ActivityFailedEventDetails.validate!(input[:activity_failed_event_details], context: "#{context}[:activity_failed_event_details]") unless input[:activity_failed_event_details].nil?
        Validators::ActivityScheduleFailedEventDetails.validate!(input[:activity_schedule_failed_event_details], context: "#{context}[:activity_schedule_failed_event_details]") unless input[:activity_schedule_failed_event_details].nil?
        Validators::ActivityScheduledEventDetails.validate!(input[:activity_scheduled_event_details], context: "#{context}[:activity_scheduled_event_details]") unless input[:activity_scheduled_event_details].nil?
        Validators::ActivityStartedEventDetails.validate!(input[:activity_started_event_details], context: "#{context}[:activity_started_event_details]") unless input[:activity_started_event_details].nil?
        Validators::ActivitySucceededEventDetails.validate!(input[:activity_succeeded_event_details], context: "#{context}[:activity_succeeded_event_details]") unless input[:activity_succeeded_event_details].nil?
        Validators::ActivityTimedOutEventDetails.validate!(input[:activity_timed_out_event_details], context: "#{context}[:activity_timed_out_event_details]") unless input[:activity_timed_out_event_details].nil?
        Validators::TaskFailedEventDetails.validate!(input[:task_failed_event_details], context: "#{context}[:task_failed_event_details]") unless input[:task_failed_event_details].nil?
        Validators::TaskScheduledEventDetails.validate!(input[:task_scheduled_event_details], context: "#{context}[:task_scheduled_event_details]") unless input[:task_scheduled_event_details].nil?
        Validators::TaskStartFailedEventDetails.validate!(input[:task_start_failed_event_details], context: "#{context}[:task_start_failed_event_details]") unless input[:task_start_failed_event_details].nil?
        Validators::TaskStartedEventDetails.validate!(input[:task_started_event_details], context: "#{context}[:task_started_event_details]") unless input[:task_started_event_details].nil?
        Validators::TaskSubmitFailedEventDetails.validate!(input[:task_submit_failed_event_details], context: "#{context}[:task_submit_failed_event_details]") unless input[:task_submit_failed_event_details].nil?
        Validators::TaskSubmittedEventDetails.validate!(input[:task_submitted_event_details], context: "#{context}[:task_submitted_event_details]") unless input[:task_submitted_event_details].nil?
        Validators::TaskSucceededEventDetails.validate!(input[:task_succeeded_event_details], context: "#{context}[:task_succeeded_event_details]") unless input[:task_succeeded_event_details].nil?
        Validators::TaskTimedOutEventDetails.validate!(input[:task_timed_out_event_details], context: "#{context}[:task_timed_out_event_details]") unless input[:task_timed_out_event_details].nil?
        Validators::ExecutionFailedEventDetails.validate!(input[:execution_failed_event_details], context: "#{context}[:execution_failed_event_details]") unless input[:execution_failed_event_details].nil?
        Validators::ExecutionStartedEventDetails.validate!(input[:execution_started_event_details], context: "#{context}[:execution_started_event_details]") unless input[:execution_started_event_details].nil?
        Validators::ExecutionSucceededEventDetails.validate!(input[:execution_succeeded_event_details], context: "#{context}[:execution_succeeded_event_details]") unless input[:execution_succeeded_event_details].nil?
        Validators::ExecutionAbortedEventDetails.validate!(input[:execution_aborted_event_details], context: "#{context}[:execution_aborted_event_details]") unless input[:execution_aborted_event_details].nil?
        Validators::ExecutionTimedOutEventDetails.validate!(input[:execution_timed_out_event_details], context: "#{context}[:execution_timed_out_event_details]") unless input[:execution_timed_out_event_details].nil?
        Validators::MapStateStartedEventDetails.validate!(input[:map_state_started_event_details], context: "#{context}[:map_state_started_event_details]") unless input[:map_state_started_event_details].nil?
        Validators::MapIterationEventDetails.validate!(input[:map_iteration_started_event_details], context: "#{context}[:map_iteration_started_event_details]") unless input[:map_iteration_started_event_details].nil?
        Validators::MapIterationEventDetails.validate!(input[:map_iteration_succeeded_event_details], context: "#{context}[:map_iteration_succeeded_event_details]") unless input[:map_iteration_succeeded_event_details].nil?
        Validators::MapIterationEventDetails.validate!(input[:map_iteration_failed_event_details], context: "#{context}[:map_iteration_failed_event_details]") unless input[:map_iteration_failed_event_details].nil?
        Validators::MapIterationEventDetails.validate!(input[:map_iteration_aborted_event_details], context: "#{context}[:map_iteration_aborted_event_details]") unless input[:map_iteration_aborted_event_details].nil?
        Validators::LambdaFunctionFailedEventDetails.validate!(input[:lambda_function_failed_event_details], context: "#{context}[:lambda_function_failed_event_details]") unless input[:lambda_function_failed_event_details].nil?
        Validators::LambdaFunctionScheduleFailedEventDetails.validate!(input[:lambda_function_schedule_failed_event_details], context: "#{context}[:lambda_function_schedule_failed_event_details]") unless input[:lambda_function_schedule_failed_event_details].nil?
        Validators::LambdaFunctionScheduledEventDetails.validate!(input[:lambda_function_scheduled_event_details], context: "#{context}[:lambda_function_scheduled_event_details]") unless input[:lambda_function_scheduled_event_details].nil?
        Validators::LambdaFunctionStartFailedEventDetails.validate!(input[:lambda_function_start_failed_event_details], context: "#{context}[:lambda_function_start_failed_event_details]") unless input[:lambda_function_start_failed_event_details].nil?
        Validators::LambdaFunctionSucceededEventDetails.validate!(input[:lambda_function_succeeded_event_details], context: "#{context}[:lambda_function_succeeded_event_details]") unless input[:lambda_function_succeeded_event_details].nil?
        Validators::LambdaFunctionTimedOutEventDetails.validate!(input[:lambda_function_timed_out_event_details], context: "#{context}[:lambda_function_timed_out_event_details]") unless input[:lambda_function_timed_out_event_details].nil?
        Validators::StateEnteredEventDetails.validate!(input[:state_entered_event_details], context: "#{context}[:state_entered_event_details]") unless input[:state_entered_event_details].nil?
        Validators::StateExitedEventDetails.validate!(input[:state_exited_event_details], context: "#{context}[:state_exited_event_details]") unless input[:state_exited_event_details].nil?
      end
    end

    class HistoryEventExecutionDataDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HistoryEventExecutionDataDetails, context: context)
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class HistoryEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HistoryEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidArn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArn, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDefinition, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidExecutionInput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLoggingConfiguration, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidName, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidToken
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidToken, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTracingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTracingConfiguration, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LambdaFunctionFailedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionFailedEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class LambdaFunctionScheduleFailedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionScheduleFailedEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class LambdaFunctionScheduledEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionScheduledEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:input_details], context: "#{context}[:input_details]") unless input[:input_details].nil?
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
      end
    end

    class LambdaFunctionStartFailedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionStartFailedEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class LambdaFunctionSucceededEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionSucceededEventDetails, context: context)
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:output_details], context: "#{context}[:output_details]") unless input[:output_details].nil?
      end
    end

    class LambdaFunctionTimedOutEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionTimedOutEventDetails, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class ListActivitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActivitiesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListActivitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActivitiesOutput, context: context)
        Validators::ActivityList.validate!(input[:activities], context: "#{context}[:activities]") unless input[:activities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:status_filter], ::String, context: "#{context}[:status_filter]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExecutionsOutput, context: context)
        Validators::ExecutionList.validate!(input[:executions], context: "#{context}[:executions]") unless input[:executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStateMachinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStateMachinesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStateMachinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStateMachinesOutput, context: context)
        Validators::StateMachineList.validate!(input[:state_machines], context: "#{context}[:state_machines]") unless input[:state_machines].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LogDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogDestination, context: context)
        Validators::CloudWatchLogsLogGroup.validate!(input[:cloud_watch_logs_log_group], context: "#{context}[:cloud_watch_logs_log_group]") unless input[:cloud_watch_logs_log_group].nil?
      end
    end

    class LogDestinationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfiguration, context: context)
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
        Hearth::Validator.validate!(input[:include_execution_data], ::TrueClass, ::FalseClass, context: "#{context}[:include_execution_data]")
        Validators::LogDestinationList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
      end
    end

    class MapIterationEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MapIterationEventDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
      end
    end

    class MapStateStartedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MapStateStartedEventDetails, context: context)
        Hearth::Validator.validate!(input[:length], ::Integer, context: "#{context}[:length]")
      end
    end

    class MissingRequiredParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingRequiredParameter, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class SendTaskFailureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTaskFailureInput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class SendTaskFailureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTaskFailureOutput, context: context)
      end
    end

    class SendTaskHeartbeatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTaskHeartbeatInput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
      end
    end

    class SendTaskHeartbeatOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTaskHeartbeatOutput, context: context)
      end
    end

    class SendTaskSuccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTaskSuccessInput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
      end
    end

    class SendTaskSuccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTaskSuccessOutput, context: context)
      end
    end

    class StartExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExecutionInput, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:trace_header], ::String, context: "#{context}[:trace_header]")
      end
    end

    class StartExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:execution_arn], ::String, context: "#{context}[:execution_arn]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
      end
    end

    class StartSyncExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSyncExecutionInput, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:trace_header], ::String, context: "#{context}[:trace_header]")
      end
    end

    class StartSyncExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSyncExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:execution_arn], ::String, context: "#{context}[:execution_arn]")
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:stop_date], ::Time, context: "#{context}[:stop_date]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Validators::CloudWatchEventsExecutionDataDetails.validate!(input[:input_details], context: "#{context}[:input_details]") unless input[:input_details].nil?
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
        Validators::CloudWatchEventsExecutionDataDetails.validate!(input[:output_details], context: "#{context}[:output_details]") unless input[:output_details].nil?
        Hearth::Validator.validate!(input[:trace_header], ::String, context: "#{context}[:trace_header]")
        Validators::BillingDetails.validate!(input[:billing_details], context: "#{context}[:billing_details]") unless input[:billing_details].nil?
      end
    end

    class StateEnteredEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateEnteredEventDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:input_details], context: "#{context}[:input_details]") unless input[:input_details].nil?
      end
    end

    class StateExitedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateExitedEventDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:output_details], context: "#{context}[:output_details]") unless input[:output_details].nil?
      end
    end

    class StateMachineAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateMachineAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StateMachineDeleting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateMachineDeleting, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StateMachineDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateMachineDoesNotExist, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StateMachineLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateMachineLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StateMachineList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StateMachineListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StateMachineListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateMachineListItem, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class StateMachineTypeNotSupported
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateMachineTypeNotSupported, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StopExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopExecutionInput, context: context)
        Hearth::Validator.validate!(input[:execution_arn], ::String, context: "#{context}[:execution_arn]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class StopExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:stop_date], ::Time, context: "#{context}[:stop_date]")
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TaskDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskDoesNotExist, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TaskFailedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskFailedEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class TaskScheduledEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskScheduledEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        Hearth::Validator.validate!(input[:heartbeat_in_seconds], ::Integer, context: "#{context}[:heartbeat_in_seconds]")
      end
    end

    class TaskStartFailedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskStartFailedEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class TaskStartedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskStartedEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class TaskSubmitFailedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskSubmitFailedEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class TaskSubmittedEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskSubmittedEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:output_details], context: "#{context}[:output_details]") unless input[:output_details].nil?
      end
    end

    class TaskSucceededEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskSucceededEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
        Validators::HistoryEventExecutionDataDetails.validate!(input[:output_details], context: "#{context}[:output_details]") unless input[:output_details].nil?
      end
    end

    class TaskTimedOut
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskTimedOut, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TaskTimedOutEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskTimedOutEventDetails, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class TooManyTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTags, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class TracingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TracingConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateStateMachineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStateMachineInput, context: context)
        Hearth::Validator.validate!(input[:state_machine_arn], ::String, context: "#{context}[:state_machine_arn]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
        Validators::TracingConfiguration.validate!(input[:tracing_configuration], context: "#{context}[:tracing_configuration]") unless input[:tracing_configuration].nil?
      end
    end

    class UpdateStateMachineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStateMachineOutput, context: context)
        Hearth::Validator.validate!(input[:update_date], ::Time, context: "#{context}[:update_date]")
      end
    end

  end
end
