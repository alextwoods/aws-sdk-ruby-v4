# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Firehose
  module Parsers

    # Operation Parser for CreateDeliveryStream
    class CreateDeliveryStream
      def self.parse(http_resp)
        data = Types::CreateDeliveryStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.delivery_stream_arn = map['DeliveryStreamARN']
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

    # Error Parser for InvalidKMSResourceException
    class InvalidKMSResourceException
      def self.parse(http_resp)
        data = Types::InvalidKMSResourceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code = map['code']
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

    # Operation Parser for DeleteDeliveryStream
    class DeleteDeliveryStream
      def self.parse(http_resp)
        data = Types::DeleteDeliveryStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Operation Parser for DescribeDeliveryStream
    class DescribeDeliveryStream
      def self.parse(http_resp)
        data = Types::DescribeDeliveryStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.delivery_stream_description = (Parsers::DeliveryStreamDescription.parse(map['DeliveryStreamDescription']) unless map['DeliveryStreamDescription'].nil?)
        data
      end
    end

    class DeliveryStreamDescription
      def self.parse(map)
        data = Types::DeliveryStreamDescription.new
        data.delivery_stream_name = map['DeliveryStreamName']
        data.delivery_stream_arn = map['DeliveryStreamARN']
        data.delivery_stream_status = map['DeliveryStreamStatus']
        data.failure_description = (Parsers::FailureDescription.parse(map['FailureDescription']) unless map['FailureDescription'].nil?)
        data.delivery_stream_encryption_configuration = (Parsers::DeliveryStreamEncryptionConfiguration.parse(map['DeliveryStreamEncryptionConfiguration']) unless map['DeliveryStreamEncryptionConfiguration'].nil?)
        data.delivery_stream_type = map['DeliveryStreamType']
        data.version_id = map['VersionId']
        data.create_timestamp = Time.at(map['CreateTimestamp'].to_i) if map['CreateTimestamp']
        data.last_update_timestamp = Time.at(map['LastUpdateTimestamp'].to_i) if map['LastUpdateTimestamp']
        data.source = (Parsers::SourceDescription.parse(map['Source']) unless map['Source'].nil?)
        data.destinations = (Parsers::DestinationDescriptionList.parse(map['Destinations']) unless map['Destinations'].nil?)
        data.has_more_destinations = map['HasMoreDestinations']
        return data
      end
    end

    class DestinationDescriptionList
      def self.parse(list)
        list.map do |value|
          Parsers::DestinationDescription.parse(value) unless value.nil?
        end
      end
    end

    class DestinationDescription
      def self.parse(map)
        data = Types::DestinationDescription.new
        data.destination_id = map['DestinationId']
        data.s3_destination_description = (Parsers::S3DestinationDescription.parse(map['S3DestinationDescription']) unless map['S3DestinationDescription'].nil?)
        data.extended_s3_destination_description = (Parsers::ExtendedS3DestinationDescription.parse(map['ExtendedS3DestinationDescription']) unless map['ExtendedS3DestinationDescription'].nil?)
        data.redshift_destination_description = (Parsers::RedshiftDestinationDescription.parse(map['RedshiftDestinationDescription']) unless map['RedshiftDestinationDescription'].nil?)
        data.elasticsearch_destination_description = (Parsers::ElasticsearchDestinationDescription.parse(map['ElasticsearchDestinationDescription']) unless map['ElasticsearchDestinationDescription'].nil?)
        data.amazonopensearchservice_destination_description = (Parsers::AmazonopensearchserviceDestinationDescription.parse(map['AmazonopensearchserviceDestinationDescription']) unless map['AmazonopensearchserviceDestinationDescription'].nil?)
        data.splunk_destination_description = (Parsers::SplunkDestinationDescription.parse(map['SplunkDestinationDescription']) unless map['SplunkDestinationDescription'].nil?)
        data.http_endpoint_destination_description = (Parsers::HttpEndpointDestinationDescription.parse(map['HttpEndpointDestinationDescription']) unless map['HttpEndpointDestinationDescription'].nil?)
        return data
      end
    end

    class HttpEndpointDestinationDescription
      def self.parse(map)
        data = Types::HttpEndpointDestinationDescription.new
        data.endpoint_configuration = (Parsers::HttpEndpointDescription.parse(map['EndpointConfiguration']) unless map['EndpointConfiguration'].nil?)
        data.buffering_hints = (Parsers::HttpEndpointBufferingHints.parse(map['BufferingHints']) unless map['BufferingHints'].nil?)
        data.cloud_watch_logging_options = (Parsers::CloudWatchLoggingOptions.parse(map['CloudWatchLoggingOptions']) unless map['CloudWatchLoggingOptions'].nil?)
        data.request_configuration = (Parsers::HttpEndpointRequestConfiguration.parse(map['RequestConfiguration']) unless map['RequestConfiguration'].nil?)
        data.processing_configuration = (Parsers::ProcessingConfiguration.parse(map['ProcessingConfiguration']) unless map['ProcessingConfiguration'].nil?)
        data.role_arn = map['RoleARN']
        data.retry_options = (Parsers::HttpEndpointRetryOptions.parse(map['RetryOptions']) unless map['RetryOptions'].nil?)
        data.s3_backup_mode = map['S3BackupMode']
        data.s3_destination_description = (Parsers::S3DestinationDescription.parse(map['S3DestinationDescription']) unless map['S3DestinationDescription'].nil?)
        return data
      end
    end

    class S3DestinationDescription
      def self.parse(map)
        data = Types::S3DestinationDescription.new
        data.role_arn = map['RoleARN']
        data.bucket_arn = map['BucketARN']
        data.prefix = map['Prefix']
        data.error_output_prefix = map['ErrorOutputPrefix']
        data.buffering_hints = (Parsers::BufferingHints.parse(map['BufferingHints']) unless map['BufferingHints'].nil?)
        data.compression_format = map['CompressionFormat']
        data.encryption_configuration = (Parsers::EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        data.cloud_watch_logging_options = (Parsers::CloudWatchLoggingOptions.parse(map['CloudWatchLoggingOptions']) unless map['CloudWatchLoggingOptions'].nil?)
        return data
      end
    end

    class CloudWatchLoggingOptions
      def self.parse(map)
        data = Types::CloudWatchLoggingOptions.new
        data.enabled = map['Enabled']
        data.log_group_name = map['LogGroupName']
        data.log_stream_name = map['LogStreamName']
        return data
      end
    end

    class EncryptionConfiguration
      def self.parse(map)
        data = Types::EncryptionConfiguration.new
        data.no_encryption_config = map['NoEncryptionConfig']
        data.kms_encryption_config = (Parsers::KMSEncryptionConfig.parse(map['KMSEncryptionConfig']) unless map['KMSEncryptionConfig'].nil?)
        return data
      end
    end

    class KMSEncryptionConfig
      def self.parse(map)
        data = Types::KMSEncryptionConfig.new
        data.awskms_key_arn = map['AWSKMSKeyARN']
        return data
      end
    end

    class BufferingHints
      def self.parse(map)
        data = Types::BufferingHints.new
        data.size_in_m_bs = map['SizeInMBs']
        data.interval_in_seconds = map['IntervalInSeconds']
        return data
      end
    end

    class HttpEndpointRetryOptions
      def self.parse(map)
        data = Types::HttpEndpointRetryOptions.new
        data.duration_in_seconds = map['DurationInSeconds']
        return data
      end
    end

    class ProcessingConfiguration
      def self.parse(map)
        data = Types::ProcessingConfiguration.new
        data.enabled = map['Enabled']
        data.processors = (Parsers::ProcessorList.parse(map['Processors']) unless map['Processors'].nil?)
        return data
      end
    end

    class ProcessorList
      def self.parse(list)
        list.map do |value|
          Parsers::Processor.parse(value) unless value.nil?
        end
      end
    end

    class Processor
      def self.parse(map)
        data = Types::Processor.new
        data.type = map['Type']
        data.parameters = (Parsers::ProcessorParameterList.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class ProcessorParameterList
      def self.parse(list)
        list.map do |value|
          Parsers::ProcessorParameter.parse(value) unless value.nil?
        end
      end
    end

    class ProcessorParameter
      def self.parse(map)
        data = Types::ProcessorParameter.new
        data.parameter_name = map['ParameterName']
        data.parameter_value = map['ParameterValue']
        return data
      end
    end

    class HttpEndpointRequestConfiguration
      def self.parse(map)
        data = Types::HttpEndpointRequestConfiguration.new
        data.content_encoding = map['ContentEncoding']
        data.common_attributes = (Parsers::HttpEndpointCommonAttributesList.parse(map['CommonAttributes']) unless map['CommonAttributes'].nil?)
        return data
      end
    end

    class HttpEndpointCommonAttributesList
      def self.parse(list)
        list.map do |value|
          Parsers::HttpEndpointCommonAttribute.parse(value) unless value.nil?
        end
      end
    end

    class HttpEndpointCommonAttribute
      def self.parse(map)
        data = Types::HttpEndpointCommonAttribute.new
        data.attribute_name = map['AttributeName']
        data.attribute_value = map['AttributeValue']
        return data
      end
    end

    class HttpEndpointBufferingHints
      def self.parse(map)
        data = Types::HttpEndpointBufferingHints.new
        data.size_in_m_bs = map['SizeInMBs']
        data.interval_in_seconds = map['IntervalInSeconds']
        return data
      end
    end

    class HttpEndpointDescription
      def self.parse(map)
        data = Types::HttpEndpointDescription.new
        data.url = map['Url']
        data.name = map['Name']
        return data
      end
    end

    class SplunkDestinationDescription
      def self.parse(map)
        data = Types::SplunkDestinationDescription.new
        data.hec_endpoint = map['HECEndpoint']
        data.hec_endpoint_type = map['HECEndpointType']
        data.hec_token = map['HECToken']
        data.hec_acknowledgment_timeout_in_seconds = map['HECAcknowledgmentTimeoutInSeconds']
        data.retry_options = (Parsers::SplunkRetryOptions.parse(map['RetryOptions']) unless map['RetryOptions'].nil?)
        data.s3_backup_mode = map['S3BackupMode']
        data.s3_destination_description = (Parsers::S3DestinationDescription.parse(map['S3DestinationDescription']) unless map['S3DestinationDescription'].nil?)
        data.processing_configuration = (Parsers::ProcessingConfiguration.parse(map['ProcessingConfiguration']) unless map['ProcessingConfiguration'].nil?)
        data.cloud_watch_logging_options = (Parsers::CloudWatchLoggingOptions.parse(map['CloudWatchLoggingOptions']) unless map['CloudWatchLoggingOptions'].nil?)
        return data
      end
    end

    class SplunkRetryOptions
      def self.parse(map)
        data = Types::SplunkRetryOptions.new
        data.duration_in_seconds = map['DurationInSeconds']
        return data
      end
    end

    class AmazonopensearchserviceDestinationDescription
      def self.parse(map)
        data = Types::AmazonopensearchserviceDestinationDescription.new
        data.role_arn = map['RoleARN']
        data.domain_arn = map['DomainARN']
        data.cluster_endpoint = map['ClusterEndpoint']
        data.index_name = map['IndexName']
        data.type_name = map['TypeName']
        data.index_rotation_period = map['IndexRotationPeriod']
        data.buffering_hints = (Parsers::AmazonopensearchserviceBufferingHints.parse(map['BufferingHints']) unless map['BufferingHints'].nil?)
        data.retry_options = (Parsers::AmazonopensearchserviceRetryOptions.parse(map['RetryOptions']) unless map['RetryOptions'].nil?)
        data.s3_backup_mode = map['S3BackupMode']
        data.s3_destination_description = (Parsers::S3DestinationDescription.parse(map['S3DestinationDescription']) unless map['S3DestinationDescription'].nil?)
        data.processing_configuration = (Parsers::ProcessingConfiguration.parse(map['ProcessingConfiguration']) unless map['ProcessingConfiguration'].nil?)
        data.cloud_watch_logging_options = (Parsers::CloudWatchLoggingOptions.parse(map['CloudWatchLoggingOptions']) unless map['CloudWatchLoggingOptions'].nil?)
        data.vpc_configuration_description = (Parsers::VpcConfigurationDescription.parse(map['VpcConfigurationDescription']) unless map['VpcConfigurationDescription'].nil?)
        return data
      end
    end

    class VpcConfigurationDescription
      def self.parse(map)
        data = Types::VpcConfigurationDescription.new
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.role_arn = map['RoleARN']
        data.security_group_ids = (Parsers::SecurityGroupIdList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class SecurityGroupIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubnetIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AmazonopensearchserviceRetryOptions
      def self.parse(map)
        data = Types::AmazonopensearchserviceRetryOptions.new
        data.duration_in_seconds = map['DurationInSeconds']
        return data
      end
    end

    class AmazonopensearchserviceBufferingHints
      def self.parse(map)
        data = Types::AmazonopensearchserviceBufferingHints.new
        data.interval_in_seconds = map['IntervalInSeconds']
        data.size_in_m_bs = map['SizeInMBs']
        return data
      end
    end

    class ElasticsearchDestinationDescription
      def self.parse(map)
        data = Types::ElasticsearchDestinationDescription.new
        data.role_arn = map['RoleARN']
        data.domain_arn = map['DomainARN']
        data.cluster_endpoint = map['ClusterEndpoint']
        data.index_name = map['IndexName']
        data.type_name = map['TypeName']
        data.index_rotation_period = map['IndexRotationPeriod']
        data.buffering_hints = (Parsers::ElasticsearchBufferingHints.parse(map['BufferingHints']) unless map['BufferingHints'].nil?)
        data.retry_options = (Parsers::ElasticsearchRetryOptions.parse(map['RetryOptions']) unless map['RetryOptions'].nil?)
        data.s3_backup_mode = map['S3BackupMode']
        data.s3_destination_description = (Parsers::S3DestinationDescription.parse(map['S3DestinationDescription']) unless map['S3DestinationDescription'].nil?)
        data.processing_configuration = (Parsers::ProcessingConfiguration.parse(map['ProcessingConfiguration']) unless map['ProcessingConfiguration'].nil?)
        data.cloud_watch_logging_options = (Parsers::CloudWatchLoggingOptions.parse(map['CloudWatchLoggingOptions']) unless map['CloudWatchLoggingOptions'].nil?)
        data.vpc_configuration_description = (Parsers::VpcConfigurationDescription.parse(map['VpcConfigurationDescription']) unless map['VpcConfigurationDescription'].nil?)
        return data
      end
    end

    class ElasticsearchRetryOptions
      def self.parse(map)
        data = Types::ElasticsearchRetryOptions.new
        data.duration_in_seconds = map['DurationInSeconds']
        return data
      end
    end

    class ElasticsearchBufferingHints
      def self.parse(map)
        data = Types::ElasticsearchBufferingHints.new
        data.interval_in_seconds = map['IntervalInSeconds']
        data.size_in_m_bs = map['SizeInMBs']
        return data
      end
    end

    class RedshiftDestinationDescription
      def self.parse(map)
        data = Types::RedshiftDestinationDescription.new
        data.role_arn = map['RoleARN']
        data.cluster_jdbcurl = map['ClusterJDBCURL']
        data.copy_command = (Parsers::CopyCommand.parse(map['CopyCommand']) unless map['CopyCommand'].nil?)
        data.username = map['Username']
        data.retry_options = (Parsers::RedshiftRetryOptions.parse(map['RetryOptions']) unless map['RetryOptions'].nil?)
        data.s3_destination_description = (Parsers::S3DestinationDescription.parse(map['S3DestinationDescription']) unless map['S3DestinationDescription'].nil?)
        data.processing_configuration = (Parsers::ProcessingConfiguration.parse(map['ProcessingConfiguration']) unless map['ProcessingConfiguration'].nil?)
        data.s3_backup_mode = map['S3BackupMode']
        data.s3_backup_description = (Parsers::S3DestinationDescription.parse(map['S3BackupDescription']) unless map['S3BackupDescription'].nil?)
        data.cloud_watch_logging_options = (Parsers::CloudWatchLoggingOptions.parse(map['CloudWatchLoggingOptions']) unless map['CloudWatchLoggingOptions'].nil?)
        return data
      end
    end

    class RedshiftRetryOptions
      def self.parse(map)
        data = Types::RedshiftRetryOptions.new
        data.duration_in_seconds = map['DurationInSeconds']
        return data
      end
    end

    class CopyCommand
      def self.parse(map)
        data = Types::CopyCommand.new
        data.data_table_name = map['DataTableName']
        data.data_table_columns = map['DataTableColumns']
        data.copy_options = map['CopyOptions']
        return data
      end
    end

    class ExtendedS3DestinationDescription
      def self.parse(map)
        data = Types::ExtendedS3DestinationDescription.new
        data.role_arn = map['RoleARN']
        data.bucket_arn = map['BucketARN']
        data.prefix = map['Prefix']
        data.error_output_prefix = map['ErrorOutputPrefix']
        data.buffering_hints = (Parsers::BufferingHints.parse(map['BufferingHints']) unless map['BufferingHints'].nil?)
        data.compression_format = map['CompressionFormat']
        data.encryption_configuration = (Parsers::EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        data.cloud_watch_logging_options = (Parsers::CloudWatchLoggingOptions.parse(map['CloudWatchLoggingOptions']) unless map['CloudWatchLoggingOptions'].nil?)
        data.processing_configuration = (Parsers::ProcessingConfiguration.parse(map['ProcessingConfiguration']) unless map['ProcessingConfiguration'].nil?)
        data.s3_backup_mode = map['S3BackupMode']
        data.s3_backup_description = (Parsers::S3DestinationDescription.parse(map['S3BackupDescription']) unless map['S3BackupDescription'].nil?)
        data.data_format_conversion_configuration = (Parsers::DataFormatConversionConfiguration.parse(map['DataFormatConversionConfiguration']) unless map['DataFormatConversionConfiguration'].nil?)
        data.dynamic_partitioning_configuration = (Parsers::DynamicPartitioningConfiguration.parse(map['DynamicPartitioningConfiguration']) unless map['DynamicPartitioningConfiguration'].nil?)
        return data
      end
    end

    class DynamicPartitioningConfiguration
      def self.parse(map)
        data = Types::DynamicPartitioningConfiguration.new
        data.retry_options = (Parsers::RetryOptions.parse(map['RetryOptions']) unless map['RetryOptions'].nil?)
        data.enabled = map['Enabled']
        return data
      end
    end

    class RetryOptions
      def self.parse(map)
        data = Types::RetryOptions.new
        data.duration_in_seconds = map['DurationInSeconds']
        return data
      end
    end

    class DataFormatConversionConfiguration
      def self.parse(map)
        data = Types::DataFormatConversionConfiguration.new
        data.schema_configuration = (Parsers::SchemaConfiguration.parse(map['SchemaConfiguration']) unless map['SchemaConfiguration'].nil?)
        data.input_format_configuration = (Parsers::InputFormatConfiguration.parse(map['InputFormatConfiguration']) unless map['InputFormatConfiguration'].nil?)
        data.output_format_configuration = (Parsers::OutputFormatConfiguration.parse(map['OutputFormatConfiguration']) unless map['OutputFormatConfiguration'].nil?)
        data.enabled = map['Enabled']
        return data
      end
    end

    class OutputFormatConfiguration
      def self.parse(map)
        data = Types::OutputFormatConfiguration.new
        data.serializer = (Parsers::Serializer.parse(map['Serializer']) unless map['Serializer'].nil?)
        return data
      end
    end

    class Serializer
      def self.parse(map)
        data = Types::Serializer.new
        data.parquet_ser_de = (Parsers::ParquetSerDe.parse(map['ParquetSerDe']) unless map['ParquetSerDe'].nil?)
        data.orc_ser_de = (Parsers::OrcSerDe.parse(map['OrcSerDe']) unless map['OrcSerDe'].nil?)
        return data
      end
    end

    class OrcSerDe
      def self.parse(map)
        data = Types::OrcSerDe.new
        data.stripe_size_bytes = map['StripeSizeBytes']
        data.block_size_bytes = map['BlockSizeBytes']
        data.row_index_stride = map['RowIndexStride']
        data.enable_padding = map['EnablePadding']
        data.padding_tolerance = Hearth::NumberHelper.deserialize(map['PaddingTolerance'])
        data.compression = map['Compression']
        data.bloom_filter_columns = (Parsers::ListOfNonEmptyStringsWithoutWhitespace.parse(map['BloomFilterColumns']) unless map['BloomFilterColumns'].nil?)
        data.bloom_filter_false_positive_probability = Hearth::NumberHelper.deserialize(map['BloomFilterFalsePositiveProbability'])
        data.dictionary_key_threshold = Hearth::NumberHelper.deserialize(map['DictionaryKeyThreshold'])
        data.format_version = map['FormatVersion']
        return data
      end
    end

    class ListOfNonEmptyStringsWithoutWhitespace
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ParquetSerDe
      def self.parse(map)
        data = Types::ParquetSerDe.new
        data.block_size_bytes = map['BlockSizeBytes']
        data.page_size_bytes = map['PageSizeBytes']
        data.compression = map['Compression']
        data.enable_dictionary_compression = map['EnableDictionaryCompression']
        data.max_padding_bytes = map['MaxPaddingBytes']
        data.writer_version = map['WriterVersion']
        return data
      end
    end

    class InputFormatConfiguration
      def self.parse(map)
        data = Types::InputFormatConfiguration.new
        data.deserializer = (Parsers::Deserializer.parse(map['Deserializer']) unless map['Deserializer'].nil?)
        return data
      end
    end

    class Deserializer
      def self.parse(map)
        data = Types::Deserializer.new
        data.open_x_json_ser_de = (Parsers::OpenXJsonSerDe.parse(map['OpenXJsonSerDe']) unless map['OpenXJsonSerDe'].nil?)
        data.hive_json_ser_de = (Parsers::HiveJsonSerDe.parse(map['HiveJsonSerDe']) unless map['HiveJsonSerDe'].nil?)
        return data
      end
    end

    class HiveJsonSerDe
      def self.parse(map)
        data = Types::HiveJsonSerDe.new
        data.timestamp_formats = (Parsers::ListOfNonEmptyStrings.parse(map['TimestampFormats']) unless map['TimestampFormats'].nil?)
        return data
      end
    end

    class ListOfNonEmptyStrings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OpenXJsonSerDe
      def self.parse(map)
        data = Types::OpenXJsonSerDe.new
        data.convert_dots_in_json_keys_to_underscores = map['ConvertDotsInJsonKeysToUnderscores']
        data.case_insensitive = map['CaseInsensitive']
        data.column_to_json_key_mappings = (Parsers::ColumnToJsonKeyMappings.parse(map['ColumnToJsonKeyMappings']) unless map['ColumnToJsonKeyMappings'].nil?)
        return data
      end
    end

    class ColumnToJsonKeyMappings
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SchemaConfiguration
      def self.parse(map)
        data = Types::SchemaConfiguration.new
        data.role_arn = map['RoleARN']
        data.catalog_id = map['CatalogId']
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.region = map['Region']
        data.version_id = map['VersionId']
        return data
      end
    end

    class SourceDescription
      def self.parse(map)
        data = Types::SourceDescription.new
        data.kinesis_stream_source_description = (Parsers::KinesisStreamSourceDescription.parse(map['KinesisStreamSourceDescription']) unless map['KinesisStreamSourceDescription'].nil?)
        return data
      end
    end

    class KinesisStreamSourceDescription
      def self.parse(map)
        data = Types::KinesisStreamSourceDescription.new
        data.kinesis_stream_arn = map['KinesisStreamARN']
        data.role_arn = map['RoleARN']
        data.delivery_start_timestamp = Time.at(map['DeliveryStartTimestamp'].to_i) if map['DeliveryStartTimestamp']
        return data
      end
    end

    class DeliveryStreamEncryptionConfiguration
      def self.parse(map)
        data = Types::DeliveryStreamEncryptionConfiguration.new
        data.key_arn = map['KeyARN']
        data.key_type = map['KeyType']
        data.status = map['Status']
        data.failure_description = (Parsers::FailureDescription.parse(map['FailureDescription']) unless map['FailureDescription'].nil?)
        return data
      end
    end

    class FailureDescription
      def self.parse(map)
        data = Types::FailureDescription.new
        data.type = map['Type']
        data.details = map['Details']
        return data
      end
    end

    # Operation Parser for ListDeliveryStreams
    class ListDeliveryStreams
      def self.parse(http_resp)
        data = Types::ListDeliveryStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.delivery_stream_names = (Parsers::DeliveryStreamNameList.parse(map['DeliveryStreamNames']) unless map['DeliveryStreamNames'].nil?)
        data.has_more_delivery_streams = map['HasMoreDeliveryStreams']
        data
      end
    end

    class DeliveryStreamNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForDeliveryStream
    class ListTagsForDeliveryStream
      def self.parse(http_resp)
        data = Types::ListTagsForDeliveryStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::ListTagsForDeliveryStreamOutputTagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.has_more_tags = map['HasMoreTags']
        data
      end
    end

    class ListTagsForDeliveryStreamOutputTagList
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

    # Operation Parser for PutRecord
    class PutRecord
      def self.parse(http_resp)
        data = Types::PutRecordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.record_id = map['RecordId']
        data.encrypted = map['Encrypted']
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

    # Operation Parser for PutRecordBatch
    class PutRecordBatch
      def self.parse(http_resp)
        data = Types::PutRecordBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_put_count = map['FailedPutCount']
        data.encrypted = map['Encrypted']
        data.request_responses = (Parsers::PutRecordBatchResponseEntryList.parse(map['RequestResponses']) unless map['RequestResponses'].nil?)
        data
      end
    end

    class PutRecordBatchResponseEntryList
      def self.parse(list)
        list.map do |value|
          Parsers::PutRecordBatchResponseEntry.parse(value) unless value.nil?
        end
      end
    end

    class PutRecordBatchResponseEntry
      def self.parse(map)
        data = Types::PutRecordBatchResponseEntry.new
        data.record_id = map['RecordId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for StartDeliveryStreamEncryption
    class StartDeliveryStreamEncryption
      def self.parse(http_resp)
        data = Types::StartDeliveryStreamEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopDeliveryStreamEncryption
    class StopDeliveryStreamEncryption
      def self.parse(http_resp)
        data = Types::StopDeliveryStreamEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagDeliveryStream
    class TagDeliveryStream
      def self.parse(http_resp)
        data = Types::TagDeliveryStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagDeliveryStream
    class UntagDeliveryStream
      def self.parse(http_resp)
        data = Types::UntagDeliveryStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDestination
    class UpdateDestination
      def self.parse(http_resp)
        data = Types::UpdateDestinationOutput.new
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
  end
end
