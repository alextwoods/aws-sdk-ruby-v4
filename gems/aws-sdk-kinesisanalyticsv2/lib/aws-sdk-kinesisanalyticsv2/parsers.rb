# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisAnalyticsV2
  module Parsers

    # Operation Parser for AddApplicationCloudWatchLoggingOption
    class AddApplicationCloudWatchLoggingOption
      def self.parse(http_resp)
        data = Types::AddApplicationCloudWatchLoggingOptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data.cloud_watch_logging_option_descriptions = (Parsers::CloudWatchLoggingOptionDescriptions.parse(map['CloudWatchLoggingOptionDescriptions']) unless map['CloudWatchLoggingOptionDescriptions'].nil?)
        data
      end
    end

    class CloudWatchLoggingOptionDescriptions
      def self.parse(list)
        list.map do |value|
          Parsers::CloudWatchLoggingOptionDescription.parse(value) unless value.nil?
        end
      end
    end

    class CloudWatchLoggingOptionDescription
      def self.parse(map)
        data = Types::CloudWatchLoggingOptionDescription.new
        data.cloud_watch_logging_option_id = map['CloudWatchLoggingOptionId']
        data.log_stream_arn = map['LogStreamARN']
        data.role_arn = map['RoleARN']
        return data
      end
    end

    # Error Parser for InvalidApplicationConfigurationException
    class InvalidApplicationConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidApplicationConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidArgumentException
    class InvalidArgumentException
      def self.parse(http_resp)
        data = Types::InvalidArgumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
        data
      end
    end

    # Operation Parser for AddApplicationInput
    class AddApplicationInput
      def self.parse(http_resp)
        data = Types::AddApplicationInputOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data.input_descriptions = (Parsers::InputDescriptions.parse(map['InputDescriptions']) unless map['InputDescriptions'].nil?)
        data
      end
    end

    class InputDescriptions
      def self.parse(list)
        list.map do |value|
          Parsers::InputDescription.parse(value) unless value.nil?
        end
      end
    end

    class InputDescription
      def self.parse(map)
        data = Types::InputDescription.new
        data.input_id = map['InputId']
        data.name_prefix = map['NamePrefix']
        data.in_app_stream_names = (Parsers::InAppStreamNames.parse(map['InAppStreamNames']) unless map['InAppStreamNames'].nil?)
        data.input_processing_configuration_description = (Parsers::InputProcessingConfigurationDescription.parse(map['InputProcessingConfigurationDescription']) unless map['InputProcessingConfigurationDescription'].nil?)
        data.kinesis_streams_input_description = (Parsers::KinesisStreamsInputDescription.parse(map['KinesisStreamsInputDescription']) unless map['KinesisStreamsInputDescription'].nil?)
        data.kinesis_firehose_input_description = (Parsers::KinesisFirehoseInputDescription.parse(map['KinesisFirehoseInputDescription']) unless map['KinesisFirehoseInputDescription'].nil?)
        data.input_schema = (Parsers::SourceSchema.parse(map['InputSchema']) unless map['InputSchema'].nil?)
        data.input_parallelism = (Parsers::InputParallelism.parse(map['InputParallelism']) unless map['InputParallelism'].nil?)
        data.input_starting_position_configuration = (Parsers::InputStartingPositionConfiguration.parse(map['InputStartingPositionConfiguration']) unless map['InputStartingPositionConfiguration'].nil?)
        return data
      end
    end

    class InputStartingPositionConfiguration
      def self.parse(map)
        data = Types::InputStartingPositionConfiguration.new
        data.input_starting_position = map['InputStartingPosition']
        return data
      end
    end

    class InputParallelism
      def self.parse(map)
        data = Types::InputParallelism.new
        data.count = map['Count']
        return data
      end
    end

    class SourceSchema
      def self.parse(map)
        data = Types::SourceSchema.new
        data.record_format = (Parsers::RecordFormat.parse(map['RecordFormat']) unless map['RecordFormat'].nil?)
        data.record_encoding = map['RecordEncoding']
        data.record_columns = (Parsers::RecordColumns.parse(map['RecordColumns']) unless map['RecordColumns'].nil?)
        return data
      end
    end

    class RecordColumns
      def self.parse(list)
        list.map do |value|
          Parsers::RecordColumn.parse(value) unless value.nil?
        end
      end
    end

    class RecordColumn
      def self.parse(map)
        data = Types::RecordColumn.new
        data.name = map['Name']
        data.mapping = map['Mapping']
        data.sql_type = map['SqlType']
        return data
      end
    end

    class RecordFormat
      def self.parse(map)
        data = Types::RecordFormat.new
        data.record_format_type = map['RecordFormatType']
        data.mapping_parameters = (Parsers::MappingParameters.parse(map['MappingParameters']) unless map['MappingParameters'].nil?)
        return data
      end
    end

    class MappingParameters
      def self.parse(map)
        data = Types::MappingParameters.new
        data.json_mapping_parameters = (Parsers::JSONMappingParameters.parse(map['JSONMappingParameters']) unless map['JSONMappingParameters'].nil?)
        data.csv_mapping_parameters = (Parsers::CSVMappingParameters.parse(map['CSVMappingParameters']) unless map['CSVMappingParameters'].nil?)
        return data
      end
    end

    class CSVMappingParameters
      def self.parse(map)
        data = Types::CSVMappingParameters.new
        data.record_row_delimiter = map['RecordRowDelimiter']
        data.record_column_delimiter = map['RecordColumnDelimiter']
        return data
      end
    end

    class JSONMappingParameters
      def self.parse(map)
        data = Types::JSONMappingParameters.new
        data.record_row_path = map['RecordRowPath']
        return data
      end
    end

    class KinesisFirehoseInputDescription
      def self.parse(map)
        data = Types::KinesisFirehoseInputDescription.new
        data.resource_arn = map['ResourceARN']
        data.role_arn = map['RoleARN']
        return data
      end
    end

    class KinesisStreamsInputDescription
      def self.parse(map)
        data = Types::KinesisStreamsInputDescription.new
        data.resource_arn = map['ResourceARN']
        data.role_arn = map['RoleARN']
        return data
      end
    end

    class InputProcessingConfigurationDescription
      def self.parse(map)
        data = Types::InputProcessingConfigurationDescription.new
        data.input_lambda_processor_description = (Parsers::InputLambdaProcessorDescription.parse(map['InputLambdaProcessorDescription']) unless map['InputLambdaProcessorDescription'].nil?)
        return data
      end
    end

    class InputLambdaProcessorDescription
      def self.parse(map)
        data = Types::InputLambdaProcessorDescription.new
        data.resource_arn = map['ResourceARN']
        data.role_arn = map['RoleARN']
        return data
      end
    end

    class InAppStreamNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for CodeValidationException
    class CodeValidationException
      def self.parse(http_resp)
        data = Types::CodeValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AddApplicationInputProcessingConfiguration
    class AddApplicationInputProcessingConfiguration
      def self.parse(http_resp)
        data = Types::AddApplicationInputProcessingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data.input_id = map['InputId']
        data.input_processing_configuration_description = (Parsers::InputProcessingConfigurationDescription.parse(map['InputProcessingConfigurationDescription']) unless map['InputProcessingConfigurationDescription'].nil?)
        data
      end
    end

    # Operation Parser for AddApplicationOutput
    class AddApplicationOutput
      def self.parse(http_resp)
        data = Types::AddApplicationOutputOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data.output_descriptions = (Parsers::OutputDescriptions.parse(map['OutputDescriptions']) unless map['OutputDescriptions'].nil?)
        data
      end
    end

    class OutputDescriptions
      def self.parse(list)
        list.map do |value|
          Parsers::OutputDescription.parse(value) unless value.nil?
        end
      end
    end

    class OutputDescription
      def self.parse(map)
        data = Types::OutputDescription.new
        data.output_id = map['OutputId']
        data.name = map['Name']
        data.kinesis_streams_output_description = (Parsers::KinesisStreamsOutputDescription.parse(map['KinesisStreamsOutputDescription']) unless map['KinesisStreamsOutputDescription'].nil?)
        data.kinesis_firehose_output_description = (Parsers::KinesisFirehoseOutputDescription.parse(map['KinesisFirehoseOutputDescription']) unless map['KinesisFirehoseOutputDescription'].nil?)
        data.lambda_output_description = (Parsers::LambdaOutputDescription.parse(map['LambdaOutputDescription']) unless map['LambdaOutputDescription'].nil?)
        data.destination_schema = (Parsers::DestinationSchema.parse(map['DestinationSchema']) unless map['DestinationSchema'].nil?)
        return data
      end
    end

    class DestinationSchema
      def self.parse(map)
        data = Types::DestinationSchema.new
        data.record_format_type = map['RecordFormatType']
        return data
      end
    end

    class LambdaOutputDescription
      def self.parse(map)
        data = Types::LambdaOutputDescription.new
        data.resource_arn = map['ResourceARN']
        data.role_arn = map['RoleARN']
        return data
      end
    end

    class KinesisFirehoseOutputDescription
      def self.parse(map)
        data = Types::KinesisFirehoseOutputDescription.new
        data.resource_arn = map['ResourceARN']
        data.role_arn = map['RoleARN']
        return data
      end
    end

    class KinesisStreamsOutputDescription
      def self.parse(map)
        data = Types::KinesisStreamsOutputDescription.new
        data.resource_arn = map['ResourceARN']
        data.role_arn = map['RoleARN']
        return data
      end
    end

    # Operation Parser for AddApplicationReferenceDataSource
    class AddApplicationReferenceDataSource
      def self.parse(http_resp)
        data = Types::AddApplicationReferenceDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data.reference_data_source_descriptions = (Parsers::ReferenceDataSourceDescriptions.parse(map['ReferenceDataSourceDescriptions']) unless map['ReferenceDataSourceDescriptions'].nil?)
        data
      end
    end

    class ReferenceDataSourceDescriptions
      def self.parse(list)
        list.map do |value|
          Parsers::ReferenceDataSourceDescription.parse(value) unless value.nil?
        end
      end
    end

    class ReferenceDataSourceDescription
      def self.parse(map)
        data = Types::ReferenceDataSourceDescription.new
        data.reference_id = map['ReferenceId']
        data.table_name = map['TableName']
        data.s3_reference_data_source_description = (Parsers::S3ReferenceDataSourceDescription.parse(map['S3ReferenceDataSourceDescription']) unless map['S3ReferenceDataSourceDescription'].nil?)
        data.reference_schema = (Parsers::SourceSchema.parse(map['ReferenceSchema']) unless map['ReferenceSchema'].nil?)
        return data
      end
    end

    class S3ReferenceDataSourceDescription
      def self.parse(map)
        data = Types::S3ReferenceDataSourceDescription.new
        data.bucket_arn = map['BucketARN']
        data.file_key = map['FileKey']
        data.reference_role_arn = map['ReferenceRoleARN']
        return data
      end
    end

    # Operation Parser for AddApplicationVpcConfiguration
    class AddApplicationVpcConfiguration
      def self.parse(http_resp)
        data = Types::AddApplicationVpcConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data.vpc_configuration_description = (Parsers::VpcConfigurationDescription.parse(map['VpcConfigurationDescription']) unless map['VpcConfigurationDescription'].nil?)
        data
      end
    end

    class VpcConfigurationDescription
      def self.parse(map)
        data = Types::VpcConfigurationDescription.new
        data.vpc_configuration_id = map['VpcConfigurationId']
        data.vpc_id = map['VpcId']
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubnetIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_detail = (Parsers::ApplicationDetail.parse(map['ApplicationDetail']) unless map['ApplicationDetail'].nil?)
        data
      end
    end

    class ApplicationDetail
      def self.parse(map)
        data = Types::ApplicationDetail.new
        data.application_arn = map['ApplicationARN']
        data.application_description = map['ApplicationDescription']
        data.application_name = map['ApplicationName']
        data.runtime_environment = map['RuntimeEnvironment']
        data.service_execution_role = map['ServiceExecutionRole']
        data.application_status = map['ApplicationStatus']
        data.application_version_id = map['ApplicationVersionId']
        data.create_timestamp = Time.at(map['CreateTimestamp'].to_i) if map['CreateTimestamp']
        data.last_update_timestamp = Time.at(map['LastUpdateTimestamp'].to_i) if map['LastUpdateTimestamp']
        data.application_configuration_description = (Parsers::ApplicationConfigurationDescription.parse(map['ApplicationConfigurationDescription']) unless map['ApplicationConfigurationDescription'].nil?)
        data.cloud_watch_logging_option_descriptions = (Parsers::CloudWatchLoggingOptionDescriptions.parse(map['CloudWatchLoggingOptionDescriptions']) unless map['CloudWatchLoggingOptionDescriptions'].nil?)
        data.application_maintenance_configuration_description = (Parsers::ApplicationMaintenanceConfigurationDescription.parse(map['ApplicationMaintenanceConfigurationDescription']) unless map['ApplicationMaintenanceConfigurationDescription'].nil?)
        data.application_version_updated_from = map['ApplicationVersionUpdatedFrom']
        data.application_version_rolled_back_from = map['ApplicationVersionRolledBackFrom']
        data.conditional_token = map['ConditionalToken']
        data.application_version_rolled_back_to = map['ApplicationVersionRolledBackTo']
        data.application_mode = map['ApplicationMode']
        return data
      end
    end

    class ApplicationMaintenanceConfigurationDescription
      def self.parse(map)
        data = Types::ApplicationMaintenanceConfigurationDescription.new
        data.application_maintenance_window_start_time = map['ApplicationMaintenanceWindowStartTime']
        data.application_maintenance_window_end_time = map['ApplicationMaintenanceWindowEndTime']
        return data
      end
    end

    class ApplicationConfigurationDescription
      def self.parse(map)
        data = Types::ApplicationConfigurationDescription.new
        data.sql_application_configuration_description = (Parsers::SqlApplicationConfigurationDescription.parse(map['SqlApplicationConfigurationDescription']) unless map['SqlApplicationConfigurationDescription'].nil?)
        data.application_code_configuration_description = (Parsers::ApplicationCodeConfigurationDescription.parse(map['ApplicationCodeConfigurationDescription']) unless map['ApplicationCodeConfigurationDescription'].nil?)
        data.run_configuration_description = (Parsers::RunConfigurationDescription.parse(map['RunConfigurationDescription']) unless map['RunConfigurationDescription'].nil?)
        data.flink_application_configuration_description = (Parsers::FlinkApplicationConfigurationDescription.parse(map['FlinkApplicationConfigurationDescription']) unless map['FlinkApplicationConfigurationDescription'].nil?)
        data.environment_property_descriptions = (Parsers::EnvironmentPropertyDescriptions.parse(map['EnvironmentPropertyDescriptions']) unless map['EnvironmentPropertyDescriptions'].nil?)
        data.application_snapshot_configuration_description = (Parsers::ApplicationSnapshotConfigurationDescription.parse(map['ApplicationSnapshotConfigurationDescription']) unless map['ApplicationSnapshotConfigurationDescription'].nil?)
        data.vpc_configuration_descriptions = (Parsers::VpcConfigurationDescriptions.parse(map['VpcConfigurationDescriptions']) unless map['VpcConfigurationDescriptions'].nil?)
        data.zeppelin_application_configuration_description = (Parsers::ZeppelinApplicationConfigurationDescription.parse(map['ZeppelinApplicationConfigurationDescription']) unless map['ZeppelinApplicationConfigurationDescription'].nil?)
        return data
      end
    end

    class ZeppelinApplicationConfigurationDescription
      def self.parse(map)
        data = Types::ZeppelinApplicationConfigurationDescription.new
        data.monitoring_configuration_description = (Parsers::ZeppelinMonitoringConfigurationDescription.parse(map['MonitoringConfigurationDescription']) unless map['MonitoringConfigurationDescription'].nil?)
        data.catalog_configuration_description = (Parsers::CatalogConfigurationDescription.parse(map['CatalogConfigurationDescription']) unless map['CatalogConfigurationDescription'].nil?)
        data.deploy_as_application_configuration_description = (Parsers::DeployAsApplicationConfigurationDescription.parse(map['DeployAsApplicationConfigurationDescription']) unless map['DeployAsApplicationConfigurationDescription'].nil?)
        data.custom_artifacts_configuration_description = (Parsers::CustomArtifactsConfigurationDescriptionList.parse(map['CustomArtifactsConfigurationDescription']) unless map['CustomArtifactsConfigurationDescription'].nil?)
        return data
      end
    end

    class CustomArtifactsConfigurationDescriptionList
      def self.parse(list)
        list.map do |value|
          Parsers::CustomArtifactConfigurationDescription.parse(value) unless value.nil?
        end
      end
    end

    class CustomArtifactConfigurationDescription
      def self.parse(map)
        data = Types::CustomArtifactConfigurationDescription.new
        data.artifact_type = map['ArtifactType']
        data.s3_content_location_description = (Parsers::S3ContentLocation.parse(map['S3ContentLocationDescription']) unless map['S3ContentLocationDescription'].nil?)
        data.maven_reference_description = (Parsers::MavenReference.parse(map['MavenReferenceDescription']) unless map['MavenReferenceDescription'].nil?)
        return data
      end
    end

    class MavenReference
      def self.parse(map)
        data = Types::MavenReference.new
        data.group_id = map['GroupId']
        data.artifact_id = map['ArtifactId']
        data.version = map['Version']
        return data
      end
    end

    class S3ContentLocation
      def self.parse(map)
        data = Types::S3ContentLocation.new
        data.bucket_arn = map['BucketARN']
        data.file_key = map['FileKey']
        data.object_version = map['ObjectVersion']
        return data
      end
    end

    class DeployAsApplicationConfigurationDescription
      def self.parse(map)
        data = Types::DeployAsApplicationConfigurationDescription.new
        data.s3_content_location_description = (Parsers::S3ContentBaseLocationDescription.parse(map['S3ContentLocationDescription']) unless map['S3ContentLocationDescription'].nil?)
        return data
      end
    end

    class S3ContentBaseLocationDescription
      def self.parse(map)
        data = Types::S3ContentBaseLocationDescription.new
        data.bucket_arn = map['BucketARN']
        data.base_path = map['BasePath']
        return data
      end
    end

    class CatalogConfigurationDescription
      def self.parse(map)
        data = Types::CatalogConfigurationDescription.new
        data.glue_data_catalog_configuration_description = (Parsers::GlueDataCatalogConfigurationDescription.parse(map['GlueDataCatalogConfigurationDescription']) unless map['GlueDataCatalogConfigurationDescription'].nil?)
        return data
      end
    end

    class GlueDataCatalogConfigurationDescription
      def self.parse(map)
        data = Types::GlueDataCatalogConfigurationDescription.new
        data.database_arn = map['DatabaseARN']
        return data
      end
    end

    class ZeppelinMonitoringConfigurationDescription
      def self.parse(map)
        data = Types::ZeppelinMonitoringConfigurationDescription.new
        data.log_level = map['LogLevel']
        return data
      end
    end

    class VpcConfigurationDescriptions
      def self.parse(list)
        list.map do |value|
          Parsers::VpcConfigurationDescription.parse(value) unless value.nil?
        end
      end
    end

    class ApplicationSnapshotConfigurationDescription
      def self.parse(map)
        data = Types::ApplicationSnapshotConfigurationDescription.new
        data.snapshots_enabled = map['SnapshotsEnabled']
        return data
      end
    end

    class EnvironmentPropertyDescriptions
      def self.parse(map)
        data = Types::EnvironmentPropertyDescriptions.new
        data.property_group_descriptions = (Parsers::PropertyGroups.parse(map['PropertyGroupDescriptions']) unless map['PropertyGroupDescriptions'].nil?)
        return data
      end
    end

    class PropertyGroups
      def self.parse(list)
        list.map do |value|
          Parsers::PropertyGroup.parse(value) unless value.nil?
        end
      end
    end

    class PropertyGroup
      def self.parse(map)
        data = Types::PropertyGroup.new
        data.property_group_id = map['PropertyGroupId']
        data.property_map = (Parsers::PropertyMap.parse(map['PropertyMap']) unless map['PropertyMap'].nil?)
        return data
      end
    end

    class PropertyMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class FlinkApplicationConfigurationDescription
      def self.parse(map)
        data = Types::FlinkApplicationConfigurationDescription.new
        data.checkpoint_configuration_description = (Parsers::CheckpointConfigurationDescription.parse(map['CheckpointConfigurationDescription']) unless map['CheckpointConfigurationDescription'].nil?)
        data.monitoring_configuration_description = (Parsers::MonitoringConfigurationDescription.parse(map['MonitoringConfigurationDescription']) unless map['MonitoringConfigurationDescription'].nil?)
        data.parallelism_configuration_description = (Parsers::ParallelismConfigurationDescription.parse(map['ParallelismConfigurationDescription']) unless map['ParallelismConfigurationDescription'].nil?)
        data.job_plan_description = map['JobPlanDescription']
        return data
      end
    end

    class ParallelismConfigurationDescription
      def self.parse(map)
        data = Types::ParallelismConfigurationDescription.new
        data.configuration_type = map['ConfigurationType']
        data.parallelism = map['Parallelism']
        data.parallelism_per_kpu = map['ParallelismPerKPU']
        data.current_parallelism = map['CurrentParallelism']
        data.auto_scaling_enabled = map['AutoScalingEnabled']
        return data
      end
    end

    class MonitoringConfigurationDescription
      def self.parse(map)
        data = Types::MonitoringConfigurationDescription.new
        data.configuration_type = map['ConfigurationType']
        data.metrics_level = map['MetricsLevel']
        data.log_level = map['LogLevel']
        return data
      end
    end

    class CheckpointConfigurationDescription
      def self.parse(map)
        data = Types::CheckpointConfigurationDescription.new
        data.configuration_type = map['ConfigurationType']
        data.checkpointing_enabled = map['CheckpointingEnabled']
        data.checkpoint_interval = map['CheckpointInterval']
        data.min_pause_between_checkpoints = map['MinPauseBetweenCheckpoints']
        return data
      end
    end

    class RunConfigurationDescription
      def self.parse(map)
        data = Types::RunConfigurationDescription.new
        data.application_restore_configuration_description = (Parsers::ApplicationRestoreConfiguration.parse(map['ApplicationRestoreConfigurationDescription']) unless map['ApplicationRestoreConfigurationDescription'].nil?)
        data.flink_run_configuration_description = (Parsers::FlinkRunConfiguration.parse(map['FlinkRunConfigurationDescription']) unless map['FlinkRunConfigurationDescription'].nil?)
        return data
      end
    end

    class FlinkRunConfiguration
      def self.parse(map)
        data = Types::FlinkRunConfiguration.new
        data.allow_non_restored_state = map['AllowNonRestoredState']
        return data
      end
    end

    class ApplicationRestoreConfiguration
      def self.parse(map)
        data = Types::ApplicationRestoreConfiguration.new
        data.application_restore_type = map['ApplicationRestoreType']
        data.snapshot_name = map['SnapshotName']
        return data
      end
    end

    class ApplicationCodeConfigurationDescription
      def self.parse(map)
        data = Types::ApplicationCodeConfigurationDescription.new
        data.code_content_type = map['CodeContentType']
        data.code_content_description = (Parsers::CodeContentDescription.parse(map['CodeContentDescription']) unless map['CodeContentDescription'].nil?)
        return data
      end
    end

    class CodeContentDescription
      def self.parse(map)
        data = Types::CodeContentDescription.new
        data.text_content = map['TextContent']
        data.code_md5 = map['CodeMD5']
        data.code_size = map['CodeSize']
        data.s3_application_code_location_description = (Parsers::S3ApplicationCodeLocationDescription.parse(map['S3ApplicationCodeLocationDescription']) unless map['S3ApplicationCodeLocationDescription'].nil?)
        return data
      end
    end

    class S3ApplicationCodeLocationDescription
      def self.parse(map)
        data = Types::S3ApplicationCodeLocationDescription.new
        data.bucket_arn = map['BucketARN']
        data.file_key = map['FileKey']
        data.object_version = map['ObjectVersion']
        return data
      end
    end

    class SqlApplicationConfigurationDescription
      def self.parse(map)
        data = Types::SqlApplicationConfigurationDescription.new
        data.input_descriptions = (Parsers::InputDescriptions.parse(map['InputDescriptions']) unless map['InputDescriptions'].nil?)
        data.output_descriptions = (Parsers::OutputDescriptions.parse(map['OutputDescriptions']) unless map['OutputDescriptions'].nil?)
        data.reference_data_source_descriptions = (Parsers::ReferenceDataSourceDescriptions.parse(map['ReferenceDataSourceDescriptions']) unless map['ReferenceDataSourceDescriptions'].nil?)
        return data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateApplicationPresignedUrl
    class CreateApplicationPresignedUrl
      def self.parse(http_resp)
        data = Types::CreateApplicationPresignedUrlOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.authorized_url = map['AuthorizedUrl']
        data
      end
    end

    # Operation Parser for CreateApplicationSnapshot
    class CreateApplicationSnapshot
      def self.parse(http_resp)
        data = Types::CreateApplicationSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOperationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteApplicationCloudWatchLoggingOption
    class DeleteApplicationCloudWatchLoggingOption
      def self.parse(http_resp)
        data = Types::DeleteApplicationCloudWatchLoggingOptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data.cloud_watch_logging_option_descriptions = (Parsers::CloudWatchLoggingOptionDescriptions.parse(map['CloudWatchLoggingOptionDescriptions']) unless map['CloudWatchLoggingOptionDescriptions'].nil?)
        data
      end
    end

    # Operation Parser for DeleteApplicationInputProcessingConfiguration
    class DeleteApplicationInputProcessingConfiguration
      def self.parse(http_resp)
        data = Types::DeleteApplicationInputProcessingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data
      end
    end

    # Operation Parser for DeleteApplicationOutput
    class DeleteApplicationOutput
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutputOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data
      end
    end

    # Operation Parser for DeleteApplicationReferenceDataSource
    class DeleteApplicationReferenceDataSource
      def self.parse(http_resp)
        data = Types::DeleteApplicationReferenceDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data
      end
    end

    # Operation Parser for DeleteApplicationSnapshot
    class DeleteApplicationSnapshot
      def self.parse(http_resp)
        data = Types::DeleteApplicationSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteApplicationVpcConfiguration
    class DeleteApplicationVpcConfiguration
      def self.parse(http_resp)
        data = Types::DeleteApplicationVpcConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_version_id = map['ApplicationVersionId']
        data
      end
    end

    # Operation Parser for DescribeApplication
    class DescribeApplication
      def self.parse(http_resp)
        data = Types::DescribeApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_detail = (Parsers::ApplicationDetail.parse(map['ApplicationDetail']) unless map['ApplicationDetail'].nil?)
        data
      end
    end

    # Operation Parser for DescribeApplicationSnapshot
    class DescribeApplicationSnapshot
      def self.parse(http_resp)
        data = Types::DescribeApplicationSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot_details = (Parsers::SnapshotDetails.parse(map['SnapshotDetails']) unless map['SnapshotDetails'].nil?)
        data
      end
    end

    class SnapshotDetails
      def self.parse(map)
        data = Types::SnapshotDetails.new
        data.snapshot_name = map['SnapshotName']
        data.snapshot_status = map['SnapshotStatus']
        data.application_version_id = map['ApplicationVersionId']
        data.snapshot_creation_timestamp = Time.at(map['SnapshotCreationTimestamp'].to_i) if map['SnapshotCreationTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeApplicationVersion
    class DescribeApplicationVersion
      def self.parse(http_resp)
        data = Types::DescribeApplicationVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_version_detail = (Parsers::ApplicationDetail.parse(map['ApplicationVersionDetail']) unless map['ApplicationVersionDetail'].nil?)
        data
      end
    end

    # Operation Parser for DiscoverInputSchema
    class DiscoverInputSchema
      def self.parse(http_resp)
        data = Types::DiscoverInputSchemaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.input_schema = (Parsers::SourceSchema.parse(map['InputSchema']) unless map['InputSchema'].nil?)
        data.parsed_input_records = (Parsers::ParsedInputRecords.parse(map['ParsedInputRecords']) unless map['ParsedInputRecords'].nil?)
        data.processed_input_records = (Parsers::ProcessedInputRecords.parse(map['ProcessedInputRecords']) unless map['ProcessedInputRecords'].nil?)
        data.raw_input_records = (Parsers::RawInputRecords.parse(map['RawInputRecords']) unless map['RawInputRecords'].nil?)
        data
      end
    end

    class RawInputRecords
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ProcessedInputRecords
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ParsedInputRecords
      def self.parse(list)
        list.map do |value|
          Parsers::ParsedInputRecord.parse(value) unless value.nil?
        end
      end
    end

    class ParsedInputRecord
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceProvisionedThroughputExceededException
    class ResourceProvisionedThroughputExceededException
      def self.parse(http_resp)
        data = Types::ResourceProvisionedThroughputExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnableToDetectSchemaException
    class UnableToDetectSchemaException
      def self.parse(http_resp)
        data = Types::UnableToDetectSchemaException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.raw_input_records = (Parsers::RawInputRecords.parse(map['RawInputRecords']) unless map['RawInputRecords'].nil?)
        data.processed_input_records = (Parsers::ProcessedInputRecords.parse(map['ProcessedInputRecords']) unless map['ProcessedInputRecords'].nil?)
        data
      end
    end

    # Operation Parser for ListApplicationSnapshots
    class ListApplicationSnapshots
      def self.parse(http_resp)
        data = Types::ListApplicationSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot_summaries = (Parsers::SnapshotSummaries.parse(map['SnapshotSummaries']) unless map['SnapshotSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SnapshotSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::SnapshotDetails.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListApplicationVersions
    class ListApplicationVersions
      def self.parse(http_resp)
        data = Types::ListApplicationVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_version_summaries = (Parsers::ApplicationVersionSummaries.parse(map['ApplicationVersionSummaries']) unless map['ApplicationVersionSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApplicationVersionSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ApplicationVersionSummary.parse(value) unless value.nil?
        end
      end
    end

    class ApplicationVersionSummary
      def self.parse(map)
        data = Types::ApplicationVersionSummary.new
        data.application_version_id = map['ApplicationVersionId']
        data.application_status = map['ApplicationStatus']
        return data
      end
    end

    # Operation Parser for ListApplications
    class ListApplications
      def self.parse(http_resp)
        data = Types::ListApplicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_summaries = (Parsers::ApplicationSummaries.parse(map['ApplicationSummaries']) unless map['ApplicationSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApplicationSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ApplicationSummary.parse(value) unless value.nil?
        end
      end
    end

    class ApplicationSummary
      def self.parse(map)
        data = Types::ApplicationSummary.new
        data.application_name = map['ApplicationName']
        data.application_arn = map['ApplicationARN']
        data.application_status = map['ApplicationStatus']
        data.application_version_id = map['ApplicationVersionId']
        data.runtime_environment = map['RuntimeEnvironment']
        data.application_mode = map['ApplicationMode']
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
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class Tags
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

    # Operation Parser for RollbackApplication
    class RollbackApplication
      def self.parse(http_resp)
        data = Types::RollbackApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_detail = (Parsers::ApplicationDetail.parse(map['ApplicationDetail']) unless map['ApplicationDetail'].nil?)
        data
      end
    end

    # Operation Parser for StartApplication
    class StartApplication
      def self.parse(http_resp)
        data = Types::StartApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopApplication
    class StopApplication
      def self.parse(http_resp)
        data = Types::StopApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_detail = (Parsers::ApplicationDetail.parse(map['ApplicationDetail']) unless map['ApplicationDetail'].nil?)
        data
      end
    end

    # Operation Parser for UpdateApplicationMaintenanceConfiguration
    class UpdateApplicationMaintenanceConfiguration
      def self.parse(http_resp)
        data = Types::UpdateApplicationMaintenanceConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_arn = map['ApplicationARN']
        data.application_maintenance_configuration_description = (Parsers::ApplicationMaintenanceConfigurationDescription.parse(map['ApplicationMaintenanceConfigurationDescription']) unless map['ApplicationMaintenanceConfigurationDescription'].nil?)
        data
      end
    end
  end
end
