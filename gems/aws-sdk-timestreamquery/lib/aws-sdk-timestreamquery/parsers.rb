# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::TimestreamQuery
  module Parsers

    # Operation Parser for CancelQuery
    class CancelQuery
      def self.parse(http_resp)
        data = Types::CancelQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cancellation_message = map['CancellationMessage']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidEndpointException
    class InvalidEndpointException
      def self.parse(http_resp)
        data = Types::InvalidEndpointException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateScheduledQuery
    class CreateScheduledQuery
      def self.parse(http_resp)
        data = Types::CreateScheduledQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['Arn']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteScheduledQuery
    class DeleteScheduledQuery
      def self.parse(http_resp)
        data = Types::DeleteScheduledQueryOutput.new
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
        data.message = map['Message']
        data.scheduled_query_arn = map['ScheduledQueryArn']
        data
      end
    end

    # Operation Parser for DescribeEndpoints
    class DescribeEndpoints
      def self.parse(http_resp)
        data = Types::DescribeEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoints = (Parsers::Endpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data
      end
    end

    class Endpoints
      def self.parse(list)
        list.map do |value|
          Parsers::Endpoint.parse(value) unless value.nil?
        end
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.address = map['Address']
        data.cache_period_in_minutes = map['CachePeriodInMinutes']
        return data
      end
    end

    # Operation Parser for DescribeScheduledQuery
    class DescribeScheduledQuery
      def self.parse(http_resp)
        data = Types::DescribeScheduledQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scheduled_query = (Parsers::ScheduledQueryDescription.parse(map['ScheduledQuery']) unless map['ScheduledQuery'].nil?)
        data
      end
    end

    class ScheduledQueryDescription
      def self.parse(map)
        data = Types::ScheduledQueryDescription.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.query_string = map['QueryString']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.state = map['State']
        data.previous_invocation_time = Time.at(map['PreviousInvocationTime'].to_i) if map['PreviousInvocationTime']
        data.next_invocation_time = Time.at(map['NextInvocationTime'].to_i) if map['NextInvocationTime']
        data.schedule_configuration = (Parsers::ScheduleConfiguration.parse(map['ScheduleConfiguration']) unless map['ScheduleConfiguration'].nil?)
        data.notification_configuration = (Parsers::NotificationConfiguration.parse(map['NotificationConfiguration']) unless map['NotificationConfiguration'].nil?)
        data.target_configuration = (Parsers::TargetConfiguration.parse(map['TargetConfiguration']) unless map['TargetConfiguration'].nil?)
        data.scheduled_query_execution_role_arn = map['ScheduledQueryExecutionRoleArn']
        data.kms_key_id = map['KmsKeyId']
        data.error_report_configuration = (Parsers::ErrorReportConfiguration.parse(map['ErrorReportConfiguration']) unless map['ErrorReportConfiguration'].nil?)
        data.last_run_summary = (Parsers::ScheduledQueryRunSummary.parse(map['LastRunSummary']) unless map['LastRunSummary'].nil?)
        data.recently_failed_runs = (Parsers::ScheduledQueryRunSummaryList.parse(map['RecentlyFailedRuns']) unless map['RecentlyFailedRuns'].nil?)
        return data
      end
    end

    class ScheduledQueryRunSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ScheduledQueryRunSummary.parse(value) unless value.nil?
        end
      end
    end

    class ScheduledQueryRunSummary
      def self.parse(map)
        data = Types::ScheduledQueryRunSummary.new
        data.invocation_time = Time.at(map['InvocationTime'].to_i) if map['InvocationTime']
        data.trigger_time = Time.at(map['TriggerTime'].to_i) if map['TriggerTime']
        data.run_status = map['RunStatus']
        data.execution_stats = (Parsers::ExecutionStats.parse(map['ExecutionStats']) unless map['ExecutionStats'].nil?)
        data.error_report_location = (Parsers::ErrorReportLocation.parse(map['ErrorReportLocation']) unless map['ErrorReportLocation'].nil?)
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    class ErrorReportLocation
      def self.parse(map)
        data = Types::ErrorReportLocation.new
        data.s3_report_location = (Parsers::S3ReportLocation.parse(map['S3ReportLocation']) unless map['S3ReportLocation'].nil?)
        return data
      end
    end

    class S3ReportLocation
      def self.parse(map)
        data = Types::S3ReportLocation.new
        data.bucket_name = map['BucketName']
        data.object_key = map['ObjectKey']
        return data
      end
    end

    class ExecutionStats
      def self.parse(map)
        data = Types::ExecutionStats.new
        data.execution_time_in_millis = map['ExecutionTimeInMillis']
        data.data_writes = map['DataWrites']
        data.bytes_metered = map['BytesMetered']
        data.records_ingested = map['RecordsIngested']
        data.query_result_rows = map['QueryResultRows']
        return data
      end
    end

    class ErrorReportConfiguration
      def self.parse(map)
        data = Types::ErrorReportConfiguration.new
        data.s3_configuration = (Parsers::S3Configuration.parse(map['S3Configuration']) unless map['S3Configuration'].nil?)
        return data
      end
    end

    class S3Configuration
      def self.parse(map)
        data = Types::S3Configuration.new
        data.bucket_name = map['BucketName']
        data.object_key_prefix = map['ObjectKeyPrefix']
        data.encryption_option = map['EncryptionOption']
        return data
      end
    end

    class TargetConfiguration
      def self.parse(map)
        data = Types::TargetConfiguration.new
        data.timestream_configuration = (Parsers::TimestreamConfiguration.parse(map['TimestreamConfiguration']) unless map['TimestreamConfiguration'].nil?)
        return data
      end
    end

    class TimestreamConfiguration
      def self.parse(map)
        data = Types::TimestreamConfiguration.new
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.time_column = map['TimeColumn']
        data.dimension_mappings = (Parsers::DimensionMappingList.parse(map['DimensionMappings']) unless map['DimensionMappings'].nil?)
        data.multi_measure_mappings = (Parsers::MultiMeasureMappings.parse(map['MultiMeasureMappings']) unless map['MultiMeasureMappings'].nil?)
        data.mixed_measure_mappings = (Parsers::MixedMeasureMappingList.parse(map['MixedMeasureMappings']) unless map['MixedMeasureMappings'].nil?)
        data.measure_name_column = map['MeasureNameColumn']
        return data
      end
    end

    class MixedMeasureMappingList
      def self.parse(list)
        list.map do |value|
          Parsers::MixedMeasureMapping.parse(value) unless value.nil?
        end
      end
    end

    class MixedMeasureMapping
      def self.parse(map)
        data = Types::MixedMeasureMapping.new
        data.measure_name = map['MeasureName']
        data.source_column = map['SourceColumn']
        data.target_measure_name = map['TargetMeasureName']
        data.measure_value_type = map['MeasureValueType']
        data.multi_measure_attribute_mappings = (Parsers::MultiMeasureAttributeMappingList.parse(map['MultiMeasureAttributeMappings']) unless map['MultiMeasureAttributeMappings'].nil?)
        return data
      end
    end

    class MultiMeasureAttributeMappingList
      def self.parse(list)
        list.map do |value|
          Parsers::MultiMeasureAttributeMapping.parse(value) unless value.nil?
        end
      end
    end

    class MultiMeasureAttributeMapping
      def self.parse(map)
        data = Types::MultiMeasureAttributeMapping.new
        data.source_column = map['SourceColumn']
        data.target_multi_measure_attribute_name = map['TargetMultiMeasureAttributeName']
        data.measure_value_type = map['MeasureValueType']
        return data
      end
    end

    class MultiMeasureMappings
      def self.parse(map)
        data = Types::MultiMeasureMappings.new
        data.target_multi_measure_name = map['TargetMultiMeasureName']
        data.multi_measure_attribute_mappings = (Parsers::MultiMeasureAttributeMappingList.parse(map['MultiMeasureAttributeMappings']) unless map['MultiMeasureAttributeMappings'].nil?)
        return data
      end
    end

    class DimensionMappingList
      def self.parse(list)
        list.map do |value|
          Parsers::DimensionMapping.parse(value) unless value.nil?
        end
      end
    end

    class DimensionMapping
      def self.parse(map)
        data = Types::DimensionMapping.new
        data.name = map['Name']
        data.dimension_value_type = map['DimensionValueType']
        return data
      end
    end

    class NotificationConfiguration
      def self.parse(map)
        data = Types::NotificationConfiguration.new
        data.sns_configuration = (Parsers::SnsConfiguration.parse(map['SnsConfiguration']) unless map['SnsConfiguration'].nil?)
        return data
      end
    end

    class SnsConfiguration
      def self.parse(map)
        data = Types::SnsConfiguration.new
        data.topic_arn = map['TopicArn']
        return data
      end
    end

    class ScheduleConfiguration
      def self.parse(map)
        data = Types::ScheduleConfiguration.new
        data.schedule_expression = map['ScheduleExpression']
        return data
      end
    end

    # Operation Parser for ExecuteScheduledQuery
    class ExecuteScheduledQuery
      def self.parse(http_resp)
        data = Types::ExecuteScheduledQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ListScheduledQueries
    class ListScheduledQueries
      def self.parse(http_resp)
        data = Types::ListScheduledQueriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scheduled_queries = (Parsers::ScheduledQueryList.parse(map['ScheduledQueries']) unless map['ScheduledQueries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScheduledQueryList
      def self.parse(list)
        list.map do |value|
          Parsers::ScheduledQuery.parse(value) unless value.nil?
        end
      end
    end

    class ScheduledQuery
      def self.parse(map)
        data = Types::ScheduledQuery.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.state = map['State']
        data.previous_invocation_time = Time.at(map['PreviousInvocationTime'].to_i) if map['PreviousInvocationTime']
        data.next_invocation_time = Time.at(map['NextInvocationTime'].to_i) if map['NextInvocationTime']
        data.error_report_configuration = (Parsers::ErrorReportConfiguration.parse(map['ErrorReportConfiguration']) unless map['ErrorReportConfiguration'].nil?)
        data.target_destination = (Parsers::TargetDestination.parse(map['TargetDestination']) unless map['TargetDestination'].nil?)
        data.last_run_status = map['LastRunStatus']
        return data
      end
    end

    class TargetDestination
      def self.parse(map)
        data = Types::TargetDestination.new
        data.timestream_destination = (Parsers::TimestreamDestination.parse(map['TimestreamDestination']) unless map['TimestreamDestination'].nil?)
        return data
      end
    end

    class TimestreamDestination
      def self.parse(map)
        data = Types::TimestreamDestination.new
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
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
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for PrepareQuery
    class PrepareQuery
      def self.parse(http_resp)
        data = Types::PrepareQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_string = map['QueryString']
        data.columns = (Parsers::SelectColumnList.parse(map['Columns']) unless map['Columns'].nil?)
        data.parameters = (Parsers::ParameterMappingList.parse(map['Parameters']) unless map['Parameters'].nil?)
        data
      end
    end

    class ParameterMappingList
      def self.parse(list)
        list.map do |value|
          Parsers::ParameterMapping.parse(value) unless value.nil?
        end
      end
    end

    class ParameterMapping
      def self.parse(map)
        data = Types::ParameterMapping.new
        data.name = map['Name']
        data.type = (Parsers::Type.parse(map['Type']) unless map['Type'].nil?)
        return data
      end
    end

    class Type
      def self.parse(map)
        data = Types::Type.new
        data.scalar_type = map['ScalarType']
        data.array_column_info = (Parsers::ColumnInfo.parse(map['ArrayColumnInfo']) unless map['ArrayColumnInfo'].nil?)
        data.time_series_measure_value_column_info = (Parsers::ColumnInfo.parse(map['TimeSeriesMeasureValueColumnInfo']) unless map['TimeSeriesMeasureValueColumnInfo'].nil?)
        data.row_column_info = (Parsers::ColumnInfoList.parse(map['RowColumnInfo']) unless map['RowColumnInfo'].nil?)
        return data
      end
    end

    class ColumnInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnInfo.parse(value) unless value.nil?
        end
      end
    end

    class ColumnInfo
      def self.parse(map)
        data = Types::ColumnInfo.new
        data.name = map['Name']
        data.type = (Parsers::Type.parse(map['Type']) unless map['Type'].nil?)
        return data
      end
    end

    class SelectColumnList
      def self.parse(list)
        list.map do |value|
          Parsers::SelectColumn.parse(value) unless value.nil?
        end
      end
    end

    class SelectColumn
      def self.parse(map)
        data = Types::SelectColumn.new
        data.name = map['Name']
        data.type = (Parsers::Type.parse(map['Type']) unless map['Type'].nil?)
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.aliased = map['Aliased']
        return data
      end
    end

    # Operation Parser for Query
    class Query
      def self.parse(http_resp)
        data = Types::QueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_id = map['QueryId']
        data.next_token = map['NextToken']
        data.rows = (Parsers::RowList.parse(map['Rows']) unless map['Rows'].nil?)
        data.column_info = (Parsers::ColumnInfoList.parse(map['ColumnInfo']) unless map['ColumnInfo'].nil?)
        data.query_status = (Parsers::QueryStatus.parse(map['QueryStatus']) unless map['QueryStatus'].nil?)
        data
      end
    end

    class QueryStatus
      def self.parse(map)
        data = Types::QueryStatus.new
        data.progress_percentage = Hearth::NumberHelper.deserialize(map['ProgressPercentage'])
        data.cumulative_bytes_scanned = map['CumulativeBytesScanned']
        data.cumulative_bytes_metered = map['CumulativeBytesMetered']
        return data
      end
    end

    class RowList
      def self.parse(list)
        list.map do |value|
          Parsers::Row.parse(value) unless value.nil?
        end
      end
    end

    class Row
      def self.parse(map)
        data = Types::Row.new
        data.data = (Parsers::DatumList.parse(map['Data']) unless map['Data'].nil?)
        return data
      end
    end

    class DatumList
      def self.parse(list)
        list.map do |value|
          Parsers::Datum.parse(value) unless value.nil?
        end
      end
    end

    class Datum
      def self.parse(map)
        data = Types::Datum.new
        data.scalar_value = map['ScalarValue']
        data.time_series_value = (Parsers::TimeSeriesDataPointList.parse(map['TimeSeriesValue']) unless map['TimeSeriesValue'].nil?)
        data.array_value = (Parsers::DatumList.parse(map['ArrayValue']) unless map['ArrayValue'].nil?)
        data.row_value = (Parsers::Row.parse(map['RowValue']) unless map['RowValue'].nil?)
        data.null_value = map['NullValue']
        return data
      end
    end

    class TimeSeriesDataPointList
      def self.parse(list)
        list.map do |value|
          Parsers::TimeSeriesDataPoint.parse(value) unless value.nil?
        end
      end
    end

    class TimeSeriesDataPoint
      def self.parse(map)
        data = Types::TimeSeriesDataPoint.new
        data.time = map['Time']
        data.value = (Parsers::Datum.parse(map['Value']) unless map['Value'].nil?)
        return data
      end
    end

    # Error Parser for QueryExecutionException
    class QueryExecutionException
      def self.parse(http_resp)
        data = Types::QueryExecutionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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

    # Operation Parser for UpdateScheduledQuery
    class UpdateScheduledQuery
      def self.parse(http_resp)
        data = Types::UpdateScheduledQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
