# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatchLogs
  module Parsers

    # Operation Parser for AssociateKmsKey
    class AssociateKmsKey
      def self.parse(http_resp)
        data = Types::AssociateKmsKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OperationAbortedException
    class OperationAbortedException
      def self.parse(http_resp)
        data = Types::OperationAbortedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CancelExportTask
    class CancelExportTask
      def self.parse(http_resp)
        data = Types::CancelExportTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidOperationException
    class InvalidOperationException
      def self.parse(http_resp)
        data = Types::InvalidOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateExportTask
    class CreateExportTask
      def self.parse(http_resp)
        data = Types::CreateExportTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_id = map['taskId']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateLogGroup
    class CreateLogGroup
      def self.parse(http_resp)
        data = Types::CreateLogGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateLogStream
    class CreateLogStream
      def self.parse(http_resp)
        data = Types::CreateLogStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDestination
    class DeleteDestination
      def self.parse(http_resp)
        data = Types::DeleteDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteLogGroup
    class DeleteLogGroup
      def self.parse(http_resp)
        data = Types::DeleteLogGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteLogStream
    class DeleteLogStream
      def self.parse(http_resp)
        data = Types::DeleteLogStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMetricFilter
    class DeleteMetricFilter
      def self.parse(http_resp)
        data = Types::DeleteMetricFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteQueryDefinition
    class DeleteQueryDefinition
      def self.parse(http_resp)
        data = Types::DeleteQueryDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.success = map['success']
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRetentionPolicy
    class DeleteRetentionPolicy
      def self.parse(http_resp)
        data = Types::DeleteRetentionPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSubscriptionFilter
    class DeleteSubscriptionFilter
      def self.parse(http_resp)
        data = Types::DeleteSubscriptionFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeDestinations
    class DescribeDestinations
      def self.parse(http_resp)
        data = Types::DescribeDestinationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.destinations = (Parsers::Destinations.parse(map['destinations']) unless map['destinations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Destinations
      def self.parse(list)
        list.map do |value|
          Parsers::Destination.parse(value) unless value.nil?
        end
      end
    end

    class Destination
      def self.parse(map)
        data = Types::Destination.new
        data.destination_name = map['destinationName']
        data.target_arn = map['targetArn']
        data.role_arn = map['roleArn']
        data.access_policy = map['accessPolicy']
        data.arn = map['arn']
        data.creation_time = map['creationTime']
        return data
      end
    end

    # Operation Parser for DescribeExportTasks
    class DescribeExportTasks
      def self.parse(http_resp)
        data = Types::DescribeExportTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.export_tasks = (Parsers::ExportTasks.parse(map['exportTasks']) unless map['exportTasks'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ExportTasks
      def self.parse(list)
        list.map do |value|
          Parsers::ExportTask.parse(value) unless value.nil?
        end
      end
    end

    class ExportTask
      def self.parse(map)
        data = Types::ExportTask.new
        data.task_id = map['taskId']
        data.task_name = map['taskName']
        data.log_group_name = map['logGroupName']
        data.from = map['from']
        data.to = map['to']
        data.destination = map['destination']
        data.destination_prefix = map['destinationPrefix']
        data.status = (Parsers::ExportTaskStatus.parse(map['status']) unless map['status'].nil?)
        data.execution_info = (Parsers::ExportTaskExecutionInfo.parse(map['executionInfo']) unless map['executionInfo'].nil?)
        return data
      end
    end

    class ExportTaskExecutionInfo
      def self.parse(map)
        data = Types::ExportTaskExecutionInfo.new
        data.creation_time = map['creationTime']
        data.completion_time = map['completionTime']
        return data
      end
    end

    class ExportTaskStatus
      def self.parse(map)
        data = Types::ExportTaskStatus.new
        data.code = map['code']
        data.message = map['message']
        return data
      end
    end

    # Operation Parser for DescribeLogGroups
    class DescribeLogGroups
      def self.parse(http_resp)
        data = Types::DescribeLogGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.log_groups = (Parsers::LogGroups.parse(map['logGroups']) unless map['logGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class LogGroups
      def self.parse(list)
        list.map do |value|
          Parsers::LogGroup.parse(value) unless value.nil?
        end
      end
    end

    class LogGroup
      def self.parse(map)
        data = Types::LogGroup.new
        data.log_group_name = map['logGroupName']
        data.creation_time = map['creationTime']
        data.retention_in_days = map['retentionInDays']
        data.metric_filter_count = map['metricFilterCount']
        data.arn = map['arn']
        data.stored_bytes = map['storedBytes']
        data.kms_key_id = map['kmsKeyId']
        return data
      end
    end

    # Operation Parser for DescribeLogStreams
    class DescribeLogStreams
      def self.parse(http_resp)
        data = Types::DescribeLogStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.log_streams = (Parsers::LogStreams.parse(map['logStreams']) unless map['logStreams'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class LogStreams
      def self.parse(list)
        list.map do |value|
          Parsers::LogStream.parse(value) unless value.nil?
        end
      end
    end

    class LogStream
      def self.parse(map)
        data = Types::LogStream.new
        data.log_stream_name = map['logStreamName']
        data.creation_time = map['creationTime']
        data.first_event_timestamp = map['firstEventTimestamp']
        data.last_event_timestamp = map['lastEventTimestamp']
        data.last_ingestion_time = map['lastIngestionTime']
        data.upload_sequence_token = map['uploadSequenceToken']
        data.arn = map['arn']
        data.stored_bytes = map['storedBytes']
        return data
      end
    end

    # Operation Parser for DescribeMetricFilters
    class DescribeMetricFilters
      def self.parse(http_resp)
        data = Types::DescribeMetricFiltersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metric_filters = (Parsers::MetricFilters.parse(map['metricFilters']) unless map['metricFilters'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class MetricFilters
      def self.parse(list)
        list.map do |value|
          Parsers::MetricFilter.parse(value) unless value.nil?
        end
      end
    end

    class MetricFilter
      def self.parse(map)
        data = Types::MetricFilter.new
        data.filter_name = map['filterName']
        data.filter_pattern = map['filterPattern']
        data.metric_transformations = (Parsers::MetricTransformations.parse(map['metricTransformations']) unless map['metricTransformations'].nil?)
        data.creation_time = map['creationTime']
        data.log_group_name = map['logGroupName']
        return data
      end
    end

    class MetricTransformations
      def self.parse(list)
        list.map do |value|
          Parsers::MetricTransformation.parse(value) unless value.nil?
        end
      end
    end

    class MetricTransformation
      def self.parse(map)
        data = Types::MetricTransformation.new
        data.metric_name = map['metricName']
        data.metric_namespace = map['metricNamespace']
        data.metric_value = map['metricValue']
        data.default_value = Hearth::NumberHelper.deserialize(map['defaultValue'])
        data.dimensions = (Parsers::Dimensions.parse(map['dimensions']) unless map['dimensions'].nil?)
        data.unit = map['unit']
        return data
      end
    end

    class Dimensions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeQueries
    class DescribeQueries
      def self.parse(http_resp)
        data = Types::DescribeQueriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.queries = (Parsers::QueryInfoList.parse(map['queries']) unless map['queries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class QueryInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::QueryInfo.parse(value) unless value.nil?
        end
      end
    end

    class QueryInfo
      def self.parse(map)
        data = Types::QueryInfo.new
        data.query_id = map['queryId']
        data.query_string = map['queryString']
        data.status = map['status']
        data.create_time = map['createTime']
        data.log_group_name = map['logGroupName']
        return data
      end
    end

    # Operation Parser for DescribeQueryDefinitions
    class DescribeQueryDefinitions
      def self.parse(http_resp)
        data = Types::DescribeQueryDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_definitions = (Parsers::QueryDefinitionList.parse(map['queryDefinitions']) unless map['queryDefinitions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class QueryDefinitionList
      def self.parse(list)
        list.map do |value|
          Parsers::QueryDefinition.parse(value) unless value.nil?
        end
      end
    end

    class QueryDefinition
      def self.parse(map)
        data = Types::QueryDefinition.new
        data.query_definition_id = map['queryDefinitionId']
        data.name = map['name']
        data.query_string = map['queryString']
        data.last_modified = map['lastModified']
        data.log_group_names = (Parsers::LogGroupNames.parse(map['logGroupNames']) unless map['logGroupNames'].nil?)
        return data
      end
    end

    class LogGroupNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeResourcePolicies
    class DescribeResourcePolicies
      def self.parse(http_resp)
        data = Types::DescribeResourcePoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_policies = (Parsers::ResourcePolicies.parse(map['resourcePolicies']) unless map['resourcePolicies'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourcePolicies
      def self.parse(list)
        list.map do |value|
          Parsers::ResourcePolicy.parse(value) unless value.nil?
        end
      end
    end

    class ResourcePolicy
      def self.parse(map)
        data = Types::ResourcePolicy.new
        data.policy_name = map['policyName']
        data.policy_document = map['policyDocument']
        data.last_updated_time = map['lastUpdatedTime']
        return data
      end
    end

    # Operation Parser for DescribeSubscriptionFilters
    class DescribeSubscriptionFilters
      def self.parse(http_resp)
        data = Types::DescribeSubscriptionFiltersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subscription_filters = (Parsers::SubscriptionFilters.parse(map['subscriptionFilters']) unless map['subscriptionFilters'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SubscriptionFilters
      def self.parse(list)
        list.map do |value|
          Parsers::SubscriptionFilter.parse(value) unless value.nil?
        end
      end
    end

    class SubscriptionFilter
      def self.parse(map)
        data = Types::SubscriptionFilter.new
        data.filter_name = map['filterName']
        data.log_group_name = map['logGroupName']
        data.filter_pattern = map['filterPattern']
        data.destination_arn = map['destinationArn']
        data.role_arn = map['roleArn']
        data.distribution = map['distribution']
        data.creation_time = map['creationTime']
        return data
      end
    end

    # Operation Parser for DisassociateKmsKey
    class DisassociateKmsKey
      def self.parse(http_resp)
        data = Types::DisassociateKmsKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for FilterLogEvents
    class FilterLogEvents
      def self.parse(http_resp)
        data = Types::FilterLogEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events = (Parsers::FilteredLogEvents.parse(map['events']) unless map['events'].nil?)
        data.searched_log_streams = (Parsers::SearchedLogStreams.parse(map['searchedLogStreams']) unless map['searchedLogStreams'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SearchedLogStreams
      def self.parse(list)
        list.map do |value|
          Parsers::SearchedLogStream.parse(value) unless value.nil?
        end
      end
    end

    class SearchedLogStream
      def self.parse(map)
        data = Types::SearchedLogStream.new
        data.log_stream_name = map['logStreamName']
        data.searched_completely = map['searchedCompletely']
        return data
      end
    end

    class FilteredLogEvents
      def self.parse(list)
        list.map do |value|
          Parsers::FilteredLogEvent.parse(value) unless value.nil?
        end
      end
    end

    class FilteredLogEvent
      def self.parse(map)
        data = Types::FilteredLogEvent.new
        data.log_stream_name = map['logStreamName']
        data.timestamp = map['timestamp']
        data.message = map['message']
        data.ingestion_time = map['ingestionTime']
        data.event_id = map['eventId']
        return data
      end
    end

    # Operation Parser for GetLogEvents
    class GetLogEvents
      def self.parse(http_resp)
        data = Types::GetLogEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events = (Parsers::OutputLogEvents.parse(map['events']) unless map['events'].nil?)
        data.next_forward_token = map['nextForwardToken']
        data.next_backward_token = map['nextBackwardToken']
        data
      end
    end

    class OutputLogEvents
      def self.parse(list)
        list.map do |value|
          Parsers::OutputLogEvent.parse(value) unless value.nil?
        end
      end
    end

    class OutputLogEvent
      def self.parse(map)
        data = Types::OutputLogEvent.new
        data.timestamp = map['timestamp']
        data.message = map['message']
        data.ingestion_time = map['ingestionTime']
        return data
      end
    end

    # Operation Parser for GetLogGroupFields
    class GetLogGroupFields
      def self.parse(http_resp)
        data = Types::GetLogGroupFieldsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.log_group_fields = (Parsers::LogGroupFieldList.parse(map['logGroupFields']) unless map['logGroupFields'].nil?)
        data
      end
    end

    class LogGroupFieldList
      def self.parse(list)
        list.map do |value|
          Parsers::LogGroupField.parse(value) unless value.nil?
        end
      end
    end

    class LogGroupField
      def self.parse(map)
        data = Types::LogGroupField.new
        data.name = map['name']
        data.percent = map['percent']
        return data
      end
    end

    # Operation Parser for GetLogRecord
    class GetLogRecord
      def self.parse(http_resp)
        data = Types::GetLogRecordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.log_record = (Parsers::LogRecord.parse(map['logRecord']) unless map['logRecord'].nil?)
        data
      end
    end

    class LogRecord
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetQueryResults
    class GetQueryResults
      def self.parse(http_resp)
        data = Types::GetQueryResultsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.results = (Parsers::QueryResults.parse(map['results']) unless map['results'].nil?)
        data.statistics = (Parsers::QueryStatistics.parse(map['statistics']) unless map['statistics'].nil?)
        data.status = map['status']
        data
      end
    end

    class QueryStatistics
      def self.parse(map)
        data = Types::QueryStatistics.new
        data.records_matched = Hearth::NumberHelper.deserialize(map['recordsMatched'])
        data.records_scanned = Hearth::NumberHelper.deserialize(map['recordsScanned'])
        data.bytes_scanned = Hearth::NumberHelper.deserialize(map['bytesScanned'])
        return data
      end
    end

    class QueryResults
      def self.parse(list)
        list.map do |value|
          Parsers::ResultRows.parse(value) unless value.nil?
        end
      end
    end

    class ResultRows
      def self.parse(list)
        list.map do |value|
          Parsers::ResultField.parse(value) unless value.nil?
        end
      end
    end

    class ResultField
      def self.parse(map)
        data = Types::ResultField.new
        data.field = map['field']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for ListTagsLogGroup
    class ListTagsLogGroup
      def self.parse(http_resp)
        data = Types::ListTagsLogGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for PutDestination
    class PutDestination
      def self.parse(http_resp)
        data = Types::PutDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.destination = (Parsers::Destination.parse(map['destination']) unless map['destination'].nil?)
        data
      end
    end

    # Operation Parser for PutDestinationPolicy
    class PutDestinationPolicy
      def self.parse(http_resp)
        data = Types::PutDestinationPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutLogEvents
    class PutLogEvents
      def self.parse(http_resp)
        data = Types::PutLogEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_sequence_token = map['nextSequenceToken']
        data.rejected_log_events_info = (Parsers::RejectedLogEventsInfo.parse(map['rejectedLogEventsInfo']) unless map['rejectedLogEventsInfo'].nil?)
        data
      end
    end

    class RejectedLogEventsInfo
      def self.parse(map)
        data = Types::RejectedLogEventsInfo.new
        data.too_new_log_event_start_index = map['tooNewLogEventStartIndex']
        data.too_old_log_event_end_index = map['tooOldLogEventEndIndex']
        data.expired_log_event_end_index = map['expiredLogEventEndIndex']
        return data
      end
    end

    # Error Parser for UnrecognizedClientException
    class UnrecognizedClientException
      def self.parse(http_resp)
        data = Types::UnrecognizedClientException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSequenceTokenException
    class InvalidSequenceTokenException
      def self.parse(http_resp)
        data = Types::InvalidSequenceTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.expected_sequence_token = map['expectedSequenceToken']
        data.message = map['message']
        data
      end
    end

    # Error Parser for DataAlreadyAcceptedException
    class DataAlreadyAcceptedException
      def self.parse(http_resp)
        data = Types::DataAlreadyAcceptedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.expected_sequence_token = map['expectedSequenceToken']
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutMetricFilter
    class PutMetricFilter
      def self.parse(http_resp)
        data = Types::PutMetricFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutQueryDefinition
    class PutQueryDefinition
      def self.parse(http_resp)
        data = Types::PutQueryDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_definition_id = map['queryDefinitionId']
        data
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_policy = (Parsers::ResourcePolicy.parse(map['resourcePolicy']) unless map['resourcePolicy'].nil?)
        data
      end
    end

    # Operation Parser for PutRetentionPolicy
    class PutRetentionPolicy
      def self.parse(http_resp)
        data = Types::PutRetentionPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutSubscriptionFilter
    class PutSubscriptionFilter
      def self.parse(http_resp)
        data = Types::PutSubscriptionFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartQuery
    class StartQuery
      def self.parse(http_resp)
        data = Types::StartQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_id = map['queryId']
        data
      end
    end

    # Error Parser for MalformedQueryException
    class MalformedQueryException
      def self.parse(http_resp)
        data = Types::MalformedQueryException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_compile_error = (Parsers::QueryCompileError.parse(map['queryCompileError']) unless map['queryCompileError'].nil?)
        data.message = map['message']
        data
      end
    end

    class QueryCompileError
      def self.parse(map)
        data = Types::QueryCompileError.new
        data.location = (Parsers::QueryCompileErrorLocation.parse(map['location']) unless map['location'].nil?)
        data.message = map['message']
        return data
      end
    end

    class QueryCompileErrorLocation
      def self.parse(map)
        data = Types::QueryCompileErrorLocation.new
        data.start_char_offset = map['startCharOffset']
        data.end_char_offset = map['endCharOffset']
        return data
      end
    end

    # Operation Parser for StopQuery
    class StopQuery
      def self.parse(http_resp)
        data = Types::StopQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.success = map['success']
        data
      end
    end

    # Operation Parser for TagLogGroup
    class TagLogGroup
      def self.parse(http_resp)
        data = Types::TagLogGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TestMetricFilter
    class TestMetricFilter
      def self.parse(http_resp)
        data = Types::TestMetricFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.matches = (Parsers::MetricFilterMatches.parse(map['matches']) unless map['matches'].nil?)
        data
      end
    end

    class MetricFilterMatches
      def self.parse(list)
        list.map do |value|
          Parsers::MetricFilterMatchRecord.parse(value) unless value.nil?
        end
      end
    end

    class MetricFilterMatchRecord
      def self.parse(map)
        data = Types::MetricFilterMatchRecord.new
        data.event_number = map['eventNumber']
        data.event_message = map['eventMessage']
        data.extracted_values = (Parsers::ExtractedValues.parse(map['extractedValues']) unless map['extractedValues'].nil?)
        return data
      end
    end

    class ExtractedValues
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for UntagLogGroup
    class UntagLogGroup
      def self.parse(http_resp)
        data = Types::UntagLogGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
