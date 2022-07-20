# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SFN
  module Parsers

    # Operation Parser for CreateActivity
    class CreateActivity
      def self.parse(http_resp)
        data = Types::CreateActivityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.activity_arn = map['activityArn']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data
      end
    end

    # Error Parser for ActivityLimitExceeded
    class ActivityLimitExceeded
      def self.parse(http_resp)
        data = Types::ActivityLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidName
    class InvalidName
      def self.parse(http_resp)
        data = Types::InvalidName.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TooManyTags
    class TooManyTags
      def self.parse(http_resp)
        data = Types::TooManyTags.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_name = map['resourceName']
        data
      end
    end

    # Operation Parser for CreateStateMachine
    class CreateStateMachine
      def self.parse(http_resp)
        data = Types::CreateStateMachineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.state_machine_arn = map['stateMachineArn']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data
      end
    end

    # Error Parser for InvalidArn
    class InvalidArn
      def self.parse(http_resp)
        data = Types::InvalidArn.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDefinition
    class InvalidDefinition
      def self.parse(http_resp)
        data = Types::InvalidDefinition.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidLoggingConfiguration
    class InvalidLoggingConfiguration
      def self.parse(http_resp)
        data = Types::InvalidLoggingConfiguration.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTracingConfiguration
    class InvalidTracingConfiguration
      def self.parse(http_resp)
        data = Types::InvalidTracingConfiguration.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for StateMachineAlreadyExists
    class StateMachineAlreadyExists
      def self.parse(http_resp)
        data = Types::StateMachineAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for StateMachineDeleting
    class StateMachineDeleting
      def self.parse(http_resp)
        data = Types::StateMachineDeleting.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for StateMachineLimitExceeded
    class StateMachineLimitExceeded
      def self.parse(http_resp)
        data = Types::StateMachineLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for StateMachineTypeNotSupported
    class StateMachineTypeNotSupported
      def self.parse(http_resp)
        data = Types::StateMachineTypeNotSupported.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteActivity
    class DeleteActivity
      def self.parse(http_resp)
        data = Types::DeleteActivityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteStateMachine
    class DeleteStateMachine
      def self.parse(http_resp)
        data = Types::DeleteStateMachineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeActivity
    class DescribeActivity
      def self.parse(http_resp)
        data = Types::DescribeActivityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.activity_arn = map['activityArn']
        data.name = map['name']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data
      end
    end

    # Error Parser for ActivityDoesNotExist
    class ActivityDoesNotExist
      def self.parse(http_resp)
        data = Types::ActivityDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeExecution
    class DescribeExecution
      def self.parse(http_resp)
        data = Types::DescribeExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.execution_arn = map['executionArn']
        data.state_machine_arn = map['stateMachineArn']
        data.name = map['name']
        data.status = map['status']
        data.start_date = Time.at(map['startDate'].to_i) if map['startDate']
        data.stop_date = Time.at(map['stopDate'].to_i) if map['stopDate']
        data.input = map['input']
        data.input_details = (CloudWatchEventsExecutionDataDetails.parse(map['inputDetails']) unless map['inputDetails'].nil?)
        data.output = map['output']
        data.output_details = (CloudWatchEventsExecutionDataDetails.parse(map['outputDetails']) unless map['outputDetails'].nil?)
        data.trace_header = map['traceHeader']
        data
      end
    end

    class CloudWatchEventsExecutionDataDetails
      def self.parse(map)
        data = Types::CloudWatchEventsExecutionDataDetails.new
        data.included = map['included']
        return data
      end
    end

    # Error Parser for ExecutionDoesNotExist
    class ExecutionDoesNotExist
      def self.parse(http_resp)
        data = Types::ExecutionDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeStateMachine
    class DescribeStateMachine
      def self.parse(http_resp)
        data = Types::DescribeStateMachineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.state_machine_arn = map['stateMachineArn']
        data.name = map['name']
        data.status = map['status']
        data.definition = map['definition']
        data.role_arn = map['roleArn']
        data.type = map['type']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.logging_configuration = (LoggingConfiguration.parse(map['loggingConfiguration']) unless map['loggingConfiguration'].nil?)
        data.tracing_configuration = (TracingConfiguration.parse(map['tracingConfiguration']) unless map['tracingConfiguration'].nil?)
        data
      end
    end

    class TracingConfiguration
      def self.parse(map)
        data = Types::TracingConfiguration.new
        data.enabled = map['enabled']
        return data
      end
    end

    class LoggingConfiguration
      def self.parse(map)
        data = Types::LoggingConfiguration.new
        data.level = map['level']
        data.include_execution_data = map['includeExecutionData']
        data.destinations = (LogDestinationList.parse(map['destinations']) unless map['destinations'].nil?)
        return data
      end
    end

    class LogDestinationList
      def self.parse(list)
        list.map do |value|
          LogDestination.parse(value) unless value.nil?
        end
      end
    end

    class LogDestination
      def self.parse(map)
        data = Types::LogDestination.new
        data.cloud_watch_logs_log_group = (CloudWatchLogsLogGroup.parse(map['cloudWatchLogsLogGroup']) unless map['cloudWatchLogsLogGroup'].nil?)
        return data
      end
    end

    class CloudWatchLogsLogGroup
      def self.parse(map)
        data = Types::CloudWatchLogsLogGroup.new
        data.log_group_arn = map['logGroupArn']
        return data
      end
    end

    # Error Parser for StateMachineDoesNotExist
    class StateMachineDoesNotExist
      def self.parse(http_resp)
        data = Types::StateMachineDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeStateMachineForExecution
    class DescribeStateMachineForExecution
      def self.parse(http_resp)
        data = Types::DescribeStateMachineForExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.state_machine_arn = map['stateMachineArn']
        data.name = map['name']
        data.definition = map['definition']
        data.role_arn = map['roleArn']
        data.update_date = Time.at(map['updateDate'].to_i) if map['updateDate']
        data.logging_configuration = (LoggingConfiguration.parse(map['loggingConfiguration']) unless map['loggingConfiguration'].nil?)
        data.tracing_configuration = (TracingConfiguration.parse(map['tracingConfiguration']) unless map['tracingConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for GetActivityTask
    class GetActivityTask
      def self.parse(http_resp)
        data = Types::GetActivityTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_token = map['taskToken']
        data.input = map['input']
        data
      end
    end

    # Error Parser for ActivityWorkerLimitExceeded
    class ActivityWorkerLimitExceeded
      def self.parse(http_resp)
        data = Types::ActivityWorkerLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetExecutionHistory
    class GetExecutionHistory
      def self.parse(http_resp)
        data = Types::GetExecutionHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events = (HistoryEventList.parse(map['events']) unless map['events'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class HistoryEventList
      def self.parse(list)
        list.map do |value|
          HistoryEvent.parse(value) unless value.nil?
        end
      end
    end

    class HistoryEvent
      def self.parse(map)
        data = Types::HistoryEvent.new
        data.timestamp = Time.at(map['timestamp'].to_i) if map['timestamp']
        data.type = map['type']
        data.id = map['id']
        data.previous_event_id = map['previousEventId']
        data.activity_failed_event_details = (ActivityFailedEventDetails.parse(map['activityFailedEventDetails']) unless map['activityFailedEventDetails'].nil?)
        data.activity_schedule_failed_event_details = (ActivityScheduleFailedEventDetails.parse(map['activityScheduleFailedEventDetails']) unless map['activityScheduleFailedEventDetails'].nil?)
        data.activity_scheduled_event_details = (ActivityScheduledEventDetails.parse(map['activityScheduledEventDetails']) unless map['activityScheduledEventDetails'].nil?)
        data.activity_started_event_details = (ActivityStartedEventDetails.parse(map['activityStartedEventDetails']) unless map['activityStartedEventDetails'].nil?)
        data.activity_succeeded_event_details = (ActivitySucceededEventDetails.parse(map['activitySucceededEventDetails']) unless map['activitySucceededEventDetails'].nil?)
        data.activity_timed_out_event_details = (ActivityTimedOutEventDetails.parse(map['activityTimedOutEventDetails']) unless map['activityTimedOutEventDetails'].nil?)
        data.task_failed_event_details = (TaskFailedEventDetails.parse(map['taskFailedEventDetails']) unless map['taskFailedEventDetails'].nil?)
        data.task_scheduled_event_details = (TaskScheduledEventDetails.parse(map['taskScheduledEventDetails']) unless map['taskScheduledEventDetails'].nil?)
        data.task_start_failed_event_details = (TaskStartFailedEventDetails.parse(map['taskStartFailedEventDetails']) unless map['taskStartFailedEventDetails'].nil?)
        data.task_started_event_details = (TaskStartedEventDetails.parse(map['taskStartedEventDetails']) unless map['taskStartedEventDetails'].nil?)
        data.task_submit_failed_event_details = (TaskSubmitFailedEventDetails.parse(map['taskSubmitFailedEventDetails']) unless map['taskSubmitFailedEventDetails'].nil?)
        data.task_submitted_event_details = (TaskSubmittedEventDetails.parse(map['taskSubmittedEventDetails']) unless map['taskSubmittedEventDetails'].nil?)
        data.task_succeeded_event_details = (TaskSucceededEventDetails.parse(map['taskSucceededEventDetails']) unless map['taskSucceededEventDetails'].nil?)
        data.task_timed_out_event_details = (TaskTimedOutEventDetails.parse(map['taskTimedOutEventDetails']) unless map['taskTimedOutEventDetails'].nil?)
        data.execution_failed_event_details = (ExecutionFailedEventDetails.parse(map['executionFailedEventDetails']) unless map['executionFailedEventDetails'].nil?)
        data.execution_started_event_details = (ExecutionStartedEventDetails.parse(map['executionStartedEventDetails']) unless map['executionStartedEventDetails'].nil?)
        data.execution_succeeded_event_details = (ExecutionSucceededEventDetails.parse(map['executionSucceededEventDetails']) unless map['executionSucceededEventDetails'].nil?)
        data.execution_aborted_event_details = (ExecutionAbortedEventDetails.parse(map['executionAbortedEventDetails']) unless map['executionAbortedEventDetails'].nil?)
        data.execution_timed_out_event_details = (ExecutionTimedOutEventDetails.parse(map['executionTimedOutEventDetails']) unless map['executionTimedOutEventDetails'].nil?)
        data.map_state_started_event_details = (MapStateStartedEventDetails.parse(map['mapStateStartedEventDetails']) unless map['mapStateStartedEventDetails'].nil?)
        data.map_iteration_started_event_details = (MapIterationEventDetails.parse(map['mapIterationStartedEventDetails']) unless map['mapIterationStartedEventDetails'].nil?)
        data.map_iteration_succeeded_event_details = (MapIterationEventDetails.parse(map['mapIterationSucceededEventDetails']) unless map['mapIterationSucceededEventDetails'].nil?)
        data.map_iteration_failed_event_details = (MapIterationEventDetails.parse(map['mapIterationFailedEventDetails']) unless map['mapIterationFailedEventDetails'].nil?)
        data.map_iteration_aborted_event_details = (MapIterationEventDetails.parse(map['mapIterationAbortedEventDetails']) unless map['mapIterationAbortedEventDetails'].nil?)
        data.lambda_function_failed_event_details = (LambdaFunctionFailedEventDetails.parse(map['lambdaFunctionFailedEventDetails']) unless map['lambdaFunctionFailedEventDetails'].nil?)
        data.lambda_function_schedule_failed_event_details = (LambdaFunctionScheduleFailedEventDetails.parse(map['lambdaFunctionScheduleFailedEventDetails']) unless map['lambdaFunctionScheduleFailedEventDetails'].nil?)
        data.lambda_function_scheduled_event_details = (LambdaFunctionScheduledEventDetails.parse(map['lambdaFunctionScheduledEventDetails']) unless map['lambdaFunctionScheduledEventDetails'].nil?)
        data.lambda_function_start_failed_event_details = (LambdaFunctionStartFailedEventDetails.parse(map['lambdaFunctionStartFailedEventDetails']) unless map['lambdaFunctionStartFailedEventDetails'].nil?)
        data.lambda_function_succeeded_event_details = (LambdaFunctionSucceededEventDetails.parse(map['lambdaFunctionSucceededEventDetails']) unless map['lambdaFunctionSucceededEventDetails'].nil?)
        data.lambda_function_timed_out_event_details = (LambdaFunctionTimedOutEventDetails.parse(map['lambdaFunctionTimedOutEventDetails']) unless map['lambdaFunctionTimedOutEventDetails'].nil?)
        data.state_entered_event_details = (StateEnteredEventDetails.parse(map['stateEnteredEventDetails']) unless map['stateEnteredEventDetails'].nil?)
        data.state_exited_event_details = (StateExitedEventDetails.parse(map['stateExitedEventDetails']) unless map['stateExitedEventDetails'].nil?)
        return data
      end
    end

    class StateExitedEventDetails
      def self.parse(map)
        data = Types::StateExitedEventDetails.new
        data.name = map['name']
        data.output = map['output']
        data.output_details = (HistoryEventExecutionDataDetails.parse(map['outputDetails']) unless map['outputDetails'].nil?)
        return data
      end
    end

    class HistoryEventExecutionDataDetails
      def self.parse(map)
        data = Types::HistoryEventExecutionDataDetails.new
        data.truncated = map['truncated']
        return data
      end
    end

    class StateEnteredEventDetails
      def self.parse(map)
        data = Types::StateEnteredEventDetails.new
        data.name = map['name']
        data.input = map['input']
        data.input_details = (HistoryEventExecutionDataDetails.parse(map['inputDetails']) unless map['inputDetails'].nil?)
        return data
      end
    end

    class LambdaFunctionTimedOutEventDetails
      def self.parse(map)
        data = Types::LambdaFunctionTimedOutEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class LambdaFunctionSucceededEventDetails
      def self.parse(map)
        data = Types::LambdaFunctionSucceededEventDetails.new
        data.output = map['output']
        data.output_details = (HistoryEventExecutionDataDetails.parse(map['outputDetails']) unless map['outputDetails'].nil?)
        return data
      end
    end

    class LambdaFunctionStartFailedEventDetails
      def self.parse(map)
        data = Types::LambdaFunctionStartFailedEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class LambdaFunctionScheduledEventDetails
      def self.parse(map)
        data = Types::LambdaFunctionScheduledEventDetails.new
        data.resource = map['resource']
        data.input = map['input']
        data.input_details = (HistoryEventExecutionDataDetails.parse(map['inputDetails']) unless map['inputDetails'].nil?)
        data.timeout_in_seconds = map['timeoutInSeconds']
        return data
      end
    end

    class LambdaFunctionScheduleFailedEventDetails
      def self.parse(map)
        data = Types::LambdaFunctionScheduleFailedEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class LambdaFunctionFailedEventDetails
      def self.parse(map)
        data = Types::LambdaFunctionFailedEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class MapIterationEventDetails
      def self.parse(map)
        data = Types::MapIterationEventDetails.new
        data.name = map['name']
        data.index = map['index']
        return data
      end
    end

    class MapStateStartedEventDetails
      def self.parse(map)
        data = Types::MapStateStartedEventDetails.new
        data.length = map['length']
        return data
      end
    end

    class ExecutionTimedOutEventDetails
      def self.parse(map)
        data = Types::ExecutionTimedOutEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class ExecutionAbortedEventDetails
      def self.parse(map)
        data = Types::ExecutionAbortedEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class ExecutionSucceededEventDetails
      def self.parse(map)
        data = Types::ExecutionSucceededEventDetails.new
        data.output = map['output']
        data.output_details = (HistoryEventExecutionDataDetails.parse(map['outputDetails']) unless map['outputDetails'].nil?)
        return data
      end
    end

    class ExecutionStartedEventDetails
      def self.parse(map)
        data = Types::ExecutionStartedEventDetails.new
        data.input = map['input']
        data.input_details = (HistoryEventExecutionDataDetails.parse(map['inputDetails']) unless map['inputDetails'].nil?)
        data.role_arn = map['roleArn']
        return data
      end
    end

    class ExecutionFailedEventDetails
      def self.parse(map)
        data = Types::ExecutionFailedEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class TaskTimedOutEventDetails
      def self.parse(map)
        data = Types::TaskTimedOutEventDetails.new
        data.resource_type = map['resourceType']
        data.resource = map['resource']
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class TaskSucceededEventDetails
      def self.parse(map)
        data = Types::TaskSucceededEventDetails.new
        data.resource_type = map['resourceType']
        data.resource = map['resource']
        data.output = map['output']
        data.output_details = (HistoryEventExecutionDataDetails.parse(map['outputDetails']) unless map['outputDetails'].nil?)
        return data
      end
    end

    class TaskSubmittedEventDetails
      def self.parse(map)
        data = Types::TaskSubmittedEventDetails.new
        data.resource_type = map['resourceType']
        data.resource = map['resource']
        data.output = map['output']
        data.output_details = (HistoryEventExecutionDataDetails.parse(map['outputDetails']) unless map['outputDetails'].nil?)
        return data
      end
    end

    class TaskSubmitFailedEventDetails
      def self.parse(map)
        data = Types::TaskSubmitFailedEventDetails.new
        data.resource_type = map['resourceType']
        data.resource = map['resource']
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class TaskStartedEventDetails
      def self.parse(map)
        data = Types::TaskStartedEventDetails.new
        data.resource_type = map['resourceType']
        data.resource = map['resource']
        return data
      end
    end

    class TaskStartFailedEventDetails
      def self.parse(map)
        data = Types::TaskStartFailedEventDetails.new
        data.resource_type = map['resourceType']
        data.resource = map['resource']
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class TaskScheduledEventDetails
      def self.parse(map)
        data = Types::TaskScheduledEventDetails.new
        data.resource_type = map['resourceType']
        data.resource = map['resource']
        data.region = map['region']
        data.parameters = map['parameters']
        data.timeout_in_seconds = map['timeoutInSeconds']
        data.heartbeat_in_seconds = map['heartbeatInSeconds']
        return data
      end
    end

    class TaskFailedEventDetails
      def self.parse(map)
        data = Types::TaskFailedEventDetails.new
        data.resource_type = map['resourceType']
        data.resource = map['resource']
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class ActivityTimedOutEventDetails
      def self.parse(map)
        data = Types::ActivityTimedOutEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class ActivitySucceededEventDetails
      def self.parse(map)
        data = Types::ActivitySucceededEventDetails.new
        data.output = map['output']
        data.output_details = (HistoryEventExecutionDataDetails.parse(map['outputDetails']) unless map['outputDetails'].nil?)
        return data
      end
    end

    class ActivityStartedEventDetails
      def self.parse(map)
        data = Types::ActivityStartedEventDetails.new
        data.worker_name = map['workerName']
        return data
      end
    end

    class ActivityScheduledEventDetails
      def self.parse(map)
        data = Types::ActivityScheduledEventDetails.new
        data.resource = map['resource']
        data.input = map['input']
        data.input_details = (HistoryEventExecutionDataDetails.parse(map['inputDetails']) unless map['inputDetails'].nil?)
        data.timeout_in_seconds = map['timeoutInSeconds']
        data.heartbeat_in_seconds = map['heartbeatInSeconds']
        return data
      end
    end

    class ActivityScheduleFailedEventDetails
      def self.parse(map)
        data = Types::ActivityScheduleFailedEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    class ActivityFailedEventDetails
      def self.parse(map)
        data = Types::ActivityFailedEventDetails.new
        data.error = map['error']
        data.cause = map['cause']
        return data
      end
    end

    # Error Parser for InvalidToken
    class InvalidToken
      def self.parse(http_resp)
        data = Types::InvalidToken.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListActivities
    class ListActivities
      def self.parse(http_resp)
        data = Types::ListActivitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.activities = (ActivityList.parse(map['activities']) unless map['activities'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ActivityList
      def self.parse(list)
        list.map do |value|
          ActivityListItem.parse(value) unless value.nil?
        end
      end
    end

    class ActivityListItem
      def self.parse(map)
        data = Types::ActivityListItem.new
        data.activity_arn = map['activityArn']
        data.name = map['name']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    # Operation Parser for ListExecutions
    class ListExecutions
      def self.parse(http_resp)
        data = Types::ListExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.executions = (ExecutionList.parse(map['executions']) unless map['executions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ExecutionList
      def self.parse(list)
        list.map do |value|
          ExecutionListItem.parse(value) unless value.nil?
        end
      end
    end

    class ExecutionListItem
      def self.parse(map)
        data = Types::ExecutionListItem.new
        data.execution_arn = map['executionArn']
        data.state_machine_arn = map['stateMachineArn']
        data.name = map['name']
        data.status = map['status']
        data.start_date = Time.at(map['startDate'].to_i) if map['startDate']
        data.stop_date = Time.at(map['stopDate'].to_i) if map['stopDate']
        return data
      end
    end

    # Operation Parser for ListStateMachines
    class ListStateMachines
      def self.parse(http_resp)
        data = Types::ListStateMachinesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.state_machines = (StateMachineList.parse(map['stateMachines']) unless map['stateMachines'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class StateMachineList
      def self.parse(list)
        list.map do |value|
          StateMachineListItem.parse(value) unless value.nil?
        end
      end
    end

    class StateMachineListItem
      def self.parse(map)
        data = Types::StateMachineListItem.new
        data.state_machine_arn = map['stateMachineArn']
        data.name = map['name']
        data.type = map['type']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Error Parser for ResourceNotFound
    class ResourceNotFound
      def self.parse(http_resp)
        data = Types::ResourceNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_name = map['resourceName']
        data
      end
    end

    # Operation Parser for SendTaskFailure
    class SendTaskFailure
      def self.parse(http_resp)
        data = Types::SendTaskFailureOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TaskDoesNotExist
    class TaskDoesNotExist
      def self.parse(http_resp)
        data = Types::TaskDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TaskTimedOut
    class TaskTimedOut
      def self.parse(http_resp)
        data = Types::TaskTimedOut.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for SendTaskHeartbeat
    class SendTaskHeartbeat
      def self.parse(http_resp)
        data = Types::SendTaskHeartbeatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SendTaskSuccess
    class SendTaskSuccess
      def self.parse(http_resp)
        data = Types::SendTaskSuccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidOutput
    class InvalidOutput
      def self.parse(http_resp)
        data = Types::InvalidOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StartExecution
    class StartExecution
      def self.parse(http_resp)
        data = Types::StartExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.execution_arn = map['executionArn']
        data.start_date = Time.at(map['startDate'].to_i) if map['startDate']
        data
      end
    end

    # Error Parser for ExecutionAlreadyExists
    class ExecutionAlreadyExists
      def self.parse(http_resp)
        data = Types::ExecutionAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ExecutionLimitExceeded
    class ExecutionLimitExceeded
      def self.parse(http_resp)
        data = Types::ExecutionLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidExecutionInput
    class InvalidExecutionInput
      def self.parse(http_resp)
        data = Types::InvalidExecutionInput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StartSyncExecution
    class StartSyncExecution
      def self.parse(http_resp)
        data = Types::StartSyncExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.execution_arn = map['executionArn']
        data.state_machine_arn = map['stateMachineArn']
        data.name = map['name']
        data.start_date = Time.at(map['startDate'].to_i) if map['startDate']
        data.stop_date = Time.at(map['stopDate'].to_i) if map['stopDate']
        data.status = map['status']
        data.error = map['error']
        data.cause = map['cause']
        data.input = map['input']
        data.input_details = (CloudWatchEventsExecutionDataDetails.parse(map['inputDetails']) unless map['inputDetails'].nil?)
        data.output = map['output']
        data.output_details = (CloudWatchEventsExecutionDataDetails.parse(map['outputDetails']) unless map['outputDetails'].nil?)
        data.trace_header = map['traceHeader']
        data.billing_details = (BillingDetails.parse(map['billingDetails']) unless map['billingDetails'].nil?)
        data
      end
    end

    class BillingDetails
      def self.parse(map)
        data = Types::BillingDetails.new
        data.billed_memory_used_in_mb = map['billedMemoryUsedInMB']
        data.billed_duration_in_milliseconds = map['billedDurationInMilliseconds']
        return data
      end
    end

    # Operation Parser for StopExecution
    class StopExecution
      def self.parse(http_resp)
        data = Types::StopExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stop_date = Time.at(map['stopDate'].to_i) if map['stopDate']
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

    # Operation Parser for UpdateStateMachine
    class UpdateStateMachine
      def self.parse(http_resp)
        data = Types::UpdateStateMachineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_date = Time.at(map['updateDate'].to_i) if map['updateDate']
        data
      end
    end

    # Error Parser for MissingRequiredParameter
    class MissingRequiredParameter
      def self.parse(http_resp)
        data = Types::MissingRequiredParameter.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end
  end
end
