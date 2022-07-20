# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SWF
  module Builders

    # Operation Builder for CountClosedWorkflowExecutions
    class CountClosedWorkflowExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.CountClosedWorkflowExecutions'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['startTimeFilter'] = Builders::ExecutionTimeFilter.build(input[:start_time_filter]) unless input[:start_time_filter].nil?
        data['closeTimeFilter'] = Builders::ExecutionTimeFilter.build(input[:close_time_filter]) unless input[:close_time_filter].nil?
        data['executionFilter'] = Builders::WorkflowExecutionFilter.build(input[:execution_filter]) unless input[:execution_filter].nil?
        data['typeFilter'] = Builders::WorkflowTypeFilter.build(input[:type_filter]) unless input[:type_filter].nil?
        data['tagFilter'] = Builders::TagFilter.build(input[:tag_filter]) unless input[:tag_filter].nil?
        data['closeStatusFilter'] = Builders::CloseStatusFilter.build(input[:close_status_filter]) unless input[:close_status_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CloseStatusFilter
    class CloseStatusFilter
      def self.build(input)
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for TagFilter
    class TagFilter
      def self.build(input)
        data = {}
        data['tag'] = input[:tag] unless input[:tag].nil?
        data
      end
    end

    # Structure Builder for WorkflowTypeFilter
    class WorkflowTypeFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Structure Builder for WorkflowExecutionFilter
    class WorkflowExecutionFilter
      def self.build(input)
        data = {}
        data['workflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data
      end
    end

    # Structure Builder for ExecutionTimeFilter
    class ExecutionTimeFilter
      def self.build(input)
        data = {}
        data['oldestDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:oldest_date]).to_i unless input[:oldest_date].nil?
        data['latestDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:latest_date]).to_i unless input[:latest_date].nil?
        data
      end
    end

    # Operation Builder for CountOpenWorkflowExecutions
    class CountOpenWorkflowExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.CountOpenWorkflowExecutions'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['startTimeFilter'] = Builders::ExecutionTimeFilter.build(input[:start_time_filter]) unless input[:start_time_filter].nil?
        data['typeFilter'] = Builders::WorkflowTypeFilter.build(input[:type_filter]) unless input[:type_filter].nil?
        data['tagFilter'] = Builders::TagFilter.build(input[:tag_filter]) unless input[:tag_filter].nil?
        data['executionFilter'] = Builders::WorkflowExecutionFilter.build(input[:execution_filter]) unless input[:execution_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CountPendingActivityTasks
    class CountPendingActivityTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.CountPendingActivityTasks'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['taskList'] = Builders::TaskList.build(input[:task_list]) unless input[:task_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TaskList
    class TaskList
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Operation Builder for CountPendingDecisionTasks
    class CountPendingDecisionTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.CountPendingDecisionTasks'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['taskList'] = Builders::TaskList.build(input[:task_list]) unless input[:task_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeprecateActivityType
    class DeprecateActivityType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.DeprecateActivityType'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['activityType'] = Builders::ActivityType.build(input[:activity_type]) unless input[:activity_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ActivityType
    class ActivityType
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for DeprecateDomain
    class DeprecateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.DeprecateDomain'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeprecateWorkflowType
    class DeprecateWorkflowType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.DeprecateWorkflowType'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['workflowType'] = Builders::WorkflowType.build(input[:workflow_type]) unless input[:workflow_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorkflowType
    class WorkflowType
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for DescribeActivityType
    class DescribeActivityType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.DescribeActivityType'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['activityType'] = Builders::ActivityType.build(input[:activity_type]) unless input[:activity_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDomain
    class DescribeDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.DescribeDomain'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorkflowExecution
    class DescribeWorkflowExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.DescribeWorkflowExecution'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['execution'] = Builders::WorkflowExecution.build(input[:execution]) unless input[:execution].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorkflowExecution
    class WorkflowExecution
      def self.build(input)
        data = {}
        data['workflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['runId'] = input[:run_id] unless input[:run_id].nil?
        data
      end
    end

    # Operation Builder for DescribeWorkflowType
    class DescribeWorkflowType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.DescribeWorkflowType'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['workflowType'] = Builders::WorkflowType.build(input[:workflow_type]) unless input[:workflow_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWorkflowExecutionHistory
    class GetWorkflowExecutionHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.GetWorkflowExecutionHistory'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['execution'] = Builders::WorkflowExecution.build(input[:execution]) unless input[:execution].nil?
        data['nextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['maximumPageSize'] = input[:maximum_page_size] unless input[:maximum_page_size].nil?
        data['reverseOrder'] = input[:reverse_order] unless input[:reverse_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListActivityTypes
    class ListActivityTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.ListActivityTypes'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['registrationStatus'] = input[:registration_status] unless input[:registration_status].nil?
        data['nextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['maximumPageSize'] = input[:maximum_page_size] unless input[:maximum_page_size].nil?
        data['reverseOrder'] = input[:reverse_order] unless input[:reverse_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListClosedWorkflowExecutions
    class ListClosedWorkflowExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.ListClosedWorkflowExecutions'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['startTimeFilter'] = Builders::ExecutionTimeFilter.build(input[:start_time_filter]) unless input[:start_time_filter].nil?
        data['closeTimeFilter'] = Builders::ExecutionTimeFilter.build(input[:close_time_filter]) unless input[:close_time_filter].nil?
        data['executionFilter'] = Builders::WorkflowExecutionFilter.build(input[:execution_filter]) unless input[:execution_filter].nil?
        data['closeStatusFilter'] = Builders::CloseStatusFilter.build(input[:close_status_filter]) unless input[:close_status_filter].nil?
        data['typeFilter'] = Builders::WorkflowTypeFilter.build(input[:type_filter]) unless input[:type_filter].nil?
        data['tagFilter'] = Builders::TagFilter.build(input[:tag_filter]) unless input[:tag_filter].nil?
        data['nextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['maximumPageSize'] = input[:maximum_page_size] unless input[:maximum_page_size].nil?
        data['reverseOrder'] = input[:reverse_order] unless input[:reverse_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDomains
    class ListDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.ListDomains'
        data = {}
        data['nextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['registrationStatus'] = input[:registration_status] unless input[:registration_status].nil?
        data['maximumPageSize'] = input[:maximum_page_size] unless input[:maximum_page_size].nil?
        data['reverseOrder'] = input[:reverse_order] unless input[:reverse_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOpenWorkflowExecutions
    class ListOpenWorkflowExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.ListOpenWorkflowExecutions'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['startTimeFilter'] = Builders::ExecutionTimeFilter.build(input[:start_time_filter]) unless input[:start_time_filter].nil?
        data['typeFilter'] = Builders::WorkflowTypeFilter.build(input[:type_filter]) unless input[:type_filter].nil?
        data['tagFilter'] = Builders::TagFilter.build(input[:tag_filter]) unless input[:tag_filter].nil?
        data['nextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['maximumPageSize'] = input[:maximum_page_size] unless input[:maximum_page_size].nil?
        data['reverseOrder'] = input[:reverse_order] unless input[:reverse_order].nil?
        data['executionFilter'] = Builders::WorkflowExecutionFilter.build(input[:execution_filter]) unless input[:execution_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorkflowTypes
    class ListWorkflowTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.ListWorkflowTypes'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['registrationStatus'] = input[:registration_status] unless input[:registration_status].nil?
        data['nextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['maximumPageSize'] = input[:maximum_page_size] unless input[:maximum_page_size].nil?
        data['reverseOrder'] = input[:reverse_order] unless input[:reverse_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PollForActivityTask
    class PollForActivityTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.PollForActivityTask'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['taskList'] = Builders::TaskList.build(input[:task_list]) unless input[:task_list].nil?
        data['identity'] = input[:identity] unless input[:identity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PollForDecisionTask
    class PollForDecisionTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.PollForDecisionTask'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['taskList'] = Builders::TaskList.build(input[:task_list]) unless input[:task_list].nil?
        data['identity'] = input[:identity] unless input[:identity].nil?
        data['nextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['maximumPageSize'] = input[:maximum_page_size] unless input[:maximum_page_size].nil?
        data['reverseOrder'] = input[:reverse_order] unless input[:reverse_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RecordActivityTaskHeartbeat
    class RecordActivityTaskHeartbeat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.RecordActivityTaskHeartbeat'
        data = {}
        data['taskToken'] = input[:task_token] unless input[:task_token].nil?
        data['details'] = input[:details] unless input[:details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterActivityType
    class RegisterActivityType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.RegisterActivityType'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['defaultTaskStartToCloseTimeout'] = input[:default_task_start_to_close_timeout] unless input[:default_task_start_to_close_timeout].nil?
        data['defaultTaskHeartbeatTimeout'] = input[:default_task_heartbeat_timeout] unless input[:default_task_heartbeat_timeout].nil?
        data['defaultTaskList'] = Builders::TaskList.build(input[:default_task_list]) unless input[:default_task_list].nil?
        data['defaultTaskPriority'] = input[:default_task_priority] unless input[:default_task_priority].nil?
        data['defaultTaskScheduleToStartTimeout'] = input[:default_task_schedule_to_start_timeout] unless input[:default_task_schedule_to_start_timeout].nil?
        data['defaultTaskScheduleToCloseTimeout'] = input[:default_task_schedule_to_close_timeout] unless input[:default_task_schedule_to_close_timeout].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterDomain
    class RegisterDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.RegisterDomain'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['workflowExecutionRetentionPeriodInDays'] = input[:workflow_execution_retention_period_in_days] unless input[:workflow_execution_retention_period_in_days].nil?
        data['tags'] = Builders::ResourceTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceTagList
    class ResourceTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceTag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceTag
    class ResourceTag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for RegisterWorkflowType
    class RegisterWorkflowType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.RegisterWorkflowType'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['defaultTaskStartToCloseTimeout'] = input[:default_task_start_to_close_timeout] unless input[:default_task_start_to_close_timeout].nil?
        data['defaultExecutionStartToCloseTimeout'] = input[:default_execution_start_to_close_timeout] unless input[:default_execution_start_to_close_timeout].nil?
        data['defaultTaskList'] = Builders::TaskList.build(input[:default_task_list]) unless input[:default_task_list].nil?
        data['defaultTaskPriority'] = input[:default_task_priority] unless input[:default_task_priority].nil?
        data['defaultChildPolicy'] = input[:default_child_policy] unless input[:default_child_policy].nil?
        data['defaultLambdaRole'] = input[:default_lambda_role] unless input[:default_lambda_role].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RequestCancelWorkflowExecution
    class RequestCancelWorkflowExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.RequestCancelWorkflowExecution'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['workflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['runId'] = input[:run_id] unless input[:run_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RespondActivityTaskCanceled
    class RespondActivityTaskCanceled
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.RespondActivityTaskCanceled'
        data = {}
        data['taskToken'] = input[:task_token] unless input[:task_token].nil?
        data['details'] = input[:details] unless input[:details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RespondActivityTaskCompleted
    class RespondActivityTaskCompleted
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.RespondActivityTaskCompleted'
        data = {}
        data['taskToken'] = input[:task_token] unless input[:task_token].nil?
        data['result'] = input[:result] unless input[:result].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RespondActivityTaskFailed
    class RespondActivityTaskFailed
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.RespondActivityTaskFailed'
        data = {}
        data['taskToken'] = input[:task_token] unless input[:task_token].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        data['details'] = input[:details] unless input[:details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RespondDecisionTaskCompleted
    class RespondDecisionTaskCompleted
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.RespondDecisionTaskCompleted'
        data = {}
        data['taskToken'] = input[:task_token] unless input[:task_token].nil?
        data['decisions'] = Builders::DecisionList.build(input[:decisions]) unless input[:decisions].nil?
        data['executionContext'] = input[:execution_context] unless input[:execution_context].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DecisionList
    class DecisionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Decision.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Decision
    class Decision
      def self.build(input)
        data = {}
        data['decisionType'] = input[:decision_type] unless input[:decision_type].nil?
        data['scheduleActivityTaskDecisionAttributes'] = Builders::ScheduleActivityTaskDecisionAttributes.build(input[:schedule_activity_task_decision_attributes]) unless input[:schedule_activity_task_decision_attributes].nil?
        data['requestCancelActivityTaskDecisionAttributes'] = Builders::RequestCancelActivityTaskDecisionAttributes.build(input[:request_cancel_activity_task_decision_attributes]) unless input[:request_cancel_activity_task_decision_attributes].nil?
        data['completeWorkflowExecutionDecisionAttributes'] = Builders::CompleteWorkflowExecutionDecisionAttributes.build(input[:complete_workflow_execution_decision_attributes]) unless input[:complete_workflow_execution_decision_attributes].nil?
        data['failWorkflowExecutionDecisionAttributes'] = Builders::FailWorkflowExecutionDecisionAttributes.build(input[:fail_workflow_execution_decision_attributes]) unless input[:fail_workflow_execution_decision_attributes].nil?
        data['cancelWorkflowExecutionDecisionAttributes'] = Builders::CancelWorkflowExecutionDecisionAttributes.build(input[:cancel_workflow_execution_decision_attributes]) unless input[:cancel_workflow_execution_decision_attributes].nil?
        data['continueAsNewWorkflowExecutionDecisionAttributes'] = Builders::ContinueAsNewWorkflowExecutionDecisionAttributes.build(input[:continue_as_new_workflow_execution_decision_attributes]) unless input[:continue_as_new_workflow_execution_decision_attributes].nil?
        data['recordMarkerDecisionAttributes'] = Builders::RecordMarkerDecisionAttributes.build(input[:record_marker_decision_attributes]) unless input[:record_marker_decision_attributes].nil?
        data['startTimerDecisionAttributes'] = Builders::StartTimerDecisionAttributes.build(input[:start_timer_decision_attributes]) unless input[:start_timer_decision_attributes].nil?
        data['cancelTimerDecisionAttributes'] = Builders::CancelTimerDecisionAttributes.build(input[:cancel_timer_decision_attributes]) unless input[:cancel_timer_decision_attributes].nil?
        data['signalExternalWorkflowExecutionDecisionAttributes'] = Builders::SignalExternalWorkflowExecutionDecisionAttributes.build(input[:signal_external_workflow_execution_decision_attributes]) unless input[:signal_external_workflow_execution_decision_attributes].nil?
        data['requestCancelExternalWorkflowExecutionDecisionAttributes'] = Builders::RequestCancelExternalWorkflowExecutionDecisionAttributes.build(input[:request_cancel_external_workflow_execution_decision_attributes]) unless input[:request_cancel_external_workflow_execution_decision_attributes].nil?
        data['startChildWorkflowExecutionDecisionAttributes'] = Builders::StartChildWorkflowExecutionDecisionAttributes.build(input[:start_child_workflow_execution_decision_attributes]) unless input[:start_child_workflow_execution_decision_attributes].nil?
        data['scheduleLambdaFunctionDecisionAttributes'] = Builders::ScheduleLambdaFunctionDecisionAttributes.build(input[:schedule_lambda_function_decision_attributes]) unless input[:schedule_lambda_function_decision_attributes].nil?
        data
      end
    end

    # Structure Builder for ScheduleLambdaFunctionDecisionAttributes
    class ScheduleLambdaFunctionDecisionAttributes
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['control'] = input[:control] unless input[:control].nil?
        data['input'] = input[:input] unless input[:input].nil?
        data['startToCloseTimeout'] = input[:start_to_close_timeout] unless input[:start_to_close_timeout].nil?
        data
      end
    end

    # Structure Builder for StartChildWorkflowExecutionDecisionAttributes
    class StartChildWorkflowExecutionDecisionAttributes
      def self.build(input)
        data = {}
        data['workflowType'] = Builders::WorkflowType.build(input[:workflow_type]) unless input[:workflow_type].nil?
        data['workflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['control'] = input[:control] unless input[:control].nil?
        data['input'] = input[:input] unless input[:input].nil?
        data['executionStartToCloseTimeout'] = input[:execution_start_to_close_timeout] unless input[:execution_start_to_close_timeout].nil?
        data['taskList'] = Builders::TaskList.build(input[:task_list]) unless input[:task_list].nil?
        data['taskPriority'] = input[:task_priority] unless input[:task_priority].nil?
        data['taskStartToCloseTimeout'] = input[:task_start_to_close_timeout] unless input[:task_start_to_close_timeout].nil?
        data['childPolicy'] = input[:child_policy] unless input[:child_policy].nil?
        data['tagList'] = Builders::TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        data['lambdaRole'] = input[:lambda_role] unless input[:lambda_role].nil?
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RequestCancelExternalWorkflowExecutionDecisionAttributes
    class RequestCancelExternalWorkflowExecutionDecisionAttributes
      def self.build(input)
        data = {}
        data['workflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['runId'] = input[:run_id] unless input[:run_id].nil?
        data['control'] = input[:control] unless input[:control].nil?
        data
      end
    end

    # Structure Builder for SignalExternalWorkflowExecutionDecisionAttributes
    class SignalExternalWorkflowExecutionDecisionAttributes
      def self.build(input)
        data = {}
        data['workflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['runId'] = input[:run_id] unless input[:run_id].nil?
        data['signalName'] = input[:signal_name] unless input[:signal_name].nil?
        data['input'] = input[:input] unless input[:input].nil?
        data['control'] = input[:control] unless input[:control].nil?
        data
      end
    end

    # Structure Builder for CancelTimerDecisionAttributes
    class CancelTimerDecisionAttributes
      def self.build(input)
        data = {}
        data['timerId'] = input[:timer_id] unless input[:timer_id].nil?
        data
      end
    end

    # Structure Builder for StartTimerDecisionAttributes
    class StartTimerDecisionAttributes
      def self.build(input)
        data = {}
        data['timerId'] = input[:timer_id] unless input[:timer_id].nil?
        data['control'] = input[:control] unless input[:control].nil?
        data['startToFireTimeout'] = input[:start_to_fire_timeout] unless input[:start_to_fire_timeout].nil?
        data
      end
    end

    # Structure Builder for RecordMarkerDecisionAttributes
    class RecordMarkerDecisionAttributes
      def self.build(input)
        data = {}
        data['markerName'] = input[:marker_name] unless input[:marker_name].nil?
        data['details'] = input[:details] unless input[:details].nil?
        data
      end
    end

    # Structure Builder for ContinueAsNewWorkflowExecutionDecisionAttributes
    class ContinueAsNewWorkflowExecutionDecisionAttributes
      def self.build(input)
        data = {}
        data['input'] = input[:input] unless input[:input].nil?
        data['executionStartToCloseTimeout'] = input[:execution_start_to_close_timeout] unless input[:execution_start_to_close_timeout].nil?
        data['taskList'] = Builders::TaskList.build(input[:task_list]) unless input[:task_list].nil?
        data['taskPriority'] = input[:task_priority] unless input[:task_priority].nil?
        data['taskStartToCloseTimeout'] = input[:task_start_to_close_timeout] unless input[:task_start_to_close_timeout].nil?
        data['childPolicy'] = input[:child_policy] unless input[:child_policy].nil?
        data['tagList'] = Builders::TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        data['workflowTypeVersion'] = input[:workflow_type_version] unless input[:workflow_type_version].nil?
        data['lambdaRole'] = input[:lambda_role] unless input[:lambda_role].nil?
        data
      end
    end

    # Structure Builder for CancelWorkflowExecutionDecisionAttributes
    class CancelWorkflowExecutionDecisionAttributes
      def self.build(input)
        data = {}
        data['details'] = input[:details] unless input[:details].nil?
        data
      end
    end

    # Structure Builder for FailWorkflowExecutionDecisionAttributes
    class FailWorkflowExecutionDecisionAttributes
      def self.build(input)
        data = {}
        data['reason'] = input[:reason] unless input[:reason].nil?
        data['details'] = input[:details] unless input[:details].nil?
        data
      end
    end

    # Structure Builder for CompleteWorkflowExecutionDecisionAttributes
    class CompleteWorkflowExecutionDecisionAttributes
      def self.build(input)
        data = {}
        data['result'] = input[:result] unless input[:result].nil?
        data
      end
    end

    # Structure Builder for RequestCancelActivityTaskDecisionAttributes
    class RequestCancelActivityTaskDecisionAttributes
      def self.build(input)
        data = {}
        data['activityId'] = input[:activity_id] unless input[:activity_id].nil?
        data
      end
    end

    # Structure Builder for ScheduleActivityTaskDecisionAttributes
    class ScheduleActivityTaskDecisionAttributes
      def self.build(input)
        data = {}
        data['activityType'] = Builders::ActivityType.build(input[:activity_type]) unless input[:activity_type].nil?
        data['activityId'] = input[:activity_id] unless input[:activity_id].nil?
        data['control'] = input[:control] unless input[:control].nil?
        data['input'] = input[:input] unless input[:input].nil?
        data['scheduleToCloseTimeout'] = input[:schedule_to_close_timeout] unless input[:schedule_to_close_timeout].nil?
        data['taskList'] = Builders::TaskList.build(input[:task_list]) unless input[:task_list].nil?
        data['taskPriority'] = input[:task_priority] unless input[:task_priority].nil?
        data['scheduleToStartTimeout'] = input[:schedule_to_start_timeout] unless input[:schedule_to_start_timeout].nil?
        data['startToCloseTimeout'] = input[:start_to_close_timeout] unless input[:start_to_close_timeout].nil?
        data['heartbeatTimeout'] = input[:heartbeat_timeout] unless input[:heartbeat_timeout].nil?
        data
      end
    end

    # Operation Builder for SignalWorkflowExecution
    class SignalWorkflowExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.SignalWorkflowExecution'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['workflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['runId'] = input[:run_id] unless input[:run_id].nil?
        data['signalName'] = input[:signal_name] unless input[:signal_name].nil?
        data['input'] = input[:input] unless input[:input].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartWorkflowExecution
    class StartWorkflowExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.StartWorkflowExecution'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['workflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['workflowType'] = Builders::WorkflowType.build(input[:workflow_type]) unless input[:workflow_type].nil?
        data['taskList'] = Builders::TaskList.build(input[:task_list]) unless input[:task_list].nil?
        data['taskPriority'] = input[:task_priority] unless input[:task_priority].nil?
        data['input'] = input[:input] unless input[:input].nil?
        data['executionStartToCloseTimeout'] = input[:execution_start_to_close_timeout] unless input[:execution_start_to_close_timeout].nil?
        data['tagList'] = Builders::TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        data['taskStartToCloseTimeout'] = input[:task_start_to_close_timeout] unless input[:task_start_to_close_timeout].nil?
        data['childPolicy'] = input[:child_policy] unless input[:child_policy].nil?
        data['lambdaRole'] = input[:lambda_role] unless input[:lambda_role].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::ResourceTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TerminateWorkflowExecution
    class TerminateWorkflowExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.TerminateWorkflowExecution'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['workflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['runId'] = input[:run_id] unless input[:run_id].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        data['details'] = input[:details] unless input[:details].nil?
        data['childPolicy'] = input[:child_policy] unless input[:child_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UndeprecateActivityType
    class UndeprecateActivityType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.UndeprecateActivityType'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['activityType'] = Builders::ActivityType.build(input[:activity_type]) unless input[:activity_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UndeprecateDomain
    class UndeprecateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.UndeprecateDomain'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UndeprecateWorkflowType
    class UndeprecateWorkflowType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.UndeprecateWorkflowType'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['workflowType'] = Builders::WorkflowType.build(input[:workflow_type]) unless input[:workflow_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'SimpleWorkflowService.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = Builders::ResourceTagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceTagKeyList
    class ResourceTagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
