# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::Firehose
  module Builders

    # Operation Builder for CreateDeliveryStream
    class CreateDeliveryStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.CreateDeliveryStream'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['DeliveryStreamType'] = input[:delivery_stream_type] unless input[:delivery_stream_type].nil?
        data['KinesisStreamSourceConfiguration'] = KinesisStreamSourceConfiguration.build(input[:kinesis_stream_source_configuration]) unless input[:kinesis_stream_source_configuration].nil?
        data['DeliveryStreamEncryptionConfigurationInput'] = DeliveryStreamEncryptionConfigurationInput.build(input[:delivery_stream_encryption_configuration_input]) unless input[:delivery_stream_encryption_configuration_input].nil?
        data['S3DestinationConfiguration'] = S3DestinationConfiguration.build(input[:s3_destination_configuration]) unless input[:s3_destination_configuration].nil?
        data['ExtendedS3DestinationConfiguration'] = ExtendedS3DestinationConfiguration.build(input[:extended_s3_destination_configuration]) unless input[:extended_s3_destination_configuration].nil?
        data['RedshiftDestinationConfiguration'] = RedshiftDestinationConfiguration.build(input[:redshift_destination_configuration]) unless input[:redshift_destination_configuration].nil?
        data['ElasticsearchDestinationConfiguration'] = ElasticsearchDestinationConfiguration.build(input[:elasticsearch_destination_configuration]) unless input[:elasticsearch_destination_configuration].nil?
        data['AmazonopensearchserviceDestinationConfiguration'] = AmazonopensearchserviceDestinationConfiguration.build(input[:amazonopensearchservice_destination_configuration]) unless input[:amazonopensearchservice_destination_configuration].nil?
        data['SplunkDestinationConfiguration'] = SplunkDestinationConfiguration.build(input[:splunk_destination_configuration]) unless input[:splunk_destination_configuration].nil?
        data['HttpEndpointDestinationConfiguration'] = HttpEndpointDestinationConfiguration.build(input[:http_endpoint_destination_configuration]) unless input[:http_endpoint_destination_configuration].nil?
        data['Tags'] = TagDeliveryStreamInputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagDeliveryStreamInputTagList
    class TagDeliveryStreamInputTagList
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

    # Structure Builder for HttpEndpointDestinationConfiguration
    class HttpEndpointDestinationConfiguration
      def self.build(input)
        data = {}
        data['EndpointConfiguration'] = HttpEndpointConfiguration.build(input[:endpoint_configuration]) unless input[:endpoint_configuration].nil?
        data['BufferingHints'] = HttpEndpointBufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data['RequestConfiguration'] = HttpEndpointRequestConfiguration.build(input[:request_configuration]) unless input[:request_configuration].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['RetryOptions'] = HttpEndpointRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3Configuration'] = S3DestinationConfiguration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data
      end
    end

    # Structure Builder for S3DestinationConfiguration
    class S3DestinationConfiguration
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['BucketARN'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['ErrorOutputPrefix'] = input[:error_output_prefix] unless input[:error_output_prefix].nil?
        data['BufferingHints'] = BufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['CompressionFormat'] = input[:compression_format] unless input[:compression_format].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Builder for CloudWatchLoggingOptions
    class CloudWatchLoggingOptions
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['LogGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['LogStreamName'] = input[:log_stream_name] unless input[:log_stream_name].nil?
        data
      end
    end

    # Structure Builder for EncryptionConfiguration
    class EncryptionConfiguration
      def self.build(input)
        data = {}
        data['NoEncryptionConfig'] = input[:no_encryption_config] unless input[:no_encryption_config].nil?
        data['KMSEncryptionConfig'] = KMSEncryptionConfig.build(input[:kms_encryption_config]) unless input[:kms_encryption_config].nil?
        data
      end
    end

    # Structure Builder for KMSEncryptionConfig
    class KMSEncryptionConfig
      def self.build(input)
        data = {}
        data['AWSKMSKeyARN'] = input[:awskms_key_arn] unless input[:awskms_key_arn].nil?
        data
      end
    end

    # Structure Builder for BufferingHints
    class BufferingHints
      def self.build(input)
        data = {}
        data['SizeInMBs'] = input[:size_in_m_bs] unless input[:size_in_m_bs].nil?
        data['IntervalInSeconds'] = input[:interval_in_seconds] unless input[:interval_in_seconds].nil?
        data
      end
    end

    # Structure Builder for HttpEndpointRetryOptions
    class HttpEndpointRetryOptions
      def self.build(input)
        data = {}
        data['DurationInSeconds'] = input[:duration_in_seconds] unless input[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Builder for ProcessingConfiguration
    class ProcessingConfiguration
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['Processors'] = ProcessorList.build(input[:processors]) unless input[:processors].nil?
        data
      end
    end

    # List Builder for ProcessorList
    class ProcessorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Processor.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Processor
    class Processor
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Parameters'] = ProcessorParameterList.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # List Builder for ProcessorParameterList
    class ProcessorParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << ProcessorParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProcessorParameter
    class ProcessorParameter
      def self.build(input)
        data = {}
        data['ParameterName'] = input[:parameter_name] unless input[:parameter_name].nil?
        data['ParameterValue'] = input[:parameter_value] unless input[:parameter_value].nil?
        data
      end
    end

    # Structure Builder for HttpEndpointRequestConfiguration
    class HttpEndpointRequestConfiguration
      def self.build(input)
        data = {}
        data['ContentEncoding'] = input[:content_encoding] unless input[:content_encoding].nil?
        data['CommonAttributes'] = HttpEndpointCommonAttributesList.build(input[:common_attributes]) unless input[:common_attributes].nil?
        data
      end
    end

    # List Builder for HttpEndpointCommonAttributesList
    class HttpEndpointCommonAttributesList
      def self.build(input)
        data = []
        input.each do |element|
          data << HttpEndpointCommonAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HttpEndpointCommonAttribute
    class HttpEndpointCommonAttribute
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['AttributeValue'] = input[:attribute_value] unless input[:attribute_value].nil?
        data
      end
    end

    # Structure Builder for HttpEndpointBufferingHints
    class HttpEndpointBufferingHints
      def self.build(input)
        data = {}
        data['SizeInMBs'] = input[:size_in_m_bs] unless input[:size_in_m_bs].nil?
        data['IntervalInSeconds'] = input[:interval_in_seconds] unless input[:interval_in_seconds].nil?
        data
      end
    end

    # Structure Builder for HttpEndpointConfiguration
    class HttpEndpointConfiguration
      def self.build(input)
        data = {}
        data['Url'] = input[:url] unless input[:url].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['AccessKey'] = input[:access_key] unless input[:access_key].nil?
        data
      end
    end

    # Structure Builder for SplunkDestinationConfiguration
    class SplunkDestinationConfiguration
      def self.build(input)
        data = {}
        data['HECEndpoint'] = input[:hec_endpoint] unless input[:hec_endpoint].nil?
        data['HECEndpointType'] = input[:hec_endpoint_type] unless input[:hec_endpoint_type].nil?
        data['HECToken'] = input[:hec_token] unless input[:hec_token].nil?
        data['HECAcknowledgmentTimeoutInSeconds'] = input[:hec_acknowledgment_timeout_in_seconds] unless input[:hec_acknowledgment_timeout_in_seconds].nil?
        data['RetryOptions'] = SplunkRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3Configuration'] = S3DestinationConfiguration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Builder for SplunkRetryOptions
    class SplunkRetryOptions
      def self.build(input)
        data = {}
        data['DurationInSeconds'] = input[:duration_in_seconds] unless input[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Builder for AmazonopensearchserviceDestinationConfiguration
    class AmazonopensearchserviceDestinationConfiguration
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['DomainARN'] = input[:domain_arn] unless input[:domain_arn].nil?
        data['ClusterEndpoint'] = input[:cluster_endpoint] unless input[:cluster_endpoint].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['IndexRotationPeriod'] = input[:index_rotation_period] unless input[:index_rotation_period].nil?
        data['BufferingHints'] = AmazonopensearchserviceBufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['RetryOptions'] = AmazonopensearchserviceRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3Configuration'] = S3DestinationConfiguration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data['VpcConfiguration'] = VpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data
      end
    end

    # Structure Builder for VpcConfiguration
    class VpcConfiguration
      def self.build(input)
        data = {}
        data['SubnetIds'] = SubnetIdList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['SecurityGroupIds'] = SecurityGroupIdList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for SecurityGroupIdList
    class SecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIdList
    class SubnetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AmazonopensearchserviceRetryOptions
    class AmazonopensearchserviceRetryOptions
      def self.build(input)
        data = {}
        data['DurationInSeconds'] = input[:duration_in_seconds] unless input[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Builder for AmazonopensearchserviceBufferingHints
    class AmazonopensearchserviceBufferingHints
      def self.build(input)
        data = {}
        data['IntervalInSeconds'] = input[:interval_in_seconds] unless input[:interval_in_seconds].nil?
        data['SizeInMBs'] = input[:size_in_m_bs] unless input[:size_in_m_bs].nil?
        data
      end
    end

    # Structure Builder for ElasticsearchDestinationConfiguration
    class ElasticsearchDestinationConfiguration
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['DomainARN'] = input[:domain_arn] unless input[:domain_arn].nil?
        data['ClusterEndpoint'] = input[:cluster_endpoint] unless input[:cluster_endpoint].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['IndexRotationPeriod'] = input[:index_rotation_period] unless input[:index_rotation_period].nil?
        data['BufferingHints'] = ElasticsearchBufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['RetryOptions'] = ElasticsearchRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3Configuration'] = S3DestinationConfiguration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data['VpcConfiguration'] = VpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data
      end
    end

    # Structure Builder for ElasticsearchRetryOptions
    class ElasticsearchRetryOptions
      def self.build(input)
        data = {}
        data['DurationInSeconds'] = input[:duration_in_seconds] unless input[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Builder for ElasticsearchBufferingHints
    class ElasticsearchBufferingHints
      def self.build(input)
        data = {}
        data['IntervalInSeconds'] = input[:interval_in_seconds] unless input[:interval_in_seconds].nil?
        data['SizeInMBs'] = input[:size_in_m_bs] unless input[:size_in_m_bs].nil?
        data
      end
    end

    # Structure Builder for RedshiftDestinationConfiguration
    class RedshiftDestinationConfiguration
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['ClusterJDBCURL'] = input[:cluster_jdbcurl] unless input[:cluster_jdbcurl].nil?
        data['CopyCommand'] = CopyCommand.build(input[:copy_command]) unless input[:copy_command].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['RetryOptions'] = RedshiftRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3Configuration'] = S3DestinationConfiguration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3BackupConfiguration'] = S3DestinationConfiguration.build(input[:s3_backup_configuration]) unless input[:s3_backup_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Builder for RedshiftRetryOptions
    class RedshiftRetryOptions
      def self.build(input)
        data = {}
        data['DurationInSeconds'] = input[:duration_in_seconds] unless input[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Builder for CopyCommand
    class CopyCommand
      def self.build(input)
        data = {}
        data['DataTableName'] = input[:data_table_name] unless input[:data_table_name].nil?
        data['DataTableColumns'] = input[:data_table_columns] unless input[:data_table_columns].nil?
        data['CopyOptions'] = input[:copy_options] unless input[:copy_options].nil?
        data
      end
    end

    # Structure Builder for ExtendedS3DestinationConfiguration
    class ExtendedS3DestinationConfiguration
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['BucketARN'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['ErrorOutputPrefix'] = input[:error_output_prefix] unless input[:error_output_prefix].nil?
        data['BufferingHints'] = BufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['CompressionFormat'] = input[:compression_format] unless input[:compression_format].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3BackupConfiguration'] = S3DestinationConfiguration.build(input[:s3_backup_configuration]) unless input[:s3_backup_configuration].nil?
        data['DataFormatConversionConfiguration'] = DataFormatConversionConfiguration.build(input[:data_format_conversion_configuration]) unless input[:data_format_conversion_configuration].nil?
        data['DynamicPartitioningConfiguration'] = DynamicPartitioningConfiguration.build(input[:dynamic_partitioning_configuration]) unless input[:dynamic_partitioning_configuration].nil?
        data
      end
    end

    # Structure Builder for DynamicPartitioningConfiguration
    class DynamicPartitioningConfiguration
      def self.build(input)
        data = {}
        data['RetryOptions'] = RetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for RetryOptions
    class RetryOptions
      def self.build(input)
        data = {}
        data['DurationInSeconds'] = input[:duration_in_seconds] unless input[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Builder for DataFormatConversionConfiguration
    class DataFormatConversionConfiguration
      def self.build(input)
        data = {}
        data['SchemaConfiguration'] = SchemaConfiguration.build(input[:schema_configuration]) unless input[:schema_configuration].nil?
        data['InputFormatConfiguration'] = InputFormatConfiguration.build(input[:input_format_configuration]) unless input[:input_format_configuration].nil?
        data['OutputFormatConfiguration'] = OutputFormatConfiguration.build(input[:output_format_configuration]) unless input[:output_format_configuration].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for OutputFormatConfiguration
    class OutputFormatConfiguration
      def self.build(input)
        data = {}
        data['Serializer'] = Serializer.build(input[:serializer]) unless input[:serializer].nil?
        data
      end
    end

    # Structure Builder for Serializer
    class Serializer
      def self.build(input)
        data = {}
        data['ParquetSerDe'] = ParquetSerDe.build(input[:parquet_ser_de]) unless input[:parquet_ser_de].nil?
        data['OrcSerDe'] = OrcSerDe.build(input[:orc_ser_de]) unless input[:orc_ser_de].nil?
        data
      end
    end

    # Structure Builder for OrcSerDe
    class OrcSerDe
      def self.build(input)
        data = {}
        data['StripeSizeBytes'] = input[:stripe_size_bytes] unless input[:stripe_size_bytes].nil?
        data['BlockSizeBytes'] = input[:block_size_bytes] unless input[:block_size_bytes].nil?
        data['RowIndexStride'] = input[:row_index_stride] unless input[:row_index_stride].nil?
        data['EnablePadding'] = input[:enable_padding] unless input[:enable_padding].nil?
        data['PaddingTolerance'] = Hearth::NumberHelper.serialize(input[:padding_tolerance]) unless input[:padding_tolerance].nil?
        data['Compression'] = input[:compression] unless input[:compression].nil?
        data['BloomFilterColumns'] = ListOfNonEmptyStringsWithoutWhitespace.build(input[:bloom_filter_columns]) unless input[:bloom_filter_columns].nil?
        data['BloomFilterFalsePositiveProbability'] = Hearth::NumberHelper.serialize(input[:bloom_filter_false_positive_probability]) unless input[:bloom_filter_false_positive_probability].nil?
        data['DictionaryKeyThreshold'] = Hearth::NumberHelper.serialize(input[:dictionary_key_threshold]) unless input[:dictionary_key_threshold].nil?
        data['FormatVersion'] = input[:format_version] unless input[:format_version].nil?
        data
      end
    end

    # List Builder for ListOfNonEmptyStringsWithoutWhitespace
    class ListOfNonEmptyStringsWithoutWhitespace
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParquetSerDe
    class ParquetSerDe
      def self.build(input)
        data = {}
        data['BlockSizeBytes'] = input[:block_size_bytes] unless input[:block_size_bytes].nil?
        data['PageSizeBytes'] = input[:page_size_bytes] unless input[:page_size_bytes].nil?
        data['Compression'] = input[:compression] unless input[:compression].nil?
        data['EnableDictionaryCompression'] = input[:enable_dictionary_compression] unless input[:enable_dictionary_compression].nil?
        data['MaxPaddingBytes'] = input[:max_padding_bytes] unless input[:max_padding_bytes].nil?
        data['WriterVersion'] = input[:writer_version] unless input[:writer_version].nil?
        data
      end
    end

    # Structure Builder for InputFormatConfiguration
    class InputFormatConfiguration
      def self.build(input)
        data = {}
        data['Deserializer'] = Deserializer.build(input[:deserializer]) unless input[:deserializer].nil?
        data
      end
    end

    # Structure Builder for Deserializer
    class Deserializer
      def self.build(input)
        data = {}
        data['OpenXJsonSerDe'] = OpenXJsonSerDe.build(input[:open_x_json_ser_de]) unless input[:open_x_json_ser_de].nil?
        data['HiveJsonSerDe'] = HiveJsonSerDe.build(input[:hive_json_ser_de]) unless input[:hive_json_ser_de].nil?
        data
      end
    end

    # Structure Builder for HiveJsonSerDe
    class HiveJsonSerDe
      def self.build(input)
        data = {}
        data['TimestampFormats'] = ListOfNonEmptyStrings.build(input[:timestamp_formats]) unless input[:timestamp_formats].nil?
        data
      end
    end

    # List Builder for ListOfNonEmptyStrings
    class ListOfNonEmptyStrings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpenXJsonSerDe
    class OpenXJsonSerDe
      def self.build(input)
        data = {}
        data['ConvertDotsInJsonKeysToUnderscores'] = input[:convert_dots_in_json_keys_to_underscores] unless input[:convert_dots_in_json_keys_to_underscores].nil?
        data['CaseInsensitive'] = input[:case_insensitive] unless input[:case_insensitive].nil?
        data['ColumnToJsonKeyMappings'] = ColumnToJsonKeyMappings.build(input[:column_to_json_key_mappings]) unless input[:column_to_json_key_mappings].nil?
        data
      end
    end

    # Map Builder for ColumnToJsonKeyMappings
    class ColumnToJsonKeyMappings
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for SchemaConfiguration
    class SchemaConfiguration
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['VersionId'] = input[:version_id] unless input[:version_id].nil?
        data
      end
    end

    # Structure Builder for DeliveryStreamEncryptionConfigurationInput
    class DeliveryStreamEncryptionConfigurationInput
      def self.build(input)
        data = {}
        data['KeyARN'] = input[:key_arn] unless input[:key_arn].nil?
        data['KeyType'] = input[:key_type] unless input[:key_type].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamSourceConfiguration
    class KinesisStreamSourceConfiguration
      def self.build(input)
        data = {}
        data['KinesisStreamARN'] = input[:kinesis_stream_arn] unless input[:kinesis_stream_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Operation Builder for DeleteDeliveryStream
    class DeleteDeliveryStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.DeleteDeliveryStream'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['AllowForceDelete'] = input[:allow_force_delete] unless input[:allow_force_delete].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDeliveryStream
    class DescribeDeliveryStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.DescribeDeliveryStream'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ExclusiveStartDestinationId'] = input[:exclusive_start_destination_id] unless input[:exclusive_start_destination_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDeliveryStreams
    class ListDeliveryStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.ListDeliveryStreams'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['DeliveryStreamType'] = input[:delivery_stream_type] unless input[:delivery_stream_type].nil?
        data['ExclusiveStartDeliveryStreamName'] = input[:exclusive_start_delivery_stream_name] unless input[:exclusive_start_delivery_stream_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForDeliveryStream
    class ListTagsForDeliveryStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.ListTagsForDeliveryStream'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['ExclusiveStartTagKey'] = input[:exclusive_start_tag_key] unless input[:exclusive_start_tag_key].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRecord
    class PutRecord
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.PutRecord'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['Record'] = Record.build(input[:record]) unless input[:record].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Record
    class Record
      def self.build(input)
        data = {}
        data['Data'] = ::Base64::encode64(input[:data]).strip unless input[:data].nil?
        data
      end
    end

    # Operation Builder for PutRecordBatch
    class PutRecordBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.PutRecordBatch'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['Records'] = PutRecordBatchRequestEntryList.build(input[:records]) unless input[:records].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PutRecordBatchRequestEntryList
    class PutRecordBatchRequestEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Record.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartDeliveryStreamEncryption
    class StartDeliveryStreamEncryption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.StartDeliveryStreamEncryption'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['DeliveryStreamEncryptionConfigurationInput'] = DeliveryStreamEncryptionConfigurationInput.build(input[:delivery_stream_encryption_configuration_input]) unless input[:delivery_stream_encryption_configuration_input].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopDeliveryStreamEncryption
    class StopDeliveryStreamEncryption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.StopDeliveryStreamEncryption'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagDeliveryStream
    class TagDeliveryStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.TagDeliveryStream'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['Tags'] = TagDeliveryStreamInputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagDeliveryStream
    class UntagDeliveryStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.UntagDeliveryStream'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDestination
    class UpdateDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Firehose_20150804.UpdateDestination'
        data = {}
        data['DeliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['CurrentDeliveryStreamVersionId'] = input[:current_delivery_stream_version_id] unless input[:current_delivery_stream_version_id].nil?
        data['DestinationId'] = input[:destination_id] unless input[:destination_id].nil?
        data['S3DestinationUpdate'] = S3DestinationUpdate.build(input[:s3_destination_update]) unless input[:s3_destination_update].nil?
        data['ExtendedS3DestinationUpdate'] = ExtendedS3DestinationUpdate.build(input[:extended_s3_destination_update]) unless input[:extended_s3_destination_update].nil?
        data['RedshiftDestinationUpdate'] = RedshiftDestinationUpdate.build(input[:redshift_destination_update]) unless input[:redshift_destination_update].nil?
        data['ElasticsearchDestinationUpdate'] = ElasticsearchDestinationUpdate.build(input[:elasticsearch_destination_update]) unless input[:elasticsearch_destination_update].nil?
        data['AmazonopensearchserviceDestinationUpdate'] = AmazonopensearchserviceDestinationUpdate.build(input[:amazonopensearchservice_destination_update]) unless input[:amazonopensearchservice_destination_update].nil?
        data['SplunkDestinationUpdate'] = SplunkDestinationUpdate.build(input[:splunk_destination_update]) unless input[:splunk_destination_update].nil?
        data['HttpEndpointDestinationUpdate'] = HttpEndpointDestinationUpdate.build(input[:http_endpoint_destination_update]) unless input[:http_endpoint_destination_update].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HttpEndpointDestinationUpdate
    class HttpEndpointDestinationUpdate
      def self.build(input)
        data = {}
        data['EndpointConfiguration'] = HttpEndpointConfiguration.build(input[:endpoint_configuration]) unless input[:endpoint_configuration].nil?
        data['BufferingHints'] = HttpEndpointBufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data['RequestConfiguration'] = HttpEndpointRequestConfiguration.build(input[:request_configuration]) unless input[:request_configuration].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['RetryOptions'] = HttpEndpointRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3Update'] = S3DestinationUpdate.build(input[:s3_update]) unless input[:s3_update].nil?
        data
      end
    end

    # Structure Builder for S3DestinationUpdate
    class S3DestinationUpdate
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['BucketARN'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['ErrorOutputPrefix'] = input[:error_output_prefix] unless input[:error_output_prefix].nil?
        data['BufferingHints'] = BufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['CompressionFormat'] = input[:compression_format] unless input[:compression_format].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Builder for SplunkDestinationUpdate
    class SplunkDestinationUpdate
      def self.build(input)
        data = {}
        data['HECEndpoint'] = input[:hec_endpoint] unless input[:hec_endpoint].nil?
        data['HECEndpointType'] = input[:hec_endpoint_type] unless input[:hec_endpoint_type].nil?
        data['HECToken'] = input[:hec_token] unless input[:hec_token].nil?
        data['HECAcknowledgmentTimeoutInSeconds'] = input[:hec_acknowledgment_timeout_in_seconds] unless input[:hec_acknowledgment_timeout_in_seconds].nil?
        data['RetryOptions'] = SplunkRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3Update'] = S3DestinationUpdate.build(input[:s3_update]) unless input[:s3_update].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Builder for AmazonopensearchserviceDestinationUpdate
    class AmazonopensearchserviceDestinationUpdate
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['DomainARN'] = input[:domain_arn] unless input[:domain_arn].nil?
        data['ClusterEndpoint'] = input[:cluster_endpoint] unless input[:cluster_endpoint].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['IndexRotationPeriod'] = input[:index_rotation_period] unless input[:index_rotation_period].nil?
        data['BufferingHints'] = AmazonopensearchserviceBufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['RetryOptions'] = AmazonopensearchserviceRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3Update'] = S3DestinationUpdate.build(input[:s3_update]) unless input[:s3_update].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Builder for ElasticsearchDestinationUpdate
    class ElasticsearchDestinationUpdate
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['DomainARN'] = input[:domain_arn] unless input[:domain_arn].nil?
        data['ClusterEndpoint'] = input[:cluster_endpoint] unless input[:cluster_endpoint].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['IndexRotationPeriod'] = input[:index_rotation_period] unless input[:index_rotation_period].nil?
        data['BufferingHints'] = ElasticsearchBufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['RetryOptions'] = ElasticsearchRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3Update'] = S3DestinationUpdate.build(input[:s3_update]) unless input[:s3_update].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Builder for RedshiftDestinationUpdate
    class RedshiftDestinationUpdate
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['ClusterJDBCURL'] = input[:cluster_jdbcurl] unless input[:cluster_jdbcurl].nil?
        data['CopyCommand'] = CopyCommand.build(input[:copy_command]) unless input[:copy_command].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['RetryOptions'] = RedshiftRetryOptions.build(input[:retry_options]) unless input[:retry_options].nil?
        data['S3Update'] = S3DestinationUpdate.build(input[:s3_update]) unless input[:s3_update].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3BackupUpdate'] = S3DestinationUpdate.build(input[:s3_backup_update]) unless input[:s3_backup_update].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data
      end
    end

    # Structure Builder for ExtendedS3DestinationUpdate
    class ExtendedS3DestinationUpdate
      def self.build(input)
        data = {}
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['BucketARN'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['ErrorOutputPrefix'] = input[:error_output_prefix] unless input[:error_output_prefix].nil?
        data['BufferingHints'] = BufferingHints.build(input[:buffering_hints]) unless input[:buffering_hints].nil?
        data['CompressionFormat'] = input[:compression_format] unless input[:compression_format].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['CloudWatchLoggingOptions'] = CloudWatchLoggingOptions.build(input[:cloud_watch_logging_options]) unless input[:cloud_watch_logging_options].nil?
        data['ProcessingConfiguration'] = ProcessingConfiguration.build(input[:processing_configuration]) unless input[:processing_configuration].nil?
        data['S3BackupMode'] = input[:s3_backup_mode] unless input[:s3_backup_mode].nil?
        data['S3BackupUpdate'] = S3DestinationUpdate.build(input[:s3_backup_update]) unless input[:s3_backup_update].nil?
        data['DataFormatConversionConfiguration'] = DataFormatConversionConfiguration.build(input[:data_format_conversion_configuration]) unless input[:data_format_conversion_configuration].nil?
        data['DynamicPartitioningConfiguration'] = DynamicPartitioningConfiguration.build(input[:dynamic_partitioning_configuration]) unless input[:dynamic_partitioning_configuration].nil?
        data
      end
    end
  end
end
