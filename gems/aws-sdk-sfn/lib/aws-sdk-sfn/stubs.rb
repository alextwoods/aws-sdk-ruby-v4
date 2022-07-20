# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SFN
  module Stubs

    # Operation Stubber for CreateActivity
    class CreateActivity
      def self.default(visited=[])
        {
          activity_arn: 'activity_arn',
          creation_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['activityArn'] = stub[:activity_arn] unless stub[:activity_arn].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStateMachine
    class CreateStateMachine
      def self.default(visited=[])
        {
          state_machine_arn: 'state_machine_arn',
          creation_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['stateMachineArn'] = stub[:state_machine_arn] unless stub[:state_machine_arn].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteActivity
    class DeleteActivity
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStateMachine
    class DeleteStateMachine
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeActivity
    class DescribeActivity
      def self.default(visited=[])
        {
          activity_arn: 'activity_arn',
          name: 'name',
          creation_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['activityArn'] = stub[:activity_arn] unless stub[:activity_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeExecution
    class DescribeExecution
      def self.default(visited=[])
        {
          execution_arn: 'execution_arn',
          state_machine_arn: 'state_machine_arn',
          name: 'name',
          status: 'status',
          start_date: Time.now,
          stop_date: Time.now,
          input: 'input',
          input_details: CloudWatchEventsExecutionDataDetails.default(visited),
          output: 'output',
          output_details: CloudWatchEventsExecutionDataDetails.default(visited),
          trace_header: 'trace_header',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['executionArn'] = stub[:execution_arn] unless stub[:execution_arn].nil?
        data['stateMachineArn'] = stub[:state_machine_arn] unless stub[:state_machine_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        data['stopDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_date]).to_i unless stub[:stop_date].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['inputDetails'] = Stubs::CloudWatchEventsExecutionDataDetails.stub(stub[:input_details]) unless stub[:input_details].nil?
        data['output'] = stub[:output] unless stub[:output].nil?
        data['outputDetails'] = Stubs::CloudWatchEventsExecutionDataDetails.stub(stub[:output_details]) unless stub[:output_details].nil?
        data['traceHeader'] = stub[:trace_header] unless stub[:trace_header].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CloudWatchEventsExecutionDataDetails
    class CloudWatchEventsExecutionDataDetails
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchEventsExecutionDataDetails')
        visited = visited + ['CloudWatchEventsExecutionDataDetails']
        {
          included: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchEventsExecutionDataDetails.new
        data = {}
        data['included'] = stub[:included] unless stub[:included].nil?
        data
      end
    end

    # Operation Stubber for DescribeStateMachine
    class DescribeStateMachine
      def self.default(visited=[])
        {
          state_machine_arn: 'state_machine_arn',
          name: 'name',
          status: 'status',
          definition: 'definition',
          role_arn: 'role_arn',
          type: 'type',
          creation_date: Time.now,
          logging_configuration: LoggingConfiguration.default(visited),
          tracing_configuration: TracingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['stateMachineArn'] = stub[:state_machine_arn] unless stub[:state_machine_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['definition'] = stub[:definition] unless stub[:definition].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['loggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        data['tracingConfiguration'] = Stubs::TracingConfiguration.stub(stub[:tracing_configuration]) unless stub[:tracing_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TracingConfiguration
    class TracingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TracingConfiguration')
        visited = visited + ['TracingConfiguration']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TracingConfiguration.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for LoggingConfiguration
    class LoggingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfiguration')
        visited = visited + ['LoggingConfiguration']
        {
          level: 'level',
          include_execution_data: false,
          destinations: LogDestinationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingConfiguration.new
        data = {}
        data['level'] = stub[:level] unless stub[:level].nil?
        data['includeExecutionData'] = stub[:include_execution_data] unless stub[:include_execution_data].nil?
        data['destinations'] = Stubs::LogDestinationList.stub(stub[:destinations]) unless stub[:destinations].nil?
        data
      end
    end

    # List Stubber for LogDestinationList
    class LogDestinationList
      def self.default(visited=[])
        return nil if visited.include?('LogDestinationList')
        visited = visited + ['LogDestinationList']
        [
          LogDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LogDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogDestination
    class LogDestination
      def self.default(visited=[])
        return nil if visited.include?('LogDestination')
        visited = visited + ['LogDestination']
        {
          cloud_watch_logs_log_group: CloudWatchLogsLogGroup.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogDestination.new
        data = {}
        data['cloudWatchLogsLogGroup'] = Stubs::CloudWatchLogsLogGroup.stub(stub[:cloud_watch_logs_log_group]) unless stub[:cloud_watch_logs_log_group].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchLogsLogGroup
    class CloudWatchLogsLogGroup
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogsLogGroup')
        visited = visited + ['CloudWatchLogsLogGroup']
        {
          log_group_arn: 'log_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLogsLogGroup.new
        data = {}
        data['logGroupArn'] = stub[:log_group_arn] unless stub[:log_group_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeStateMachineForExecution
    class DescribeStateMachineForExecution
      def self.default(visited=[])
        {
          state_machine_arn: 'state_machine_arn',
          name: 'name',
          definition: 'definition',
          role_arn: 'role_arn',
          update_date: Time.now,
          logging_configuration: LoggingConfiguration.default(visited),
          tracing_configuration: TracingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['stateMachineArn'] = stub[:state_machine_arn] unless stub[:state_machine_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['definition'] = stub[:definition] unless stub[:definition].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['updateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date]).to_i unless stub[:update_date].nil?
        data['loggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        data['tracingConfiguration'] = Stubs::TracingConfiguration.stub(stub[:tracing_configuration]) unless stub[:tracing_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetActivityTask
    class GetActivityTask
      def self.default(visited=[])
        {
          task_token: 'task_token',
          input: 'input',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskToken'] = stub[:task_token] unless stub[:task_token].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetExecutionHistory
    class GetExecutionHistory
      def self.default(visited=[])
        {
          events: HistoryEventList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['events'] = Stubs::HistoryEventList.stub(stub[:events]) unless stub[:events].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for HistoryEventList
    class HistoryEventList
      def self.default(visited=[])
        return nil if visited.include?('HistoryEventList')
        visited = visited + ['HistoryEventList']
        [
          HistoryEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HistoryEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HistoryEvent
    class HistoryEvent
      def self.default(visited=[])
        return nil if visited.include?('HistoryEvent')
        visited = visited + ['HistoryEvent']
        {
          timestamp: Time.now,
          type: 'type',
          id: 1,
          previous_event_id: 1,
          activity_failed_event_details: ActivityFailedEventDetails.default(visited),
          activity_schedule_failed_event_details: ActivityScheduleFailedEventDetails.default(visited),
          activity_scheduled_event_details: ActivityScheduledEventDetails.default(visited),
          activity_started_event_details: ActivityStartedEventDetails.default(visited),
          activity_succeeded_event_details: ActivitySucceededEventDetails.default(visited),
          activity_timed_out_event_details: ActivityTimedOutEventDetails.default(visited),
          task_failed_event_details: TaskFailedEventDetails.default(visited),
          task_scheduled_event_details: TaskScheduledEventDetails.default(visited),
          task_start_failed_event_details: TaskStartFailedEventDetails.default(visited),
          task_started_event_details: TaskStartedEventDetails.default(visited),
          task_submit_failed_event_details: TaskSubmitFailedEventDetails.default(visited),
          task_submitted_event_details: TaskSubmittedEventDetails.default(visited),
          task_succeeded_event_details: TaskSucceededEventDetails.default(visited),
          task_timed_out_event_details: TaskTimedOutEventDetails.default(visited),
          execution_failed_event_details: ExecutionFailedEventDetails.default(visited),
          execution_started_event_details: ExecutionStartedEventDetails.default(visited),
          execution_succeeded_event_details: ExecutionSucceededEventDetails.default(visited),
          execution_aborted_event_details: ExecutionAbortedEventDetails.default(visited),
          execution_timed_out_event_details: ExecutionTimedOutEventDetails.default(visited),
          map_state_started_event_details: MapStateStartedEventDetails.default(visited),
          map_iteration_started_event_details: MapIterationEventDetails.default(visited),
          map_iteration_succeeded_event_details: MapIterationEventDetails.default(visited),
          map_iteration_failed_event_details: MapIterationEventDetails.default(visited),
          map_iteration_aborted_event_details: MapIterationEventDetails.default(visited),
          lambda_function_failed_event_details: LambdaFunctionFailedEventDetails.default(visited),
          lambda_function_schedule_failed_event_details: LambdaFunctionScheduleFailedEventDetails.default(visited),
          lambda_function_scheduled_event_details: LambdaFunctionScheduledEventDetails.default(visited),
          lambda_function_start_failed_event_details: LambdaFunctionStartFailedEventDetails.default(visited),
          lambda_function_succeeded_event_details: LambdaFunctionSucceededEventDetails.default(visited),
          lambda_function_timed_out_event_details: LambdaFunctionTimedOutEventDetails.default(visited),
          state_entered_event_details: StateEnteredEventDetails.default(visited),
          state_exited_event_details: StateExitedEventDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HistoryEvent.new
        data = {}
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['previousEventId'] = stub[:previous_event_id] unless stub[:previous_event_id].nil?
        data['activityFailedEventDetails'] = Stubs::ActivityFailedEventDetails.stub(stub[:activity_failed_event_details]) unless stub[:activity_failed_event_details].nil?
        data['activityScheduleFailedEventDetails'] = Stubs::ActivityScheduleFailedEventDetails.stub(stub[:activity_schedule_failed_event_details]) unless stub[:activity_schedule_failed_event_details].nil?
        data['activityScheduledEventDetails'] = Stubs::ActivityScheduledEventDetails.stub(stub[:activity_scheduled_event_details]) unless stub[:activity_scheduled_event_details].nil?
        data['activityStartedEventDetails'] = Stubs::ActivityStartedEventDetails.stub(stub[:activity_started_event_details]) unless stub[:activity_started_event_details].nil?
        data['activitySucceededEventDetails'] = Stubs::ActivitySucceededEventDetails.stub(stub[:activity_succeeded_event_details]) unless stub[:activity_succeeded_event_details].nil?
        data['activityTimedOutEventDetails'] = Stubs::ActivityTimedOutEventDetails.stub(stub[:activity_timed_out_event_details]) unless stub[:activity_timed_out_event_details].nil?
        data['taskFailedEventDetails'] = Stubs::TaskFailedEventDetails.stub(stub[:task_failed_event_details]) unless stub[:task_failed_event_details].nil?
        data['taskScheduledEventDetails'] = Stubs::TaskScheduledEventDetails.stub(stub[:task_scheduled_event_details]) unless stub[:task_scheduled_event_details].nil?
        data['taskStartFailedEventDetails'] = Stubs::TaskStartFailedEventDetails.stub(stub[:task_start_failed_event_details]) unless stub[:task_start_failed_event_details].nil?
        data['taskStartedEventDetails'] = Stubs::TaskStartedEventDetails.stub(stub[:task_started_event_details]) unless stub[:task_started_event_details].nil?
        data['taskSubmitFailedEventDetails'] = Stubs::TaskSubmitFailedEventDetails.stub(stub[:task_submit_failed_event_details]) unless stub[:task_submit_failed_event_details].nil?
        data['taskSubmittedEventDetails'] = Stubs::TaskSubmittedEventDetails.stub(stub[:task_submitted_event_details]) unless stub[:task_submitted_event_details].nil?
        data['taskSucceededEventDetails'] = Stubs::TaskSucceededEventDetails.stub(stub[:task_succeeded_event_details]) unless stub[:task_succeeded_event_details].nil?
        data['taskTimedOutEventDetails'] = Stubs::TaskTimedOutEventDetails.stub(stub[:task_timed_out_event_details]) unless stub[:task_timed_out_event_details].nil?
        data['executionFailedEventDetails'] = Stubs::ExecutionFailedEventDetails.stub(stub[:execution_failed_event_details]) unless stub[:execution_failed_event_details].nil?
        data['executionStartedEventDetails'] = Stubs::ExecutionStartedEventDetails.stub(stub[:execution_started_event_details]) unless stub[:execution_started_event_details].nil?
        data['executionSucceededEventDetails'] = Stubs::ExecutionSucceededEventDetails.stub(stub[:execution_succeeded_event_details]) unless stub[:execution_succeeded_event_details].nil?
        data['executionAbortedEventDetails'] = Stubs::ExecutionAbortedEventDetails.stub(stub[:execution_aborted_event_details]) unless stub[:execution_aborted_event_details].nil?
        data['executionTimedOutEventDetails'] = Stubs::ExecutionTimedOutEventDetails.stub(stub[:execution_timed_out_event_details]) unless stub[:execution_timed_out_event_details].nil?
        data['mapStateStartedEventDetails'] = Stubs::MapStateStartedEventDetails.stub(stub[:map_state_started_event_details]) unless stub[:map_state_started_event_details].nil?
        data['mapIterationStartedEventDetails'] = Stubs::MapIterationEventDetails.stub(stub[:map_iteration_started_event_details]) unless stub[:map_iteration_started_event_details].nil?
        data['mapIterationSucceededEventDetails'] = Stubs::MapIterationEventDetails.stub(stub[:map_iteration_succeeded_event_details]) unless stub[:map_iteration_succeeded_event_details].nil?
        data['mapIterationFailedEventDetails'] = Stubs::MapIterationEventDetails.stub(stub[:map_iteration_failed_event_details]) unless stub[:map_iteration_failed_event_details].nil?
        data['mapIterationAbortedEventDetails'] = Stubs::MapIterationEventDetails.stub(stub[:map_iteration_aborted_event_details]) unless stub[:map_iteration_aborted_event_details].nil?
        data['lambdaFunctionFailedEventDetails'] = Stubs::LambdaFunctionFailedEventDetails.stub(stub[:lambda_function_failed_event_details]) unless stub[:lambda_function_failed_event_details].nil?
        data['lambdaFunctionScheduleFailedEventDetails'] = Stubs::LambdaFunctionScheduleFailedEventDetails.stub(stub[:lambda_function_schedule_failed_event_details]) unless stub[:lambda_function_schedule_failed_event_details].nil?
        data['lambdaFunctionScheduledEventDetails'] = Stubs::LambdaFunctionScheduledEventDetails.stub(stub[:lambda_function_scheduled_event_details]) unless stub[:lambda_function_scheduled_event_details].nil?
        data['lambdaFunctionStartFailedEventDetails'] = Stubs::LambdaFunctionStartFailedEventDetails.stub(stub[:lambda_function_start_failed_event_details]) unless stub[:lambda_function_start_failed_event_details].nil?
        data['lambdaFunctionSucceededEventDetails'] = Stubs::LambdaFunctionSucceededEventDetails.stub(stub[:lambda_function_succeeded_event_details]) unless stub[:lambda_function_succeeded_event_details].nil?
        data['lambdaFunctionTimedOutEventDetails'] = Stubs::LambdaFunctionTimedOutEventDetails.stub(stub[:lambda_function_timed_out_event_details]) unless stub[:lambda_function_timed_out_event_details].nil?
        data['stateEnteredEventDetails'] = Stubs::StateEnteredEventDetails.stub(stub[:state_entered_event_details]) unless stub[:state_entered_event_details].nil?
        data['stateExitedEventDetails'] = Stubs::StateExitedEventDetails.stub(stub[:state_exited_event_details]) unless stub[:state_exited_event_details].nil?
        data
      end
    end

    # Structure Stubber for StateExitedEventDetails
    class StateExitedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('StateExitedEventDetails')
        visited = visited + ['StateExitedEventDetails']
        {
          name: 'name',
          output: 'output',
          output_details: HistoryEventExecutionDataDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StateExitedEventDetails.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['output'] = stub[:output] unless stub[:output].nil?
        data['outputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:output_details]) unless stub[:output_details].nil?
        data
      end
    end

    # Structure Stubber for HistoryEventExecutionDataDetails
    class HistoryEventExecutionDataDetails
      def self.default(visited=[])
        return nil if visited.include?('HistoryEventExecutionDataDetails')
        visited = visited + ['HistoryEventExecutionDataDetails']
        {
          truncated: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::HistoryEventExecutionDataDetails.new
        data = {}
        data['truncated'] = stub[:truncated] unless stub[:truncated].nil?
        data
      end
    end

    # Structure Stubber for StateEnteredEventDetails
    class StateEnteredEventDetails
      def self.default(visited=[])
        return nil if visited.include?('StateEnteredEventDetails')
        visited = visited + ['StateEnteredEventDetails']
        {
          name: 'name',
          input: 'input',
          input_details: HistoryEventExecutionDataDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StateEnteredEventDetails.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['inputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:input_details]) unless stub[:input_details].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionTimedOutEventDetails
    class LambdaFunctionTimedOutEventDetails
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionTimedOutEventDetails')
        visited = visited + ['LambdaFunctionTimedOutEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionTimedOutEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionSucceededEventDetails
    class LambdaFunctionSucceededEventDetails
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionSucceededEventDetails')
        visited = visited + ['LambdaFunctionSucceededEventDetails']
        {
          output: 'output',
          output_details: HistoryEventExecutionDataDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionSucceededEventDetails.new
        data = {}
        data['output'] = stub[:output] unless stub[:output].nil?
        data['outputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:output_details]) unless stub[:output_details].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionStartFailedEventDetails
    class LambdaFunctionStartFailedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionStartFailedEventDetails')
        visited = visited + ['LambdaFunctionStartFailedEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionStartFailedEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionScheduledEventDetails
    class LambdaFunctionScheduledEventDetails
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionScheduledEventDetails')
        visited = visited + ['LambdaFunctionScheduledEventDetails']
        {
          resource: 'resource',
          input: 'input',
          input_details: HistoryEventExecutionDataDetails.default(visited),
          timeout_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionScheduledEventDetails.new
        data = {}
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['inputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:input_details]) unless stub[:input_details].nil?
        data['timeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionScheduleFailedEventDetails
    class LambdaFunctionScheduleFailedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionScheduleFailedEventDetails')
        visited = visited + ['LambdaFunctionScheduleFailedEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionScheduleFailedEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionFailedEventDetails
    class LambdaFunctionFailedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionFailedEventDetails')
        visited = visited + ['LambdaFunctionFailedEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionFailedEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for MapIterationEventDetails
    class MapIterationEventDetails
      def self.default(visited=[])
        return nil if visited.include?('MapIterationEventDetails')
        visited = visited + ['MapIterationEventDetails']
        {
          name: 'name',
          index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MapIterationEventDetails.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['index'] = stub[:index] unless stub[:index].nil?
        data
      end
    end

    # Structure Stubber for MapStateStartedEventDetails
    class MapStateStartedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('MapStateStartedEventDetails')
        visited = visited + ['MapStateStartedEventDetails']
        {
          length: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MapStateStartedEventDetails.new
        data = {}
        data['length'] = stub[:length] unless stub[:length].nil?
        data
      end
    end

    # Structure Stubber for ExecutionTimedOutEventDetails
    class ExecutionTimedOutEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ExecutionTimedOutEventDetails')
        visited = visited + ['ExecutionTimedOutEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionTimedOutEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for ExecutionAbortedEventDetails
    class ExecutionAbortedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ExecutionAbortedEventDetails')
        visited = visited + ['ExecutionAbortedEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionAbortedEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for ExecutionSucceededEventDetails
    class ExecutionSucceededEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ExecutionSucceededEventDetails')
        visited = visited + ['ExecutionSucceededEventDetails']
        {
          output: 'output',
          output_details: HistoryEventExecutionDataDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionSucceededEventDetails.new
        data = {}
        data['output'] = stub[:output] unless stub[:output].nil?
        data['outputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:output_details]) unless stub[:output_details].nil?
        data
      end
    end

    # Structure Stubber for ExecutionStartedEventDetails
    class ExecutionStartedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ExecutionStartedEventDetails')
        visited = visited + ['ExecutionStartedEventDetails']
        {
          input: 'input',
          input_details: HistoryEventExecutionDataDetails.default(visited),
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionStartedEventDetails.new
        data = {}
        data['input'] = stub[:input] unless stub[:input].nil?
        data['inputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:input_details]) unless stub[:input_details].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for ExecutionFailedEventDetails
    class ExecutionFailedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ExecutionFailedEventDetails')
        visited = visited + ['ExecutionFailedEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionFailedEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for TaskTimedOutEventDetails
    class TaskTimedOutEventDetails
      def self.default(visited=[])
        return nil if visited.include?('TaskTimedOutEventDetails')
        visited = visited + ['TaskTimedOutEventDetails']
        {
          resource_type: 'resource_type',
          resource: 'resource',
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskTimedOutEventDetails.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for TaskSucceededEventDetails
    class TaskSucceededEventDetails
      def self.default(visited=[])
        return nil if visited.include?('TaskSucceededEventDetails')
        visited = visited + ['TaskSucceededEventDetails']
        {
          resource_type: 'resource_type',
          resource: 'resource',
          output: 'output',
          output_details: HistoryEventExecutionDataDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskSucceededEventDetails.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['output'] = stub[:output] unless stub[:output].nil?
        data['outputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:output_details]) unless stub[:output_details].nil?
        data
      end
    end

    # Structure Stubber for TaskSubmittedEventDetails
    class TaskSubmittedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('TaskSubmittedEventDetails')
        visited = visited + ['TaskSubmittedEventDetails']
        {
          resource_type: 'resource_type',
          resource: 'resource',
          output: 'output',
          output_details: HistoryEventExecutionDataDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskSubmittedEventDetails.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['output'] = stub[:output] unless stub[:output].nil?
        data['outputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:output_details]) unless stub[:output_details].nil?
        data
      end
    end

    # Structure Stubber for TaskSubmitFailedEventDetails
    class TaskSubmitFailedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('TaskSubmitFailedEventDetails')
        visited = visited + ['TaskSubmitFailedEventDetails']
        {
          resource_type: 'resource_type',
          resource: 'resource',
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskSubmitFailedEventDetails.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for TaskStartedEventDetails
    class TaskStartedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('TaskStartedEventDetails')
        visited = visited + ['TaskStartedEventDetails']
        {
          resource_type: 'resource_type',
          resource: 'resource',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskStartedEventDetails.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data
      end
    end

    # Structure Stubber for TaskStartFailedEventDetails
    class TaskStartFailedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('TaskStartFailedEventDetails')
        visited = visited + ['TaskStartFailedEventDetails']
        {
          resource_type: 'resource_type',
          resource: 'resource',
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskStartFailedEventDetails.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for TaskScheduledEventDetails
    class TaskScheduledEventDetails
      def self.default(visited=[])
        return nil if visited.include?('TaskScheduledEventDetails')
        visited = visited + ['TaskScheduledEventDetails']
        {
          resource_type: 'resource_type',
          resource: 'resource',
          region: 'region',
          parameters: 'parameters',
          timeout_in_seconds: 1,
          heartbeat_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskScheduledEventDetails.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['parameters'] = stub[:parameters] unless stub[:parameters].nil?
        data['timeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data['heartbeatInSeconds'] = stub[:heartbeat_in_seconds] unless stub[:heartbeat_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for TaskFailedEventDetails
    class TaskFailedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('TaskFailedEventDetails')
        visited = visited + ['TaskFailedEventDetails']
        {
          resource_type: 'resource_type',
          resource: 'resource',
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskFailedEventDetails.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for ActivityTimedOutEventDetails
    class ActivityTimedOutEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ActivityTimedOutEventDetails')
        visited = visited + ['ActivityTimedOutEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTimedOutEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for ActivitySucceededEventDetails
    class ActivitySucceededEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ActivitySucceededEventDetails')
        visited = visited + ['ActivitySucceededEventDetails']
        {
          output: 'output',
          output_details: HistoryEventExecutionDataDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivitySucceededEventDetails.new
        data = {}
        data['output'] = stub[:output] unless stub[:output].nil?
        data['outputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:output_details]) unless stub[:output_details].nil?
        data
      end
    end

    # Structure Stubber for ActivityStartedEventDetails
    class ActivityStartedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ActivityStartedEventDetails')
        visited = visited + ['ActivityStartedEventDetails']
        {
          worker_name: 'worker_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityStartedEventDetails.new
        data = {}
        data['workerName'] = stub[:worker_name] unless stub[:worker_name].nil?
        data
      end
    end

    # Structure Stubber for ActivityScheduledEventDetails
    class ActivityScheduledEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ActivityScheduledEventDetails')
        visited = visited + ['ActivityScheduledEventDetails']
        {
          resource: 'resource',
          input: 'input',
          input_details: HistoryEventExecutionDataDetails.default(visited),
          timeout_in_seconds: 1,
          heartbeat_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityScheduledEventDetails.new
        data = {}
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['inputDetails'] = Stubs::HistoryEventExecutionDataDetails.stub(stub[:input_details]) unless stub[:input_details].nil?
        data['timeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data['heartbeatInSeconds'] = stub[:heartbeat_in_seconds] unless stub[:heartbeat_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for ActivityScheduleFailedEventDetails
    class ActivityScheduleFailedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ActivityScheduleFailedEventDetails')
        visited = visited + ['ActivityScheduleFailedEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityScheduleFailedEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for ActivityFailedEventDetails
    class ActivityFailedEventDetails
      def self.default(visited=[])
        return nil if visited.include?('ActivityFailedEventDetails')
        visited = visited + ['ActivityFailedEventDetails']
        {
          error: 'error',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityFailedEventDetails.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Operation Stubber for ListActivities
    class ListActivities
      def self.default(visited=[])
        {
          activities: ActivityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['activities'] = Stubs::ActivityList.stub(stub[:activities]) unless stub[:activities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ActivityList
    class ActivityList
      def self.default(visited=[])
        return nil if visited.include?('ActivityList')
        visited = visited + ['ActivityList']
        [
          ActivityListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActivityListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActivityListItem
    class ActivityListItem
      def self.default(visited=[])
        return nil if visited.include?('ActivityListItem')
        visited = visited + ['ActivityListItem']
        {
          activity_arn: 'activity_arn',
          name: 'name',
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityListItem.new
        data = {}
        data['activityArn'] = stub[:activity_arn] unless stub[:activity_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListExecutions
    class ListExecutions
      def self.default(visited=[])
        {
          executions: ExecutionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['executions'] = Stubs::ExecutionList.stub(stub[:executions]) unless stub[:executions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExecutionList
    class ExecutionList
      def self.default(visited=[])
        return nil if visited.include?('ExecutionList')
        visited = visited + ['ExecutionList']
        [
          ExecutionListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExecutionListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExecutionListItem
    class ExecutionListItem
      def self.default(visited=[])
        return nil if visited.include?('ExecutionListItem')
        visited = visited + ['ExecutionListItem']
        {
          execution_arn: 'execution_arn',
          state_machine_arn: 'state_machine_arn',
          name: 'name',
          status: 'status',
          start_date: Time.now,
          stop_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionListItem.new
        data = {}
        data['executionArn'] = stub[:execution_arn] unless stub[:execution_arn].nil?
        data['stateMachineArn'] = stub[:state_machine_arn] unless stub[:state_machine_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        data['stopDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_date]).to_i unless stub[:stop_date].nil?
        data
      end
    end

    # Operation Stubber for ListStateMachines
    class ListStateMachines
      def self.default(visited=[])
        {
          state_machines: StateMachineList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['stateMachines'] = Stubs::StateMachineList.stub(stub[:state_machines]) unless stub[:state_machines].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StateMachineList
    class StateMachineList
      def self.default(visited=[])
        return nil if visited.include?('StateMachineList')
        visited = visited + ['StateMachineList']
        [
          StateMachineListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StateMachineListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StateMachineListItem
    class StateMachineListItem
      def self.default(visited=[])
        return nil if visited.include?('StateMachineListItem')
        visited = visited + ['StateMachineListItem']
        {
          state_machine_arn: 'state_machine_arn',
          name: 'name',
          type: 'type',
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::StateMachineListItem.new
        data = {}
        data['stateMachineArn'] = stub[:state_machine_arn] unless stub[:state_machine_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for SendTaskFailure
    class SendTaskFailure
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendTaskHeartbeat
    class SendTaskHeartbeat
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendTaskSuccess
    class SendTaskSuccess
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartExecution
    class StartExecution
      def self.default(visited=[])
        {
          execution_arn: 'execution_arn',
          start_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['executionArn'] = stub[:execution_arn] unless stub[:execution_arn].nil?
        data['startDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSyncExecution
    class StartSyncExecution
      def self.default(visited=[])
        {
          execution_arn: 'execution_arn',
          state_machine_arn: 'state_machine_arn',
          name: 'name',
          start_date: Time.now,
          stop_date: Time.now,
          status: 'status',
          error: 'error',
          cause: 'cause',
          input: 'input',
          input_details: CloudWatchEventsExecutionDataDetails.default(visited),
          output: 'output',
          output_details: CloudWatchEventsExecutionDataDetails.default(visited),
          trace_header: 'trace_header',
          billing_details: BillingDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['executionArn'] = stub[:execution_arn] unless stub[:execution_arn].nil?
        data['stateMachineArn'] = stub[:state_machine_arn] unless stub[:state_machine_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['startDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        data['stopDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_date]).to_i unless stub[:stop_date].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['inputDetails'] = Stubs::CloudWatchEventsExecutionDataDetails.stub(stub[:input_details]) unless stub[:input_details].nil?
        data['output'] = stub[:output] unless stub[:output].nil?
        data['outputDetails'] = Stubs::CloudWatchEventsExecutionDataDetails.stub(stub[:output_details]) unless stub[:output_details].nil?
        data['traceHeader'] = stub[:trace_header] unless stub[:trace_header].nil?
        data['billingDetails'] = Stubs::BillingDetails.stub(stub[:billing_details]) unless stub[:billing_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for BillingDetails
    class BillingDetails
      def self.default(visited=[])
        return nil if visited.include?('BillingDetails')
        visited = visited + ['BillingDetails']
        {
          billed_memory_used_in_mb: 1,
          billed_duration_in_milliseconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BillingDetails.new
        data = {}
        data['billedMemoryUsedInMB'] = stub[:billed_memory_used_in_mb] unless stub[:billed_memory_used_in_mb].nil?
        data['billedDurationInMilliseconds'] = stub[:billed_duration_in_milliseconds] unless stub[:billed_duration_in_milliseconds].nil?
        data
      end
    end

    # Operation Stubber for StopExecution
    class StopExecution
      def self.default(visited=[])
        {
          stop_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['stopDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_date]).to_i unless stub[:stop_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStateMachine
    class UpdateStateMachine
      def self.default(visited=[])
        {
          update_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['updateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date]).to_i unless stub[:update_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
