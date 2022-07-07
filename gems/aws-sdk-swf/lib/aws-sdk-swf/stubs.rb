# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SWF
  module Stubs

    # Operation Stubber for CountClosedWorkflowExecutions
    class CountClosedWorkflowExecutions
      def self.default(visited=[])
        {
          count: 1,
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['count'] = stub[:count] unless stub[:count].nil?
        data['truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CountOpenWorkflowExecutions
    class CountOpenWorkflowExecutions
      def self.default(visited=[])
        {
          count: 1,
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['count'] = stub[:count] unless stub[:count].nil?
        data['truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CountPendingActivityTasks
    class CountPendingActivityTasks
      def self.default(visited=[])
        {
          count: 1,
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['count'] = stub[:count] unless stub[:count].nil?
        data['truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CountPendingDecisionTasks
    class CountPendingDecisionTasks
      def self.default(visited=[])
        {
          count: 1,
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['count'] = stub[:count] unless stub[:count].nil?
        data['truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeprecateActivityType
    class DeprecateActivityType
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

    # Operation Stubber for DeprecateDomain
    class DeprecateDomain
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

    # Operation Stubber for DeprecateWorkflowType
    class DeprecateWorkflowType
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

    # Operation Stubber for DescribeActivityType
    class DescribeActivityType
      def self.default(visited=[])
        {
          type_info: Stubs::ActivityTypeInfo.default(visited),
          configuration: Stubs::ActivityTypeConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['typeInfo'] = Stubs::ActivityTypeInfo.stub(stub[:type_info]) unless stub[:type_info].nil?
        data['configuration'] = Stubs::ActivityTypeConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ActivityTypeConfiguration
    class ActivityTypeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ActivityTypeConfiguration')
        visited = visited + ['ActivityTypeConfiguration']
        {
          default_task_start_to_close_timeout: 'default_task_start_to_close_timeout',
          default_task_heartbeat_timeout: 'default_task_heartbeat_timeout',
          default_task_list: Stubs::TaskList.default(visited),
          default_task_priority: 'default_task_priority',
          default_task_schedule_to_start_timeout: 'default_task_schedule_to_start_timeout',
          default_task_schedule_to_close_timeout: 'default_task_schedule_to_close_timeout',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTypeConfiguration.new
        data = {}
        data['defaultTaskStartToCloseTimeout'] = stub[:default_task_start_to_close_timeout] unless stub[:default_task_start_to_close_timeout].nil?
        data['defaultTaskHeartbeatTimeout'] = stub[:default_task_heartbeat_timeout] unless stub[:default_task_heartbeat_timeout].nil?
        data['defaultTaskList'] = Stubs::TaskList.stub(stub[:default_task_list]) unless stub[:default_task_list].nil?
        data['defaultTaskPriority'] = stub[:default_task_priority] unless stub[:default_task_priority].nil?
        data['defaultTaskScheduleToStartTimeout'] = stub[:default_task_schedule_to_start_timeout] unless stub[:default_task_schedule_to_start_timeout].nil?
        data['defaultTaskScheduleToCloseTimeout'] = stub[:default_task_schedule_to_close_timeout] unless stub[:default_task_schedule_to_close_timeout].nil?
        data
      end
    end

    # Structure Stubber for TaskList
    class TaskList
      def self.default(visited=[])
        return nil if visited.include?('TaskList')
        visited = visited + ['TaskList']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskList.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for ActivityTypeInfo
    class ActivityTypeInfo
      def self.default(visited=[])
        return nil if visited.include?('ActivityTypeInfo')
        visited = visited + ['ActivityTypeInfo']
        {
          activity_type: Stubs::ActivityType.default(visited),
          status: 'status',
          description: 'description',
          creation_date: Time.now,
          deprecation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTypeInfo.new
        data = {}
        data['activityType'] = Stubs::ActivityType.stub(stub[:activity_type]) unless stub[:activity_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['deprecationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deprecation_date]).to_i unless stub[:deprecation_date].nil?
        data
      end
    end

    # Structure Stubber for ActivityType
    class ActivityType
      def self.default(visited=[])
        return nil if visited.include?('ActivityType')
        visited = visited + ['ActivityType']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityType.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DescribeDomain
    class DescribeDomain
      def self.default(visited=[])
        {
          domain_info: Stubs::DomainInfo.default(visited),
          configuration: Stubs::DomainConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['domainInfo'] = Stubs::DomainInfo.stub(stub[:domain_info]) unless stub[:domain_info].nil?
        data['configuration'] = Stubs::DomainConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DomainConfiguration
    class DomainConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DomainConfiguration')
        visited = visited + ['DomainConfiguration']
        {
          workflow_execution_retention_period_in_days: 'workflow_execution_retention_period_in_days',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainConfiguration.new
        data = {}
        data['workflowExecutionRetentionPeriodInDays'] = stub[:workflow_execution_retention_period_in_days] unless stub[:workflow_execution_retention_period_in_days].nil?
        data
      end
    end

    # Structure Stubber for DomainInfo
    class DomainInfo
      def self.default(visited=[])
        return nil if visited.include?('DomainInfo')
        visited = visited + ['DomainInfo']
        {
          name: 'name',
          status: 'status',
          description: 'description',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainInfo.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorkflowExecution
    class DescribeWorkflowExecution
      def self.default(visited=[])
        {
          execution_info: Stubs::WorkflowExecutionInfo.default(visited),
          execution_configuration: Stubs::WorkflowExecutionConfiguration.default(visited),
          open_counts: Stubs::WorkflowExecutionOpenCounts.default(visited),
          latest_activity_task_timestamp: Time.now,
          latest_execution_context: 'latest_execution_context',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['executionInfo'] = Stubs::WorkflowExecutionInfo.stub(stub[:execution_info]) unless stub[:execution_info].nil?
        data['executionConfiguration'] = Stubs::WorkflowExecutionConfiguration.stub(stub[:execution_configuration]) unless stub[:execution_configuration].nil?
        data['openCounts'] = Stubs::WorkflowExecutionOpenCounts.stub(stub[:open_counts]) unless stub[:open_counts].nil?
        data['latestActivityTaskTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_activity_task_timestamp]).to_i unless stub[:latest_activity_task_timestamp].nil?
        data['latestExecutionContext'] = stub[:latest_execution_context] unless stub[:latest_execution_context].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for WorkflowExecutionOpenCounts
    class WorkflowExecutionOpenCounts
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionOpenCounts')
        visited = visited + ['WorkflowExecutionOpenCounts']
        {
          open_activity_tasks: 1,
          open_decision_tasks: 1,
          open_timers: 1,
          open_child_workflow_executions: 1,
          open_lambda_functions: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionOpenCounts.new
        data = {}
        data['openActivityTasks'] = stub[:open_activity_tasks] unless stub[:open_activity_tasks].nil?
        data['openDecisionTasks'] = stub[:open_decision_tasks] unless stub[:open_decision_tasks].nil?
        data['openTimers'] = stub[:open_timers] unless stub[:open_timers].nil?
        data['openChildWorkflowExecutions'] = stub[:open_child_workflow_executions] unless stub[:open_child_workflow_executions].nil?
        data['openLambdaFunctions'] = stub[:open_lambda_functions] unless stub[:open_lambda_functions].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionConfiguration
    class WorkflowExecutionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionConfiguration')
        visited = visited + ['WorkflowExecutionConfiguration']
        {
          task_start_to_close_timeout: 'task_start_to_close_timeout',
          execution_start_to_close_timeout: 'execution_start_to_close_timeout',
          task_list: Stubs::TaskList.default(visited),
          task_priority: 'task_priority',
          child_policy: 'child_policy',
          lambda_role: 'lambda_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionConfiguration.new
        data = {}
        data['taskStartToCloseTimeout'] = stub[:task_start_to_close_timeout] unless stub[:task_start_to_close_timeout].nil?
        data['executionStartToCloseTimeout'] = stub[:execution_start_to_close_timeout] unless stub[:execution_start_to_close_timeout].nil?
        data['taskList'] = Stubs::TaskList.stub(stub[:task_list]) unless stub[:task_list].nil?
        data['taskPriority'] = stub[:task_priority] unless stub[:task_priority].nil?
        data['childPolicy'] = stub[:child_policy] unless stub[:child_policy].nil?
        data['lambdaRole'] = stub[:lambda_role] unless stub[:lambda_role].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionInfo
    class WorkflowExecutionInfo
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionInfo')
        visited = visited + ['WorkflowExecutionInfo']
        {
          execution: Stubs::WorkflowExecution.default(visited),
          workflow_type: Stubs::WorkflowType.default(visited),
          start_timestamp: Time.now,
          close_timestamp: Time.now,
          execution_status: 'execution_status',
          close_status: 'close_status',
          parent: Stubs::WorkflowExecution.default(visited),
          tag_list: Stubs::TagList.default(visited),
          cancel_requested: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionInfo.new
        data = {}
        data['execution'] = Stubs::WorkflowExecution.stub(stub[:execution]) unless stub[:execution].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['startTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_timestamp]).to_i unless stub[:start_timestamp].nil?
        data['closeTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:close_timestamp]).to_i unless stub[:close_timestamp].nil?
        data['executionStatus'] = stub[:execution_status] unless stub[:execution_status].nil?
        data['closeStatus'] = stub[:close_status] unless stub[:close_status].nil?
        data['parent'] = Stubs::WorkflowExecution.stub(stub[:parent]) unless stub[:parent].nil?
        data['tagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        data['cancelRequested'] = stub[:cancel_requested] unless stub[:cancel_requested].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkflowExecution
    class WorkflowExecution
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecution')
        visited = visited + ['WorkflowExecution']
        {
          workflow_id: 'workflow_id',
          run_id: 'run_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecution.new
        data = {}
        data['workflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['runId'] = stub[:run_id] unless stub[:run_id].nil?
        data
      end
    end

    # Structure Stubber for WorkflowType
    class WorkflowType
      def self.default(visited=[])
        return nil if visited.include?('WorkflowType')
        visited = visited + ['WorkflowType']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowType.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorkflowType
    class DescribeWorkflowType
      def self.default(visited=[])
        {
          type_info: Stubs::WorkflowTypeInfo.default(visited),
          configuration: Stubs::WorkflowTypeConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['typeInfo'] = Stubs::WorkflowTypeInfo.stub(stub[:type_info]) unless stub[:type_info].nil?
        data['configuration'] = Stubs::WorkflowTypeConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for WorkflowTypeConfiguration
    class WorkflowTypeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('WorkflowTypeConfiguration')
        visited = visited + ['WorkflowTypeConfiguration']
        {
          default_task_start_to_close_timeout: 'default_task_start_to_close_timeout',
          default_execution_start_to_close_timeout: 'default_execution_start_to_close_timeout',
          default_task_list: Stubs::TaskList.default(visited),
          default_task_priority: 'default_task_priority',
          default_child_policy: 'default_child_policy',
          default_lambda_role: 'default_lambda_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowTypeConfiguration.new
        data = {}
        data['defaultTaskStartToCloseTimeout'] = stub[:default_task_start_to_close_timeout] unless stub[:default_task_start_to_close_timeout].nil?
        data['defaultExecutionStartToCloseTimeout'] = stub[:default_execution_start_to_close_timeout] unless stub[:default_execution_start_to_close_timeout].nil?
        data['defaultTaskList'] = Stubs::TaskList.stub(stub[:default_task_list]) unless stub[:default_task_list].nil?
        data['defaultTaskPriority'] = stub[:default_task_priority] unless stub[:default_task_priority].nil?
        data['defaultChildPolicy'] = stub[:default_child_policy] unless stub[:default_child_policy].nil?
        data['defaultLambdaRole'] = stub[:default_lambda_role] unless stub[:default_lambda_role].nil?
        data
      end
    end

    # Structure Stubber for WorkflowTypeInfo
    class WorkflowTypeInfo
      def self.default(visited=[])
        return nil if visited.include?('WorkflowTypeInfo')
        visited = visited + ['WorkflowTypeInfo']
        {
          workflow_type: Stubs::WorkflowType.default(visited),
          status: 'status',
          description: 'description',
          creation_date: Time.now,
          deprecation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowTypeInfo.new
        data = {}
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['deprecationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deprecation_date]).to_i unless stub[:deprecation_date].nil?
        data
      end
    end

    # Operation Stubber for GetWorkflowExecutionHistory
    class GetWorkflowExecutionHistory
      def self.default(visited=[])
        {
          events: Stubs::HistoryEventList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['events'] = Stubs::HistoryEventList.stub(stub[:events]) unless stub[:events].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
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
          Stubs::HistoryEvent.default(visited)
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
          event_timestamp: Time.now,
          event_type: 'event_type',
          event_id: 1,
          workflow_execution_started_event_attributes: Stubs::WorkflowExecutionStartedEventAttributes.default(visited),
          workflow_execution_completed_event_attributes: Stubs::WorkflowExecutionCompletedEventAttributes.default(visited),
          complete_workflow_execution_failed_event_attributes: Stubs::CompleteWorkflowExecutionFailedEventAttributes.default(visited),
          workflow_execution_failed_event_attributes: Stubs::WorkflowExecutionFailedEventAttributes.default(visited),
          fail_workflow_execution_failed_event_attributes: Stubs::FailWorkflowExecutionFailedEventAttributes.default(visited),
          workflow_execution_timed_out_event_attributes: Stubs::WorkflowExecutionTimedOutEventAttributes.default(visited),
          workflow_execution_canceled_event_attributes: Stubs::WorkflowExecutionCanceledEventAttributes.default(visited),
          cancel_workflow_execution_failed_event_attributes: Stubs::CancelWorkflowExecutionFailedEventAttributes.default(visited),
          workflow_execution_continued_as_new_event_attributes: Stubs::WorkflowExecutionContinuedAsNewEventAttributes.default(visited),
          continue_as_new_workflow_execution_failed_event_attributes: Stubs::ContinueAsNewWorkflowExecutionFailedEventAttributes.default(visited),
          workflow_execution_terminated_event_attributes: Stubs::WorkflowExecutionTerminatedEventAttributes.default(visited),
          workflow_execution_cancel_requested_event_attributes: Stubs::WorkflowExecutionCancelRequestedEventAttributes.default(visited),
          decision_task_scheduled_event_attributes: Stubs::DecisionTaskScheduledEventAttributes.default(visited),
          decision_task_started_event_attributes: Stubs::DecisionTaskStartedEventAttributes.default(visited),
          decision_task_completed_event_attributes: Stubs::DecisionTaskCompletedEventAttributes.default(visited),
          decision_task_timed_out_event_attributes: Stubs::DecisionTaskTimedOutEventAttributes.default(visited),
          activity_task_scheduled_event_attributes: Stubs::ActivityTaskScheduledEventAttributes.default(visited),
          activity_task_started_event_attributes: Stubs::ActivityTaskStartedEventAttributes.default(visited),
          activity_task_completed_event_attributes: Stubs::ActivityTaskCompletedEventAttributes.default(visited),
          activity_task_failed_event_attributes: Stubs::ActivityTaskFailedEventAttributes.default(visited),
          activity_task_timed_out_event_attributes: Stubs::ActivityTaskTimedOutEventAttributes.default(visited),
          activity_task_canceled_event_attributes: Stubs::ActivityTaskCanceledEventAttributes.default(visited),
          activity_task_cancel_requested_event_attributes: Stubs::ActivityTaskCancelRequestedEventAttributes.default(visited),
          workflow_execution_signaled_event_attributes: Stubs::WorkflowExecutionSignaledEventAttributes.default(visited),
          marker_recorded_event_attributes: Stubs::MarkerRecordedEventAttributes.default(visited),
          record_marker_failed_event_attributes: Stubs::RecordMarkerFailedEventAttributes.default(visited),
          timer_started_event_attributes: Stubs::TimerStartedEventAttributes.default(visited),
          timer_fired_event_attributes: Stubs::TimerFiredEventAttributes.default(visited),
          timer_canceled_event_attributes: Stubs::TimerCanceledEventAttributes.default(visited),
          start_child_workflow_execution_initiated_event_attributes: Stubs::StartChildWorkflowExecutionInitiatedEventAttributes.default(visited),
          child_workflow_execution_started_event_attributes: Stubs::ChildWorkflowExecutionStartedEventAttributes.default(visited),
          child_workflow_execution_completed_event_attributes: Stubs::ChildWorkflowExecutionCompletedEventAttributes.default(visited),
          child_workflow_execution_failed_event_attributes: Stubs::ChildWorkflowExecutionFailedEventAttributes.default(visited),
          child_workflow_execution_timed_out_event_attributes: Stubs::ChildWorkflowExecutionTimedOutEventAttributes.default(visited),
          child_workflow_execution_canceled_event_attributes: Stubs::ChildWorkflowExecutionCanceledEventAttributes.default(visited),
          child_workflow_execution_terminated_event_attributes: Stubs::ChildWorkflowExecutionTerminatedEventAttributes.default(visited),
          signal_external_workflow_execution_initiated_event_attributes: Stubs::SignalExternalWorkflowExecutionInitiatedEventAttributes.default(visited),
          external_workflow_execution_signaled_event_attributes: Stubs::ExternalWorkflowExecutionSignaledEventAttributes.default(visited),
          signal_external_workflow_execution_failed_event_attributes: Stubs::SignalExternalWorkflowExecutionFailedEventAttributes.default(visited),
          external_workflow_execution_cancel_requested_event_attributes: Stubs::ExternalWorkflowExecutionCancelRequestedEventAttributes.default(visited),
          request_cancel_external_workflow_execution_initiated_event_attributes: Stubs::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.default(visited),
          request_cancel_external_workflow_execution_failed_event_attributes: Stubs::RequestCancelExternalWorkflowExecutionFailedEventAttributes.default(visited),
          schedule_activity_task_failed_event_attributes: Stubs::ScheduleActivityTaskFailedEventAttributes.default(visited),
          request_cancel_activity_task_failed_event_attributes: Stubs::RequestCancelActivityTaskFailedEventAttributes.default(visited),
          start_timer_failed_event_attributes: Stubs::StartTimerFailedEventAttributes.default(visited),
          cancel_timer_failed_event_attributes: Stubs::CancelTimerFailedEventAttributes.default(visited),
          start_child_workflow_execution_failed_event_attributes: Stubs::StartChildWorkflowExecutionFailedEventAttributes.default(visited),
          lambda_function_scheduled_event_attributes: Stubs::LambdaFunctionScheduledEventAttributes.default(visited),
          lambda_function_started_event_attributes: Stubs::LambdaFunctionStartedEventAttributes.default(visited),
          lambda_function_completed_event_attributes: Stubs::LambdaFunctionCompletedEventAttributes.default(visited),
          lambda_function_failed_event_attributes: Stubs::LambdaFunctionFailedEventAttributes.default(visited),
          lambda_function_timed_out_event_attributes: Stubs::LambdaFunctionTimedOutEventAttributes.default(visited),
          schedule_lambda_function_failed_event_attributes: Stubs::ScheduleLambdaFunctionFailedEventAttributes.default(visited),
          start_lambda_function_failed_event_attributes: Stubs::StartLambdaFunctionFailedEventAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HistoryEvent.new
        data = {}
        data['eventTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_timestamp]).to_i unless stub[:event_timestamp].nil?
        data['eventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['workflowExecutionStartedEventAttributes'] = Stubs::WorkflowExecutionStartedEventAttributes.stub(stub[:workflow_execution_started_event_attributes]) unless stub[:workflow_execution_started_event_attributes].nil?
        data['workflowExecutionCompletedEventAttributes'] = Stubs::WorkflowExecutionCompletedEventAttributes.stub(stub[:workflow_execution_completed_event_attributes]) unless stub[:workflow_execution_completed_event_attributes].nil?
        data['completeWorkflowExecutionFailedEventAttributes'] = Stubs::CompleteWorkflowExecutionFailedEventAttributes.stub(stub[:complete_workflow_execution_failed_event_attributes]) unless stub[:complete_workflow_execution_failed_event_attributes].nil?
        data['workflowExecutionFailedEventAttributes'] = Stubs::WorkflowExecutionFailedEventAttributes.stub(stub[:workflow_execution_failed_event_attributes]) unless stub[:workflow_execution_failed_event_attributes].nil?
        data['failWorkflowExecutionFailedEventAttributes'] = Stubs::FailWorkflowExecutionFailedEventAttributes.stub(stub[:fail_workflow_execution_failed_event_attributes]) unless stub[:fail_workflow_execution_failed_event_attributes].nil?
        data['workflowExecutionTimedOutEventAttributes'] = Stubs::WorkflowExecutionTimedOutEventAttributes.stub(stub[:workflow_execution_timed_out_event_attributes]) unless stub[:workflow_execution_timed_out_event_attributes].nil?
        data['workflowExecutionCanceledEventAttributes'] = Stubs::WorkflowExecutionCanceledEventAttributes.stub(stub[:workflow_execution_canceled_event_attributes]) unless stub[:workflow_execution_canceled_event_attributes].nil?
        data['cancelWorkflowExecutionFailedEventAttributes'] = Stubs::CancelWorkflowExecutionFailedEventAttributes.stub(stub[:cancel_workflow_execution_failed_event_attributes]) unless stub[:cancel_workflow_execution_failed_event_attributes].nil?
        data['workflowExecutionContinuedAsNewEventAttributes'] = Stubs::WorkflowExecutionContinuedAsNewEventAttributes.stub(stub[:workflow_execution_continued_as_new_event_attributes]) unless stub[:workflow_execution_continued_as_new_event_attributes].nil?
        data['continueAsNewWorkflowExecutionFailedEventAttributes'] = Stubs::ContinueAsNewWorkflowExecutionFailedEventAttributes.stub(stub[:continue_as_new_workflow_execution_failed_event_attributes]) unless stub[:continue_as_new_workflow_execution_failed_event_attributes].nil?
        data['workflowExecutionTerminatedEventAttributes'] = Stubs::WorkflowExecutionTerminatedEventAttributes.stub(stub[:workflow_execution_terminated_event_attributes]) unless stub[:workflow_execution_terminated_event_attributes].nil?
        data['workflowExecutionCancelRequestedEventAttributes'] = Stubs::WorkflowExecutionCancelRequestedEventAttributes.stub(stub[:workflow_execution_cancel_requested_event_attributes]) unless stub[:workflow_execution_cancel_requested_event_attributes].nil?
        data['decisionTaskScheduledEventAttributes'] = Stubs::DecisionTaskScheduledEventAttributes.stub(stub[:decision_task_scheduled_event_attributes]) unless stub[:decision_task_scheduled_event_attributes].nil?
        data['decisionTaskStartedEventAttributes'] = Stubs::DecisionTaskStartedEventAttributes.stub(stub[:decision_task_started_event_attributes]) unless stub[:decision_task_started_event_attributes].nil?
        data['decisionTaskCompletedEventAttributes'] = Stubs::DecisionTaskCompletedEventAttributes.stub(stub[:decision_task_completed_event_attributes]) unless stub[:decision_task_completed_event_attributes].nil?
        data['decisionTaskTimedOutEventAttributes'] = Stubs::DecisionTaskTimedOutEventAttributes.stub(stub[:decision_task_timed_out_event_attributes]) unless stub[:decision_task_timed_out_event_attributes].nil?
        data['activityTaskScheduledEventAttributes'] = Stubs::ActivityTaskScheduledEventAttributes.stub(stub[:activity_task_scheduled_event_attributes]) unless stub[:activity_task_scheduled_event_attributes].nil?
        data['activityTaskStartedEventAttributes'] = Stubs::ActivityTaskStartedEventAttributes.stub(stub[:activity_task_started_event_attributes]) unless stub[:activity_task_started_event_attributes].nil?
        data['activityTaskCompletedEventAttributes'] = Stubs::ActivityTaskCompletedEventAttributes.stub(stub[:activity_task_completed_event_attributes]) unless stub[:activity_task_completed_event_attributes].nil?
        data['activityTaskFailedEventAttributes'] = Stubs::ActivityTaskFailedEventAttributes.stub(stub[:activity_task_failed_event_attributes]) unless stub[:activity_task_failed_event_attributes].nil?
        data['activityTaskTimedOutEventAttributes'] = Stubs::ActivityTaskTimedOutEventAttributes.stub(stub[:activity_task_timed_out_event_attributes]) unless stub[:activity_task_timed_out_event_attributes].nil?
        data['activityTaskCanceledEventAttributes'] = Stubs::ActivityTaskCanceledEventAttributes.stub(stub[:activity_task_canceled_event_attributes]) unless stub[:activity_task_canceled_event_attributes].nil?
        data['activityTaskCancelRequestedEventAttributes'] = Stubs::ActivityTaskCancelRequestedEventAttributes.stub(stub[:activity_task_cancel_requested_event_attributes]) unless stub[:activity_task_cancel_requested_event_attributes].nil?
        data['workflowExecutionSignaledEventAttributes'] = Stubs::WorkflowExecutionSignaledEventAttributes.stub(stub[:workflow_execution_signaled_event_attributes]) unless stub[:workflow_execution_signaled_event_attributes].nil?
        data['markerRecordedEventAttributes'] = Stubs::MarkerRecordedEventAttributes.stub(stub[:marker_recorded_event_attributes]) unless stub[:marker_recorded_event_attributes].nil?
        data['recordMarkerFailedEventAttributes'] = Stubs::RecordMarkerFailedEventAttributes.stub(stub[:record_marker_failed_event_attributes]) unless stub[:record_marker_failed_event_attributes].nil?
        data['timerStartedEventAttributes'] = Stubs::TimerStartedEventAttributes.stub(stub[:timer_started_event_attributes]) unless stub[:timer_started_event_attributes].nil?
        data['timerFiredEventAttributes'] = Stubs::TimerFiredEventAttributes.stub(stub[:timer_fired_event_attributes]) unless stub[:timer_fired_event_attributes].nil?
        data['timerCanceledEventAttributes'] = Stubs::TimerCanceledEventAttributes.stub(stub[:timer_canceled_event_attributes]) unless stub[:timer_canceled_event_attributes].nil?
        data['startChildWorkflowExecutionInitiatedEventAttributes'] = Stubs::StartChildWorkflowExecutionInitiatedEventAttributes.stub(stub[:start_child_workflow_execution_initiated_event_attributes]) unless stub[:start_child_workflow_execution_initiated_event_attributes].nil?
        data['childWorkflowExecutionStartedEventAttributes'] = Stubs::ChildWorkflowExecutionStartedEventAttributes.stub(stub[:child_workflow_execution_started_event_attributes]) unless stub[:child_workflow_execution_started_event_attributes].nil?
        data['childWorkflowExecutionCompletedEventAttributes'] = Stubs::ChildWorkflowExecutionCompletedEventAttributes.stub(stub[:child_workflow_execution_completed_event_attributes]) unless stub[:child_workflow_execution_completed_event_attributes].nil?
        data['childWorkflowExecutionFailedEventAttributes'] = Stubs::ChildWorkflowExecutionFailedEventAttributes.stub(stub[:child_workflow_execution_failed_event_attributes]) unless stub[:child_workflow_execution_failed_event_attributes].nil?
        data['childWorkflowExecutionTimedOutEventAttributes'] = Stubs::ChildWorkflowExecutionTimedOutEventAttributes.stub(stub[:child_workflow_execution_timed_out_event_attributes]) unless stub[:child_workflow_execution_timed_out_event_attributes].nil?
        data['childWorkflowExecutionCanceledEventAttributes'] = Stubs::ChildWorkflowExecutionCanceledEventAttributes.stub(stub[:child_workflow_execution_canceled_event_attributes]) unless stub[:child_workflow_execution_canceled_event_attributes].nil?
        data['childWorkflowExecutionTerminatedEventAttributes'] = Stubs::ChildWorkflowExecutionTerminatedEventAttributes.stub(stub[:child_workflow_execution_terminated_event_attributes]) unless stub[:child_workflow_execution_terminated_event_attributes].nil?
        data['signalExternalWorkflowExecutionInitiatedEventAttributes'] = Stubs::SignalExternalWorkflowExecutionInitiatedEventAttributes.stub(stub[:signal_external_workflow_execution_initiated_event_attributes]) unless stub[:signal_external_workflow_execution_initiated_event_attributes].nil?
        data['externalWorkflowExecutionSignaledEventAttributes'] = Stubs::ExternalWorkflowExecutionSignaledEventAttributes.stub(stub[:external_workflow_execution_signaled_event_attributes]) unless stub[:external_workflow_execution_signaled_event_attributes].nil?
        data['signalExternalWorkflowExecutionFailedEventAttributes'] = Stubs::SignalExternalWorkflowExecutionFailedEventAttributes.stub(stub[:signal_external_workflow_execution_failed_event_attributes]) unless stub[:signal_external_workflow_execution_failed_event_attributes].nil?
        data['externalWorkflowExecutionCancelRequestedEventAttributes'] = Stubs::ExternalWorkflowExecutionCancelRequestedEventAttributes.stub(stub[:external_workflow_execution_cancel_requested_event_attributes]) unless stub[:external_workflow_execution_cancel_requested_event_attributes].nil?
        data['requestCancelExternalWorkflowExecutionInitiatedEventAttributes'] = Stubs::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.stub(stub[:request_cancel_external_workflow_execution_initiated_event_attributes]) unless stub[:request_cancel_external_workflow_execution_initiated_event_attributes].nil?
        data['requestCancelExternalWorkflowExecutionFailedEventAttributes'] = Stubs::RequestCancelExternalWorkflowExecutionFailedEventAttributes.stub(stub[:request_cancel_external_workflow_execution_failed_event_attributes]) unless stub[:request_cancel_external_workflow_execution_failed_event_attributes].nil?
        data['scheduleActivityTaskFailedEventAttributes'] = Stubs::ScheduleActivityTaskFailedEventAttributes.stub(stub[:schedule_activity_task_failed_event_attributes]) unless stub[:schedule_activity_task_failed_event_attributes].nil?
        data['requestCancelActivityTaskFailedEventAttributes'] = Stubs::RequestCancelActivityTaskFailedEventAttributes.stub(stub[:request_cancel_activity_task_failed_event_attributes]) unless stub[:request_cancel_activity_task_failed_event_attributes].nil?
        data['startTimerFailedEventAttributes'] = Stubs::StartTimerFailedEventAttributes.stub(stub[:start_timer_failed_event_attributes]) unless stub[:start_timer_failed_event_attributes].nil?
        data['cancelTimerFailedEventAttributes'] = Stubs::CancelTimerFailedEventAttributes.stub(stub[:cancel_timer_failed_event_attributes]) unless stub[:cancel_timer_failed_event_attributes].nil?
        data['startChildWorkflowExecutionFailedEventAttributes'] = Stubs::StartChildWorkflowExecutionFailedEventAttributes.stub(stub[:start_child_workflow_execution_failed_event_attributes]) unless stub[:start_child_workflow_execution_failed_event_attributes].nil?
        data['lambdaFunctionScheduledEventAttributes'] = Stubs::LambdaFunctionScheduledEventAttributes.stub(stub[:lambda_function_scheduled_event_attributes]) unless stub[:lambda_function_scheduled_event_attributes].nil?
        data['lambdaFunctionStartedEventAttributes'] = Stubs::LambdaFunctionStartedEventAttributes.stub(stub[:lambda_function_started_event_attributes]) unless stub[:lambda_function_started_event_attributes].nil?
        data['lambdaFunctionCompletedEventAttributes'] = Stubs::LambdaFunctionCompletedEventAttributes.stub(stub[:lambda_function_completed_event_attributes]) unless stub[:lambda_function_completed_event_attributes].nil?
        data['lambdaFunctionFailedEventAttributes'] = Stubs::LambdaFunctionFailedEventAttributes.stub(stub[:lambda_function_failed_event_attributes]) unless stub[:lambda_function_failed_event_attributes].nil?
        data['lambdaFunctionTimedOutEventAttributes'] = Stubs::LambdaFunctionTimedOutEventAttributes.stub(stub[:lambda_function_timed_out_event_attributes]) unless stub[:lambda_function_timed_out_event_attributes].nil?
        data['scheduleLambdaFunctionFailedEventAttributes'] = Stubs::ScheduleLambdaFunctionFailedEventAttributes.stub(stub[:schedule_lambda_function_failed_event_attributes]) unless stub[:schedule_lambda_function_failed_event_attributes].nil?
        data['startLambdaFunctionFailedEventAttributes'] = Stubs::StartLambdaFunctionFailedEventAttributes.stub(stub[:start_lambda_function_failed_event_attributes]) unless stub[:start_lambda_function_failed_event_attributes].nil?
        data
      end
    end

    # Structure Stubber for StartLambdaFunctionFailedEventAttributes
    class StartLambdaFunctionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('StartLambdaFunctionFailedEventAttributes')
        visited = visited + ['StartLambdaFunctionFailedEventAttributes']
        {
          scheduled_event_id: 1,
          cause: 'cause',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::StartLambdaFunctionFailedEventAttributes.new
        data = {}
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ScheduleLambdaFunctionFailedEventAttributes
    class ScheduleLambdaFunctionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ScheduleLambdaFunctionFailedEventAttributes')
        visited = visited + ['ScheduleLambdaFunctionFailedEventAttributes']
        {
          id: 'id',
          name: 'name',
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleLambdaFunctionFailedEventAttributes.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionTimedOutEventAttributes
    class LambdaFunctionTimedOutEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionTimedOutEventAttributes')
        visited = visited + ['LambdaFunctionTimedOutEventAttributes']
        {
          scheduled_event_id: 1,
          started_event_id: 1,
          timeout_type: 'timeout_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionTimedOutEventAttributes.new
        data = {}
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data['timeoutType'] = stub[:timeout_type] unless stub[:timeout_type].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionFailedEventAttributes
    class LambdaFunctionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionFailedEventAttributes')
        visited = visited + ['LambdaFunctionFailedEventAttributes']
        {
          scheduled_event_id: 1,
          started_event_id: 1,
          reason: 'reason',
          details: 'details',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionFailedEventAttributes.new
        data = {}
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionCompletedEventAttributes
    class LambdaFunctionCompletedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionCompletedEventAttributes')
        visited = visited + ['LambdaFunctionCompletedEventAttributes']
        {
          scheduled_event_id: 1,
          started_event_id: 1,
          result: 'result',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionCompletedEventAttributes.new
        data = {}
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data['result'] = stub[:result] unless stub[:result].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionStartedEventAttributes
    class LambdaFunctionStartedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionStartedEventAttributes')
        visited = visited + ['LambdaFunctionStartedEventAttributes']
        {
          scheduled_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionStartedEventAttributes.new
        data = {}
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionScheduledEventAttributes
    class LambdaFunctionScheduledEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionScheduledEventAttributes')
        visited = visited + ['LambdaFunctionScheduledEventAttributes']
        {
          id: 'id',
          name: 'name',
          control: 'control',
          input: 'input',
          start_to_close_timeout: 'start_to_close_timeout',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionScheduledEventAttributes.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['startToCloseTimeout'] = stub[:start_to_close_timeout] unless stub[:start_to_close_timeout].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for StartChildWorkflowExecutionFailedEventAttributes
    class StartChildWorkflowExecutionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('StartChildWorkflowExecutionFailedEventAttributes')
        visited = visited + ['StartChildWorkflowExecutionFailedEventAttributes']
        {
          workflow_type: Stubs::WorkflowType.default(visited),
          cause: 'cause',
          workflow_id: 'workflow_id',
          initiated_event_id: 1,
          decision_task_completed_event_id: 1,
          control: 'control',
        }
      end

      def self.stub(stub)
        stub ||= Types::StartChildWorkflowExecutionFailedEventAttributes.new
        data = {}
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['workflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data
      end
    end

    # Structure Stubber for CancelTimerFailedEventAttributes
    class CancelTimerFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('CancelTimerFailedEventAttributes')
        visited = visited + ['CancelTimerFailedEventAttributes']
        {
          timer_id: 'timer_id',
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CancelTimerFailedEventAttributes.new
        data = {}
        data['timerId'] = stub[:timer_id] unless stub[:timer_id].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for StartTimerFailedEventAttributes
    class StartTimerFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('StartTimerFailedEventAttributes')
        visited = visited + ['StartTimerFailedEventAttributes']
        {
          timer_id: 'timer_id',
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StartTimerFailedEventAttributes.new
        data = {}
        data['timerId'] = stub[:timer_id] unless stub[:timer_id].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for RequestCancelActivityTaskFailedEventAttributes
    class RequestCancelActivityTaskFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('RequestCancelActivityTaskFailedEventAttributes')
        visited = visited + ['RequestCancelActivityTaskFailedEventAttributes']
        {
          activity_id: 'activity_id',
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RequestCancelActivityTaskFailedEventAttributes.new
        data = {}
        data['activityId'] = stub[:activity_id] unless stub[:activity_id].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for ScheduleActivityTaskFailedEventAttributes
    class ScheduleActivityTaskFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ScheduleActivityTaskFailedEventAttributes')
        visited = visited + ['ScheduleActivityTaskFailedEventAttributes']
        {
          activity_type: Stubs::ActivityType.default(visited),
          activity_id: 'activity_id',
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleActivityTaskFailedEventAttributes.new
        data = {}
        data['activityType'] = Stubs::ActivityType.stub(stub[:activity_type]) unless stub[:activity_type].nil?
        data['activityId'] = stub[:activity_id] unless stub[:activity_id].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for RequestCancelExternalWorkflowExecutionFailedEventAttributes
    class RequestCancelExternalWorkflowExecutionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('RequestCancelExternalWorkflowExecutionFailedEventAttributes')
        visited = visited + ['RequestCancelExternalWorkflowExecutionFailedEventAttributes']
        {
          workflow_id: 'workflow_id',
          run_id: 'run_id',
          cause: 'cause',
          initiated_event_id: 1,
          decision_task_completed_event_id: 1,
          control: 'control',
        }
      end

      def self.stub(stub)
        stub ||= Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes.new
        data = {}
        data['workflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['runId'] = stub[:run_id] unless stub[:run_id].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data
      end
    end

    # Structure Stubber for RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    class RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('RequestCancelExternalWorkflowExecutionInitiatedEventAttributes')
        visited = visited + ['RequestCancelExternalWorkflowExecutionInitiatedEventAttributes']
        {
          workflow_id: 'workflow_id',
          run_id: 'run_id',
          decision_task_completed_event_id: 1,
          control: 'control',
        }
      end

      def self.stub(stub)
        stub ||= Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.new
        data = {}
        data['workflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['runId'] = stub[:run_id] unless stub[:run_id].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data
      end
    end

    # Structure Stubber for ExternalWorkflowExecutionCancelRequestedEventAttributes
    class ExternalWorkflowExecutionCancelRequestedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ExternalWorkflowExecutionCancelRequestedEventAttributes')
        visited = visited + ['ExternalWorkflowExecutionCancelRequestedEventAttributes']
        {
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          initiated_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExternalWorkflowExecutionCancelRequestedEventAttributes.new
        data = {}
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data
      end
    end

    # Structure Stubber for SignalExternalWorkflowExecutionFailedEventAttributes
    class SignalExternalWorkflowExecutionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('SignalExternalWorkflowExecutionFailedEventAttributes')
        visited = visited + ['SignalExternalWorkflowExecutionFailedEventAttributes']
        {
          workflow_id: 'workflow_id',
          run_id: 'run_id',
          cause: 'cause',
          initiated_event_id: 1,
          decision_task_completed_event_id: 1,
          control: 'control',
        }
      end

      def self.stub(stub)
        stub ||= Types::SignalExternalWorkflowExecutionFailedEventAttributes.new
        data = {}
        data['workflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['runId'] = stub[:run_id] unless stub[:run_id].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data
      end
    end

    # Structure Stubber for ExternalWorkflowExecutionSignaledEventAttributes
    class ExternalWorkflowExecutionSignaledEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ExternalWorkflowExecutionSignaledEventAttributes')
        visited = visited + ['ExternalWorkflowExecutionSignaledEventAttributes']
        {
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          initiated_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExternalWorkflowExecutionSignaledEventAttributes.new
        data = {}
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data
      end
    end

    # Structure Stubber for SignalExternalWorkflowExecutionInitiatedEventAttributes
    class SignalExternalWorkflowExecutionInitiatedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('SignalExternalWorkflowExecutionInitiatedEventAttributes')
        visited = visited + ['SignalExternalWorkflowExecutionInitiatedEventAttributes']
        {
          workflow_id: 'workflow_id',
          run_id: 'run_id',
          signal_name: 'signal_name',
          input: 'input',
          decision_task_completed_event_id: 1,
          control: 'control',
        }
      end

      def self.stub(stub)
        stub ||= Types::SignalExternalWorkflowExecutionInitiatedEventAttributes.new
        data = {}
        data['workflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['runId'] = stub[:run_id] unless stub[:run_id].nil?
        data['signalName'] = stub[:signal_name] unless stub[:signal_name].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data
      end
    end

    # Structure Stubber for ChildWorkflowExecutionTerminatedEventAttributes
    class ChildWorkflowExecutionTerminatedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ChildWorkflowExecutionTerminatedEventAttributes')
        visited = visited + ['ChildWorkflowExecutionTerminatedEventAttributes']
        {
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          workflow_type: Stubs::WorkflowType.default(visited),
          initiated_event_id: 1,
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChildWorkflowExecutionTerminatedEventAttributes.new
        data = {}
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for ChildWorkflowExecutionCanceledEventAttributes
    class ChildWorkflowExecutionCanceledEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ChildWorkflowExecutionCanceledEventAttributes')
        visited = visited + ['ChildWorkflowExecutionCanceledEventAttributes']
        {
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          workflow_type: Stubs::WorkflowType.default(visited),
          details: 'details',
          initiated_event_id: 1,
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChildWorkflowExecutionCanceledEventAttributes.new
        data = {}
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for ChildWorkflowExecutionTimedOutEventAttributes
    class ChildWorkflowExecutionTimedOutEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ChildWorkflowExecutionTimedOutEventAttributes')
        visited = visited + ['ChildWorkflowExecutionTimedOutEventAttributes']
        {
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          workflow_type: Stubs::WorkflowType.default(visited),
          timeout_type: 'timeout_type',
          initiated_event_id: 1,
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChildWorkflowExecutionTimedOutEventAttributes.new
        data = {}
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['timeoutType'] = stub[:timeout_type] unless stub[:timeout_type].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for ChildWorkflowExecutionFailedEventAttributes
    class ChildWorkflowExecutionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ChildWorkflowExecutionFailedEventAttributes')
        visited = visited + ['ChildWorkflowExecutionFailedEventAttributes']
        {
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          workflow_type: Stubs::WorkflowType.default(visited),
          reason: 'reason',
          details: 'details',
          initiated_event_id: 1,
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChildWorkflowExecutionFailedEventAttributes.new
        data = {}
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for ChildWorkflowExecutionCompletedEventAttributes
    class ChildWorkflowExecutionCompletedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ChildWorkflowExecutionCompletedEventAttributes')
        visited = visited + ['ChildWorkflowExecutionCompletedEventAttributes']
        {
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          workflow_type: Stubs::WorkflowType.default(visited),
          result: 'result',
          initiated_event_id: 1,
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChildWorkflowExecutionCompletedEventAttributes.new
        data = {}
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['result'] = stub[:result] unless stub[:result].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for ChildWorkflowExecutionStartedEventAttributes
    class ChildWorkflowExecutionStartedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ChildWorkflowExecutionStartedEventAttributes')
        visited = visited + ['ChildWorkflowExecutionStartedEventAttributes']
        {
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          workflow_type: Stubs::WorkflowType.default(visited),
          initiated_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChildWorkflowExecutionStartedEventAttributes.new
        data = {}
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['initiatedEventId'] = stub[:initiated_event_id] unless stub[:initiated_event_id].nil?
        data
      end
    end

    # Structure Stubber for StartChildWorkflowExecutionInitiatedEventAttributes
    class StartChildWorkflowExecutionInitiatedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('StartChildWorkflowExecutionInitiatedEventAttributes')
        visited = visited + ['StartChildWorkflowExecutionInitiatedEventAttributes']
        {
          workflow_id: 'workflow_id',
          workflow_type: Stubs::WorkflowType.default(visited),
          control: 'control',
          input: 'input',
          execution_start_to_close_timeout: 'execution_start_to_close_timeout',
          task_list: Stubs::TaskList.default(visited),
          task_priority: 'task_priority',
          decision_task_completed_event_id: 1,
          child_policy: 'child_policy',
          task_start_to_close_timeout: 'task_start_to_close_timeout',
          tag_list: Stubs::TagList.default(visited),
          lambda_role: 'lambda_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::StartChildWorkflowExecutionInitiatedEventAttributes.new
        data = {}
        data['workflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['executionStartToCloseTimeout'] = stub[:execution_start_to_close_timeout] unless stub[:execution_start_to_close_timeout].nil?
        data['taskList'] = Stubs::TaskList.stub(stub[:task_list]) unless stub[:task_list].nil?
        data['taskPriority'] = stub[:task_priority] unless stub[:task_priority].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data['childPolicy'] = stub[:child_policy] unless stub[:child_policy].nil?
        data['taskStartToCloseTimeout'] = stub[:task_start_to_close_timeout] unless stub[:task_start_to_close_timeout].nil?
        data['tagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        data['lambdaRole'] = stub[:lambda_role] unless stub[:lambda_role].nil?
        data
      end
    end

    # Structure Stubber for TimerCanceledEventAttributes
    class TimerCanceledEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('TimerCanceledEventAttributes')
        visited = visited + ['TimerCanceledEventAttributes']
        {
          timer_id: 'timer_id',
          started_event_id: 1,
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimerCanceledEventAttributes.new
        data = {}
        data['timerId'] = stub[:timer_id] unless stub[:timer_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for TimerFiredEventAttributes
    class TimerFiredEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('TimerFiredEventAttributes')
        visited = visited + ['TimerFiredEventAttributes']
        {
          timer_id: 'timer_id',
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimerFiredEventAttributes.new
        data = {}
        data['timerId'] = stub[:timer_id] unless stub[:timer_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for TimerStartedEventAttributes
    class TimerStartedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('TimerStartedEventAttributes')
        visited = visited + ['TimerStartedEventAttributes']
        {
          timer_id: 'timer_id',
          control: 'control',
          start_to_fire_timeout: 'start_to_fire_timeout',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimerStartedEventAttributes.new
        data = {}
        data['timerId'] = stub[:timer_id] unless stub[:timer_id].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data['startToFireTimeout'] = stub[:start_to_fire_timeout] unless stub[:start_to_fire_timeout].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for RecordMarkerFailedEventAttributes
    class RecordMarkerFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('RecordMarkerFailedEventAttributes')
        visited = visited + ['RecordMarkerFailedEventAttributes']
        {
          marker_name: 'marker_name',
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordMarkerFailedEventAttributes.new
        data = {}
        data['markerName'] = stub[:marker_name] unless stub[:marker_name].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for MarkerRecordedEventAttributes
    class MarkerRecordedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('MarkerRecordedEventAttributes')
        visited = visited + ['MarkerRecordedEventAttributes']
        {
          marker_name: 'marker_name',
          details: 'details',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MarkerRecordedEventAttributes.new
        data = {}
        data['markerName'] = stub[:marker_name] unless stub[:marker_name].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionSignaledEventAttributes
    class WorkflowExecutionSignaledEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionSignaledEventAttributes')
        visited = visited + ['WorkflowExecutionSignaledEventAttributes']
        {
          signal_name: 'signal_name',
          input: 'input',
          external_workflow_execution: Stubs::WorkflowExecution.default(visited),
          external_initiated_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionSignaledEventAttributes.new
        data = {}
        data['signalName'] = stub[:signal_name] unless stub[:signal_name].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['externalWorkflowExecution'] = Stubs::WorkflowExecution.stub(stub[:external_workflow_execution]) unless stub[:external_workflow_execution].nil?
        data['externalInitiatedEventId'] = stub[:external_initiated_event_id] unless stub[:external_initiated_event_id].nil?
        data
      end
    end

    # Structure Stubber for ActivityTaskCancelRequestedEventAttributes
    class ActivityTaskCancelRequestedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ActivityTaskCancelRequestedEventAttributes')
        visited = visited + ['ActivityTaskCancelRequestedEventAttributes']
        {
          decision_task_completed_event_id: 1,
          activity_id: 'activity_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTaskCancelRequestedEventAttributes.new
        data = {}
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data['activityId'] = stub[:activity_id] unless stub[:activity_id].nil?
        data
      end
    end

    # Structure Stubber for ActivityTaskCanceledEventAttributes
    class ActivityTaskCanceledEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ActivityTaskCanceledEventAttributes')
        visited = visited + ['ActivityTaskCanceledEventAttributes']
        {
          details: 'details',
          scheduled_event_id: 1,
          started_event_id: 1,
          latest_cancel_requested_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTaskCanceledEventAttributes.new
        data = {}
        data['details'] = stub[:details] unless stub[:details].nil?
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data['latestCancelRequestedEventId'] = stub[:latest_cancel_requested_event_id] unless stub[:latest_cancel_requested_event_id].nil?
        data
      end
    end

    # Structure Stubber for ActivityTaskTimedOutEventAttributes
    class ActivityTaskTimedOutEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ActivityTaskTimedOutEventAttributes')
        visited = visited + ['ActivityTaskTimedOutEventAttributes']
        {
          timeout_type: 'timeout_type',
          scheduled_event_id: 1,
          started_event_id: 1,
          details: 'details',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTaskTimedOutEventAttributes.new
        data = {}
        data['timeoutType'] = stub[:timeout_type] unless stub[:timeout_type].nil?
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        data
      end
    end

    # Structure Stubber for ActivityTaskFailedEventAttributes
    class ActivityTaskFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ActivityTaskFailedEventAttributes')
        visited = visited + ['ActivityTaskFailedEventAttributes']
        {
          reason: 'reason',
          details: 'details',
          scheduled_event_id: 1,
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTaskFailedEventAttributes.new
        data = {}
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for ActivityTaskCompletedEventAttributes
    class ActivityTaskCompletedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ActivityTaskCompletedEventAttributes')
        visited = visited + ['ActivityTaskCompletedEventAttributes']
        {
          result: 'result',
          scheduled_event_id: 1,
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTaskCompletedEventAttributes.new
        data = {}
        data['result'] = stub[:result] unless stub[:result].nil?
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for ActivityTaskStartedEventAttributes
    class ActivityTaskStartedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ActivityTaskStartedEventAttributes')
        visited = visited + ['ActivityTaskStartedEventAttributes']
        {
          identity: 'identity',
          scheduled_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTaskStartedEventAttributes.new
        data = {}
        data['identity'] = stub[:identity] unless stub[:identity].nil?
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data
      end
    end

    # Structure Stubber for ActivityTaskScheduledEventAttributes
    class ActivityTaskScheduledEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ActivityTaskScheduledEventAttributes')
        visited = visited + ['ActivityTaskScheduledEventAttributes']
        {
          activity_type: Stubs::ActivityType.default(visited),
          activity_id: 'activity_id',
          input: 'input',
          control: 'control',
          schedule_to_start_timeout: 'schedule_to_start_timeout',
          schedule_to_close_timeout: 'schedule_to_close_timeout',
          start_to_close_timeout: 'start_to_close_timeout',
          task_list: Stubs::TaskList.default(visited),
          task_priority: 'task_priority',
          decision_task_completed_event_id: 1,
          heartbeat_timeout: 'heartbeat_timeout',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityTaskScheduledEventAttributes.new
        data = {}
        data['activityType'] = Stubs::ActivityType.stub(stub[:activity_type]) unless stub[:activity_type].nil?
        data['activityId'] = stub[:activity_id] unless stub[:activity_id].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        data['control'] = stub[:control] unless stub[:control].nil?
        data['scheduleToStartTimeout'] = stub[:schedule_to_start_timeout] unless stub[:schedule_to_start_timeout].nil?
        data['scheduleToCloseTimeout'] = stub[:schedule_to_close_timeout] unless stub[:schedule_to_close_timeout].nil?
        data['startToCloseTimeout'] = stub[:start_to_close_timeout] unless stub[:start_to_close_timeout].nil?
        data['taskList'] = Stubs::TaskList.stub(stub[:task_list]) unless stub[:task_list].nil?
        data['taskPriority'] = stub[:task_priority] unless stub[:task_priority].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data['heartbeatTimeout'] = stub[:heartbeat_timeout] unless stub[:heartbeat_timeout].nil?
        data
      end
    end

    # Structure Stubber for DecisionTaskTimedOutEventAttributes
    class DecisionTaskTimedOutEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('DecisionTaskTimedOutEventAttributes')
        visited = visited + ['DecisionTaskTimedOutEventAttributes']
        {
          timeout_type: 'timeout_type',
          scheduled_event_id: 1,
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DecisionTaskTimedOutEventAttributes.new
        data = {}
        data['timeoutType'] = stub[:timeout_type] unless stub[:timeout_type].nil?
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for DecisionTaskCompletedEventAttributes
    class DecisionTaskCompletedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('DecisionTaskCompletedEventAttributes')
        visited = visited + ['DecisionTaskCompletedEventAttributes']
        {
          execution_context: 'execution_context',
          scheduled_event_id: 1,
          started_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DecisionTaskCompletedEventAttributes.new
        data = {}
        data['executionContext'] = stub[:execution_context] unless stub[:execution_context].nil?
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data
      end
    end

    # Structure Stubber for DecisionTaskStartedEventAttributes
    class DecisionTaskStartedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('DecisionTaskStartedEventAttributes')
        visited = visited + ['DecisionTaskStartedEventAttributes']
        {
          identity: 'identity',
          scheduled_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DecisionTaskStartedEventAttributes.new
        data = {}
        data['identity'] = stub[:identity] unless stub[:identity].nil?
        data['scheduledEventId'] = stub[:scheduled_event_id] unless stub[:scheduled_event_id].nil?
        data
      end
    end

    # Structure Stubber for DecisionTaskScheduledEventAttributes
    class DecisionTaskScheduledEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('DecisionTaskScheduledEventAttributes')
        visited = visited + ['DecisionTaskScheduledEventAttributes']
        {
          task_list: Stubs::TaskList.default(visited),
          task_priority: 'task_priority',
          start_to_close_timeout: 'start_to_close_timeout',
        }
      end

      def self.stub(stub)
        stub ||= Types::DecisionTaskScheduledEventAttributes.new
        data = {}
        data['taskList'] = Stubs::TaskList.stub(stub[:task_list]) unless stub[:task_list].nil?
        data['taskPriority'] = stub[:task_priority] unless stub[:task_priority].nil?
        data['startToCloseTimeout'] = stub[:start_to_close_timeout] unless stub[:start_to_close_timeout].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionCancelRequestedEventAttributes
    class WorkflowExecutionCancelRequestedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionCancelRequestedEventAttributes')
        visited = visited + ['WorkflowExecutionCancelRequestedEventAttributes']
        {
          external_workflow_execution: Stubs::WorkflowExecution.default(visited),
          external_initiated_event_id: 1,
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionCancelRequestedEventAttributes.new
        data = {}
        data['externalWorkflowExecution'] = Stubs::WorkflowExecution.stub(stub[:external_workflow_execution]) unless stub[:external_workflow_execution].nil?
        data['externalInitiatedEventId'] = stub[:external_initiated_event_id] unless stub[:external_initiated_event_id].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionTerminatedEventAttributes
    class WorkflowExecutionTerminatedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionTerminatedEventAttributes')
        visited = visited + ['WorkflowExecutionTerminatedEventAttributes']
        {
          reason: 'reason',
          details: 'details',
          child_policy: 'child_policy',
          cause: 'cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionTerminatedEventAttributes.new
        data = {}
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        data['childPolicy'] = stub[:child_policy] unless stub[:child_policy].nil?
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data
      end
    end

    # Structure Stubber for ContinueAsNewWorkflowExecutionFailedEventAttributes
    class ContinueAsNewWorkflowExecutionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('ContinueAsNewWorkflowExecutionFailedEventAttributes')
        visited = visited + ['ContinueAsNewWorkflowExecutionFailedEventAttributes']
        {
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContinueAsNewWorkflowExecutionFailedEventAttributes.new
        data = {}
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionContinuedAsNewEventAttributes
    class WorkflowExecutionContinuedAsNewEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionContinuedAsNewEventAttributes')
        visited = visited + ['WorkflowExecutionContinuedAsNewEventAttributes']
        {
          input: 'input',
          decision_task_completed_event_id: 1,
          new_execution_run_id: 'new_execution_run_id',
          execution_start_to_close_timeout: 'execution_start_to_close_timeout',
          task_list: Stubs::TaskList.default(visited),
          task_priority: 'task_priority',
          task_start_to_close_timeout: 'task_start_to_close_timeout',
          child_policy: 'child_policy',
          tag_list: Stubs::TagList.default(visited),
          workflow_type: Stubs::WorkflowType.default(visited),
          lambda_role: 'lambda_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionContinuedAsNewEventAttributes.new
        data = {}
        data['input'] = stub[:input] unless stub[:input].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data['newExecutionRunId'] = stub[:new_execution_run_id] unless stub[:new_execution_run_id].nil?
        data['executionStartToCloseTimeout'] = stub[:execution_start_to_close_timeout] unless stub[:execution_start_to_close_timeout].nil?
        data['taskList'] = Stubs::TaskList.stub(stub[:task_list]) unless stub[:task_list].nil?
        data['taskPriority'] = stub[:task_priority] unless stub[:task_priority].nil?
        data['taskStartToCloseTimeout'] = stub[:task_start_to_close_timeout] unless stub[:task_start_to_close_timeout].nil?
        data['childPolicy'] = stub[:child_policy] unless stub[:child_policy].nil?
        data['tagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['lambdaRole'] = stub[:lambda_role] unless stub[:lambda_role].nil?
        data
      end
    end

    # Structure Stubber for CancelWorkflowExecutionFailedEventAttributes
    class CancelWorkflowExecutionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('CancelWorkflowExecutionFailedEventAttributes')
        visited = visited + ['CancelWorkflowExecutionFailedEventAttributes']
        {
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CancelWorkflowExecutionFailedEventAttributes.new
        data = {}
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionCanceledEventAttributes
    class WorkflowExecutionCanceledEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionCanceledEventAttributes')
        visited = visited + ['WorkflowExecutionCanceledEventAttributes']
        {
          details: 'details',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionCanceledEventAttributes.new
        data = {}
        data['details'] = stub[:details] unless stub[:details].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionTimedOutEventAttributes
    class WorkflowExecutionTimedOutEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionTimedOutEventAttributes')
        visited = visited + ['WorkflowExecutionTimedOutEventAttributes']
        {
          timeout_type: 'timeout_type',
          child_policy: 'child_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionTimedOutEventAttributes.new
        data = {}
        data['timeoutType'] = stub[:timeout_type] unless stub[:timeout_type].nil?
        data['childPolicy'] = stub[:child_policy] unless stub[:child_policy].nil?
        data
      end
    end

    # Structure Stubber for FailWorkflowExecutionFailedEventAttributes
    class FailWorkflowExecutionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('FailWorkflowExecutionFailedEventAttributes')
        visited = visited + ['FailWorkflowExecutionFailedEventAttributes']
        {
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FailWorkflowExecutionFailedEventAttributes.new
        data = {}
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionFailedEventAttributes
    class WorkflowExecutionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionFailedEventAttributes')
        visited = visited + ['WorkflowExecutionFailedEventAttributes']
        {
          reason: 'reason',
          details: 'details',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionFailedEventAttributes.new
        data = {}
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for CompleteWorkflowExecutionFailedEventAttributes
    class CompleteWorkflowExecutionFailedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('CompleteWorkflowExecutionFailedEventAttributes')
        visited = visited + ['CompleteWorkflowExecutionFailedEventAttributes']
        {
          cause: 'cause',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CompleteWorkflowExecutionFailedEventAttributes.new
        data = {}
        data['cause'] = stub[:cause] unless stub[:cause].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionCompletedEventAttributes
    class WorkflowExecutionCompletedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionCompletedEventAttributes')
        visited = visited + ['WorkflowExecutionCompletedEventAttributes']
        {
          result: 'result',
          decision_task_completed_event_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionCompletedEventAttributes.new
        data = {}
        data['result'] = stub[:result] unless stub[:result].nil?
        data['decisionTaskCompletedEventId'] = stub[:decision_task_completed_event_id] unless stub[:decision_task_completed_event_id].nil?
        data
      end
    end

    # Structure Stubber for WorkflowExecutionStartedEventAttributes
    class WorkflowExecutionStartedEventAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionStartedEventAttributes')
        visited = visited + ['WorkflowExecutionStartedEventAttributes']
        {
          input: 'input',
          execution_start_to_close_timeout: 'execution_start_to_close_timeout',
          task_start_to_close_timeout: 'task_start_to_close_timeout',
          child_policy: 'child_policy',
          task_list: Stubs::TaskList.default(visited),
          task_priority: 'task_priority',
          workflow_type: Stubs::WorkflowType.default(visited),
          tag_list: Stubs::TagList.default(visited),
          continued_execution_run_id: 'continued_execution_run_id',
          parent_workflow_execution: Stubs::WorkflowExecution.default(visited),
          parent_initiated_event_id: 1,
          lambda_role: 'lambda_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowExecutionStartedEventAttributes.new
        data = {}
        data['input'] = stub[:input] unless stub[:input].nil?
        data['executionStartToCloseTimeout'] = stub[:execution_start_to_close_timeout] unless stub[:execution_start_to_close_timeout].nil?
        data['taskStartToCloseTimeout'] = stub[:task_start_to_close_timeout] unless stub[:task_start_to_close_timeout].nil?
        data['childPolicy'] = stub[:child_policy] unless stub[:child_policy].nil?
        data['taskList'] = Stubs::TaskList.stub(stub[:task_list]) unless stub[:task_list].nil?
        data['taskPriority'] = stub[:task_priority] unless stub[:task_priority].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['tagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        data['continuedExecutionRunId'] = stub[:continued_execution_run_id] unless stub[:continued_execution_run_id].nil?
        data['parentWorkflowExecution'] = Stubs::WorkflowExecution.stub(stub[:parent_workflow_execution]) unless stub[:parent_workflow_execution].nil?
        data['parentInitiatedEventId'] = stub[:parent_initiated_event_id] unless stub[:parent_initiated_event_id].nil?
        data['lambdaRole'] = stub[:lambda_role] unless stub[:lambda_role].nil?
        data
      end
    end

    # Operation Stubber for ListActivityTypes
    class ListActivityTypes
      def self.default(visited=[])
        {
          type_infos: Stubs::ActivityTypeInfoList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['typeInfos'] = Stubs::ActivityTypeInfoList.stub(stub[:type_infos]) unless stub[:type_infos].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ActivityTypeInfoList
    class ActivityTypeInfoList
      def self.default(visited=[])
        return nil if visited.include?('ActivityTypeInfoList')
        visited = visited + ['ActivityTypeInfoList']
        [
          Stubs::ActivityTypeInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActivityTypeInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListClosedWorkflowExecutions
    class ListClosedWorkflowExecutions
      def self.default(visited=[])
        {
          execution_infos: Stubs::WorkflowExecutionInfoList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['executionInfos'] = Stubs::WorkflowExecutionInfoList.stub(stub[:execution_infos]) unless stub[:execution_infos].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkflowExecutionInfoList
    class WorkflowExecutionInfoList
      def self.default(visited=[])
        return nil if visited.include?('WorkflowExecutionInfoList')
        visited = visited + ['WorkflowExecutionInfoList']
        [
          Stubs::WorkflowExecutionInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkflowExecutionInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDomains
    class ListDomains
      def self.default(visited=[])
        {
          domain_infos: Stubs::DomainInfoList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['domainInfos'] = Stubs::DomainInfoList.stub(stub[:domain_infos]) unless stub[:domain_infos].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DomainInfoList
    class DomainInfoList
      def self.default(visited=[])
        return nil if visited.include?('DomainInfoList')
        visited = visited + ['DomainInfoList']
        [
          Stubs::DomainInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListOpenWorkflowExecutions
    class ListOpenWorkflowExecutions
      def self.default(visited=[])
        {
          execution_infos: Stubs::WorkflowExecutionInfoList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['executionInfos'] = Stubs::WorkflowExecutionInfoList.stub(stub[:execution_infos]) unless stub[:execution_infos].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::ResourceTagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Stubs::ResourceTagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceTagList
    class ResourceTagList
      def self.default(visited=[])
        return nil if visited.include?('ResourceTagList')
        visited = visited + ['ResourceTagList']
        [
          Stubs::ResourceTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceTag
    class ResourceTag
      def self.default(visited=[])
        return nil if visited.include?('ResourceTag')
        visited = visited + ['ResourceTag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceTag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListWorkflowTypes
    class ListWorkflowTypes
      def self.default(visited=[])
        {
          type_infos: Stubs::WorkflowTypeInfoList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['typeInfos'] = Stubs::WorkflowTypeInfoList.stub(stub[:type_infos]) unless stub[:type_infos].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkflowTypeInfoList
    class WorkflowTypeInfoList
      def self.default(visited=[])
        return nil if visited.include?('WorkflowTypeInfoList')
        visited = visited + ['WorkflowTypeInfoList']
        [
          Stubs::WorkflowTypeInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkflowTypeInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for PollForActivityTask
    class PollForActivityTask
      def self.default(visited=[])
        {
          task_token: 'task_token',
          activity_id: 'activity_id',
          started_event_id: 1,
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          activity_type: Stubs::ActivityType.default(visited),
          input: 'input',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskToken'] = stub[:task_token] unless stub[:task_token].nil?
        data['activityId'] = stub[:activity_id] unless stub[:activity_id].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['activityType'] = Stubs::ActivityType.stub(stub[:activity_type]) unless stub[:activity_type].nil?
        data['input'] = stub[:input] unless stub[:input].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PollForDecisionTask
    class PollForDecisionTask
      def self.default(visited=[])
        {
          task_token: 'task_token',
          started_event_id: 1,
          workflow_execution: Stubs::WorkflowExecution.default(visited),
          workflow_type: Stubs::WorkflowType.default(visited),
          events: Stubs::HistoryEventList.default(visited),
          next_page_token: 'next_page_token',
          previous_started_event_id: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskToken'] = stub[:task_token] unless stub[:task_token].nil?
        data['startedEventId'] = stub[:started_event_id] unless stub[:started_event_id].nil?
        data['workflowExecution'] = Stubs::WorkflowExecution.stub(stub[:workflow_execution]) unless stub[:workflow_execution].nil?
        data['workflowType'] = Stubs::WorkflowType.stub(stub[:workflow_type]) unless stub[:workflow_type].nil?
        data['events'] = Stubs::HistoryEventList.stub(stub[:events]) unless stub[:events].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        data['previousStartedEventId'] = stub[:previous_started_event_id] unless stub[:previous_started_event_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RecordActivityTaskHeartbeat
    class RecordActivityTaskHeartbeat
      def self.default(visited=[])
        {
          cancel_requested: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['cancelRequested'] = stub[:cancel_requested] unless stub[:cancel_requested].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterActivityType
    class RegisterActivityType
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

    # Operation Stubber for RegisterDomain
    class RegisterDomain
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

    # Operation Stubber for RegisterWorkflowType
    class RegisterWorkflowType
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

    # Operation Stubber for RequestCancelWorkflowExecution
    class RequestCancelWorkflowExecution
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

    # Operation Stubber for RespondActivityTaskCanceled
    class RespondActivityTaskCanceled
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

    # Operation Stubber for RespondActivityTaskCompleted
    class RespondActivityTaskCompleted
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

    # Operation Stubber for RespondActivityTaskFailed
    class RespondActivityTaskFailed
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

    # Operation Stubber for RespondDecisionTaskCompleted
    class RespondDecisionTaskCompleted
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

    # Operation Stubber for SignalWorkflowExecution
    class SignalWorkflowExecution
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

    # Operation Stubber for StartWorkflowExecution
    class StartWorkflowExecution
      def self.default(visited=[])
        {
          run_id: 'run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['runId'] = stub[:run_id] unless stub[:run_id].nil?
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

    # Operation Stubber for TerminateWorkflowExecution
    class TerminateWorkflowExecution
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

    # Operation Stubber for UndeprecateActivityType
    class UndeprecateActivityType
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

    # Operation Stubber for UndeprecateDomain
    class UndeprecateDomain
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

    # Operation Stubber for UndeprecateWorkflowType
    class UndeprecateWorkflowType
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
  end
end