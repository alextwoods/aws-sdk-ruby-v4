# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::TimestreamQuery
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module CancelQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelQueryInput, context: context)
        type = Types::CancelQueryInput.new
        type.query_id = params[:query_id]
        type
      end
    end

    module CancelQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelQueryOutput, context: context)
        type = Types::CancelQueryOutput.new
        type.cancellation_message = params[:cancellation_message]
        type
      end
    end

    module ColumnInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnInfo, context: context)
        type = Types::ColumnInfo.new
        type.name = params[:name]
        type.type = Type.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type
      end
    end

    module ColumnInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateScheduledQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScheduledQueryInput, context: context)
        type = Types::CreateScheduledQueryInput.new
        type.name = params[:name]
        type.query_string = params[:query_string]
        type.schedule_configuration = ScheduleConfiguration.build(params[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless params[:schedule_configuration].nil?
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type.target_configuration = TargetConfiguration.build(params[:target_configuration], context: "#{context}[:target_configuration]") unless params[:target_configuration].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.scheduled_query_execution_role_arn = params[:scheduled_query_execution_role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type.error_report_configuration = ErrorReportConfiguration.build(params[:error_report_configuration], context: "#{context}[:error_report_configuration]") unless params[:error_report_configuration].nil?
        type
      end
    end

    module CreateScheduledQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScheduledQueryOutput, context: context)
        type = Types::CreateScheduledQueryOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module Datum
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Datum, context: context)
        type = Types::Datum.new
        type.scalar_value = params[:scalar_value]
        type.time_series_value = TimeSeriesDataPointList.build(params[:time_series_value], context: "#{context}[:time_series_value]") unless params[:time_series_value].nil?
        type.array_value = DatumList.build(params[:array_value], context: "#{context}[:array_value]") unless params[:array_value].nil?
        type.row_value = Row.build(params[:row_value], context: "#{context}[:row_value]") unless params[:row_value].nil?
        type.null_value = params[:null_value]
        type
      end
    end

    module DatumList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Datum.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteScheduledQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduledQueryInput, context: context)
        type = Types::DeleteScheduledQueryInput.new
        type.scheduled_query_arn = params[:scheduled_query_arn]
        type
      end
    end

    module DeleteScheduledQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduledQueryOutput, context: context)
        type = Types::DeleteScheduledQueryOutput.new
        type
      end
    end

    module DescribeEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointsInput, context: context)
        type = Types::DescribeEndpointsInput.new
        type
      end
    end

    module DescribeEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointsOutput, context: context)
        type = Types::DescribeEndpointsOutput.new
        type.endpoints = Endpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    module DescribeScheduledQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledQueryInput, context: context)
        type = Types::DescribeScheduledQueryInput.new
        type.scheduled_query_arn = params[:scheduled_query_arn]
        type
      end
    end

    module DescribeScheduledQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledQueryOutput, context: context)
        type = Types::DescribeScheduledQueryOutput.new
        type.scheduled_query = ScheduledQueryDescription.build(params[:scheduled_query], context: "#{context}[:scheduled_query]") unless params[:scheduled_query].nil?
        type
      end
    end

    module DimensionMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionMapping, context: context)
        type = Types::DimensionMapping.new
        type.name = params[:name]
        type.dimension_value_type = params[:dimension_value_type]
        type
      end
    end

    module DimensionMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.address = params[:address]
        type.cache_period_in_minutes = params[:cache_period_in_minutes]
        type
      end
    end

    module Endpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Endpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ErrorReportConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorReportConfiguration, context: context)
        type = Types::ErrorReportConfiguration.new
        type.s3_configuration = S3Configuration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type
      end
    end

    module ErrorReportLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorReportLocation, context: context)
        type = Types::ErrorReportLocation.new
        type.s3_report_location = S3ReportLocation.build(params[:s3_report_location], context: "#{context}[:s3_report_location]") unless params[:s3_report_location].nil?
        type
      end
    end

    module ExecuteScheduledQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteScheduledQueryInput, context: context)
        type = Types::ExecuteScheduledQueryInput.new
        type.scheduled_query_arn = params[:scheduled_query_arn]
        type.invocation_time = params[:invocation_time]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module ExecuteScheduledQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteScheduledQueryOutput, context: context)
        type = Types::ExecuteScheduledQueryOutput.new
        type
      end
    end

    module ExecutionStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionStats, context: context)
        type = Types::ExecutionStats.new
        type.execution_time_in_millis = params[:execution_time_in_millis]
        type.data_writes = params[:data_writes]
        type.bytes_metered = params[:bytes_metered]
        type.records_ingested = params[:records_ingested]
        type.query_result_rows = params[:query_result_rows]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEndpointException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEndpointException, context: context)
        type = Types::InvalidEndpointException.new
        type.message = params[:message]
        type
      end
    end

    module ListScheduledQueriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScheduledQueriesInput, context: context)
        type = Types::ListScheduledQueriesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListScheduledQueriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScheduledQueriesOutput, context: context)
        type = Types::ListScheduledQueriesOutput.new
        type.scheduled_queries = ScheduledQueryList.build(params[:scheduled_queries], context: "#{context}[:scheduled_queries]") unless params[:scheduled_queries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MixedMeasureMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MixedMeasureMapping, context: context)
        type = Types::MixedMeasureMapping.new
        type.measure_name = params[:measure_name]
        type.source_column = params[:source_column]
        type.target_measure_name = params[:target_measure_name]
        type.measure_value_type = params[:measure_value_type]
        type.multi_measure_attribute_mappings = MultiMeasureAttributeMappingList.build(params[:multi_measure_attribute_mappings], context: "#{context}[:multi_measure_attribute_mappings]") unless params[:multi_measure_attribute_mappings].nil?
        type
      end
    end

    module MixedMeasureMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MixedMeasureMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MultiMeasureAttributeMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiMeasureAttributeMapping, context: context)
        type = Types::MultiMeasureAttributeMapping.new
        type.source_column = params[:source_column]
        type.target_multi_measure_attribute_name = params[:target_multi_measure_attribute_name]
        type.measure_value_type = params[:measure_value_type]
        type
      end
    end

    module MultiMeasureAttributeMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiMeasureAttributeMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MultiMeasureMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiMeasureMappings, context: context)
        type = Types::MultiMeasureMappings.new
        type.target_multi_measure_name = params[:target_multi_measure_name]
        type.multi_measure_attribute_mappings = MultiMeasureAttributeMappingList.build(params[:multi_measure_attribute_mappings], context: "#{context}[:multi_measure_attribute_mappings]") unless params[:multi_measure_attribute_mappings].nil?
        type
      end
    end

    module NotificationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationConfiguration, context: context)
        type = Types::NotificationConfiguration.new
        type.sns_configuration = SnsConfiguration.build(params[:sns_configuration], context: "#{context}[:sns_configuration]") unless params[:sns_configuration].nil?
        type
      end
    end

    module ParameterMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterMapping, context: context)
        type = Types::ParameterMapping.new
        type.name = params[:name]
        type.type = Type.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type
      end
    end

    module ParameterMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PrepareQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrepareQueryInput, context: context)
        type = Types::PrepareQueryInput.new
        type.query_string = params[:query_string]
        type.validate_only = params[:validate_only]
        type
      end
    end

    module PrepareQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrepareQueryOutput, context: context)
        type = Types::PrepareQueryOutput.new
        type.query_string = params[:query_string]
        type.columns = SelectColumnList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type.parameters = ParameterMappingList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module QueryExecutionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryExecutionException, context: context)
        type = Types::QueryExecutionException.new
        type.message = params[:message]
        type
      end
    end

    module QueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryInput, context: context)
        type = Types::QueryInput.new
        type.query_string = params[:query_string]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.next_token = params[:next_token]
        type.max_rows = params[:max_rows]
        type
      end
    end

    module QueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryOutput, context: context)
        type = Types::QueryOutput.new
        type.query_id = params[:query_id]
        type.next_token = params[:next_token]
        type.rows = RowList.build(params[:rows], context: "#{context}[:rows]") unless params[:rows].nil?
        type.column_info = ColumnInfoList.build(params[:column_info], context: "#{context}[:column_info]") unless params[:column_info].nil?
        type.query_status = QueryStatus.build(params[:query_status], context: "#{context}[:query_status]") unless params[:query_status].nil?
        type
      end
    end

    module QueryStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryStatus, context: context)
        type = Types::QueryStatus.new
        type.progress_percentage = params[:progress_percentage]
        type.cumulative_bytes_scanned = params[:cumulative_bytes_scanned]
        type.cumulative_bytes_metered = params[:cumulative_bytes_metered]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.scheduled_query_arn = params[:scheduled_query_arn]
        type
      end
    end

    module Row
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Row, context: context)
        type = Types::Row.new
        type.data = DatumList.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type
      end
    end

    module RowList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Row.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Configuration, context: context)
        type = Types::S3Configuration.new
        type.bucket_name = params[:bucket_name]
        type.object_key_prefix = params[:object_key_prefix]
        type.encryption_option = params[:encryption_option]
        type
      end
    end

    module S3ReportLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ReportLocation, context: context)
        type = Types::S3ReportLocation.new
        type.bucket_name = params[:bucket_name]
        type.object_key = params[:object_key]
        type
      end
    end

    module ScheduleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleConfiguration, context: context)
        type = Types::ScheduleConfiguration.new
        type.schedule_expression = params[:schedule_expression]
        type
      end
    end

    module ScheduledQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledQuery, context: context)
        type = Types::ScheduledQuery.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.creation_time = params[:creation_time]
        type.state = params[:state]
        type.previous_invocation_time = params[:previous_invocation_time]
        type.next_invocation_time = params[:next_invocation_time]
        type.error_report_configuration = ErrorReportConfiguration.build(params[:error_report_configuration], context: "#{context}[:error_report_configuration]") unless params[:error_report_configuration].nil?
        type.target_destination = TargetDestination.build(params[:target_destination], context: "#{context}[:target_destination]") unless params[:target_destination].nil?
        type.last_run_status = params[:last_run_status]
        type
      end
    end

    module ScheduledQueryDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledQueryDescription, context: context)
        type = Types::ScheduledQueryDescription.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.query_string = params[:query_string]
        type.creation_time = params[:creation_time]
        type.state = params[:state]
        type.previous_invocation_time = params[:previous_invocation_time]
        type.next_invocation_time = params[:next_invocation_time]
        type.schedule_configuration = ScheduleConfiguration.build(params[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless params[:schedule_configuration].nil?
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type.target_configuration = TargetConfiguration.build(params[:target_configuration], context: "#{context}[:target_configuration]") unless params[:target_configuration].nil?
        type.scheduled_query_execution_role_arn = params[:scheduled_query_execution_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.error_report_configuration = ErrorReportConfiguration.build(params[:error_report_configuration], context: "#{context}[:error_report_configuration]") unless params[:error_report_configuration].nil?
        type.last_run_summary = ScheduledQueryRunSummary.build(params[:last_run_summary], context: "#{context}[:last_run_summary]") unless params[:last_run_summary].nil?
        type.recently_failed_runs = ScheduledQueryRunSummaryList.build(params[:recently_failed_runs], context: "#{context}[:recently_failed_runs]") unless params[:recently_failed_runs].nil?
        type
      end
    end

    module ScheduledQueryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledQuery.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduledQueryRunSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledQueryRunSummary, context: context)
        type = Types::ScheduledQueryRunSummary.new
        type.invocation_time = params[:invocation_time]
        type.trigger_time = params[:trigger_time]
        type.run_status = params[:run_status]
        type.execution_stats = ExecutionStats.build(params[:execution_stats], context: "#{context}[:execution_stats]") unless params[:execution_stats].nil?
        type.error_report_location = ErrorReportLocation.build(params[:error_report_location], context: "#{context}[:error_report_location]") unless params[:error_report_location].nil?
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module ScheduledQueryRunSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledQueryRunSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SelectColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectColumn, context: context)
        type = Types::SelectColumn.new
        type.name = params[:name]
        type.type = Type.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.aliased = params[:aliased]
        type
      end
    end

    module SelectColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SelectColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SnsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnsConfiguration, context: context)
        type = Types::SnsConfiguration.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TargetConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetConfiguration, context: context)
        type = Types::TargetConfiguration.new
        type.timestream_configuration = TimestreamConfiguration.build(params[:timestream_configuration], context: "#{context}[:timestream_configuration]") unless params[:timestream_configuration].nil?
        type
      end
    end

    module TargetDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetDestination, context: context)
        type = Types::TargetDestination.new
        type.timestream_destination = TimestreamDestination.build(params[:timestream_destination], context: "#{context}[:timestream_destination]") unless params[:timestream_destination].nil?
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TimeSeriesDataPoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeSeriesDataPoint, context: context)
        type = Types::TimeSeriesDataPoint.new
        type.time = params[:time]
        type.value = Datum.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module TimeSeriesDataPointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimeSeriesDataPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimestreamConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestreamConfiguration, context: context)
        type = Types::TimestreamConfiguration.new
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.time_column = params[:time_column]
        type.dimension_mappings = DimensionMappingList.build(params[:dimension_mappings], context: "#{context}[:dimension_mappings]") unless params[:dimension_mappings].nil?
        type.multi_measure_mappings = MultiMeasureMappings.build(params[:multi_measure_mappings], context: "#{context}[:multi_measure_mappings]") unless params[:multi_measure_mappings].nil?
        type.mixed_measure_mappings = MixedMeasureMappingList.build(params[:mixed_measure_mappings], context: "#{context}[:mixed_measure_mappings]") unless params[:mixed_measure_mappings].nil?
        type.measure_name_column = params[:measure_name_column]
        type
      end
    end

    module TimestreamDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestreamDestination, context: context)
        type = Types::TimestreamDestination.new
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type
      end
    end

    module Type
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Type, context: context)
        type = Types::Type.new
        type.scalar_type = params[:scalar_type]
        type.array_column_info = ColumnInfo.build(params[:array_column_info], context: "#{context}[:array_column_info]") unless params[:array_column_info].nil?
        type.time_series_measure_value_column_info = ColumnInfo.build(params[:time_series_measure_value_column_info], context: "#{context}[:time_series_measure_value_column_info]") unless params[:time_series_measure_value_column_info].nil?
        type.row_column_info = ColumnInfoList.build(params[:row_column_info], context: "#{context}[:row_column_info]") unless params[:row_column_info].nil?
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateScheduledQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScheduledQueryInput, context: context)
        type = Types::UpdateScheduledQueryInput.new
        type.scheduled_query_arn = params[:scheduled_query_arn]
        type.state = params[:state]
        type
      end
    end

    module UpdateScheduledQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScheduledQueryOutput, context: context)
        type = Types::UpdateScheduledQueryOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
