# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::KinesisAnalyticsV2
  module Stubs

    # Operation Stubber for AddApplicationCloudWatchLoggingOption
    class AddApplicationCloudWatchLoggingOption
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
          cloud_watch_logging_option_descriptions: CloudWatchLoggingOptionDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['CloudWatchLoggingOptionDescriptions'] = CloudWatchLoggingOptionDescriptions.stub(stub[:cloud_watch_logging_option_descriptions]) unless stub[:cloud_watch_logging_option_descriptions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
          data << CloudWatchLoggingOptionDescription.stub(element) unless element.nil?
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

    # Operation Stubber for AddApplicationInput
    class AddApplicationInput
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
          input_descriptions: InputDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['InputDescriptions'] = InputDescriptions.stub(stub[:input_descriptions]) unless stub[:input_descriptions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
          data << InputDescription.stub(element) unless element.nil?
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
        data['InAppStreamNames'] = InAppStreamNames.stub(stub[:in_app_stream_names]) unless stub[:in_app_stream_names].nil?
        data['InputProcessingConfigurationDescription'] = InputProcessingConfigurationDescription.stub(stub[:input_processing_configuration_description]) unless stub[:input_processing_configuration_description].nil?
        data['KinesisStreamsInputDescription'] = KinesisStreamsInputDescription.stub(stub[:kinesis_streams_input_description]) unless stub[:kinesis_streams_input_description].nil?
        data['KinesisFirehoseInputDescription'] = KinesisFirehoseInputDescription.stub(stub[:kinesis_firehose_input_description]) unless stub[:kinesis_firehose_input_description].nil?
        data['InputSchema'] = SourceSchema.stub(stub[:input_schema]) unless stub[:input_schema].nil?
        data['InputParallelism'] = InputParallelism.stub(stub[:input_parallelism]) unless stub[:input_parallelism].nil?
        data['InputStartingPositionConfiguration'] = InputStartingPositionConfiguration.stub(stub[:input_starting_position_configuration]) unless stub[:input_starting_position_configuration].nil?
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
        data['RecordFormat'] = RecordFormat.stub(stub[:record_format]) unless stub[:record_format].nil?
        data['RecordEncoding'] = stub[:record_encoding] unless stub[:record_encoding].nil?
        data['RecordColumns'] = RecordColumns.stub(stub[:record_columns]) unless stub[:record_columns].nil?
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
          data << RecordColumn.stub(element) unless element.nil?
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
        data['MappingParameters'] = MappingParameters.stub(stub[:mapping_parameters]) unless stub[:mapping_parameters].nil?
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
        data['JSONMappingParameters'] = JSONMappingParameters.stub(stub[:json_mapping_parameters]) unless stub[:json_mapping_parameters].nil?
        data['CSVMappingParameters'] = CSVMappingParameters.stub(stub[:csv_mapping_parameters]) unless stub[:csv_mapping_parameters].nil?
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
        data['InputLambdaProcessorDescription'] = InputLambdaProcessorDescription.stub(stub[:input_lambda_processor_description]) unless stub[:input_lambda_processor_description].nil?
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

    # Operation Stubber for AddApplicationInputProcessingConfiguration
    class AddApplicationInputProcessingConfiguration
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
          input_id: 'input_id',
          input_processing_configuration_description: InputProcessingConfigurationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['InputId'] = stub[:input_id] unless stub[:input_id].nil?
        data['InputProcessingConfigurationDescription'] = InputProcessingConfigurationDescription.stub(stub[:input_processing_configuration_description]) unless stub[:input_processing_configuration_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddApplicationOutput
    class AddApplicationOutput
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
          output_descriptions: OutputDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['OutputDescriptions'] = OutputDescriptions.stub(stub[:output_descriptions]) unless stub[:output_descriptions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
          data << OutputDescription.stub(element) unless element.nil?
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
        data['KinesisStreamsOutputDescription'] = KinesisStreamsOutputDescription.stub(stub[:kinesis_streams_output_description]) unless stub[:kinesis_streams_output_description].nil?
        data['KinesisFirehoseOutputDescription'] = KinesisFirehoseOutputDescription.stub(stub[:kinesis_firehose_output_description]) unless stub[:kinesis_firehose_output_description].nil?
        data['LambdaOutputDescription'] = LambdaOutputDescription.stub(stub[:lambda_output_description]) unless stub[:lambda_output_description].nil?
        data['DestinationSchema'] = DestinationSchema.stub(stub[:destination_schema]) unless stub[:destination_schema].nil?
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

    # Operation Stubber for AddApplicationReferenceDataSource
    class AddApplicationReferenceDataSource
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
          reference_data_source_descriptions: ReferenceDataSourceDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['ReferenceDataSourceDescriptions'] = ReferenceDataSourceDescriptions.stub(stub[:reference_data_source_descriptions]) unless stub[:reference_data_source_descriptions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
          data << ReferenceDataSourceDescription.stub(element) unless element.nil?
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
        data['S3ReferenceDataSourceDescription'] = S3ReferenceDataSourceDescription.stub(stub[:s3_reference_data_source_description]) unless stub[:s3_reference_data_source_description].nil?
        data['ReferenceSchema'] = SourceSchema.stub(stub[:reference_schema]) unless stub[:reference_schema].nil?
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

    # Operation Stubber for AddApplicationVpcConfiguration
    class AddApplicationVpcConfiguration
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
          vpc_configuration_description: VpcConfigurationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['VpcConfigurationDescription'] = VpcConfigurationDescription.stub(stub[:vpc_configuration_description]) unless stub[:vpc_configuration_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for VpcConfigurationDescription
    class VpcConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('VpcConfigurationDescription')
        visited = visited + ['VpcConfigurationDescription']
        {
          vpc_configuration_id: 'vpc_configuration_id',
          vpc_id: 'vpc_id',
          subnet_ids: SubnetIds.default(visited),
          security_group_ids: SecurityGroupIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfigurationDescription.new
        data = {}
        data['VpcConfigurationId'] = stub[:vpc_configuration_id] unless stub[:vpc_configuration_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['SecurityGroupIds'] = SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
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

    # List Stubber for SubnetIds
    class SubnetIds
      def self.default(visited=[])
        return nil if visited.include?('SubnetIds')
        visited = visited + ['SubnetIds']
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

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application_detail: ApplicationDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationDetail'] = ApplicationDetail.stub(stub[:application_detail]) unless stub[:application_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ApplicationDetail
    class ApplicationDetail
      def self.default(visited=[])
        return nil if visited.include?('ApplicationDetail')
        visited = visited + ['ApplicationDetail']
        {
          application_arn: 'application_arn',
          application_description: 'application_description',
          application_name: 'application_name',
          runtime_environment: 'runtime_environment',
          service_execution_role: 'service_execution_role',
          application_status: 'application_status',
          application_version_id: 1,
          create_timestamp: Time.now,
          last_update_timestamp: Time.now,
          application_configuration_description: ApplicationConfigurationDescription.default(visited),
          cloud_watch_logging_option_descriptions: CloudWatchLoggingOptionDescriptions.default(visited),
          application_maintenance_configuration_description: ApplicationMaintenanceConfigurationDescription.default(visited),
          application_version_updated_from: 1,
          application_version_rolled_back_from: 1,
          conditional_token: 'conditional_token',
          application_version_rolled_back_to: 1,
          application_mode: 'application_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationDetail.new
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationDescription'] = stub[:application_description] unless stub[:application_description].nil?
        data['ApplicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['RuntimeEnvironment'] = stub[:runtime_environment] unless stub[:runtime_environment].nil?
        data['ServiceExecutionRole'] = stub[:service_execution_role] unless stub[:service_execution_role].nil?
        data['ApplicationStatus'] = stub[:application_status] unless stub[:application_status].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['CreateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_timestamp]).to_i unless stub[:create_timestamp].nil?
        data['LastUpdateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_timestamp]).to_i unless stub[:last_update_timestamp].nil?
        data['ApplicationConfigurationDescription'] = ApplicationConfigurationDescription.stub(stub[:application_configuration_description]) unless stub[:application_configuration_description].nil?
        data['CloudWatchLoggingOptionDescriptions'] = CloudWatchLoggingOptionDescriptions.stub(stub[:cloud_watch_logging_option_descriptions]) unless stub[:cloud_watch_logging_option_descriptions].nil?
        data['ApplicationMaintenanceConfigurationDescription'] = ApplicationMaintenanceConfigurationDescription.stub(stub[:application_maintenance_configuration_description]) unless stub[:application_maintenance_configuration_description].nil?
        data['ApplicationVersionUpdatedFrom'] = stub[:application_version_updated_from] unless stub[:application_version_updated_from].nil?
        data['ApplicationVersionRolledBackFrom'] = stub[:application_version_rolled_back_from] unless stub[:application_version_rolled_back_from].nil?
        data['ConditionalToken'] = stub[:conditional_token] unless stub[:conditional_token].nil?
        data['ApplicationVersionRolledBackTo'] = stub[:application_version_rolled_back_to] unless stub[:application_version_rolled_back_to].nil?
        data['ApplicationMode'] = stub[:application_mode] unless stub[:application_mode].nil?
        data
      end
    end

    # Structure Stubber for ApplicationMaintenanceConfigurationDescription
    class ApplicationMaintenanceConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('ApplicationMaintenanceConfigurationDescription')
        visited = visited + ['ApplicationMaintenanceConfigurationDescription']
        {
          application_maintenance_window_start_time: 'application_maintenance_window_start_time',
          application_maintenance_window_end_time: 'application_maintenance_window_end_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationMaintenanceConfigurationDescription.new
        data = {}
        data['ApplicationMaintenanceWindowStartTime'] = stub[:application_maintenance_window_start_time] unless stub[:application_maintenance_window_start_time].nil?
        data['ApplicationMaintenanceWindowEndTime'] = stub[:application_maintenance_window_end_time] unless stub[:application_maintenance_window_end_time].nil?
        data
      end
    end

    # Structure Stubber for ApplicationConfigurationDescription
    class ApplicationConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('ApplicationConfigurationDescription')
        visited = visited + ['ApplicationConfigurationDescription']
        {
          sql_application_configuration_description: SqlApplicationConfigurationDescription.default(visited),
          application_code_configuration_description: ApplicationCodeConfigurationDescription.default(visited),
          run_configuration_description: RunConfigurationDescription.default(visited),
          flink_application_configuration_description: FlinkApplicationConfigurationDescription.default(visited),
          environment_property_descriptions: EnvironmentPropertyDescriptions.default(visited),
          application_snapshot_configuration_description: ApplicationSnapshotConfigurationDescription.default(visited),
          vpc_configuration_descriptions: VpcConfigurationDescriptions.default(visited),
          zeppelin_application_configuration_description: ZeppelinApplicationConfigurationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationConfigurationDescription.new
        data = {}
        data['SqlApplicationConfigurationDescription'] = SqlApplicationConfigurationDescription.stub(stub[:sql_application_configuration_description]) unless stub[:sql_application_configuration_description].nil?
        data['ApplicationCodeConfigurationDescription'] = ApplicationCodeConfigurationDescription.stub(stub[:application_code_configuration_description]) unless stub[:application_code_configuration_description].nil?
        data['RunConfigurationDescription'] = RunConfigurationDescription.stub(stub[:run_configuration_description]) unless stub[:run_configuration_description].nil?
        data['FlinkApplicationConfigurationDescription'] = FlinkApplicationConfigurationDescription.stub(stub[:flink_application_configuration_description]) unless stub[:flink_application_configuration_description].nil?
        data['EnvironmentPropertyDescriptions'] = EnvironmentPropertyDescriptions.stub(stub[:environment_property_descriptions]) unless stub[:environment_property_descriptions].nil?
        data['ApplicationSnapshotConfigurationDescription'] = ApplicationSnapshotConfigurationDescription.stub(stub[:application_snapshot_configuration_description]) unless stub[:application_snapshot_configuration_description].nil?
        data['VpcConfigurationDescriptions'] = VpcConfigurationDescriptions.stub(stub[:vpc_configuration_descriptions]) unless stub[:vpc_configuration_descriptions].nil?
        data['ZeppelinApplicationConfigurationDescription'] = ZeppelinApplicationConfigurationDescription.stub(stub[:zeppelin_application_configuration_description]) unless stub[:zeppelin_application_configuration_description].nil?
        data
      end
    end

    # Structure Stubber for ZeppelinApplicationConfigurationDescription
    class ZeppelinApplicationConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('ZeppelinApplicationConfigurationDescription')
        visited = visited + ['ZeppelinApplicationConfigurationDescription']
        {
          monitoring_configuration_description: ZeppelinMonitoringConfigurationDescription.default(visited),
          catalog_configuration_description: CatalogConfigurationDescription.default(visited),
          deploy_as_application_configuration_description: DeployAsApplicationConfigurationDescription.default(visited),
          custom_artifacts_configuration_description: CustomArtifactsConfigurationDescriptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ZeppelinApplicationConfigurationDescription.new
        data = {}
        data['MonitoringConfigurationDescription'] = ZeppelinMonitoringConfigurationDescription.stub(stub[:monitoring_configuration_description]) unless stub[:monitoring_configuration_description].nil?
        data['CatalogConfigurationDescription'] = CatalogConfigurationDescription.stub(stub[:catalog_configuration_description]) unless stub[:catalog_configuration_description].nil?
        data['DeployAsApplicationConfigurationDescription'] = DeployAsApplicationConfigurationDescription.stub(stub[:deploy_as_application_configuration_description]) unless stub[:deploy_as_application_configuration_description].nil?
        data['CustomArtifactsConfigurationDescription'] = CustomArtifactsConfigurationDescriptionList.stub(stub[:custom_artifacts_configuration_description]) unless stub[:custom_artifacts_configuration_description].nil?
        data
      end
    end

    # List Stubber for CustomArtifactsConfigurationDescriptionList
    class CustomArtifactsConfigurationDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('CustomArtifactsConfigurationDescriptionList')
        visited = visited + ['CustomArtifactsConfigurationDescriptionList']
        [
          CustomArtifactConfigurationDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomArtifactConfigurationDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomArtifactConfigurationDescription
    class CustomArtifactConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('CustomArtifactConfigurationDescription')
        visited = visited + ['CustomArtifactConfigurationDescription']
        {
          artifact_type: 'artifact_type',
          s3_content_location_description: S3ContentLocation.default(visited),
          maven_reference_description: MavenReference.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomArtifactConfigurationDescription.new
        data = {}
        data['ArtifactType'] = stub[:artifact_type] unless stub[:artifact_type].nil?
        data['S3ContentLocationDescription'] = S3ContentLocation.stub(stub[:s3_content_location_description]) unless stub[:s3_content_location_description].nil?
        data['MavenReferenceDescription'] = MavenReference.stub(stub[:maven_reference_description]) unless stub[:maven_reference_description].nil?
        data
      end
    end

    # Structure Stubber for MavenReference
    class MavenReference
      def self.default(visited=[])
        return nil if visited.include?('MavenReference')
        visited = visited + ['MavenReference']
        {
          group_id: 'group_id',
          artifact_id: 'artifact_id',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::MavenReference.new
        data = {}
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['ArtifactId'] = stub[:artifact_id] unless stub[:artifact_id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for S3ContentLocation
    class S3ContentLocation
      def self.default(visited=[])
        return nil if visited.include?('S3ContentLocation')
        visited = visited + ['S3ContentLocation']
        {
          bucket_arn: 'bucket_arn',
          file_key: 'file_key',
          object_version: 'object_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ContentLocation.new
        data = {}
        data['BucketARN'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['FileKey'] = stub[:file_key] unless stub[:file_key].nil?
        data['ObjectVersion'] = stub[:object_version] unless stub[:object_version].nil?
        data
      end
    end

    # Structure Stubber for DeployAsApplicationConfigurationDescription
    class DeployAsApplicationConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('DeployAsApplicationConfigurationDescription')
        visited = visited + ['DeployAsApplicationConfigurationDescription']
        {
          s3_content_location_description: S3ContentBaseLocationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeployAsApplicationConfigurationDescription.new
        data = {}
        data['S3ContentLocationDescription'] = S3ContentBaseLocationDescription.stub(stub[:s3_content_location_description]) unless stub[:s3_content_location_description].nil?
        data
      end
    end

    # Structure Stubber for S3ContentBaseLocationDescription
    class S3ContentBaseLocationDescription
      def self.default(visited=[])
        return nil if visited.include?('S3ContentBaseLocationDescription')
        visited = visited + ['S3ContentBaseLocationDescription']
        {
          bucket_arn: 'bucket_arn',
          base_path: 'base_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ContentBaseLocationDescription.new
        data = {}
        data['BucketARN'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['BasePath'] = stub[:base_path] unless stub[:base_path].nil?
        data
      end
    end

    # Structure Stubber for CatalogConfigurationDescription
    class CatalogConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('CatalogConfigurationDescription')
        visited = visited + ['CatalogConfigurationDescription']
        {
          glue_data_catalog_configuration_description: GlueDataCatalogConfigurationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CatalogConfigurationDescription.new
        data = {}
        data['GlueDataCatalogConfigurationDescription'] = GlueDataCatalogConfigurationDescription.stub(stub[:glue_data_catalog_configuration_description]) unless stub[:glue_data_catalog_configuration_description].nil?
        data
      end
    end

    # Structure Stubber for GlueDataCatalogConfigurationDescription
    class GlueDataCatalogConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('GlueDataCatalogConfigurationDescription')
        visited = visited + ['GlueDataCatalogConfigurationDescription']
        {
          database_arn: 'database_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::GlueDataCatalogConfigurationDescription.new
        data = {}
        data['DatabaseARN'] = stub[:database_arn] unless stub[:database_arn].nil?
        data
      end
    end

    # Structure Stubber for ZeppelinMonitoringConfigurationDescription
    class ZeppelinMonitoringConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('ZeppelinMonitoringConfigurationDescription')
        visited = visited + ['ZeppelinMonitoringConfigurationDescription']
        {
          log_level: 'log_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::ZeppelinMonitoringConfigurationDescription.new
        data = {}
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data
      end
    end

    # List Stubber for VpcConfigurationDescriptions
    class VpcConfigurationDescriptions
      def self.default(visited=[])
        return nil if visited.include?('VpcConfigurationDescriptions')
        visited = visited + ['VpcConfigurationDescriptions']
        [
          VpcConfigurationDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VpcConfigurationDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationSnapshotConfigurationDescription
    class ApplicationSnapshotConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSnapshotConfigurationDescription')
        visited = visited + ['ApplicationSnapshotConfigurationDescription']
        {
          snapshots_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSnapshotConfigurationDescription.new
        data = {}
        data['SnapshotsEnabled'] = stub[:snapshots_enabled] unless stub[:snapshots_enabled].nil?
        data
      end
    end

    # Structure Stubber for EnvironmentPropertyDescriptions
    class EnvironmentPropertyDescriptions
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentPropertyDescriptions')
        visited = visited + ['EnvironmentPropertyDescriptions']
        {
          property_group_descriptions: PropertyGroups.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentPropertyDescriptions.new
        data = {}
        data['PropertyGroupDescriptions'] = PropertyGroups.stub(stub[:property_group_descriptions]) unless stub[:property_group_descriptions].nil?
        data
      end
    end

    # List Stubber for PropertyGroups
    class PropertyGroups
      def self.default(visited=[])
        return nil if visited.include?('PropertyGroups')
        visited = visited + ['PropertyGroups']
        [
          PropertyGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PropertyGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PropertyGroup
    class PropertyGroup
      def self.default(visited=[])
        return nil if visited.include?('PropertyGroup')
        visited = visited + ['PropertyGroup']
        {
          property_group_id: 'property_group_id',
          property_map: PropertyMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyGroup.new
        data = {}
        data['PropertyGroupId'] = stub[:property_group_id] unless stub[:property_group_id].nil?
        data['PropertyMap'] = PropertyMap.stub(stub[:property_map]) unless stub[:property_map].nil?
        data
      end
    end

    # Map Stubber for PropertyMap
    class PropertyMap
      def self.default(visited=[])
        return nil if visited.include?('PropertyMap')
        visited = visited + ['PropertyMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FlinkApplicationConfigurationDescription
    class FlinkApplicationConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('FlinkApplicationConfigurationDescription')
        visited = visited + ['FlinkApplicationConfigurationDescription']
        {
          checkpoint_configuration_description: CheckpointConfigurationDescription.default(visited),
          monitoring_configuration_description: MonitoringConfigurationDescription.default(visited),
          parallelism_configuration_description: ParallelismConfigurationDescription.default(visited),
          job_plan_description: 'job_plan_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::FlinkApplicationConfigurationDescription.new
        data = {}
        data['CheckpointConfigurationDescription'] = CheckpointConfigurationDescription.stub(stub[:checkpoint_configuration_description]) unless stub[:checkpoint_configuration_description].nil?
        data['MonitoringConfigurationDescription'] = MonitoringConfigurationDescription.stub(stub[:monitoring_configuration_description]) unless stub[:monitoring_configuration_description].nil?
        data['ParallelismConfigurationDescription'] = ParallelismConfigurationDescription.stub(stub[:parallelism_configuration_description]) unless stub[:parallelism_configuration_description].nil?
        data['JobPlanDescription'] = stub[:job_plan_description] unless stub[:job_plan_description].nil?
        data
      end
    end

    # Structure Stubber for ParallelismConfigurationDescription
    class ParallelismConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('ParallelismConfigurationDescription')
        visited = visited + ['ParallelismConfigurationDescription']
        {
          configuration_type: 'configuration_type',
          parallelism: 1,
          parallelism_per_kpu: 1,
          current_parallelism: 1,
          auto_scaling_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ParallelismConfigurationDescription.new
        data = {}
        data['ConfigurationType'] = stub[:configuration_type] unless stub[:configuration_type].nil?
        data['Parallelism'] = stub[:parallelism] unless stub[:parallelism].nil?
        data['ParallelismPerKPU'] = stub[:parallelism_per_kpu] unless stub[:parallelism_per_kpu].nil?
        data['CurrentParallelism'] = stub[:current_parallelism] unless stub[:current_parallelism].nil?
        data['AutoScalingEnabled'] = stub[:auto_scaling_enabled] unless stub[:auto_scaling_enabled].nil?
        data
      end
    end

    # Structure Stubber for MonitoringConfigurationDescription
    class MonitoringConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('MonitoringConfigurationDescription')
        visited = visited + ['MonitoringConfigurationDescription']
        {
          configuration_type: 'configuration_type',
          metrics_level: 'metrics_level',
          log_level: 'log_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringConfigurationDescription.new
        data = {}
        data['ConfigurationType'] = stub[:configuration_type] unless stub[:configuration_type].nil?
        data['MetricsLevel'] = stub[:metrics_level] unless stub[:metrics_level].nil?
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data
      end
    end

    # Structure Stubber for CheckpointConfigurationDescription
    class CheckpointConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('CheckpointConfigurationDescription')
        visited = visited + ['CheckpointConfigurationDescription']
        {
          configuration_type: 'configuration_type',
          checkpointing_enabled: false,
          checkpoint_interval: 1,
          min_pause_between_checkpoints: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CheckpointConfigurationDescription.new
        data = {}
        data['ConfigurationType'] = stub[:configuration_type] unless stub[:configuration_type].nil?
        data['CheckpointingEnabled'] = stub[:checkpointing_enabled] unless stub[:checkpointing_enabled].nil?
        data['CheckpointInterval'] = stub[:checkpoint_interval] unless stub[:checkpoint_interval].nil?
        data['MinPauseBetweenCheckpoints'] = stub[:min_pause_between_checkpoints] unless stub[:min_pause_between_checkpoints].nil?
        data
      end
    end

    # Structure Stubber for RunConfigurationDescription
    class RunConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('RunConfigurationDescription')
        visited = visited + ['RunConfigurationDescription']
        {
          application_restore_configuration_description: ApplicationRestoreConfiguration.default(visited),
          flink_run_configuration_description: FlinkRunConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RunConfigurationDescription.new
        data = {}
        data['ApplicationRestoreConfigurationDescription'] = ApplicationRestoreConfiguration.stub(stub[:application_restore_configuration_description]) unless stub[:application_restore_configuration_description].nil?
        data['FlinkRunConfigurationDescription'] = FlinkRunConfiguration.stub(stub[:flink_run_configuration_description]) unless stub[:flink_run_configuration_description].nil?
        data
      end
    end

    # Structure Stubber for FlinkRunConfiguration
    class FlinkRunConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FlinkRunConfiguration')
        visited = visited + ['FlinkRunConfiguration']
        {
          allow_non_restored_state: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FlinkRunConfiguration.new
        data = {}
        data['AllowNonRestoredState'] = stub[:allow_non_restored_state] unless stub[:allow_non_restored_state].nil?
        data
      end
    end

    # Structure Stubber for ApplicationRestoreConfiguration
    class ApplicationRestoreConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ApplicationRestoreConfiguration')
        visited = visited + ['ApplicationRestoreConfiguration']
        {
          application_restore_type: 'application_restore_type',
          snapshot_name: 'snapshot_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationRestoreConfiguration.new
        data = {}
        data['ApplicationRestoreType'] = stub[:application_restore_type] unless stub[:application_restore_type].nil?
        data['SnapshotName'] = stub[:snapshot_name] unless stub[:snapshot_name].nil?
        data
      end
    end

    # Structure Stubber for ApplicationCodeConfigurationDescription
    class ApplicationCodeConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('ApplicationCodeConfigurationDescription')
        visited = visited + ['ApplicationCodeConfigurationDescription']
        {
          code_content_type: 'code_content_type',
          code_content_description: CodeContentDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationCodeConfigurationDescription.new
        data = {}
        data['CodeContentType'] = stub[:code_content_type] unless stub[:code_content_type].nil?
        data['CodeContentDescription'] = CodeContentDescription.stub(stub[:code_content_description]) unless stub[:code_content_description].nil?
        data
      end
    end

    # Structure Stubber for CodeContentDescription
    class CodeContentDescription
      def self.default(visited=[])
        return nil if visited.include?('CodeContentDescription')
        visited = visited + ['CodeContentDescription']
        {
          text_content: 'text_content',
          code_md5: 'code_md5',
          code_size: 1,
          s3_application_code_location_description: S3ApplicationCodeLocationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeContentDescription.new
        data = {}
        data['TextContent'] = stub[:text_content] unless stub[:text_content].nil?
        data['CodeMD5'] = stub[:code_md5] unless stub[:code_md5].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['S3ApplicationCodeLocationDescription'] = S3ApplicationCodeLocationDescription.stub(stub[:s3_application_code_location_description]) unless stub[:s3_application_code_location_description].nil?
        data
      end
    end

    # Structure Stubber for S3ApplicationCodeLocationDescription
    class S3ApplicationCodeLocationDescription
      def self.default(visited=[])
        return nil if visited.include?('S3ApplicationCodeLocationDescription')
        visited = visited + ['S3ApplicationCodeLocationDescription']
        {
          bucket_arn: 'bucket_arn',
          file_key: 'file_key',
          object_version: 'object_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ApplicationCodeLocationDescription.new
        data = {}
        data['BucketARN'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['FileKey'] = stub[:file_key] unless stub[:file_key].nil?
        data['ObjectVersion'] = stub[:object_version] unless stub[:object_version].nil?
        data
      end
    end

    # Structure Stubber for SqlApplicationConfigurationDescription
    class SqlApplicationConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('SqlApplicationConfigurationDescription')
        visited = visited + ['SqlApplicationConfigurationDescription']
        {
          input_descriptions: InputDescriptions.default(visited),
          output_descriptions: OutputDescriptions.default(visited),
          reference_data_source_descriptions: ReferenceDataSourceDescriptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlApplicationConfigurationDescription.new
        data = {}
        data['InputDescriptions'] = InputDescriptions.stub(stub[:input_descriptions]) unless stub[:input_descriptions].nil?
        data['OutputDescriptions'] = OutputDescriptions.stub(stub[:output_descriptions]) unless stub[:output_descriptions].nil?
        data['ReferenceDataSourceDescriptions'] = ReferenceDataSourceDescriptions.stub(stub[:reference_data_source_descriptions]) unless stub[:reference_data_source_descriptions].nil?
        data
      end
    end

    # Operation Stubber for CreateApplicationPresignedUrl
    class CreateApplicationPresignedUrl
      def self.default(visited=[])
        {
          authorized_url: 'authorized_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AuthorizedUrl'] = stub[:authorized_url] unless stub[:authorized_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateApplicationSnapshot
    class CreateApplicationSnapshot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationCloudWatchLoggingOption
    class DeleteApplicationCloudWatchLoggingOption
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
          cloud_watch_logging_option_descriptions: CloudWatchLoggingOptionDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['CloudWatchLoggingOptionDescriptions'] = CloudWatchLoggingOptionDescriptions.stub(stub[:cloud_watch_logging_option_descriptions]) unless stub[:cloud_watch_logging_option_descriptions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationInputProcessingConfiguration
    class DeleteApplicationInputProcessingConfiguration
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationOutput
    class DeleteApplicationOutput
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationReferenceDataSource
    class DeleteApplicationReferenceDataSource
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationSnapshot
    class DeleteApplicationSnapshot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationVpcConfiguration
    class DeleteApplicationVpcConfiguration
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_version_id: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        data['ApplicationDetail'] = ApplicationDetail.stub(stub[:application_detail]) unless stub[:application_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeApplicationSnapshot
    class DescribeApplicationSnapshot
      def self.default(visited=[])
        {
          snapshot_details: SnapshotDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnapshotDetails'] = SnapshotDetails.stub(stub[:snapshot_details]) unless stub[:snapshot_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SnapshotDetails
    class SnapshotDetails
      def self.default(visited=[])
        return nil if visited.include?('SnapshotDetails')
        visited = visited + ['SnapshotDetails']
        {
          snapshot_name: 'snapshot_name',
          snapshot_status: 'snapshot_status',
          application_version_id: 1,
          snapshot_creation_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SnapshotDetails.new
        data = {}
        data['SnapshotName'] = stub[:snapshot_name] unless stub[:snapshot_name].nil?
        data['SnapshotStatus'] = stub[:snapshot_status] unless stub[:snapshot_status].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['SnapshotCreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:snapshot_creation_timestamp]).to_i unless stub[:snapshot_creation_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeApplicationVersion
    class DescribeApplicationVersion
      def self.default(visited=[])
        {
          application_version_detail: ApplicationDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationVersionDetail'] = ApplicationDetail.stub(stub[:application_version_detail]) unless stub[:application_version_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        data['InputSchema'] = SourceSchema.stub(stub[:input_schema]) unless stub[:input_schema].nil?
        data['ParsedInputRecords'] = ParsedInputRecords.stub(stub[:parsed_input_records]) unless stub[:parsed_input_records].nil?
        data['ProcessedInputRecords'] = ProcessedInputRecords.stub(stub[:processed_input_records]) unless stub[:processed_input_records].nil?
        data['RawInputRecords'] = RawInputRecords.stub(stub[:raw_input_records]) unless stub[:raw_input_records].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << ParsedInputRecord.stub(element) unless element.nil?
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

    # Operation Stubber for ListApplicationSnapshots
    class ListApplicationSnapshots
      def self.default(visited=[])
        {
          snapshot_summaries: SnapshotSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnapshotSummaries'] = SnapshotSummaries.stub(stub[:snapshot_summaries]) unless stub[:snapshot_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SnapshotSummaries
    class SnapshotSummaries
      def self.default(visited=[])
        return nil if visited.include?('SnapshotSummaries')
        visited = visited + ['SnapshotSummaries']
        [
          SnapshotDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SnapshotDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListApplicationVersions
    class ListApplicationVersions
      def self.default(visited=[])
        {
          application_version_summaries: ApplicationVersionSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationVersionSummaries'] = ApplicationVersionSummaries.stub(stub[:application_version_summaries]) unless stub[:application_version_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationVersionSummaries
    class ApplicationVersionSummaries
      def self.default(visited=[])
        return nil if visited.include?('ApplicationVersionSummaries')
        visited = visited + ['ApplicationVersionSummaries']
        [
          ApplicationVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApplicationVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationVersionSummary
    class ApplicationVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationVersionSummary')
        visited = visited + ['ApplicationVersionSummary']
        {
          application_version_id: 1,
          application_status: 'application_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationVersionSummary.new
        data = {}
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['ApplicationStatus'] = stub[:application_status] unless stub[:application_status].nil?
        data
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          application_summaries: ApplicationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationSummaries'] = ApplicationSummaries.stub(stub[:application_summaries]) unless stub[:application_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << ApplicationSummary.stub(element) unless element.nil?
        end
        data
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
          application_version_id: 1,
          runtime_environment: 'runtime_environment',
          application_mode: 'application_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSummary.new
        data = {}
        data['ApplicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationStatus'] = stub[:application_status] unless stub[:application_status].nil?
        data['ApplicationVersionId'] = stub[:application_version_id] unless stub[:application_version_id].nil?
        data['RuntimeEnvironment'] = stub[:runtime_environment] unless stub[:runtime_environment].nil?
        data['ApplicationMode'] = stub[:application_mode] unless stub[:application_mode].nil?
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
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << Tag.stub(element) unless element.nil?
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

    # Operation Stubber for RollbackApplication
    class RollbackApplication
      def self.default(visited=[])
        {
          application_detail: ApplicationDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationDetail'] = ApplicationDetail.stub(stub[:application_detail]) unless stub[:application_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
          application_detail: ApplicationDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationDetail'] = ApplicationDetail.stub(stub[:application_detail]) unless stub[:application_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplicationMaintenanceConfiguration
    class UpdateApplicationMaintenanceConfiguration
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          application_maintenance_configuration_description: ApplicationMaintenanceConfigurationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationARN'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['ApplicationMaintenanceConfigurationDescription'] = ApplicationMaintenanceConfigurationDescription.stub(stub[:application_maintenance_configuration_description]) unless stub[:application_maintenance_configuration_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
