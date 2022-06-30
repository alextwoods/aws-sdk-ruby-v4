# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatchLogs
  module Stubs

    # Operation Stubber for AssociateKmsKey
    class AssociateKmsKey
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

    # Operation Stubber for CancelExportTask
    class CancelExportTask
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

    # Operation Stubber for CreateExportTask
    class CreateExportTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLogGroup
    class CreateLogGroup
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

    # Operation Stubber for CreateLogStream
    class CreateLogStream
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

    # Operation Stubber for DeleteDestination
    class DeleteDestination
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

    # Operation Stubber for DeleteLogGroup
    class DeleteLogGroup
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

    # Operation Stubber for DeleteLogStream
    class DeleteLogStream
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

    # Operation Stubber for DeleteMetricFilter
    class DeleteMetricFilter
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

    # Operation Stubber for DeleteQueryDefinition
    class DeleteQueryDefinition
      def self.default(visited=[])
        {
          success: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['success'] = stub[:success] unless stub[:success].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
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

    # Operation Stubber for DeleteRetentionPolicy
    class DeleteRetentionPolicy
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

    # Operation Stubber for DeleteSubscriptionFilter
    class DeleteSubscriptionFilter
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

    # Operation Stubber for DescribeDestinations
    class DescribeDestinations
      def self.default(visited=[])
        {
          destinations: Stubs::Destinations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['destinations'] = Stubs::Destinations.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Destinations
    class Destinations
      def self.default(visited=[])
        return nil if visited.include?('Destinations')
        visited = visited + ['Destinations']
        [
          Stubs::Destination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Destination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Destination
    class Destination
      def self.default(visited=[])
        return nil if visited.include?('Destination')
        visited = visited + ['Destination']
        {
          destination_name: 'destination_name',
          target_arn: 'target_arn',
          role_arn: 'role_arn',
          access_policy: 'access_policy',
          arn: 'arn',
          creation_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Destination.new
        data = {}
        data['destinationName'] = stub[:destination_name] unless stub[:destination_name].nil?
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['accessPolicy'] = stub[:access_policy] unless stub[:access_policy].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeExportTasks
    class DescribeExportTasks
      def self.default(visited=[])
        {
          export_tasks: Stubs::ExportTasks.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['exportTasks'] = Stubs::ExportTasks.stub(stub[:export_tasks]) unless stub[:export_tasks].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExportTasks
    class ExportTasks
      def self.default(visited=[])
        return nil if visited.include?('ExportTasks')
        visited = visited + ['ExportTasks']
        [
          Stubs::ExportTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExportTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExportTask
    class ExportTask
      def self.default(visited=[])
        return nil if visited.include?('ExportTask')
        visited = visited + ['ExportTask']
        {
          task_id: 'task_id',
          task_name: 'task_name',
          log_group_name: 'log_group_name',
          from: 1,
          to: 1,
          destination: 'destination',
          destination_prefix: 'destination_prefix',
          status: Stubs::ExportTaskStatus.default(visited),
          execution_info: Stubs::ExportTaskExecutionInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportTask.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['taskName'] = stub[:task_name] unless stub[:task_name].nil?
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['from'] = stub[:from] unless stub[:from].nil?
        data['to'] = stub[:to] unless stub[:to].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['destinationPrefix'] = stub[:destination_prefix] unless stub[:destination_prefix].nil?
        data['status'] = Stubs::ExportTaskStatus.stub(stub[:status]) unless stub[:status].nil?
        data['executionInfo'] = Stubs::ExportTaskExecutionInfo.stub(stub[:execution_info]) unless stub[:execution_info].nil?
        data
      end
    end

    # Structure Stubber for ExportTaskExecutionInfo
    class ExportTaskExecutionInfo
      def self.default(visited=[])
        return nil if visited.include?('ExportTaskExecutionInfo')
        visited = visited + ['ExportTaskExecutionInfo']
        {
          creation_time: 1,
          completion_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportTaskExecutionInfo.new
        data = {}
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['completionTime'] = stub[:completion_time] unless stub[:completion_time].nil?
        data
      end
    end

    # Structure Stubber for ExportTaskStatus
    class ExportTaskStatus
      def self.default(visited=[])
        return nil if visited.include?('ExportTaskStatus')
        visited = visited + ['ExportTaskStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportTaskStatus.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeLogGroups
    class DescribeLogGroups
      def self.default(visited=[])
        {
          log_groups: Stubs::LogGroups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['logGroups'] = Stubs::LogGroups.stub(stub[:log_groups]) unless stub[:log_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LogGroups
    class LogGroups
      def self.default(visited=[])
        return nil if visited.include?('LogGroups')
        visited = visited + ['LogGroups']
        [
          Stubs::LogGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LogGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogGroup
    class LogGroup
      def self.default(visited=[])
        return nil if visited.include?('LogGroup')
        visited = visited + ['LogGroup']
        {
          log_group_name: 'log_group_name',
          creation_time: 1,
          retention_in_days: 1,
          metric_filter_count: 1,
          arn: 'arn',
          stored_bytes: 1,
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::LogGroup.new
        data = {}
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['retentionInDays'] = stub[:retention_in_days] unless stub[:retention_in_days].nil?
        data['metricFilterCount'] = stub[:metric_filter_count] unless stub[:metric_filter_count].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['storedBytes'] = stub[:stored_bytes] unless stub[:stored_bytes].nil?
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeLogStreams
    class DescribeLogStreams
      def self.default(visited=[])
        {
          log_streams: Stubs::LogStreams.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['logStreams'] = Stubs::LogStreams.stub(stub[:log_streams]) unless stub[:log_streams].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LogStreams
    class LogStreams
      def self.default(visited=[])
        return nil if visited.include?('LogStreams')
        visited = visited + ['LogStreams']
        [
          Stubs::LogStream.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LogStream.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogStream
    class LogStream
      def self.default(visited=[])
        return nil if visited.include?('LogStream')
        visited = visited + ['LogStream']
        {
          log_stream_name: 'log_stream_name',
          creation_time: 1,
          first_event_timestamp: 1,
          last_event_timestamp: 1,
          last_ingestion_time: 1,
          upload_sequence_token: 'upload_sequence_token',
          arn: 'arn',
          stored_bytes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogStream.new
        data = {}
        data['logStreamName'] = stub[:log_stream_name] unless stub[:log_stream_name].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['firstEventTimestamp'] = stub[:first_event_timestamp] unless stub[:first_event_timestamp].nil?
        data['lastEventTimestamp'] = stub[:last_event_timestamp] unless stub[:last_event_timestamp].nil?
        data['lastIngestionTime'] = stub[:last_ingestion_time] unless stub[:last_ingestion_time].nil?
        data['uploadSequenceToken'] = stub[:upload_sequence_token] unless stub[:upload_sequence_token].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['storedBytes'] = stub[:stored_bytes] unless stub[:stored_bytes].nil?
        data
      end
    end

    # Operation Stubber for DescribeMetricFilters
    class DescribeMetricFilters
      def self.default(visited=[])
        {
          metric_filters: Stubs::MetricFilters.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['metricFilters'] = Stubs::MetricFilters.stub(stub[:metric_filters]) unless stub[:metric_filters].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MetricFilters
    class MetricFilters
      def self.default(visited=[])
        return nil if visited.include?('MetricFilters')
        visited = visited + ['MetricFilters']
        [
          Stubs::MetricFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MetricFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricFilter
    class MetricFilter
      def self.default(visited=[])
        return nil if visited.include?('MetricFilter')
        visited = visited + ['MetricFilter']
        {
          filter_name: 'filter_name',
          filter_pattern: 'filter_pattern',
          metric_transformations: Stubs::MetricTransformations.default(visited),
          creation_time: 1,
          log_group_name: 'log_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricFilter.new
        data = {}
        data['filterName'] = stub[:filter_name] unless stub[:filter_name].nil?
        data['filterPattern'] = stub[:filter_pattern] unless stub[:filter_pattern].nil?
        data['metricTransformations'] = Stubs::MetricTransformations.stub(stub[:metric_transformations]) unless stub[:metric_transformations].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data
      end
    end

    # List Stubber for MetricTransformations
    class MetricTransformations
      def self.default(visited=[])
        return nil if visited.include?('MetricTransformations')
        visited = visited + ['MetricTransformations']
        [
          Stubs::MetricTransformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MetricTransformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricTransformation
    class MetricTransformation
      def self.default(visited=[])
        return nil if visited.include?('MetricTransformation')
        visited = visited + ['MetricTransformation']
        {
          metric_name: 'metric_name',
          metric_namespace: 'metric_namespace',
          metric_value: 'metric_value',
          default_value: 1.0,
          dimensions: Stubs::Dimensions.default(visited),
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricTransformation.new
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricNamespace'] = stub[:metric_namespace] unless stub[:metric_namespace].nil?
        data['metricValue'] = stub[:metric_value] unless stub[:metric_value].nil?
        data['defaultValue'] = Hearth::NumberHelper.serialize(stub[:default_value])
        data['dimensions'] = Stubs::Dimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Map Stubber for Dimensions
    class Dimensions
      def self.default(visited=[])
        return nil if visited.include?('Dimensions')
        visited = visited + ['Dimensions']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeQueries
    class DescribeQueries
      def self.default(visited=[])
        {
          queries: Stubs::QueryInfoList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['queries'] = Stubs::QueryInfoList.stub(stub[:queries]) unless stub[:queries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for QueryInfoList
    class QueryInfoList
      def self.default(visited=[])
        return nil if visited.include?('QueryInfoList')
        visited = visited + ['QueryInfoList']
        [
          Stubs::QueryInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::QueryInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QueryInfo
    class QueryInfo
      def self.default(visited=[])
        return nil if visited.include?('QueryInfo')
        visited = visited + ['QueryInfo']
        {
          query_id: 'query_id',
          query_string: 'query_string',
          status: 'status',
          create_time: 1,
          log_group_name: 'log_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryInfo.new
        data = {}
        data['queryId'] = stub[:query_id] unless stub[:query_id].nil?
        data['queryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeQueryDefinitions
    class DescribeQueryDefinitions
      def self.default(visited=[])
        {
          query_definitions: Stubs::QueryDefinitionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['queryDefinitions'] = Stubs::QueryDefinitionList.stub(stub[:query_definitions]) unless stub[:query_definitions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for QueryDefinitionList
    class QueryDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('QueryDefinitionList')
        visited = visited + ['QueryDefinitionList']
        [
          Stubs::QueryDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::QueryDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QueryDefinition
    class QueryDefinition
      def self.default(visited=[])
        return nil if visited.include?('QueryDefinition')
        visited = visited + ['QueryDefinition']
        {
          query_definition_id: 'query_definition_id',
          name: 'name',
          query_string: 'query_string',
          last_modified: 1,
          log_group_names: Stubs::LogGroupNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryDefinition.new
        data = {}
        data['queryDefinitionId'] = stub[:query_definition_id] unless stub[:query_definition_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['queryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['lastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['logGroupNames'] = Stubs::LogGroupNames.stub(stub[:log_group_names]) unless stub[:log_group_names].nil?
        data
      end
    end

    # List Stubber for LogGroupNames
    class LogGroupNames
      def self.default(visited=[])
        return nil if visited.include?('LogGroupNames')
        visited = visited + ['LogGroupNames']
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

    # Operation Stubber for DescribeResourcePolicies
    class DescribeResourcePolicies
      def self.default(visited=[])
        {
          resource_policies: Stubs::ResourcePolicies.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourcePolicies'] = Stubs::ResourcePolicies.stub(stub[:resource_policies]) unless stub[:resource_policies].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourcePolicies
    class ResourcePolicies
      def self.default(visited=[])
        return nil if visited.include?('ResourcePolicies')
        visited = visited + ['ResourcePolicies']
        [
          Stubs::ResourcePolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourcePolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourcePolicy
    class ResourcePolicy
      def self.default(visited=[])
        return nil if visited.include?('ResourcePolicy')
        visited = visited + ['ResourcePolicy']
        {
          policy_name: 'policy_name',
          policy_document: 'policy_document',
          last_updated_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourcePolicy.new
        data = {}
        data['policyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['policyDocument'] = stub[:policy_document] unless stub[:policy_document].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeSubscriptionFilters
    class DescribeSubscriptionFilters
      def self.default(visited=[])
        {
          subscription_filters: Stubs::SubscriptionFilters.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['subscriptionFilters'] = Stubs::SubscriptionFilters.stub(stub[:subscription_filters]) unless stub[:subscription_filters].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubscriptionFilters
    class SubscriptionFilters
      def self.default(visited=[])
        return nil if visited.include?('SubscriptionFilters')
        visited = visited + ['SubscriptionFilters']
        [
          Stubs::SubscriptionFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SubscriptionFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SubscriptionFilter
    class SubscriptionFilter
      def self.default(visited=[])
        return nil if visited.include?('SubscriptionFilter')
        visited = visited + ['SubscriptionFilter']
        {
          filter_name: 'filter_name',
          log_group_name: 'log_group_name',
          filter_pattern: 'filter_pattern',
          destination_arn: 'destination_arn',
          role_arn: 'role_arn',
          distribution: 'distribution',
          creation_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SubscriptionFilter.new
        data = {}
        data['filterName'] = stub[:filter_name] unless stub[:filter_name].nil?
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['filterPattern'] = stub[:filter_pattern] unless stub[:filter_pattern].nil?
        data['destinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['distribution'] = stub[:distribution] unless stub[:distribution].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for DisassociateKmsKey
    class DisassociateKmsKey
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

    # Operation Stubber for FilterLogEvents
    class FilterLogEvents
      def self.default(visited=[])
        {
          events: Stubs::FilteredLogEvents.default(visited),
          searched_log_streams: Stubs::SearchedLogStreams.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['events'] = Stubs::FilteredLogEvents.stub(stub[:events]) unless stub[:events].nil?
        data['searchedLogStreams'] = Stubs::SearchedLogStreams.stub(stub[:searched_log_streams]) unless stub[:searched_log_streams].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SearchedLogStreams
    class SearchedLogStreams
      def self.default(visited=[])
        return nil if visited.include?('SearchedLogStreams')
        visited = visited + ['SearchedLogStreams']
        [
          Stubs::SearchedLogStream.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SearchedLogStream.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SearchedLogStream
    class SearchedLogStream
      def self.default(visited=[])
        return nil if visited.include?('SearchedLogStream')
        visited = visited + ['SearchedLogStream']
        {
          log_stream_name: 'log_stream_name',
          searched_completely: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchedLogStream.new
        data = {}
        data['logStreamName'] = stub[:log_stream_name] unless stub[:log_stream_name].nil?
        data['searchedCompletely'] = stub[:searched_completely] unless stub[:searched_completely].nil?
        data
      end
    end

    # List Stubber for FilteredLogEvents
    class FilteredLogEvents
      def self.default(visited=[])
        return nil if visited.include?('FilteredLogEvents')
        visited = visited + ['FilteredLogEvents']
        [
          Stubs::FilteredLogEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FilteredLogEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FilteredLogEvent
    class FilteredLogEvent
      def self.default(visited=[])
        return nil if visited.include?('FilteredLogEvent')
        visited = visited + ['FilteredLogEvent']
        {
          log_stream_name: 'log_stream_name',
          timestamp: 1,
          message: 'message',
          ingestion_time: 1,
          event_id: 'event_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::FilteredLogEvent.new
        data = {}
        data['logStreamName'] = stub[:log_stream_name] unless stub[:log_stream_name].nil?
        data['timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['ingestionTime'] = stub[:ingestion_time] unless stub[:ingestion_time].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data
      end
    end

    # Operation Stubber for GetLogEvents
    class GetLogEvents
      def self.default(visited=[])
        {
          events: Stubs::OutputLogEvents.default(visited),
          next_forward_token: 'next_forward_token',
          next_backward_token: 'next_backward_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['events'] = Stubs::OutputLogEvents.stub(stub[:events]) unless stub[:events].nil?
        data['nextForwardToken'] = stub[:next_forward_token] unless stub[:next_forward_token].nil?
        data['nextBackwardToken'] = stub[:next_backward_token] unless stub[:next_backward_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OutputLogEvents
    class OutputLogEvents
      def self.default(visited=[])
        return nil if visited.include?('OutputLogEvents')
        visited = visited + ['OutputLogEvents']
        [
          Stubs::OutputLogEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputLogEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputLogEvent
    class OutputLogEvent
      def self.default(visited=[])
        return nil if visited.include?('OutputLogEvent')
        visited = visited + ['OutputLogEvent']
        {
          timestamp: 1,
          message: 'message',
          ingestion_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputLogEvent.new
        data = {}
        data['timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['ingestionTime'] = stub[:ingestion_time] unless stub[:ingestion_time].nil?
        data
      end
    end

    # Operation Stubber for GetLogGroupFields
    class GetLogGroupFields
      def self.default(visited=[])
        {
          log_group_fields: Stubs::LogGroupFieldList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['logGroupFields'] = Stubs::LogGroupFieldList.stub(stub[:log_group_fields]) unless stub[:log_group_fields].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LogGroupFieldList
    class LogGroupFieldList
      def self.default(visited=[])
        return nil if visited.include?('LogGroupFieldList')
        visited = visited + ['LogGroupFieldList']
        [
          Stubs::LogGroupField.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LogGroupField.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogGroupField
    class LogGroupField
      def self.default(visited=[])
        return nil if visited.include?('LogGroupField')
        visited = visited + ['LogGroupField']
        {
          name: 'name',
          percent: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogGroupField.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['percent'] = stub[:percent] unless stub[:percent].nil?
        data
      end
    end

    # Operation Stubber for GetLogRecord
    class GetLogRecord
      def self.default(visited=[])
        {
          log_record: Stubs::LogRecord.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['logRecord'] = Stubs::LogRecord.stub(stub[:log_record]) unless stub[:log_record].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for LogRecord
    class LogRecord
      def self.default(visited=[])
        return nil if visited.include?('LogRecord')
        visited = visited + ['LogRecord']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetQueryResults
    class GetQueryResults
      def self.default(visited=[])
        {
          results: Stubs::QueryResults.default(visited),
          statistics: Stubs::QueryStatistics.default(visited),
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['results'] = Stubs::QueryResults.stub(stub[:results]) unless stub[:results].nil?
        data['statistics'] = Stubs::QueryStatistics.stub(stub[:statistics]) unless stub[:statistics].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for QueryStatistics
    class QueryStatistics
      def self.default(visited=[])
        return nil if visited.include?('QueryStatistics')
        visited = visited + ['QueryStatistics']
        {
          records_matched: 1.0,
          records_scanned: 1.0,
          bytes_scanned: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryStatistics.new
        data = {}
        data['recordsMatched'] = Hearth::NumberHelper.serialize(stub[:records_matched])
        data['recordsScanned'] = Hearth::NumberHelper.serialize(stub[:records_scanned])
        data['bytesScanned'] = Hearth::NumberHelper.serialize(stub[:bytes_scanned])
        data
      end
    end

    # List Stubber for QueryResults
    class QueryResults
      def self.default(visited=[])
        return nil if visited.include?('QueryResults')
        visited = visited + ['QueryResults']
        [
          Stubs::ResultRows.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResultRows.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for ResultRows
    class ResultRows
      def self.default(visited=[])
        return nil if visited.include?('ResultRows')
        visited = visited + ['ResultRows']
        [
          Stubs::ResultField.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResultField.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResultField
    class ResultField
      def self.default(visited=[])
        return nil if visited.include?('ResultField')
        visited = visited + ['ResultField']
        {
          field: 'field',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultField.new
        data = {}
        data['field'] = stub[:field] unless stub[:field].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListTagsLogGroup
    class ListTagsLogGroup
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for PutDestination
    class PutDestination
      def self.default(visited=[])
        {
          destination: Stubs::Destination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['destination'] = Stubs::Destination.stub(stub[:destination]) unless stub[:destination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutDestinationPolicy
    class PutDestinationPolicy
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

    # Operation Stubber for PutLogEvents
    class PutLogEvents
      def self.default(visited=[])
        {
          next_sequence_token: 'next_sequence_token',
          rejected_log_events_info: Stubs::RejectedLogEventsInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextSequenceToken'] = stub[:next_sequence_token] unless stub[:next_sequence_token].nil?
        data['rejectedLogEventsInfo'] = Stubs::RejectedLogEventsInfo.stub(stub[:rejected_log_events_info]) unless stub[:rejected_log_events_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RejectedLogEventsInfo
    class RejectedLogEventsInfo
      def self.default(visited=[])
        return nil if visited.include?('RejectedLogEventsInfo')
        visited = visited + ['RejectedLogEventsInfo']
        {
          too_new_log_event_start_index: 1,
          too_old_log_event_end_index: 1,
          expired_log_event_end_index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RejectedLogEventsInfo.new
        data = {}
        data['tooNewLogEventStartIndex'] = stub[:too_new_log_event_start_index] unless stub[:too_new_log_event_start_index].nil?
        data['tooOldLogEventEndIndex'] = stub[:too_old_log_event_end_index] unless stub[:too_old_log_event_end_index].nil?
        data['expiredLogEventEndIndex'] = stub[:expired_log_event_end_index] unless stub[:expired_log_event_end_index].nil?
        data
      end
    end

    # Operation Stubber for PutMetricFilter
    class PutMetricFilter
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

    # Operation Stubber for PutQueryDefinition
    class PutQueryDefinition
      def self.default(visited=[])
        {
          query_definition_id: 'query_definition_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['queryDefinitionId'] = stub[:query_definition_id] unless stub[:query_definition_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
          resource_policy: Stubs::ResourcePolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourcePolicy'] = Stubs::ResourcePolicy.stub(stub[:resource_policy]) unless stub[:resource_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRetentionPolicy
    class PutRetentionPolicy
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

    # Operation Stubber for PutSubscriptionFilter
    class PutSubscriptionFilter
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

    # Operation Stubber for StartQuery
    class StartQuery
      def self.default(visited=[])
        {
          query_id: 'query_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['queryId'] = stub[:query_id] unless stub[:query_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopQuery
    class StopQuery
      def self.default(visited=[])
        {
          success: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['success'] = stub[:success] unless stub[:success].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagLogGroup
    class TagLogGroup
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

    # Operation Stubber for TestMetricFilter
    class TestMetricFilter
      def self.default(visited=[])
        {
          matches: Stubs::MetricFilterMatches.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['matches'] = Stubs::MetricFilterMatches.stub(stub[:matches]) unless stub[:matches].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MetricFilterMatches
    class MetricFilterMatches
      def self.default(visited=[])
        return nil if visited.include?('MetricFilterMatches')
        visited = visited + ['MetricFilterMatches']
        [
          Stubs::MetricFilterMatchRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MetricFilterMatchRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricFilterMatchRecord
    class MetricFilterMatchRecord
      def self.default(visited=[])
        return nil if visited.include?('MetricFilterMatchRecord')
        visited = visited + ['MetricFilterMatchRecord']
        {
          event_number: 1,
          event_message: 'event_message',
          extracted_values: Stubs::ExtractedValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricFilterMatchRecord.new
        data = {}
        data['eventNumber'] = stub[:event_number] unless stub[:event_number].nil?
        data['eventMessage'] = stub[:event_message] unless stub[:event_message].nil?
        data['extractedValues'] = Stubs::ExtractedValues.stub(stub[:extracted_values]) unless stub[:extracted_values].nil?
        data
      end
    end

    # Map Stubber for ExtractedValues
    class ExtractedValues
      def self.default(visited=[])
        return nil if visited.include?('ExtractedValues')
        visited = visited + ['ExtractedValues']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for UntagLogGroup
    class UntagLogGroup
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
