# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisAnalytics
  module Validators

    class AddApplicationCloudWatchLoggingOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationCloudWatchLoggingOptionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Validators::CloudWatchLoggingOption.validate!(input[:cloud_watch_logging_option], context: "#{context}[:cloud_watch_logging_option]") unless input[:cloud_watch_logging_option].nil?
      end
    end

    class AddApplicationCloudWatchLoggingOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddApplicationCloudWatchLoggingOptionOutput, context: context)
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
      end
    end

    class ApplicationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationDetail, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:application_description], ::String, context: "#{context}[:application_description]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_status], ::String, context: "#{context}[:application_status]")
        Hearth::Validator.validate!(input[:create_timestamp], ::Time, context: "#{context}[:create_timestamp]")
        Hearth::Validator.validate!(input[:last_update_timestamp], ::Time, context: "#{context}[:last_update_timestamp]")
        Validators::InputDescriptions.validate!(input[:input_descriptions], context: "#{context}[:input_descriptions]") unless input[:input_descriptions].nil?
        Validators::OutputDescriptions.validate!(input[:output_descriptions], context: "#{context}[:output_descriptions]") unless input[:output_descriptions].nil?
        Validators::ReferenceDataSourceDescriptions.validate!(input[:reference_data_source_descriptions], context: "#{context}[:reference_data_source_descriptions]") unless input[:reference_data_source_descriptions].nil?
        Validators::CloudWatchLoggingOptionDescriptions.validate!(input[:cloud_watch_logging_option_descriptions], context: "#{context}[:cloud_watch_logging_option_descriptions]") unless input[:cloud_watch_logging_option_descriptions].nil?
        Hearth::Validator.validate!(input[:application_code], ::String, context: "#{context}[:application_code]")
        Hearth::Validator.validate!(input[:application_version_id], ::Integer, context: "#{context}[:application_version_id]")
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
      end
    end

    class ApplicationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationUpdate, context: context)
        Validators::InputUpdates.validate!(input[:input_updates], context: "#{context}[:input_updates]") unless input[:input_updates].nil?
        Hearth::Validator.validate!(input[:application_code_update], ::String, context: "#{context}[:application_code_update]")
        Validators::OutputUpdates.validate!(input[:output_updates], context: "#{context}[:output_updates]") unless input[:output_updates].nil?
        Validators::ReferenceDataSourceUpdates.validate!(input[:reference_data_source_updates], context: "#{context}[:reference_data_source_updates]") unless input[:reference_data_source_updates].nil?
        Validators::CloudWatchLoggingOptionUpdates.validate!(input[:cloud_watch_logging_option_updates], context: "#{context}[:cloud_watch_logging_option_updates]") unless input[:cloud_watch_logging_option_updates].nil?
      end
    end

    class CSVMappingParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CSVMappingParameters, context: context)
        Hearth::Validator.validate!(input[:record_row_delimiter], ::String, context: "#{context}[:record_row_delimiter]")
        Hearth::Validator.validate!(input[:record_column_delimiter], ::String, context: "#{context}[:record_column_delimiter]")
      end
    end

    class CloudWatchLoggingOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLoggingOption, context: context)
        Hearth::Validator.validate!(input[:log_stream_arn], ::String, context: "#{context}[:log_stream_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
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
        Hearth::Validator.validate!(input[:role_arn_update], ::String, context: "#{context}[:role_arn_update]")
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
        Validators::Inputs.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Validators::Outputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Validators::CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        Hearth::Validator.validate!(input[:application_code], ::String, context: "#{context}[:application_code]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Validators::ApplicationSummary.validate!(input[:application_summary], context: "#{context}[:application_summary]") unless input[:application_summary].nil?
      end
    end

    class DeleteApplicationCloudWatchLoggingOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationCloudWatchLoggingOptionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_application_version_id], ::Integer, context: "#{context}[:current_application_version_id]")
        Hearth::Validator.validate!(input[:cloud_watch_logging_option_id], ::String, context: "#{context}[:cloud_watch_logging_option_id]")
      end
    end

    class DeleteApplicationCloudWatchLoggingOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationCloudWatchLoggingOptionOutput, context: context)
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
      end
    end

    class DescribeApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
      end
    end

    class DescribeApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationOutput, context: context)
        Validators::ApplicationDetail.validate!(input[:application_detail], context: "#{context}[:application_detail]") unless input[:application_detail].nil?
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
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
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

    class InputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputConfiguration, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::InputStartingPositionConfiguration.validate!(input[:input_starting_position_configuration], context: "#{context}[:input_starting_position_configuration]") unless input[:input_starting_position_configuration].nil?
      end
    end

    class InputConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InputConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
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
        Hearth::Validator.validate!(input[:role_arn_update], ::String, context: "#{context}[:role_arn_update]")
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
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
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
        Hearth::Validator.validate!(input[:role_arn_update], ::String, context: "#{context}[:role_arn_update]")
      end
    end

    class KinesisFirehoseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
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
        Hearth::Validator.validate!(input[:role_arn_update], ::String, context: "#{context}[:role_arn_update]")
      end
    end

    class KinesisStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
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
        Hearth::Validator.validate!(input[:role_arn_update], ::String, context: "#{context}[:role_arn_update]")
      end
    end

    class KinesisStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamsOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
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
        Hearth::Validator.validate!(input[:role_arn_update], ::String, context: "#{context}[:role_arn_update]")
      end
    end

    class LambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
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
        Hearth::Validator.validate!(input[:role_arn_update], ::String, context: "#{context}[:role_arn_update]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:exclusive_start_application_name], ::String, context: "#{context}[:exclusive_start_application_name]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        Validators::ApplicationSummaries.validate!(input[:application_summaries], context: "#{context}[:application_summaries]") unless input[:application_summaries].nil?
        Hearth::Validator.validate!(input[:has_more_applications], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_applications]")
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

    class S3Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Configuration, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:file_key], ::String, context: "#{context}[:file_key]")
      end
    end

    class S3ReferenceDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ReferenceDataSource, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:file_key], ::String, context: "#{context}[:file_key]")
        Hearth::Validator.validate!(input[:reference_role_arn], ::String, context: "#{context}[:reference_role_arn]")
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
        Hearth::Validator.validate!(input[:reference_role_arn_update], ::String, context: "#{context}[:reference_role_arn_update]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class StartApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Validators::InputConfigurations.validate!(input[:input_configurations], context: "#{context}[:input_configurations]") unless input[:input_configurations].nil?
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
      end
    end

    class StopApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopApplicationOutput, context: context)
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
        Validators::ApplicationUpdate.validate!(input[:application_update], context: "#{context}[:application_update]") unless input[:application_update].nil?
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
      end
    end

  end
end
