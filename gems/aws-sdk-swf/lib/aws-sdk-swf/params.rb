# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SWF
  module Params

    module ActivityTaskCancelRequestedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTaskCancelRequestedEventAttributes, context: context)
        type = Types::ActivityTaskCancelRequestedEventAttributes.new
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type.activity_id = params[:activity_id]
        type
      end
    end

    module ActivityTaskCanceledEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTaskCanceledEventAttributes, context: context)
        type = Types::ActivityTaskCanceledEventAttributes.new
        type.details = params[:details]
        type.scheduled_event_id = params[:scheduled_event_id]
        type.started_event_id = params[:started_event_id]
        type.latest_cancel_requested_event_id = params[:latest_cancel_requested_event_id]
        type
      end
    end

    module ActivityTaskCompletedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTaskCompletedEventAttributes, context: context)
        type = Types::ActivityTaskCompletedEventAttributes.new
        type.result = params[:result]
        type.scheduled_event_id = params[:scheduled_event_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module ActivityTaskFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTaskFailedEventAttributes, context: context)
        type = Types::ActivityTaskFailedEventAttributes.new
        type.reason = params[:reason]
        type.details = params[:details]
        type.scheduled_event_id = params[:scheduled_event_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module ActivityTaskScheduledEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTaskScheduledEventAttributes, context: context)
        type = Types::ActivityTaskScheduledEventAttributes.new
        type.activity_type = ActivityType.build(params[:activity_type], context: "#{context}[:activity_type]") unless params[:activity_type].nil?
        type.activity_id = params[:activity_id]
        type.input = params[:input]
        type.control = params[:control]
        type.schedule_to_start_timeout = params[:schedule_to_start_timeout]
        type.schedule_to_close_timeout = params[:schedule_to_close_timeout]
        type.start_to_close_timeout = params[:start_to_close_timeout]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type.heartbeat_timeout = params[:heartbeat_timeout]
        type
      end
    end

    module ActivityTaskStartedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTaskStartedEventAttributes, context: context)
        type = Types::ActivityTaskStartedEventAttributes.new
        type.identity = params[:identity]
        type.scheduled_event_id = params[:scheduled_event_id]
        type
      end
    end

    module ActivityTaskTimedOutEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTaskTimedOutEventAttributes, context: context)
        type = Types::ActivityTaskTimedOutEventAttributes.new
        type.timeout_type = params[:timeout_type]
        type.scheduled_event_id = params[:scheduled_event_id]
        type.started_event_id = params[:started_event_id]
        type.details = params[:details]
        type
      end
    end

    module ActivityType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityType, context: context)
        type = Types::ActivityType.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module ActivityTypeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTypeConfiguration, context: context)
        type = Types::ActivityTypeConfiguration.new
        type.default_task_start_to_close_timeout = params[:default_task_start_to_close_timeout]
        type.default_task_heartbeat_timeout = params[:default_task_heartbeat_timeout]
        type.default_task_list = TaskList.build(params[:default_task_list], context: "#{context}[:default_task_list]") unless params[:default_task_list].nil?
        type.default_task_priority = params[:default_task_priority]
        type.default_task_schedule_to_start_timeout = params[:default_task_schedule_to_start_timeout]
        type.default_task_schedule_to_close_timeout = params[:default_task_schedule_to_close_timeout]
        type
      end
    end

    module ActivityTypeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityTypeInfo, context: context)
        type = Types::ActivityTypeInfo.new
        type.activity_type = ActivityType.build(params[:activity_type], context: "#{context}[:activity_type]") unless params[:activity_type].nil?
        type.status = params[:status]
        type.description = params[:description]
        type.creation_date = params[:creation_date]
        type.deprecation_date = params[:deprecation_date]
        type
      end
    end

    module ActivityTypeInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActivityTypeInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelTimerDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelTimerDecisionAttributes, context: context)
        type = Types::CancelTimerDecisionAttributes.new
        type.timer_id = params[:timer_id]
        type
      end
    end

    module CancelTimerFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelTimerFailedEventAttributes, context: context)
        type = Types::CancelTimerFailedEventAttributes.new
        type.timer_id = params[:timer_id]
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module CancelWorkflowExecutionDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelWorkflowExecutionDecisionAttributes, context: context)
        type = Types::CancelWorkflowExecutionDecisionAttributes.new
        type.details = params[:details]
        type
      end
    end

    module CancelWorkflowExecutionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelWorkflowExecutionFailedEventAttributes, context: context)
        type = Types::CancelWorkflowExecutionFailedEventAttributes.new
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module ChildWorkflowExecutionCanceledEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChildWorkflowExecutionCanceledEventAttributes, context: context)
        type = Types::ChildWorkflowExecutionCanceledEventAttributes.new
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.details = params[:details]
        type.initiated_event_id = params[:initiated_event_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module ChildWorkflowExecutionCompletedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChildWorkflowExecutionCompletedEventAttributes, context: context)
        type = Types::ChildWorkflowExecutionCompletedEventAttributes.new
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.result = params[:result]
        type.initiated_event_id = params[:initiated_event_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module ChildWorkflowExecutionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChildWorkflowExecutionFailedEventAttributes, context: context)
        type = Types::ChildWorkflowExecutionFailedEventAttributes.new
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.reason = params[:reason]
        type.details = params[:details]
        type.initiated_event_id = params[:initiated_event_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module ChildWorkflowExecutionStartedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChildWorkflowExecutionStartedEventAttributes, context: context)
        type = Types::ChildWorkflowExecutionStartedEventAttributes.new
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.initiated_event_id = params[:initiated_event_id]
        type
      end
    end

    module ChildWorkflowExecutionTerminatedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChildWorkflowExecutionTerminatedEventAttributes, context: context)
        type = Types::ChildWorkflowExecutionTerminatedEventAttributes.new
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.initiated_event_id = params[:initiated_event_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module ChildWorkflowExecutionTimedOutEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChildWorkflowExecutionTimedOutEventAttributes, context: context)
        type = Types::ChildWorkflowExecutionTimedOutEventAttributes.new
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.timeout_type = params[:timeout_type]
        type.initiated_event_id = params[:initiated_event_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module CloseStatusFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloseStatusFilter, context: context)
        type = Types::CloseStatusFilter.new
        type.status = params[:status]
        type
      end
    end

    module CompleteWorkflowExecutionDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteWorkflowExecutionDecisionAttributes, context: context)
        type = Types::CompleteWorkflowExecutionDecisionAttributes.new
        type.result = params[:result]
        type
      end
    end

    module CompleteWorkflowExecutionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteWorkflowExecutionFailedEventAttributes, context: context)
        type = Types::CompleteWorkflowExecutionFailedEventAttributes.new
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module ContinueAsNewWorkflowExecutionDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinueAsNewWorkflowExecutionDecisionAttributes, context: context)
        type = Types::ContinueAsNewWorkflowExecutionDecisionAttributes.new
        type.input = params[:input]
        type.execution_start_to_close_timeout = params[:execution_start_to_close_timeout]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.task_start_to_close_timeout = params[:task_start_to_close_timeout]
        type.child_policy = params[:child_policy]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.workflow_type_version = params[:workflow_type_version]
        type.lambda_role = params[:lambda_role]
        type
      end
    end

    module ContinueAsNewWorkflowExecutionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinueAsNewWorkflowExecutionFailedEventAttributes, context: context)
        type = Types::ContinueAsNewWorkflowExecutionFailedEventAttributes.new
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module CountClosedWorkflowExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountClosedWorkflowExecutionsInput, context: context)
        type = Types::CountClosedWorkflowExecutionsInput.new
        type.domain = params[:domain]
        type.start_time_filter = ExecutionTimeFilter.build(params[:start_time_filter], context: "#{context}[:start_time_filter]") unless params[:start_time_filter].nil?
        type.close_time_filter = ExecutionTimeFilter.build(params[:close_time_filter], context: "#{context}[:close_time_filter]") unless params[:close_time_filter].nil?
        type.execution_filter = WorkflowExecutionFilter.build(params[:execution_filter], context: "#{context}[:execution_filter]") unless params[:execution_filter].nil?
        type.type_filter = WorkflowTypeFilter.build(params[:type_filter], context: "#{context}[:type_filter]") unless params[:type_filter].nil?
        type.tag_filter = TagFilter.build(params[:tag_filter], context: "#{context}[:tag_filter]") unless params[:tag_filter].nil?
        type.close_status_filter = CloseStatusFilter.build(params[:close_status_filter], context: "#{context}[:close_status_filter]") unless params[:close_status_filter].nil?
        type
      end
    end

    module CountClosedWorkflowExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountClosedWorkflowExecutionsOutput, context: context)
        type = Types::CountClosedWorkflowExecutionsOutput.new
        type.count = params[:count]
        type.truncated = params[:truncated]
        type
      end
    end

    module CountOpenWorkflowExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountOpenWorkflowExecutionsInput, context: context)
        type = Types::CountOpenWorkflowExecutionsInput.new
        type.domain = params[:domain]
        type.start_time_filter = ExecutionTimeFilter.build(params[:start_time_filter], context: "#{context}[:start_time_filter]") unless params[:start_time_filter].nil?
        type.type_filter = WorkflowTypeFilter.build(params[:type_filter], context: "#{context}[:type_filter]") unless params[:type_filter].nil?
        type.tag_filter = TagFilter.build(params[:tag_filter], context: "#{context}[:tag_filter]") unless params[:tag_filter].nil?
        type.execution_filter = WorkflowExecutionFilter.build(params[:execution_filter], context: "#{context}[:execution_filter]") unless params[:execution_filter].nil?
        type
      end
    end

    module CountOpenWorkflowExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountOpenWorkflowExecutionsOutput, context: context)
        type = Types::CountOpenWorkflowExecutionsOutput.new
        type.count = params[:count]
        type.truncated = params[:truncated]
        type
      end
    end

    module CountPendingActivityTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountPendingActivityTasksInput, context: context)
        type = Types::CountPendingActivityTasksInput.new
        type.domain = params[:domain]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type
      end
    end

    module CountPendingActivityTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountPendingActivityTasksOutput, context: context)
        type = Types::CountPendingActivityTasksOutput.new
        type.count = params[:count]
        type.truncated = params[:truncated]
        type
      end
    end

    module CountPendingDecisionTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountPendingDecisionTasksInput, context: context)
        type = Types::CountPendingDecisionTasksInput.new
        type.domain = params[:domain]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type
      end
    end

    module CountPendingDecisionTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountPendingDecisionTasksOutput, context: context)
        type = Types::CountPendingDecisionTasksOutput.new
        type.count = params[:count]
        type.truncated = params[:truncated]
        type
      end
    end

    module Decision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Decision, context: context)
        type = Types::Decision.new
        type.decision_type = params[:decision_type]
        type.schedule_activity_task_decision_attributes = ScheduleActivityTaskDecisionAttributes.build(params[:schedule_activity_task_decision_attributes], context: "#{context}[:schedule_activity_task_decision_attributes]") unless params[:schedule_activity_task_decision_attributes].nil?
        type.request_cancel_activity_task_decision_attributes = RequestCancelActivityTaskDecisionAttributes.build(params[:request_cancel_activity_task_decision_attributes], context: "#{context}[:request_cancel_activity_task_decision_attributes]") unless params[:request_cancel_activity_task_decision_attributes].nil?
        type.complete_workflow_execution_decision_attributes = CompleteWorkflowExecutionDecisionAttributes.build(params[:complete_workflow_execution_decision_attributes], context: "#{context}[:complete_workflow_execution_decision_attributes]") unless params[:complete_workflow_execution_decision_attributes].nil?
        type.fail_workflow_execution_decision_attributes = FailWorkflowExecutionDecisionAttributes.build(params[:fail_workflow_execution_decision_attributes], context: "#{context}[:fail_workflow_execution_decision_attributes]") unless params[:fail_workflow_execution_decision_attributes].nil?
        type.cancel_workflow_execution_decision_attributes = CancelWorkflowExecutionDecisionAttributes.build(params[:cancel_workflow_execution_decision_attributes], context: "#{context}[:cancel_workflow_execution_decision_attributes]") unless params[:cancel_workflow_execution_decision_attributes].nil?
        type.continue_as_new_workflow_execution_decision_attributes = ContinueAsNewWorkflowExecutionDecisionAttributes.build(params[:continue_as_new_workflow_execution_decision_attributes], context: "#{context}[:continue_as_new_workflow_execution_decision_attributes]") unless params[:continue_as_new_workflow_execution_decision_attributes].nil?
        type.record_marker_decision_attributes = RecordMarkerDecisionAttributes.build(params[:record_marker_decision_attributes], context: "#{context}[:record_marker_decision_attributes]") unless params[:record_marker_decision_attributes].nil?
        type.start_timer_decision_attributes = StartTimerDecisionAttributes.build(params[:start_timer_decision_attributes], context: "#{context}[:start_timer_decision_attributes]") unless params[:start_timer_decision_attributes].nil?
        type.cancel_timer_decision_attributes = CancelTimerDecisionAttributes.build(params[:cancel_timer_decision_attributes], context: "#{context}[:cancel_timer_decision_attributes]") unless params[:cancel_timer_decision_attributes].nil?
        type.signal_external_workflow_execution_decision_attributes = SignalExternalWorkflowExecutionDecisionAttributes.build(params[:signal_external_workflow_execution_decision_attributes], context: "#{context}[:signal_external_workflow_execution_decision_attributes]") unless params[:signal_external_workflow_execution_decision_attributes].nil?
        type.request_cancel_external_workflow_execution_decision_attributes = RequestCancelExternalWorkflowExecutionDecisionAttributes.build(params[:request_cancel_external_workflow_execution_decision_attributes], context: "#{context}[:request_cancel_external_workflow_execution_decision_attributes]") unless params[:request_cancel_external_workflow_execution_decision_attributes].nil?
        type.start_child_workflow_execution_decision_attributes = StartChildWorkflowExecutionDecisionAttributes.build(params[:start_child_workflow_execution_decision_attributes], context: "#{context}[:start_child_workflow_execution_decision_attributes]") unless params[:start_child_workflow_execution_decision_attributes].nil?
        type.schedule_lambda_function_decision_attributes = ScheduleLambdaFunctionDecisionAttributes.build(params[:schedule_lambda_function_decision_attributes], context: "#{context}[:schedule_lambda_function_decision_attributes]") unless params[:schedule_lambda_function_decision_attributes].nil?
        type
      end
    end

    module DecisionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Decision.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DecisionTaskCompletedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecisionTaskCompletedEventAttributes, context: context)
        type = Types::DecisionTaskCompletedEventAttributes.new
        type.execution_context = params[:execution_context]
        type.scheduled_event_id = params[:scheduled_event_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module DecisionTaskScheduledEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecisionTaskScheduledEventAttributes, context: context)
        type = Types::DecisionTaskScheduledEventAttributes.new
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.start_to_close_timeout = params[:start_to_close_timeout]
        type
      end
    end

    module DecisionTaskStartedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecisionTaskStartedEventAttributes, context: context)
        type = Types::DecisionTaskStartedEventAttributes.new
        type.identity = params[:identity]
        type.scheduled_event_id = params[:scheduled_event_id]
        type
      end
    end

    module DecisionTaskTimedOutEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecisionTaskTimedOutEventAttributes, context: context)
        type = Types::DecisionTaskTimedOutEventAttributes.new
        type.timeout_type = params[:timeout_type]
        type.scheduled_event_id = params[:scheduled_event_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module DefaultUndefinedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultUndefinedFault, context: context)
        type = Types::DefaultUndefinedFault.new
        type.message = params[:message]
        type
      end
    end

    module DeprecateActivityTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateActivityTypeInput, context: context)
        type = Types::DeprecateActivityTypeInput.new
        type.domain = params[:domain]
        type.activity_type = ActivityType.build(params[:activity_type], context: "#{context}[:activity_type]") unless params[:activity_type].nil?
        type
      end
    end

    module DeprecateActivityTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateActivityTypeOutput, context: context)
        type = Types::DeprecateActivityTypeOutput.new
        type
      end
    end

    module DeprecateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateDomainInput, context: context)
        type = Types::DeprecateDomainInput.new
        type.name = params[:name]
        type
      end
    end

    module DeprecateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateDomainOutput, context: context)
        type = Types::DeprecateDomainOutput.new
        type
      end
    end

    module DeprecateWorkflowTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateWorkflowTypeInput, context: context)
        type = Types::DeprecateWorkflowTypeInput.new
        type.domain = params[:domain]
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type
      end
    end

    module DeprecateWorkflowTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateWorkflowTypeOutput, context: context)
        type = Types::DeprecateWorkflowTypeOutput.new
        type
      end
    end

    module DescribeActivityTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActivityTypeInput, context: context)
        type = Types::DescribeActivityTypeInput.new
        type.domain = params[:domain]
        type.activity_type = ActivityType.build(params[:activity_type], context: "#{context}[:activity_type]") unless params[:activity_type].nil?
        type
      end
    end

    module DescribeActivityTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActivityTypeOutput, context: context)
        type = Types::DescribeActivityTypeOutput.new
        type.type_info = ActivityTypeInfo.build(params[:type_info], context: "#{context}[:type_info]") unless params[:type_info].nil?
        type.configuration = ActivityTypeConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module DescribeDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainInput, context: context)
        type = Types::DescribeDomainInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainOutput, context: context)
        type = Types::DescribeDomainOutput.new
        type.domain_info = DomainInfo.build(params[:domain_info], context: "#{context}[:domain_info]") unless params[:domain_info].nil?
        type.configuration = DomainConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module DescribeWorkflowExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkflowExecutionInput, context: context)
        type = Types::DescribeWorkflowExecutionInput.new
        type.domain = params[:domain]
        type.execution = WorkflowExecution.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type
      end
    end

    module DescribeWorkflowExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkflowExecutionOutput, context: context)
        type = Types::DescribeWorkflowExecutionOutput.new
        type.execution_info = WorkflowExecutionInfo.build(params[:execution_info], context: "#{context}[:execution_info]") unless params[:execution_info].nil?
        type.execution_configuration = WorkflowExecutionConfiguration.build(params[:execution_configuration], context: "#{context}[:execution_configuration]") unless params[:execution_configuration].nil?
        type.open_counts = WorkflowExecutionOpenCounts.build(params[:open_counts], context: "#{context}[:open_counts]") unless params[:open_counts].nil?
        type.latest_activity_task_timestamp = params[:latest_activity_task_timestamp]
        type.latest_execution_context = params[:latest_execution_context]
        type
      end
    end

    module DescribeWorkflowTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkflowTypeInput, context: context)
        type = Types::DescribeWorkflowTypeInput.new
        type.domain = params[:domain]
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type
      end
    end

    module DescribeWorkflowTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkflowTypeOutput, context: context)
        type = Types::DescribeWorkflowTypeOutput.new
        type.type_info = WorkflowTypeInfo.build(params[:type_info], context: "#{context}[:type_info]") unless params[:type_info].nil?
        type.configuration = WorkflowTypeConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module DomainAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainAlreadyExistsFault, context: context)
        type = Types::DomainAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DomainConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainConfiguration, context: context)
        type = Types::DomainConfiguration.new
        type.workflow_execution_retention_period_in_days = params[:workflow_execution_retention_period_in_days]
        type
      end
    end

    module DomainDeprecatedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDeprecatedFault, context: context)
        type = Types::DomainDeprecatedFault.new
        type.message = params[:message]
        type
      end
    end

    module DomainInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainInfo, context: context)
        type = Types::DomainInfo.new
        type.name = params[:name]
        type.status = params[:status]
        type.description = params[:description]
        type.arn = params[:arn]
        type
      end
    end

    module DomainInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExecutionTimeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionTimeFilter, context: context)
        type = Types::ExecutionTimeFilter.new
        type.oldest_date = params[:oldest_date]
        type.latest_date = params[:latest_date]
        type
      end
    end

    module ExternalWorkflowExecutionCancelRequestedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalWorkflowExecutionCancelRequestedEventAttributes, context: context)
        type = Types::ExternalWorkflowExecutionCancelRequestedEventAttributes.new
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.initiated_event_id = params[:initiated_event_id]
        type
      end
    end

    module ExternalWorkflowExecutionSignaledEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalWorkflowExecutionSignaledEventAttributes, context: context)
        type = Types::ExternalWorkflowExecutionSignaledEventAttributes.new
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.initiated_event_id = params[:initiated_event_id]
        type
      end
    end

    module FailWorkflowExecutionDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailWorkflowExecutionDecisionAttributes, context: context)
        type = Types::FailWorkflowExecutionDecisionAttributes.new
        type.reason = params[:reason]
        type.details = params[:details]
        type
      end
    end

    module FailWorkflowExecutionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailWorkflowExecutionFailedEventAttributes, context: context)
        type = Types::FailWorkflowExecutionFailedEventAttributes.new
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module GetWorkflowExecutionHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowExecutionHistoryInput, context: context)
        type = Types::GetWorkflowExecutionHistoryInput.new
        type.domain = params[:domain]
        type.execution = WorkflowExecution.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type.next_page_token = params[:next_page_token]
        type.maximum_page_size = params[:maximum_page_size]
        type.reverse_order = params[:reverse_order]
        type
      end
    end

    module GetWorkflowExecutionHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowExecutionHistoryOutput, context: context)
        type = Types::GetWorkflowExecutionHistoryOutput.new
        type.events = HistoryEventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module HistoryEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HistoryEvent, context: context)
        type = Types::HistoryEvent.new
        type.event_timestamp = params[:event_timestamp]
        type.event_type = params[:event_type]
        type.event_id = params[:event_id]
        type.workflow_execution_started_event_attributes = WorkflowExecutionStartedEventAttributes.build(params[:workflow_execution_started_event_attributes], context: "#{context}[:workflow_execution_started_event_attributes]") unless params[:workflow_execution_started_event_attributes].nil?
        type.workflow_execution_completed_event_attributes = WorkflowExecutionCompletedEventAttributes.build(params[:workflow_execution_completed_event_attributes], context: "#{context}[:workflow_execution_completed_event_attributes]") unless params[:workflow_execution_completed_event_attributes].nil?
        type.complete_workflow_execution_failed_event_attributes = CompleteWorkflowExecutionFailedEventAttributes.build(params[:complete_workflow_execution_failed_event_attributes], context: "#{context}[:complete_workflow_execution_failed_event_attributes]") unless params[:complete_workflow_execution_failed_event_attributes].nil?
        type.workflow_execution_failed_event_attributes = WorkflowExecutionFailedEventAttributes.build(params[:workflow_execution_failed_event_attributes], context: "#{context}[:workflow_execution_failed_event_attributes]") unless params[:workflow_execution_failed_event_attributes].nil?
        type.fail_workflow_execution_failed_event_attributes = FailWorkflowExecutionFailedEventAttributes.build(params[:fail_workflow_execution_failed_event_attributes], context: "#{context}[:fail_workflow_execution_failed_event_attributes]") unless params[:fail_workflow_execution_failed_event_attributes].nil?
        type.workflow_execution_timed_out_event_attributes = WorkflowExecutionTimedOutEventAttributes.build(params[:workflow_execution_timed_out_event_attributes], context: "#{context}[:workflow_execution_timed_out_event_attributes]") unless params[:workflow_execution_timed_out_event_attributes].nil?
        type.workflow_execution_canceled_event_attributes = WorkflowExecutionCanceledEventAttributes.build(params[:workflow_execution_canceled_event_attributes], context: "#{context}[:workflow_execution_canceled_event_attributes]") unless params[:workflow_execution_canceled_event_attributes].nil?
        type.cancel_workflow_execution_failed_event_attributes = CancelWorkflowExecutionFailedEventAttributes.build(params[:cancel_workflow_execution_failed_event_attributes], context: "#{context}[:cancel_workflow_execution_failed_event_attributes]") unless params[:cancel_workflow_execution_failed_event_attributes].nil?
        type.workflow_execution_continued_as_new_event_attributes = WorkflowExecutionContinuedAsNewEventAttributes.build(params[:workflow_execution_continued_as_new_event_attributes], context: "#{context}[:workflow_execution_continued_as_new_event_attributes]") unless params[:workflow_execution_continued_as_new_event_attributes].nil?
        type.continue_as_new_workflow_execution_failed_event_attributes = ContinueAsNewWorkflowExecutionFailedEventAttributes.build(params[:continue_as_new_workflow_execution_failed_event_attributes], context: "#{context}[:continue_as_new_workflow_execution_failed_event_attributes]") unless params[:continue_as_new_workflow_execution_failed_event_attributes].nil?
        type.workflow_execution_terminated_event_attributes = WorkflowExecutionTerminatedEventAttributes.build(params[:workflow_execution_terminated_event_attributes], context: "#{context}[:workflow_execution_terminated_event_attributes]") unless params[:workflow_execution_terminated_event_attributes].nil?
        type.workflow_execution_cancel_requested_event_attributes = WorkflowExecutionCancelRequestedEventAttributes.build(params[:workflow_execution_cancel_requested_event_attributes], context: "#{context}[:workflow_execution_cancel_requested_event_attributes]") unless params[:workflow_execution_cancel_requested_event_attributes].nil?
        type.decision_task_scheduled_event_attributes = DecisionTaskScheduledEventAttributes.build(params[:decision_task_scheduled_event_attributes], context: "#{context}[:decision_task_scheduled_event_attributes]") unless params[:decision_task_scheduled_event_attributes].nil?
        type.decision_task_started_event_attributes = DecisionTaskStartedEventAttributes.build(params[:decision_task_started_event_attributes], context: "#{context}[:decision_task_started_event_attributes]") unless params[:decision_task_started_event_attributes].nil?
        type.decision_task_completed_event_attributes = DecisionTaskCompletedEventAttributes.build(params[:decision_task_completed_event_attributes], context: "#{context}[:decision_task_completed_event_attributes]") unless params[:decision_task_completed_event_attributes].nil?
        type.decision_task_timed_out_event_attributes = DecisionTaskTimedOutEventAttributes.build(params[:decision_task_timed_out_event_attributes], context: "#{context}[:decision_task_timed_out_event_attributes]") unless params[:decision_task_timed_out_event_attributes].nil?
        type.activity_task_scheduled_event_attributes = ActivityTaskScheduledEventAttributes.build(params[:activity_task_scheduled_event_attributes], context: "#{context}[:activity_task_scheduled_event_attributes]") unless params[:activity_task_scheduled_event_attributes].nil?
        type.activity_task_started_event_attributes = ActivityTaskStartedEventAttributes.build(params[:activity_task_started_event_attributes], context: "#{context}[:activity_task_started_event_attributes]") unless params[:activity_task_started_event_attributes].nil?
        type.activity_task_completed_event_attributes = ActivityTaskCompletedEventAttributes.build(params[:activity_task_completed_event_attributes], context: "#{context}[:activity_task_completed_event_attributes]") unless params[:activity_task_completed_event_attributes].nil?
        type.activity_task_failed_event_attributes = ActivityTaskFailedEventAttributes.build(params[:activity_task_failed_event_attributes], context: "#{context}[:activity_task_failed_event_attributes]") unless params[:activity_task_failed_event_attributes].nil?
        type.activity_task_timed_out_event_attributes = ActivityTaskTimedOutEventAttributes.build(params[:activity_task_timed_out_event_attributes], context: "#{context}[:activity_task_timed_out_event_attributes]") unless params[:activity_task_timed_out_event_attributes].nil?
        type.activity_task_canceled_event_attributes = ActivityTaskCanceledEventAttributes.build(params[:activity_task_canceled_event_attributes], context: "#{context}[:activity_task_canceled_event_attributes]") unless params[:activity_task_canceled_event_attributes].nil?
        type.activity_task_cancel_requested_event_attributes = ActivityTaskCancelRequestedEventAttributes.build(params[:activity_task_cancel_requested_event_attributes], context: "#{context}[:activity_task_cancel_requested_event_attributes]") unless params[:activity_task_cancel_requested_event_attributes].nil?
        type.workflow_execution_signaled_event_attributes = WorkflowExecutionSignaledEventAttributes.build(params[:workflow_execution_signaled_event_attributes], context: "#{context}[:workflow_execution_signaled_event_attributes]") unless params[:workflow_execution_signaled_event_attributes].nil?
        type.marker_recorded_event_attributes = MarkerRecordedEventAttributes.build(params[:marker_recorded_event_attributes], context: "#{context}[:marker_recorded_event_attributes]") unless params[:marker_recorded_event_attributes].nil?
        type.record_marker_failed_event_attributes = RecordMarkerFailedEventAttributes.build(params[:record_marker_failed_event_attributes], context: "#{context}[:record_marker_failed_event_attributes]") unless params[:record_marker_failed_event_attributes].nil?
        type.timer_started_event_attributes = TimerStartedEventAttributes.build(params[:timer_started_event_attributes], context: "#{context}[:timer_started_event_attributes]") unless params[:timer_started_event_attributes].nil?
        type.timer_fired_event_attributes = TimerFiredEventAttributes.build(params[:timer_fired_event_attributes], context: "#{context}[:timer_fired_event_attributes]") unless params[:timer_fired_event_attributes].nil?
        type.timer_canceled_event_attributes = TimerCanceledEventAttributes.build(params[:timer_canceled_event_attributes], context: "#{context}[:timer_canceled_event_attributes]") unless params[:timer_canceled_event_attributes].nil?
        type.start_child_workflow_execution_initiated_event_attributes = StartChildWorkflowExecutionInitiatedEventAttributes.build(params[:start_child_workflow_execution_initiated_event_attributes], context: "#{context}[:start_child_workflow_execution_initiated_event_attributes]") unless params[:start_child_workflow_execution_initiated_event_attributes].nil?
        type.child_workflow_execution_started_event_attributes = ChildWorkflowExecutionStartedEventAttributes.build(params[:child_workflow_execution_started_event_attributes], context: "#{context}[:child_workflow_execution_started_event_attributes]") unless params[:child_workflow_execution_started_event_attributes].nil?
        type.child_workflow_execution_completed_event_attributes = ChildWorkflowExecutionCompletedEventAttributes.build(params[:child_workflow_execution_completed_event_attributes], context: "#{context}[:child_workflow_execution_completed_event_attributes]") unless params[:child_workflow_execution_completed_event_attributes].nil?
        type.child_workflow_execution_failed_event_attributes = ChildWorkflowExecutionFailedEventAttributes.build(params[:child_workflow_execution_failed_event_attributes], context: "#{context}[:child_workflow_execution_failed_event_attributes]") unless params[:child_workflow_execution_failed_event_attributes].nil?
        type.child_workflow_execution_timed_out_event_attributes = ChildWorkflowExecutionTimedOutEventAttributes.build(params[:child_workflow_execution_timed_out_event_attributes], context: "#{context}[:child_workflow_execution_timed_out_event_attributes]") unless params[:child_workflow_execution_timed_out_event_attributes].nil?
        type.child_workflow_execution_canceled_event_attributes = ChildWorkflowExecutionCanceledEventAttributes.build(params[:child_workflow_execution_canceled_event_attributes], context: "#{context}[:child_workflow_execution_canceled_event_attributes]") unless params[:child_workflow_execution_canceled_event_attributes].nil?
        type.child_workflow_execution_terminated_event_attributes = ChildWorkflowExecutionTerminatedEventAttributes.build(params[:child_workflow_execution_terminated_event_attributes], context: "#{context}[:child_workflow_execution_terminated_event_attributes]") unless params[:child_workflow_execution_terminated_event_attributes].nil?
        type.signal_external_workflow_execution_initiated_event_attributes = SignalExternalWorkflowExecutionInitiatedEventAttributes.build(params[:signal_external_workflow_execution_initiated_event_attributes], context: "#{context}[:signal_external_workflow_execution_initiated_event_attributes]") unless params[:signal_external_workflow_execution_initiated_event_attributes].nil?
        type.external_workflow_execution_signaled_event_attributes = ExternalWorkflowExecutionSignaledEventAttributes.build(params[:external_workflow_execution_signaled_event_attributes], context: "#{context}[:external_workflow_execution_signaled_event_attributes]") unless params[:external_workflow_execution_signaled_event_attributes].nil?
        type.signal_external_workflow_execution_failed_event_attributes = SignalExternalWorkflowExecutionFailedEventAttributes.build(params[:signal_external_workflow_execution_failed_event_attributes], context: "#{context}[:signal_external_workflow_execution_failed_event_attributes]") unless params[:signal_external_workflow_execution_failed_event_attributes].nil?
        type.external_workflow_execution_cancel_requested_event_attributes = ExternalWorkflowExecutionCancelRequestedEventAttributes.build(params[:external_workflow_execution_cancel_requested_event_attributes], context: "#{context}[:external_workflow_execution_cancel_requested_event_attributes]") unless params[:external_workflow_execution_cancel_requested_event_attributes].nil?
        type.request_cancel_external_workflow_execution_initiated_event_attributes = RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.build(params[:request_cancel_external_workflow_execution_initiated_event_attributes], context: "#{context}[:request_cancel_external_workflow_execution_initiated_event_attributes]") unless params[:request_cancel_external_workflow_execution_initiated_event_attributes].nil?
        type.request_cancel_external_workflow_execution_failed_event_attributes = RequestCancelExternalWorkflowExecutionFailedEventAttributes.build(params[:request_cancel_external_workflow_execution_failed_event_attributes], context: "#{context}[:request_cancel_external_workflow_execution_failed_event_attributes]") unless params[:request_cancel_external_workflow_execution_failed_event_attributes].nil?
        type.schedule_activity_task_failed_event_attributes = ScheduleActivityTaskFailedEventAttributes.build(params[:schedule_activity_task_failed_event_attributes], context: "#{context}[:schedule_activity_task_failed_event_attributes]") unless params[:schedule_activity_task_failed_event_attributes].nil?
        type.request_cancel_activity_task_failed_event_attributes = RequestCancelActivityTaskFailedEventAttributes.build(params[:request_cancel_activity_task_failed_event_attributes], context: "#{context}[:request_cancel_activity_task_failed_event_attributes]") unless params[:request_cancel_activity_task_failed_event_attributes].nil?
        type.start_timer_failed_event_attributes = StartTimerFailedEventAttributes.build(params[:start_timer_failed_event_attributes], context: "#{context}[:start_timer_failed_event_attributes]") unless params[:start_timer_failed_event_attributes].nil?
        type.cancel_timer_failed_event_attributes = CancelTimerFailedEventAttributes.build(params[:cancel_timer_failed_event_attributes], context: "#{context}[:cancel_timer_failed_event_attributes]") unless params[:cancel_timer_failed_event_attributes].nil?
        type.start_child_workflow_execution_failed_event_attributes = StartChildWorkflowExecutionFailedEventAttributes.build(params[:start_child_workflow_execution_failed_event_attributes], context: "#{context}[:start_child_workflow_execution_failed_event_attributes]") unless params[:start_child_workflow_execution_failed_event_attributes].nil?
        type.lambda_function_scheduled_event_attributes = LambdaFunctionScheduledEventAttributes.build(params[:lambda_function_scheduled_event_attributes], context: "#{context}[:lambda_function_scheduled_event_attributes]") unless params[:lambda_function_scheduled_event_attributes].nil?
        type.lambda_function_started_event_attributes = LambdaFunctionStartedEventAttributes.build(params[:lambda_function_started_event_attributes], context: "#{context}[:lambda_function_started_event_attributes]") unless params[:lambda_function_started_event_attributes].nil?
        type.lambda_function_completed_event_attributes = LambdaFunctionCompletedEventAttributes.build(params[:lambda_function_completed_event_attributes], context: "#{context}[:lambda_function_completed_event_attributes]") unless params[:lambda_function_completed_event_attributes].nil?
        type.lambda_function_failed_event_attributes = LambdaFunctionFailedEventAttributes.build(params[:lambda_function_failed_event_attributes], context: "#{context}[:lambda_function_failed_event_attributes]") unless params[:lambda_function_failed_event_attributes].nil?
        type.lambda_function_timed_out_event_attributes = LambdaFunctionTimedOutEventAttributes.build(params[:lambda_function_timed_out_event_attributes], context: "#{context}[:lambda_function_timed_out_event_attributes]") unless params[:lambda_function_timed_out_event_attributes].nil?
        type.schedule_lambda_function_failed_event_attributes = ScheduleLambdaFunctionFailedEventAttributes.build(params[:schedule_lambda_function_failed_event_attributes], context: "#{context}[:schedule_lambda_function_failed_event_attributes]") unless params[:schedule_lambda_function_failed_event_attributes].nil?
        type.start_lambda_function_failed_event_attributes = StartLambdaFunctionFailedEventAttributes.build(params[:start_lambda_function_failed_event_attributes], context: "#{context}[:start_lambda_function_failed_event_attributes]") unless params[:start_lambda_function_failed_event_attributes].nil?
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

    module LambdaFunctionCompletedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionCompletedEventAttributes, context: context)
        type = Types::LambdaFunctionCompletedEventAttributes.new
        type.scheduled_event_id = params[:scheduled_event_id]
        type.started_event_id = params[:started_event_id]
        type.result = params[:result]
        type
      end
    end

    module LambdaFunctionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionFailedEventAttributes, context: context)
        type = Types::LambdaFunctionFailedEventAttributes.new
        type.scheduled_event_id = params[:scheduled_event_id]
        type.started_event_id = params[:started_event_id]
        type.reason = params[:reason]
        type.details = params[:details]
        type
      end
    end

    module LambdaFunctionScheduledEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionScheduledEventAttributes, context: context)
        type = Types::LambdaFunctionScheduledEventAttributes.new
        type.id = params[:id]
        type.name = params[:name]
        type.control = params[:control]
        type.input = params[:input]
        type.start_to_close_timeout = params[:start_to_close_timeout]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module LambdaFunctionStartedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionStartedEventAttributes, context: context)
        type = Types::LambdaFunctionStartedEventAttributes.new
        type.scheduled_event_id = params[:scheduled_event_id]
        type
      end
    end

    module LambdaFunctionTimedOutEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionTimedOutEventAttributes, context: context)
        type = Types::LambdaFunctionTimedOutEventAttributes.new
        type.scheduled_event_id = params[:scheduled_event_id]
        type.started_event_id = params[:started_event_id]
        type.timeout_type = params[:timeout_type]
        type
      end
    end

    module LimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededFault, context: context)
        type = Types::LimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ListActivityTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActivityTypesInput, context: context)
        type = Types::ListActivityTypesInput.new
        type.domain = params[:domain]
        type.name = params[:name]
        type.registration_status = params[:registration_status]
        type.next_page_token = params[:next_page_token]
        type.maximum_page_size = params[:maximum_page_size]
        type.reverse_order = params[:reverse_order]
        type
      end
    end

    module ListActivityTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActivityTypesOutput, context: context)
        type = Types::ListActivityTypesOutput.new
        type.type_infos = ActivityTypeInfoList.build(params[:type_infos], context: "#{context}[:type_infos]") unless params[:type_infos].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListClosedWorkflowExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClosedWorkflowExecutionsInput, context: context)
        type = Types::ListClosedWorkflowExecutionsInput.new
        type.domain = params[:domain]
        type.start_time_filter = ExecutionTimeFilter.build(params[:start_time_filter], context: "#{context}[:start_time_filter]") unless params[:start_time_filter].nil?
        type.close_time_filter = ExecutionTimeFilter.build(params[:close_time_filter], context: "#{context}[:close_time_filter]") unless params[:close_time_filter].nil?
        type.execution_filter = WorkflowExecutionFilter.build(params[:execution_filter], context: "#{context}[:execution_filter]") unless params[:execution_filter].nil?
        type.close_status_filter = CloseStatusFilter.build(params[:close_status_filter], context: "#{context}[:close_status_filter]") unless params[:close_status_filter].nil?
        type.type_filter = WorkflowTypeFilter.build(params[:type_filter], context: "#{context}[:type_filter]") unless params[:type_filter].nil?
        type.tag_filter = TagFilter.build(params[:tag_filter], context: "#{context}[:tag_filter]") unless params[:tag_filter].nil?
        type.next_page_token = params[:next_page_token]
        type.maximum_page_size = params[:maximum_page_size]
        type.reverse_order = params[:reverse_order]
        type
      end
    end

    module ListClosedWorkflowExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClosedWorkflowExecutionsOutput, context: context)
        type = Types::ListClosedWorkflowExecutionsOutput.new
        type.execution_infos = WorkflowExecutionInfoList.build(params[:execution_infos], context: "#{context}[:execution_infos]") unless params[:execution_infos].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsInput, context: context)
        type = Types::ListDomainsInput.new
        type.next_page_token = params[:next_page_token]
        type.registration_status = params[:registration_status]
        type.maximum_page_size = params[:maximum_page_size]
        type.reverse_order = params[:reverse_order]
        type
      end
    end

    module ListDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsOutput, context: context)
        type = Types::ListDomainsOutput.new
        type.domain_infos = DomainInfoList.build(params[:domain_infos], context: "#{context}[:domain_infos]") unless params[:domain_infos].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListOpenWorkflowExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpenWorkflowExecutionsInput, context: context)
        type = Types::ListOpenWorkflowExecutionsInput.new
        type.domain = params[:domain]
        type.start_time_filter = ExecutionTimeFilter.build(params[:start_time_filter], context: "#{context}[:start_time_filter]") unless params[:start_time_filter].nil?
        type.type_filter = WorkflowTypeFilter.build(params[:type_filter], context: "#{context}[:type_filter]") unless params[:type_filter].nil?
        type.tag_filter = TagFilter.build(params[:tag_filter], context: "#{context}[:tag_filter]") unless params[:tag_filter].nil?
        type.next_page_token = params[:next_page_token]
        type.maximum_page_size = params[:maximum_page_size]
        type.reverse_order = params[:reverse_order]
        type.execution_filter = WorkflowExecutionFilter.build(params[:execution_filter], context: "#{context}[:execution_filter]") unless params[:execution_filter].nil?
        type
      end
    end

    module ListOpenWorkflowExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpenWorkflowExecutionsOutput, context: context)
        type = Types::ListOpenWorkflowExecutionsOutput.new
        type.execution_infos = WorkflowExecutionInfoList.build(params[:execution_infos], context: "#{context}[:execution_infos]") unless params[:execution_infos].nil?
        type.next_page_token = params[:next_page_token]
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
        type.tags = ResourceTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListWorkflowTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkflowTypesInput, context: context)
        type = Types::ListWorkflowTypesInput.new
        type.domain = params[:domain]
        type.name = params[:name]
        type.registration_status = params[:registration_status]
        type.next_page_token = params[:next_page_token]
        type.maximum_page_size = params[:maximum_page_size]
        type.reverse_order = params[:reverse_order]
        type
      end
    end

    module ListWorkflowTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkflowTypesOutput, context: context)
        type = Types::ListWorkflowTypesOutput.new
        type.type_infos = WorkflowTypeInfoList.build(params[:type_infos], context: "#{context}[:type_infos]") unless params[:type_infos].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module MarkerRecordedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarkerRecordedEventAttributes, context: context)
        type = Types::MarkerRecordedEventAttributes.new
        type.marker_name = params[:marker_name]
        type.details = params[:details]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module OperationNotPermittedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotPermittedFault, context: context)
        type = Types::OperationNotPermittedFault.new
        type.message = params[:message]
        type
      end
    end

    module PollForActivityTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForActivityTaskInput, context: context)
        type = Types::PollForActivityTaskInput.new
        type.domain = params[:domain]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.identity = params[:identity]
        type
      end
    end

    module PollForActivityTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForActivityTaskOutput, context: context)
        type = Types::PollForActivityTaskOutput.new
        type.task_token = params[:task_token]
        type.activity_id = params[:activity_id]
        type.started_event_id = params[:started_event_id]
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.activity_type = ActivityType.build(params[:activity_type], context: "#{context}[:activity_type]") unless params[:activity_type].nil?
        type.input = params[:input]
        type
      end
    end

    module PollForDecisionTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForDecisionTaskInput, context: context)
        type = Types::PollForDecisionTaskInput.new
        type.domain = params[:domain]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.identity = params[:identity]
        type.next_page_token = params[:next_page_token]
        type.maximum_page_size = params[:maximum_page_size]
        type.reverse_order = params[:reverse_order]
        type
      end
    end

    module PollForDecisionTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForDecisionTaskOutput, context: context)
        type = Types::PollForDecisionTaskOutput.new
        type.task_token = params[:task_token]
        type.started_event_id = params[:started_event_id]
        type.workflow_execution = WorkflowExecution.build(params[:workflow_execution], context: "#{context}[:workflow_execution]") unless params[:workflow_execution].nil?
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.events = HistoryEventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_page_token = params[:next_page_token]
        type.previous_started_event_id = params[:previous_started_event_id]
        type
      end
    end

    module RecordActivityTaskHeartbeatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordActivityTaskHeartbeatInput, context: context)
        type = Types::RecordActivityTaskHeartbeatInput.new
        type.task_token = params[:task_token]
        type.details = params[:details]
        type
      end
    end

    module RecordActivityTaskHeartbeatOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordActivityTaskHeartbeatOutput, context: context)
        type = Types::RecordActivityTaskHeartbeatOutput.new
        type.cancel_requested = params[:cancel_requested]
        type
      end
    end

    module RecordMarkerDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordMarkerDecisionAttributes, context: context)
        type = Types::RecordMarkerDecisionAttributes.new
        type.marker_name = params[:marker_name]
        type.details = params[:details]
        type
      end
    end

    module RecordMarkerFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordMarkerFailedEventAttributes, context: context)
        type = Types::RecordMarkerFailedEventAttributes.new
        type.marker_name = params[:marker_name]
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module RegisterActivityTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterActivityTypeInput, context: context)
        type = Types::RegisterActivityTypeInput.new
        type.domain = params[:domain]
        type.name = params[:name]
        type.version = params[:version]
        type.description = params[:description]
        type.default_task_start_to_close_timeout = params[:default_task_start_to_close_timeout]
        type.default_task_heartbeat_timeout = params[:default_task_heartbeat_timeout]
        type.default_task_list = TaskList.build(params[:default_task_list], context: "#{context}[:default_task_list]") unless params[:default_task_list].nil?
        type.default_task_priority = params[:default_task_priority]
        type.default_task_schedule_to_start_timeout = params[:default_task_schedule_to_start_timeout]
        type.default_task_schedule_to_close_timeout = params[:default_task_schedule_to_close_timeout]
        type
      end
    end

    module RegisterActivityTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterActivityTypeOutput, context: context)
        type = Types::RegisterActivityTypeOutput.new
        type
      end
    end

    module RegisterDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDomainInput, context: context)
        type = Types::RegisterDomainInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.workflow_execution_retention_period_in_days = params[:workflow_execution_retention_period_in_days]
        type.tags = ResourceTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RegisterDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDomainOutput, context: context)
        type = Types::RegisterDomainOutput.new
        type
      end
    end

    module RegisterWorkflowTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterWorkflowTypeInput, context: context)
        type = Types::RegisterWorkflowTypeInput.new
        type.domain = params[:domain]
        type.name = params[:name]
        type.version = params[:version]
        type.description = params[:description]
        type.default_task_start_to_close_timeout = params[:default_task_start_to_close_timeout]
        type.default_execution_start_to_close_timeout = params[:default_execution_start_to_close_timeout]
        type.default_task_list = TaskList.build(params[:default_task_list], context: "#{context}[:default_task_list]") unless params[:default_task_list].nil?
        type.default_task_priority = params[:default_task_priority]
        type.default_child_policy = params[:default_child_policy]
        type.default_lambda_role = params[:default_lambda_role]
        type
      end
    end

    module RegisterWorkflowTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterWorkflowTypeOutput, context: context)
        type = Types::RegisterWorkflowTypeOutput.new
        type
      end
    end

    module RequestCancelActivityTaskDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestCancelActivityTaskDecisionAttributes, context: context)
        type = Types::RequestCancelActivityTaskDecisionAttributes.new
        type.activity_id = params[:activity_id]
        type
      end
    end

    module RequestCancelActivityTaskFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestCancelActivityTaskFailedEventAttributes, context: context)
        type = Types::RequestCancelActivityTaskFailedEventAttributes.new
        type.activity_id = params[:activity_id]
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module RequestCancelExternalWorkflowExecutionDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestCancelExternalWorkflowExecutionDecisionAttributes, context: context)
        type = Types::RequestCancelExternalWorkflowExecutionDecisionAttributes.new
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type.control = params[:control]
        type
      end
    end

    module RequestCancelExternalWorkflowExecutionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes, context: context)
        type = Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes.new
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type.cause = params[:cause]
        type.initiated_event_id = params[:initiated_event_id]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type.control = params[:control]
        type
      end
    end

    module RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes, context: context)
        type = Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.new
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type.control = params[:control]
        type
      end
    end

    module RequestCancelWorkflowExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestCancelWorkflowExecutionInput, context: context)
        type = Types::RequestCancelWorkflowExecutionInput.new
        type.domain = params[:domain]
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type
      end
    end

    module RequestCancelWorkflowExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestCancelWorkflowExecutionOutput, context: context)
        type = Types::RequestCancelWorkflowExecutionOutput.new
        type
      end
    end

    module ResourceTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTag, context: context)
        type = Types::ResourceTag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ResourceTagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RespondActivityTaskCanceledInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondActivityTaskCanceledInput, context: context)
        type = Types::RespondActivityTaskCanceledInput.new
        type.task_token = params[:task_token]
        type.details = params[:details]
        type
      end
    end

    module RespondActivityTaskCanceledOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondActivityTaskCanceledOutput, context: context)
        type = Types::RespondActivityTaskCanceledOutput.new
        type
      end
    end

    module RespondActivityTaskCompletedInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondActivityTaskCompletedInput, context: context)
        type = Types::RespondActivityTaskCompletedInput.new
        type.task_token = params[:task_token]
        type.result = params[:result]
        type
      end
    end

    module RespondActivityTaskCompletedOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondActivityTaskCompletedOutput, context: context)
        type = Types::RespondActivityTaskCompletedOutput.new
        type
      end
    end

    module RespondActivityTaskFailedInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondActivityTaskFailedInput, context: context)
        type = Types::RespondActivityTaskFailedInput.new
        type.task_token = params[:task_token]
        type.reason = params[:reason]
        type.details = params[:details]
        type
      end
    end

    module RespondActivityTaskFailedOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondActivityTaskFailedOutput, context: context)
        type = Types::RespondActivityTaskFailedOutput.new
        type
      end
    end

    module RespondDecisionTaskCompletedInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondDecisionTaskCompletedInput, context: context)
        type = Types::RespondDecisionTaskCompletedInput.new
        type.task_token = params[:task_token]
        type.decisions = DecisionList.build(params[:decisions], context: "#{context}[:decisions]") unless params[:decisions].nil?
        type.execution_context = params[:execution_context]
        type
      end
    end

    module RespondDecisionTaskCompletedOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondDecisionTaskCompletedOutput, context: context)
        type = Types::RespondDecisionTaskCompletedOutput.new
        type
      end
    end

    module ScheduleActivityTaskDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleActivityTaskDecisionAttributes, context: context)
        type = Types::ScheduleActivityTaskDecisionAttributes.new
        type.activity_type = ActivityType.build(params[:activity_type], context: "#{context}[:activity_type]") unless params[:activity_type].nil?
        type.activity_id = params[:activity_id]
        type.control = params[:control]
        type.input = params[:input]
        type.schedule_to_close_timeout = params[:schedule_to_close_timeout]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.schedule_to_start_timeout = params[:schedule_to_start_timeout]
        type.start_to_close_timeout = params[:start_to_close_timeout]
        type.heartbeat_timeout = params[:heartbeat_timeout]
        type
      end
    end

    module ScheduleActivityTaskFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleActivityTaskFailedEventAttributes, context: context)
        type = Types::ScheduleActivityTaskFailedEventAttributes.new
        type.activity_type = ActivityType.build(params[:activity_type], context: "#{context}[:activity_type]") unless params[:activity_type].nil?
        type.activity_id = params[:activity_id]
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module ScheduleLambdaFunctionDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleLambdaFunctionDecisionAttributes, context: context)
        type = Types::ScheduleLambdaFunctionDecisionAttributes.new
        type.id = params[:id]
        type.name = params[:name]
        type.control = params[:control]
        type.input = params[:input]
        type.start_to_close_timeout = params[:start_to_close_timeout]
        type
      end
    end

    module ScheduleLambdaFunctionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleLambdaFunctionFailedEventAttributes, context: context)
        type = Types::ScheduleLambdaFunctionFailedEventAttributes.new
        type.id = params[:id]
        type.name = params[:name]
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module SignalExternalWorkflowExecutionDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignalExternalWorkflowExecutionDecisionAttributes, context: context)
        type = Types::SignalExternalWorkflowExecutionDecisionAttributes.new
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type.signal_name = params[:signal_name]
        type.input = params[:input]
        type.control = params[:control]
        type
      end
    end

    module SignalExternalWorkflowExecutionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignalExternalWorkflowExecutionFailedEventAttributes, context: context)
        type = Types::SignalExternalWorkflowExecutionFailedEventAttributes.new
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type.cause = params[:cause]
        type.initiated_event_id = params[:initiated_event_id]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type.control = params[:control]
        type
      end
    end

    module SignalExternalWorkflowExecutionInitiatedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignalExternalWorkflowExecutionInitiatedEventAttributes, context: context)
        type = Types::SignalExternalWorkflowExecutionInitiatedEventAttributes.new
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type.signal_name = params[:signal_name]
        type.input = params[:input]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type.control = params[:control]
        type
      end
    end

    module SignalWorkflowExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignalWorkflowExecutionInput, context: context)
        type = Types::SignalWorkflowExecutionInput.new
        type.domain = params[:domain]
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type.signal_name = params[:signal_name]
        type.input = params[:input]
        type
      end
    end

    module SignalWorkflowExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignalWorkflowExecutionOutput, context: context)
        type = Types::SignalWorkflowExecutionOutput.new
        type
      end
    end

    module StartChildWorkflowExecutionDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChildWorkflowExecutionDecisionAttributes, context: context)
        type = Types::StartChildWorkflowExecutionDecisionAttributes.new
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.workflow_id = params[:workflow_id]
        type.control = params[:control]
        type.input = params[:input]
        type.execution_start_to_close_timeout = params[:execution_start_to_close_timeout]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.task_start_to_close_timeout = params[:task_start_to_close_timeout]
        type.child_policy = params[:child_policy]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.lambda_role = params[:lambda_role]
        type
      end
    end

    module StartChildWorkflowExecutionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChildWorkflowExecutionFailedEventAttributes, context: context)
        type = Types::StartChildWorkflowExecutionFailedEventAttributes.new
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.cause = params[:cause]
        type.workflow_id = params[:workflow_id]
        type.initiated_event_id = params[:initiated_event_id]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type.control = params[:control]
        type
      end
    end

    module StartChildWorkflowExecutionInitiatedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChildWorkflowExecutionInitiatedEventAttributes, context: context)
        type = Types::StartChildWorkflowExecutionInitiatedEventAttributes.new
        type.workflow_id = params[:workflow_id]
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.control = params[:control]
        type.input = params[:input]
        type.execution_start_to_close_timeout = params[:execution_start_to_close_timeout]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type.child_policy = params[:child_policy]
        type.task_start_to_close_timeout = params[:task_start_to_close_timeout]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.lambda_role = params[:lambda_role]
        type
      end
    end

    module StartLambdaFunctionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartLambdaFunctionFailedEventAttributes, context: context)
        type = Types::StartLambdaFunctionFailedEventAttributes.new
        type.scheduled_event_id = params[:scheduled_event_id]
        type.cause = params[:cause]
        type.message = params[:message]
        type
      end
    end

    module StartTimerDecisionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTimerDecisionAttributes, context: context)
        type = Types::StartTimerDecisionAttributes.new
        type.timer_id = params[:timer_id]
        type.control = params[:control]
        type.start_to_fire_timeout = params[:start_to_fire_timeout]
        type
      end
    end

    module StartTimerFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTimerFailedEventAttributes, context: context)
        type = Types::StartTimerFailedEventAttributes.new
        type.timer_id = params[:timer_id]
        type.cause = params[:cause]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module StartWorkflowExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartWorkflowExecutionInput, context: context)
        type = Types::StartWorkflowExecutionInput.new
        type.domain = params[:domain]
        type.workflow_id = params[:workflow_id]
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.input = params[:input]
        type.execution_start_to_close_timeout = params[:execution_start_to_close_timeout]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.task_start_to_close_timeout = params[:task_start_to_close_timeout]
        type.child_policy = params[:child_policy]
        type.lambda_role = params[:lambda_role]
        type
      end
    end

    module StartWorkflowExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartWorkflowExecutionOutput, context: context)
        type = Types::StartWorkflowExecutionOutput.new
        type.run_id = params[:run_id]
        type
      end
    end

    module TagFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagFilter, context: context)
        type = Types::TagFilter.new
        type.tag = params[:tag]
        type
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

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = ResourceTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TaskList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskList, context: context)
        type = Types::TaskList.new
        type.name = params[:name]
        type
      end
    end

    module TerminateWorkflowExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateWorkflowExecutionInput, context: context)
        type = Types::TerminateWorkflowExecutionInput.new
        type.domain = params[:domain]
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type.reason = params[:reason]
        type.details = params[:details]
        type.child_policy = params[:child_policy]
        type
      end
    end

    module TerminateWorkflowExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateWorkflowExecutionOutput, context: context)
        type = Types::TerminateWorkflowExecutionOutput.new
        type
      end
    end

    module TimerCanceledEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimerCanceledEventAttributes, context: context)
        type = Types::TimerCanceledEventAttributes.new
        type.timer_id = params[:timer_id]
        type.started_event_id = params[:started_event_id]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module TimerFiredEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimerFiredEventAttributes, context: context)
        type = Types::TimerFiredEventAttributes.new
        type.timer_id = params[:timer_id]
        type.started_event_id = params[:started_event_id]
        type
      end
    end

    module TimerStartedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimerStartedEventAttributes, context: context)
        type = Types::TimerStartedEventAttributes.new
        type.timer_id = params[:timer_id]
        type.control = params[:control]
        type.start_to_fire_timeout = params[:start_to_fire_timeout]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module TooManyTagsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsFault, context: context)
        type = Types::TooManyTagsFault.new
        type.message = params[:message]
        type
      end
    end

    module TypeAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeAlreadyExistsFault, context: context)
        type = Types::TypeAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module TypeDeprecatedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeDeprecatedFault, context: context)
        type = Types::TypeDeprecatedFault.new
        type.message = params[:message]
        type
      end
    end

    module UndeprecateActivityTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UndeprecateActivityTypeInput, context: context)
        type = Types::UndeprecateActivityTypeInput.new
        type.domain = params[:domain]
        type.activity_type = ActivityType.build(params[:activity_type], context: "#{context}[:activity_type]") unless params[:activity_type].nil?
        type
      end
    end

    module UndeprecateActivityTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UndeprecateActivityTypeOutput, context: context)
        type = Types::UndeprecateActivityTypeOutput.new
        type
      end
    end

    module UndeprecateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UndeprecateDomainInput, context: context)
        type = Types::UndeprecateDomainInput.new
        type.name = params[:name]
        type
      end
    end

    module UndeprecateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UndeprecateDomainOutput, context: context)
        type = Types::UndeprecateDomainOutput.new
        type
      end
    end

    module UndeprecateWorkflowTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UndeprecateWorkflowTypeInput, context: context)
        type = Types::UndeprecateWorkflowTypeInput.new
        type.domain = params[:domain]
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type
      end
    end

    module UndeprecateWorkflowTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UndeprecateWorkflowTypeOutput, context: context)
        type = Types::UndeprecateWorkflowTypeOutput.new
        type
      end
    end

    module UnknownResourceFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnknownResourceFault, context: context)
        type = Types::UnknownResourceFault.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = ResourceTagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module WorkflowExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecution, context: context)
        type = Types::WorkflowExecution.new
        type.workflow_id = params[:workflow_id]
        type.run_id = params[:run_id]
        type
      end
    end

    module WorkflowExecutionAlreadyStartedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionAlreadyStartedFault, context: context)
        type = Types::WorkflowExecutionAlreadyStartedFault.new
        type.message = params[:message]
        type
      end
    end

    module WorkflowExecutionCancelRequestedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionCancelRequestedEventAttributes, context: context)
        type = Types::WorkflowExecutionCancelRequestedEventAttributes.new
        type.external_workflow_execution = WorkflowExecution.build(params[:external_workflow_execution], context: "#{context}[:external_workflow_execution]") unless params[:external_workflow_execution].nil?
        type.external_initiated_event_id = params[:external_initiated_event_id]
        type.cause = params[:cause]
        type
      end
    end

    module WorkflowExecutionCanceledEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionCanceledEventAttributes, context: context)
        type = Types::WorkflowExecutionCanceledEventAttributes.new
        type.details = params[:details]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module WorkflowExecutionCompletedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionCompletedEventAttributes, context: context)
        type = Types::WorkflowExecutionCompletedEventAttributes.new
        type.result = params[:result]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module WorkflowExecutionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionConfiguration, context: context)
        type = Types::WorkflowExecutionConfiguration.new
        type.task_start_to_close_timeout = params[:task_start_to_close_timeout]
        type.execution_start_to_close_timeout = params[:execution_start_to_close_timeout]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.child_policy = params[:child_policy]
        type.lambda_role = params[:lambda_role]
        type
      end
    end

    module WorkflowExecutionContinuedAsNewEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionContinuedAsNewEventAttributes, context: context)
        type = Types::WorkflowExecutionContinuedAsNewEventAttributes.new
        type.input = params[:input]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type.new_execution_run_id = params[:new_execution_run_id]
        type.execution_start_to_close_timeout = params[:execution_start_to_close_timeout]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.task_start_to_close_timeout = params[:task_start_to_close_timeout]
        type.child_policy = params[:child_policy]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.lambda_role = params[:lambda_role]
        type
      end
    end

    module WorkflowExecutionFailedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionFailedEventAttributes, context: context)
        type = Types::WorkflowExecutionFailedEventAttributes.new
        type.reason = params[:reason]
        type.details = params[:details]
        type.decision_task_completed_event_id = params[:decision_task_completed_event_id]
        type
      end
    end

    module WorkflowExecutionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionFilter, context: context)
        type = Types::WorkflowExecutionFilter.new
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module WorkflowExecutionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionInfo, context: context)
        type = Types::WorkflowExecutionInfo.new
        type.execution = WorkflowExecution.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.start_timestamp = params[:start_timestamp]
        type.close_timestamp = params[:close_timestamp]
        type.execution_status = params[:execution_status]
        type.close_status = params[:close_status]
        type.parent = WorkflowExecution.build(params[:parent], context: "#{context}[:parent]") unless params[:parent].nil?
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.cancel_requested = params[:cancel_requested]
        type
      end
    end

    module WorkflowExecutionInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowExecutionInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkflowExecutionOpenCounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionOpenCounts, context: context)
        type = Types::WorkflowExecutionOpenCounts.new
        type.open_activity_tasks = params[:open_activity_tasks]
        type.open_decision_tasks = params[:open_decision_tasks]
        type.open_timers = params[:open_timers]
        type.open_child_workflow_executions = params[:open_child_workflow_executions]
        type.open_lambda_functions = params[:open_lambda_functions]
        type
      end
    end

    module WorkflowExecutionSignaledEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionSignaledEventAttributes, context: context)
        type = Types::WorkflowExecutionSignaledEventAttributes.new
        type.signal_name = params[:signal_name]
        type.input = params[:input]
        type.external_workflow_execution = WorkflowExecution.build(params[:external_workflow_execution], context: "#{context}[:external_workflow_execution]") unless params[:external_workflow_execution].nil?
        type.external_initiated_event_id = params[:external_initiated_event_id]
        type
      end
    end

    module WorkflowExecutionStartedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionStartedEventAttributes, context: context)
        type = Types::WorkflowExecutionStartedEventAttributes.new
        type.input = params[:input]
        type.execution_start_to_close_timeout = params[:execution_start_to_close_timeout]
        type.task_start_to_close_timeout = params[:task_start_to_close_timeout]
        type.child_policy = params[:child_policy]
        type.task_list = TaskList.build(params[:task_list], context: "#{context}[:task_list]") unless params[:task_list].nil?
        type.task_priority = params[:task_priority]
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.continued_execution_run_id = params[:continued_execution_run_id]
        type.parent_workflow_execution = WorkflowExecution.build(params[:parent_workflow_execution], context: "#{context}[:parent_workflow_execution]") unless params[:parent_workflow_execution].nil?
        type.parent_initiated_event_id = params[:parent_initiated_event_id]
        type.lambda_role = params[:lambda_role]
        type
      end
    end

    module WorkflowExecutionTerminatedEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionTerminatedEventAttributes, context: context)
        type = Types::WorkflowExecutionTerminatedEventAttributes.new
        type.reason = params[:reason]
        type.details = params[:details]
        type.child_policy = params[:child_policy]
        type.cause = params[:cause]
        type
      end
    end

    module WorkflowExecutionTimedOutEventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowExecutionTimedOutEventAttributes, context: context)
        type = Types::WorkflowExecutionTimedOutEventAttributes.new
        type.timeout_type = params[:timeout_type]
        type.child_policy = params[:child_policy]
        type
      end
    end

    module WorkflowType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowType, context: context)
        type = Types::WorkflowType.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module WorkflowTypeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowTypeConfiguration, context: context)
        type = Types::WorkflowTypeConfiguration.new
        type.default_task_start_to_close_timeout = params[:default_task_start_to_close_timeout]
        type.default_execution_start_to_close_timeout = params[:default_execution_start_to_close_timeout]
        type.default_task_list = TaskList.build(params[:default_task_list], context: "#{context}[:default_task_list]") unless params[:default_task_list].nil?
        type.default_task_priority = params[:default_task_priority]
        type.default_child_policy = params[:default_child_policy]
        type.default_lambda_role = params[:default_lambda_role]
        type
      end
    end

    module WorkflowTypeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowTypeFilter, context: context)
        type = Types::WorkflowTypeFilter.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module WorkflowTypeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowTypeInfo, context: context)
        type = Types::WorkflowTypeInfo.new
        type.workflow_type = WorkflowType.build(params[:workflow_type], context: "#{context}[:workflow_type]") unless params[:workflow_type].nil?
        type.status = params[:status]
        type.description = params[:description]
        type.creation_date = params[:creation_date]
        type.deprecation_date = params[:deprecation_date]
        type
      end
    end

    module WorkflowTypeInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowTypeInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
