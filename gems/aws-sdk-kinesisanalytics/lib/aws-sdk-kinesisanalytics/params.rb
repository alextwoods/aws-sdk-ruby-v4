# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::KinesisAnalytics
  module Params

    module AddApplicationCloudWatchLoggingOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationCloudWatchLoggingOptionInput, context: context)
        type = Types::AddApplicationCloudWatchLoggingOptionInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.cloud_watch_logging_option = CloudWatchLoggingOption.build(params[:cloud_watch_logging_option], context: "#{context}[:cloud_watch_logging_option]") unless params[:cloud_watch_logging_option].nil?
        type
      end
    end

    module AddApplicationCloudWatchLoggingOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddApplicationCloudWatchLoggingOptionOutput, context: context)
        type = Types::AddApplicationCloudWatchLoggingOptionOutput.new
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
        type
      end
    end

    module ApplicationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationDetail, context: context)
        type = Types::ApplicationDetail.new
        type.application_name = params[:application_name]
        type.application_description = params[:application_description]
        type.application_arn = params[:application_arn]
        type.application_status = params[:application_status]
        type.create_timestamp = params[:create_timestamp]
        type.last_update_timestamp = params[:last_update_timestamp]
        type.input_descriptions = InputDescriptions.build(params[:input_descriptions], context: "#{context}[:input_descriptions]") unless params[:input_descriptions].nil?
        type.output_descriptions = OutputDescriptions.build(params[:output_descriptions], context: "#{context}[:output_descriptions]") unless params[:output_descriptions].nil?
        type.reference_data_source_descriptions = ReferenceDataSourceDescriptions.build(params[:reference_data_source_descriptions], context: "#{context}[:reference_data_source_descriptions]") unless params[:reference_data_source_descriptions].nil?
        type.cloud_watch_logging_option_descriptions = CloudWatchLoggingOptionDescriptions.build(params[:cloud_watch_logging_option_descriptions], context: "#{context}[:cloud_watch_logging_option_descriptions]") unless params[:cloud_watch_logging_option_descriptions].nil?
        type.application_code = params[:application_code]
        type.application_version_id = params[:application_version_id]
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
        type
      end
    end

    module ApplicationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationUpdate, context: context)
        type = Types::ApplicationUpdate.new
        type.input_updates = InputUpdates.build(params[:input_updates], context: "#{context}[:input_updates]") unless params[:input_updates].nil?
        type.application_code_update = params[:application_code_update]
        type.output_updates = OutputUpdates.build(params[:output_updates], context: "#{context}[:output_updates]") unless params[:output_updates].nil?
        type.reference_data_source_updates = ReferenceDataSourceUpdates.build(params[:reference_data_source_updates], context: "#{context}[:reference_data_source_updates]") unless params[:reference_data_source_updates].nil?
        type.cloud_watch_logging_option_updates = CloudWatchLoggingOptionUpdates.build(params[:cloud_watch_logging_option_updates], context: "#{context}[:cloud_watch_logging_option_updates]") unless params[:cloud_watch_logging_option_updates].nil?
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

    module CloudWatchLoggingOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLoggingOption, context: context)
        type = Types::CloudWatchLoggingOption.new
        type.log_stream_arn = params[:log_stream_arn]
        type.role_arn = params[:role_arn]
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
        type.role_arn_update = params[:role_arn_update]
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
        type.inputs = Inputs.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.outputs = Outputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.application_code = params[:application_code]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application_summary = ApplicationSummary.build(params[:application_summary], context: "#{context}[:application_summary]") unless params[:application_summary].nil?
        type
      end
    end

    module DeleteApplicationCloudWatchLoggingOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationCloudWatchLoggingOptionInput, context: context)
        type = Types::DeleteApplicationCloudWatchLoggingOptionInput.new
        type.application_name = params[:application_name]
        type.current_application_version_id = params[:current_application_version_id]
        type.cloud_watch_logging_option_id = params[:cloud_watch_logging_option_id]
        type
      end
    end

    module DeleteApplicationCloudWatchLoggingOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationCloudWatchLoggingOptionOutput, context: context)
        type = Types::DeleteApplicationCloudWatchLoggingOptionOutput.new
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
        type
      end
    end

    module DescribeApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationInput, context: context)
        type = Types::DescribeApplicationInput.new
        type.application_name = params[:application_name]
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
        type.role_arn = params[:role_arn]
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

    module InputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputConfiguration, context: context)
        type = Types::InputConfiguration.new
        type.id = params[:id]
        type.input_starting_position_configuration = InputStartingPositionConfiguration.build(params[:input_starting_position_configuration], context: "#{context}[:input_starting_position_configuration]") unless params[:input_starting_position_configuration].nil?
        type
      end
    end

    module InputConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.role_arn = params[:role_arn]
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
        type.role_arn_update = params[:role_arn_update]
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
        type.role_arn = params[:role_arn]
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
        type.role_arn_update = params[:role_arn_update]
        type
      end
    end

    module KinesisFirehoseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseOutput, context: context)
        type = Types::KinesisFirehoseOutput.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
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
        type.role_arn_update = params[:role_arn_update]
        type
      end
    end

    module KinesisStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamsInput, context: context)
        type = Types::KinesisStreamsInput.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
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
        type.role_arn_update = params[:role_arn_update]
        type
      end
    end

    module KinesisStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamsOutput, context: context)
        type = Types::KinesisStreamsOutput.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
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
        type.role_arn_update = params[:role_arn_update]
        type
      end
    end

    module LambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaOutput, context: context)
        type = Types::LambdaOutput.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
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
        type.role_arn_update = params[:role_arn_update]
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

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.limit = params[:limit]
        type.exclusive_start_application_name = params[:exclusive_start_application_name]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.application_summaries = ApplicationSummaries.build(params[:application_summaries], context: "#{context}[:application_summaries]") unless params[:application_summaries].nil?
        type.has_more_applications = params[:has_more_applications]
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

    module S3Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Configuration, context: context)
        type = Types::S3Configuration.new
        type.role_arn = params[:role_arn]
        type.bucket_arn = params[:bucket_arn]
        type.file_key = params[:file_key]
        type
      end
    end

    module S3ReferenceDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ReferenceDataSource, context: context)
        type = Types::S3ReferenceDataSource.new
        type.bucket_arn = params[:bucket_arn]
        type.file_key = params[:file_key]
        type.reference_role_arn = params[:reference_role_arn]
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
        type.reference_role_arn_update = params[:reference_role_arn_update]
        type
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

    module StartApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartApplicationInput, context: context)
        type = Types::StartApplicationInput.new
        type.application_name = params[:application_name]
        type.input_configurations = InputConfigurations.build(params[:input_configurations], context: "#{context}[:input_configurations]") unless params[:input_configurations].nil?
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
        type.application_update = ApplicationUpdate.build(params[:application_update], context: "#{context}[:application_update]") unless params[:application_update].nil?
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type
      end
    end

  end
end
