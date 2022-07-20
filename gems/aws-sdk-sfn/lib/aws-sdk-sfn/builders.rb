# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SFN
  module Builders

    # Operation Builder for CreateActivity
    class CreateActivity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.CreateActivity'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateStateMachine
    class CreateStateMachine
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.CreateStateMachine'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['definition'] = input[:definition] unless input[:definition].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['loggingConfiguration'] = LoggingConfiguration.build(input[:logging_configuration]) unless input[:logging_configuration].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['tracingConfiguration'] = TracingConfiguration.build(input[:tracing_configuration]) unless input[:tracing_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TracingConfiguration
    class TracingConfiguration
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for LoggingConfiguration
    class LoggingConfiguration
      def self.build(input)
        data = {}
        data['level'] = input[:level] unless input[:level].nil?
        data['includeExecutionData'] = input[:include_execution_data] unless input[:include_execution_data].nil?
        data['destinations'] = LogDestinationList.build(input[:destinations]) unless input[:destinations].nil?
        data
      end
    end

    # List Builder for LogDestinationList
    class LogDestinationList
      def self.build(input)
        data = []
        input.each do |element|
          data << LogDestination.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LogDestination
    class LogDestination
      def self.build(input)
        data = {}
        data['cloudWatchLogsLogGroup'] = CloudWatchLogsLogGroup.build(input[:cloud_watch_logs_log_group]) unless input[:cloud_watch_logs_log_group].nil?
        data
      end
    end

    # Structure Builder for CloudWatchLogsLogGroup
    class CloudWatchLogsLogGroup
      def self.build(input)
        data = {}
        data['logGroupArn'] = input[:log_group_arn] unless input[:log_group_arn].nil?
        data
      end
    end

    # Operation Builder for DeleteActivity
    class DeleteActivity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.DeleteActivity'
        data = {}
        data['activityArn'] = input[:activity_arn] unless input[:activity_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStateMachine
    class DeleteStateMachine
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.DeleteStateMachine'
        data = {}
        data['stateMachineArn'] = input[:state_machine_arn] unless input[:state_machine_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeActivity
    class DescribeActivity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.DescribeActivity'
        data = {}
        data['activityArn'] = input[:activity_arn] unless input[:activity_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeExecution
    class DescribeExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.DescribeExecution'
        data = {}
        data['executionArn'] = input[:execution_arn] unless input[:execution_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStateMachine
    class DescribeStateMachine
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.DescribeStateMachine'
        data = {}
        data['stateMachineArn'] = input[:state_machine_arn] unless input[:state_machine_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStateMachineForExecution
    class DescribeStateMachineForExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.DescribeStateMachineForExecution'
        data = {}
        data['executionArn'] = input[:execution_arn] unless input[:execution_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetActivityTask
    class GetActivityTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.GetActivityTask'
        data = {}
        data['activityArn'] = input[:activity_arn] unless input[:activity_arn].nil?
        data['workerName'] = input[:worker_name] unless input[:worker_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetExecutionHistory
    class GetExecutionHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.GetExecutionHistory'
        data = {}
        data['executionArn'] = input[:execution_arn] unless input[:execution_arn].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['reverseOrder'] = input[:reverse_order] unless input[:reverse_order].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['includeExecutionData'] = input[:include_execution_data] unless input[:include_execution_data].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListActivities
    class ListActivities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.ListActivities'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListExecutions
    class ListExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.ListExecutions'
        data = {}
        data['stateMachineArn'] = input[:state_machine_arn] unless input[:state_machine_arn].nil?
        data['statusFilter'] = input[:status_filter] unless input[:status_filter].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStateMachines
    class ListStateMachines
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.ListStateMachines'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendTaskFailure
    class SendTaskFailure
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.SendTaskFailure'
        data = {}
        data['taskToken'] = input[:task_token] unless input[:task_token].nil?
        data['error'] = input[:error] unless input[:error].nil?
        data['cause'] = input[:cause] unless input[:cause].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendTaskHeartbeat
    class SendTaskHeartbeat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.SendTaskHeartbeat'
        data = {}
        data['taskToken'] = input[:task_token] unless input[:task_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendTaskSuccess
    class SendTaskSuccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.SendTaskSuccess'
        data = {}
        data['taskToken'] = input[:task_token] unless input[:task_token].nil?
        data['output'] = input[:output] unless input[:output].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartExecution
    class StartExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.StartExecution'
        data = {}
        data['stateMachineArn'] = input[:state_machine_arn] unless input[:state_machine_arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['input'] = input[:input] unless input[:input].nil?
        data['traceHeader'] = input[:trace_header] unless input[:trace_header].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartSyncExecution
    class StartSyncExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.StartSyncExecution'
        data = {}
        data['stateMachineArn'] = input[:state_machine_arn] unless input[:state_machine_arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['input'] = input[:input] unless input[:input].nil?
        data['traceHeader'] = input[:trace_header] unless input[:trace_header].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopExecution
    class StopExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.StopExecution'
        data = {}
        data['executionArn'] = input[:execution_arn] unless input[:execution_arn].nil?
        data['error'] = input[:error] unless input[:error].nil?
        data['cause'] = input[:cause] unless input[:cause].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateStateMachine
    class UpdateStateMachine
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSStepFunctions.UpdateStateMachine'
        data = {}
        data['stateMachineArn'] = input[:state_machine_arn] unless input[:state_machine_arn].nil?
        data['definition'] = input[:definition] unless input[:definition].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['loggingConfiguration'] = LoggingConfiguration.build(input[:logging_configuration]) unless input[:logging_configuration].nil?
        data['tracingConfiguration'] = TracingConfiguration.build(input[:tracing_configuration]) unless input[:tracing_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
