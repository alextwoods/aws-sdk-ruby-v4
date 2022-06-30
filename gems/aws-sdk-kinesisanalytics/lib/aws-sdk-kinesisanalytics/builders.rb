# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::KinesisAnalytics
  module Builders

    # Operation Builder for AddApplicationCloudWatchLoggingOption
    class AddApplicationCloudWatchLoggingOption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.AddApplicationCloudWatchLoggingOption'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['CloudWatchLoggingOption'] = Builders::CloudWatchLoggingOption.build(input[:cloud_watch_logging_option]) unless input[:cloud_watch_logging_option].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CloudWatchLoggingOption
    class CloudWatchLoggingOption
      def self.build(input)
        data = {}
        data['LogStreamARN'] = input[:log_stream_arn] unless input[:log_stream_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Operation Builder for AddApplicationInput
    class AddApplicationInput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.AddApplicationInput'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['Input'] = Builders::Input.build(input[:input]) unless input[:input].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Input
    class Input
      def self.build(input)
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['InputProcessingConfiguration'] = Builders::InputProcessingConfiguration.build(input[:input_processing_configuration]) unless input[:input_processing_configuration].nil?
        data['KinesisStreamsInput'] = Builders::KinesisStreamsInput.build(input[:kinesis_streams_input]) unless input[:kinesis_streams_input].nil?
        data['KinesisFirehoseInput'] = Builders::KinesisFirehoseInput.build(input[:kinesis_firehose_input]) unless input[:kinesis_firehose_input].nil?
        data['InputParallelism'] = Builders::InputParallelism.build(input[:input_parallelism]) unless input[:input_parallelism].nil?
        data['InputSchema'] = Builders::SourceSchema.build(input[:input_schema]) unless input[:input_schema].nil?
        data
      end
    end

    # Structure Builder for SourceSchema
    class SourceSchema
      def self.build(input)
        data = {}
        data['RecordFormat'] = Builders::RecordFormat.build(input[:record_format]) unless input[:record_format].nil?
        data['RecordEncoding'] = input[:record_encoding] unless input[:record_encoding].nil?
        data['RecordColumns'] = Builders::RecordColumns.build(input[:record_columns]) unless input[:record_columns].nil?
        data
      end
    end

    # List Builder for RecordColumns
    class RecordColumns
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RecordColumn.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RecordColumn
    class RecordColumn
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Mapping'] = input[:mapping] unless input[:mapping].nil?
        data['SqlType'] = input[:sql_type] unless input[:sql_type].nil?
        data
      end
    end

    # Structure Builder for RecordFormat
    class RecordFormat
      def self.build(input)
        data = {}
        data['RecordFormatType'] = input[:record_format_type] unless input[:record_format_type].nil?
        data['MappingParameters'] = Builders::MappingParameters.build(input[:mapping_parameters]) unless input[:mapping_parameters].nil?
        data
      end
    end

    # Structure Builder for MappingParameters
    class MappingParameters
      def self.build(input)
        data = {}
        data['JSONMappingParameters'] = Builders::JSONMappingParameters.build(input[:json_mapping_parameters]) unless input[:json_mapping_parameters].nil?
        data['CSVMappingParameters'] = Builders::CSVMappingParameters.build(input[:csv_mapping_parameters]) unless input[:csv_mapping_parameters].nil?
        data
      end
    end

    # Structure Builder for CSVMappingParameters
    class CSVMappingParameters
      def self.build(input)
        data = {}
        data['RecordRowDelimiter'] = input[:record_row_delimiter] unless input[:record_row_delimiter].nil?
        data['RecordColumnDelimiter'] = input[:record_column_delimiter] unless input[:record_column_delimiter].nil?
        data
      end
    end

    # Structure Builder for JSONMappingParameters
    class JSONMappingParameters
      def self.build(input)
        data = {}
        data['RecordRowPath'] = input[:record_row_path] unless input[:record_row_path].nil?
        data
      end
    end

    # Structure Builder for InputParallelism
    class InputParallelism
      def self.build(input)
        data = {}
        data['Count'] = input[:count] unless input[:count].nil?
        data
      end
    end

    # Structure Builder for KinesisFirehoseInput
    class KinesisFirehoseInput
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamsInput
    class KinesisStreamsInput
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for InputProcessingConfiguration
    class InputProcessingConfiguration
      def self.build(input)
        data = {}
        data['InputLambdaProcessor'] = Builders::InputLambdaProcessor.build(input[:input_lambda_processor]) unless input[:input_lambda_processor].nil?
        data
      end
    end

    # Structure Builder for InputLambdaProcessor
    class InputLambdaProcessor
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Operation Builder for AddApplicationInputProcessingConfiguration
    class AddApplicationInputProcessingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.AddApplicationInputProcessingConfiguration'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['InputId'] = input[:input_id] unless input[:input_id].nil?
        data['InputProcessingConfiguration'] = Builders::InputProcessingConfiguration.build(input[:input_processing_configuration]) unless input[:input_processing_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AddApplicationOutput
    class AddApplicationOutput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.AddApplicationOutput'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['Output'] = Builders::Output.build(input[:output]) unless input[:output].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Output
    class Output
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['KinesisStreamsOutput'] = Builders::KinesisStreamsOutput.build(input[:kinesis_streams_output]) unless input[:kinesis_streams_output].nil?
        data['KinesisFirehoseOutput'] = Builders::KinesisFirehoseOutput.build(input[:kinesis_firehose_output]) unless input[:kinesis_firehose_output].nil?
        data['LambdaOutput'] = Builders::LambdaOutput.build(input[:lambda_output]) unless input[:lambda_output].nil?
        data['DestinationSchema'] = Builders::DestinationSchema.build(input[:destination_schema]) unless input[:destination_schema].nil?
        data
      end
    end

    # Structure Builder for DestinationSchema
    class DestinationSchema
      def self.build(input)
        data = {}
        data['RecordFormatType'] = input[:record_format_type] unless input[:record_format_type].nil?
        data
      end
    end

    # Structure Builder for LambdaOutput
    class LambdaOutput
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for KinesisFirehoseOutput
    class KinesisFirehoseOutput
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamsOutput
    class KinesisStreamsOutput
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Operation Builder for AddApplicationReferenceDataSource
    class AddApplicationReferenceDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.AddApplicationReferenceDataSource'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['ReferenceDataSource'] = Builders::ReferenceDataSource.build(input[:reference_data_source]) unless input[:reference_data_source].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReferenceDataSource
    class ReferenceDataSource
      def self.build(input)
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['S3ReferenceDataSource'] = Builders::S3ReferenceDataSource.build(input[:s3_reference_data_source]) unless input[:s3_reference_data_source].nil?
        data['ReferenceSchema'] = Builders::SourceSchema.build(input[:reference_schema]) unless input[:reference_schema].nil?
        data
      end
    end

    # Structure Builder for S3ReferenceDataSource
    class S3ReferenceDataSource
      def self.build(input)
        data = {}
        data['BucketARN'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['FileKey'] = input[:file_key] unless input[:file_key].nil?
        data['ReferenceRoleARN'] = input[:reference_role_arn] unless input[:reference_role_arn].nil?
        data
      end
    end

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.CreateApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['ApplicationDescription'] = input[:application_description] unless input[:application_description].nil?
        data['Inputs'] = Builders::Inputs.build(input[:inputs]) unless input[:inputs].nil?
        data['Outputs'] = Builders::Outputs.build(input[:outputs]) unless input[:outputs].nil?
        data['CloudWatchLoggingOptions'] = Builders::CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data['ApplicationCode'] = input[:application_code] unless input[:application_code].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for CloudWatchLoggingOptions
    class CloudWatchLoggingOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CloudWatchLoggingOption.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for Outputs
    class Outputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Output.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for Inputs
    class Inputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Input.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.DeleteApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CreateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:create_timestamp]).to_i unless input[:create_timestamp].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationCloudWatchLoggingOption
    class DeleteApplicationCloudWatchLoggingOption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.DeleteApplicationCloudWatchLoggingOption'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['CloudWatchLoggingOptionId'] = input[:cloud_watch_logging_option_id] unless input[:cloud_watch_logging_option_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationInputProcessingConfiguration
    class DeleteApplicationInputProcessingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.DeleteApplicationInputProcessingConfiguration'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['InputId'] = input[:input_id] unless input[:input_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationOutput
    class DeleteApplicationOutput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.DeleteApplicationOutput'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['OutputId'] = input[:output_id] unless input[:output_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationReferenceDataSource
    class DeleteApplicationReferenceDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.DeleteApplicationReferenceDataSource'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['ReferenceId'] = input[:reference_id] unless input[:reference_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApplication
    class DescribeApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.DescribeApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DiscoverInputSchema
    class DiscoverInputSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.DiscoverInputSchema'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['InputStartingPositionConfiguration'] = Builders::InputStartingPositionConfiguration.build(input[:input_starting_position_configuration]) unless input[:input_starting_position_configuration].nil?
        data['S3Configuration'] = Builders::S3Configuration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data['InputProcessingConfiguration'] = Builders::InputProcessingConfiguration.build(input[:input_processing_configuration]) unless input[:input_processing_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for S3Configuration
    class S3Configuration
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['BucketARN'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['FileKey'] = input[:file_key] unless input[:file_key].nil?
        data
      end
    end

    # Structure Builder for InputStartingPositionConfiguration
    class InputStartingPositionConfiguration
      def self.build(input)
        data = {}
        data['InputStartingPosition'] = input[:input_starting_position] unless input[:input_starting_position].nil?
        data
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.ListApplications'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ExclusiveStartApplicationName'] = input[:exclusive_start_application_name] unless input[:exclusive_start_application_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartApplication
    class StartApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.StartApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['InputConfigurations'] = Builders::InputConfigurations.build(input[:input_configurations]) unless input[:input_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InputConfigurations
    class InputConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputConfiguration
    class InputConfiguration
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['InputStartingPositionConfiguration'] = Builders::InputStartingPositionConfiguration.build(input[:input_starting_position_configuration]) unless input[:input_starting_position_configuration].nil?
        data
      end
    end

    # Operation Builder for StopApplication
    class StopApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.StopApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20150814.UpdateApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['ApplicationUpdate'] = Builders::ApplicationUpdate.build(input[:application_update]) unless input[:application_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ApplicationUpdate
    class ApplicationUpdate
      def self.build(input)
        data = {}
        data['InputUpdates'] = Builders::InputUpdates.build(input[:input_updates]) unless input[:input_updates].nil?
        data['ApplicationCodeUpdate'] = input[:application_code_update] unless input[:application_code_update].nil?
        data['OutputUpdates'] = Builders::OutputUpdates.build(input[:output_updates]) unless input[:output_updates].nil?
        data['ReferenceDataSourceUpdates'] = Builders::ReferenceDataSourceUpdates.build(input[:reference_data_source_updates]) unless input[:reference_data_source_updates].nil?
        data['CloudWatchLoggingOptionUpdates'] = Builders::CloudWatchLoggingOptionUpdates.build(input[:cloud_watch_logging_option_updates]) unless input[:cloud_watch_logging_option_updates].nil?
        data
      end
    end

    # List Builder for CloudWatchLoggingOptionUpdates
    class CloudWatchLoggingOptionUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CloudWatchLoggingOptionUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CloudWatchLoggingOptionUpdate
    class CloudWatchLoggingOptionUpdate
      def self.build(input)
        data = {}
        data['CloudWatchLoggingOptionId'] = input[:cloud_watch_logging_option_id] unless input[:cloud_watch_logging_option_id].nil?
        data['LogStreamARNUpdate'] = input[:log_stream_arn_update] unless input[:log_stream_arn_update].nil?
        data['RoleARNUpdate'] = input[:role_arn_update] unless input[:role_arn_update].nil?
        data
      end
    end

    # List Builder for ReferenceDataSourceUpdates
    class ReferenceDataSourceUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReferenceDataSourceUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReferenceDataSourceUpdate
    class ReferenceDataSourceUpdate
      def self.build(input)
        data = {}
        data['ReferenceId'] = input[:reference_id] unless input[:reference_id].nil?
        data['TableNameUpdate'] = input[:table_name_update] unless input[:table_name_update].nil?
        data['S3ReferenceDataSourceUpdate'] = Builders::S3ReferenceDataSourceUpdate.build(input[:s3_reference_data_source_update]) unless input[:s3_reference_data_source_update].nil?
        data['ReferenceSchemaUpdate'] = Builders::SourceSchema.build(input[:reference_schema_update]) unless input[:reference_schema_update].nil?
        data
      end
    end

    # Structure Builder for S3ReferenceDataSourceUpdate
    class S3ReferenceDataSourceUpdate
      def self.build(input)
        data = {}
        data['BucketARNUpdate'] = input[:bucket_arn_update] unless input[:bucket_arn_update].nil?
        data['FileKeyUpdate'] = input[:file_key_update] unless input[:file_key_update].nil?
        data['ReferenceRoleARNUpdate'] = input[:reference_role_arn_update] unless input[:reference_role_arn_update].nil?
        data
      end
    end

    # List Builder for OutputUpdates
    class OutputUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OutputUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputUpdate
    class OutputUpdate
      def self.build(input)
        data = {}
        data['OutputId'] = input[:output_id] unless input[:output_id].nil?
        data['NameUpdate'] = input[:name_update] unless input[:name_update].nil?
        data['KinesisStreamsOutputUpdate'] = Builders::KinesisStreamsOutputUpdate.build(input[:kinesis_streams_output_update]) unless input[:kinesis_streams_output_update].nil?
        data['KinesisFirehoseOutputUpdate'] = Builders::KinesisFirehoseOutputUpdate.build(input[:kinesis_firehose_output_update]) unless input[:kinesis_firehose_output_update].nil?
        data['LambdaOutputUpdate'] = Builders::LambdaOutputUpdate.build(input[:lambda_output_update]) unless input[:lambda_output_update].nil?
        data['DestinationSchemaUpdate'] = Builders::DestinationSchema.build(input[:destination_schema_update]) unless input[:destination_schema_update].nil?
        data
      end
    end

    # Structure Builder for LambdaOutputUpdate
    class LambdaOutputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data['RoleARNUpdate'] = input[:role_arn_update] unless input[:role_arn_update].nil?
        data
      end
    end

    # Structure Builder for KinesisFirehoseOutputUpdate
    class KinesisFirehoseOutputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data['RoleARNUpdate'] = input[:role_arn_update] unless input[:role_arn_update].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamsOutputUpdate
    class KinesisStreamsOutputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data['RoleARNUpdate'] = input[:role_arn_update] unless input[:role_arn_update].nil?
        data
      end
    end

    # List Builder for InputUpdates
    class InputUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputUpdate
    class InputUpdate
      def self.build(input)
        data = {}
        data['InputId'] = input[:input_id] unless input[:input_id].nil?
        data['NamePrefixUpdate'] = input[:name_prefix_update] unless input[:name_prefix_update].nil?
        data['InputProcessingConfigurationUpdate'] = Builders::InputProcessingConfigurationUpdate.build(input[:input_processing_configuration_update]) unless input[:input_processing_configuration_update].nil?
        data['KinesisStreamsInputUpdate'] = Builders::KinesisStreamsInputUpdate.build(input[:kinesis_streams_input_update]) unless input[:kinesis_streams_input_update].nil?
        data['KinesisFirehoseInputUpdate'] = Builders::KinesisFirehoseInputUpdate.build(input[:kinesis_firehose_input_update]) unless input[:kinesis_firehose_input_update].nil?
        data['InputSchemaUpdate'] = Builders::InputSchemaUpdate.build(input[:input_schema_update]) unless input[:input_schema_update].nil?
        data['InputParallelismUpdate'] = Builders::InputParallelismUpdate.build(input[:input_parallelism_update]) unless input[:input_parallelism_update].nil?
        data
      end
    end

    # Structure Builder for InputParallelismUpdate
    class InputParallelismUpdate
      def self.build(input)
        data = {}
        data['CountUpdate'] = input[:count_update] unless input[:count_update].nil?
        data
      end
    end

    # Structure Builder for InputSchemaUpdate
    class InputSchemaUpdate
      def self.build(input)
        data = {}
        data['RecordFormatUpdate'] = Builders::RecordFormat.build(input[:record_format_update]) unless input[:record_format_update].nil?
        data['RecordEncodingUpdate'] = input[:record_encoding_update] unless input[:record_encoding_update].nil?
        data['RecordColumnUpdates'] = Builders::RecordColumns.build(input[:record_column_updates]) unless input[:record_column_updates].nil?
        data
      end
    end

    # Structure Builder for KinesisFirehoseInputUpdate
    class KinesisFirehoseInputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data['RoleARNUpdate'] = input[:role_arn_update] unless input[:role_arn_update].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamsInputUpdate
    class KinesisStreamsInputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data['RoleARNUpdate'] = input[:role_arn_update] unless input[:role_arn_update].nil?
        data
      end
    end

    # Structure Builder for InputProcessingConfigurationUpdate
    class InputProcessingConfigurationUpdate
      def self.build(input)
        data = {}
        data['InputLambdaProcessorUpdate'] = Builders::InputLambdaProcessorUpdate.build(input[:input_lambda_processor_update]) unless input[:input_lambda_processor_update].nil?
        data
      end
    end

    # Structure Builder for InputLambdaProcessorUpdate
    class InputLambdaProcessorUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data['RoleARNUpdate'] = input[:role_arn_update] unless input[:role_arn_update].nil?
        data
      end
    end
  end
end
