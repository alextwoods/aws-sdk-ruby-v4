# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TimestreamQuery
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelQueryInput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class CancelQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelQueryOutput, context: context)
        Hearth::Validator.validate!(input[:cancellation_message], ::String, context: "#{context}[:cancellation_message]")
      end
    end

    class ColumnInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Type.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
      end
    end

    class ColumnInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateScheduledQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScheduledQueryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Validators::ScheduleConfiguration.validate!(input[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless input[:schedule_configuration].nil?
        Validators::NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
        Validators::TargetConfiguration.validate!(input[:target_configuration], context: "#{context}[:target_configuration]") unless input[:target_configuration].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:scheduled_query_execution_role_arn], ::String, context: "#{context}[:scheduled_query_execution_role_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::ErrorReportConfiguration.validate!(input[:error_report_configuration], context: "#{context}[:error_report_configuration]") unless input[:error_report_configuration].nil?
      end
    end

    class CreateScheduledQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScheduledQueryOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class Datum
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Datum, context: context)
        Hearth::Validator.validate!(input[:scalar_value], ::String, context: "#{context}[:scalar_value]")
        Validators::TimeSeriesDataPointList.validate!(input[:time_series_value], context: "#{context}[:time_series_value]") unless input[:time_series_value].nil?
        Validators::DatumList.validate!(input[:array_value], context: "#{context}[:array_value]") unless input[:array_value].nil?
        Validators::Row.validate!(input[:row_value], context: "#{context}[:row_value]") unless input[:row_value].nil?
        Hearth::Validator.validate!(input[:null_value], ::TrueClass, ::FalseClass, context: "#{context}[:null_value]")
      end
    end

    class DatumList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Datum.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteScheduledQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledQueryInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_query_arn], ::String, context: "#{context}[:scheduled_query_arn]")
      end
    end

    class DeleteScheduledQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledQueryOutput, context: context)
      end
    end

    class DescribeEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsInput, context: context)
      end
    end

    class DescribeEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsOutput, context: context)
        Validators::Endpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class DescribeScheduledQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledQueryInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_query_arn], ::String, context: "#{context}[:scheduled_query_arn]")
      end
    end

    class DescribeScheduledQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledQueryOutput, context: context)
        Validators::ScheduledQueryDescription.validate!(input[:scheduled_query], context: "#{context}[:scheduled_query]") unless input[:scheduled_query].nil?
      end
    end

    class DimensionMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionMapping, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:dimension_value_type], ::String, context: "#{context}[:dimension_value_type]")
      end
    end

    class DimensionMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DimensionMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:cache_period_in_minutes], ::Integer, context: "#{context}[:cache_period_in_minutes]")
      end
    end

    class Endpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Endpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ErrorReportConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorReportConfiguration, context: context)
        Validators::S3Configuration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
      end
    end

    class ErrorReportLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorReportLocation, context: context)
        Validators::S3ReportLocation.validate!(input[:s3_report_location], context: "#{context}[:s3_report_location]") unless input[:s3_report_location].nil?
      end
    end

    class ExecuteScheduledQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteScheduledQueryInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_query_arn], ::String, context: "#{context}[:scheduled_query_arn]")
        Hearth::Validator.validate!(input[:invocation_time], ::Time, context: "#{context}[:invocation_time]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class ExecuteScheduledQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteScheduledQueryOutput, context: context)
      end
    end

    class ExecutionStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionStats, context: context)
        Hearth::Validator.validate!(input[:execution_time_in_millis], ::Integer, context: "#{context}[:execution_time_in_millis]")
        Hearth::Validator.validate!(input[:data_writes], ::Integer, context: "#{context}[:data_writes]")
        Hearth::Validator.validate!(input[:bytes_metered], ::Integer, context: "#{context}[:bytes_metered]")
        Hearth::Validator.validate!(input[:records_ingested], ::Integer, context: "#{context}[:records_ingested]")
        Hearth::Validator.validate!(input[:query_result_rows], ::Integer, context: "#{context}[:query_result_rows]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEndpointException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEndpointException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListScheduledQueriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScheduledQueriesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListScheduledQueriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScheduledQueriesOutput, context: context)
        Validators::ScheduledQueryList.validate!(input[:scheduled_queries], context: "#{context}[:scheduled_queries]") unless input[:scheduled_queries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MixedMeasureMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MixedMeasureMapping, context: context)
        Hearth::Validator.validate!(input[:measure_name], ::String, context: "#{context}[:measure_name]")
        Hearth::Validator.validate!(input[:source_column], ::String, context: "#{context}[:source_column]")
        Hearth::Validator.validate!(input[:target_measure_name], ::String, context: "#{context}[:target_measure_name]")
        Hearth::Validator.validate!(input[:measure_value_type], ::String, context: "#{context}[:measure_value_type]")
        Validators::MultiMeasureAttributeMappingList.validate!(input[:multi_measure_attribute_mappings], context: "#{context}[:multi_measure_attribute_mappings]") unless input[:multi_measure_attribute_mappings].nil?
      end
    end

    class MixedMeasureMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MixedMeasureMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MultiMeasureAttributeMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiMeasureAttributeMapping, context: context)
        Hearth::Validator.validate!(input[:source_column], ::String, context: "#{context}[:source_column]")
        Hearth::Validator.validate!(input[:target_multi_measure_attribute_name], ::String, context: "#{context}[:target_multi_measure_attribute_name]")
        Hearth::Validator.validate!(input[:measure_value_type], ::String, context: "#{context}[:measure_value_type]")
      end
    end

    class MultiMeasureAttributeMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MultiMeasureAttributeMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MultiMeasureMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiMeasureMappings, context: context)
        Hearth::Validator.validate!(input[:target_multi_measure_name], ::String, context: "#{context}[:target_multi_measure_name]")
        Validators::MultiMeasureAttributeMappingList.validate!(input[:multi_measure_attribute_mappings], context: "#{context}[:multi_measure_attribute_mappings]") unless input[:multi_measure_attribute_mappings].nil?
      end
    end

    class NotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationConfiguration, context: context)
        Validators::SnsConfiguration.validate!(input[:sns_configuration], context: "#{context}[:sns_configuration]") unless input[:sns_configuration].nil?
      end
    end

    class ParameterMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterMapping, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Type.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
      end
    end

    class ParameterMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ParameterMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PrepareQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrepareQueryInput, context: context)
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:validate_only], ::TrueClass, ::FalseClass, context: "#{context}[:validate_only]")
      end
    end

    class PrepareQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrepareQueryOutput, context: context)
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Validators::SelectColumnList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
        Validators::ParameterMappingList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class QueryExecutionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryExecutionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class QueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryInput, context: context)
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_rows], ::Integer, context: "#{context}[:max_rows]")
      end
    end

    class QueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryOutput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::RowList.validate!(input[:rows], context: "#{context}[:rows]") unless input[:rows].nil?
        Validators::ColumnInfoList.validate!(input[:column_info], context: "#{context}[:column_info]") unless input[:column_info].nil?
        Validators::QueryStatus.validate!(input[:query_status], context: "#{context}[:query_status]") unless input[:query_status].nil?
      end
    end

    class QueryStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryStatus, context: context)
        Hearth::Validator.validate!(input[:progress_percentage], ::Float, context: "#{context}[:progress_percentage]")
        Hearth::Validator.validate!(input[:cumulative_bytes_scanned], ::Integer, context: "#{context}[:cumulative_bytes_scanned]")
        Hearth::Validator.validate!(input[:cumulative_bytes_metered], ::Integer, context: "#{context}[:cumulative_bytes_metered]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:scheduled_query_arn], ::String, context: "#{context}[:scheduled_query_arn]")
      end
    end

    class Row
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Row, context: context)
        Validators::DatumList.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
      end
    end

    class RowList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Row.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Configuration, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:object_key_prefix], ::String, context: "#{context}[:object_key_prefix]")
        Hearth::Validator.validate!(input[:encryption_option], ::String, context: "#{context}[:encryption_option]")
      end
    end

    class S3ReportLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ReportLocation, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:object_key], ::String, context: "#{context}[:object_key]")
      end
    end

    class ScheduleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleConfiguration, context: context)
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
      end
    end

    class ScheduledQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledQuery, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:previous_invocation_time], ::Time, context: "#{context}[:previous_invocation_time]")
        Hearth::Validator.validate!(input[:next_invocation_time], ::Time, context: "#{context}[:next_invocation_time]")
        Validators::ErrorReportConfiguration.validate!(input[:error_report_configuration], context: "#{context}[:error_report_configuration]") unless input[:error_report_configuration].nil?
        Validators::TargetDestination.validate!(input[:target_destination], context: "#{context}[:target_destination]") unless input[:target_destination].nil?
        Hearth::Validator.validate!(input[:last_run_status], ::String, context: "#{context}[:last_run_status]")
      end
    end

    class ScheduledQueryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledQueryDescription, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:previous_invocation_time], ::Time, context: "#{context}[:previous_invocation_time]")
        Hearth::Validator.validate!(input[:next_invocation_time], ::Time, context: "#{context}[:next_invocation_time]")
        Validators::ScheduleConfiguration.validate!(input[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless input[:schedule_configuration].nil?
        Validators::NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
        Validators::TargetConfiguration.validate!(input[:target_configuration], context: "#{context}[:target_configuration]") unless input[:target_configuration].nil?
        Hearth::Validator.validate!(input[:scheduled_query_execution_role_arn], ::String, context: "#{context}[:scheduled_query_execution_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::ErrorReportConfiguration.validate!(input[:error_report_configuration], context: "#{context}[:error_report_configuration]") unless input[:error_report_configuration].nil?
        Validators::ScheduledQueryRunSummary.validate!(input[:last_run_summary], context: "#{context}[:last_run_summary]") unless input[:last_run_summary].nil?
        Validators::ScheduledQueryRunSummaryList.validate!(input[:recently_failed_runs], context: "#{context}[:recently_failed_runs]") unless input[:recently_failed_runs].nil?
      end
    end

    class ScheduledQueryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledQuery.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduledQueryRunSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledQueryRunSummary, context: context)
        Hearth::Validator.validate!(input[:invocation_time], ::Time, context: "#{context}[:invocation_time]")
        Hearth::Validator.validate!(input[:trigger_time], ::Time, context: "#{context}[:trigger_time]")
        Hearth::Validator.validate!(input[:run_status], ::String, context: "#{context}[:run_status]")
        Validators::ExecutionStats.validate!(input[:execution_stats], context: "#{context}[:execution_stats]") unless input[:execution_stats].nil?
        Validators::ErrorReportLocation.validate!(input[:error_report_location], context: "#{context}[:error_report_location]") unless input[:error_report_location].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class ScheduledQueryRunSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledQueryRunSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SelectColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectColumn, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Type.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:aliased], ::TrueClass, ::FalseClass, context: "#{context}[:aliased]")
      end
    end

    class SelectColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SelectColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnsConfiguration, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TargetConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetConfiguration, context: context)
        Validators::TimestreamConfiguration.validate!(input[:timestream_configuration], context: "#{context}[:timestream_configuration]") unless input[:timestream_configuration].nil?
      end
    end

    class TargetDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetDestination, context: context)
        Validators::TimestreamDestination.validate!(input[:timestream_destination], context: "#{context}[:timestream_destination]") unless input[:timestream_destination].nil?
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimeSeriesDataPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeSeriesDataPoint, context: context)
        Hearth::Validator.validate!(input[:time], ::String, context: "#{context}[:time]")
        Validators::Datum.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class TimeSeriesDataPointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TimeSeriesDataPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimestreamConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestreamConfiguration, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:time_column], ::String, context: "#{context}[:time_column]")
        Validators::DimensionMappingList.validate!(input[:dimension_mappings], context: "#{context}[:dimension_mappings]") unless input[:dimension_mappings].nil?
        Validators::MultiMeasureMappings.validate!(input[:multi_measure_mappings], context: "#{context}[:multi_measure_mappings]") unless input[:multi_measure_mappings].nil?
        Validators::MixedMeasureMappingList.validate!(input[:mixed_measure_mappings], context: "#{context}[:mixed_measure_mappings]") unless input[:mixed_measure_mappings].nil?
        Hearth::Validator.validate!(input[:measure_name_column], ::String, context: "#{context}[:measure_name_column]")
      end
    end

    class TimestreamDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestreamDestination, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class Type
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Type, context: context)
        Hearth::Validator.validate!(input[:scalar_type], ::String, context: "#{context}[:scalar_type]")
        Validators::ColumnInfo.validate!(input[:array_column_info], context: "#{context}[:array_column_info]") unless input[:array_column_info].nil?
        Validators::ColumnInfo.validate!(input[:time_series_measure_value_column_info], context: "#{context}[:time_series_measure_value_column_info]") unless input[:time_series_measure_value_column_info].nil?
        Validators::ColumnInfoList.validate!(input[:row_column_info], context: "#{context}[:row_column_info]") unless input[:row_column_info].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateScheduledQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScheduledQueryInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_query_arn], ::String, context: "#{context}[:scheduled_query_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class UpdateScheduledQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScheduledQueryOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
