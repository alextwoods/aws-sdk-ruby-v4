# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisAnalytics
  module Stubs

    # Operation Stubber for AddApplicationCloudWatchLoggingOption
    class AddApplicationCloudWatchLoggingOption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddApplicationInput
    class AddApplicationInput
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddApplicationInputProcessingConfiguration
    class AddApplicationInputProcessingConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddApplicationOutput
    class AddApplicationOutput
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddApplicationReferenceDataSource
    class AddApplicationReferenceDataSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application_summary: ApplicationSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationSummary'] = Stubs::ApplicationSummary.stub(stub[:application_summary]) unless stub[:application_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ApplicationSummary
    class ApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummary')
        visited = visited + ['ApplicationSummary']
        {
          application_name: 'application_name',
          application_arn: 'application_arn',
          application_status: 'application_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSummary.new
        data = {}
        data['ApplicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationStatus'] = stub[:application_status] unless stub[:application_status].nil?
        data
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationCloudWatchLoggingOption
    class DeleteApplicationCloudWatchLoggingOption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationInputProcessingConfiguration
    class DeleteApplicationInputProcessingConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationOutput
    class DeleteApplicationOutput
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationReferenceDataSource
    class DeleteApplicationReferenceDataSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeApplication
    class DescribeApplication
      def self.default(visited=[])
        {
          application_detail: ApplicationDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationDetail'] = Stubs::ApplicationDetail.stub(stub[:application_detail]) unless stub[:application_detail].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ApplicationDetail
    class ApplicationDetail
      def self.default(visited=[])
        return nil if visited.include?('ApplicationDetail')
        visited = visited + ['ApplicationDetail']
        {
          application_name: 'application_name',
          application_description: 'application_description',
          application_arn: 'application_arn',
          application_status: 'application_status',
          create_timestamp: Time.now,
          last_update_timestamp: Time.now,
          input_descriptions: InputDescriptions.default(visited),
          output_descriptions: OutputDescriptions.default(visited),
          reference_data_source_descriptions: ReferenceDataSourceDescriptions.default(visited),
          cloud_watch_logging_option_descriptions: CloudWatchLoggingOptionDescriptions.default(visited),
          application_code: 'application_code',
          application_version_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationDetail.new
        data = {}
        data['ApplicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['ApplicationDescription'] = stub[:application_description] unless stub[:application_description].nil?
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationStatus'] = stub[:application_status] unless stub[:application_status].nil?
        data['CreateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_timestamp]).to_i unless stub[:create_timestamp].nil?
        data['LastUpdateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_timestamp]).to_i unless stub[:last_update_timestamp].nil?
        data['InputDescriptions'] = Stubs::InputDescriptions.stub(stub[:input_descriptions]) unless stub[:input_descriptions].nil?
        data['OutputDescriptions'] = Stubs::OutputDescriptions.stub(stub[:output_descriptions]) unless stub[:output_descriptions].nil?
        data['ReferenceDataSourceDescriptions'] = Stubs::ReferenceDataSourceDescriptions.stub(stub[:reference_data_source_descriptions]) unless stub[:reference_data_source_descriptions].nil?
        data['CloudWatchLoggingOptionDescriptions'] = Stubs::CloudWatchLoggingOptionDescriptions.stub(stub[:cloud_watch_logging_option_descriptions]) unless stub[:cloud_watch_logging_option_descriptions].nil?
        data['ApplicationCode'] = stub[:application_code] unless stub[:application_code].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data
      end
    end

    # List Stubber for CloudWatchLoggingOptionDescriptions
    class CloudWatchLoggingOptionDescriptions
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLoggingOptionDescriptions')
        visited = visited + ['CloudWatchLoggingOptionDescriptions']
        [
          CloudWatchLoggingOptionDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CloudWatchLoggingOptionDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CloudWatchLoggingOptionDescription
    class CloudWatchLoggingOptionDescription
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLoggingOptionDescription')
        visited = visited + ['CloudWatchLoggingOptionDescription']
        {
          cloud_watch_logging_option_id: 'cloud_watch_logging_option_id',
          log_stream_arn: 'log_stream_arn',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLoggingOptionDescription.new
        data = {}
        data['CloudWatchLoggingOptionId'] = stub[:cloud_watch_logging_option_id] unless stub[:cloud_watch_logging_option_id].nil?
        data['LogStreamARN'] = stub[:log_stream_arn] unless stub[:log_stream_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for ReferenceDataSourceDescriptions
    class ReferenceDataSourceDescriptions
      def self.default(visited=[])
        return nil if visited.include?('ReferenceDataSourceDescriptions')
        visited = visited + ['ReferenceDataSourceDescriptions']
        [
          ReferenceDataSourceDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReferenceDataSourceDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReferenceDataSourceDescription
    class ReferenceDataSourceDescription
      def self.default(visited=[])
        return nil if visited.include?('ReferenceDataSourceDescription')
        visited = visited + ['ReferenceDataSourceDescription']
        {
          reference_id: 'reference_id',
          table_name: 'table_name',
          s3_reference_data_source_description: S3ReferenceDataSourceDescription.default(visited),
          reference_schema: SourceSchema.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReferenceDataSourceDescription.new
        data = {}
        data['ReferenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['S3ReferenceDataSourceDescription'] = Stubs::S3ReferenceDataSourceDescription.stub(stub[:s3_reference_data_source_description]) unless stub[:s3_reference_data_source_description].nil?
        data['ReferenceSchema'] = Stubs::SourceSchema.stub(stub[:reference_schema]) unless stub[:reference_schema].nil?
        data
      end
    end

    # Structure Stubber for SourceSchema
    class SourceSchema
      def self.default(visited=[])
        return nil if visited.include?('SourceSchema')
        visited = visited + ['SourceSchema']
        {
          record_format: RecordFormat.default(visited),
          record_encoding: 'record_encoding',
          record_columns: RecordColumns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceSchema.new
        data = {}
        data['RecordFormat'] = Stubs::RecordFormat.stub(stub[:record_format]) unless stub[:record_format].nil?
        data['RecordEncoding'] = stub[:record_encoding] unless stub[:record_encoding].nil?
        data['RecordColumns'] = Stubs::RecordColumns.stub(stub[:record_columns]) unless stub[:record_columns].nil?
        data
      end
    end

    # List Stubber for RecordColumns
    class RecordColumns
      def self.default(visited=[])
        return nil if visited.include?('RecordColumns')
        visited = visited + ['RecordColumns']
        [
          RecordColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecordColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecordColumn
    class RecordColumn
      def self.default(visited=[])
        return nil if visited.include?('RecordColumn')
        visited = visited + ['RecordColumn']
        {
          name: 'name',
          mapping: 'mapping',
          sql_type: 'sql_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordColumn.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Mapping'] = stub[:mapping] unless stub[:mapping].nil?
        data['SqlType'] = stub[:sql_type] unless stub[:sql_type].nil?
        data
      end
    end

    # Structure Stubber for RecordFormat
    class RecordFormat
      def self.default(visited=[])
        return nil if visited.include?('RecordFormat')
        visited = visited + ['RecordFormat']
        {
          record_format_type: 'record_format_type',
          mapping_parameters: MappingParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordFormat.new
        data = {}
        data['RecordFormatType'] = stub[:record_format_type] unless stub[:record_format_type].nil?
        data['MappingParameters'] = Stubs::MappingParameters.stub(stub[:mapping_parameters]) unless stub[:mapping_parameters].nil?
        data
      end
    end

    # Structure Stubber for MappingParameters
    class MappingParameters
      def self.default(visited=[])
        return nil if visited.include?('MappingParameters')
        visited = visited + ['MappingParameters']
        {
          json_mapping_parameters: JSONMappingParameters.default(visited),
          csv_mapping_parameters: CSVMappingParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MappingParameters.new
        data = {}
        data['JSONMappingParameters'] = Stubs::JSONMappingParameters.stub(stub[:json_mapping_parameters]) unless stub[:json_mapping_parameters].nil?
        data['CSVMappingParameters'] = Stubs::CSVMappingParameters.stub(stub[:csv_mapping_parameters]) unless stub[:csv_mapping_parameters].nil?
        data
      end
    end

    # Structure Stubber for CSVMappingParameters
    class CSVMappingParameters
      def self.default(visited=[])
        return nil if visited.include?('CSVMappingParameters')
        visited = visited + ['CSVMappingParameters']
        {
          record_row_delimiter: 'record_row_delimiter',
          record_column_delimiter: 'record_column_delimiter',
        }
      end

      def self.stub(stub)
        stub ||= Types::CSVMappingParameters.new
        data = {}
        data['RecordRowDelimiter'] = stub[:record_row_delimiter] unless stub[:record_row_delimiter].nil?
        data['RecordColumnDelimiter'] = stub[:record_column_delimiter] unless stub[:record_column_delimiter].nil?
        data
      end
    end

    # Structure Stubber for JSONMappingParameters
    class JSONMappingParameters
      def self.default(visited=[])
        return nil if visited.include?('JSONMappingParameters')
        visited = visited + ['JSONMappingParameters']
        {
          record_row_path: 'record_row_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::JSONMappingParameters.new
        data = {}
        data['RecordRowPath'] = stub[:record_row_path] unless stub[:record_row_path].nil?
        data
      end
    end

    # Structure Stubber for S3ReferenceDataSourceDescription
    class S3ReferenceDataSourceDescription
      def self.default(visited=[])
        return nil if visited.include?('S3ReferenceDataSourceDescription')
        visited = visited + ['S3ReferenceDataSourceDescription']
        {
          bucket_arn: 'bucket_arn',
          file_key: 'file_key',
          reference_role_arn: 'reference_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ReferenceDataSourceDescription.new
        data = {}
        data['BucketARN'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['FileKey'] = stub[:file_key] unless stub[:file_key].nil?
        data['ReferenceRoleARN'] = stub[:reference_role_arn] unless stub[:reference_role_arn].nil?
        data
      end
    end

    # List Stubber for OutputDescriptions
    class OutputDescriptions
      def self.default(visited=[])
        return nil if visited.include?('OutputDescriptions')
        visited = visited + ['OutputDescriptions']
        [
          OutputDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputDescription
    class OutputDescription
      def self.default(visited=[])
        return nil if visited.include?('OutputDescription')
        visited = visited + ['OutputDescription']
        {
          output_id: 'output_id',
          name: 'name',
          kinesis_streams_output_description: KinesisStreamsOutputDescription.default(visited),
          kinesis_firehose_output_description: KinesisFirehoseOutputDescription.default(visited),
          lambda_output_description: LambdaOutputDescription.default(visited),
          destination_schema: DestinationSchema.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputDescription.new
        data = {}
        data['OutputId'] = stub[:output_id] unless stub[:output_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['KinesisStreamsOutputDescription'] = Stubs::KinesisStreamsOutputDescription.stub(stub[:kinesis_streams_output_description]) unless stub[:kinesis_streams_output_description].nil?
        data['KinesisFirehoseOutputDescription'] = Stubs::KinesisFirehoseOutputDescription.stub(stub[:kinesis_firehose_output_description]) unless stub[:kinesis_firehose_output_description].nil?
        data['LambdaOutputDescription'] = Stubs::LambdaOutputDescription.stub(stub[:lambda_output_description]) unless stub[:lambda_output_description].nil?
        data['DestinationSchema'] = Stubs::DestinationSchema.stub(stub[:destination_schema]) unless stub[:destination_schema].nil?
        data
      end
    end

    # Structure Stubber for DestinationSchema
    class DestinationSchema
      def self.default(visited=[])
        return nil if visited.include?('DestinationSchema')
        visited = visited + ['DestinationSchema']
        {
          record_format_type: 'record_format_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationSchema.new
        data = {}
        data['RecordFormatType'] = stub[:record_format_type] unless stub[:record_format_type].nil?
        data
      end
    end

    # Structure Stubber for LambdaOutputDescription
    class LambdaOutputDescription
      def self.default(visited=[])
        return nil if visited.include?('LambdaOutputDescription')
        visited = visited + ['LambdaOutputDescription']
        {
          resource_arn: 'resource_arn',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaOutputDescription.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for KinesisFirehoseOutputDescription
    class KinesisFirehoseOutputDescription
      def self.default(visited=[])
        return nil if visited.include?('KinesisFirehoseOutputDescription')
        visited = visited + ['KinesisFirehoseOutputDescription']
        {
          resource_arn: 'resource_arn',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisFirehoseOutputDescription.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for KinesisStreamsOutputDescription
    class KinesisStreamsOutputDescription
      def self.default(visited=[])
        return nil if visited.include?('KinesisStreamsOutputDescription')
        visited = visited + ['KinesisStreamsOutputDescription']
        {
          resource_arn: 'resource_arn',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisStreamsOutputDescription.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for InputDescriptions
    class InputDescriptions
      def self.default(visited=[])
        return nil if visited.include?('InputDescriptions')
        visited = visited + ['InputDescriptions']
        [
          InputDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputDescription
    class InputDescription
      def self.default(visited=[])
        return nil if visited.include?('InputDescription')
        visited = visited + ['InputDescription']
        {
          input_id: 'input_id',
          name_prefix: 'name_prefix',
          in_app_stream_names: InAppStreamNames.default(visited),
          input_processing_configuration_description: InputProcessingConfigurationDescription.default(visited),
          kinesis_streams_input_description: KinesisStreamsInputDescription.default(visited),
          kinesis_firehose_input_description: KinesisFirehoseInputDescription.default(visited),
          input_schema: SourceSchema.default(visited),
          input_parallelism: InputParallelism.default(visited),
          input_starting_position_configuration: InputStartingPositionConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDescription.new
        data = {}
        data['InputId'] = stub[:input_id] unless stub[:input_id].nil?
        data['NamePrefix'] = stub[:name_prefix] unless stub[:name_prefix].nil?
        data['InAppStreamNames'] = Stubs::InAppStreamNames.stub(stub[:in_app_stream_names]) unless stub[:in_app_stream_names].nil?
        data['InputProcessingConfigurationDescription'] = Stubs::InputProcessingConfigurationDescription.stub(stub[:input_processing_configuration_description]) unless stub[:input_processing_configuration_description].nil?
        data['KinesisStreamsInputDescription'] = Stubs::KinesisStreamsInputDescription.stub(stub[:kinesis_streams_input_description]) unless stub[:kinesis_streams_input_description].nil?
        data['KinesisFirehoseInputDescription'] = Stubs::KinesisFirehoseInputDescription.stub(stub[:kinesis_firehose_input_description]) unless stub[:kinesis_firehose_input_description].nil?
        data['InputSchema'] = Stubs::SourceSchema.stub(stub[:input_schema]) unless stub[:input_schema].nil?
        data['InputParallelism'] = Stubs::InputParallelism.stub(stub[:input_parallelism]) unless stub[:input_parallelism].nil?
        data['InputStartingPositionConfiguration'] = Stubs::InputStartingPositionConfiguration.stub(stub[:input_starting_position_configuration]) unless stub[:input_starting_position_configuration].nil?
        data
      end
    end

    # Structure Stubber for InputStartingPositionConfiguration
    class InputStartingPositionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InputStartingPositionConfiguration')
        visited = visited + ['InputStartingPositionConfiguration']
        {
          input_starting_position: 'input_starting_position',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputStartingPositionConfiguration.new
        data = {}
        data['InputStartingPosition'] = stub[:input_starting_position] unless stub[:input_starting_position].nil?
        data
      end
    end

    # Structure Stubber for InputParallelism
    class InputParallelism
      def self.default(visited=[])
        return nil if visited.include?('InputParallelism')
        visited = visited + ['InputParallelism']
        {
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InputParallelism.new
        data = {}
        data['Count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Structure Stubber for KinesisFirehoseInputDescription
    class KinesisFirehoseInputDescription
      def self.default(visited=[])
        return nil if visited.include?('KinesisFirehoseInputDescription')
        visited = visited + ['KinesisFirehoseInputDescription']
        {
          resource_arn: 'resource_arn',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisFirehoseInputDescription.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for KinesisStreamsInputDescription
    class KinesisStreamsInputDescription
      def self.default(visited=[])
        return nil if visited.include?('KinesisStreamsInputDescription')
        visited = visited + ['KinesisStreamsInputDescription']
        {
          resource_arn: 'resource_arn',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisStreamsInputDescription.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for InputProcessingConfigurationDescription
    class InputProcessingConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('InputProcessingConfigurationDescription')
        visited = visited + ['InputProcessingConfigurationDescription']
        {
          input_lambda_processor_description: InputLambdaProcessorDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputProcessingConfigurationDescription.new
        data = {}
        data['InputLambdaProcessorDescription'] = Stubs::InputLambdaProcessorDescription.stub(stub[:input_lambda_processor_description]) unless stub[:input_lambda_processor_description].nil?
        data
      end
    end

    # Structure Stubber for InputLambdaProcessorDescription
    class InputLambdaProcessorDescription
      def self.default(visited=[])
        return nil if visited.include?('InputLambdaProcessorDescription')
        visited = visited + ['InputLambdaProcessorDescription']
        {
          resource_arn: 'resource_arn',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputLambdaProcessorDescription.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for InAppStreamNames
    class InAppStreamNames
      def self.default(visited=[])
        return nil if visited.include?('InAppStreamNames')
        visited = visited + ['InAppStreamNames']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DiscoverInputSchema
    class DiscoverInputSchema
      def self.default(visited=[])
        {
          input_schema: SourceSchema.default(visited),
          parsed_input_records: ParsedInputRecords.default(visited),
          processed_input_records: ProcessedInputRecords.default(visited),
          raw_input_records: RawInputRecords.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InputSchema'] = Stubs::SourceSchema.stub(stub[:input_schema]) unless stub[:input_schema].nil?
        data['ParsedInputRecords'] = Stubs::ParsedInputRecords.stub(stub[:parsed_input_records]) unless stub[:parsed_input_records].nil?
        data['ProcessedInputRecords'] = Stubs::ProcessedInputRecords.stub(stub[:processed_input_records]) unless stub[:processed_input_records].nil?
        data['RawInputRecords'] = Stubs::RawInputRecords.stub(stub[:raw_input_records]) unless stub[:raw_input_records].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RawInputRecords
    class RawInputRecords
      def self.default(visited=[])
        return nil if visited.include?('RawInputRecords')
        visited = visited + ['RawInputRecords']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ProcessedInputRecords
    class ProcessedInputRecords
      def self.default(visited=[])
        return nil if visited.include?('ProcessedInputRecords')
        visited = visited + ['ProcessedInputRecords']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ParsedInputRecords
    class ParsedInputRecords
      def self.default(visited=[])
        return nil if visited.include?('ParsedInputRecords')
        visited = visited + ['ParsedInputRecords']
        [
          ParsedInputRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParsedInputRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for ParsedInputRecord
    class ParsedInputRecord
      def self.default(visited=[])
        return nil if visited.include?('ParsedInputRecord')
        visited = visited + ['ParsedInputRecord']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          application_summaries: ApplicationSummaries.default(visited),
          has_more_applications: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationSummaries'] = Stubs::ApplicationSummaries.stub(stub[:application_summaries]) unless stub[:application_summaries].nil?
        data['HasMoreApplications'] = stub[:has_more_applications] unless stub[:has_more_applications].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationSummaries
    class ApplicationSummaries
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummaries')
        visited = visited + ['ApplicationSummaries']
        [
          ApplicationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for StartApplication
    class StartApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopApplication
    class StopApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
