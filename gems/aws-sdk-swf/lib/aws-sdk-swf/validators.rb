# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::SWF
  module Validators

    class ActivityTaskCancelRequestedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTaskCancelRequestedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
        Hearth::Validator.validate!(input[:activity_id], ::String, context: "#{context}[:activity_id]")
      end
    end

    class ActivityTaskCanceledEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTaskCanceledEventAttributes, context: context)
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
        Hearth::Validator.validate!(input[:latest_cancel_requested_event_id], ::Integer, context: "#{context}[:latest_cancel_requested_event_id]")
      end
    end

    class ActivityTaskCompletedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTaskCompletedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class ActivityTaskFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTaskFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class ActivityTaskScheduledEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTaskScheduledEventAttributes, context: context)
        ActivityType.validate!(input[:activity_type], context: "#{context}[:activity_type]") unless input[:activity_type].nil?
        Hearth::Validator.validate!(input[:activity_id], ::String, context: "#{context}[:activity_id]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
        Hearth::Validator.validate!(input[:schedule_to_start_timeout], ::String, context: "#{context}[:schedule_to_start_timeout]")
        Hearth::Validator.validate!(input[:schedule_to_close_timeout], ::String, context: "#{context}[:schedule_to_close_timeout]")
        Hearth::Validator.validate!(input[:start_to_close_timeout], ::String, context: "#{context}[:start_to_close_timeout]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
        Hearth::Validator.validate!(input[:heartbeat_timeout], ::String, context: "#{context}[:heartbeat_timeout]")
      end
    end

    class ActivityTaskStartedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTaskStartedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
      end
    end

    class ActivityTaskTimedOutEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTaskTimedOutEventAttributes, context: context)
        Hearth::Validator.validate!(input[:timeout_type], ::String, context: "#{context}[:timeout_type]")
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class ActivityType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityType, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ActivityTypeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTypeConfiguration, context: context)
        Hearth::Validator.validate!(input[:default_task_start_to_close_timeout], ::String, context: "#{context}[:default_task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:default_task_heartbeat_timeout], ::String, context: "#{context}[:default_task_heartbeat_timeout]")
        TaskList.validate!(input[:default_task_list], context: "#{context}[:default_task_list]") unless input[:default_task_list].nil?
        Hearth::Validator.validate!(input[:default_task_priority], ::String, context: "#{context}[:default_task_priority]")
        Hearth::Validator.validate!(input[:default_task_schedule_to_start_timeout], ::String, context: "#{context}[:default_task_schedule_to_start_timeout]")
        Hearth::Validator.validate!(input[:default_task_schedule_to_close_timeout], ::String, context: "#{context}[:default_task_schedule_to_close_timeout]")
      end
    end

    class ActivityTypeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityTypeInfo, context: context)
        ActivityType.validate!(input[:activity_type], context: "#{context}[:activity_type]") unless input[:activity_type].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:deprecation_date], ::Time, context: "#{context}[:deprecation_date]")
      end
    end

    class ActivityTypeInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActivityTypeInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelTimerDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelTimerDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:timer_id], ::String, context: "#{context}[:timer_id]")
      end
    end

    class CancelTimerFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelTimerFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:timer_id], ::String, context: "#{context}[:timer_id]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class CancelWorkflowExecutionDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelWorkflowExecutionDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class CancelWorkflowExecutionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelWorkflowExecutionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class ChildWorkflowExecutionCanceledEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChildWorkflowExecutionCanceledEventAttributes, context: context)
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class ChildWorkflowExecutionCompletedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChildWorkflowExecutionCompletedEventAttributes, context: context)
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class ChildWorkflowExecutionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChildWorkflowExecutionFailedEventAttributes, context: context)
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class ChildWorkflowExecutionStartedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChildWorkflowExecutionStartedEventAttributes, context: context)
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
      end
    end

    class ChildWorkflowExecutionTerminatedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChildWorkflowExecutionTerminatedEventAttributes, context: context)
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class ChildWorkflowExecutionTimedOutEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChildWorkflowExecutionTimedOutEventAttributes, context: context)
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:timeout_type], ::String, context: "#{context}[:timeout_type]")
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class CloseStatusFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloseStatusFilter, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CompleteWorkflowExecutionDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteWorkflowExecutionDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
      end
    end

    class CompleteWorkflowExecutionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteWorkflowExecutionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class ContinueAsNewWorkflowExecutionDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinueAsNewWorkflowExecutionDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:execution_start_to_close_timeout], ::String, context: "#{context}[:execution_start_to_close_timeout]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        Hearth::Validator.validate!(input[:task_start_to_close_timeout], ::String, context: "#{context}[:task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:workflow_type_version], ::String, context: "#{context}[:workflow_type_version]")
        Hearth::Validator.validate!(input[:lambda_role], ::String, context: "#{context}[:lambda_role]")
      end
    end

    class ContinueAsNewWorkflowExecutionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinueAsNewWorkflowExecutionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class CountClosedWorkflowExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountClosedWorkflowExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        ExecutionTimeFilter.validate!(input[:start_time_filter], context: "#{context}[:start_time_filter]") unless input[:start_time_filter].nil?
        ExecutionTimeFilter.validate!(input[:close_time_filter], context: "#{context}[:close_time_filter]") unless input[:close_time_filter].nil?
        WorkflowExecutionFilter.validate!(input[:execution_filter], context: "#{context}[:execution_filter]") unless input[:execution_filter].nil?
        WorkflowTypeFilter.validate!(input[:type_filter], context: "#{context}[:type_filter]") unless input[:type_filter].nil?
        TagFilter.validate!(input[:tag_filter], context: "#{context}[:tag_filter]") unless input[:tag_filter].nil?
        CloseStatusFilter.validate!(input[:close_status_filter], context: "#{context}[:close_status_filter]") unless input[:close_status_filter].nil?
      end
    end

    class CountClosedWorkflowExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountClosedWorkflowExecutionsOutput, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class CountOpenWorkflowExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountOpenWorkflowExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        ExecutionTimeFilter.validate!(input[:start_time_filter], context: "#{context}[:start_time_filter]") unless input[:start_time_filter].nil?
        WorkflowTypeFilter.validate!(input[:type_filter], context: "#{context}[:type_filter]") unless input[:type_filter].nil?
        TagFilter.validate!(input[:tag_filter], context: "#{context}[:tag_filter]") unless input[:tag_filter].nil?
        WorkflowExecutionFilter.validate!(input[:execution_filter], context: "#{context}[:execution_filter]") unless input[:execution_filter].nil?
      end
    end

    class CountOpenWorkflowExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountOpenWorkflowExecutionsOutput, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class CountPendingActivityTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountPendingActivityTasksInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
      end
    end

    class CountPendingActivityTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountPendingActivityTasksOutput, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class CountPendingDecisionTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountPendingDecisionTasksInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
      end
    end

    class CountPendingDecisionTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountPendingDecisionTasksOutput, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class Decision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Decision, context: context)
        Hearth::Validator.validate!(input[:decision_type], ::String, context: "#{context}[:decision_type]")
        ScheduleActivityTaskDecisionAttributes.validate!(input[:schedule_activity_task_decision_attributes], context: "#{context}[:schedule_activity_task_decision_attributes]") unless input[:schedule_activity_task_decision_attributes].nil?
        RequestCancelActivityTaskDecisionAttributes.validate!(input[:request_cancel_activity_task_decision_attributes], context: "#{context}[:request_cancel_activity_task_decision_attributes]") unless input[:request_cancel_activity_task_decision_attributes].nil?
        CompleteWorkflowExecutionDecisionAttributes.validate!(input[:complete_workflow_execution_decision_attributes], context: "#{context}[:complete_workflow_execution_decision_attributes]") unless input[:complete_workflow_execution_decision_attributes].nil?
        FailWorkflowExecutionDecisionAttributes.validate!(input[:fail_workflow_execution_decision_attributes], context: "#{context}[:fail_workflow_execution_decision_attributes]") unless input[:fail_workflow_execution_decision_attributes].nil?
        CancelWorkflowExecutionDecisionAttributes.validate!(input[:cancel_workflow_execution_decision_attributes], context: "#{context}[:cancel_workflow_execution_decision_attributes]") unless input[:cancel_workflow_execution_decision_attributes].nil?
        ContinueAsNewWorkflowExecutionDecisionAttributes.validate!(input[:continue_as_new_workflow_execution_decision_attributes], context: "#{context}[:continue_as_new_workflow_execution_decision_attributes]") unless input[:continue_as_new_workflow_execution_decision_attributes].nil?
        RecordMarkerDecisionAttributes.validate!(input[:record_marker_decision_attributes], context: "#{context}[:record_marker_decision_attributes]") unless input[:record_marker_decision_attributes].nil?
        StartTimerDecisionAttributes.validate!(input[:start_timer_decision_attributes], context: "#{context}[:start_timer_decision_attributes]") unless input[:start_timer_decision_attributes].nil?
        CancelTimerDecisionAttributes.validate!(input[:cancel_timer_decision_attributes], context: "#{context}[:cancel_timer_decision_attributes]") unless input[:cancel_timer_decision_attributes].nil?
        SignalExternalWorkflowExecutionDecisionAttributes.validate!(input[:signal_external_workflow_execution_decision_attributes], context: "#{context}[:signal_external_workflow_execution_decision_attributes]") unless input[:signal_external_workflow_execution_decision_attributes].nil?
        RequestCancelExternalWorkflowExecutionDecisionAttributes.validate!(input[:request_cancel_external_workflow_execution_decision_attributes], context: "#{context}[:request_cancel_external_workflow_execution_decision_attributes]") unless input[:request_cancel_external_workflow_execution_decision_attributes].nil?
        StartChildWorkflowExecutionDecisionAttributes.validate!(input[:start_child_workflow_execution_decision_attributes], context: "#{context}[:start_child_workflow_execution_decision_attributes]") unless input[:start_child_workflow_execution_decision_attributes].nil?
        ScheduleLambdaFunctionDecisionAttributes.validate!(input[:schedule_lambda_function_decision_attributes], context: "#{context}[:schedule_lambda_function_decision_attributes]") unless input[:schedule_lambda_function_decision_attributes].nil?
      end
    end

    class DecisionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Decision.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DecisionTaskCompletedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecisionTaskCompletedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:execution_context], ::String, context: "#{context}[:execution_context]")
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class DecisionTaskScheduledEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecisionTaskScheduledEventAttributes, context: context)
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        Hearth::Validator.validate!(input[:start_to_close_timeout], ::String, context: "#{context}[:start_to_close_timeout]")
      end
    end

    class DecisionTaskStartedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecisionTaskStartedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
      end
    end

    class DecisionTaskTimedOutEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecisionTaskTimedOutEventAttributes, context: context)
        Hearth::Validator.validate!(input[:timeout_type], ::String, context: "#{context}[:timeout_type]")
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class DefaultUndefinedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultUndefinedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeprecateActivityTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateActivityTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        ActivityType.validate!(input[:activity_type], context: "#{context}[:activity_type]") unless input[:activity_type].nil?
      end
    end

    class DeprecateActivityTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateActivityTypeOutput, context: context)
      end
    end

    class DeprecateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateDomainInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeprecateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateDomainOutput, context: context)
      end
    end

    class DeprecateWorkflowTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateWorkflowTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
      end
    end

    class DeprecateWorkflowTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateWorkflowTypeOutput, context: context)
      end
    end

    class DescribeActivityTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActivityTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        ActivityType.validate!(input[:activity_type], context: "#{context}[:activity_type]") unless input[:activity_type].nil?
      end
    end

    class DescribeActivityTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActivityTypeOutput, context: context)
        ActivityTypeInfo.validate!(input[:type_info], context: "#{context}[:type_info]") unless input[:type_info].nil?
        ActivityTypeConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class DescribeDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainOutput, context: context)
        DomainInfo.validate!(input[:domain_info], context: "#{context}[:domain_info]") unless input[:domain_info].nil?
        DomainConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class DescribeWorkflowExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkflowExecutionInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        WorkflowExecution.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
      end
    end

    class DescribeWorkflowExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkflowExecutionOutput, context: context)
        WorkflowExecutionInfo.validate!(input[:execution_info], context: "#{context}[:execution_info]") unless input[:execution_info].nil?
        WorkflowExecutionConfiguration.validate!(input[:execution_configuration], context: "#{context}[:execution_configuration]") unless input[:execution_configuration].nil?
        WorkflowExecutionOpenCounts.validate!(input[:open_counts], context: "#{context}[:open_counts]") unless input[:open_counts].nil?
        Hearth::Validator.validate!(input[:latest_activity_task_timestamp], ::Time, context: "#{context}[:latest_activity_task_timestamp]")
        Hearth::Validator.validate!(input[:latest_execution_context], ::String, context: "#{context}[:latest_execution_context]")
      end
    end

    class DescribeWorkflowTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkflowTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
      end
    end

    class DescribeWorkflowTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkflowTypeOutput, context: context)
        WorkflowTypeInfo.validate!(input[:type_info], context: "#{context}[:type_info]") unless input[:type_info].nil?
        WorkflowTypeConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class DomainAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DomainConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainConfiguration, context: context)
        Hearth::Validator.validate!(input[:workflow_execution_retention_period_in_days], ::String, context: "#{context}[:workflow_execution_retention_period_in_days]")
      end
    end

    class DomainDeprecatedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDeprecatedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DomainInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DomainInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExecutionTimeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionTimeFilter, context: context)
        Hearth::Validator.validate!(input[:oldest_date], ::Time, context: "#{context}[:oldest_date]")
        Hearth::Validator.validate!(input[:latest_date], ::Time, context: "#{context}[:latest_date]")
      end
    end

    class ExternalWorkflowExecutionCancelRequestedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExternalWorkflowExecutionCancelRequestedEventAttributes, context: context)
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
      end
    end

    class ExternalWorkflowExecutionSignaledEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExternalWorkflowExecutionSignaledEventAttributes, context: context)
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
      end
    end

    class FailWorkflowExecutionDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailWorkflowExecutionDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class FailWorkflowExecutionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailWorkflowExecutionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class GetWorkflowExecutionHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowExecutionHistoryInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        WorkflowExecution.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:maximum_page_size], ::Integer, context: "#{context}[:maximum_page_size]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
      end
    end

    class GetWorkflowExecutionHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowExecutionHistoryOutput, context: context)
        HistoryEventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class HistoryEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HistoryEvent, context: context)
        Hearth::Validator.validate!(input[:event_timestamp], ::Time, context: "#{context}[:event_timestamp]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:event_id], ::Integer, context: "#{context}[:event_id]")
        WorkflowExecutionStartedEventAttributes.validate!(input[:workflow_execution_started_event_attributes], context: "#{context}[:workflow_execution_started_event_attributes]") unless input[:workflow_execution_started_event_attributes].nil?
        WorkflowExecutionCompletedEventAttributes.validate!(input[:workflow_execution_completed_event_attributes], context: "#{context}[:workflow_execution_completed_event_attributes]") unless input[:workflow_execution_completed_event_attributes].nil?
        CompleteWorkflowExecutionFailedEventAttributes.validate!(input[:complete_workflow_execution_failed_event_attributes], context: "#{context}[:complete_workflow_execution_failed_event_attributes]") unless input[:complete_workflow_execution_failed_event_attributes].nil?
        WorkflowExecutionFailedEventAttributes.validate!(input[:workflow_execution_failed_event_attributes], context: "#{context}[:workflow_execution_failed_event_attributes]") unless input[:workflow_execution_failed_event_attributes].nil?
        FailWorkflowExecutionFailedEventAttributes.validate!(input[:fail_workflow_execution_failed_event_attributes], context: "#{context}[:fail_workflow_execution_failed_event_attributes]") unless input[:fail_workflow_execution_failed_event_attributes].nil?
        WorkflowExecutionTimedOutEventAttributes.validate!(input[:workflow_execution_timed_out_event_attributes], context: "#{context}[:workflow_execution_timed_out_event_attributes]") unless input[:workflow_execution_timed_out_event_attributes].nil?
        WorkflowExecutionCanceledEventAttributes.validate!(input[:workflow_execution_canceled_event_attributes], context: "#{context}[:workflow_execution_canceled_event_attributes]") unless input[:workflow_execution_canceled_event_attributes].nil?
        CancelWorkflowExecutionFailedEventAttributes.validate!(input[:cancel_workflow_execution_failed_event_attributes], context: "#{context}[:cancel_workflow_execution_failed_event_attributes]") unless input[:cancel_workflow_execution_failed_event_attributes].nil?
        WorkflowExecutionContinuedAsNewEventAttributes.validate!(input[:workflow_execution_continued_as_new_event_attributes], context: "#{context}[:workflow_execution_continued_as_new_event_attributes]") unless input[:workflow_execution_continued_as_new_event_attributes].nil?
        ContinueAsNewWorkflowExecutionFailedEventAttributes.validate!(input[:continue_as_new_workflow_execution_failed_event_attributes], context: "#{context}[:continue_as_new_workflow_execution_failed_event_attributes]") unless input[:continue_as_new_workflow_execution_failed_event_attributes].nil?
        WorkflowExecutionTerminatedEventAttributes.validate!(input[:workflow_execution_terminated_event_attributes], context: "#{context}[:workflow_execution_terminated_event_attributes]") unless input[:workflow_execution_terminated_event_attributes].nil?
        WorkflowExecutionCancelRequestedEventAttributes.validate!(input[:workflow_execution_cancel_requested_event_attributes], context: "#{context}[:workflow_execution_cancel_requested_event_attributes]") unless input[:workflow_execution_cancel_requested_event_attributes].nil?
        DecisionTaskScheduledEventAttributes.validate!(input[:decision_task_scheduled_event_attributes], context: "#{context}[:decision_task_scheduled_event_attributes]") unless input[:decision_task_scheduled_event_attributes].nil?
        DecisionTaskStartedEventAttributes.validate!(input[:decision_task_started_event_attributes], context: "#{context}[:decision_task_started_event_attributes]") unless input[:decision_task_started_event_attributes].nil?
        DecisionTaskCompletedEventAttributes.validate!(input[:decision_task_completed_event_attributes], context: "#{context}[:decision_task_completed_event_attributes]") unless input[:decision_task_completed_event_attributes].nil?
        DecisionTaskTimedOutEventAttributes.validate!(input[:decision_task_timed_out_event_attributes], context: "#{context}[:decision_task_timed_out_event_attributes]") unless input[:decision_task_timed_out_event_attributes].nil?
        ActivityTaskScheduledEventAttributes.validate!(input[:activity_task_scheduled_event_attributes], context: "#{context}[:activity_task_scheduled_event_attributes]") unless input[:activity_task_scheduled_event_attributes].nil?
        ActivityTaskStartedEventAttributes.validate!(input[:activity_task_started_event_attributes], context: "#{context}[:activity_task_started_event_attributes]") unless input[:activity_task_started_event_attributes].nil?
        ActivityTaskCompletedEventAttributes.validate!(input[:activity_task_completed_event_attributes], context: "#{context}[:activity_task_completed_event_attributes]") unless input[:activity_task_completed_event_attributes].nil?
        ActivityTaskFailedEventAttributes.validate!(input[:activity_task_failed_event_attributes], context: "#{context}[:activity_task_failed_event_attributes]") unless input[:activity_task_failed_event_attributes].nil?
        ActivityTaskTimedOutEventAttributes.validate!(input[:activity_task_timed_out_event_attributes], context: "#{context}[:activity_task_timed_out_event_attributes]") unless input[:activity_task_timed_out_event_attributes].nil?
        ActivityTaskCanceledEventAttributes.validate!(input[:activity_task_canceled_event_attributes], context: "#{context}[:activity_task_canceled_event_attributes]") unless input[:activity_task_canceled_event_attributes].nil?
        ActivityTaskCancelRequestedEventAttributes.validate!(input[:activity_task_cancel_requested_event_attributes], context: "#{context}[:activity_task_cancel_requested_event_attributes]") unless input[:activity_task_cancel_requested_event_attributes].nil?
        WorkflowExecutionSignaledEventAttributes.validate!(input[:workflow_execution_signaled_event_attributes], context: "#{context}[:workflow_execution_signaled_event_attributes]") unless input[:workflow_execution_signaled_event_attributes].nil?
        MarkerRecordedEventAttributes.validate!(input[:marker_recorded_event_attributes], context: "#{context}[:marker_recorded_event_attributes]") unless input[:marker_recorded_event_attributes].nil?
        RecordMarkerFailedEventAttributes.validate!(input[:record_marker_failed_event_attributes], context: "#{context}[:record_marker_failed_event_attributes]") unless input[:record_marker_failed_event_attributes].nil?
        TimerStartedEventAttributes.validate!(input[:timer_started_event_attributes], context: "#{context}[:timer_started_event_attributes]") unless input[:timer_started_event_attributes].nil?
        TimerFiredEventAttributes.validate!(input[:timer_fired_event_attributes], context: "#{context}[:timer_fired_event_attributes]") unless input[:timer_fired_event_attributes].nil?
        TimerCanceledEventAttributes.validate!(input[:timer_canceled_event_attributes], context: "#{context}[:timer_canceled_event_attributes]") unless input[:timer_canceled_event_attributes].nil?
        StartChildWorkflowExecutionInitiatedEventAttributes.validate!(input[:start_child_workflow_execution_initiated_event_attributes], context: "#{context}[:start_child_workflow_execution_initiated_event_attributes]") unless input[:start_child_workflow_execution_initiated_event_attributes].nil?
        ChildWorkflowExecutionStartedEventAttributes.validate!(input[:child_workflow_execution_started_event_attributes], context: "#{context}[:child_workflow_execution_started_event_attributes]") unless input[:child_workflow_execution_started_event_attributes].nil?
        ChildWorkflowExecutionCompletedEventAttributes.validate!(input[:child_workflow_execution_completed_event_attributes], context: "#{context}[:child_workflow_execution_completed_event_attributes]") unless input[:child_workflow_execution_completed_event_attributes].nil?
        ChildWorkflowExecutionFailedEventAttributes.validate!(input[:child_workflow_execution_failed_event_attributes], context: "#{context}[:child_workflow_execution_failed_event_attributes]") unless input[:child_workflow_execution_failed_event_attributes].nil?
        ChildWorkflowExecutionTimedOutEventAttributes.validate!(input[:child_workflow_execution_timed_out_event_attributes], context: "#{context}[:child_workflow_execution_timed_out_event_attributes]") unless input[:child_workflow_execution_timed_out_event_attributes].nil?
        ChildWorkflowExecutionCanceledEventAttributes.validate!(input[:child_workflow_execution_canceled_event_attributes], context: "#{context}[:child_workflow_execution_canceled_event_attributes]") unless input[:child_workflow_execution_canceled_event_attributes].nil?
        ChildWorkflowExecutionTerminatedEventAttributes.validate!(input[:child_workflow_execution_terminated_event_attributes], context: "#{context}[:child_workflow_execution_terminated_event_attributes]") unless input[:child_workflow_execution_terminated_event_attributes].nil?
        SignalExternalWorkflowExecutionInitiatedEventAttributes.validate!(input[:signal_external_workflow_execution_initiated_event_attributes], context: "#{context}[:signal_external_workflow_execution_initiated_event_attributes]") unless input[:signal_external_workflow_execution_initiated_event_attributes].nil?
        ExternalWorkflowExecutionSignaledEventAttributes.validate!(input[:external_workflow_execution_signaled_event_attributes], context: "#{context}[:external_workflow_execution_signaled_event_attributes]") unless input[:external_workflow_execution_signaled_event_attributes].nil?
        SignalExternalWorkflowExecutionFailedEventAttributes.validate!(input[:signal_external_workflow_execution_failed_event_attributes], context: "#{context}[:signal_external_workflow_execution_failed_event_attributes]") unless input[:signal_external_workflow_execution_failed_event_attributes].nil?
        ExternalWorkflowExecutionCancelRequestedEventAttributes.validate!(input[:external_workflow_execution_cancel_requested_event_attributes], context: "#{context}[:external_workflow_execution_cancel_requested_event_attributes]") unless input[:external_workflow_execution_cancel_requested_event_attributes].nil?
        RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.validate!(input[:request_cancel_external_workflow_execution_initiated_event_attributes], context: "#{context}[:request_cancel_external_workflow_execution_initiated_event_attributes]") unless input[:request_cancel_external_workflow_execution_initiated_event_attributes].nil?
        RequestCancelExternalWorkflowExecutionFailedEventAttributes.validate!(input[:request_cancel_external_workflow_execution_failed_event_attributes], context: "#{context}[:request_cancel_external_workflow_execution_failed_event_attributes]") unless input[:request_cancel_external_workflow_execution_failed_event_attributes].nil?
        ScheduleActivityTaskFailedEventAttributes.validate!(input[:schedule_activity_task_failed_event_attributes], context: "#{context}[:schedule_activity_task_failed_event_attributes]") unless input[:schedule_activity_task_failed_event_attributes].nil?
        RequestCancelActivityTaskFailedEventAttributes.validate!(input[:request_cancel_activity_task_failed_event_attributes], context: "#{context}[:request_cancel_activity_task_failed_event_attributes]") unless input[:request_cancel_activity_task_failed_event_attributes].nil?
        StartTimerFailedEventAttributes.validate!(input[:start_timer_failed_event_attributes], context: "#{context}[:start_timer_failed_event_attributes]") unless input[:start_timer_failed_event_attributes].nil?
        CancelTimerFailedEventAttributes.validate!(input[:cancel_timer_failed_event_attributes], context: "#{context}[:cancel_timer_failed_event_attributes]") unless input[:cancel_timer_failed_event_attributes].nil?
        StartChildWorkflowExecutionFailedEventAttributes.validate!(input[:start_child_workflow_execution_failed_event_attributes], context: "#{context}[:start_child_workflow_execution_failed_event_attributes]") unless input[:start_child_workflow_execution_failed_event_attributes].nil?
        LambdaFunctionScheduledEventAttributes.validate!(input[:lambda_function_scheduled_event_attributes], context: "#{context}[:lambda_function_scheduled_event_attributes]") unless input[:lambda_function_scheduled_event_attributes].nil?
        LambdaFunctionStartedEventAttributes.validate!(input[:lambda_function_started_event_attributes], context: "#{context}[:lambda_function_started_event_attributes]") unless input[:lambda_function_started_event_attributes].nil?
        LambdaFunctionCompletedEventAttributes.validate!(input[:lambda_function_completed_event_attributes], context: "#{context}[:lambda_function_completed_event_attributes]") unless input[:lambda_function_completed_event_attributes].nil?
        LambdaFunctionFailedEventAttributes.validate!(input[:lambda_function_failed_event_attributes], context: "#{context}[:lambda_function_failed_event_attributes]") unless input[:lambda_function_failed_event_attributes].nil?
        LambdaFunctionTimedOutEventAttributes.validate!(input[:lambda_function_timed_out_event_attributes], context: "#{context}[:lambda_function_timed_out_event_attributes]") unless input[:lambda_function_timed_out_event_attributes].nil?
        ScheduleLambdaFunctionFailedEventAttributes.validate!(input[:schedule_lambda_function_failed_event_attributes], context: "#{context}[:schedule_lambda_function_failed_event_attributes]") unless input[:schedule_lambda_function_failed_event_attributes].nil?
        StartLambdaFunctionFailedEventAttributes.validate!(input[:start_lambda_function_failed_event_attributes], context: "#{context}[:start_lambda_function_failed_event_attributes]") unless input[:start_lambda_function_failed_event_attributes].nil?
      end
    end

    class HistoryEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HistoryEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaFunctionCompletedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionCompletedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
      end
    end

    class LambdaFunctionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class LambdaFunctionScheduledEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionScheduledEventAttributes, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:start_to_close_timeout], ::String, context: "#{context}[:start_to_close_timeout]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class LambdaFunctionStartedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionStartedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
      end
    end

    class LambdaFunctionTimedOutEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionTimedOutEventAttributes, context: context)
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
        Hearth::Validator.validate!(input[:timeout_type], ::String, context: "#{context}[:timeout_type]")
      end
    end

    class LimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListActivityTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActivityTypesInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:registration_status], ::String, context: "#{context}[:registration_status]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:maximum_page_size], ::Integer, context: "#{context}[:maximum_page_size]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
      end
    end

    class ListActivityTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActivityTypesOutput, context: context)
        ActivityTypeInfoList.validate!(input[:type_infos], context: "#{context}[:type_infos]") unless input[:type_infos].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListClosedWorkflowExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClosedWorkflowExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        ExecutionTimeFilter.validate!(input[:start_time_filter], context: "#{context}[:start_time_filter]") unless input[:start_time_filter].nil?
        ExecutionTimeFilter.validate!(input[:close_time_filter], context: "#{context}[:close_time_filter]") unless input[:close_time_filter].nil?
        WorkflowExecutionFilter.validate!(input[:execution_filter], context: "#{context}[:execution_filter]") unless input[:execution_filter].nil?
        CloseStatusFilter.validate!(input[:close_status_filter], context: "#{context}[:close_status_filter]") unless input[:close_status_filter].nil?
        WorkflowTypeFilter.validate!(input[:type_filter], context: "#{context}[:type_filter]") unless input[:type_filter].nil?
        TagFilter.validate!(input[:tag_filter], context: "#{context}[:tag_filter]") unless input[:tag_filter].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:maximum_page_size], ::Integer, context: "#{context}[:maximum_page_size]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
      end
    end

    class ListClosedWorkflowExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClosedWorkflowExecutionsOutput, context: context)
        WorkflowExecutionInfoList.validate!(input[:execution_infos], context: "#{context}[:execution_infos]") unless input[:execution_infos].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsInput, context: context)
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:registration_status], ::String, context: "#{context}[:registration_status]")
        Hearth::Validator.validate!(input[:maximum_page_size], ::Integer, context: "#{context}[:maximum_page_size]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
      end
    end

    class ListDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsOutput, context: context)
        DomainInfoList.validate!(input[:domain_infos], context: "#{context}[:domain_infos]") unless input[:domain_infos].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListOpenWorkflowExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpenWorkflowExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        ExecutionTimeFilter.validate!(input[:start_time_filter], context: "#{context}[:start_time_filter]") unless input[:start_time_filter].nil?
        WorkflowTypeFilter.validate!(input[:type_filter], context: "#{context}[:type_filter]") unless input[:type_filter].nil?
        TagFilter.validate!(input[:tag_filter], context: "#{context}[:tag_filter]") unless input[:tag_filter].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:maximum_page_size], ::Integer, context: "#{context}[:maximum_page_size]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
        WorkflowExecutionFilter.validate!(input[:execution_filter], context: "#{context}[:execution_filter]") unless input[:execution_filter].nil?
      end
    end

    class ListOpenWorkflowExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpenWorkflowExecutionsOutput, context: context)
        WorkflowExecutionInfoList.validate!(input[:execution_infos], context: "#{context}[:execution_infos]") unless input[:execution_infos].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
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
        ResourceTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWorkflowTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkflowTypesInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:registration_status], ::String, context: "#{context}[:registration_status]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:maximum_page_size], ::Integer, context: "#{context}[:maximum_page_size]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
      end
    end

    class ListWorkflowTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkflowTypesOutput, context: context)
        WorkflowTypeInfoList.validate!(input[:type_infos], context: "#{context}[:type_infos]") unless input[:type_infos].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class MarkerRecordedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarkerRecordedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:marker_name], ::String, context: "#{context}[:marker_name]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class OperationNotPermittedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotPermittedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PollForActivityTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForActivityTaskInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
      end
    end

    class PollForActivityTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForActivityTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        Hearth::Validator.validate!(input[:activity_id], ::String, context: "#{context}[:activity_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        ActivityType.validate!(input[:activity_type], context: "#{context}[:activity_type]") unless input[:activity_type].nil?
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
      end
    end

    class PollForDecisionTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForDecisionTaskInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:maximum_page_size], ::Integer, context: "#{context}[:maximum_page_size]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
      end
    end

    class PollForDecisionTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForDecisionTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
        WorkflowExecution.validate!(input[:workflow_execution], context: "#{context}[:workflow_execution]") unless input[:workflow_execution].nil?
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        HistoryEventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:previous_started_event_id], ::Integer, context: "#{context}[:previous_started_event_id]")
      end
    end

    class RecordActivityTaskHeartbeatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordActivityTaskHeartbeatInput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class RecordActivityTaskHeartbeatOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordActivityTaskHeartbeatOutput, context: context)
        Hearth::Validator.validate!(input[:cancel_requested], ::TrueClass, ::FalseClass, context: "#{context}[:cancel_requested]")
      end
    end

    class RecordMarkerDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordMarkerDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:marker_name], ::String, context: "#{context}[:marker_name]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class RecordMarkerFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordMarkerFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:marker_name], ::String, context: "#{context}[:marker_name]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class RegisterActivityTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterActivityTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_task_start_to_close_timeout], ::String, context: "#{context}[:default_task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:default_task_heartbeat_timeout], ::String, context: "#{context}[:default_task_heartbeat_timeout]")
        TaskList.validate!(input[:default_task_list], context: "#{context}[:default_task_list]") unless input[:default_task_list].nil?
        Hearth::Validator.validate!(input[:default_task_priority], ::String, context: "#{context}[:default_task_priority]")
        Hearth::Validator.validate!(input[:default_task_schedule_to_start_timeout], ::String, context: "#{context}[:default_task_schedule_to_start_timeout]")
        Hearth::Validator.validate!(input[:default_task_schedule_to_close_timeout], ::String, context: "#{context}[:default_task_schedule_to_close_timeout]")
      end
    end

    class RegisterActivityTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterActivityTypeOutput, context: context)
      end
    end

    class RegisterDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDomainInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:workflow_execution_retention_period_in_days], ::String, context: "#{context}[:workflow_execution_retention_period_in_days]")
        ResourceTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RegisterDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDomainOutput, context: context)
      end
    end

    class RegisterWorkflowTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterWorkflowTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_task_start_to_close_timeout], ::String, context: "#{context}[:default_task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:default_execution_start_to_close_timeout], ::String, context: "#{context}[:default_execution_start_to_close_timeout]")
        TaskList.validate!(input[:default_task_list], context: "#{context}[:default_task_list]") unless input[:default_task_list].nil?
        Hearth::Validator.validate!(input[:default_task_priority], ::String, context: "#{context}[:default_task_priority]")
        Hearth::Validator.validate!(input[:default_child_policy], ::String, context: "#{context}[:default_child_policy]")
        Hearth::Validator.validate!(input[:default_lambda_role], ::String, context: "#{context}[:default_lambda_role]")
      end
    end

    class RegisterWorkflowTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterWorkflowTypeOutput, context: context)
      end
    end

    class RequestCancelActivityTaskDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestCancelActivityTaskDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:activity_id], ::String, context: "#{context}[:activity_id]")
      end
    end

    class RequestCancelActivityTaskFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestCancelActivityTaskFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:activity_id], ::String, context: "#{context}[:activity_id]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class RequestCancelExternalWorkflowExecutionDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestCancelExternalWorkflowExecutionDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
      end
    end

    class RequestCancelExternalWorkflowExecutionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
      end
    end

    class RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
      end
    end

    class RequestCancelWorkflowExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestCancelWorkflowExecutionInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class RequestCancelWorkflowExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestCancelWorkflowExecutionOutput, context: context)
      end
    end

    class ResourceTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ResourceTagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RespondActivityTaskCanceledInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondActivityTaskCanceledInput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class RespondActivityTaskCanceledOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondActivityTaskCanceledOutput, context: context)
      end
    end

    class RespondActivityTaskCompletedInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondActivityTaskCompletedInput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
      end
    end

    class RespondActivityTaskCompletedOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondActivityTaskCompletedOutput, context: context)
      end
    end

    class RespondActivityTaskFailedInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondActivityTaskFailedInput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class RespondActivityTaskFailedOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondActivityTaskFailedOutput, context: context)
      end
    end

    class RespondDecisionTaskCompletedInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondDecisionTaskCompletedInput, context: context)
        Hearth::Validator.validate!(input[:task_token], ::String, context: "#{context}[:task_token]")
        DecisionList.validate!(input[:decisions], context: "#{context}[:decisions]") unless input[:decisions].nil?
        Hearth::Validator.validate!(input[:execution_context], ::String, context: "#{context}[:execution_context]")
      end
    end

    class RespondDecisionTaskCompletedOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondDecisionTaskCompletedOutput, context: context)
      end
    end

    class ScheduleActivityTaskDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleActivityTaskDecisionAttributes, context: context)
        ActivityType.validate!(input[:activity_type], context: "#{context}[:activity_type]") unless input[:activity_type].nil?
        Hearth::Validator.validate!(input[:activity_id], ::String, context: "#{context}[:activity_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:schedule_to_close_timeout], ::String, context: "#{context}[:schedule_to_close_timeout]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        Hearth::Validator.validate!(input[:schedule_to_start_timeout], ::String, context: "#{context}[:schedule_to_start_timeout]")
        Hearth::Validator.validate!(input[:start_to_close_timeout], ::String, context: "#{context}[:start_to_close_timeout]")
        Hearth::Validator.validate!(input[:heartbeat_timeout], ::String, context: "#{context}[:heartbeat_timeout]")
      end
    end

    class ScheduleActivityTaskFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleActivityTaskFailedEventAttributes, context: context)
        ActivityType.validate!(input[:activity_type], context: "#{context}[:activity_type]") unless input[:activity_type].nil?
        Hearth::Validator.validate!(input[:activity_id], ::String, context: "#{context}[:activity_id]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class ScheduleLambdaFunctionDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleLambdaFunctionDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:start_to_close_timeout], ::String, context: "#{context}[:start_to_close_timeout]")
      end
    end

    class ScheduleLambdaFunctionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleLambdaFunctionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class SignalExternalWorkflowExecutionDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignalExternalWorkflowExecutionDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:signal_name], ::String, context: "#{context}[:signal_name]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
      end
    end

    class SignalExternalWorkflowExecutionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignalExternalWorkflowExecutionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
      end
    end

    class SignalExternalWorkflowExecutionInitiatedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignalExternalWorkflowExecutionInitiatedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:signal_name], ::String, context: "#{context}[:signal_name]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
      end
    end

    class SignalWorkflowExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignalWorkflowExecutionInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:signal_name], ::String, context: "#{context}[:signal_name]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
      end
    end

    class SignalWorkflowExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignalWorkflowExecutionOutput, context: context)
      end
    end

    class StartChildWorkflowExecutionDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChildWorkflowExecutionDecisionAttributes, context: context)
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:execution_start_to_close_timeout], ::String, context: "#{context}[:execution_start_to_close_timeout]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        Hearth::Validator.validate!(input[:task_start_to_close_timeout], ::String, context: "#{context}[:task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:lambda_role], ::String, context: "#{context}[:lambda_role]")
      end
    end

    class StartChildWorkflowExecutionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChildWorkflowExecutionFailedEventAttributes, context: context)
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:initiated_event_id], ::Integer, context: "#{context}[:initiated_event_id]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
      end
    end

    class StartChildWorkflowExecutionInitiatedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChildWorkflowExecutionInitiatedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:execution_start_to_close_timeout], ::String, context: "#{context}[:execution_start_to_close_timeout]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
        Hearth::Validator.validate!(input[:task_start_to_close_timeout], ::String, context: "#{context}[:task_start_to_close_timeout]")
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:lambda_role], ::String, context: "#{context}[:lambda_role]")
      end
    end

    class StartLambdaFunctionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartLambdaFunctionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:scheduled_event_id], ::Integer, context: "#{context}[:scheduled_event_id]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartTimerDecisionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTimerDecisionAttributes, context: context)
        Hearth::Validator.validate!(input[:timer_id], ::String, context: "#{context}[:timer_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
        Hearth::Validator.validate!(input[:start_to_fire_timeout], ::String, context: "#{context}[:start_to_fire_timeout]")
      end
    end

    class StartTimerFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTimerFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:timer_id], ::String, context: "#{context}[:timer_id]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class StartWorkflowExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartWorkflowExecutionInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:execution_start_to_close_timeout], ::String, context: "#{context}[:execution_start_to_close_timeout]")
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:task_start_to_close_timeout], ::String, context: "#{context}[:task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
        Hearth::Validator.validate!(input[:lambda_role], ::String, context: "#{context}[:lambda_role]")
      end
    end

    class StartWorkflowExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartWorkflowExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class TagFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagFilter, context: context)
        Hearth::Validator.validate!(input[:tag], ::String, context: "#{context}[:tag]")
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        ResourceTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TaskList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskList, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class TerminateWorkflowExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateWorkflowExecutionInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
      end
    end

    class TerminateWorkflowExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateWorkflowExecutionOutput, context: context)
      end
    end

    class TimerCanceledEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimerCanceledEventAttributes, context: context)
        Hearth::Validator.validate!(input[:timer_id], ::String, context: "#{context}[:timer_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class TimerFiredEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimerFiredEventAttributes, context: context)
        Hearth::Validator.validate!(input[:timer_id], ::String, context: "#{context}[:timer_id]")
        Hearth::Validator.validate!(input[:started_event_id], ::Integer, context: "#{context}[:started_event_id]")
      end
    end

    class TimerStartedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimerStartedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:timer_id], ::String, context: "#{context}[:timer_id]")
        Hearth::Validator.validate!(input[:control], ::String, context: "#{context}[:control]")
        Hearth::Validator.validate!(input[:start_to_fire_timeout], ::String, context: "#{context}[:start_to_fire_timeout]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class TooManyTagsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TypeAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TypeDeprecatedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeDeprecatedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UndeprecateActivityTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UndeprecateActivityTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        ActivityType.validate!(input[:activity_type], context: "#{context}[:activity_type]") unless input[:activity_type].nil?
      end
    end

    class UndeprecateActivityTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UndeprecateActivityTypeOutput, context: context)
      end
    end

    class UndeprecateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UndeprecateDomainInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UndeprecateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UndeprecateDomainOutput, context: context)
      end
    end

    class UndeprecateWorkflowTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UndeprecateWorkflowTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
      end
    end

    class UndeprecateWorkflowTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UndeprecateWorkflowTypeOutput, context: context)
      end
    end

    class UnknownResourceFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnknownResourceFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        ResourceTagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class WorkflowExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecution, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class WorkflowExecutionAlreadyStartedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionAlreadyStartedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WorkflowExecutionCancelRequestedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionCancelRequestedEventAttributes, context: context)
        WorkflowExecution.validate!(input[:external_workflow_execution], context: "#{context}[:external_workflow_execution]") unless input[:external_workflow_execution].nil?
        Hearth::Validator.validate!(input[:external_initiated_event_id], ::Integer, context: "#{context}[:external_initiated_event_id]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class WorkflowExecutionCanceledEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionCanceledEventAttributes, context: context)
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class WorkflowExecutionCompletedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionCompletedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class WorkflowExecutionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionConfiguration, context: context)
        Hearth::Validator.validate!(input[:task_start_to_close_timeout], ::String, context: "#{context}[:task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:execution_start_to_close_timeout], ::String, context: "#{context}[:execution_start_to_close_timeout]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
        Hearth::Validator.validate!(input[:lambda_role], ::String, context: "#{context}[:lambda_role]")
      end
    end

    class WorkflowExecutionContinuedAsNewEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionContinuedAsNewEventAttributes, context: context)
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
        Hearth::Validator.validate!(input[:new_execution_run_id], ::String, context: "#{context}[:new_execution_run_id]")
        Hearth::Validator.validate!(input[:execution_start_to_close_timeout], ::String, context: "#{context}[:execution_start_to_close_timeout]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        Hearth::Validator.validate!(input[:task_start_to_close_timeout], ::String, context: "#{context}[:task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:lambda_role], ::String, context: "#{context}[:lambda_role]")
      end
    end

    class WorkflowExecutionFailedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionFailedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:decision_task_completed_event_id], ::Integer, context: "#{context}[:decision_task_completed_event_id]")
      end
    end

    class WorkflowExecutionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionFilter, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class WorkflowExecutionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionInfo, context: context)
        WorkflowExecution.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:close_timestamp], ::Time, context: "#{context}[:close_timestamp]")
        Hearth::Validator.validate!(input[:execution_status], ::String, context: "#{context}[:execution_status]")
        Hearth::Validator.validate!(input[:close_status], ::String, context: "#{context}[:close_status]")
        WorkflowExecution.validate!(input[:parent], context: "#{context}[:parent]") unless input[:parent].nil?
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:cancel_requested], ::TrueClass, ::FalseClass, context: "#{context}[:cancel_requested]")
      end
    end

    class WorkflowExecutionInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowExecutionInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkflowExecutionOpenCounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionOpenCounts, context: context)
        Hearth::Validator.validate!(input[:open_activity_tasks], ::Integer, context: "#{context}[:open_activity_tasks]")
        Hearth::Validator.validate!(input[:open_decision_tasks], ::Integer, context: "#{context}[:open_decision_tasks]")
        Hearth::Validator.validate!(input[:open_timers], ::Integer, context: "#{context}[:open_timers]")
        Hearth::Validator.validate!(input[:open_child_workflow_executions], ::Integer, context: "#{context}[:open_child_workflow_executions]")
        Hearth::Validator.validate!(input[:open_lambda_functions], ::Integer, context: "#{context}[:open_lambda_functions]")
      end
    end

    class WorkflowExecutionSignaledEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionSignaledEventAttributes, context: context)
        Hearth::Validator.validate!(input[:signal_name], ::String, context: "#{context}[:signal_name]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        WorkflowExecution.validate!(input[:external_workflow_execution], context: "#{context}[:external_workflow_execution]") unless input[:external_workflow_execution].nil?
        Hearth::Validator.validate!(input[:external_initiated_event_id], ::Integer, context: "#{context}[:external_initiated_event_id]")
      end
    end

    class WorkflowExecutionStartedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionStartedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:execution_start_to_close_timeout], ::String, context: "#{context}[:execution_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:task_start_to_close_timeout], ::String, context: "#{context}[:task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
        TaskList.validate!(input[:task_list], context: "#{context}[:task_list]") unless input[:task_list].nil?
        Hearth::Validator.validate!(input[:task_priority], ::String, context: "#{context}[:task_priority]")
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:continued_execution_run_id], ::String, context: "#{context}[:continued_execution_run_id]")
        WorkflowExecution.validate!(input[:parent_workflow_execution], context: "#{context}[:parent_workflow_execution]") unless input[:parent_workflow_execution].nil?
        Hearth::Validator.validate!(input[:parent_initiated_event_id], ::Integer, context: "#{context}[:parent_initiated_event_id]")
        Hearth::Validator.validate!(input[:lambda_role], ::String, context: "#{context}[:lambda_role]")
      end
    end

    class WorkflowExecutionTerminatedEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionTerminatedEventAttributes, context: context)
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
      end
    end

    class WorkflowExecutionTimedOutEventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowExecutionTimedOutEventAttributes, context: context)
        Hearth::Validator.validate!(input[:timeout_type], ::String, context: "#{context}[:timeout_type]")
        Hearth::Validator.validate!(input[:child_policy], ::String, context: "#{context}[:child_policy]")
      end
    end

    class WorkflowType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowType, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class WorkflowTypeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowTypeConfiguration, context: context)
        Hearth::Validator.validate!(input[:default_task_start_to_close_timeout], ::String, context: "#{context}[:default_task_start_to_close_timeout]")
        Hearth::Validator.validate!(input[:default_execution_start_to_close_timeout], ::String, context: "#{context}[:default_execution_start_to_close_timeout]")
        TaskList.validate!(input[:default_task_list], context: "#{context}[:default_task_list]") unless input[:default_task_list].nil?
        Hearth::Validator.validate!(input[:default_task_priority], ::String, context: "#{context}[:default_task_priority]")
        Hearth::Validator.validate!(input[:default_child_policy], ::String, context: "#{context}[:default_child_policy]")
        Hearth::Validator.validate!(input[:default_lambda_role], ::String, context: "#{context}[:default_lambda_role]")
      end
    end

    class WorkflowTypeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowTypeFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class WorkflowTypeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowTypeInfo, context: context)
        WorkflowType.validate!(input[:workflow_type], context: "#{context}[:workflow_type]") unless input[:workflow_type].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:deprecation_date], ::Time, context: "#{context}[:deprecation_date]")
      end
    end

    class WorkflowTypeInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowTypeInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
