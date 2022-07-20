# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::KinesisAnalyticsV2
  module Builders

    # Operation Builder for AddApplicationCloudWatchLoggingOption
    class AddApplicationCloudWatchLoggingOption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.AddApplicationCloudWatchLoggingOption'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['CloudWatchLoggingOption'] = CloudWatchLoggingOption.build(input[:cloud_watch_logging_option]) unless input[:cloud_watch_logging_option].nil?
        data['ConditionalToken'] = input[:conditional_token] unless input[:conditional_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CloudWatchLoggingOption
    class CloudWatchLoggingOption
      def self.build(input)
        data = {}
        data['LogStreamARN'] = input[:log_stream_arn] unless input[:log_stream_arn].nil?
        data
      end
    end

    # Operation Builder for AddApplicationInput
    class AddApplicationInput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.AddApplicationInput'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['Input'] = Input.build(input[:input]) unless input[:input].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Input
    class Input
      def self.build(input)
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['InputProcessingConfiguration'] = InputProcessingConfiguration.build(input[:input_processing_configuration]) unless input[:input_processing_configuration].nil?
        data['KinesisStreamsInput'] = KinesisStreamsInput.build(input[:kinesis_streams_input]) unless input[:kinesis_streams_input].nil?
        data['KinesisFirehoseInput'] = KinesisFirehoseInput.build(input[:kinesis_firehose_input]) unless input[:kinesis_firehose_input].nil?
        data['InputParallelism'] = InputParallelism.build(input[:input_parallelism]) unless input[:input_parallelism].nil?
        data['InputSchema'] = SourceSchema.build(input[:input_schema]) unless input[:input_schema].nil?
        data
      end
    end

    # Structure Builder for SourceSchema
    class SourceSchema
      def self.build(input)
        data = {}
        data['RecordFormat'] = RecordFormat.build(input[:record_format]) unless input[:record_format].nil?
        data['RecordEncoding'] = input[:record_encoding] unless input[:record_encoding].nil?
        data['RecordColumns'] = RecordColumns.build(input[:record_columns]) unless input[:record_columns].nil?
        data
      end
    end

    # List Builder for RecordColumns
    class RecordColumns
      def self.build(input)
        data = []
        input.each do |element|
          data << RecordColumn.build(element) unless element.nil?
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
        data['MappingParameters'] = MappingParameters.build(input[:mapping_parameters]) unless input[:mapping_parameters].nil?
        data
      end
    end

    # Structure Builder for MappingParameters
    class MappingParameters
      def self.build(input)
        data = {}
        data['JSONMappingParameters'] = JSONMappingParameters.build(input[:json_mapping_parameters]) unless input[:json_mapping_parameters].nil?
        data['CSVMappingParameters'] = CSVMappingParameters.build(input[:csv_mapping_parameters]) unless input[:csv_mapping_parameters].nil?
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
        data
      end
    end

    # Structure Builder for KinesisStreamsInput
    class KinesisStreamsInput
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Structure Builder for InputProcessingConfiguration
    class InputProcessingConfiguration
      def self.build(input)
        data = {}
        data['InputLambdaProcessor'] = InputLambdaProcessor.build(input[:input_lambda_processor]) unless input[:input_lambda_processor].nil?
        data
      end
    end

    # Structure Builder for InputLambdaProcessor
    class InputLambdaProcessor
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Operation Builder for AddApplicationInputProcessingConfiguration
    class AddApplicationInputProcessingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.AddApplicationInputProcessingConfiguration'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['InputId'] = input[:input_id] unless input[:input_id].nil?
        data['InputProcessingConfiguration'] = InputProcessingConfiguration.build(input[:input_processing_configuration]) unless input[:input_processing_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AddApplicationOutput
    class AddApplicationOutput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.AddApplicationOutput'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['Output'] = Output.build(input[:output]) unless input[:output].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Output
    class Output
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['KinesisStreamsOutput'] = KinesisStreamsOutput.build(input[:kinesis_streams_output]) unless input[:kinesis_streams_output].nil?
        data['KinesisFirehoseOutput'] = KinesisFirehoseOutput.build(input[:kinesis_firehose_output]) unless input[:kinesis_firehose_output].nil?
        data['LambdaOutput'] = LambdaOutput.build(input[:lambda_output]) unless input[:lambda_output].nil?
        data['DestinationSchema'] = DestinationSchema.build(input[:destination_schema]) unless input[:destination_schema].nil?
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
        data
      end
    end

    # Structure Builder for KinesisFirehoseOutput
    class KinesisFirehoseOutput
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamsOutput
    class KinesisStreamsOutput
      def self.build(input)
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Operation Builder for AddApplicationReferenceDataSource
    class AddApplicationReferenceDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.AddApplicationReferenceDataSource'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['ReferenceDataSource'] = ReferenceDataSource.build(input[:reference_data_source]) unless input[:reference_data_source].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReferenceDataSource
    class ReferenceDataSource
      def self.build(input)
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['S3ReferenceDataSource'] = S3ReferenceDataSource.build(input[:s3_reference_data_source]) unless input[:s3_reference_data_source].nil?
        data['ReferenceSchema'] = SourceSchema.build(input[:reference_schema]) unless input[:reference_schema].nil?
        data
      end
    end

    # Structure Builder for S3ReferenceDataSource
    class S3ReferenceDataSource
      def self.build(input)
        data = {}
        data['BucketARN'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['FileKey'] = input[:file_key] unless input[:file_key].nil?
        data
      end
    end

    # Operation Builder for AddApplicationVpcConfiguration
    class AddApplicationVpcConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.AddApplicationVpcConfiguration'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['VpcConfiguration'] = VpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data['ConditionalToken'] = input[:conditional_token] unless input[:conditional_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VpcConfiguration
    class VpcConfiguration
      def self.build(input)
        data = {}
        data['SubnetIds'] = SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.CreateApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['ApplicationDescription'] = input[:application_description] unless input[:application_description].nil?
        data['RuntimeEnvironment'] = input[:runtime_environment] unless input[:runtime_environment].nil?
        data['ServiceExecutionRole'] = input[:service_execution_role] unless input[:service_execution_role].nil?
        data['ApplicationConfiguration'] = ApplicationConfiguration.build(input[:application_configuration]) unless input[:application_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['ApplicationMode'] = input[:application_mode] unless input[:application_mode].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
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
          data << CloudWatchLoggingOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ApplicationConfiguration
    class ApplicationConfiguration
      def self.build(input)
        data = {}
        data['SqlApplicationConfiguration'] = SqlApplicationConfiguration.build(input[:sql_application_configuration]) unless input[:sql_application_configuration].nil?
        data['FlinkApplicationConfiguration'] = FlinkApplicationConfiguration.build(input[:flink_application_configuration]) unless input[:flink_application_configuration].nil?
        data['EnvironmentProperties'] = EnvironmentProperties.build(input[:environment_properties]) unless input[:environment_properties].nil?
        data['ApplicationCodeConfiguration'] = ApplicationCodeConfiguration.build(input[:application_code_configuration]) unless input[:application_code_configuration].nil?
        data['ApplicationSnapshotConfiguration'] = ApplicationSnapshotConfiguration.build(input[:application_snapshot_configuration]) unless input[:application_snapshot_configuration].nil?
        data['VpcConfigurations'] = VpcConfigurations.build(input[:vpc_configurations]) unless input[:vpc_configurations].nil?
        data['ZeppelinApplicationConfiguration'] = ZeppelinApplicationConfiguration.build(input[:zeppelin_application_configuration]) unless input[:zeppelin_application_configuration].nil?
        data
      end
    end

    # Structure Builder for ZeppelinApplicationConfiguration
    class ZeppelinApplicationConfiguration
      def self.build(input)
        data = {}
        data['MonitoringConfiguration'] = ZeppelinMonitoringConfiguration.build(input[:monitoring_configuration]) unless input[:monitoring_configuration].nil?
        data['CatalogConfiguration'] = CatalogConfiguration.build(input[:catalog_configuration]) unless input[:catalog_configuration].nil?
        data['DeployAsApplicationConfiguration'] = DeployAsApplicationConfiguration.build(input[:deploy_as_application_configuration]) unless input[:deploy_as_application_configuration].nil?
        data['CustomArtifactsConfiguration'] = CustomArtifactsConfigurationList.build(input[:custom_artifacts_configuration]) unless input[:custom_artifacts_configuration].nil?
        data
      end
    end

    # List Builder for CustomArtifactsConfigurationList
    class CustomArtifactsConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << CustomArtifactConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomArtifactConfiguration
    class CustomArtifactConfiguration
      def self.build(input)
        data = {}
        data['ArtifactType'] = input[:artifact_type] unless input[:artifact_type].nil?
        data['S3ContentLocation'] = S3ContentLocation.build(input[:s3_content_location]) unless input[:s3_content_location].nil?
        data['MavenReference'] = MavenReference.build(input[:maven_reference]) unless input[:maven_reference].nil?
        data
      end
    end

    # Structure Builder for MavenReference
    class MavenReference
      def self.build(input)
        data = {}
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['ArtifactId'] = input[:artifact_id] unless input[:artifact_id].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Structure Builder for S3ContentLocation
    class S3ContentLocation
      def self.build(input)
        data = {}
        data['BucketARN'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['FileKey'] = input[:file_key] unless input[:file_key].nil?
        data['ObjectVersion'] = input[:object_version] unless input[:object_version].nil?
        data
      end
    end

    # Structure Builder for DeployAsApplicationConfiguration
    class DeployAsApplicationConfiguration
      def self.build(input)
        data = {}
        data['S3ContentLocation'] = S3ContentBaseLocation.build(input[:s3_content_location]) unless input[:s3_content_location].nil?
        data
      end
    end

    # Structure Builder for S3ContentBaseLocation
    class S3ContentBaseLocation
      def self.build(input)
        data = {}
        data['BucketARN'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['BasePath'] = input[:base_path] unless input[:base_path].nil?
        data
      end
    end

    # Structure Builder for CatalogConfiguration
    class CatalogConfiguration
      def self.build(input)
        data = {}
        data['GlueDataCatalogConfiguration'] = GlueDataCatalogConfiguration.build(input[:glue_data_catalog_configuration]) unless input[:glue_data_catalog_configuration].nil?
        data
      end
    end

    # Structure Builder for GlueDataCatalogConfiguration
    class GlueDataCatalogConfiguration
      def self.build(input)
        data = {}
        data['DatabaseARN'] = input[:database_arn] unless input[:database_arn].nil?
        data
      end
    end

    # Structure Builder for ZeppelinMonitoringConfiguration
    class ZeppelinMonitoringConfiguration
      def self.build(input)
        data = {}
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        data
      end
    end

    # List Builder for VpcConfigurations
    class VpcConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << VpcConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ApplicationSnapshotConfiguration
    class ApplicationSnapshotConfiguration
      def self.build(input)
        data = {}
        data['SnapshotsEnabled'] = input[:snapshots_enabled] unless input[:snapshots_enabled].nil?
        data
      end
    end

    # Structure Builder for ApplicationCodeConfiguration
    class ApplicationCodeConfiguration
      def self.build(input)
        data = {}
        data['CodeContent'] = CodeContent.build(input[:code_content]) unless input[:code_content].nil?
        data['CodeContentType'] = input[:code_content_type] unless input[:code_content_type].nil?
        data
      end
    end

    # Structure Builder for CodeContent
    class CodeContent
      def self.build(input)
        data = {}
        data['TextContent'] = input[:text_content] unless input[:text_content].nil?
        data['ZipFileContent'] = ::Base64::encode64(input[:zip_file_content]).strip unless input[:zip_file_content].nil?
        data['S3ContentLocation'] = S3ContentLocation.build(input[:s3_content_location]) unless input[:s3_content_location].nil?
        data
      end
    end

    # Structure Builder for EnvironmentProperties
    class EnvironmentProperties
      def self.build(input)
        data = {}
        data['PropertyGroups'] = PropertyGroups.build(input[:property_groups]) unless input[:property_groups].nil?
        data
      end
    end

    # List Builder for PropertyGroups
    class PropertyGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << PropertyGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PropertyGroup
    class PropertyGroup
      def self.build(input)
        data = {}
        data['PropertyGroupId'] = input[:property_group_id] unless input[:property_group_id].nil?
        data['PropertyMap'] = PropertyMap.build(input[:property_map]) unless input[:property_map].nil?
        data
      end
    end

    # Map Builder for PropertyMap
    class PropertyMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for FlinkApplicationConfiguration
    class FlinkApplicationConfiguration
      def self.build(input)
        data = {}
        data['CheckpointConfiguration'] = CheckpointConfiguration.build(input[:checkpoint_configuration]) unless input[:checkpoint_configuration].nil?
        data['MonitoringConfiguration'] = MonitoringConfiguration.build(input[:monitoring_configuration]) unless input[:monitoring_configuration].nil?
        data['ParallelismConfiguration'] = ParallelismConfiguration.build(input[:parallelism_configuration]) unless input[:parallelism_configuration].nil?
        data
      end
    end

    # Structure Builder for ParallelismConfiguration
    class ParallelismConfiguration
      def self.build(input)
        data = {}
        data['ConfigurationType'] = input[:configuration_type] unless input[:configuration_type].nil?
        data['Parallelism'] = input[:parallelism] unless input[:parallelism].nil?
        data['ParallelismPerKPU'] = input[:parallelism_per_kpu] unless input[:parallelism_per_kpu].nil?
        data['AutoScalingEnabled'] = input[:auto_scaling_enabled] unless input[:auto_scaling_enabled].nil?
        data
      end
    end

    # Structure Builder for MonitoringConfiguration
    class MonitoringConfiguration
      def self.build(input)
        data = {}
        data['ConfigurationType'] = input[:configuration_type] unless input[:configuration_type].nil?
        data['MetricsLevel'] = input[:metrics_level] unless input[:metrics_level].nil?
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        data
      end
    end

    # Structure Builder for CheckpointConfiguration
    class CheckpointConfiguration
      def self.build(input)
        data = {}
        data['ConfigurationType'] = input[:configuration_type] unless input[:configuration_type].nil?
        data['CheckpointingEnabled'] = input[:checkpointing_enabled] unless input[:checkpointing_enabled].nil?
        data['CheckpointInterval'] = input[:checkpoint_interval] unless input[:checkpoint_interval].nil?
        data['MinPauseBetweenCheckpoints'] = input[:min_pause_between_checkpoints] unless input[:min_pause_between_checkpoints].nil?
        data
      end
    end

    # Structure Builder for SqlApplicationConfiguration
    class SqlApplicationConfiguration
      def self.build(input)
        data = {}
        data['Inputs'] = Inputs.build(input[:inputs]) unless input[:inputs].nil?
        data['Outputs'] = Outputs.build(input[:outputs]) unless input[:outputs].nil?
        data['ReferenceDataSources'] = ReferenceDataSources.build(input[:reference_data_sources]) unless input[:reference_data_sources].nil?
        data
      end
    end

    # List Builder for ReferenceDataSources
    class ReferenceDataSources
      def self.build(input)
        data = []
        input.each do |element|
          data << ReferenceDataSource.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for Outputs
    class Outputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Output.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for Inputs
    class Inputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Input.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateApplicationPresignedUrl
    class CreateApplicationPresignedUrl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.CreateApplicationPresignedUrl'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['UrlType'] = input[:url_type] unless input[:url_type].nil?
        data['SessionExpirationDurationInSeconds'] = input[:session_expiration_duration_in_seconds] unless input[:session_expiration_duration_in_seconds].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateApplicationSnapshot
    class CreateApplicationSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.CreateApplicationSnapshot'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['SnapshotName'] = input[:snapshot_name] unless input[:snapshot_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DeleteApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CreateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:create_timestamp]).to_i unless input[:create_timestamp].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationCloudWatchLoggingOption
    class DeleteApplicationCloudWatchLoggingOption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DeleteApplicationCloudWatchLoggingOption'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['CloudWatchLoggingOptionId'] = input[:cloud_watch_logging_option_id] unless input[:cloud_watch_logging_option_id].nil?
        data['ConditionalToken'] = input[:conditional_token] unless input[:conditional_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationInputProcessingConfiguration
    class DeleteApplicationInputProcessingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DeleteApplicationInputProcessingConfiguration'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['InputId'] = input[:input_id] unless input[:input_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationOutput
    class DeleteApplicationOutput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DeleteApplicationOutput'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['OutputId'] = input[:output_id] unless input[:output_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationReferenceDataSource
    class DeleteApplicationReferenceDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DeleteApplicationReferenceDataSource'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['ReferenceId'] = input[:reference_id] unless input[:reference_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationSnapshot
    class DeleteApplicationSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DeleteApplicationSnapshot'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['SnapshotName'] = input[:snapshot_name] unless input[:snapshot_name].nil?
        data['SnapshotCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:snapshot_creation_timestamp]).to_i unless input[:snapshot_creation_timestamp].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplicationVpcConfiguration
    class DeleteApplicationVpcConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DeleteApplicationVpcConfiguration'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['VpcConfigurationId'] = input[:vpc_configuration_id] unless input[:vpc_configuration_id].nil?
        data['ConditionalToken'] = input[:conditional_token] unless input[:conditional_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApplication
    class DescribeApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DescribeApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['IncludeAdditionalDetails'] = input[:include_additional_details] unless input[:include_additional_details].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApplicationSnapshot
    class DescribeApplicationSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DescribeApplicationSnapshot'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['SnapshotName'] = input[:snapshot_name] unless input[:snapshot_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApplicationVersion
    class DescribeApplicationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DescribeApplicationVersion'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['ApplicationVersionId'] = input[:application_version_id] unless input[:application_version_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DiscoverInputSchema
    class DiscoverInputSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.DiscoverInputSchema'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['ServiceExecutionRole'] = input[:service_execution_role] unless input[:service_execution_role].nil?
        data['InputStartingPositionConfiguration'] = InputStartingPositionConfiguration.build(input[:input_starting_position_configuration]) unless input[:input_starting_position_configuration].nil?
        data['S3Configuration'] = S3Configuration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data['InputProcessingConfiguration'] = InputProcessingConfiguration.build(input[:input_processing_configuration]) unless input[:input_processing_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for S3Configuration
    class S3Configuration
      def self.build(input)
        data = {}
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

    # Operation Builder for ListApplicationSnapshots
    class ListApplicationSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.ListApplicationSnapshots'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApplicationVersions
    class ListApplicationVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.ListApplicationVersions'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.ListApplications'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RollbackApplication
    class RollbackApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.RollbackApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartApplication
    class StartApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.StartApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['RunConfiguration'] = RunConfiguration.build(input[:run_configuration]) unless input[:run_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RunConfiguration
    class RunConfiguration
      def self.build(input)
        data = {}
        data['FlinkRunConfiguration'] = FlinkRunConfiguration.build(input[:flink_run_configuration]) unless input[:flink_run_configuration].nil?
        data['SqlRunConfigurations'] = SqlRunConfigurations.build(input[:sql_run_configurations]) unless input[:sql_run_configurations].nil?
        data['ApplicationRestoreConfiguration'] = ApplicationRestoreConfiguration.build(input[:application_restore_configuration]) unless input[:application_restore_configuration].nil?
        data
      end
    end

    # Structure Builder for ApplicationRestoreConfiguration
    class ApplicationRestoreConfiguration
      def self.build(input)
        data = {}
        data['ApplicationRestoreType'] = input[:application_restore_type] unless input[:application_restore_type].nil?
        data['SnapshotName'] = input[:snapshot_name] unless input[:snapshot_name].nil?
        data
      end
    end

    # List Builder for SqlRunConfigurations
    class SqlRunConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << SqlRunConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SqlRunConfiguration
    class SqlRunConfiguration
      def self.build(input)
        data = {}
        data['InputId'] = input[:input_id] unless input[:input_id].nil?
        data['InputStartingPositionConfiguration'] = InputStartingPositionConfiguration.build(input[:input_starting_position_configuration]) unless input[:input_starting_position_configuration].nil?
        data
      end
    end

    # Structure Builder for FlinkRunConfiguration
    class FlinkRunConfiguration
      def self.build(input)
        data = {}
        data['AllowNonRestoredState'] = input[:allow_non_restored_state] unless input[:allow_non_restored_state].nil?
        data
      end
    end

    # Operation Builder for StopApplication
    class StopApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.StopApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['Force'] = input[:force] unless input[:force].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.UpdateApplication'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['CurrentApplicationVersionId'] = input[:current_application_version_id] unless input[:current_application_version_id].nil?
        data['ApplicationConfigurationUpdate'] = ApplicationConfigurationUpdate.build(input[:application_configuration_update]) unless input[:application_configuration_update].nil?
        data['ServiceExecutionRoleUpdate'] = input[:service_execution_role_update] unless input[:service_execution_role_update].nil?
        data['RunConfigurationUpdate'] = RunConfigurationUpdate.build(input[:run_configuration_update]) unless input[:run_configuration_update].nil?
        data['CloudWatchLoggingOptionUpdates'] = CloudWatchLoggingOptionUpdates.build(input[:cloud_watch_logging_option_updates]) unless input[:cloud_watch_logging_option_updates].nil?
        data['ConditionalToken'] = input[:conditional_token] unless input[:conditional_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CloudWatchLoggingOptionUpdates
    class CloudWatchLoggingOptionUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << CloudWatchLoggingOptionUpdate.build(element) unless element.nil?
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
        data
      end
    end

    # Structure Builder for RunConfigurationUpdate
    class RunConfigurationUpdate
      def self.build(input)
        data = {}
        data['FlinkRunConfiguration'] = FlinkRunConfiguration.build(input[:flink_run_configuration]) unless input[:flink_run_configuration].nil?
        data['ApplicationRestoreConfiguration'] = ApplicationRestoreConfiguration.build(input[:application_restore_configuration]) unless input[:application_restore_configuration].nil?
        data
      end
    end

    # Structure Builder for ApplicationConfigurationUpdate
    class ApplicationConfigurationUpdate
      def self.build(input)
        data = {}
        data['SqlApplicationConfigurationUpdate'] = SqlApplicationConfigurationUpdate.build(input[:sql_application_configuration_update]) unless input[:sql_application_configuration_update].nil?
        data['ApplicationCodeConfigurationUpdate'] = ApplicationCodeConfigurationUpdate.build(input[:application_code_configuration_update]) unless input[:application_code_configuration_update].nil?
        data['FlinkApplicationConfigurationUpdate'] = FlinkApplicationConfigurationUpdate.build(input[:flink_application_configuration_update]) unless input[:flink_application_configuration_update].nil?
        data['EnvironmentPropertyUpdates'] = EnvironmentPropertyUpdates.build(input[:environment_property_updates]) unless input[:environment_property_updates].nil?
        data['ApplicationSnapshotConfigurationUpdate'] = ApplicationSnapshotConfigurationUpdate.build(input[:application_snapshot_configuration_update]) unless input[:application_snapshot_configuration_update].nil?
        data['VpcConfigurationUpdates'] = VpcConfigurationUpdates.build(input[:vpc_configuration_updates]) unless input[:vpc_configuration_updates].nil?
        data['ZeppelinApplicationConfigurationUpdate'] = ZeppelinApplicationConfigurationUpdate.build(input[:zeppelin_application_configuration_update]) unless input[:zeppelin_application_configuration_update].nil?
        data
      end
    end

    # Structure Builder for ZeppelinApplicationConfigurationUpdate
    class ZeppelinApplicationConfigurationUpdate
      def self.build(input)
        data = {}
        data['MonitoringConfigurationUpdate'] = ZeppelinMonitoringConfigurationUpdate.build(input[:monitoring_configuration_update]) unless input[:monitoring_configuration_update].nil?
        data['CatalogConfigurationUpdate'] = CatalogConfigurationUpdate.build(input[:catalog_configuration_update]) unless input[:catalog_configuration_update].nil?
        data['DeployAsApplicationConfigurationUpdate'] = DeployAsApplicationConfigurationUpdate.build(input[:deploy_as_application_configuration_update]) unless input[:deploy_as_application_configuration_update].nil?
        data['CustomArtifactsConfigurationUpdate'] = CustomArtifactsConfigurationList.build(input[:custom_artifacts_configuration_update]) unless input[:custom_artifacts_configuration_update].nil?
        data
      end
    end

    # Structure Builder for DeployAsApplicationConfigurationUpdate
    class DeployAsApplicationConfigurationUpdate
      def self.build(input)
        data = {}
        data['S3ContentLocationUpdate'] = S3ContentBaseLocationUpdate.build(input[:s3_content_location_update]) unless input[:s3_content_location_update].nil?
        data
      end
    end

    # Structure Builder for S3ContentBaseLocationUpdate
    class S3ContentBaseLocationUpdate
      def self.build(input)
        data = {}
        data['BucketARNUpdate'] = input[:bucket_arn_update] unless input[:bucket_arn_update].nil?
        data['BasePathUpdate'] = input[:base_path_update] unless input[:base_path_update].nil?
        data
      end
    end

    # Structure Builder for CatalogConfigurationUpdate
    class CatalogConfigurationUpdate
      def self.build(input)
        data = {}
        data['GlueDataCatalogConfigurationUpdate'] = GlueDataCatalogConfigurationUpdate.build(input[:glue_data_catalog_configuration_update]) unless input[:glue_data_catalog_configuration_update].nil?
        data
      end
    end

    # Structure Builder for GlueDataCatalogConfigurationUpdate
    class GlueDataCatalogConfigurationUpdate
      def self.build(input)
        data = {}
        data['DatabaseARNUpdate'] = input[:database_arn_update] unless input[:database_arn_update].nil?
        data
      end
    end

    # Structure Builder for ZeppelinMonitoringConfigurationUpdate
    class ZeppelinMonitoringConfigurationUpdate
      def self.build(input)
        data = {}
        data['LogLevelUpdate'] = input[:log_level_update] unless input[:log_level_update].nil?
        data
      end
    end

    # List Builder for VpcConfigurationUpdates
    class VpcConfigurationUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << VpcConfigurationUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VpcConfigurationUpdate
    class VpcConfigurationUpdate
      def self.build(input)
        data = {}
        data['VpcConfigurationId'] = input[:vpc_configuration_id] unless input[:vpc_configuration_id].nil?
        data['SubnetIdUpdates'] = SubnetIds.build(input[:subnet_id_updates]) unless input[:subnet_id_updates].nil?
        data['SecurityGroupIdUpdates'] = SecurityGroupIds.build(input[:security_group_id_updates]) unless input[:security_group_id_updates].nil?
        data
      end
    end

    # Structure Builder for ApplicationSnapshotConfigurationUpdate
    class ApplicationSnapshotConfigurationUpdate
      def self.build(input)
        data = {}
        data['SnapshotsEnabledUpdate'] = input[:snapshots_enabled_update] unless input[:snapshots_enabled_update].nil?
        data
      end
    end

    # Structure Builder for EnvironmentPropertyUpdates
    class EnvironmentPropertyUpdates
      def self.build(input)
        data = {}
        data['PropertyGroups'] = PropertyGroups.build(input[:property_groups]) unless input[:property_groups].nil?
        data
      end
    end

    # Structure Builder for FlinkApplicationConfigurationUpdate
    class FlinkApplicationConfigurationUpdate
      def self.build(input)
        data = {}
        data['CheckpointConfigurationUpdate'] = CheckpointConfigurationUpdate.build(input[:checkpoint_configuration_update]) unless input[:checkpoint_configuration_update].nil?
        data['MonitoringConfigurationUpdate'] = MonitoringConfigurationUpdate.build(input[:monitoring_configuration_update]) unless input[:monitoring_configuration_update].nil?
        data['ParallelismConfigurationUpdate'] = ParallelismConfigurationUpdate.build(input[:parallelism_configuration_update]) unless input[:parallelism_configuration_update].nil?
        data
      end
    end

    # Structure Builder for ParallelismConfigurationUpdate
    class ParallelismConfigurationUpdate
      def self.build(input)
        data = {}
        data['ConfigurationTypeUpdate'] = input[:configuration_type_update] unless input[:configuration_type_update].nil?
        data['ParallelismUpdate'] = input[:parallelism_update] unless input[:parallelism_update].nil?
        data['ParallelismPerKPUUpdate'] = input[:parallelism_per_kpu_update] unless input[:parallelism_per_kpu_update].nil?
        data['AutoScalingEnabledUpdate'] = input[:auto_scaling_enabled_update] unless input[:auto_scaling_enabled_update].nil?
        data
      end
    end

    # Structure Builder for MonitoringConfigurationUpdate
    class MonitoringConfigurationUpdate
      def self.build(input)
        data = {}
        data['ConfigurationTypeUpdate'] = input[:configuration_type_update] unless input[:configuration_type_update].nil?
        data['MetricsLevelUpdate'] = input[:metrics_level_update] unless input[:metrics_level_update].nil?
        data['LogLevelUpdate'] = input[:log_level_update] unless input[:log_level_update].nil?
        data
      end
    end

    # Structure Builder for CheckpointConfigurationUpdate
    class CheckpointConfigurationUpdate
      def self.build(input)
        data = {}
        data['ConfigurationTypeUpdate'] = input[:configuration_type_update] unless input[:configuration_type_update].nil?
        data['CheckpointingEnabledUpdate'] = input[:checkpointing_enabled_update] unless input[:checkpointing_enabled_update].nil?
        data['CheckpointIntervalUpdate'] = input[:checkpoint_interval_update] unless input[:checkpoint_interval_update].nil?
        data['MinPauseBetweenCheckpointsUpdate'] = input[:min_pause_between_checkpoints_update] unless input[:min_pause_between_checkpoints_update].nil?
        data
      end
    end

    # Structure Builder for ApplicationCodeConfigurationUpdate
    class ApplicationCodeConfigurationUpdate
      def self.build(input)
        data = {}
        data['CodeContentTypeUpdate'] = input[:code_content_type_update] unless input[:code_content_type_update].nil?
        data['CodeContentUpdate'] = CodeContentUpdate.build(input[:code_content_update]) unless input[:code_content_update].nil?
        data
      end
    end

    # Structure Builder for CodeContentUpdate
    class CodeContentUpdate
      def self.build(input)
        data = {}
        data['TextContentUpdate'] = input[:text_content_update] unless input[:text_content_update].nil?
        data['ZipFileContentUpdate'] = ::Base64::encode64(input[:zip_file_content_update]).strip unless input[:zip_file_content_update].nil?
        data['S3ContentLocationUpdate'] = S3ContentLocationUpdate.build(input[:s3_content_location_update]) unless input[:s3_content_location_update].nil?
        data
      end
    end

    # Structure Builder for S3ContentLocationUpdate
    class S3ContentLocationUpdate
      def self.build(input)
        data = {}
        data['BucketARNUpdate'] = input[:bucket_arn_update] unless input[:bucket_arn_update].nil?
        data['FileKeyUpdate'] = input[:file_key_update] unless input[:file_key_update].nil?
        data['ObjectVersionUpdate'] = input[:object_version_update] unless input[:object_version_update].nil?
        data
      end
    end

    # Structure Builder for SqlApplicationConfigurationUpdate
    class SqlApplicationConfigurationUpdate
      def self.build(input)
        data = {}
        data['InputUpdates'] = InputUpdates.build(input[:input_updates]) unless input[:input_updates].nil?
        data['OutputUpdates'] = OutputUpdates.build(input[:output_updates]) unless input[:output_updates].nil?
        data['ReferenceDataSourceUpdates'] = ReferenceDataSourceUpdates.build(input[:reference_data_source_updates]) unless input[:reference_data_source_updates].nil?
        data
      end
    end

    # List Builder for ReferenceDataSourceUpdates
    class ReferenceDataSourceUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << ReferenceDataSourceUpdate.build(element) unless element.nil?
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
        data['S3ReferenceDataSourceUpdate'] = S3ReferenceDataSourceUpdate.build(input[:s3_reference_data_source_update]) unless input[:s3_reference_data_source_update].nil?
        data['ReferenceSchemaUpdate'] = SourceSchema.build(input[:reference_schema_update]) unless input[:reference_schema_update].nil?
        data
      end
    end

    # Structure Builder for S3ReferenceDataSourceUpdate
    class S3ReferenceDataSourceUpdate
      def self.build(input)
        data = {}
        data['BucketARNUpdate'] = input[:bucket_arn_update] unless input[:bucket_arn_update].nil?
        data['FileKeyUpdate'] = input[:file_key_update] unless input[:file_key_update].nil?
        data
      end
    end

    # List Builder for OutputUpdates
    class OutputUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << OutputUpdate.build(element) unless element.nil?
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
        data['KinesisStreamsOutputUpdate'] = KinesisStreamsOutputUpdate.build(input[:kinesis_streams_output_update]) unless input[:kinesis_streams_output_update].nil?
        data['KinesisFirehoseOutputUpdate'] = KinesisFirehoseOutputUpdate.build(input[:kinesis_firehose_output_update]) unless input[:kinesis_firehose_output_update].nil?
        data['LambdaOutputUpdate'] = LambdaOutputUpdate.build(input[:lambda_output_update]) unless input[:lambda_output_update].nil?
        data['DestinationSchemaUpdate'] = DestinationSchema.build(input[:destination_schema_update]) unless input[:destination_schema_update].nil?
        data
      end
    end

    # Structure Builder for LambdaOutputUpdate
    class LambdaOutputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data
      end
    end

    # Structure Builder for KinesisFirehoseOutputUpdate
    class KinesisFirehoseOutputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamsOutputUpdate
    class KinesisStreamsOutputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data
      end
    end

    # List Builder for InputUpdates
    class InputUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << InputUpdate.build(element) unless element.nil?
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
        data['InputProcessingConfigurationUpdate'] = InputProcessingConfigurationUpdate.build(input[:input_processing_configuration_update]) unless input[:input_processing_configuration_update].nil?
        data['KinesisStreamsInputUpdate'] = KinesisStreamsInputUpdate.build(input[:kinesis_streams_input_update]) unless input[:kinesis_streams_input_update].nil?
        data['KinesisFirehoseInputUpdate'] = KinesisFirehoseInputUpdate.build(input[:kinesis_firehose_input_update]) unless input[:kinesis_firehose_input_update].nil?
        data['InputSchemaUpdate'] = InputSchemaUpdate.build(input[:input_schema_update]) unless input[:input_schema_update].nil?
        data['InputParallelismUpdate'] = InputParallelismUpdate.build(input[:input_parallelism_update]) unless input[:input_parallelism_update].nil?
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
        data['RecordFormatUpdate'] = RecordFormat.build(input[:record_format_update]) unless input[:record_format_update].nil?
        data['RecordEncodingUpdate'] = input[:record_encoding_update] unless input[:record_encoding_update].nil?
        data['RecordColumnUpdates'] = RecordColumns.build(input[:record_column_updates]) unless input[:record_column_updates].nil?
        data
      end
    end

    # Structure Builder for KinesisFirehoseInputUpdate
    class KinesisFirehoseInputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamsInputUpdate
    class KinesisStreamsInputUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data
      end
    end

    # Structure Builder for InputProcessingConfigurationUpdate
    class InputProcessingConfigurationUpdate
      def self.build(input)
        data = {}
        data['InputLambdaProcessorUpdate'] = InputLambdaProcessorUpdate.build(input[:input_lambda_processor_update]) unless input[:input_lambda_processor_update].nil?
        data
      end
    end

    # Structure Builder for InputLambdaProcessorUpdate
    class InputLambdaProcessorUpdate
      def self.build(input)
        data = {}
        data['ResourceARNUpdate'] = input[:resource_arn_update] unless input[:resource_arn_update].nil?
        data
      end
    end

    # Operation Builder for UpdateApplicationMaintenanceConfiguration
    class UpdateApplicationMaintenanceConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'KinesisAnalytics_20180523.UpdateApplicationMaintenanceConfiguration'
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['ApplicationMaintenanceConfigurationUpdate'] = ApplicationMaintenanceConfigurationUpdate.build(input[:application_maintenance_configuration_update]) unless input[:application_maintenance_configuration_update].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ApplicationMaintenanceConfigurationUpdate
    class ApplicationMaintenanceConfigurationUpdate
      def self.build(input)
        data = {}
        data['ApplicationMaintenanceWindowStartTimeUpdate'] = input[:application_maintenance_window_start_time_update] unless input[:application_maintenance_window_start_time_update].nil?
        data
      end
    end
  end
end
