# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CloudWatchLogs
  module Builders

    # Operation Builder for AssociateKmsKey
    class AssociateKmsKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.AssociateKmsKey'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelExportTask
    class CancelExportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.CancelExportTask'
        data = {}
        data['taskId'] = input[:task_id] unless input[:task_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateExportTask
    class CreateExportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.CreateExportTask'
        data = {}
        data['taskName'] = input[:task_name] unless input[:task_name].nil?
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['logStreamNamePrefix'] = input[:log_stream_name_prefix] unless input[:log_stream_name_prefix].nil?
        data['from'] = input[:from] unless input[:from].nil?
        data['to'] = input[:to] unless input[:to].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['destinationPrefix'] = input[:destination_prefix] unless input[:destination_prefix].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLogGroup
    class CreateLogGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.CreateLogGroup'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateLogStream
    class CreateLogStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.CreateLogStream'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['logStreamName'] = input[:log_stream_name] unless input[:log_stream_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDestination
    class DeleteDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DeleteDestination'
        data = {}
        data['destinationName'] = input[:destination_name] unless input[:destination_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLogGroup
    class DeleteLogGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DeleteLogGroup'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLogStream
    class DeleteLogStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DeleteLogStream'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['logStreamName'] = input[:log_stream_name] unless input[:log_stream_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMetricFilter
    class DeleteMetricFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DeleteMetricFilter'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['filterName'] = input[:filter_name] unless input[:filter_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteQueryDefinition
    class DeleteQueryDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DeleteQueryDefinition'
        data = {}
        data['queryDefinitionId'] = input[:query_definition_id] unless input[:query_definition_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DeleteResourcePolicy'
        data = {}
        data['policyName'] = input[:policy_name] unless input[:policy_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRetentionPolicy
    class DeleteRetentionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DeleteRetentionPolicy'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSubscriptionFilter
    class DeleteSubscriptionFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DeleteSubscriptionFilter'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['filterName'] = input[:filter_name] unless input[:filter_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDestinations
    class DescribeDestinations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DescribeDestinations'
        data = {}
        data['DestinationNamePrefix'] = input[:destination_name_prefix] unless input[:destination_name_prefix].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeExportTasks
    class DescribeExportTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DescribeExportTasks'
        data = {}
        data['taskId'] = input[:task_id] unless input[:task_id].nil?
        data['statusCode'] = input[:status_code] unless input[:status_code].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLogGroups
    class DescribeLogGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DescribeLogGroups'
        data = {}
        data['logGroupNamePrefix'] = input[:log_group_name_prefix] unless input[:log_group_name_prefix].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLogStreams
    class DescribeLogStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DescribeLogStreams'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['logStreamNamePrefix'] = input[:log_stream_name_prefix] unless input[:log_stream_name_prefix].nil?
        data['orderBy'] = input[:order_by] unless input[:order_by].nil?
        data['descending'] = input[:descending] unless input[:descending].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMetricFilters
    class DescribeMetricFilters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DescribeMetricFilters'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['filterNamePrefix'] = input[:filter_name_prefix] unless input[:filter_name_prefix].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['metricNamespace'] = input[:metric_namespace] unless input[:metric_namespace].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeQueries
    class DescribeQueries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DescribeQueries'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeQueryDefinitions
    class DescribeQueryDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DescribeQueryDefinitions'
        data = {}
        data['queryDefinitionNamePrefix'] = input[:query_definition_name_prefix] unless input[:query_definition_name_prefix].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeResourcePolicies
    class DescribeResourcePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DescribeResourcePolicies'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSubscriptionFilters
    class DescribeSubscriptionFilters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DescribeSubscriptionFilters'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['filterNamePrefix'] = input[:filter_name_prefix] unless input[:filter_name_prefix].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateKmsKey
    class DisassociateKmsKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.DisassociateKmsKey'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for FilterLogEvents
    class FilterLogEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.FilterLogEvents'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['logStreamNames'] = Builders::InputLogStreamNames.build(input[:log_stream_names]) unless input[:log_stream_names].nil?
        data['logStreamNamePrefix'] = input[:log_stream_name_prefix] unless input[:log_stream_name_prefix].nil?
        data['startTime'] = input[:start_time] unless input[:start_time].nil?
        data['endTime'] = input[:end_time] unless input[:end_time].nil?
        data['filterPattern'] = input[:filter_pattern] unless input[:filter_pattern].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        data['interleaved'] = input[:interleaved] unless input[:interleaved].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InputLogStreamNames
    class InputLogStreamNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetLogEvents
    class GetLogEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.GetLogEvents'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['logStreamName'] = input[:log_stream_name] unless input[:log_stream_name].nil?
        data['startTime'] = input[:start_time] unless input[:start_time].nil?
        data['endTime'] = input[:end_time] unless input[:end_time].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        data['startFromHead'] = input[:start_from_head] unless input[:start_from_head].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLogGroupFields
    class GetLogGroupFields
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.GetLogGroupFields'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['time'] = input[:time] unless input[:time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLogRecord
    class GetLogRecord
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.GetLogRecord'
        data = {}
        data['logRecordPointer'] = input[:log_record_pointer] unless input[:log_record_pointer].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetQueryResults
    class GetQueryResults
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.GetQueryResults'
        data = {}
        data['queryId'] = input[:query_id] unless input[:query_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsLogGroup
    class ListTagsLogGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.ListTagsLogGroup'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutDestination
    class PutDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.PutDestination'
        data = {}
        data['destinationName'] = input[:destination_name] unless input[:destination_name].nil?
        data['targetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutDestinationPolicy
    class PutDestinationPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.PutDestinationPolicy'
        data = {}
        data['destinationName'] = input[:destination_name] unless input[:destination_name].nil?
        data['accessPolicy'] = input[:access_policy] unless input[:access_policy].nil?
        data['forceUpdate'] = input[:force_update] unless input[:force_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutLogEvents
    class PutLogEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.PutLogEvents'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['logStreamName'] = input[:log_stream_name] unless input[:log_stream_name].nil?
        data['logEvents'] = Builders::InputLogEvents.build(input[:log_events]) unless input[:log_events].nil?
        data['sequenceToken'] = input[:sequence_token] unless input[:sequence_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InputLogEvents
    class InputLogEvents
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputLogEvent.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputLogEvent
    class InputLogEvent
      def self.build(input)
        data = {}
        data['timestamp'] = input[:timestamp] unless input[:timestamp].nil?
        data['message'] = input[:message] unless input[:message].nil?
        data
      end
    end

    # Operation Builder for PutMetricFilter
    class PutMetricFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.PutMetricFilter'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['filterName'] = input[:filter_name] unless input[:filter_name].nil?
        data['filterPattern'] = input[:filter_pattern] unless input[:filter_pattern].nil?
        data['metricTransformations'] = Builders::MetricTransformations.build(input[:metric_transformations]) unless input[:metric_transformations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MetricTransformations
    class MetricTransformations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MetricTransformation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricTransformation
    class MetricTransformation
      def self.build(input)
        data = {}
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['metricNamespace'] = input[:metric_namespace] unless input[:metric_namespace].nil?
        data['metricValue'] = input[:metric_value] unless input[:metric_value].nil?
        data['defaultValue'] = Hearth::NumberHelper.serialize(input[:default_value]) unless input[:default_value].nil?
        data['dimensions'] = Builders::Dimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Map Builder for Dimensions
    class Dimensions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for PutQueryDefinition
    class PutQueryDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.PutQueryDefinition'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['queryDefinitionId'] = input[:query_definition_id] unless input[:query_definition_id].nil?
        data['logGroupNames'] = Builders::LogGroupNames.build(input[:log_group_names]) unless input[:log_group_names].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LogGroupNames
    class LogGroupNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.PutResourcePolicy'
        data = {}
        data['policyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['policyDocument'] = input[:policy_document] unless input[:policy_document].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRetentionPolicy
    class PutRetentionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.PutRetentionPolicy'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['retentionInDays'] = input[:retention_in_days] unless input[:retention_in_days].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutSubscriptionFilter
    class PutSubscriptionFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.PutSubscriptionFilter'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['filterName'] = input[:filter_name] unless input[:filter_name].nil?
        data['filterPattern'] = input[:filter_pattern] unless input[:filter_pattern].nil?
        data['destinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['distribution'] = input[:distribution] unless input[:distribution].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartQuery
    class StartQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.StartQuery'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['logGroupNames'] = Builders::LogGroupNames.build(input[:log_group_names]) unless input[:log_group_names].nil?
        data['startTime'] = input[:start_time] unless input[:start_time].nil?
        data['endTime'] = input[:end_time] unless input[:end_time].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopQuery
    class StopQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.StopQuery'
        data = {}
        data['queryId'] = input[:query_id] unless input[:query_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagLogGroup
    class TagLogGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.TagLogGroup'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TestMetricFilter
    class TestMetricFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.TestMetricFilter'
        data = {}
        data['filterPattern'] = input[:filter_pattern] unless input[:filter_pattern].nil?
        data['logEventMessages'] = Builders::TestEventMessages.build(input[:log_event_messages]) unless input[:log_event_messages].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TestEventMessages
    class TestEventMessages
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UntagLogGroup
    class UntagLogGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Logs_20140328.UntagLogGroup'
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
  end
end
