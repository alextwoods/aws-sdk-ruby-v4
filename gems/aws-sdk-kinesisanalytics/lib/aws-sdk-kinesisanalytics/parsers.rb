# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisAnalytics
  module Parsers

    # Operation Parser for AddApplicationCloudWatchLoggingOption
    class AddApplicationCloudWatchLoggingOption
      def self.parse(http_resp)
        data = Types::AddApplicationCloudWatchLoggingOptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
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
        data.message = map['message']
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
        data
      end
    end

    # Error Parser for CodeValidationException
    class CodeValidationException
      def self.parse(http_resp)
        data = Types::CodeValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data
      end
    end

    # Operation Parser for AddApplicationReferenceDataSource
    class AddApplicationReferenceDataSource
      def self.parse(http_resp)
        data = Types::AddApplicationReferenceDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_summary = (Parsers::ApplicationSummary.parse(map['ApplicationSummary']) unless map['ApplicationSummary'].nil?)
        data
      end
    end

    class ApplicationSummary
      def self.parse(map)
        data = Types::ApplicationSummary.new
        data.application_name = map['ApplicationName']
        data.application_arn = map['ApplicationARN']
        data.application_status = map['ApplicationStatus']
        return data
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
        data.message = map['message']
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

    class ApplicationDetail
      def self.parse(map)
        data = Types::ApplicationDetail.new
        data.application_name = map['ApplicationName']
        data.application_description = map['ApplicationDescription']
        data.application_arn = map['ApplicationARN']
        data.application_status = map['ApplicationStatus']
        data.create_timestamp = Time.at(map['CreateTimestamp'].to_i) if map['CreateTimestamp']
        data.last_update_timestamp = Time.at(map['LastUpdateTimestamp'].to_i) if map['LastUpdateTimestamp']
        data.input_descriptions = (Parsers::InputDescriptions.parse(map['InputDescriptions']) unless map['InputDescriptions'].nil?)
        data.output_descriptions = (Parsers::OutputDescriptions.parse(map['OutputDescriptions']) unless map['OutputDescriptions'].nil?)
        data.reference_data_source_descriptions = (Parsers::ReferenceDataSourceDescriptions.parse(map['ReferenceDataSourceDescriptions']) unless map['ReferenceDataSourceDescriptions'].nil?)
        data.cloud_watch_logging_option_descriptions = (Parsers::CloudWatchLoggingOptionDescriptions.parse(map['CloudWatchLoggingOptionDescriptions']) unless map['CloudWatchLoggingOptionDescriptions'].nil?)
        data.application_code = map['ApplicationCode']
        data.application_version_id = map['ApplicationVersionId']
        return data
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

    class S3ReferenceDataSourceDescription
      def self.parse(map)
        data = Types::S3ReferenceDataSourceDescription.new
        data.bucket_arn = map['BucketARN']
        data.file_key = map['FileKey']
        data.reference_role_arn = map['ReferenceRoleARN']
        return data
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

    # Error Parser for UnableToDetectSchemaException
    class UnableToDetectSchemaException
      def self.parse(http_resp)
        data = Types::UnableToDetectSchemaException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.raw_input_records = (Parsers::RawInputRecords.parse(map['RawInputRecords']) unless map['RawInputRecords'].nil?)
        data.processed_input_records = (Parsers::ProcessedInputRecords.parse(map['ProcessedInputRecords']) unless map['ProcessedInputRecords'].nil?)
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
        data
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
        data.has_more_applications = map['HasMoreApplications']
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

    # Error Parser for InvalidApplicationConfigurationException
    class InvalidApplicationConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidApplicationConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data
      end
    end
  end
end
