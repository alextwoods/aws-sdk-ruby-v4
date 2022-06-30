# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SWF
  module Parsers

    # Operation Parser for CountClosedWorkflowExecutions
    class CountClosedWorkflowExecutions
      def self.parse(http_resp)
        data = Types::CountClosedWorkflowExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.count = map['count']
        data.truncated = map['truncated']
        data
      end
    end

    # Error Parser for UnknownResourceFault
    class UnknownResourceFault
      def self.parse(http_resp)
        data = Types::UnknownResourceFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OperationNotPermittedFault
    class OperationNotPermittedFault
      def self.parse(http_resp)
        data = Types::OperationNotPermittedFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CountOpenWorkflowExecutions
    class CountOpenWorkflowExecutions
      def self.parse(http_resp)
        data = Types::CountOpenWorkflowExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.count = map['count']
        data.truncated = map['truncated']
        data
      end
    end

    # Operation Parser for CountPendingActivityTasks
    class CountPendingActivityTasks
      def self.parse(http_resp)
        data = Types::CountPendingActivityTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.count = map['count']
        data.truncated = map['truncated']
        data
      end
    end

    # Operation Parser for CountPendingDecisionTasks
    class CountPendingDecisionTasks
      def self.parse(http_resp)
        data = Types::CountPendingDecisionTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.count = map['count']
        data.truncated = map['truncated']
        data
      end
    end

    # Operation Parser for DeprecateActivityType
    class DeprecateActivityType
      def self.parse(http_resp)
        data = Types::DeprecateActivityTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TypeDeprecatedFault
    class TypeDeprecatedFault
      def self.parse(http_resp)
        data = Types::TypeDeprecatedFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeprecateDomain
    class DeprecateDomain
      def self.parse(http_resp)
        data = Types::DeprecateDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DomainDeprecatedFault
    class DomainDeprecatedFault
      def self.parse(http_resp)
        data = Types::DomainDeprecatedFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeprecateWorkflowType
    class DeprecateWorkflowType
      def self.parse(http_resp)
        data = Types::DeprecateWorkflowTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeActivityType
    class DescribeActivityType
      def self.parse(http_resp)
        data = Types::DescribeActivityTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_info = (Parsers::ActivityTypeInfo.parse(map['typeInfo']) unless map['typeInfo'].nil?)
        data.configuration = (Parsers::ActivityTypeConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data
      end
    end

    class ActivityTypeConfiguration
      def self.parse(map)
        data = Types::ActivityTypeConfiguration.new
        data.default_task_start_to_close_timeout = map['defaultTaskStartToCloseTimeout']
        data.default_task_heartbeat_timeout = map['defaultTaskHeartbeatTimeout']
        data.default_task_list = (Parsers::TaskList.parse(map['defaultTaskList']) unless map['defaultTaskList'].nil?)
        data.default_task_priority = map['defaultTaskPriority']
        data.default_task_schedule_to_start_timeout = map['defaultTaskScheduleToStartTimeout']
        data.default_task_schedule_to_close_timeout = map['defaultTaskScheduleToCloseTimeout']
        return data
      end
    end

    class TaskList
      def self.parse(map)
        data = Types::TaskList.new
        data.name = map['name']
        return data
      end
    end

    class ActivityTypeInfo
      def self.parse(map)
        data = Types::ActivityTypeInfo.new
        data.activity_type = (Parsers::ActivityType.parse(map['activityType']) unless map['activityType'].nil?)
        data.status = map['status']
        data.description = map['description']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.deprecation_date = Time.at(map['deprecationDate'].to_i) if map['deprecationDate']
        return data
      end
    end

    class ActivityType
      def self.parse(map)
        data = Types::ActivityType.new
        data.name = map['name']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for DescribeDomain
    class DescribeDomain
      def self.parse(http_resp)
        data = Types::DescribeDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_info = (Parsers::DomainInfo.parse(map['domainInfo']) unless map['domainInfo'].nil?)
        data.configuration = (Parsers::DomainConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data
      end
    end

    class DomainConfiguration
      def self.parse(map)
        data = Types::DomainConfiguration.new
        data.workflow_execution_retention_period_in_days = map['workflowExecutionRetentionPeriodInDays']
        return data
      end
    end

    class DomainInfo
      def self.parse(map)
        data = Types::DomainInfo.new
        data.name = map['name']
        data.status = map['status']
        data.description = map['description']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for DescribeWorkflowExecution
    class DescribeWorkflowExecution
      def self.parse(http_resp)
        data = Types::DescribeWorkflowExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.execution_info = (Parsers::WorkflowExecutionInfo.parse(map['executionInfo']) unless map['executionInfo'].nil?)
        data.execution_configuration = (Parsers::WorkflowExecutionConfiguration.parse(map['executionConfiguration']) unless map['executionConfiguration'].nil?)
        data.open_counts = (Parsers::WorkflowExecutionOpenCounts.parse(map['openCounts']) unless map['openCounts'].nil?)
        data.latest_activity_task_timestamp = Time.at(map['latestActivityTaskTimestamp'].to_i) if map['latestActivityTaskTimestamp']
        data.latest_execution_context = map['latestExecutionContext']
        data
      end
    end

    class WorkflowExecutionOpenCounts
      def self.parse(map)
        data = Types::WorkflowExecutionOpenCounts.new
        data.open_activity_tasks = map['openActivityTasks']
        data.open_decision_tasks = map['openDecisionTasks']
        data.open_timers = map['openTimers']
        data.open_child_workflow_executions = map['openChildWorkflowExecutions']
        data.open_lambda_functions = map['openLambdaFunctions']
        return data
      end
    end

    class WorkflowExecutionConfiguration
      def self.parse(map)
        data = Types::WorkflowExecutionConfiguration.new
        data.task_start_to_close_timeout = map['taskStartToCloseTimeout']
        data.execution_start_to_close_timeout = map['executionStartToCloseTimeout']
        data.task_list = (Parsers::TaskList.parse(map['taskList']) unless map['taskList'].nil?)
        data.task_priority = map['taskPriority']
        data.child_policy = map['childPolicy']
        data.lambda_role = map['lambdaRole']
        return data
      end
    end

    class WorkflowExecutionInfo
      def self.parse(map)
        data = Types::WorkflowExecutionInfo.new
        data.execution = (Parsers::WorkflowExecution.parse(map['execution']) unless map['execution'].nil?)
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.start_timestamp = Time.at(map['startTimestamp'].to_i) if map['startTimestamp']
        data.close_timestamp = Time.at(map['closeTimestamp'].to_i) if map['closeTimestamp']
        data.execution_status = map['executionStatus']
        data.close_status = map['closeStatus']
        data.parent = (Parsers::WorkflowExecution.parse(map['parent']) unless map['parent'].nil?)
        data.tag_list = (Parsers::TagList.parse(map['tagList']) unless map['tagList'].nil?)
        data.cancel_requested = map['cancelRequested']
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class WorkflowExecution
      def self.parse(map)
        data = Types::WorkflowExecution.new
        data.workflow_id = map['workflowId']
        data.run_id = map['runId']
        return data
      end
    end

    class WorkflowType
      def self.parse(map)
        data = Types::WorkflowType.new
        data.name = map['name']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for DescribeWorkflowType
    class DescribeWorkflowType
      def self.parse(http_resp)
        data = Types::DescribeWorkflowTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_info = (Parsers::WorkflowTypeInfo.parse(map['typeInfo']) unless map['typeInfo'].nil?)
        data.configuration = (Parsers::WorkflowTypeConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data
      end
    end

    class WorkflowTypeConfiguration
      def self.parse(map)
        data = Types::WorkflowTypeConfiguration.new
        data.default_task_start_to_close_timeout = map['defaultTaskStartToCloseTimeout']
        data.default_execution_start_to_close_timeout = map['defaultExecutionStartToCloseTimeout']
        data.default_task_list = (Parsers::TaskList.parse(map['defaultTaskList']) unless map['defaultTaskList'].nil?)
        data.default_task_priority = map['defaultTaskPriority']
        data.default_child_policy = map['defaultChildPolicy']
        data.default_lambda_role = map['defaultLambdaRole']
        return data
      end
    end

    class WorkflowTypeInfo
      def self.parse(map)
        data = Types::WorkflowTypeInfo.new
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.status = map['status']
        data.description = map['description']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.deprecation_date = Time.at(map['deprecationDate'].to_i) if map['deprecationDate']
        return data
      end
    end

    # Operation Parser for GetWorkflowExecutionHistory
    class GetWorkflowExecutionHistory
      def self.parse(http_resp)
        data = Types::GetWorkflowExecutionHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events = (Parsers::HistoryEventList.parse(map['events']) unless map['events'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class HistoryEventList
      def self.parse(list)
        list.map do |value|
          Parsers::HistoryEvent.parse(value) unless value.nil?
        end
      end
    end

    class HistoryEvent
      def self.parse(map)
        data = Types::HistoryEvent.new
        data.event_timestamp = Time.at(map['eventTimestamp'].to_i) if map['eventTimestamp']
        data.event_type = map['eventType']
        data.event_id = map['eventId']
        data.workflow_execution_started_event_attributes = (Parsers::WorkflowExecutionStartedEventAttributes.parse(map['workflowExecutionStartedEventAttributes']) unless map['workflowExecutionStartedEventAttributes'].nil?)
        data.workflow_execution_completed_event_attributes = (Parsers::WorkflowExecutionCompletedEventAttributes.parse(map['workflowExecutionCompletedEventAttributes']) unless map['workflowExecutionCompletedEventAttributes'].nil?)
        data.complete_workflow_execution_failed_event_attributes = (Parsers::CompleteWorkflowExecutionFailedEventAttributes.parse(map['completeWorkflowExecutionFailedEventAttributes']) unless map['completeWorkflowExecutionFailedEventAttributes'].nil?)
        data.workflow_execution_failed_event_attributes = (Parsers::WorkflowExecutionFailedEventAttributes.parse(map['workflowExecutionFailedEventAttributes']) unless map['workflowExecutionFailedEventAttributes'].nil?)
        data.fail_workflow_execution_failed_event_attributes = (Parsers::FailWorkflowExecutionFailedEventAttributes.parse(map['failWorkflowExecutionFailedEventAttributes']) unless map['failWorkflowExecutionFailedEventAttributes'].nil?)
        data.workflow_execution_timed_out_event_attributes = (Parsers::WorkflowExecutionTimedOutEventAttributes.parse(map['workflowExecutionTimedOutEventAttributes']) unless map['workflowExecutionTimedOutEventAttributes'].nil?)
        data.workflow_execution_canceled_event_attributes = (Parsers::WorkflowExecutionCanceledEventAttributes.parse(map['workflowExecutionCanceledEventAttributes']) unless map['workflowExecutionCanceledEventAttributes'].nil?)
        data.cancel_workflow_execution_failed_event_attributes = (Parsers::CancelWorkflowExecutionFailedEventAttributes.parse(map['cancelWorkflowExecutionFailedEventAttributes']) unless map['cancelWorkflowExecutionFailedEventAttributes'].nil?)
        data.workflow_execution_continued_as_new_event_attributes = (Parsers::WorkflowExecutionContinuedAsNewEventAttributes.parse(map['workflowExecutionContinuedAsNewEventAttributes']) unless map['workflowExecutionContinuedAsNewEventAttributes'].nil?)
        data.continue_as_new_workflow_execution_failed_event_attributes = (Parsers::ContinueAsNewWorkflowExecutionFailedEventAttributes.parse(map['continueAsNewWorkflowExecutionFailedEventAttributes']) unless map['continueAsNewWorkflowExecutionFailedEventAttributes'].nil?)
        data.workflow_execution_terminated_event_attributes = (Parsers::WorkflowExecutionTerminatedEventAttributes.parse(map['workflowExecutionTerminatedEventAttributes']) unless map['workflowExecutionTerminatedEventAttributes'].nil?)
        data.workflow_execution_cancel_requested_event_attributes = (Parsers::WorkflowExecutionCancelRequestedEventAttributes.parse(map['workflowExecutionCancelRequestedEventAttributes']) unless map['workflowExecutionCancelRequestedEventAttributes'].nil?)
        data.decision_task_scheduled_event_attributes = (Parsers::DecisionTaskScheduledEventAttributes.parse(map['decisionTaskScheduledEventAttributes']) unless map['decisionTaskScheduledEventAttributes'].nil?)
        data.decision_task_started_event_attributes = (Parsers::DecisionTaskStartedEventAttributes.parse(map['decisionTaskStartedEventAttributes']) unless map['decisionTaskStartedEventAttributes'].nil?)
        data.decision_task_completed_event_attributes = (Parsers::DecisionTaskCompletedEventAttributes.parse(map['decisionTaskCompletedEventAttributes']) unless map['decisionTaskCompletedEventAttributes'].nil?)
        data.decision_task_timed_out_event_attributes = (Parsers::DecisionTaskTimedOutEventAttributes.parse(map['decisionTaskTimedOutEventAttributes']) unless map['decisionTaskTimedOutEventAttributes'].nil?)
        data.activity_task_scheduled_event_attributes = (Parsers::ActivityTaskScheduledEventAttributes.parse(map['activityTaskScheduledEventAttributes']) unless map['activityTaskScheduledEventAttributes'].nil?)
        data.activity_task_started_event_attributes = (Parsers::ActivityTaskStartedEventAttributes.parse(map['activityTaskStartedEventAttributes']) unless map['activityTaskStartedEventAttributes'].nil?)
        data.activity_task_completed_event_attributes = (Parsers::ActivityTaskCompletedEventAttributes.parse(map['activityTaskCompletedEventAttributes']) unless map['activityTaskCompletedEventAttributes'].nil?)
        data.activity_task_failed_event_attributes = (Parsers::ActivityTaskFailedEventAttributes.parse(map['activityTaskFailedEventAttributes']) unless map['activityTaskFailedEventAttributes'].nil?)
        data.activity_task_timed_out_event_attributes = (Parsers::ActivityTaskTimedOutEventAttributes.parse(map['activityTaskTimedOutEventAttributes']) unless map['activityTaskTimedOutEventAttributes'].nil?)
        data.activity_task_canceled_event_attributes = (Parsers::ActivityTaskCanceledEventAttributes.parse(map['activityTaskCanceledEventAttributes']) unless map['activityTaskCanceledEventAttributes'].nil?)
        data.activity_task_cancel_requested_event_attributes = (Parsers::ActivityTaskCancelRequestedEventAttributes.parse(map['activityTaskCancelRequestedEventAttributes']) unless map['activityTaskCancelRequestedEventAttributes'].nil?)
        data.workflow_execution_signaled_event_attributes = (Parsers::WorkflowExecutionSignaledEventAttributes.parse(map['workflowExecutionSignaledEventAttributes']) unless map['workflowExecutionSignaledEventAttributes'].nil?)
        data.marker_recorded_event_attributes = (Parsers::MarkerRecordedEventAttributes.parse(map['markerRecordedEventAttributes']) unless map['markerRecordedEventAttributes'].nil?)
        data.record_marker_failed_event_attributes = (Parsers::RecordMarkerFailedEventAttributes.parse(map['recordMarkerFailedEventAttributes']) unless map['recordMarkerFailedEventAttributes'].nil?)
        data.timer_started_event_attributes = (Parsers::TimerStartedEventAttributes.parse(map['timerStartedEventAttributes']) unless map['timerStartedEventAttributes'].nil?)
        data.timer_fired_event_attributes = (Parsers::TimerFiredEventAttributes.parse(map['timerFiredEventAttributes']) unless map['timerFiredEventAttributes'].nil?)
        data.timer_canceled_event_attributes = (Parsers::TimerCanceledEventAttributes.parse(map['timerCanceledEventAttributes']) unless map['timerCanceledEventAttributes'].nil?)
        data.start_child_workflow_execution_initiated_event_attributes = (Parsers::StartChildWorkflowExecutionInitiatedEventAttributes.parse(map['startChildWorkflowExecutionInitiatedEventAttributes']) unless map['startChildWorkflowExecutionInitiatedEventAttributes'].nil?)
        data.child_workflow_execution_started_event_attributes = (Parsers::ChildWorkflowExecutionStartedEventAttributes.parse(map['childWorkflowExecutionStartedEventAttributes']) unless map['childWorkflowExecutionStartedEventAttributes'].nil?)
        data.child_workflow_execution_completed_event_attributes = (Parsers::ChildWorkflowExecutionCompletedEventAttributes.parse(map['childWorkflowExecutionCompletedEventAttributes']) unless map['childWorkflowExecutionCompletedEventAttributes'].nil?)
        data.child_workflow_execution_failed_event_attributes = (Parsers::ChildWorkflowExecutionFailedEventAttributes.parse(map['childWorkflowExecutionFailedEventAttributes']) unless map['childWorkflowExecutionFailedEventAttributes'].nil?)
        data.child_workflow_execution_timed_out_event_attributes = (Parsers::ChildWorkflowExecutionTimedOutEventAttributes.parse(map['childWorkflowExecutionTimedOutEventAttributes']) unless map['childWorkflowExecutionTimedOutEventAttributes'].nil?)
        data.child_workflow_execution_canceled_event_attributes = (Parsers::ChildWorkflowExecutionCanceledEventAttributes.parse(map['childWorkflowExecutionCanceledEventAttributes']) unless map['childWorkflowExecutionCanceledEventAttributes'].nil?)
        data.child_workflow_execution_terminated_event_attributes = (Parsers::ChildWorkflowExecutionTerminatedEventAttributes.parse(map['childWorkflowExecutionTerminatedEventAttributes']) unless map['childWorkflowExecutionTerminatedEventAttributes'].nil?)
        data.signal_external_workflow_execution_initiated_event_attributes = (Parsers::SignalExternalWorkflowExecutionInitiatedEventAttributes.parse(map['signalExternalWorkflowExecutionInitiatedEventAttributes']) unless map['signalExternalWorkflowExecutionInitiatedEventAttributes'].nil?)
        data.external_workflow_execution_signaled_event_attributes = (Parsers::ExternalWorkflowExecutionSignaledEventAttributes.parse(map['externalWorkflowExecutionSignaledEventAttributes']) unless map['externalWorkflowExecutionSignaledEventAttributes'].nil?)
        data.signal_external_workflow_execution_failed_event_attributes = (Parsers::SignalExternalWorkflowExecutionFailedEventAttributes.parse(map['signalExternalWorkflowExecutionFailedEventAttributes']) unless map['signalExternalWorkflowExecutionFailedEventAttributes'].nil?)
        data.external_workflow_execution_cancel_requested_event_attributes = (Parsers::ExternalWorkflowExecutionCancelRequestedEventAttributes.parse(map['externalWorkflowExecutionCancelRequestedEventAttributes']) unless map['externalWorkflowExecutionCancelRequestedEventAttributes'].nil?)
        data.request_cancel_external_workflow_execution_initiated_event_attributes = (Parsers::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.parse(map['requestCancelExternalWorkflowExecutionInitiatedEventAttributes']) unless map['requestCancelExternalWorkflowExecutionInitiatedEventAttributes'].nil?)
        data.request_cancel_external_workflow_execution_failed_event_attributes = (Parsers::RequestCancelExternalWorkflowExecutionFailedEventAttributes.parse(map['requestCancelExternalWorkflowExecutionFailedEventAttributes']) unless map['requestCancelExternalWorkflowExecutionFailedEventAttributes'].nil?)
        data.schedule_activity_task_failed_event_attributes = (Parsers::ScheduleActivityTaskFailedEventAttributes.parse(map['scheduleActivityTaskFailedEventAttributes']) unless map['scheduleActivityTaskFailedEventAttributes'].nil?)
        data.request_cancel_activity_task_failed_event_attributes = (Parsers::RequestCancelActivityTaskFailedEventAttributes.parse(map['requestCancelActivityTaskFailedEventAttributes']) unless map['requestCancelActivityTaskFailedEventAttributes'].nil?)
        data.start_timer_failed_event_attributes = (Parsers::StartTimerFailedEventAttributes.parse(map['startTimerFailedEventAttributes']) unless map['startTimerFailedEventAttributes'].nil?)
        data.cancel_timer_failed_event_attributes = (Parsers::CancelTimerFailedEventAttributes.parse(map['cancelTimerFailedEventAttributes']) unless map['cancelTimerFailedEventAttributes'].nil?)
        data.start_child_workflow_execution_failed_event_attributes = (Parsers::StartChildWorkflowExecutionFailedEventAttributes.parse(map['startChildWorkflowExecutionFailedEventAttributes']) unless map['startChildWorkflowExecutionFailedEventAttributes'].nil?)
        data.lambda_function_scheduled_event_attributes = (Parsers::LambdaFunctionScheduledEventAttributes.parse(map['lambdaFunctionScheduledEventAttributes']) unless map['lambdaFunctionScheduledEventAttributes'].nil?)
        data.lambda_function_started_event_attributes = (Parsers::LambdaFunctionStartedEventAttributes.parse(map['lambdaFunctionStartedEventAttributes']) unless map['lambdaFunctionStartedEventAttributes'].nil?)
        data.lambda_function_completed_event_attributes = (Parsers::LambdaFunctionCompletedEventAttributes.parse(map['lambdaFunctionCompletedEventAttributes']) unless map['lambdaFunctionCompletedEventAttributes'].nil?)
        data.lambda_function_failed_event_attributes = (Parsers::LambdaFunctionFailedEventAttributes.parse(map['lambdaFunctionFailedEventAttributes']) unless map['lambdaFunctionFailedEventAttributes'].nil?)
        data.lambda_function_timed_out_event_attributes = (Parsers::LambdaFunctionTimedOutEventAttributes.parse(map['lambdaFunctionTimedOutEventAttributes']) unless map['lambdaFunctionTimedOutEventAttributes'].nil?)
        data.schedule_lambda_function_failed_event_attributes = (Parsers::ScheduleLambdaFunctionFailedEventAttributes.parse(map['scheduleLambdaFunctionFailedEventAttributes']) unless map['scheduleLambdaFunctionFailedEventAttributes'].nil?)
        data.start_lambda_function_failed_event_attributes = (Parsers::StartLambdaFunctionFailedEventAttributes.parse(map['startLambdaFunctionFailedEventAttributes']) unless map['startLambdaFunctionFailedEventAttributes'].nil?)
        return data
      end
    end

    class StartLambdaFunctionFailedEventAttributes
      def self.parse(map)
        data = Types::StartLambdaFunctionFailedEventAttributes.new
        data.scheduled_event_id = map['scheduledEventId']
        data.cause = map['cause']
        data.message = map['message']
        return data
      end
    end

    class ScheduleLambdaFunctionFailedEventAttributes
      def self.parse(map)
        data = Types::ScheduleLambdaFunctionFailedEventAttributes.new
        data.id = map['id']
        data.name = map['name']
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class LambdaFunctionTimedOutEventAttributes
      def self.parse(map)
        data = Types::LambdaFunctionTimedOutEventAttributes.new
        data.scheduled_event_id = map['scheduledEventId']
        data.started_event_id = map['startedEventId']
        data.timeout_type = map['timeoutType']
        return data
      end
    end

    class LambdaFunctionFailedEventAttributes
      def self.parse(map)
        data = Types::LambdaFunctionFailedEventAttributes.new
        data.scheduled_event_id = map['scheduledEventId']
        data.started_event_id = map['startedEventId']
        data.reason = map['reason']
        data.details = map['details']
        return data
      end
    end

    class LambdaFunctionCompletedEventAttributes
      def self.parse(map)
        data = Types::LambdaFunctionCompletedEventAttributes.new
        data.scheduled_event_id = map['scheduledEventId']
        data.started_event_id = map['startedEventId']
        data.result = map['result']
        return data
      end
    end

    class LambdaFunctionStartedEventAttributes
      def self.parse(map)
        data = Types::LambdaFunctionStartedEventAttributes.new
        data.scheduled_event_id = map['scheduledEventId']
        return data
      end
    end

    class LambdaFunctionScheduledEventAttributes
      def self.parse(map)
        data = Types::LambdaFunctionScheduledEventAttributes.new
        data.id = map['id']
        data.name = map['name']
        data.control = map['control']
        data.input = map['input']
        data.start_to_close_timeout = map['startToCloseTimeout']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class StartChildWorkflowExecutionFailedEventAttributes
      def self.parse(map)
        data = Types::StartChildWorkflowExecutionFailedEventAttributes.new
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.cause = map['cause']
        data.workflow_id = map['workflowId']
        data.initiated_event_id = map['initiatedEventId']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        data.control = map['control']
        return data
      end
    end

    class CancelTimerFailedEventAttributes
      def self.parse(map)
        data = Types::CancelTimerFailedEventAttributes.new
        data.timer_id = map['timerId']
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class StartTimerFailedEventAttributes
      def self.parse(map)
        data = Types::StartTimerFailedEventAttributes.new
        data.timer_id = map['timerId']
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class RequestCancelActivityTaskFailedEventAttributes
      def self.parse(map)
        data = Types::RequestCancelActivityTaskFailedEventAttributes.new
        data.activity_id = map['activityId']
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class ScheduleActivityTaskFailedEventAttributes
      def self.parse(map)
        data = Types::ScheduleActivityTaskFailedEventAttributes.new
        data.activity_type = (Parsers::ActivityType.parse(map['activityType']) unless map['activityType'].nil?)
        data.activity_id = map['activityId']
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class RequestCancelExternalWorkflowExecutionFailedEventAttributes
      def self.parse(map)
        data = Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes.new
        data.workflow_id = map['workflowId']
        data.run_id = map['runId']
        data.cause = map['cause']
        data.initiated_event_id = map['initiatedEventId']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        data.control = map['control']
        return data
      end
    end

    class RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
      def self.parse(map)
        data = Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.new
        data.workflow_id = map['workflowId']
        data.run_id = map['runId']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        data.control = map['control']
        return data
      end
    end

    class ExternalWorkflowExecutionCancelRequestedEventAttributes
      def self.parse(map)
        data = Types::ExternalWorkflowExecutionCancelRequestedEventAttributes.new
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.initiated_event_id = map['initiatedEventId']
        return data
      end
    end

    class SignalExternalWorkflowExecutionFailedEventAttributes
      def self.parse(map)
        data = Types::SignalExternalWorkflowExecutionFailedEventAttributes.new
        data.workflow_id = map['workflowId']
        data.run_id = map['runId']
        data.cause = map['cause']
        data.initiated_event_id = map['initiatedEventId']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        data.control = map['control']
        return data
      end
    end

    class ExternalWorkflowExecutionSignaledEventAttributes
      def self.parse(map)
        data = Types::ExternalWorkflowExecutionSignaledEventAttributes.new
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.initiated_event_id = map['initiatedEventId']
        return data
      end
    end

    class SignalExternalWorkflowExecutionInitiatedEventAttributes
      def self.parse(map)
        data = Types::SignalExternalWorkflowExecutionInitiatedEventAttributes.new
        data.workflow_id = map['workflowId']
        data.run_id = map['runId']
        data.signal_name = map['signalName']
        data.input = map['input']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        data.control = map['control']
        return data
      end
    end

    class ChildWorkflowExecutionTerminatedEventAttributes
      def self.parse(map)
        data = Types::ChildWorkflowExecutionTerminatedEventAttributes.new
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.initiated_event_id = map['initiatedEventId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class ChildWorkflowExecutionCanceledEventAttributes
      def self.parse(map)
        data = Types::ChildWorkflowExecutionCanceledEventAttributes.new
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.details = map['details']
        data.initiated_event_id = map['initiatedEventId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class ChildWorkflowExecutionTimedOutEventAttributes
      def self.parse(map)
        data = Types::ChildWorkflowExecutionTimedOutEventAttributes.new
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.timeout_type = map['timeoutType']
        data.initiated_event_id = map['initiatedEventId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class ChildWorkflowExecutionFailedEventAttributes
      def self.parse(map)
        data = Types::ChildWorkflowExecutionFailedEventAttributes.new
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.reason = map['reason']
        data.details = map['details']
        data.initiated_event_id = map['initiatedEventId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class ChildWorkflowExecutionCompletedEventAttributes
      def self.parse(map)
        data = Types::ChildWorkflowExecutionCompletedEventAttributes.new
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.result = map['result']
        data.initiated_event_id = map['initiatedEventId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class ChildWorkflowExecutionStartedEventAttributes
      def self.parse(map)
        data = Types::ChildWorkflowExecutionStartedEventAttributes.new
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.initiated_event_id = map['initiatedEventId']
        return data
      end
    end

    class StartChildWorkflowExecutionInitiatedEventAttributes
      def self.parse(map)
        data = Types::StartChildWorkflowExecutionInitiatedEventAttributes.new
        data.workflow_id = map['workflowId']
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.control = map['control']
        data.input = map['input']
        data.execution_start_to_close_timeout = map['executionStartToCloseTimeout']
        data.task_list = (Parsers::TaskList.parse(map['taskList']) unless map['taskList'].nil?)
        data.task_priority = map['taskPriority']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        data.child_policy = map['childPolicy']
        data.task_start_to_close_timeout = map['taskStartToCloseTimeout']
        data.tag_list = (Parsers::TagList.parse(map['tagList']) unless map['tagList'].nil?)
        data.lambda_role = map['lambdaRole']
        return data
      end
    end

    class TimerCanceledEventAttributes
      def self.parse(map)
        data = Types::TimerCanceledEventAttributes.new
        data.timer_id = map['timerId']
        data.started_event_id = map['startedEventId']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class TimerFiredEventAttributes
      def self.parse(map)
        data = Types::TimerFiredEventAttributes.new
        data.timer_id = map['timerId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class TimerStartedEventAttributes
      def self.parse(map)
        data = Types::TimerStartedEventAttributes.new
        data.timer_id = map['timerId']
        data.control = map['control']
        data.start_to_fire_timeout = map['startToFireTimeout']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class RecordMarkerFailedEventAttributes
      def self.parse(map)
        data = Types::RecordMarkerFailedEventAttributes.new
        data.marker_name = map['markerName']
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class MarkerRecordedEventAttributes
      def self.parse(map)
        data = Types::MarkerRecordedEventAttributes.new
        data.marker_name = map['markerName']
        data.details = map['details']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class WorkflowExecutionSignaledEventAttributes
      def self.parse(map)
        data = Types::WorkflowExecutionSignaledEventAttributes.new
        data.signal_name = map['signalName']
        data.input = map['input']
        data.external_workflow_execution = (Parsers::WorkflowExecution.parse(map['externalWorkflowExecution']) unless map['externalWorkflowExecution'].nil?)
        data.external_initiated_event_id = map['externalInitiatedEventId']
        return data
      end
    end

    class ActivityTaskCancelRequestedEventAttributes
      def self.parse(map)
        data = Types::ActivityTaskCancelRequestedEventAttributes.new
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        data.activity_id = map['activityId']
        return data
      end
    end

    class ActivityTaskCanceledEventAttributes
      def self.parse(map)
        data = Types::ActivityTaskCanceledEventAttributes.new
        data.details = map['details']
        data.scheduled_event_id = map['scheduledEventId']
        data.started_event_id = map['startedEventId']
        data.latest_cancel_requested_event_id = map['latestCancelRequestedEventId']
        return data
      end
    end

    class ActivityTaskTimedOutEventAttributes
      def self.parse(map)
        data = Types::ActivityTaskTimedOutEventAttributes.new
        data.timeout_type = map['timeoutType']
        data.scheduled_event_id = map['scheduledEventId']
        data.started_event_id = map['startedEventId']
        data.details = map['details']
        return data
      end
    end

    class ActivityTaskFailedEventAttributes
      def self.parse(map)
        data = Types::ActivityTaskFailedEventAttributes.new
        data.reason = map['reason']
        data.details = map['details']
        data.scheduled_event_id = map['scheduledEventId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class ActivityTaskCompletedEventAttributes
      def self.parse(map)
        data = Types::ActivityTaskCompletedEventAttributes.new
        data.result = map['result']
        data.scheduled_event_id = map['scheduledEventId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class ActivityTaskStartedEventAttributes
      def self.parse(map)
        data = Types::ActivityTaskStartedEventAttributes.new
        data.identity = map['identity']
        data.scheduled_event_id = map['scheduledEventId']
        return data
      end
    end

    class ActivityTaskScheduledEventAttributes
      def self.parse(map)
        data = Types::ActivityTaskScheduledEventAttributes.new
        data.activity_type = (Parsers::ActivityType.parse(map['activityType']) unless map['activityType'].nil?)
        data.activity_id = map['activityId']
        data.input = map['input']
        data.control = map['control']
        data.schedule_to_start_timeout = map['scheduleToStartTimeout']
        data.schedule_to_close_timeout = map['scheduleToCloseTimeout']
        data.start_to_close_timeout = map['startToCloseTimeout']
        data.task_list = (Parsers::TaskList.parse(map['taskList']) unless map['taskList'].nil?)
        data.task_priority = map['taskPriority']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        data.heartbeat_timeout = map['heartbeatTimeout']
        return data
      end
    end

    class DecisionTaskTimedOutEventAttributes
      def self.parse(map)
        data = Types::DecisionTaskTimedOutEventAttributes.new
        data.timeout_type = map['timeoutType']
        data.scheduled_event_id = map['scheduledEventId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class DecisionTaskCompletedEventAttributes
      def self.parse(map)
        data = Types::DecisionTaskCompletedEventAttributes.new
        data.execution_context = map['executionContext']
        data.scheduled_event_id = map['scheduledEventId']
        data.started_event_id = map['startedEventId']
        return data
      end
    end

    class DecisionTaskStartedEventAttributes
      def self.parse(map)
        data = Types::DecisionTaskStartedEventAttributes.new
        data.identity = map['identity']
        data.scheduled_event_id = map['scheduledEventId']
        return data
      end
    end

    class DecisionTaskScheduledEventAttributes
      def self.parse(map)
        data = Types::DecisionTaskScheduledEventAttributes.new
        data.task_list = (Parsers::TaskList.parse(map['taskList']) unless map['taskList'].nil?)
        data.task_priority = map['taskPriority']
        data.start_to_close_timeout = map['startToCloseTimeout']
        return data
      end
    end

    class WorkflowExecutionCancelRequestedEventAttributes
      def self.parse(map)
        data = Types::WorkflowExecutionCancelRequestedEventAttributes.new
        data.external_workflow_execution = (Parsers::WorkflowExecution.parse(map['externalWorkflowExecution']) unless map['externalWorkflowExecution'].nil?)
        data.external_initiated_event_id = map['externalInitiatedEventId']
        data.cause = map['cause']
        return data
      end
    end

    class WorkflowExecutionTerminatedEventAttributes
      def self.parse(map)
        data = Types::WorkflowExecutionTerminatedEventAttributes.new
        data.reason = map['reason']
        data.details = map['details']
        data.child_policy = map['childPolicy']
        data.cause = map['cause']
        return data
      end
    end

    class ContinueAsNewWorkflowExecutionFailedEventAttributes
      def self.parse(map)
        data = Types::ContinueAsNewWorkflowExecutionFailedEventAttributes.new
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class WorkflowExecutionContinuedAsNewEventAttributes
      def self.parse(map)
        data = Types::WorkflowExecutionContinuedAsNewEventAttributes.new
        data.input = map['input']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        data.new_execution_run_id = map['newExecutionRunId']
        data.execution_start_to_close_timeout = map['executionStartToCloseTimeout']
        data.task_list = (Parsers::TaskList.parse(map['taskList']) unless map['taskList'].nil?)
        data.task_priority = map['taskPriority']
        data.task_start_to_close_timeout = map['taskStartToCloseTimeout']
        data.child_policy = map['childPolicy']
        data.tag_list = (Parsers::TagList.parse(map['tagList']) unless map['tagList'].nil?)
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.lambda_role = map['lambdaRole']
        return data
      end
    end

    class CancelWorkflowExecutionFailedEventAttributes
      def self.parse(map)
        data = Types::CancelWorkflowExecutionFailedEventAttributes.new
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class WorkflowExecutionCanceledEventAttributes
      def self.parse(map)
        data = Types::WorkflowExecutionCanceledEventAttributes.new
        data.details = map['details']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class WorkflowExecutionTimedOutEventAttributes
      def self.parse(map)
        data = Types::WorkflowExecutionTimedOutEventAttributes.new
        data.timeout_type = map['timeoutType']
        data.child_policy = map['childPolicy']
        return data
      end
    end

    class FailWorkflowExecutionFailedEventAttributes
      def self.parse(map)
        data = Types::FailWorkflowExecutionFailedEventAttributes.new
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class WorkflowExecutionFailedEventAttributes
      def self.parse(map)
        data = Types::WorkflowExecutionFailedEventAttributes.new
        data.reason = map['reason']
        data.details = map['details']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class CompleteWorkflowExecutionFailedEventAttributes
      def self.parse(map)
        data = Types::CompleteWorkflowExecutionFailedEventAttributes.new
        data.cause = map['cause']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class WorkflowExecutionCompletedEventAttributes
      def self.parse(map)
        data = Types::WorkflowExecutionCompletedEventAttributes.new
        data.result = map['result']
        data.decision_task_completed_event_id = map['decisionTaskCompletedEventId']
        return data
      end
    end

    class WorkflowExecutionStartedEventAttributes
      def self.parse(map)
        data = Types::WorkflowExecutionStartedEventAttributes.new
        data.input = map['input']
        data.execution_start_to_close_timeout = map['executionStartToCloseTimeout']
        data.task_start_to_close_timeout = map['taskStartToCloseTimeout']
        data.child_policy = map['childPolicy']
        data.task_list = (Parsers::TaskList.parse(map['taskList']) unless map['taskList'].nil?)
        data.task_priority = map['taskPriority']
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.tag_list = (Parsers::TagList.parse(map['tagList']) unless map['tagList'].nil?)
        data.continued_execution_run_id = map['continuedExecutionRunId']
        data.parent_workflow_execution = (Parsers::WorkflowExecution.parse(map['parentWorkflowExecution']) unless map['parentWorkflowExecution'].nil?)
        data.parent_initiated_event_id = map['parentInitiatedEventId']
        data.lambda_role = map['lambdaRole']
        return data
      end
    end

    # Operation Parser for ListActivityTypes
    class ListActivityTypes
      def self.parse(http_resp)
        data = Types::ListActivityTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_infos = (Parsers::ActivityTypeInfoList.parse(map['typeInfos']) unless map['typeInfos'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class ActivityTypeInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::ActivityTypeInfo.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListClosedWorkflowExecutions
    class ListClosedWorkflowExecutions
      def self.parse(http_resp)
        data = Types::ListClosedWorkflowExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.execution_infos = (Parsers::WorkflowExecutionInfoList.parse(map['executionInfos']) unless map['executionInfos'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class WorkflowExecutionInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::WorkflowExecutionInfo.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListDomains
    class ListDomains
      def self.parse(http_resp)
        data = Types::ListDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_infos = (Parsers::DomainInfoList.parse(map['domainInfos']) unless map['domainInfos'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class DomainInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::DomainInfo.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListOpenWorkflowExecutions
    class ListOpenWorkflowExecutions
      def self.parse(http_resp)
        data = Types::ListOpenWorkflowExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.execution_infos = (Parsers::WorkflowExecutionInfoList.parse(map['executionInfos']) unless map['executionInfos'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::ResourceTagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class ResourceTagList
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceTag.parse(value) unless value.nil?
        end
      end
    end

    class ResourceTag
      def self.parse(map)
        data = Types::ResourceTag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Error Parser for LimitExceededFault
    class LimitExceededFault
      def self.parse(http_resp)
        data = Types::LimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListWorkflowTypes
    class ListWorkflowTypes
      def self.parse(http_resp)
        data = Types::ListWorkflowTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_infos = (Parsers::WorkflowTypeInfoList.parse(map['typeInfos']) unless map['typeInfos'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class WorkflowTypeInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::WorkflowTypeInfo.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for PollForActivityTask
    class PollForActivityTask
      def self.parse(http_resp)
        data = Types::PollForActivityTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_token = map['taskToken']
        data.activity_id = map['activityId']
        data.started_event_id = map['startedEventId']
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.activity_type = (Parsers::ActivityType.parse(map['activityType']) unless map['activityType'].nil?)
        data.input = map['input']
        data
      end
    end

    # Operation Parser for PollForDecisionTask
    class PollForDecisionTask
      def self.parse(http_resp)
        data = Types::PollForDecisionTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_token = map['taskToken']
        data.started_event_id = map['startedEventId']
        data.workflow_execution = (Parsers::WorkflowExecution.parse(map['workflowExecution']) unless map['workflowExecution'].nil?)
        data.workflow_type = (Parsers::WorkflowType.parse(map['workflowType']) unless map['workflowType'].nil?)
        data.events = (Parsers::HistoryEventList.parse(map['events']) unless map['events'].nil?)
        data.next_page_token = map['nextPageToken']
        data.previous_started_event_id = map['previousStartedEventId']
        data
      end
    end

    # Operation Parser for RecordActivityTaskHeartbeat
    class RecordActivityTaskHeartbeat
      def self.parse(http_resp)
        data = Types::RecordActivityTaskHeartbeatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cancel_requested = map['cancelRequested']
        data
      end
    end

    # Operation Parser for RegisterActivityType
    class RegisterActivityType
      def self.parse(http_resp)
        data = Types::RegisterActivityTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TypeAlreadyExistsFault
    class TypeAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::TypeAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RegisterDomain
    class RegisterDomain
      def self.parse(http_resp)
        data = Types::RegisterDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TooManyTagsFault
    class TooManyTagsFault
      def self.parse(http_resp)
        data = Types::TooManyTagsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DomainAlreadyExistsFault
    class DomainAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DomainAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RegisterWorkflowType
    class RegisterWorkflowType
      def self.parse(http_resp)
        data = Types::RegisterWorkflowTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RequestCancelWorkflowExecution
    class RequestCancelWorkflowExecution
      def self.parse(http_resp)
        data = Types::RequestCancelWorkflowExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RespondActivityTaskCanceled
    class RespondActivityTaskCanceled
      def self.parse(http_resp)
        data = Types::RespondActivityTaskCanceledOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RespondActivityTaskCompleted
    class RespondActivityTaskCompleted
      def self.parse(http_resp)
        data = Types::RespondActivityTaskCompletedOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RespondActivityTaskFailed
    class RespondActivityTaskFailed
      def self.parse(http_resp)
        data = Types::RespondActivityTaskFailedOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RespondDecisionTaskCompleted
    class RespondDecisionTaskCompleted
      def self.parse(http_resp)
        data = Types::RespondDecisionTaskCompletedOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SignalWorkflowExecution
    class SignalWorkflowExecution
      def self.parse(http_resp)
        data = Types::SignalWorkflowExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartWorkflowExecution
    class StartWorkflowExecution
      def self.parse(http_resp)
        data = Types::StartWorkflowExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.run_id = map['runId']
        data
      end
    end

    # Error Parser for WorkflowExecutionAlreadyStartedFault
    class WorkflowExecutionAlreadyStartedFault
      def self.parse(http_resp)
        data = Types::WorkflowExecutionAlreadyStartedFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DefaultUndefinedFault
    class DefaultUndefinedFault
      def self.parse(http_resp)
        data = Types::DefaultUndefinedFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TerminateWorkflowExecution
    class TerminateWorkflowExecution
      def self.parse(http_resp)
        data = Types::TerminateWorkflowExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UndeprecateActivityType
    class UndeprecateActivityType
      def self.parse(http_resp)
        data = Types::UndeprecateActivityTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UndeprecateDomain
    class UndeprecateDomain
      def self.parse(http_resp)
        data = Types::UndeprecateDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UndeprecateWorkflowType
    class UndeprecateWorkflowType
      def self.parse(http_resp)
        data = Types::UndeprecateWorkflowTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
