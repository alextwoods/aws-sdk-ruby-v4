# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisAnalyticsV2
  module Params

    module AddApplicationCloudWatchLoggingOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationCloudWatchLoggingOptionInput, context: context)
        type = Types::AddApplicationCloudWatchLoggingOptionInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.cloud_watch_logging_option = CloudWatchLoggingOption.build(params[:cloud_watch_logging_option], context: "#{context}[:cloud_watch_logging_option]") unless params[:cloud_watch_logging_option].nil?
        type.conditional_token = params[:conditional_token]
        type
      end
    end

    module AddApplicationCloudWatchLoggingOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationCloudWatchLoggingOptionOutput, context: context)
        type = Types::AddApplicationCloudWatchLoggingOptionOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type.cloud_watch_logging_option_descriptions = CloudWatchLoggingOptionDescriptions.build(params[:cloud_watch_logging_option_descriptions], context: "#{context}[:cloud_watch_logging_option_descriptions]") unless params[:cloud_watch_logging_option_descriptions].nil?
        type
      end
    end

    module AddApplicationInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationInputInput, context: context)
        type = Types::AddApplicationInputInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.input = Input.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type
      end
    end

    module AddApplicationInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationInputOutput, context: context)
        type = Types::AddApplicationInputOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type.input_descriptions = InputDescriptions.build(params[:input_descriptions], context: "#{context}[:input_descriptions]") unless params[:input_descriptions].nil?
        type
      end
    end

    module AddApplicationInputProcessingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationInputProcessingConfigurationInput, context: context)
        type = Types::AddApplicationInputProcessingConfigurationInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.input_id = params[:input_id]
        type.input_processing_configuration = InputProcessingConfiguration.build(params[:input_processing_configuration], context: "#{context}[:input_processing_configuration]") unless params[:input_processing_configuration].nil?
        type
      end
    end

    module AddApplicationInputProcessingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationInputProcessingConfigurationOutput, context: context)
        type = Types::AddApplicationInputProcessingConfigurationOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type.input_id = params[:input_id]
        type.input_processing_configuration_description = InputProcessingConfigurationDescription.build(params[:input_processing_configuration_description], context: "#{context}[:input_processing_configuration_description]") unless params[:input_processing_configuration_description].nil?
        type
      end
    end

    module AddApplicationOutputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationOutputInput, context: context)
        type = Types::AddApplicationOutputInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.output = Output.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type
      end
    end

    module AddApplicationOutputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationOutputOutput, context: context)
        type = Types::AddApplicationOutputOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type.output_descriptions = OutputDescriptions.build(params[:output_descriptions], context: "#{context}[:output_descriptions]") unless params[:output_descriptions].nil?
        type
      end
    end

    module AddApplicationReferenceDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationReferenceDataSourceInput, context: context)
        type = Types::AddApplicationReferenceDataSourceInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.reference_data_source = ReferenceDataSource.build(params[:reference_data_source], context: "#{context}[:reference_data_source]") unless params[:reference_data_source].nil?
        type
      end
    end

    module AddApplicationReferenceDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationReferenceDataSourceOutput, context: context)
        type = Types::AddApplicationReferenceDataSourceOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type.reference_data_source_descriptions = ReferenceDataSourceDescriptions.build(params[:reference_data_source_descriptions], context: "#{context}[:reference_data_source_descriptions]") unless params[:reference_data_source_descriptions].nil?
        type
      end
    end

    module AddApplicationVpcConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationVpcConfigurationInput, context: context)
        type = Types::AddApplicationVpcConfigurationInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.conditional_token = params[:conditional_token]
        type
      end
    end

    module AddApplicationVpcConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationVpcConfigurationOutput, context: context)
        type = Types::AddApplicationVpcConfigurationOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type.vpc_configuration_description = VpcConfigurationDescription.build(params[:vpc_configuration_description], context: "#{context}[:vpc_configuration_description]") unless params[:vpc_configuration_description].nil?
        type
      end
    end

    module ApplicationCodeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationCodeConfiguration, context: context)
        type = Types::ApplicationCodeConfiguration.new
        type.code_content = CodeContent.build(params[:code_content], context: "#{context}[:code_content]") unless params[:code_content].nil?
        type.code_content_type = params[:code_content_type]
        type
      end
    end

    module ApplicationCodeConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationCodeConfigurationDescription, context: context)
        type = Types::ApplicationCodeConfigurationDescription.new
        type.code_content_type = params[:code_content_type]
        type.code_content_description = CodeContentDescription.build(params[:code_content_description], context: "#{context}[:code_content_description]") unless params[:code_content_description].nil?
        type
      end
    end

    module ApplicationCodeConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationCodeConfigurationUpdate, context: context)
        type = Types::ApplicationCodeConfigurationUpdate.new
        type.code_content_type_update = params[:code_content_type_update]
        type.code_content_update = CodeContentUpdate.build(params[:code_content_update], context: "#{context}[:code_content_update]") unless params[:code_content_update].nil?
        type
      end
    end

    module ApplicationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationConfiguration, context: context)
        type = Types::ApplicationConfiguration.new
        type.sql_application_configuration = SqlApplicationConfiguration.build(params[:sql_application_configuration], context: "#{context}[:sql_application_configuration]") unless params[:sql_application_configuration].nil?
        type.flink_application_configuration = FlinkApplicationConfiguration.build(params[:flink_application_configuration], context: "#{context}[:flink_application_configuration]") unless params[:flink_application_configuration].nil?
        type.environment_properties = EnvironmentProperties.build(params[:environment_properties], context: "#{context}[:environment_properties]") unless params[:environment_properties].nil?
        type.application_code_configuration = ApplicationCodeConfiguration.build(params[:application_code_configuration], context: "#{context}[:application_code_configuration]") unless params[:application_code_configuration].nil?
        type.application_snapshot_configuration = ApplicationSnapshotConfiguration.build(params[:application_snapshot_configuration], context: "#{context}[:application_snapshot_configuration]") unless params[:application_snapshot_configuration].nil?
        type.vpc_configurations = VpcConfigurations.build(params[:vpc_configurations], context: "#{context}[:vpc_configurations]") unless params[:vpc_configurations].nil?
        type.zeppelin_application_configuration = ZeppelinApplicationConfiguration.build(params[:zeppelin_application_configuration], context: "#{context}[:zeppelin_application_configuration]") unless params[:zeppelin_application_configuration].nil?
        type
      end
    end

    module ApplicationConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationConfigurationDescription, context: context)
        type = Types::ApplicationConfigurationDescription.new
        type.sql_application_configuration_description = SqlApplicationConfigurationDescription.build(params[:sql_application_configuration_description], context: "#{context}[:sql_application_configuration_description]") unless params[:sql_application_configuration_description].nil?
        type.application_code_configuration_description = ApplicationCodeConfigurationDescription.build(params[:application_code_configuration_description], context: "#{context}[:application_code_configuration_description]") unless params[:application_code_configuration_description].nil?
        type.run_configuration_description = RunConfigurationDescription.build(params[:run_configuration_description], context: "#{context}[:run_configuration_description]") unless params[:run_configuration_description].nil?
        type.flink_application_configuration_description = FlinkApplicationConfigurationDescription.build(params[:flink_application_configuration_description], context: "#{context}[:flink_application_configuration_description]") unless params[:flink_application_configuration_description].nil?
        type.environment_property_descriptions = EnvironmentPropertyDescriptions.build(params[:environment_property_descriptions], context: "#{context}[:environment_property_descriptions]") unless params[:environment_property_descriptions].nil?
        type.application_snapshot_configuration_description = ApplicationSnapshotConfigurationDescription.build(params[:application_snapshot_configuration_description], context: "#{context}[:application_snapshot_configuration_description]") unless params[:application_snapshot_configuration_description].nil?
        type.vpc_configuration_descriptions = VpcConfigurationDescriptions.build(params[:vpc_configuration_descriptions], context: "#{context}[:vpc_configuration_descriptions]") unless params[:vpc_configuration_descriptions].nil?
        type.zeppelin_application_configuration_description = ZeppelinApplicationConfigurationDescription.build(params[:zeppelin_application_configuration_description], context: "#{context}[:zeppelin_application_configuration_description]") unless params[:zeppelin_application_configuration_description].nil?
        type
      end
    end

    module ApplicationConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationConfigurationUpdate, context: context)
        type = Types::ApplicationConfigurationUpdate.new
        type.sql_application_configuration_update = SqlApplicationConfigurationUpdate.build(params[:sql_application_configuration_update], context: "#{context}[:sql_application_configuration_update]") unless params[:sql_application_configuration_update].nil?
        type.application_code_configuration_update = ApplicationCodeConfigurationUpdate.build(params[:application_code_configuration_update], context: "#{context}[:application_code_configuration_update]") unless params[:application_code_configuration_update].nil?
        type.flink_application_configuration_update = FlinkApplicationConfigurationUpdate.build(params[:flink_application_configuration_update], context: "#{context}[:flink_application_configuration_update]") unless params[:flink_application_configuration_update].nil?
        type.environment_property_updates = EnvironmentPropertyUpdates.build(params[:environment_property_updates], context: "#{context}[:environment_property_updates]") unless params[:environment_property_updates].nil?
        type.application_snapshot_configuration_update = ApplicationSnapshotConfigurationUpdate.build(params[:application_snapshot_configuration_update], context: "#{context}[:application_snapshot_configuration_update]") unless params[:application_snapshot_configuration_update].nil?
        type.vpc_configuration_updates = VpcConfigurationUpdates.build(params[:vpc_configuration_updates], context: "#{context}[:vpc_configuration_updates]") unless params[:vpc_configuration_updates].nil?
        type.zeppelin_application_configuration_update = ZeppelinApplicationConfigurationUpdate.build(params[:zeppelin_application_configuration_update], context: "#{context}[:zeppelin_application_configuration_update]") unless params[:zeppelin_application_configuration_update].nil?
        type
      end
    end

    module ApplicationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationDetail, context: context)
        type = Types::ApplicationDetail.new
        type.application_arn = params[:application_arn]
        type.application_description = params[:application_description]
        type.application_name = params[:application_name]
        type.runtime_environment = params[:runtime_environment]
        type.service_execution_role = params[:service_execution_role]
        type.application_status = params[:application_status]
        type.application_version_id = params[:application_version_id]
        type.create_timestamp = params[:create_timestamp]
        type.last_update_timestamp = params[:last_update_timestamp]
        type.application_configuration_description = ApplicationConfigurationDescription.build(params[:application_configuration_description], context: "#{context}[:application_configuration_description]") unless params[:application_configuration_description].nil?
        type.cloud_watch_logging_option_descriptions = CloudWatchLoggingOptionDescriptions.build(params[:cloud_watch_logging_option_descriptions], context: "#{context}[:cloud_watch_logging_option_descriptions]") unless params[:cloud_watch_logging_option_descriptions].nil?
        type.application_maintenance_configuration_description = ApplicationMaintenanceConfigurationDescription.build(params[:application_maintenance_configuration_description], context: "#{context}[:application_maintenance_configuration_description]") unless params[:application_maintenance_configuration_description].nil?
        type.application_version_updated_from = params[:application_version_updated_from]
        type.application_version_rolled_back_from = params[:application_version_rolled_back_from]
        type.conditional_token = params[:conditional_token]
        type.application_version_rolled_back_to = params[:application_version_rolled_back_to]
        type.application_mode = params[:application_mode]
        type
      end
    end

    module ApplicationMaintenanceConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationMaintenanceConfigurationDescription, context: context)
        type = Types::ApplicationMaintenanceConfigurationDescription.new
        type.application_maintenance_window_start_time = params[:application_maintenance_window_start_time]
        type.application_maintenance_window_end_time = params[:application_maintenance_window_end_time]
        type
      end
    end

    module ApplicationMaintenanceConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationMaintenanceConfigurationUpdate, context: context)
        type = Types::ApplicationMaintenanceConfigurationUpdate.new
        type.application_maintenance_window_start_time_update = params[:application_maintenance_window_start_time_update]
        type
      end
    end

    module ApplicationRestoreConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationRestoreConfiguration, context: context)
        type = Types::ApplicationRestoreConfiguration.new
        type.application_restore_type = params[:application_restore_type]
        type.snapshot_name = params[:snapshot_name]
        type
      end
    end

    module ApplicationSnapshotConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSnapshotConfiguration, context: context)
        type = Types::ApplicationSnapshotConfiguration.new
        type.snapshots_enabled = params[:snapshots_enabled]
        type
      end
    end

    module ApplicationSnapshotConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSnapshotConfigurationDescription, context: context)
        type = Types::ApplicationSnapshotConfigurationDescription.new
        type.snapshots_enabled = params[:snapshots_enabled]
        type
      end
    end

    module ApplicationSnapshotConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSnapshotConfigurationUpdate, context: context)
        type = Types::ApplicationSnapshotConfigurationUpdate.new
        type.snapshots_enabled_update = params[:snapshots_enabled_update]
        type
      end
    end

    module ApplicationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSummary, context: context)
        type = Types::ApplicationSummary.new
        type.application_name = params[:application_name]
        type.application_arn = params[:application_arn]
        type.application_status = params[:application_status]
        type.application_version_id = params[:application_version_id]
        type.runtime_environment = params[:runtime_environment]
        type.application_mode = params[:application_mode]
        type
      end
    end

    module ApplicationVersionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationVersionSummary, context: context)
        type = Types::ApplicationVersionSummary.new
        type.application_version_id = params[:application_version_id]
        type.application_status = params[:application_status]
        type
      end
    end

    module CSVMappingParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CSVMappingParameters, context: context)
        type = Types::CSVMappingParameters.new
        type.record_row_delimiter = params[:record_row_delimiter]
        type.record_column_delimiter = params[:record_column_delimiter]
        type
      end
    end

    module CatalogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogConfiguration, context: context)
        type = Types::CatalogConfiguration.new
        type.glue_data_catalog_configuration = GlueDataCatalogConfiguration.build(params[:glue_data_catalog_configuration], context: "#{context}[:glue_data_catalog_configuration]") unless params[:glue_data_catalog_configuration].nil?
        type
      end
    end

    module CatalogConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogConfigurationDescription, context: context)
        type = Types::CatalogConfigurationDescription.new
        type.glue_data_catalog_configuration_description = GlueDataCatalogConfigurationDescription.build(params[:glue_data_catalog_configuration_description], context: "#{context}[:glue_data_catalog_configuration_description]") unless params[:glue_data_catalog_configuration_description].nil?
        type
      end
    end

    module CatalogConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogConfigurationUpdate, context: context)
        type = Types::CatalogConfigurationUpdate.new
        type.glue_data_catalog_configuration_update = GlueDataCatalogConfigurationUpdate.build(params[:glue_data_catalog_configuration_update], context: "#{context}[:glue_data_catalog_configuration_update]") unless params[:glue_data_catalog_configuration_update].nil?
        type
      end
    end

    module CheckpointConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckpointConfiguration, context: context)
        type = Types::CheckpointConfiguration.new
        type.configuration_type = params[:configuration_type]
        type.checkpointing_enabled = params[:checkpointing_enabled]
        type.checkpoint_interval = params[:checkpoint_interval]
        type.min_pause_between_checkpoints = params[:min_pause_between_checkpoints]
        type
      end
    end

    module CheckpointConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckpointConfigurationDescription, context: context)
        type = Types::CheckpointConfigurationDescription.new
        type.configuration_type = params[:configuration_type]
        type.checkpointing_enabled = params[:checkpointing_enabled]
        type.checkpoint_interval = params[:checkpoint_interval]
        type.min_pause_between_checkpoints = params[:min_pause_between_checkpoints]
        type
      end
    end

    module CheckpointConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckpointConfigurationUpdate, context: context)
        type = Types::CheckpointConfigurationUpdate.new
        type.configuration_type_update = params[:configuration_type_update]
        type.checkpointing_enabled_update = params[:checkpointing_enabled_update]
        type.checkpoint_interval_update = params[:checkpoint_interval_update]
        type.min_pause_between_checkpoints_update = params[:min_pause_between_checkpoints_update]
        type
      end
    end

    module CloudWatchLoggingOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLoggingOption, context: context)
        type = Types::CloudWatchLoggingOption.new
        type.log_stream_arn = params[:log_stream_arn]
        type
      end
    end

    module CloudWatchLoggingOptionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLoggingOptionDescription, context: context)
        type = Types::CloudWatchLoggingOptionDescription.new
        type.cloud_watch_logging_option_id = params[:cloud_watch_logging_option_id]
        type.log_stream_arn = params[:log_stream_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module CloudWatchLoggingOptionDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudWatchLoggingOptionDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudWatchLoggingOptionUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLoggingOptionUpdate, context: context)
        type = Types::CloudWatchLoggingOptionUpdate.new
        type.cloud_watch_logging_option_id = params[:cloud_watch_logging_option_id]
        type.log_stream_arn_update = params[:log_stream_arn_update]
        type
      end
    end

    module CloudWatchLoggingOptionUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudWatchLoggingOptionUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudWatchLoggingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudWatchLoggingOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CodeContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeContent, context: context)
        type = Types::CodeContent.new
        type.text_content = params[:text_content]
        type.zip_file_content = params[:zip_file_content]
        type.s3_content_location = S3ContentLocation.build(params[:s3_content_location], context: "#{context}[:s3_content_location]") unless params[:s3_content_location].nil?
        type
      end
    end

    module CodeContentDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeContentDescription, context: context)
        type = Types::CodeContentDescription.new
        type.text_content = params[:text_content]
        type.code_md5 = params[:code_md5]
        type.code_size = params[:code_size]
        type.s3_application_code_location_description = S3ApplicationCodeLocationDescription.build(params[:s3_application_code_location_description], context: "#{context}[:s3_application_code_location_description]") unless params[:s3_application_code_location_description].nil?
        type
      end
    end

    module CodeContentUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeContentUpdate, context: context)
        type = Types::CodeContentUpdate.new
        type.text_content_update = params[:text_content_update]
        type.zip_file_content_update = params[:zip_file_content_update]
        type.s3_content_location_update = S3ContentLocationUpdate.build(params[:s3_content_location_update], context: "#{context}[:s3_content_location_update]") unless params[:s3_content_location_update].nil?
        type
      end
    end

    module CodeValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeValidationException, context: context)
        type = Types::CodeValidationException.new
        type.message = params[:message]
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.application_name = params[:application_name]
        type.application_description = params[:application_description]
        type.runtime_environment = params[:runtime_environment]
        type.service_execution_role = params[:service_execution_role]
        type.application_configuration = ApplicationConfiguration.build(params[:application_configuration], context: "#{context}[:application_configuration]") unless params[:application_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.application_mode = params[:application_mode]
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application_detail = ApplicationDetail.build(params[:application_detail], context: "#{context}[:application_detail]") unless params[:application_detail].nil?
        type
      end
    end

    module CreateApplicationPresignedUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationPresignedUrlInput, context: context)
        type = Types::CreateApplicationPresignedUrlInput.new
        type.application_name = params[:application_name]
        type.url_type = params[:url_type]
        type.session_expiration_duration_in_seconds = params[:session_expiration_duration_in_seconds]
        type
      end
    end

    module CreateApplicationPresignedUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationPresignedUrlOutput, context: context)
        type = Types::CreateApplicationPresignedUrlOutput.new
        type.authorized_url = params[:authorized_url]
        type
      end
    end

    module CreateApplicationSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationSnapshotInput, context: context)
        type = Types::CreateApplicationSnapshotInput.new
        type.application_name = params[:application_name]
        type.snapshot_name = params[:snapshot_name]
        type
      end
    end

    module CreateApplicationSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationSnapshotOutput, context: context)
        type = Types::CreateApplicationSnapshotOutput.new
        type
      end
    end

    module CustomArtifactConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomArtifactConfiguration, context: context)
        type = Types::CustomArtifactConfiguration.new
        type.artifact_type = params[:artifact_type]
        type.s3_content_location = S3ContentLocation.build(params[:s3_content_location], context: "#{context}[:s3_content_location]") unless params[:s3_content_location].nil?
        type.maven_reference = MavenReference.build(params[:maven_reference], context: "#{context}[:maven_reference]") unless params[:maven_reference].nil?
        type
      end
    end

    module CustomArtifactConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomArtifactConfigurationDescription, context: context)
        type = Types::CustomArtifactConfigurationDescription.new
        type.artifact_type = params[:artifact_type]
        type.s3_content_location_description = S3ContentLocation.build(params[:s3_content_location_description], context: "#{context}[:s3_content_location_description]") unless params[:s3_content_location_description].nil?
        type.maven_reference_description = MavenReference.build(params[:maven_reference_description], context: "#{context}[:maven_reference_description]") unless params[:maven_reference_description].nil?
        type
      end
    end

    module CustomArtifactsConfigurationDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomArtifactConfigurationDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomArtifactsConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomArtifactConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteApplicationCloudWatchLoggingOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationCloudWatchLoggingOptionInput, context: context)
        type = Types::DeleteApplicationCloudWatchLoggingOptionInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.cloud_watch_logging_option_id = params[:cloud_watch_logging_option_id]
        type.conditional_token = params[:conditional_token]
        type
      end
    end

    module DeleteApplicationCloudWatchLoggingOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationCloudWatchLoggingOptionOutput, context: context)
        type = Types::DeleteApplicationCloudWatchLoggingOptionOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type.cloud_watch_logging_option_descriptions = CloudWatchLoggingOptionDescriptions.build(params[:cloud_watch_logging_option_descriptions], context: "#{context}[:cloud_watch_logging_option_descriptions]") unless params[:cloud_watch_logging_option_descriptions].nil?
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.application_name = params[:application_name]
        type.create_timestamp = params[:create_timestamp]
        type
      end
    end

    module DeleteApplicationInputProcessingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInputProcessingConfigurationInput, context: context)
        type = Types::DeleteApplicationInputProcessingConfigurationInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.input_id = params[:input_id]
        type
      end
    end

    module DeleteApplicationInputProcessingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInputProcessingConfigurationOutput, context: context)
        type = Types::DeleteApplicationInputProcessingConfigurationOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type
      end
    end

    module DeleteApplicationOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOperationOutput, context: context)
        type = Types::DeleteApplicationOperationOutput.new
        type
      end
    end

    module DeleteApplicationOutputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutputInput, context: context)
        type = Types::DeleteApplicationOutputInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.output_id = params[:output_id]
        type
      end
    end

    module DeleteApplicationOutputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutputOutput, context: context)
        type = Types::DeleteApplicationOutputOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type
      end
    end

    module DeleteApplicationReferenceDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationReferenceDataSourceInput, context: context)
        type = Types::DeleteApplicationReferenceDataSourceInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.reference_id = params[:reference_id]
        type
      end
    end

    module DeleteApplicationReferenceDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationReferenceDataSourceOutput, context: context)
        type = Types::DeleteApplicationReferenceDataSourceOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type
      end
    end

    module DeleteApplicationSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationSnapshotInput, context: context)
        type = Types::DeleteApplicationSnapshotInput.new
        type.application_name = params[:application_name]
        type.snapshot_name = params[:snapshot_name]
        type.snapshot_creation_timestamp = params[:snapshot_creation_timestamp]
        type
      end
    end

    module DeleteApplicationSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationSnapshotOutput, context: context)
        type = Types::DeleteApplicationSnapshotOutput.new
        type
      end
    end

    module DeleteApplicationVpcConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationVpcConfigurationInput, context: context)
        type = Types::DeleteApplicationVpcConfigurationInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.vpc_configuration_id = params[:vpc_configuration_id]
        type.conditional_token = params[:conditional_token]
        type
      end
    end

    module DeleteApplicationVpcConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationVpcConfigurationOutput, context: context)
        type = Types::DeleteApplicationVpcConfigurationOutput.new
        type.application_arn = params[:application_arn]
        type.application_version_id = params[:application_version_id]
        type
      end
    end

    module DeployAsApplicationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeployAsApplicationConfiguration, context: context)
        type = Types::DeployAsApplicationConfiguration.new
        type.s3_content_location = S3ContentBaseLocation.build(params[:s3_content_location], context: "#{context}[:s3_content_location]") unless params[:s3_content_location].nil?
        type
      end
    end

    module DeployAsApplicationConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeployAsApplicationConfigurationDescription, context: context)
        type = Types::DeployAsApplicationConfigurationDescription.new
        type.s3_content_location_description = S3ContentBaseLocationDescription.build(params[:s3_content_location_description], context: "#{context}[:s3_content_location_description]") unless params[:s3_content_location_description].nil?
        type
      end
    end

    module DeployAsApplicationConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeployAsApplicationConfigurationUpdate, context: context)
        type = Types::DeployAsApplicationConfigurationUpdate.new
        type.s3_content_location_update = S3ContentBaseLocationUpdate.build(params[:s3_content_location_update], context: "#{context}[:s3_content_location_update]") unless params[:s3_content_location_update].nil?
        type
      end
    end

    module DescribeApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationInput, context: context)
        type = Types::DescribeApplicationInput.new
        type.application_name = params[:application_name]
        type.include_additional_details = params[:include_additional_details]
        type
      end
    end

    module DescribeApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationOutput, context: context)
        type = Types::DescribeApplicationOutput.new
        type.application_detail = ApplicationDetail.build(params[:application_detail], context: "#{context}[:application_detail]") unless params[:application_detail].nil?
        type
      end
    end

    module DescribeApplicationSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationSnapshotInput, context: context)
        type = Types::DescribeApplicationSnapshotInput.new
        type.application_name = params[:application_name]
        type.snapshot_name = params[:snapshot_name]
        type
      end
    end

    module DescribeApplicationSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationSnapshotOutput, context: context)
        type = Types::DescribeApplicationSnapshotOutput.new
        type.snapshot_details = SnapshotDetails.build(params[:snapshot_details], context: "#{context}[:snapshot_details]") unless params[:snapshot_details].nil?
        type
      end
    end

    module DescribeApplicationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationVersionInput, context: context)
        type = Types::DescribeApplicationVersionInput.new
        type.application_name = params[:application_name]
        type.application_version_id = params[:application_version_id]
        type
      end
    end

    module DescribeApplicationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationVersionOutput, context: context)
        type = Types::DescribeApplicationVersionOutput.new
        type.application_version_detail = ApplicationDetail.build(params[:application_version_detail], context: "#{context}[:application_version_detail]") unless params[:application_version_detail].nil?
        type
      end
    end

    module DestinationSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationSchema, context: context)
        type = Types::DestinationSchema.new
        type.record_format_type = params[:record_format_type]
        type
      end
    end

    module DiscoverInputSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiscoverInputSchemaInput, context: context)
        type = Types::DiscoverInputSchemaInput.new
        type.resource_arn = params[:resource_arn]
        type.service_execution_role = params[:service_execution_role]
        type.input_starting_position_configuration = InputStartingPositionConfiguration.build(params[:input_starting_position_configuration], context: "#{context}[:input_starting_position_configuration]") unless params[:input_starting_position_configuration].nil?
        type.s3_configuration = S3Configuration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.input_processing_configuration = InputProcessingConfiguration.build(params[:input_processing_configuration], context: "#{context}[:input_processing_configuration]") unless params[:input_processing_configuration].nil?
        type
      end
    end

    module DiscoverInputSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiscoverInputSchemaOutput, context: context)
        type = Types::DiscoverInputSchemaOutput.new
        type.input_schema = SourceSchema.build(params[:input_schema], context: "#{context}[:input_schema]") unless params[:input_schema].nil?
        type.parsed_input_records = ParsedInputRecords.build(params[:parsed_input_records], context: "#{context}[:parsed_input_records]") unless params[:parsed_input_records].nil?
        type.processed_input_records = ProcessedInputRecords.build(params[:processed_input_records], context: "#{context}[:processed_input_records]") unless params[:processed_input_records].nil?
        type.raw_input_records = RawInputRecords.build(params[:raw_input_records], context: "#{context}[:raw_input_records]") unless params[:raw_input_records].nil?
        type
      end
    end

    module EnvironmentProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentProperties, context: context)
        type = Types::EnvironmentProperties.new
        type.property_groups = PropertyGroups.build(params[:property_groups], context: "#{context}[:property_groups]") unless params[:property_groups].nil?
        type
      end
    end

    module EnvironmentPropertyDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentPropertyDescriptions, context: context)
        type = Types::EnvironmentPropertyDescriptions.new
        type.property_group_descriptions = PropertyGroups.build(params[:property_group_descriptions], context: "#{context}[:property_group_descriptions]") unless params[:property_group_descriptions].nil?
        type
      end
    end

    module EnvironmentPropertyUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentPropertyUpdates, context: context)
        type = Types::EnvironmentPropertyUpdates.new
        type.property_groups = PropertyGroups.build(params[:property_groups], context: "#{context}[:property_groups]") unless params[:property_groups].nil?
        type
      end
    end

    module FlinkApplicationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlinkApplicationConfiguration, context: context)
        type = Types::FlinkApplicationConfiguration.new
        type.checkpoint_configuration = CheckpointConfiguration.build(params[:checkpoint_configuration], context: "#{context}[:checkpoint_configuration]") unless params[:checkpoint_configuration].nil?
        type.monitoring_configuration = MonitoringConfiguration.build(params[:monitoring_configuration], context: "#{context}[:monitoring_configuration]") unless params[:monitoring_configuration].nil?
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type
      end
    end

    module FlinkApplicationConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlinkApplicationConfigurationDescription, context: context)
        type = Types::FlinkApplicationConfigurationDescription.new
        type.checkpoint_configuration_description = CheckpointConfigurationDescription.build(params[:checkpoint_configuration_description], context: "#{context}[:checkpoint_configuration_description]") unless params[:checkpoint_configuration_description].nil?
        type.monitoring_configuration_description = MonitoringConfigurationDescription.build(params[:monitoring_configuration_description], context: "#{context}[:monitoring_configuration_description]") unless params[:monitoring_configuration_description].nil?
        type.parallelism_configuration_description = ParallelismConfigurationDescription.build(params[:parallelism_configuration_description], context: "#{context}[:parallelism_configuration_description]") unless params[:parallelism_configuration_description].nil?
        type.job_plan_description = params[:job_plan_description]
        type
      end
    end

    module FlinkApplicationConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlinkApplicationConfigurationUpdate, context: context)
        type = Types::FlinkApplicationConfigurationUpdate.new
        type.checkpoint_configuration_update = CheckpointConfigurationUpdate.build(params[:checkpoint_configuration_update], context: "#{context}[:checkpoint_configuration_update]") unless params[:checkpoint_configuration_update].nil?
        type.monitoring_configuration_update = MonitoringConfigurationUpdate.build(params[:monitoring_configuration_update], context: "#{context}[:monitoring_configuration_update]") unless params[:monitoring_configuration_update].nil?
        type.parallelism_configuration_update = ParallelismConfigurationUpdate.build(params[:parallelism_configuration_update], context: "#{context}[:parallelism_configuration_update]") unless params[:parallelism_configuration_update].nil?
        type
      end
    end

    module FlinkRunConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlinkRunConfiguration, context: context)
        type = Types::FlinkRunConfiguration.new
        type.allow_non_restored_state = params[:allow_non_restored_state]
        type
      end
    end

    module GlueDataCatalogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlueDataCatalogConfiguration, context: context)
        type = Types::GlueDataCatalogConfiguration.new
        type.database_arn = params[:database_arn]
        type
      end
    end

    module GlueDataCatalogConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlueDataCatalogConfigurationDescription, context: context)
        type = Types::GlueDataCatalogConfigurationDescription.new
        type.database_arn = params[:database_arn]
        type
      end
    end

    module GlueDataCatalogConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlueDataCatalogConfigurationUpdate, context: context)
        type = Types::GlueDataCatalogConfigurationUpdate.new
        type.database_arn_update = params[:database_arn_update]
        type
      end
    end

    module InAppStreamNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Input, context: context)
        type = Types::Input.new
        type.name_prefix = params[:name_prefix]
        type.input_processing_configuration = InputProcessingConfiguration.build(params[:input_processing_configuration], context: "#{context}[:input_processing_configuration]") unless params[:input_processing_configuration].nil?
        type.kinesis_streams_input = KinesisStreamsInput.build(params[:kinesis_streams_input], context: "#{context}[:kinesis_streams_input]") unless params[:kinesis_streams_input].nil?
        type.kinesis_firehose_input = KinesisFirehoseInput.build(params[:kinesis_firehose_input], context: "#{context}[:kinesis_firehose_input]") unless params[:kinesis_firehose_input].nil?
        type.input_parallelism = InputParallelism.build(params[:input_parallelism], context: "#{context}[:input_parallelism]") unless params[:input_parallelism].nil?
        type.input_schema = SourceSchema.build(params[:input_schema], context: "#{context}[:input_schema]") unless params[:input_schema].nil?
        type
      end
    end

    module InputDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDescription, context: context)
        type = Types::InputDescription.new
        type.input_id = params[:input_id]
        type.name_prefix = params[:name_prefix]
        type.in_app_stream_names = InAppStreamNames.build(params[:in_app_stream_names], context: "#{context}[:in_app_stream_names]") unless params[:in_app_stream_names].nil?
        type.input_processing_configuration_description = InputProcessingConfigurationDescription.build(params[:input_processing_configuration_description], context: "#{context}[:input_processing_configuration_description]") unless params[:input_processing_configuration_description].nil?
        type.kinesis_streams_input_description = KinesisStreamsInputDescription.build(params[:kinesis_streams_input_description], context: "#{context}[:kinesis_streams_input_description]") unless params[:kinesis_streams_input_description].nil?
        type.kinesis_firehose_input_description = KinesisFirehoseInputDescription.build(params[:kinesis_firehose_input_description], context: "#{context}[:kinesis_firehose_input_description]") unless params[:kinesis_firehose_input_description].nil?
        type.input_schema = SourceSchema.build(params[:input_schema], context: "#{context}[:input_schema]") unless params[:input_schema].nil?
        type.input_parallelism = InputParallelism.build(params[:input_parallelism], context: "#{context}[:input_parallelism]") unless params[:input_parallelism].nil?
        type.input_starting_position_configuration = InputStartingPositionConfiguration.build(params[:input_starting_position_configuration], context: "#{context}[:input_starting_position_configuration]") unless params[:input_starting_position_configuration].nil?
        type
      end
    end

    module InputDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InputLambdaProcessor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputLambdaProcessor, context: context)
        type = Types::InputLambdaProcessor.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module InputLambdaProcessorDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputLambdaProcessorDescription, context: context)
        type = Types::InputLambdaProcessorDescription.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module InputLambdaProcessorUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputLambdaProcessorUpdate, context: context)
        type = Types::InputLambdaProcessorUpdate.new
        type.resource_arn_update = params[:resource_arn_update]
        type
      end
    end

    module InputParallelism
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputParallelism, context: context)
        type = Types::InputParallelism.new
        type.count = params[:count]
        type
      end
    end

    module InputParallelismUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputParallelismUpdate, context: context)
        type = Types::InputParallelismUpdate.new
        type.count_update = params[:count_update]
        type
      end
    end

    module InputProcessingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputProcessingConfiguration, context: context)
        type = Types::InputProcessingConfiguration.new
        type.input_lambda_processor = InputLambdaProcessor.build(params[:input_lambda_processor], context: "#{context}[:input_lambda_processor]") unless params[:input_lambda_processor].nil?
        type
      end
    end

    module InputProcessingConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputProcessingConfigurationDescription, context: context)
        type = Types::InputProcessingConfigurationDescription.new
        type.input_lambda_processor_description = InputLambdaProcessorDescription.build(params[:input_lambda_processor_description], context: "#{context}[:input_lambda_processor_description]") unless params[:input_lambda_processor_description].nil?
        type
      end
    end

    module InputProcessingConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputProcessingConfigurationUpdate, context: context)
        type = Types::InputProcessingConfigurationUpdate.new
        type.input_lambda_processor_update = InputLambdaProcessorUpdate.build(params[:input_lambda_processor_update], context: "#{context}[:input_lambda_processor_update]") unless params[:input_lambda_processor_update].nil?
        type
      end
    end

    module InputSchemaUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputSchemaUpdate, context: context)
        type = Types::InputSchemaUpdate.new
        type.record_format_update = RecordFormat.build(params[:record_format_update], context: "#{context}[:record_format_update]") unless params[:record_format_update].nil?
        type.record_encoding_update = params[:record_encoding_update]
        type.record_column_updates = RecordColumns.build(params[:record_column_updates], context: "#{context}[:record_column_updates]") unless params[:record_column_updates].nil?
        type
      end
    end

    module InputStartingPositionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputStartingPositionConfiguration, context: context)
        type = Types::InputStartingPositionConfiguration.new
        type.input_starting_position = params[:input_starting_position]
        type
      end
    end

    module InputUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputUpdate, context: context)
        type = Types::InputUpdate.new
        type.input_id = params[:input_id]
        type.name_prefix_update = params[:name_prefix_update]
        type.input_processing_configuration_update = InputProcessingConfigurationUpdate.build(params[:input_processing_configuration_update], context: "#{context}[:input_processing_configuration_update]") unless params[:input_processing_configuration_update].nil?
        type.kinesis_streams_input_update = KinesisStreamsInputUpdate.build(params[:kinesis_streams_input_update], context: "#{context}[:kinesis_streams_input_update]") unless params[:kinesis_streams_input_update].nil?
        type.kinesis_firehose_input_update = KinesisFirehoseInputUpdate.build(params[:kinesis_firehose_input_update], context: "#{context}[:kinesis_firehose_input_update]") unless params[:kinesis_firehose_input_update].nil?
        type.input_schema_update = InputSchemaUpdate.build(params[:input_schema_update], context: "#{context}[:input_schema_update]") unless params[:input_schema_update].nil?
        type.input_parallelism_update = InputParallelismUpdate.build(params[:input_parallelism_update], context: "#{context}[:input_parallelism_update]") unless params[:input_parallelism_update].nil?
        type
      end
    end

    module InputUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Inputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Input.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidApplicationConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidApplicationConfigurationException, context: context)
        type = Types::InvalidApplicationConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module JSONMappingParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JSONMappingParameters, context: context)
        type = Types::JSONMappingParameters.new
        type.record_row_path = params[:record_row_path]
        type
      end
    end

    module KinesisFirehoseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseInput, context: context)
        type = Types::KinesisFirehoseInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module KinesisFirehoseInputDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseInputDescription, context: context)
        type = Types::KinesisFirehoseInputDescription.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module KinesisFirehoseInputUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseInputUpdate, context: context)
        type = Types::KinesisFirehoseInputUpdate.new
        type.resource_arn_update = params[:resource_arn_update]
        type
      end
    end

    module KinesisFirehoseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseOutput, context: context)
        type = Types::KinesisFirehoseOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module KinesisFirehoseOutputDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseOutputDescription, context: context)
        type = Types::KinesisFirehoseOutputDescription.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module KinesisFirehoseOutputUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseOutputUpdate, context: context)
        type = Types::KinesisFirehoseOutputUpdate.new
        type.resource_arn_update = params[:resource_arn_update]
        type
      end
    end

    module KinesisStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamsInput, context: context)
        type = Types::KinesisStreamsInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module KinesisStreamsInputDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamsInputDescription, context: context)
        type = Types::KinesisStreamsInputDescription.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module KinesisStreamsInputUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamsInputUpdate, context: context)
        type = Types::KinesisStreamsInputUpdate.new
        type.resource_arn_update = params[:resource_arn_update]
        type
      end
    end

    module KinesisStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamsOutput, context: context)
        type = Types::KinesisStreamsOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module KinesisStreamsOutputDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamsOutputDescription, context: context)
        type = Types::KinesisStreamsOutputDescription.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module KinesisStreamsOutputUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamsOutputUpdate, context: context)
        type = Types::KinesisStreamsOutputUpdate.new
        type.resource_arn_update = params[:resource_arn_update]
        type
      end
    end

    module LambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaOutput, context: context)
        type = Types::LambdaOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module LambdaOutputDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaOutputDescription, context: context)
        type = Types::LambdaOutputDescription.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module LambdaOutputUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaOutputUpdate, context: context)
        type = Types::LambdaOutputUpdate.new
        type.resource_arn_update = params[:resource_arn_update]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListApplicationSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationSnapshotsInput, context: context)
        type = Types::ListApplicationSnapshotsInput.new
        type.application_name = params[:application_name]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationSnapshotsOutput, context: context)
        type = Types::ListApplicationSnapshotsOutput.new
        type.snapshot_summaries = SnapshotSummaries.build(params[:snapshot_summaries], context: "#{context}[:snapshot_summaries]") unless params[:snapshot_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationVersionsInput, context: context)
        type = Types::ListApplicationVersionsInput.new
        type.application_name = params[:application_name]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationVersionsOutput, context: context)
        type = Types::ListApplicationVersionsOutput.new
        type.application_version_summaries = ApplicationVersionSummaries.build(params[:application_version_summaries], context: "#{context}[:application_version_summaries]") unless params[:application_version_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.application_summaries = ApplicationSummaries.build(params[:application_summaries], context: "#{context}[:application_summaries]") unless params[:application_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MappingParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MappingParameters, context: context)
        type = Types::MappingParameters.new
        type.json_mapping_parameters = JSONMappingParameters.build(params[:json_mapping_parameters], context: "#{context}[:json_mapping_parameters]") unless params[:json_mapping_parameters].nil?
        type.csv_mapping_parameters = CSVMappingParameters.build(params[:csv_mapping_parameters], context: "#{context}[:csv_mapping_parameters]") unless params[:csv_mapping_parameters].nil?
        type
      end
    end

    module MavenReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MavenReference, context: context)
        type = Types::MavenReference.new
        type.group_id = params[:group_id]
        type.artifact_id = params[:artifact_id]
        type.version = params[:version]
        type
      end
    end

    module MonitoringConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringConfiguration, context: context)
        type = Types::MonitoringConfiguration.new
        type.configuration_type = params[:configuration_type]
        type.metrics_level = params[:metrics_level]
        type.log_level = params[:log_level]
        type
      end
    end

    module MonitoringConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringConfigurationDescription, context: context)
        type = Types::MonitoringConfigurationDescription.new
        type.configuration_type = params[:configuration_type]
        type.metrics_level = params[:metrics_level]
        type.log_level = params[:log_level]
        type
      end
    end

    module MonitoringConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringConfigurationUpdate, context: context)
        type = Types::MonitoringConfigurationUpdate.new
        type.configuration_type_update = params[:configuration_type_update]
        type.metrics_level_update = params[:metrics_level_update]
        type.log_level_update = params[:log_level_update]
        type
      end
    end

    module Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Output, context: context)
        type = Types::Output.new
        type.name = params[:name]
        type.kinesis_streams_output = KinesisStreamsOutput.build(params[:kinesis_streams_output], context: "#{context}[:kinesis_streams_output]") unless params[:kinesis_streams_output].nil?
        type.kinesis_firehose_output = KinesisFirehoseOutput.build(params[:kinesis_firehose_output], context: "#{context}[:kinesis_firehose_output]") unless params[:kinesis_firehose_output].nil?
        type.lambda_output = LambdaOutput.build(params[:lambda_output], context: "#{context}[:lambda_output]") unless params[:lambda_output].nil?
        type.destination_schema = DestinationSchema.build(params[:destination_schema], context: "#{context}[:destination_schema]") unless params[:destination_schema].nil?
        type
      end
    end

    module OutputDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDescription, context: context)
        type = Types::OutputDescription.new
        type.output_id = params[:output_id]
        type.name = params[:name]
        type.kinesis_streams_output_description = KinesisStreamsOutputDescription.build(params[:kinesis_streams_output_description], context: "#{context}[:kinesis_streams_output_description]") unless params[:kinesis_streams_output_description].nil?
        type.kinesis_firehose_output_description = KinesisFirehoseOutputDescription.build(params[:kinesis_firehose_output_description], context: "#{context}[:kinesis_firehose_output_description]") unless params[:kinesis_firehose_output_description].nil?
        type.lambda_output_description = LambdaOutputDescription.build(params[:lambda_output_description], context: "#{context}[:lambda_output_description]") unless params[:lambda_output_description].nil?
        type.destination_schema = DestinationSchema.build(params[:destination_schema], context: "#{context}[:destination_schema]") unless params[:destination_schema].nil?
        type
      end
    end

    module OutputDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OutputUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputUpdate, context: context)
        type = Types::OutputUpdate.new
        type.output_id = params[:output_id]
        type.name_update = params[:name_update]
        type.kinesis_streams_output_update = KinesisStreamsOutputUpdate.build(params[:kinesis_streams_output_update], context: "#{context}[:kinesis_streams_output_update]") unless params[:kinesis_streams_output_update].nil?
        type.kinesis_firehose_output_update = KinesisFirehoseOutputUpdate.build(params[:kinesis_firehose_output_update], context: "#{context}[:kinesis_firehose_output_update]") unless params[:kinesis_firehose_output_update].nil?
        type.lambda_output_update = LambdaOutputUpdate.build(params[:lambda_output_update], context: "#{context}[:lambda_output_update]") unless params[:lambda_output_update].nil?
        type.destination_schema_update = DestinationSchema.build(params[:destination_schema_update], context: "#{context}[:destination_schema_update]") unless params[:destination_schema_update].nil?
        type
      end
    end

    module OutputUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Outputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Output.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParallelismConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParallelismConfiguration, context: context)
        type = Types::ParallelismConfiguration.new
        type.configuration_type = params[:configuration_type]
        type.parallelism = params[:parallelism]
        type.parallelism_per_kpu = params[:parallelism_per_kpu]
        type.auto_scaling_enabled = params[:auto_scaling_enabled]
        type
      end
    end

    module ParallelismConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParallelismConfigurationDescription, context: context)
        type = Types::ParallelismConfigurationDescription.new
        type.configuration_type = params[:configuration_type]
        type.parallelism = params[:parallelism]
        type.parallelism_per_kpu = params[:parallelism_per_kpu]
        type.current_parallelism = params[:current_parallelism]
        type.auto_scaling_enabled = params[:auto_scaling_enabled]
        type
      end
    end

    module ParallelismConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParallelismConfigurationUpdate, context: context)
        type = Types::ParallelismConfigurationUpdate.new
        type.configuration_type_update = params[:configuration_type_update]
        type.parallelism_update = params[:parallelism_update]
        type.parallelism_per_kpu_update = params[:parallelism_per_kpu_update]
        type.auto_scaling_enabled_update = params[:auto_scaling_enabled_update]
        type
      end
    end

    module ParsedInputRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ParsedInputRecords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParsedInputRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProcessedInputRecords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PropertyGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyGroup, context: context)
        type = Types::PropertyGroup.new
        type.property_group_id = params[:property_group_id]
        type.property_map = PropertyMap.build(params[:property_map], context: "#{context}[:property_map]") unless params[:property_map].nil?
        type
      end
    end

    module PropertyGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PropertyMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RawInputRecords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecordColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordColumn, context: context)
        type = Types::RecordColumn.new
        type.name = params[:name]
        type.mapping = params[:mapping]
        type.sql_type = params[:sql_type]
        type
      end
    end

    module RecordColumns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecordColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordFormat
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordFormat, context: context)
        type = Types::RecordFormat.new
        type.record_format_type = params[:record_format_type]
        type.mapping_parameters = MappingParameters.build(params[:mapping_parameters], context: "#{context}[:mapping_parameters]") unless params[:mapping_parameters].nil?
        type
      end
    end

    module ReferenceDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReferenceDataSource, context: context)
        type = Types::ReferenceDataSource.new
        type.table_name = params[:table_name]
        type.s3_reference_data_source = S3ReferenceDataSource.build(params[:s3_reference_data_source], context: "#{context}[:s3_reference_data_source]") unless params[:s3_reference_data_source].nil?
        type.reference_schema = SourceSchema.build(params[:reference_schema], context: "#{context}[:reference_schema]") unless params[:reference_schema].nil?
        type
      end
    end

    module ReferenceDataSourceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReferenceDataSourceDescription, context: context)
        type = Types::ReferenceDataSourceDescription.new
        type.reference_id = params[:reference_id]
        type.table_name = params[:table_name]
        type.s3_reference_data_source_description = S3ReferenceDataSourceDescription.build(params[:s3_reference_data_source_description], context: "#{context}[:s3_reference_data_source_description]") unless params[:s3_reference_data_source_description].nil?
        type.reference_schema = SourceSchema.build(params[:reference_schema], context: "#{context}[:reference_schema]") unless params[:reference_schema].nil?
        type
      end
    end

    module ReferenceDataSourceDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReferenceDataSourceDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReferenceDataSourceUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReferenceDataSourceUpdate, context: context)
        type = Types::ReferenceDataSourceUpdate.new
        type.reference_id = params[:reference_id]
        type.table_name_update = params[:table_name_update]
        type.s3_reference_data_source_update = S3ReferenceDataSourceUpdate.build(params[:s3_reference_data_source_update], context: "#{context}[:s3_reference_data_source_update]") unless params[:s3_reference_data_source_update].nil?
        type.reference_schema_update = SourceSchema.build(params[:reference_schema_update], context: "#{context}[:reference_schema_update]") unless params[:reference_schema_update].nil?
        type
      end
    end

    module ReferenceDataSourceUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReferenceDataSourceUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReferenceDataSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReferenceDataSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceProvisionedThroughputExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceProvisionedThroughputExceededException, context: context)
        type = Types::ResourceProvisionedThroughputExceededException.new
        type.message = params[:message]
        type
      end
    end

    module RollbackApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackApplicationInput, context: context)
        type = Types::RollbackApplicationInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type
      end
    end

    module RollbackApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackApplicationOutput, context: context)
        type = Types::RollbackApplicationOutput.new
        type.application_detail = ApplicationDetail.build(params[:application_detail], context: "#{context}[:application_detail]") unless params[:application_detail].nil?
        type
      end
    end

    module RunConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunConfiguration, context: context)
        type = Types::RunConfiguration.new
        type.flink_run_configuration = FlinkRunConfiguration.build(params[:flink_run_configuration], context: "#{context}[:flink_run_configuration]") unless params[:flink_run_configuration].nil?
        type.sql_run_configurations = SqlRunConfigurations.build(params[:sql_run_configurations], context: "#{context}[:sql_run_configurations]") unless params[:sql_run_configurations].nil?
        type.application_restore_configuration = ApplicationRestoreConfiguration.build(params[:application_restore_configuration], context: "#{context}[:application_restore_configuration]") unless params[:application_restore_configuration].nil?
        type
      end
    end

    module RunConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunConfigurationDescription, context: context)
        type = Types::RunConfigurationDescription.new
        type.application_restore_configuration_description = ApplicationRestoreConfiguration.build(params[:application_restore_configuration_description], context: "#{context}[:application_restore_configuration_description]") unless params[:application_restore_configuration_description].nil?
        type.flink_run_configuration_description = FlinkRunConfiguration.build(params[:flink_run_configuration_description], context: "#{context}[:flink_run_configuration_description]") unless params[:flink_run_configuration_description].nil?
        type
      end
    end

    module RunConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunConfigurationUpdate, context: context)
        type = Types::RunConfigurationUpdate.new
        type.flink_run_configuration = FlinkRunConfiguration.build(params[:flink_run_configuration], context: "#{context}[:flink_run_configuration]") unless params[:flink_run_configuration].nil?
        type.application_restore_configuration = ApplicationRestoreConfiguration.build(params[:application_restore_configuration], context: "#{context}[:application_restore_configuration]") unless params[:application_restore_configuration].nil?
        type
      end
    end

    module S3ApplicationCodeLocationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ApplicationCodeLocationDescription, context: context)
        type = Types::S3ApplicationCodeLocationDescription.new
        type.bucket_arn = params[:bucket_arn]
        type.file_key = params[:file_key]
        type.object_version = params[:object_version]
        type
      end
    end

    module S3Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Configuration, context: context)
        type = Types::S3Configuration.new
        type.bucket_arn = params[:bucket_arn]
        type.file_key = params[:file_key]
        type
      end
    end

    module S3ContentBaseLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ContentBaseLocation, context: context)
        type = Types::S3ContentBaseLocation.new
        type.bucket_arn = params[:bucket_arn]
        type.base_path = params[:base_path]
        type
      end
    end

    module S3ContentBaseLocationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ContentBaseLocationDescription, context: context)
        type = Types::S3ContentBaseLocationDescription.new
        type.bucket_arn = params[:bucket_arn]
        type.base_path = params[:base_path]
        type
      end
    end

    module S3ContentBaseLocationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ContentBaseLocationUpdate, context: context)
        type = Types::S3ContentBaseLocationUpdate.new
        type.bucket_arn_update = params[:bucket_arn_update]
        type.base_path_update = params[:base_path_update]
        type
      end
    end

    module S3ContentLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ContentLocation, context: context)
        type = Types::S3ContentLocation.new
        type.bucket_arn = params[:bucket_arn]
        type.file_key = params[:file_key]
        type.object_version = params[:object_version]
        type
      end
    end

    module S3ContentLocationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ContentLocationUpdate, context: context)
        type = Types::S3ContentLocationUpdate.new
        type.bucket_arn_update = params[:bucket_arn_update]
        type.file_key_update = params[:file_key_update]
        type.object_version_update = params[:object_version_update]
        type
      end
    end

    module S3ReferenceDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ReferenceDataSource, context: context)
        type = Types::S3ReferenceDataSource.new
        type.bucket_arn = params[:bucket_arn]
        type.file_key = params[:file_key]
        type
      end
    end

    module S3ReferenceDataSourceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ReferenceDataSourceDescription, context: context)
        type = Types::S3ReferenceDataSourceDescription.new
        type.bucket_arn = params[:bucket_arn]
        type.file_key = params[:file_key]
        type.reference_role_arn = params[:reference_role_arn]
        type
      end
    end

    module S3ReferenceDataSourceUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ReferenceDataSourceUpdate, context: context)
        type = Types::S3ReferenceDataSourceUpdate.new
        type.bucket_arn_update = params[:bucket_arn_update]
        type.file_key_update = params[:file_key_update]
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotDetails, context: context)
        type = Types::SnapshotDetails.new
        type.snapshot_name = params[:snapshot_name]
        type.snapshot_status = params[:snapshot_status]
        type.application_version_id = params[:application_version_id]
        type.snapshot_creation_timestamp = params[:snapshot_creation_timestamp]
        type
      end
    end

    module SnapshotSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnapshotDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceSchema, context: context)
        type = Types::SourceSchema.new
        type.record_format = RecordFormat.build(params[:record_format], context: "#{context}[:record_format]") unless params[:record_format].nil?
        type.record_encoding = params[:record_encoding]
        type.record_columns = RecordColumns.build(params[:record_columns], context: "#{context}[:record_columns]") unless params[:record_columns].nil?
        type
      end
    end

    module SqlApplicationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlApplicationConfiguration, context: context)
        type = Types::SqlApplicationConfiguration.new
        type.inputs = Inputs.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.outputs = Outputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.reference_data_sources = ReferenceDataSources.build(params[:reference_data_sources], context: "#{context}[:reference_data_sources]") unless params[:reference_data_sources].nil?
        type
      end
    end

    module SqlApplicationConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlApplicationConfigurationDescription, context: context)
        type = Types::SqlApplicationConfigurationDescription.new
        type.input_descriptions = InputDescriptions.build(params[:input_descriptions], context: "#{context}[:input_descriptions]") unless params[:input_descriptions].nil?
        type.output_descriptions = OutputDescriptions.build(params[:output_descriptions], context: "#{context}[:output_descriptions]") unless params[:output_descriptions].nil?
        type.reference_data_source_descriptions = ReferenceDataSourceDescriptions.build(params[:reference_data_source_descriptions], context: "#{context}[:reference_data_source_descriptions]") unless params[:reference_data_source_descriptions].nil?
        type
      end
    end

    module SqlApplicationConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlApplicationConfigurationUpdate, context: context)
        type = Types::SqlApplicationConfigurationUpdate.new
        type.input_updates = InputUpdates.build(params[:input_updates], context: "#{context}[:input_updates]") unless params[:input_updates].nil?
        type.output_updates = OutputUpdates.build(params[:output_updates], context: "#{context}[:output_updates]") unless params[:output_updates].nil?
        type.reference_data_source_updates = ReferenceDataSourceUpdates.build(params[:reference_data_source_updates], context: "#{context}[:reference_data_source_updates]") unless params[:reference_data_source_updates].nil?
        type
      end
    end

    module SqlRunConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlRunConfiguration, context: context)
        type = Types::SqlRunConfiguration.new
        type.input_id = params[:input_id]
        type.input_starting_position_configuration = InputStartingPositionConfiguration.build(params[:input_starting_position_configuration], context: "#{context}[:input_starting_position_configuration]") unless params[:input_starting_position_configuration].nil?
        type
      end
    end

    module SqlRunConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SqlRunConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartApplicationInput, context: context)
        type = Types::StartApplicationInput.new
        type.application_name = params[:application_name]
        type.run_configuration = RunConfiguration.build(params[:run_configuration], context: "#{context}[:run_configuration]") unless params[:run_configuration].nil?
        type
      end
    end

    module StartApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartApplicationOutput, context: context)
        type = Types::StartApplicationOutput.new
        type
      end
    end

    module StopApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopApplicationInput, context: context)
        type = Types::StopApplicationInput.new
        type.application_name = params[:application_name]
        type.force = params[:force]
        type
      end
    end

    module StopApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopApplicationOutput, context: context)
        type = Types::StopApplicationOutput.new
        type
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UnableToDetectSchemaException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnableToDetectSchemaException, context: context)
        type = Types::UnableToDetectSchemaException.new
        type.message = params[:message]
        type.raw_input_records = RawInputRecords.build(params[:raw_input_records], context: "#{context}[:raw_input_records]") unless params[:raw_input_records].nil?
        type.processed_input_records = ProcessedInputRecords.build(params[:processed_input_records], context: "#{context}[:processed_input_records]") unless params[:processed_input_records].nil?
        type
      end
    end

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.application_configuration_update = ApplicationConfigurationUpdate.build(params[:application_configuration_update], context: "#{context}[:application_configuration_update]") unless params[:application_configuration_update].nil?
        type.service_execution_role_update = params[:service_execution_role_update]
        type.run_configuration_update = RunConfigurationUpdate.build(params[:run_configuration_update], context: "#{context}[:run_configuration_update]") unless params[:run_configuration_update].nil?
        type.cloud_watch_logging_option_updates = CloudWatchLoggingOptionUpdates.build(params[:cloud_watch_logging_option_updates], context: "#{context}[:cloud_watch_logging_option_updates]") unless params[:cloud_watch_logging_option_updates].nil?
        type.conditional_token = params[:conditional_token]
        type
      end
    end

    module UpdateApplicationMaintenanceConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationMaintenanceConfigurationInput, context: context)
        type = Types::UpdateApplicationMaintenanceConfigurationInput.new
        type.application_name = params[:application_name]
        type.application_maintenance_configuration_update = ApplicationMaintenanceConfigurationUpdate.build(params[:application_maintenance_configuration_update], context: "#{context}[:application_maintenance_configuration_update]") unless params[:application_maintenance_configuration_update].nil?
        type
      end
    end

    module UpdateApplicationMaintenanceConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationMaintenanceConfigurationOutput, context: context)
        type = Types::UpdateApplicationMaintenanceConfigurationOutput.new
        type.application_arn = params[:application_arn]
        type.application_maintenance_configuration_description = ApplicationMaintenanceConfigurationDescription.build(params[:application_maintenance_configuration_description], context: "#{context}[:application_maintenance_configuration_description]") unless params[:application_maintenance_configuration_description].nil?
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type.application_detail = ApplicationDetail.build(params[:application_detail], context: "#{context}[:application_detail]") unless params[:application_detail].nil?
        type
      end
    end

    module VpcConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfiguration, context: context)
        type = Types::VpcConfiguration.new
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module VpcConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfigurationDescription, context: context)
        type = Types::VpcConfigurationDescription.new
        type.vpc_configuration_id = params[:vpc_configuration_id]
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module VpcConfigurationDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcConfigurationDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfigurationUpdate, context: context)
        type = Types::VpcConfigurationUpdate.new
        type.vpc_configuration_id = params[:vpc_configuration_id]
        type.subnet_id_updates = SubnetIds.build(params[:subnet_id_updates], context: "#{context}[:subnet_id_updates]") unless params[:subnet_id_updates].nil?
        type.security_group_id_updates = SecurityGroupIds.build(params[:security_group_id_updates], context: "#{context}[:security_group_id_updates]") unless params[:security_group_id_updates].nil?
        type
      end
    end

    module VpcConfigurationUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcConfigurationUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ZeppelinApplicationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZeppelinApplicationConfiguration, context: context)
        type = Types::ZeppelinApplicationConfiguration.new
        type.monitoring_configuration = ZeppelinMonitoringConfiguration.build(params[:monitoring_configuration], context: "#{context}[:monitoring_configuration]") unless params[:monitoring_configuration].nil?
        type.catalog_configuration = CatalogConfiguration.build(params[:catalog_configuration], context: "#{context}[:catalog_configuration]") unless params[:catalog_configuration].nil?
        type.deploy_as_application_configuration = DeployAsApplicationConfiguration.build(params[:deploy_as_application_configuration], context: "#{context}[:deploy_as_application_configuration]") unless params[:deploy_as_application_configuration].nil?
        type.custom_artifacts_configuration = CustomArtifactsConfigurationList.build(params[:custom_artifacts_configuration], context: "#{context}[:custom_artifacts_configuration]") unless params[:custom_artifacts_configuration].nil?
        type
      end
    end

    module ZeppelinApplicationConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZeppelinApplicationConfigurationDescription, context: context)
        type = Types::ZeppelinApplicationConfigurationDescription.new
        type.monitoring_configuration_description = ZeppelinMonitoringConfigurationDescription.build(params[:monitoring_configuration_description], context: "#{context}[:monitoring_configuration_description]") unless params[:monitoring_configuration_description].nil?
        type.catalog_configuration_description = CatalogConfigurationDescription.build(params[:catalog_configuration_description], context: "#{context}[:catalog_configuration_description]") unless params[:catalog_configuration_description].nil?
        type.deploy_as_application_configuration_description = DeployAsApplicationConfigurationDescription.build(params[:deploy_as_application_configuration_description], context: "#{context}[:deploy_as_application_configuration_description]") unless params[:deploy_as_application_configuration_description].nil?
        type.custom_artifacts_configuration_description = CustomArtifactsConfigurationDescriptionList.build(params[:custom_artifacts_configuration_description], context: "#{context}[:custom_artifacts_configuration_description]") unless params[:custom_artifacts_configuration_description].nil?
        type
      end
    end

    module ZeppelinApplicationConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZeppelinApplicationConfigurationUpdate, context: context)
        type = Types::ZeppelinApplicationConfigurationUpdate.new
        type.monitoring_configuration_update = ZeppelinMonitoringConfigurationUpdate.build(params[:monitoring_configuration_update], context: "#{context}[:monitoring_configuration_update]") unless params[:monitoring_configuration_update].nil?
        type.catalog_configuration_update = CatalogConfigurationUpdate.build(params[:catalog_configuration_update], context: "#{context}[:catalog_configuration_update]") unless params[:catalog_configuration_update].nil?
        type.deploy_as_application_configuration_update = DeployAsApplicationConfigurationUpdate.build(params[:deploy_as_application_configuration_update], context: "#{context}[:deploy_as_application_configuration_update]") unless params[:deploy_as_application_configuration_update].nil?
        type.custom_artifacts_configuration_update = CustomArtifactsConfigurationList.build(params[:custom_artifacts_configuration_update], context: "#{context}[:custom_artifacts_configuration_update]") unless params[:custom_artifacts_configuration_update].nil?
        type
      end
    end

    module ZeppelinMonitoringConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZeppelinMonitoringConfiguration, context: context)
        type = Types::ZeppelinMonitoringConfiguration.new
        type.log_level = params[:log_level]
        type
      end
    end

    module ZeppelinMonitoringConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZeppelinMonitoringConfigurationDescription, context: context)
        type = Types::ZeppelinMonitoringConfigurationDescription.new
        type.log_level = params[:log_level]
        type
      end
    end

    module ZeppelinMonitoringConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZeppelinMonitoringConfigurationUpdate, context: context)
        type = Types::ZeppelinMonitoringConfigurationUpdate.new
        type.log_level_update = params[:log_level_update]
        type
      end
    end

  end
end
