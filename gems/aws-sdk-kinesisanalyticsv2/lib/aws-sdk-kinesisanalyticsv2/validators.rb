# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisAnalyticsV2
  module Validators

    class AddApplicationCloudWatchLoggingOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationCloudWatchLoggingOptionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Validators::CloudWatchLoggingOption.validate!(input[:cloud_watch_logging_option], context: "#{context}[:cloud_watch_logging_option]") unless input[:cloud_watch_logging_option].nil?
        Hearth::Validator.validate!(input[:conditional_token], ::String, context: "#{context}[:conditional_token]")
      end
    end

    class AddApplicationCloudWatchLoggingOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationCloudWatchLoggingOptionOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Validators::CloudWatchLoggingOptionDescriptions.validate!(input[:cloud_watch_logging_option_descriptions], context: "#{context}[:cloud_watch_logging_option_descriptions]") unless input[:cloud_watch_logging_option_descriptions].nil?
      end
    end

    class AddApplicationInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationInputInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Validators::Input.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
      end
    end

    class AddApplicationInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationInputOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Validators::InputDescriptions.validate!(input[:input_descriptions], context: "#{context}[:input_descriptions]") unless input[:input_descriptions].nil?
      end
    end

    class AddApplicationInputProcessingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationInputProcessingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
        Validators::InputProcessingConfiguration.validate!(input[:input_processing_configuration], context: "#{context}[:input_processing_configuration]") unless input[:input_processing_configuration].nil?
      end
    end

    class AddApplicationInputProcessingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationInputProcessingConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
        Validators::InputProcessingConfigurationDescription.validate!(input[:input_processing_configuration_description], context: "#{context}[:input_processing_configuration_description]") unless input[:input_processing_configuration_description].nil?
      end
    end

    class AddApplicationOutputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationOutputInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Validators::Output.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
      end
    end

    class AddApplicationOutputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationOutputOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Validators::OutputDescriptions.validate!(input[:output_descriptions], context: "#{context}[:output_descriptions]") unless input[:output_descriptions].nil?
      end
    end

    class AddApplicationReferenceDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationReferenceDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Validators::ReferenceDataSource.validate!(input[:reference_data_source], context: "#{context}[:reference_data_source]") unless input[:reference_data_source].nil?
      end
    end

    class AddApplicationReferenceDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationReferenceDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Validators::ReferenceDataSourceDescriptions.validate!(input[:reference_data_source_descriptions], context: "#{context}[:reference_data_source_descriptions]") unless input[:reference_data_source_descriptions].nil?
      end
    end

    class AddApplicationVpcConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationVpcConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Validators::VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        Hearth::Validator.validate!(input[:conditional_token], ::String, context: "#{context}[:conditional_token]")
      end
    end

    class AddApplicationVpcConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationVpcConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Validators::VpcConfigurationDescription.validate!(input[:vpc_configuration_description], context: "#{context}[:vpc_configuration_description]") unless input[:vpc_configuration_description].nil?
      end
    end

    class ApplicationCodeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationCodeConfiguration, context: context)
        Validators::CodeContent.validate!(input[:code_content], context: "#{context}[:code_content]") unless input[:code_content].nil?
        Hearth::Validator.validate!(input[:code_content_type], ::String, context: "#{context}[:code_content_type]")
      end
    end

    class ApplicationCodeConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationCodeConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:code_content_type], ::String, context: "#{context}[:code_content_type]")
        Validators::CodeContentDescription.validate!(input[:code_content_description], context: "#{context}[:code_content_description]") unless input[:code_content_description].nil?
      end
    end

    class ApplicationCodeConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationCodeConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:code_content_type_update], ::String, context: "#{context}[:code_content_type_update]")
        Validators::CodeContentUpdate.validate!(input[:code_content_update], context: "#{context}[:code_content_update]") unless input[:code_content_update].nil?
      end
    end

    class ApplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationConfiguration, context: context)
        Validators::SqlApplicationConfiguration.validate!(input[:sql_application_configuration], context: "#{context}[:sql_application_configuration]") unless input[:sql_application_configuration].nil?
        Validators::FlinkApplicationConfiguration.validate!(input[:flink_application_configuration], context: "#{context}[:flink_application_configuration]") unless input[:flink_application_configuration].nil?
        Validators::EnvironmentProperties.validate!(input[:environment_properties], context: "#{context}[:environment_properties]") unless input[:environment_properties].nil?
        Validators::ApplicationCodeConfiguration.validate!(input[:application_code_configuration], context: "#{context}[:application_code_configuration]") unless input[:application_code_configuration].nil?
        Validators::ApplicationSnapshotConfiguration.validate!(input[:application_snapshot_configuration], context: "#{context}[:application_snapshot_configuration]") unless input[:application_snapshot_configuration].nil?
        Validators::VpcConfigurations.validate!(input[:vpc_configurations], context: "#{context}[:vpc_configurations]") unless input[:vpc_configurations].nil?
        Validators::ZeppelinApplicationConfiguration.validate!(input[:zeppelin_application_configuration], context: "#{context}[:zeppelin_application_configuration]") unless input[:zeppelin_application_configuration].nil?
      end
    end

    class ApplicationConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationConfigurationDescription, context: context)
        Validators::SqlApplicationConfigurationDescription.validate!(input[:sql_application_configuration_description], context: "#{context}[:sql_application_configuration_description]") unless input[:sql_application_configuration_description].nil?
        Validators::ApplicationCodeConfigurationDescription.validate!(input[:application_code_configuration_description], context: "#{context}[:application_code_configuration_description]") unless input[:application_code_configuration_description].nil?
        Validators::RunConfigurationDescription.validate!(input[:run_configuration_description], context: "#{context}[:run_configuration_description]") unless input[:run_configuration_description].nil?
        Validators::FlinkApplicationConfigurationDescription.validate!(input[:flink_application_configuration_description], context: "#{context}[:flink_application_configuration_description]") unless input[:flink_application_configuration_description].nil?
        Validators::EnvironmentPropertyDescriptions.validate!(input[:environment_property_descriptions], context: "#{context}[:environment_property_descriptions]") unless input[:environment_property_descriptions].nil?
        Validators::ApplicationSnapshotConfigurationDescription.validate!(input[:application_snapshot_configuration_description], context: "#{context}[:application_snapshot_configuration_description]") unless input[:application_snapshot_configuration_description].nil?
        Validators::VpcConfigurationDescriptions.validate!(input[:vpc_configuration_descriptions], context: "#{context}[:vpc_configuration_descriptions]") unless input[:vpc_configuration_descriptions].nil?
        Validators::ZeppelinApplicationConfigurationDescription.validate!(input[:zeppelin_application_configuration_description], context: "#{context}[:zeppelin_application_configuration_description]") unless input[:zeppelin_application_configuration_description].nil?
      end
    end

    class ApplicationConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationConfigurationUpdate, context: context)
        Validators::SqlApplicationConfigurationUpdate.validate!(input[:sql_application_configuration_update], context: "#{context}[:sql_application_configuration_update]") unless input[:sql_application_configuration_update].nil?
        Validators::ApplicationCodeConfigurationUpdate.validate!(input[:application_code_configuration_update], context: "#{context}[:application_code_configuration_update]") unless input[:application_code_configuration_update].nil?
        Validators::FlinkApplicationConfigurationUpdate.validate!(input[:flink_application_configuration_update], context: "#{context}[:flink_application_configuration_update]") unless input[:flink_application_configuration_update].nil?
        Validators::EnvironmentPropertyUpdates.validate!(input[:environment_property_updates], context: "#{context}[:environment_property_updates]") unless input[:environment_property_updates].nil?
        Validators::ApplicationSnapshotConfigurationUpdate.validate!(input[:application_snapshot_configuration_update], context: "#{context}[:application_snapshot_configuration_update]") unless input[:application_snapshot_configuration_update].nil?
        Validators::VpcConfigurationUpdates.validate!(input[:vpc_configuration_updates], context: "#{context}[:vpc_configuration_updates]") unless input[:vpc_configuration_updates].nil?
        Validators::ZeppelinApplicationConfigurationUpdate.validate!(input[:zeppelin_application_configuration_update], context: "#{context}[:zeppelin_application_configuration_update]") unless input[:zeppelin_application_configuration_update].nil?
      end
    end

    class ApplicationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationDetail, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_description], ::String, context: "#{context}[:application_description]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:runtime_environment], ::String, context: "#{context}[:runtime_environment]")
        Hearth::Validator.validate!(input[:service_execution_role], ::String, context: "#{context}[:service_execution_role]")
        Hearth::Validator.validate!(input[:application_status], ::String, context: "#{context}[:application_status]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Hearth::Validator.validate!(input[:create_timestamp], ::Time, context: "#{context}[:create_timestamp]")
        Hearth::Validator.validate!(input[:last_update_timestamp], ::Time, context: "#{context}[:last_update_timestamp]")
        Validators::ApplicationConfigurationDescription.validate!(input[:application_configuration_description], context: "#{context}[:application_configuration_description]") unless input[:application_configuration_description].nil?
        Validators::CloudWatchLoggingOptionDescriptions.validate!(input[:cloud_watch_logging_option_descriptions], context: "#{context}[:cloud_watch_logging_option_descriptions]") unless input[:cloud_watch_logging_option_descriptions].nil?
        Validators::ApplicationMaintenanceConfigurationDescription.validate!(input[:application_maintenance_configuration_description], context: "#{context}[:application_maintenance_configuration_description]") unless input[:application_maintenance_configuration_description].nil?
        Hearth::Validator.validate!(input[:application_version_updated_from], ::Integer, context: "#{context}[:application_version_updated_from]")
        Hearth::Validator.validate!(input[:application_version_rolled_back_from], ::Integer, context: "#{context}[:application_version_rolled_back_from]")
        Hearth::Validator.validate!(input[:conditional_token], ::String, context: "#{context}[:conditional_token]")
        Hearth::Validator.validate!(input[:application_version_rolled_back_to], ::Integer, context: "#{context}[:application_version_rolled_back_to]")
        Hearth::Validator.validate!(input[:application_mode], ::String, context: "#{context}[:application_mode]")
      end
    end

    class ApplicationMaintenanceConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationMaintenanceConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:application_maintenance_window_start_time], ::String, context: "#{context}[:application_maintenance_window_start_time]")
        Hearth::Validator.validate!(input[:application_maintenance_window_end_time], ::String, context: "#{context}[:application_maintenance_window_end_time]")
      end
    end

    class ApplicationMaintenanceConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationMaintenanceConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:application_maintenance_window_start_time_update], ::String, context: "#{context}[:application_maintenance_window_start_time_update]")
      end
    end

    class ApplicationRestoreConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationRestoreConfiguration, context: context)
        Hearth::Validator.validate!(input[:application_restore_type], ::String, context: "#{context}[:application_restore_type]")
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
      end
    end

    class ApplicationSnapshotConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSnapshotConfiguration, context: context)
        Hearth::Validator.validate!(input[:snapshots_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:snapshots_enabled]")
      end
    end

    class ApplicationSnapshotConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSnapshotConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:snapshots_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:snapshots_enabled]")
      end
    end

    class ApplicationSnapshotConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSnapshotConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:snapshots_enabled_update], ::TrueClass, ::FalseClass, context: "#{context}[:snapshots_enabled_update]")
      end
    end

    class ApplicationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSummary, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_status], ::String, context: "#{context}[:application_status]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Hearth::Validator.validate!(input[:runtime_environment], ::String, context: "#{context}[:runtime_environment]")
        Hearth::Validator.validate!(input[:application_mode], ::String, context: "#{context}[:application_mode]")
      end
    end

    class ApplicationVersionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationVersionSummary, context: context)
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Hearth::Validator.validate!(input[:application_status], ::String, context: "#{context}[:application_status]")
      end
    end

    class CSVMappingParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CSVMappingParameters, context: context)
        Hearth::Validator.validate!(input[:record_row_delimiter], ::String, context: "#{context}[:record_row_delimiter]")
        Hearth::Validator.validate!(input[:record_column_delimiter], ::String, context: "#{context}[:record_column_delimiter]")
      end
    end

    class CatalogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogConfiguration, context: context)
        Validators::GlueDataCatalogConfiguration.validate!(input[:glue_data_catalog_configuration], context: "#{context}[:glue_data_catalog_configuration]") unless input[:glue_data_catalog_configuration].nil?
      end
    end

    class CatalogConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogConfigurationDescription, context: context)
        Validators::GlueDataCatalogConfigurationDescription.validate!(input[:glue_data_catalog_configuration_description], context: "#{context}[:glue_data_catalog_configuration_description]") unless input[:glue_data_catalog_configuration_description].nil?
      end
    end

    class CatalogConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogConfigurationUpdate, context: context)
        Validators::GlueDataCatalogConfigurationUpdate.validate!(input[:glue_data_catalog_configuration_update], context: "#{context}[:glue_data_catalog_configuration_update]") unless input[:glue_data_catalog_configuration_update].nil?
      end
    end

    class CheckpointConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckpointConfiguration, context: context)
        Hearth::Validator.validate!(input[:configuration_type], ::String, context: "#{context}[:configuration_type]")
        Hearth::Validator.validate!(input[:checkpointing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:checkpointing_enabled]")
        Hearth::Validator.validate!(input[:checkpoint_interval], ::Integer, context: "#{context}[:checkpoint_interval]")
        Hearth::Validator.validate!(input[:min_pause_between_checkpoints], ::Integer, context: "#{context}[:min_pause_between_checkpoints]")
      end
    end

    class CheckpointConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckpointConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:configuration_type], ::String, context: "#{context}[:configuration_type]")
        Hearth::Validator.validate!(input[:checkpointing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:checkpointing_enabled]")
        Hearth::Validator.validate!(input[:checkpoint_interval], ::Integer, context: "#{context}[:checkpoint_interval]")
        Hearth::Validator.validate!(input[:min_pause_between_checkpoints], ::Integer, context: "#{context}[:min_pause_between_checkpoints]")
      end
    end

    class CheckpointConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckpointConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:configuration_type_update], ::String, context: "#{context}[:configuration_type_update]")
        Hearth::Validator.validate!(input[:checkpointing_enabled_update], ::TrueClass, ::FalseClass, context: "#{context}[:checkpointing_enabled_update]")
        Hearth::Validator.validate!(input[:checkpoint_interval_update], ::Integer, context: "#{context}[:checkpoint_interval_update]")
        Hearth::Validator.validate!(input[:min_pause_between_checkpoints_update], ::Integer, context: "#{context}[:min_pause_between_checkpoints_update]")
      end
    end

    class CloudWatchLoggingOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLoggingOption, context: context)
        Hearth::Validator.validate!(input[:log_stream_arn], ::String, context: "#{context}[:log_stream_arn]")
      end
    end

    class CloudWatchLoggingOptionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLoggingOptionDescription, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_logging_option_id], ::String, context: "#{context}[:cloud_watch_logging_option_id]")
        Hearth::Validator.validate!(input[:log_stream_arn], ::String, context: "#{context}[:log_stream_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class CloudWatchLoggingOptionDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CloudWatchLoggingOptionDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudWatchLoggingOptionUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLoggingOptionUpdate, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_logging_option_id], ::String, context: "#{context}[:cloud_watch_logging_option_id]")
        Hearth::Validator.validate!(input[:log_stream_arn_update], ::String, context: "#{context}[:log_stream_arn_update]")
      end
    end

    class CloudWatchLoggingOptionUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CloudWatchLoggingOptionUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudWatchLoggingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CloudWatchLoggingOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CodeContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeContent, context: context)
        Hearth::Validator.validate!(input[:text_content], ::String, context: "#{context}[:text_content]")
        Hearth::Validator.validate!(input[:zip_file_content], ::String, context: "#{context}[:zip_file_content]")
        Validators::S3ContentLocation.validate!(input[:s3_content_location], context: "#{context}[:s3_content_location]") unless input[:s3_content_location].nil?
      end
    end

    class CodeContentDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeContentDescription, context: context)
        Hearth::Validator.validate!(input[:text_content], ::String, context: "#{context}[:text_content]")
        Hearth::Validator.validate!(input[:code_md5], ::String, context: "#{context}[:code_md5]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Validators::S3ApplicationCodeLocationDescription.validate!(input[:s3_application_code_location_description], context: "#{context}[:s3_application_code_location_description]") unless input[:s3_application_code_location_description].nil?
      end
    end

    class CodeContentUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeContentUpdate, context: context)
        Hearth::Validator.validate!(input[:text_content_update], ::String, context: "#{context}[:text_content_update]")
        Hearth::Validator.validate!(input[:zip_file_content_update], ::String, context: "#{context}[:zip_file_content_update]")
        Validators::S3ContentLocationUpdate.validate!(input[:s3_content_location_update], context: "#{context}[:s3_content_location_update]") unless input[:s3_content_location_update].nil?
      end
    end

    class CodeValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:application_description], ::String, context: "#{context}[:application_description]")
        Hearth::Validator.validate!(input[:runtime_environment], ::String, context: "#{context}[:runtime_environment]")
        Hearth::Validator.validate!(input[:service_execution_role], ::String, context: "#{context}[:service_execution_role]")
        Validators::ApplicationConfiguration.validate!(input[:application_configuration], context: "#{context}[:application_configuration]") unless input[:application_configuration].nil?
        Validators::CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:application_mode], ::String, context: "#{context}[:application_mode]")
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Validators::ApplicationDetail.validate!(input[:application_detail], context: "#{context}[:application_detail]") unless input[:application_detail].nil?
      end
    end

    class CreateApplicationPresignedUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationPresignedUrlInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:url_type], ::String, context: "#{context}[:url_type]")
        Hearth::Validator.validate!(input[:session_expiration_duration_in_seconds], ::Integer, context: "#{context}[:session_expiration_duration_in_seconds]")
      end
    end

    class CreateApplicationPresignedUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationPresignedUrlOutput, context: context)
        Hearth::Validator.validate!(input[:authorized_url], ::String, context: "#{context}[:authorized_url]")
      end
    end

    class CreateApplicationSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
      end
    end

    class CreateApplicationSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationSnapshotOutput, context: context)
      end
    end

    class CustomArtifactConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomArtifactConfiguration, context: context)
        Hearth::Validator.validate!(input[:artifact_type], ::String, context: "#{context}[:artifact_type]")
        Validators::S3ContentLocation.validate!(input[:s3_content_location], context: "#{context}[:s3_content_location]") unless input[:s3_content_location].nil?
        Validators::MavenReference.validate!(input[:maven_reference], context: "#{context}[:maven_reference]") unless input[:maven_reference].nil?
      end
    end

    class CustomArtifactConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomArtifactConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:artifact_type], ::String, context: "#{context}[:artifact_type]")
        Validators::S3ContentLocation.validate!(input[:s3_content_location_description], context: "#{context}[:s3_content_location_description]") unless input[:s3_content_location_description].nil?
        Validators::MavenReference.validate!(input[:maven_reference_description], context: "#{context}[:maven_reference_description]") unless input[:maven_reference_description].nil?
      end
    end

    class CustomArtifactsConfigurationDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomArtifactConfigurationDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomArtifactsConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomArtifactConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteApplicationCloudWatchLoggingOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationCloudWatchLoggingOptionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Hearth::Validator.validate!(input[:cloud_watch_logging_option_id], ::String, context: "#{context}[:cloud_watch_logging_option_id]")
        Hearth::Validator.validate!(input[:conditional_token], ::String, context: "#{context}[:conditional_token]")
      end
    end

    class DeleteApplicationCloudWatchLoggingOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationCloudWatchLoggingOptionOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Validators::CloudWatchLoggingOptionDescriptions.validate!(input[:cloud_watch_logging_option_descriptions], context: "#{context}[:cloud_watch_logging_option_descriptions]") unless input[:cloud_watch_logging_option_descriptions].nil?
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:create_timestamp], ::Time, context: "#{context}[:create_timestamp]")
      end
    end

    class DeleteApplicationInputProcessingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInputProcessingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
      end
    end

    class DeleteApplicationInputProcessingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInputProcessingConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
      end
    end

    class DeleteApplicationOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOperationOutput, context: context)
      end
    end

    class DeleteApplicationOutputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutputInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Hearth::Validator.validate!(input[:output_id], ::String, context: "#{context}[:output_id]")
      end
    end

    class DeleteApplicationOutputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutputOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
      end
    end

    class DeleteApplicationReferenceDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationReferenceDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
      end
    end

    class DeleteApplicationReferenceDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationReferenceDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
      end
    end

    class DeleteApplicationSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:snapshot_creation_timestamp], ::Time, context: "#{context}[:snapshot_creation_timestamp]")
      end
    end

    class DeleteApplicationSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationSnapshotOutput, context: context)
      end
    end

    class DeleteApplicationVpcConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationVpcConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Hearth::Validator.validate!(input[:vpc_configuration_id], ::String, context: "#{context}[:vpc_configuration_id]")
        Hearth::Validator.validate!(input[:conditional_token], ::String, context: "#{context}[:conditional_token]")
      end
    end

    class DeleteApplicationVpcConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationVpcConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
      end
    end

    class DeployAsApplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeployAsApplicationConfiguration, context: context)
        Validators::S3ContentBaseLocation.validate!(input[:s3_content_location], context: "#{context}[:s3_content_location]") unless input[:s3_content_location].nil?
      end
    end

    class DeployAsApplicationConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeployAsApplicationConfigurationDescription, context: context)
        Validators::S3ContentBaseLocationDescription.validate!(input[:s3_content_location_description], context: "#{context}[:s3_content_location_description]") unless input[:s3_content_location_description].nil?
      end
    end

    class DeployAsApplicationConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeployAsApplicationConfigurationUpdate, context: context)
        Validators::S3ContentBaseLocationUpdate.validate!(input[:s3_content_location_update], context: "#{context}[:s3_content_location_update]") unless input[:s3_content_location_update].nil?
      end
    end

    class DescribeApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:include_additional_details], ::TrueClass, ::FalseClass, context: "#{context}[:include_additional_details]")
      end
    end

    class DescribeApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationOutput, context: context)
        Validators::ApplicationDetail.validate!(input[:application_detail], context: "#{context}[:application_detail]") unless input[:application_detail].nil?
      end
    end

    class DescribeApplicationSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
      end
    end

    class DescribeApplicationSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationSnapshotOutput, context: context)
        Validators::SnapshotDetails.validate!(input[:snapshot_details], context: "#{context}[:snapshot_details]") unless input[:snapshot_details].nil?
      end
    end

    class DescribeApplicationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
      end
    end

    class DescribeApplicationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationVersionOutput, context: context)
        Validators::ApplicationDetail.validate!(input[:application_version_detail], context: "#{context}[:application_version_detail]") unless input[:application_version_detail].nil?
      end
    end

    class DestinationSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationSchema, context: context)
        Hearth::Validator.validate!(input[:record_format_type], ::String, context: "#{context}[:record_format_type]")
      end
    end

    class DiscoverInputSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiscoverInputSchemaInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:service_execution_role], ::String, context: "#{context}[:service_execution_role]")
        Validators::InputStartingPositionConfiguration.validate!(input[:input_starting_position_configuration], context: "#{context}[:input_starting_position_configuration]") unless input[:input_starting_position_configuration].nil?
        Validators::S3Configuration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        Validators::InputProcessingConfiguration.validate!(input[:input_processing_configuration], context: "#{context}[:input_processing_configuration]") unless input[:input_processing_configuration].nil?
      end
    end

    class DiscoverInputSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiscoverInputSchemaOutput, context: context)
        Validators::SourceSchema.validate!(input[:input_schema], context: "#{context}[:input_schema]") unless input[:input_schema].nil?
        Validators::ParsedInputRecords.validate!(input[:parsed_input_records], context: "#{context}[:parsed_input_records]") unless input[:parsed_input_records].nil?
        Validators::ProcessedInputRecords.validate!(input[:processed_input_records], context: "#{context}[:processed_input_records]") unless input[:processed_input_records].nil?
        Validators::RawInputRecords.validate!(input[:raw_input_records], context: "#{context}[:raw_input_records]") unless input[:raw_input_records].nil?
      end
    end

    class EnvironmentProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentProperties, context: context)
        Validators::PropertyGroups.validate!(input[:property_groups], context: "#{context}[:property_groups]") unless input[:property_groups].nil?
      end
    end

    class EnvironmentPropertyDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentPropertyDescriptions, context: context)
        Validators::PropertyGroups.validate!(input[:property_group_descriptions], context: "#{context}[:property_group_descriptions]") unless input[:property_group_descriptions].nil?
      end
    end

    class EnvironmentPropertyUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentPropertyUpdates, context: context)
        Validators::PropertyGroups.validate!(input[:property_groups], context: "#{context}[:property_groups]") unless input[:property_groups].nil?
      end
    end

    class FlinkApplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlinkApplicationConfiguration, context: context)
        Validators::CheckpointConfiguration.validate!(input[:checkpoint_configuration], context: "#{context}[:checkpoint_configuration]") unless input[:checkpoint_configuration].nil?
        Validators::MonitoringConfiguration.validate!(input[:monitoring_configuration], context: "#{context}[:monitoring_configuration]") unless input[:monitoring_configuration].nil?
        Validators::ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
      end
    end

    class FlinkApplicationConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlinkApplicationConfigurationDescription, context: context)
        Validators::CheckpointConfigurationDescription.validate!(input[:checkpoint_configuration_description], context: "#{context}[:checkpoint_configuration_description]") unless input[:checkpoint_configuration_description].nil?
        Validators::MonitoringConfigurationDescription.validate!(input[:monitoring_configuration_description], context: "#{context}[:monitoring_configuration_description]") unless input[:monitoring_configuration_description].nil?
        Validators::ParallelismConfigurationDescription.validate!(input[:parallelism_configuration_description], context: "#{context}[:parallelism_configuration_description]") unless input[:parallelism_configuration_description].nil?
        Hearth::Validator.validate!(input[:job_plan_description], ::String, context: "#{context}[:job_plan_description]")
      end
    end

    class FlinkApplicationConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlinkApplicationConfigurationUpdate, context: context)
        Validators::CheckpointConfigurationUpdate.validate!(input[:checkpoint_configuration_update], context: "#{context}[:checkpoint_configuration_update]") unless input[:checkpoint_configuration_update].nil?
        Validators::MonitoringConfigurationUpdate.validate!(input[:monitoring_configuration_update], context: "#{context}[:monitoring_configuration_update]") unless input[:monitoring_configuration_update].nil?
        Validators::ParallelismConfigurationUpdate.validate!(input[:parallelism_configuration_update], context: "#{context}[:parallelism_configuration_update]") unless input[:parallelism_configuration_update].nil?
      end
    end

    class FlinkRunConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlinkRunConfiguration, context: context)
        Hearth::Validator.validate!(input[:allow_non_restored_state], ::TrueClass, ::FalseClass, context: "#{context}[:allow_non_restored_state]")
      end
    end

    class GlueDataCatalogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlueDataCatalogConfiguration, context: context)
        Hearth::Validator.validate!(input[:database_arn], ::String, context: "#{context}[:database_arn]")
      end
    end

    class GlueDataCatalogConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlueDataCatalogConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:database_arn], ::String, context: "#{context}[:database_arn]")
      end
    end

    class GlueDataCatalogConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlueDataCatalogConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:database_arn_update], ::String, context: "#{context}[:database_arn_update]")
      end
    end

    class InAppStreamNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Input, context: context)
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Validators::InputProcessingConfiguration.validate!(input[:input_processing_configuration], context: "#{context}[:input_processing_configuration]") unless input[:input_processing_configuration].nil?
        Validators::KinesisStreamsInput.validate!(input[:kinesis_streams_input], context: "#{context}[:kinesis_streams_input]") unless input[:kinesis_streams_input].nil?
        Validators::KinesisFirehoseInput.validate!(input[:kinesis_firehose_input], context: "#{context}[:kinesis_firehose_input]") unless input[:kinesis_firehose_input].nil?
        Validators::InputParallelism.validate!(input[:input_parallelism], context: "#{context}[:input_parallelism]") unless input[:input_parallelism].nil?
        Validators::SourceSchema.validate!(input[:input_schema], context: "#{context}[:input_schema]") unless input[:input_schema].nil?
      end
    end

    class InputDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDescription, context: context)
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Validators::InAppStreamNames.validate!(input[:in_app_stream_names], context: "#{context}[:in_app_stream_names]") unless input[:in_app_stream_names].nil?
        Validators::InputProcessingConfigurationDescription.validate!(input[:input_processing_configuration_description], context: "#{context}[:input_processing_configuration_description]") unless input[:input_processing_configuration_description].nil?
        Validators::KinesisStreamsInputDescription.validate!(input[:kinesis_streams_input_description], context: "#{context}[:kinesis_streams_input_description]") unless input[:kinesis_streams_input_description].nil?
        Validators::KinesisFirehoseInputDescription.validate!(input[:kinesis_firehose_input_description], context: "#{context}[:kinesis_firehose_input_description]") unless input[:kinesis_firehose_input_description].nil?
        Validators::SourceSchema.validate!(input[:input_schema], context: "#{context}[:input_schema]") unless input[:input_schema].nil?
        Validators::InputParallelism.validate!(input[:input_parallelism], context: "#{context}[:input_parallelism]") unless input[:input_parallelism].nil?
        Validators::InputStartingPositionConfiguration.validate!(input[:input_starting_position_configuration], context: "#{context}[:input_starting_position_configuration]") unless input[:input_starting_position_configuration].nil?
      end
    end

    class InputDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InputDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InputLambdaProcessor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputLambdaProcessor, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class InputLambdaProcessorDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputLambdaProcessorDescription, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class InputLambdaProcessorUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputLambdaProcessorUpdate, context: context)
        Hearth::Validator.validate!(input[:resource_arn_update], ::String, context: "#{context}[:resource_arn_update]")
      end
    end

    class InputParallelism
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputParallelism, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class InputParallelismUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputParallelismUpdate, context: context)
        Hearth::Validator.validate!(input[:count_update], ::Integer, context: "#{context}[:count_update]")
      end
    end

    class InputProcessingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputProcessingConfiguration, context: context)
        Validators::InputLambdaProcessor.validate!(input[:input_lambda_processor], context: "#{context}[:input_lambda_processor]") unless input[:input_lambda_processor].nil?
      end
    end

    class InputProcessingConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputProcessingConfigurationDescription, context: context)
        Validators::InputLambdaProcessorDescription.validate!(input[:input_lambda_processor_description], context: "#{context}[:input_lambda_processor_description]") unless input[:input_lambda_processor_description].nil?
      end
    end

    class InputProcessingConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputProcessingConfigurationUpdate, context: context)
        Validators::InputLambdaProcessorUpdate.validate!(input[:input_lambda_processor_update], context: "#{context}[:input_lambda_processor_update]") unless input[:input_lambda_processor_update].nil?
      end
    end

    class InputSchemaUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSchemaUpdate, context: context)
        Validators::RecordFormat.validate!(input[:record_format_update], context: "#{context}[:record_format_update]") unless input[:record_format_update].nil?
        Hearth::Validator.validate!(input[:record_encoding_update], ::String, context: "#{context}[:record_encoding_update]")
        Validators::RecordColumns.validate!(input[:record_column_updates], context: "#{context}[:record_column_updates]") unless input[:record_column_updates].nil?
      end
    end

    class InputStartingPositionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputStartingPositionConfiguration, context: context)
        Hearth::Validator.validate!(input[:input_starting_position], ::String, context: "#{context}[:input_starting_position]")
      end
    end

    class InputUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputUpdate, context: context)
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
        Hearth::Validator.validate!(input[:name_prefix_update], ::String, context: "#{context}[:name_prefix_update]")
        Validators::InputProcessingConfigurationUpdate.validate!(input[:input_processing_configuration_update], context: "#{context}[:input_processing_configuration_update]") unless input[:input_processing_configuration_update].nil?
        Validators::KinesisStreamsInputUpdate.validate!(input[:kinesis_streams_input_update], context: "#{context}[:kinesis_streams_input_update]") unless input[:kinesis_streams_input_update].nil?
        Validators::KinesisFirehoseInputUpdate.validate!(input[:kinesis_firehose_input_update], context: "#{context}[:kinesis_firehose_input_update]") unless input[:kinesis_firehose_input_update].nil?
        Validators::InputSchemaUpdate.validate!(input[:input_schema_update], context: "#{context}[:input_schema_update]") unless input[:input_schema_update].nil?
        Validators::InputParallelismUpdate.validate!(input[:input_parallelism_update], context: "#{context}[:input_parallelism_update]") unless input[:input_parallelism_update].nil?
      end
    end

    class InputUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InputUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Inputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Input.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidApplicationConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidApplicationConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JSONMappingParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JSONMappingParameters, context: context)
        Hearth::Validator.validate!(input[:record_row_path], ::String, context: "#{context}[:record_row_path]")
      end
    end

    class KinesisFirehoseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class KinesisFirehoseInputDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseInputDescription, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class KinesisFirehoseInputUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseInputUpdate, context: context)
        Hearth::Validator.validate!(input[:resource_arn_update], ::String, context: "#{context}[:resource_arn_update]")
      end
    end

    class KinesisFirehoseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class KinesisFirehoseOutputDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseOutputDescription, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class KinesisFirehoseOutputUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseOutputUpdate, context: context)
        Hearth::Validator.validate!(input[:resource_arn_update], ::String, context: "#{context}[:resource_arn_update]")
      end
    end

    class KinesisStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class KinesisStreamsInputDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamsInputDescription, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class KinesisStreamsInputUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamsInputUpdate, context: context)
        Hearth::Validator.validate!(input[:resource_arn_update], ::String, context: "#{context}[:resource_arn_update]")
      end
    end

    class KinesisStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamsOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class KinesisStreamsOutputDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamsOutputDescription, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class KinesisStreamsOutputUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamsOutputUpdate, context: context)
        Hearth::Validator.validate!(input[:resource_arn_update], ::String, context: "#{context}[:resource_arn_update]")
      end
    end

    class LambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class LambdaOutputDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaOutputDescription, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class LambdaOutputUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaOutputUpdate, context: context)
        Hearth::Validator.validate!(input[:resource_arn_update], ::String, context: "#{context}[:resource_arn_update]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListApplicationSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationSnapshotsOutput, context: context)
        Validators::SnapshotSummaries.validate!(input[:snapshot_summaries], context: "#{context}[:snapshot_summaries]") unless input[:snapshot_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationVersionsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationVersionsOutput, context: context)
        Validators::ApplicationVersionSummaries.validate!(input[:application_version_summaries], context: "#{context}[:application_version_summaries]") unless input[:application_version_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        Validators::ApplicationSummaries.validate!(input[:application_summaries], context: "#{context}[:application_summaries]") unless input[:application_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MappingParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MappingParameters, context: context)
        Validators::JSONMappingParameters.validate!(input[:json_mapping_parameters], context: "#{context}[:json_mapping_parameters]") unless input[:json_mapping_parameters].nil?
        Validators::CSVMappingParameters.validate!(input[:csv_mapping_parameters], context: "#{context}[:csv_mapping_parameters]") unless input[:csv_mapping_parameters].nil?
      end
    end

    class MavenReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MavenReference, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:artifact_id], ::String, context: "#{context}[:artifact_id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class MonitoringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringConfiguration, context: context)
        Hearth::Validator.validate!(input[:configuration_type], ::String, context: "#{context}[:configuration_type]")
        Hearth::Validator.validate!(input[:metrics_level], ::String, context: "#{context}[:metrics_level]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class MonitoringConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:configuration_type], ::String, context: "#{context}[:configuration_type]")
        Hearth::Validator.validate!(input[:metrics_level], ::String, context: "#{context}[:metrics_level]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class MonitoringConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:configuration_type_update], ::String, context: "#{context}[:configuration_type_update]")
        Hearth::Validator.validate!(input[:metrics_level_update], ::String, context: "#{context}[:metrics_level_update]")
        Hearth::Validator.validate!(input[:log_level_update], ::String, context: "#{context}[:log_level_update]")
      end
    end

    class Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Output, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::KinesisStreamsOutput.validate!(input[:kinesis_streams_output], context: "#{context}[:kinesis_streams_output]") unless input[:kinesis_streams_output].nil?
        Validators::KinesisFirehoseOutput.validate!(input[:kinesis_firehose_output], context: "#{context}[:kinesis_firehose_output]") unless input[:kinesis_firehose_output].nil?
        Validators::LambdaOutput.validate!(input[:lambda_output], context: "#{context}[:lambda_output]") unless input[:lambda_output].nil?
        Validators::DestinationSchema.validate!(input[:destination_schema], context: "#{context}[:destination_schema]") unless input[:destination_schema].nil?
      end
    end

    class OutputDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputDescription, context: context)
        Hearth::Validator.validate!(input[:output_id], ::String, context: "#{context}[:output_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::KinesisStreamsOutputDescription.validate!(input[:kinesis_streams_output_description], context: "#{context}[:kinesis_streams_output_description]") unless input[:kinesis_streams_output_description].nil?
        Validators::KinesisFirehoseOutputDescription.validate!(input[:kinesis_firehose_output_description], context: "#{context}[:kinesis_firehose_output_description]") unless input[:kinesis_firehose_output_description].nil?
        Validators::LambdaOutputDescription.validate!(input[:lambda_output_description], context: "#{context}[:lambda_output_description]") unless input[:lambda_output_description].nil?
        Validators::DestinationSchema.validate!(input[:destination_schema], context: "#{context}[:destination_schema]") unless input[:destination_schema].nil?
      end
    end

    class OutputDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OutputDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OutputUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputUpdate, context: context)
        Hearth::Validator.validate!(input[:output_id], ::String, context: "#{context}[:output_id]")
        Hearth::Validator.validate!(input[:name_update], ::String, context: "#{context}[:name_update]")
        Validators::KinesisStreamsOutputUpdate.validate!(input[:kinesis_streams_output_update], context: "#{context}[:kinesis_streams_output_update]") unless input[:kinesis_streams_output_update].nil?
        Validators::KinesisFirehoseOutputUpdate.validate!(input[:kinesis_firehose_output_update], context: "#{context}[:kinesis_firehose_output_update]") unless input[:kinesis_firehose_output_update].nil?
        Validators::LambdaOutputUpdate.validate!(input[:lambda_output_update], context: "#{context}[:lambda_output_update]") unless input[:lambda_output_update].nil?
        Validators::DestinationSchema.validate!(input[:destination_schema_update], context: "#{context}[:destination_schema_update]") unless input[:destination_schema_update].nil?
      end
    end

    class OutputUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OutputUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Outputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Output.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParallelismConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParallelismConfiguration, context: context)
        Hearth::Validator.validate!(input[:configuration_type], ::String, context: "#{context}[:configuration_type]")
        Hearth::Validator.validate!(input[:parallelism], ::Integer, context: "#{context}[:parallelism]")
        Hearth::Validator.validate!(input[:parallelism_per_kpu], ::Integer, context: "#{context}[:parallelism_per_kpu]")
        Hearth::Validator.validate!(input[:auto_scaling_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_scaling_enabled]")
      end
    end

    class ParallelismConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParallelismConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:configuration_type], ::String, context: "#{context}[:configuration_type]")
        Hearth::Validator.validate!(input[:parallelism], ::Integer, context: "#{context}[:parallelism]")
        Hearth::Validator.validate!(input[:parallelism_per_kpu], ::Integer, context: "#{context}[:parallelism_per_kpu]")
        Hearth::Validator.validate!(input[:current_parallelism], ::Integer, context: "#{context}[:current_parallelism]")
        Hearth::Validator.validate!(input[:auto_scaling_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_scaling_enabled]")
      end
    end

    class ParallelismConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParallelismConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:configuration_type_update], ::String, context: "#{context}[:configuration_type_update]")
        Hearth::Validator.validate!(input[:parallelism_update], ::Integer, context: "#{context}[:parallelism_update]")
        Hearth::Validator.validate!(input[:parallelism_per_kpu_update], ::Integer, context: "#{context}[:parallelism_per_kpu_update]")
        Hearth::Validator.validate!(input[:auto_scaling_enabled_update], ::TrueClass, ::FalseClass, context: "#{context}[:auto_scaling_enabled_update]")
      end
    end

    class ParsedInputRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParsedInputRecords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ParsedInputRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProcessedInputRecords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PropertyGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyGroup, context: context)
        Hearth::Validator.validate!(input[:property_group_id], ::String, context: "#{context}[:property_group_id]")
        Validators::PropertyMap.validate!(input[:property_map], context: "#{context}[:property_map]") unless input[:property_map].nil?
      end
    end

    class PropertyGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PropertyGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PropertyMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RawInputRecords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecordColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordColumn, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:mapping], ::String, context: "#{context}[:mapping]")
        Hearth::Validator.validate!(input[:sql_type], ::String, context: "#{context}[:sql_type]")
      end
    end

    class RecordColumns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecordColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordFormat
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordFormat, context: context)
        Hearth::Validator.validate!(input[:record_format_type], ::String, context: "#{context}[:record_format_type]")
        Validators::MappingParameters.validate!(input[:mapping_parameters], context: "#{context}[:mapping_parameters]") unless input[:mapping_parameters].nil?
      end
    end

    class ReferenceDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferenceDataSource, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::S3ReferenceDataSource.validate!(input[:s3_reference_data_source], context: "#{context}[:s3_reference_data_source]") unless input[:s3_reference_data_source].nil?
        Validators::SourceSchema.validate!(input[:reference_schema], context: "#{context}[:reference_schema]") unless input[:reference_schema].nil?
      end
    end

    class ReferenceDataSourceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferenceDataSourceDescription, context: context)
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::S3ReferenceDataSourceDescription.validate!(input[:s3_reference_data_source_description], context: "#{context}[:s3_reference_data_source_description]") unless input[:s3_reference_data_source_description].nil?
        Validators::SourceSchema.validate!(input[:reference_schema], context: "#{context}[:reference_schema]") unless input[:reference_schema].nil?
      end
    end

    class ReferenceDataSourceDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReferenceDataSourceDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReferenceDataSourceUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferenceDataSourceUpdate, context: context)
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:table_name_update], ::String, context: "#{context}[:table_name_update]")
        Validators::S3ReferenceDataSourceUpdate.validate!(input[:s3_reference_data_source_update], context: "#{context}[:s3_reference_data_source_update]") unless input[:s3_reference_data_source_update].nil?
        Validators::SourceSchema.validate!(input[:reference_schema_update], context: "#{context}[:reference_schema_update]") unless input[:reference_schema_update].nil?
      end
    end

    class ReferenceDataSourceUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReferenceDataSourceUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReferenceDataSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReferenceDataSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceProvisionedThroughputExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceProvisionedThroughputExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RollbackApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
      end
    end

    class RollbackApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackApplicationOutput, context: context)
        Validators::ApplicationDetail.validate!(input[:application_detail], context: "#{context}[:application_detail]") unless input[:application_detail].nil?
      end
    end

    class RunConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunConfiguration, context: context)
        Validators::FlinkRunConfiguration.validate!(input[:flink_run_configuration], context: "#{context}[:flink_run_configuration]") unless input[:flink_run_configuration].nil?
        Validators::SqlRunConfigurations.validate!(input[:sql_run_configurations], context: "#{context}[:sql_run_configurations]") unless input[:sql_run_configurations].nil?
        Validators::ApplicationRestoreConfiguration.validate!(input[:application_restore_configuration], context: "#{context}[:application_restore_configuration]") unless input[:application_restore_configuration].nil?
      end
    end

    class RunConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunConfigurationDescription, context: context)
        Validators::ApplicationRestoreConfiguration.validate!(input[:application_restore_configuration_description], context: "#{context}[:application_restore_configuration_description]") unless input[:application_restore_configuration_description].nil?
        Validators::FlinkRunConfiguration.validate!(input[:flink_run_configuration_description], context: "#{context}[:flink_run_configuration_description]") unless input[:flink_run_configuration_description].nil?
      end
    end

    class RunConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunConfigurationUpdate, context: context)
        Validators::FlinkRunConfiguration.validate!(input[:flink_run_configuration], context: "#{context}[:flink_run_configuration]") unless input[:flink_run_configuration].nil?
        Validators::ApplicationRestoreConfiguration.validate!(input[:application_restore_configuration], context: "#{context}[:application_restore_configuration]") unless input[:application_restore_configuration].nil?
      end
    end

    class S3ApplicationCodeLocationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ApplicationCodeLocationDescription, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:file_key], ::String, context: "#{context}[:file_key]")
        Hearth::Validator.validate!(input[:object_version], ::String, context: "#{context}[:object_version]")
      end
    end

    class S3Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Configuration, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:file_key], ::String, context: "#{context}[:file_key]")
      end
    end

    class S3ContentBaseLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ContentBaseLocation, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
      end
    end

    class S3ContentBaseLocationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ContentBaseLocationDescription, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
      end
    end

    class S3ContentBaseLocationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ContentBaseLocationUpdate, context: context)
        Hearth::Validator.validate!(input[:bucket_arn_update], ::String, context: "#{context}[:bucket_arn_update]")
        Hearth::Validator.validate!(input[:base_path_update], ::String, context: "#{context}[:base_path_update]")
      end
    end

    class S3ContentLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ContentLocation, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:file_key], ::String, context: "#{context}[:file_key]")
        Hearth::Validator.validate!(input[:object_version], ::String, context: "#{context}[:object_version]")
      end
    end

    class S3ContentLocationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ContentLocationUpdate, context: context)
        Hearth::Validator.validate!(input[:bucket_arn_update], ::String, context: "#{context}[:bucket_arn_update]")
        Hearth::Validator.validate!(input[:file_key_update], ::String, context: "#{context}[:file_key_update]")
        Hearth::Validator.validate!(input[:object_version_update], ::String, context: "#{context}[:object_version_update]")
      end
    end

    class S3ReferenceDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ReferenceDataSource, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:file_key], ::String, context: "#{context}[:file_key]")
      end
    end

    class S3ReferenceDataSourceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ReferenceDataSourceDescription, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:file_key], ::String, context: "#{context}[:file_key]")
        Hearth::Validator.validate!(input[:reference_role_arn], ::String, context: "#{context}[:reference_role_arn]")
      end
    end

    class S3ReferenceDataSourceUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ReferenceDataSourceUpdate, context: context)
        Hearth::Validator.validate!(input[:bucket_arn_update], ::String, context: "#{context}[:bucket_arn_update]")
        Hearth::Validator.validate!(input[:file_key_update], ::String, context: "#{context}[:file_key_update]")
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotDetails, context: context)
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:snapshot_status], ::String, context: "#{context}[:snapshot_status]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
        Hearth::Validator.validate!(input[:snapshot_creation_timestamp], ::Time, context: "#{context}[:snapshot_creation_timestamp]")
      end
    end

    class SnapshotSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SnapshotDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceSchema, context: context)
        Validators::RecordFormat.validate!(input[:record_format], context: "#{context}[:record_format]") unless input[:record_format].nil?
        Hearth::Validator.validate!(input[:record_encoding], ::String, context: "#{context}[:record_encoding]")
        Validators::RecordColumns.validate!(input[:record_columns], context: "#{context}[:record_columns]") unless input[:record_columns].nil?
      end
    end

    class SqlApplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlApplicationConfiguration, context: context)
        Validators::Inputs.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Validators::Outputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Validators::ReferenceDataSources.validate!(input[:reference_data_sources], context: "#{context}[:reference_data_sources]") unless input[:reference_data_sources].nil?
      end
    end

    class SqlApplicationConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlApplicationConfigurationDescription, context: context)
        Validators::InputDescriptions.validate!(input[:input_descriptions], context: "#{context}[:input_descriptions]") unless input[:input_descriptions].nil?
        Validators::OutputDescriptions.validate!(input[:output_descriptions], context: "#{context}[:output_descriptions]") unless input[:output_descriptions].nil?
        Validators::ReferenceDataSourceDescriptions.validate!(input[:reference_data_source_descriptions], context: "#{context}[:reference_data_source_descriptions]") unless input[:reference_data_source_descriptions].nil?
      end
    end

    class SqlApplicationConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlApplicationConfigurationUpdate, context: context)
        Validators::InputUpdates.validate!(input[:input_updates], context: "#{context}[:input_updates]") unless input[:input_updates].nil?
        Validators::OutputUpdates.validate!(input[:output_updates], context: "#{context}[:output_updates]") unless input[:output_updates].nil?
        Validators::ReferenceDataSourceUpdates.validate!(input[:reference_data_source_updates], context: "#{context}[:reference_data_source_updates]") unless input[:reference_data_source_updates].nil?
      end
    end

    class SqlRunConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlRunConfiguration, context: context)
        Hearth::Validator.validate!(input[:input_id], ::String, context: "#{context}[:input_id]")
        Validators::InputStartingPositionConfiguration.validate!(input[:input_starting_position_configuration], context: "#{context}[:input_starting_position_configuration]") unless input[:input_starting_position_configuration].nil?
      end
    end

    class SqlRunConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SqlRunConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Validators::RunConfiguration.validate!(input[:run_configuration], context: "#{context}[:run_configuration]") unless input[:run_configuration].nil?
      end
    end

    class StartApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartApplicationOutput, context: context)
      end
    end

    class StopApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class StopApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopApplicationOutput, context: context)
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnableToDetectSchemaException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnableToDetectSchemaException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::RawInputRecords.validate!(input[:raw_input_records], context: "#{context}[:raw_input_records]") unless input[:raw_input_records].nil?
        Validators::ProcessedInputRecords.validate!(input[:processed_input_records], context: "#{context}[:processed_input_records]") unless input[:processed_input_records].nil?
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Validators::ApplicationConfigurationUpdate.validate!(input[:application_configuration_update], context: "#{context}[:application_configuration_update]") unless input[:application_configuration_update].nil?
        Hearth::Validator.validate!(input[:service_execution_role_update], ::String, context: "#{context}[:service_execution_role_update]")
        Validators::RunConfigurationUpdate.validate!(input[:run_configuration_update], context: "#{context}[:run_configuration_update]") unless input[:run_configuration_update].nil?
        Validators::CloudWatchLoggingOptionUpdates.validate!(input[:cloud_watch_logging_option_updates], context: "#{context}[:cloud_watch_logging_option_updates]") unless input[:cloud_watch_logging_option_updates].nil?
        Hearth::Validator.validate!(input[:conditional_token], ::String, context: "#{context}[:conditional_token]")
      end
    end

    class UpdateApplicationMaintenanceConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationMaintenanceConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Validators::ApplicationMaintenanceConfigurationUpdate.validate!(input[:application_maintenance_configuration_update], context: "#{context}[:application_maintenance_configuration_update]") unless input[:application_maintenance_configuration_update].nil?
      end
    end

    class UpdateApplicationMaintenanceConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationMaintenanceConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Validators::ApplicationMaintenanceConfigurationDescription.validate!(input[:application_maintenance_configuration_description], context: "#{context}[:application_maintenance_configuration_description]") unless input[:application_maintenance_configuration_description].nil?
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
        Validators::ApplicationDetail.validate!(input[:application_detail], context: "#{context}[:application_detail]") unless input[:application_detail].nil?
      end
    end

    class VpcConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfiguration, context: context)
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class VpcConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:vpc_configuration_id], ::String, context: "#{context}[:vpc_configuration_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class VpcConfigurationDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpcConfigurationDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:vpc_configuration_id], ::String, context: "#{context}[:vpc_configuration_id]")
        Validators::SubnetIds.validate!(input[:subnet_id_updates], context: "#{context}[:subnet_id_updates]") unless input[:subnet_id_updates].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_id_updates], context: "#{context}[:security_group_id_updates]") unless input[:security_group_id_updates].nil?
      end
    end

    class VpcConfigurationUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpcConfigurationUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpcConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ZeppelinApplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZeppelinApplicationConfiguration, context: context)
        Validators::ZeppelinMonitoringConfiguration.validate!(input[:monitoring_configuration], context: "#{context}[:monitoring_configuration]") unless input[:monitoring_configuration].nil?
        Validators::CatalogConfiguration.validate!(input[:catalog_configuration], context: "#{context}[:catalog_configuration]") unless input[:catalog_configuration].nil?
        Validators::DeployAsApplicationConfiguration.validate!(input[:deploy_as_application_configuration], context: "#{context}[:deploy_as_application_configuration]") unless input[:deploy_as_application_configuration].nil?
        Validators::CustomArtifactsConfigurationList.validate!(input[:custom_artifacts_configuration], context: "#{context}[:custom_artifacts_configuration]") unless input[:custom_artifacts_configuration].nil?
      end
    end

    class ZeppelinApplicationConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZeppelinApplicationConfigurationDescription, context: context)
        Validators::ZeppelinMonitoringConfigurationDescription.validate!(input[:monitoring_configuration_description], context: "#{context}[:monitoring_configuration_description]") unless input[:monitoring_configuration_description].nil?
        Validators::CatalogConfigurationDescription.validate!(input[:catalog_configuration_description], context: "#{context}[:catalog_configuration_description]") unless input[:catalog_configuration_description].nil?
        Validators::DeployAsApplicationConfigurationDescription.validate!(input[:deploy_as_application_configuration_description], context: "#{context}[:deploy_as_application_configuration_description]") unless input[:deploy_as_application_configuration_description].nil?
        Validators::CustomArtifactsConfigurationDescriptionList.validate!(input[:custom_artifacts_configuration_description], context: "#{context}[:custom_artifacts_configuration_description]") unless input[:custom_artifacts_configuration_description].nil?
      end
    end

    class ZeppelinApplicationConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZeppelinApplicationConfigurationUpdate, context: context)
        Validators::ZeppelinMonitoringConfigurationUpdate.validate!(input[:monitoring_configuration_update], context: "#{context}[:monitoring_configuration_update]") unless input[:monitoring_configuration_update].nil?
        Validators::CatalogConfigurationUpdate.validate!(input[:catalog_configuration_update], context: "#{context}[:catalog_configuration_update]") unless input[:catalog_configuration_update].nil?
        Validators::DeployAsApplicationConfigurationUpdate.validate!(input[:deploy_as_application_configuration_update], context: "#{context}[:deploy_as_application_configuration_update]") unless input[:deploy_as_application_configuration_update].nil?
        Validators::CustomArtifactsConfigurationList.validate!(input[:custom_artifacts_configuration_update], context: "#{context}[:custom_artifacts_configuration_update]") unless input[:custom_artifacts_configuration_update].nil?
      end
    end

    class ZeppelinMonitoringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZeppelinMonitoringConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class ZeppelinMonitoringConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZeppelinMonitoringConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class ZeppelinMonitoringConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZeppelinMonitoringConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:log_level_update], ::String, context: "#{context}[:log_level_update]")
      end
    end

  end
end
