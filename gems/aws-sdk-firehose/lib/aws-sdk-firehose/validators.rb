# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Firehose
  module Validators

    class AmazonopensearchserviceBufferingHints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmazonopensearchserviceBufferingHints, context: context)
        Hearth::Validator.validate!(input[:interval_in_seconds], ::Integer, context: "#{context}[:interval_in_seconds]")
        Hearth::Validator.validate!(input[:size_in_m_bs], ::Integer, context: "#{context}[:size_in_m_bs]")
      end
    end

    class AmazonopensearchserviceDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmazonopensearchserviceDestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
        Hearth::Validator.validate!(input[:cluster_endpoint], ::String, context: "#{context}[:cluster_endpoint]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:index_rotation_period], ::String, context: "#{context}[:index_rotation_period]")
        AmazonopensearchserviceBufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        AmazonopensearchserviceRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationConfiguration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class AmazonopensearchserviceDestinationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmazonopensearchserviceDestinationDescription, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
        Hearth::Validator.validate!(input[:cluster_endpoint], ::String, context: "#{context}[:cluster_endpoint]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:index_rotation_period], ::String, context: "#{context}[:index_rotation_period]")
        AmazonopensearchserviceBufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        AmazonopensearchserviceRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationDescription.validate!(input[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless input[:s3_destination_description].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        VpcConfigurationDescription.validate!(input[:vpc_configuration_description], context: "#{context}[:vpc_configuration_description]") unless input[:vpc_configuration_description].nil?
      end
    end

    class AmazonopensearchserviceDestinationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmazonopensearchserviceDestinationUpdate, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
        Hearth::Validator.validate!(input[:cluster_endpoint], ::String, context: "#{context}[:cluster_endpoint]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:index_rotation_period], ::String, context: "#{context}[:index_rotation_period]")
        AmazonopensearchserviceBufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        AmazonopensearchserviceRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        S3DestinationUpdate.validate!(input[:s3_update], context: "#{context}[:s3_update]") unless input[:s3_update].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class AmazonopensearchserviceRetryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmazonopensearchserviceRetryOptions, context: context)
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
      end
    end

    class BufferingHints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BufferingHints, context: context)
        Hearth::Validator.validate!(input[:size_in_m_bs], ::Integer, context: "#{context}[:size_in_m_bs]")
        Hearth::Validator.validate!(input[:interval_in_seconds], ::Integer, context: "#{context}[:interval_in_seconds]")
      end
    end

    class CloudWatchLoggingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLoggingOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
      end
    end

    class ColumnToJsonKeyMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CopyCommand
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyCommand, context: context)
        Hearth::Validator.validate!(input[:data_table_name], ::String, context: "#{context}[:data_table_name]")
        Hearth::Validator.validate!(input[:data_table_columns], ::String, context: "#{context}[:data_table_columns]")
        Hearth::Validator.validate!(input[:copy_options], ::String, context: "#{context}[:copy_options]")
      end
    end

    class CreateDeliveryStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeliveryStreamInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        Hearth::Validator.validate!(input[:delivery_stream_type], ::String, context: "#{context}[:delivery_stream_type]")
        KinesisStreamSourceConfiguration.validate!(input[:kinesis_stream_source_configuration], context: "#{context}[:kinesis_stream_source_configuration]") unless input[:kinesis_stream_source_configuration].nil?
        DeliveryStreamEncryptionConfigurationInput.validate!(input[:delivery_stream_encryption_configuration_input], context: "#{context}[:delivery_stream_encryption_configuration_input]") unless input[:delivery_stream_encryption_configuration_input].nil?
        S3DestinationConfiguration.validate!(input[:s3_destination_configuration], context: "#{context}[:s3_destination_configuration]") unless input[:s3_destination_configuration].nil?
        ExtendedS3DestinationConfiguration.validate!(input[:extended_s3_destination_configuration], context: "#{context}[:extended_s3_destination_configuration]") unless input[:extended_s3_destination_configuration].nil?
        RedshiftDestinationConfiguration.validate!(input[:redshift_destination_configuration], context: "#{context}[:redshift_destination_configuration]") unless input[:redshift_destination_configuration].nil?
        ElasticsearchDestinationConfiguration.validate!(input[:elasticsearch_destination_configuration], context: "#{context}[:elasticsearch_destination_configuration]") unless input[:elasticsearch_destination_configuration].nil?
        AmazonopensearchserviceDestinationConfiguration.validate!(input[:amazonopensearchservice_destination_configuration], context: "#{context}[:amazonopensearchservice_destination_configuration]") unless input[:amazonopensearchservice_destination_configuration].nil?
        SplunkDestinationConfiguration.validate!(input[:splunk_destination_configuration], context: "#{context}[:splunk_destination_configuration]") unless input[:splunk_destination_configuration].nil?
        HttpEndpointDestinationConfiguration.validate!(input[:http_endpoint_destination_configuration], context: "#{context}[:http_endpoint_destination_configuration]") unless input[:http_endpoint_destination_configuration].nil?
        TagDeliveryStreamInputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDeliveryStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeliveryStreamOutput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_arn], ::String, context: "#{context}[:delivery_stream_arn]")
      end
    end

    class DataFormatConversionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataFormatConversionConfiguration, context: context)
        SchemaConfiguration.validate!(input[:schema_configuration], context: "#{context}[:schema_configuration]") unless input[:schema_configuration].nil?
        InputFormatConfiguration.validate!(input[:input_format_configuration], context: "#{context}[:input_format_configuration]") unless input[:input_format_configuration].nil?
        OutputFormatConfiguration.validate!(input[:output_format_configuration], context: "#{context}[:output_format_configuration]") unless input[:output_format_configuration].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class DeleteDeliveryStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeliveryStreamInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        Hearth::Validator.validate!(input[:allow_force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:allow_force_delete]")
      end
    end

    class DeleteDeliveryStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeliveryStreamOutput, context: context)
      end
    end

    class DeliveryStreamDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliveryStreamDescription, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        Hearth::Validator.validate!(input[:delivery_stream_arn], ::String, context: "#{context}[:delivery_stream_arn]")
        Hearth::Validator.validate!(input[:delivery_stream_status], ::String, context: "#{context}[:delivery_stream_status]")
        FailureDescription.validate!(input[:failure_description], context: "#{context}[:failure_description]") unless input[:failure_description].nil?
        DeliveryStreamEncryptionConfiguration.validate!(input[:delivery_stream_encryption_configuration], context: "#{context}[:delivery_stream_encryption_configuration]") unless input[:delivery_stream_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:delivery_stream_type], ::String, context: "#{context}[:delivery_stream_type]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:create_timestamp], ::Time, context: "#{context}[:create_timestamp]")
        Hearth::Validator.validate!(input[:last_update_timestamp], ::Time, context: "#{context}[:last_update_timestamp]")
        SourceDescription.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        DestinationDescriptionList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Hearth::Validator.validate!(input[:has_more_destinations], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_destinations]")
      end
    end

    class DeliveryStreamEncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliveryStreamEncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:key_arn], ::String, context: "#{context}[:key_arn]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        FailureDescription.validate!(input[:failure_description], context: "#{context}[:failure_description]") unless input[:failure_description].nil?
      end
    end

    class DeliveryStreamEncryptionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliveryStreamEncryptionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:key_arn], ::String, context: "#{context}[:key_arn]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
      end
    end

    class DeliveryStreamNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DescribeDeliveryStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeliveryStreamInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:exclusive_start_destination_id], ::String, context: "#{context}[:exclusive_start_destination_id]")
      end
    end

    class DescribeDeliveryStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeliveryStreamOutput, context: context)
        DeliveryStreamDescription.validate!(input[:delivery_stream_description], context: "#{context}[:delivery_stream_description]") unless input[:delivery_stream_description].nil?
      end
    end

    class Deserializer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Deserializer, context: context)
        OpenXJsonSerDe.validate!(input[:open_x_json_ser_de], context: "#{context}[:open_x_json_ser_de]") unless input[:open_x_json_ser_de].nil?
        HiveJsonSerDe.validate!(input[:hive_json_ser_de], context: "#{context}[:hive_json_ser_de]") unless input[:hive_json_ser_de].nil?
      end
    end

    class DestinationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationDescription, context: context)
        Hearth::Validator.validate!(input[:destination_id], ::String, context: "#{context}[:destination_id]")
        S3DestinationDescription.validate!(input[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless input[:s3_destination_description].nil?
        ExtendedS3DestinationDescription.validate!(input[:extended_s3_destination_description], context: "#{context}[:extended_s3_destination_description]") unless input[:extended_s3_destination_description].nil?
        RedshiftDestinationDescription.validate!(input[:redshift_destination_description], context: "#{context}[:redshift_destination_description]") unless input[:redshift_destination_description].nil?
        ElasticsearchDestinationDescription.validate!(input[:elasticsearch_destination_description], context: "#{context}[:elasticsearch_destination_description]") unless input[:elasticsearch_destination_description].nil?
        AmazonopensearchserviceDestinationDescription.validate!(input[:amazonopensearchservice_destination_description], context: "#{context}[:amazonopensearchservice_destination_description]") unless input[:amazonopensearchservice_destination_description].nil?
        SplunkDestinationDescription.validate!(input[:splunk_destination_description], context: "#{context}[:splunk_destination_description]") unless input[:splunk_destination_description].nil?
        HttpEndpointDestinationDescription.validate!(input[:http_endpoint_destination_description], context: "#{context}[:http_endpoint_destination_description]") unless input[:http_endpoint_destination_description].nil?
      end
    end

    class DestinationDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DestinationDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DynamicPartitioningConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynamicPartitioningConfiguration, context: context)
        RetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ElasticsearchBufferingHints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchBufferingHints, context: context)
        Hearth::Validator.validate!(input[:interval_in_seconds], ::Integer, context: "#{context}[:interval_in_seconds]")
        Hearth::Validator.validate!(input[:size_in_m_bs], ::Integer, context: "#{context}[:size_in_m_bs]")
      end
    end

    class ElasticsearchDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchDestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
        Hearth::Validator.validate!(input[:cluster_endpoint], ::String, context: "#{context}[:cluster_endpoint]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:index_rotation_period], ::String, context: "#{context}[:index_rotation_period]")
        ElasticsearchBufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        ElasticsearchRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationConfiguration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class ElasticsearchDestinationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchDestinationDescription, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
        Hearth::Validator.validate!(input[:cluster_endpoint], ::String, context: "#{context}[:cluster_endpoint]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:index_rotation_period], ::String, context: "#{context}[:index_rotation_period]")
        ElasticsearchBufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        ElasticsearchRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationDescription.validate!(input[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless input[:s3_destination_description].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        VpcConfigurationDescription.validate!(input[:vpc_configuration_description], context: "#{context}[:vpc_configuration_description]") unless input[:vpc_configuration_description].nil?
      end
    end

    class ElasticsearchDestinationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchDestinationUpdate, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
        Hearth::Validator.validate!(input[:cluster_endpoint], ::String, context: "#{context}[:cluster_endpoint]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:index_rotation_period], ::String, context: "#{context}[:index_rotation_period]")
        ElasticsearchBufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        ElasticsearchRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        S3DestinationUpdate.validate!(input[:s3_update], context: "#{context}[:s3_update]") unless input[:s3_update].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class ElasticsearchRetryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchRetryOptions, context: context)
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
      end
    end

    class EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:no_encryption_config], ::String, context: "#{context}[:no_encryption_config]")
        KMSEncryptionConfig.validate!(input[:kms_encryption_config], context: "#{context}[:kms_encryption_config]") unless input[:kms_encryption_config].nil?
      end
    end

    class ExtendedS3DestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendedS3DestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:error_output_prefix], ::String, context: "#{context}[:error_output_prefix]")
        BufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        Hearth::Validator.validate!(input[:compression_format], ::String, context: "#{context}[:compression_format]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationConfiguration.validate!(input[:s3_backup_configuration], context: "#{context}[:s3_backup_configuration]") unless input[:s3_backup_configuration].nil?
        DataFormatConversionConfiguration.validate!(input[:data_format_conversion_configuration], context: "#{context}[:data_format_conversion_configuration]") unless input[:data_format_conversion_configuration].nil?
        DynamicPartitioningConfiguration.validate!(input[:dynamic_partitioning_configuration], context: "#{context}[:dynamic_partitioning_configuration]") unless input[:dynamic_partitioning_configuration].nil?
      end
    end

    class ExtendedS3DestinationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendedS3DestinationDescription, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:error_output_prefix], ::String, context: "#{context}[:error_output_prefix]")
        BufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        Hearth::Validator.validate!(input[:compression_format], ::String, context: "#{context}[:compression_format]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationDescription.validate!(input[:s3_backup_description], context: "#{context}[:s3_backup_description]") unless input[:s3_backup_description].nil?
        DataFormatConversionConfiguration.validate!(input[:data_format_conversion_configuration], context: "#{context}[:data_format_conversion_configuration]") unless input[:data_format_conversion_configuration].nil?
        DynamicPartitioningConfiguration.validate!(input[:dynamic_partitioning_configuration], context: "#{context}[:dynamic_partitioning_configuration]") unless input[:dynamic_partitioning_configuration].nil?
      end
    end

    class ExtendedS3DestinationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendedS3DestinationUpdate, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:error_output_prefix], ::String, context: "#{context}[:error_output_prefix]")
        BufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        Hearth::Validator.validate!(input[:compression_format], ::String, context: "#{context}[:compression_format]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationUpdate.validate!(input[:s3_backup_update], context: "#{context}[:s3_backup_update]") unless input[:s3_backup_update].nil?
        DataFormatConversionConfiguration.validate!(input[:data_format_conversion_configuration], context: "#{context}[:data_format_conversion_configuration]") unless input[:data_format_conversion_configuration].nil?
        DynamicPartitioningConfiguration.validate!(input[:dynamic_partitioning_configuration], context: "#{context}[:dynamic_partitioning_configuration]") unless input[:dynamic_partitioning_configuration].nil?
      end
    end

    class FailureDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailureDescription, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class HiveJsonSerDe
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HiveJsonSerDe, context: context)
        ListOfNonEmptyStrings.validate!(input[:timestamp_formats], context: "#{context}[:timestamp_formats]") unless input[:timestamp_formats].nil?
      end
    end

    class HttpEndpointBufferingHints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpEndpointBufferingHints, context: context)
        Hearth::Validator.validate!(input[:size_in_m_bs], ::Integer, context: "#{context}[:size_in_m_bs]")
        Hearth::Validator.validate!(input[:interval_in_seconds], ::Integer, context: "#{context}[:interval_in_seconds]")
      end
    end

    class HttpEndpointCommonAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpEndpointCommonAttribute, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
      end
    end

    class HttpEndpointCommonAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HttpEndpointCommonAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HttpEndpointConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpEndpointConfiguration, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:access_key], ::String, context: "#{context}[:access_key]")
      end
    end

    class HttpEndpointDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpEndpointDescription, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class HttpEndpointDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpEndpointDestinationConfiguration, context: context)
        HttpEndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        HttpEndpointBufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        HttpEndpointRequestConfiguration.validate!(input[:request_configuration], context: "#{context}[:request_configuration]") unless input[:request_configuration].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        HttpEndpointRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationConfiguration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
      end
    end

    class HttpEndpointDestinationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpEndpointDestinationDescription, context: context)
        HttpEndpointDescription.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        HttpEndpointBufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        HttpEndpointRequestConfiguration.validate!(input[:request_configuration], context: "#{context}[:request_configuration]") unless input[:request_configuration].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        HttpEndpointRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationDescription.validate!(input[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless input[:s3_destination_description].nil?
      end
    end

    class HttpEndpointDestinationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpEndpointDestinationUpdate, context: context)
        HttpEndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        HttpEndpointBufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
        HttpEndpointRequestConfiguration.validate!(input[:request_configuration], context: "#{context}[:request_configuration]") unless input[:request_configuration].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        HttpEndpointRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationUpdate.validate!(input[:s3_update], context: "#{context}[:s3_update]") unless input[:s3_update].nil?
      end
    end

    class HttpEndpointRequestConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpEndpointRequestConfiguration, context: context)
        Hearth::Validator.validate!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        HttpEndpointCommonAttributesList.validate!(input[:common_attributes], context: "#{context}[:common_attributes]") unless input[:common_attributes].nil?
      end
    end

    class HttpEndpointRetryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpEndpointRetryOptions, context: context)
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
      end
    end

    class InputFormatConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputFormatConfiguration, context: context)
        Deserializer.validate!(input[:deserializer], context: "#{context}[:deserializer]") unless input[:deserializer].nil?
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKMSResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKMSResourceException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSEncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSEncryptionConfig, context: context)
        Hearth::Validator.validate!(input[:awskms_key_arn], ::String, context: "#{context}[:awskms_key_arn]")
      end
    end

    class KinesisStreamSourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamSourceConfiguration, context: context)
        Hearth::Validator.validate!(input[:kinesis_stream_arn], ::String, context: "#{context}[:kinesis_stream_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class KinesisStreamSourceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamSourceDescription, context: context)
        Hearth::Validator.validate!(input[:kinesis_stream_arn], ::String, context: "#{context}[:kinesis_stream_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:delivery_start_timestamp], ::Time, context: "#{context}[:delivery_start_timestamp]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDeliveryStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeliveryStreamsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:delivery_stream_type], ::String, context: "#{context}[:delivery_stream_type]")
        Hearth::Validator.validate!(input[:exclusive_start_delivery_stream_name], ::String, context: "#{context}[:exclusive_start_delivery_stream_name]")
      end
    end

    class ListDeliveryStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeliveryStreamsOutput, context: context)
        DeliveryStreamNameList.validate!(input[:delivery_stream_names], context: "#{context}[:delivery_stream_names]") unless input[:delivery_stream_names].nil?
        Hearth::Validator.validate!(input[:has_more_delivery_streams], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_delivery_streams]")
      end
    end

    class ListOfNonEmptyStrings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfNonEmptyStringsWithoutWhitespace
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListTagsForDeliveryStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForDeliveryStreamInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        Hearth::Validator.validate!(input[:exclusive_start_tag_key], ::String, context: "#{context}[:exclusive_start_tag_key]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTagsForDeliveryStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForDeliveryStreamOutput, context: context)
        ListTagsForDeliveryStreamOutputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:has_more_tags], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_tags]")
      end
    end

    class ListTagsForDeliveryStreamOutputTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpenXJsonSerDe
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenXJsonSerDe, context: context)
        Hearth::Validator.validate!(input[:convert_dots_in_json_keys_to_underscores], ::TrueClass, ::FalseClass, context: "#{context}[:convert_dots_in_json_keys_to_underscores]")
        Hearth::Validator.validate!(input[:case_insensitive], ::TrueClass, ::FalseClass, context: "#{context}[:case_insensitive]")
        ColumnToJsonKeyMappings.validate!(input[:column_to_json_key_mappings], context: "#{context}[:column_to_json_key_mappings]") unless input[:column_to_json_key_mappings].nil?
      end
    end

    class OrcSerDe
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrcSerDe, context: context)
        Hearth::Validator.validate!(input[:stripe_size_bytes], ::Integer, context: "#{context}[:stripe_size_bytes]")
        Hearth::Validator.validate!(input[:block_size_bytes], ::Integer, context: "#{context}[:block_size_bytes]")
        Hearth::Validator.validate!(input[:row_index_stride], ::Integer, context: "#{context}[:row_index_stride]")
        Hearth::Validator.validate!(input[:enable_padding], ::TrueClass, ::FalseClass, context: "#{context}[:enable_padding]")
        Hearth::Validator.validate!(input[:padding_tolerance], ::Float, context: "#{context}[:padding_tolerance]")
        Hearth::Validator.validate!(input[:compression], ::String, context: "#{context}[:compression]")
        ListOfNonEmptyStringsWithoutWhitespace.validate!(input[:bloom_filter_columns], context: "#{context}[:bloom_filter_columns]") unless input[:bloom_filter_columns].nil?
        Hearth::Validator.validate!(input[:bloom_filter_false_positive_probability], ::Float, context: "#{context}[:bloom_filter_false_positive_probability]")
        Hearth::Validator.validate!(input[:dictionary_key_threshold], ::Float, context: "#{context}[:dictionary_key_threshold]")
        Hearth::Validator.validate!(input[:format_version], ::String, context: "#{context}[:format_version]")
      end
    end

    class OutputFormatConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputFormatConfiguration, context: context)
        Serializer.validate!(input[:serializer], context: "#{context}[:serializer]") unless input[:serializer].nil?
      end
    end

    class ParquetSerDe
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParquetSerDe, context: context)
        Hearth::Validator.validate!(input[:block_size_bytes], ::Integer, context: "#{context}[:block_size_bytes]")
        Hearth::Validator.validate!(input[:page_size_bytes], ::Integer, context: "#{context}[:page_size_bytes]")
        Hearth::Validator.validate!(input[:compression], ::String, context: "#{context}[:compression]")
        Hearth::Validator.validate!(input[:enable_dictionary_compression], ::TrueClass, ::FalseClass, context: "#{context}[:enable_dictionary_compression]")
        Hearth::Validator.validate!(input[:max_padding_bytes], ::Integer, context: "#{context}[:max_padding_bytes]")
        Hearth::Validator.validate!(input[:writer_version], ::String, context: "#{context}[:writer_version]")
      end
    end

    class ProcessingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        ProcessorList.validate!(input[:processors], context: "#{context}[:processors]") unless input[:processors].nil?
      end
    end

    class Processor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Processor, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ProcessorParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ProcessorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Processor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProcessorParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessorParameter, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
      end
    end

    class ProcessorParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProcessorParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutRecordBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordBatchInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        PutRecordBatchRequestEntryList.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
      end
    end

    class PutRecordBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordBatchOutput, context: context)
        Hearth::Validator.validate!(input[:failed_put_count], ::Integer, context: "#{context}[:failed_put_count]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        PutRecordBatchResponseEntryList.validate!(input[:request_responses], context: "#{context}[:request_responses]") unless input[:request_responses].nil?
      end
    end

    class PutRecordBatchRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Record.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutRecordBatchResponseEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordBatchResponseEntry, context: context)
        Hearth::Validator.validate!(input[:record_id], ::String, context: "#{context}[:record_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class PutRecordBatchResponseEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PutRecordBatchResponseEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        Record.validate!(input[:record], context: "#{context}[:record]") unless input[:record].nil?
      end
    end

    class PutRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordOutput, context: context)
        Hearth::Validator.validate!(input[:record_id], ::String, context: "#{context}[:record_id]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Record, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class RedshiftDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:cluster_jdbcurl], ::String, context: "#{context}[:cluster_jdbcurl]")
        CopyCommand.validate!(input[:copy_command], context: "#{context}[:copy_command]") unless input[:copy_command].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        RedshiftRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        S3DestinationConfiguration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationConfiguration.validate!(input[:s3_backup_configuration], context: "#{context}[:s3_backup_configuration]") unless input[:s3_backup_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class RedshiftDestinationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDestinationDescription, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:cluster_jdbcurl], ::String, context: "#{context}[:cluster_jdbcurl]")
        CopyCommand.validate!(input[:copy_command], context: "#{context}[:copy_command]") unless input[:copy_command].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        RedshiftRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        S3DestinationDescription.validate!(input[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless input[:s3_destination_description].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationDescription.validate!(input[:s3_backup_description], context: "#{context}[:s3_backup_description]") unless input[:s3_backup_description].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class RedshiftDestinationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDestinationUpdate, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:cluster_jdbcurl], ::String, context: "#{context}[:cluster_jdbcurl]")
        CopyCommand.validate!(input[:copy_command], context: "#{context}[:copy_command]") unless input[:copy_command].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        RedshiftRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        S3DestinationUpdate.validate!(input[:s3_update], context: "#{context}[:s3_update]") unless input[:s3_update].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationUpdate.validate!(input[:s3_backup_update], context: "#{context}[:s3_backup_update]") unless input[:s3_backup_update].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class RedshiftRetryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftRetryOptions, context: context)
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
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

    class RetryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryOptions, context: context)
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
      end
    end

    class S3DestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:error_output_prefix], ::String, context: "#{context}[:error_output_prefix]")
        BufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        Hearth::Validator.validate!(input[:compression_format], ::String, context: "#{context}[:compression_format]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class S3DestinationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationDescription, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:error_output_prefix], ::String, context: "#{context}[:error_output_prefix]")
        BufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        Hearth::Validator.validate!(input[:compression_format], ::String, context: "#{context}[:compression_format]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class S3DestinationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationUpdate, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:error_output_prefix], ::String, context: "#{context}[:error_output_prefix]")
        BufferingHints.validate!(input[:buffering_hints], context: "#{context}[:buffering_hints]") unless input[:buffering_hints].nil?
        Hearth::Validator.validate!(input[:compression_format], ::String, context: "#{context}[:compression_format]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class SchemaConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaConfiguration, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class SecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Serializer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Serializer, context: context)
        ParquetSerDe.validate!(input[:parquet_ser_de], context: "#{context}[:parquet_ser_de]") unless input[:parquet_ser_de].nil?
        OrcSerDe.validate!(input[:orc_ser_de], context: "#{context}[:orc_ser_de]") unless input[:orc_ser_de].nil?
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceDescription, context: context)
        KinesisStreamSourceDescription.validate!(input[:kinesis_stream_source_description], context: "#{context}[:kinesis_stream_source_description]") unless input[:kinesis_stream_source_description].nil?
      end
    end

    class SplunkDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SplunkDestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:hec_endpoint], ::String, context: "#{context}[:hec_endpoint]")
        Hearth::Validator.validate!(input[:hec_endpoint_type], ::String, context: "#{context}[:hec_endpoint_type]")
        Hearth::Validator.validate!(input[:hec_token], ::String, context: "#{context}[:hec_token]")
        Hearth::Validator.validate!(input[:hec_acknowledgment_timeout_in_seconds], ::Integer, context: "#{context}[:hec_acknowledgment_timeout_in_seconds]")
        SplunkRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationConfiguration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class SplunkDestinationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SplunkDestinationDescription, context: context)
        Hearth::Validator.validate!(input[:hec_endpoint], ::String, context: "#{context}[:hec_endpoint]")
        Hearth::Validator.validate!(input[:hec_endpoint_type], ::String, context: "#{context}[:hec_endpoint_type]")
        Hearth::Validator.validate!(input[:hec_token], ::String, context: "#{context}[:hec_token]")
        Hearth::Validator.validate!(input[:hec_acknowledgment_timeout_in_seconds], ::Integer, context: "#{context}[:hec_acknowledgment_timeout_in_seconds]")
        SplunkRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationDescription.validate!(input[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless input[:s3_destination_description].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class SplunkDestinationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SplunkDestinationUpdate, context: context)
        Hearth::Validator.validate!(input[:hec_endpoint], ::String, context: "#{context}[:hec_endpoint]")
        Hearth::Validator.validate!(input[:hec_endpoint_type], ::String, context: "#{context}[:hec_endpoint_type]")
        Hearth::Validator.validate!(input[:hec_token], ::String, context: "#{context}[:hec_token]")
        Hearth::Validator.validate!(input[:hec_acknowledgment_timeout_in_seconds], ::Integer, context: "#{context}[:hec_acknowledgment_timeout_in_seconds]")
        SplunkRetryOptions.validate!(input[:retry_options], context: "#{context}[:retry_options]") unless input[:retry_options].nil?
        Hearth::Validator.validate!(input[:s3_backup_mode], ::String, context: "#{context}[:s3_backup_mode]")
        S3DestinationUpdate.validate!(input[:s3_update], context: "#{context}[:s3_update]") unless input[:s3_update].nil?
        ProcessingConfiguration.validate!(input[:processing_configuration], context: "#{context}[:processing_configuration]") unless input[:processing_configuration].nil?
        CloudWatchLoggingOptions.validate!(input[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless input[:cloud_watch_logging_options].nil?
      end
    end

    class SplunkRetryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SplunkRetryOptions, context: context)
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
      end
    end

    class StartDeliveryStreamEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeliveryStreamEncryptionInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        DeliveryStreamEncryptionConfigurationInput.validate!(input[:delivery_stream_encryption_configuration_input], context: "#{context}[:delivery_stream_encryption_configuration_input]") unless input[:delivery_stream_encryption_configuration_input].nil?
      end
    end

    class StartDeliveryStreamEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeliveryStreamEncryptionOutput, context: context)
      end
    end

    class StopDeliveryStreamEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDeliveryStreamEncryptionInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
      end
    end

    class StopDeliveryStreamEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDeliveryStreamEncryptionOutput, context: context)
      end
    end

    class SubnetIdList
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

    class TagDeliveryStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagDeliveryStreamInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        TagDeliveryStreamInputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagDeliveryStreamInputTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagDeliveryStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagDeliveryStreamOutput, context: context)
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UntagDeliveryStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagDeliveryStreamInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagDeliveryStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagDeliveryStreamOutput, context: context)
      end
    end

    class UpdateDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDestinationInput, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        Hearth::Validator.validate!(input[:current_delivery_stream_version_id], ::String, context: "#{context}[:current_delivery_stream_version_id]")
        Hearth::Validator.validate!(input[:destination_id], ::String, context: "#{context}[:destination_id]")
        S3DestinationUpdate.validate!(input[:s3_destination_update], context: "#{context}[:s3_destination_update]") unless input[:s3_destination_update].nil?
        ExtendedS3DestinationUpdate.validate!(input[:extended_s3_destination_update], context: "#{context}[:extended_s3_destination_update]") unless input[:extended_s3_destination_update].nil?
        RedshiftDestinationUpdate.validate!(input[:redshift_destination_update], context: "#{context}[:redshift_destination_update]") unless input[:redshift_destination_update].nil?
        ElasticsearchDestinationUpdate.validate!(input[:elasticsearch_destination_update], context: "#{context}[:elasticsearch_destination_update]") unless input[:elasticsearch_destination_update].nil?
        AmazonopensearchserviceDestinationUpdate.validate!(input[:amazonopensearchservice_destination_update], context: "#{context}[:amazonopensearchservice_destination_update]") unless input[:amazonopensearchservice_destination_update].nil?
        SplunkDestinationUpdate.validate!(input[:splunk_destination_update], context: "#{context}[:splunk_destination_update]") unless input[:splunk_destination_update].nil?
        HttpEndpointDestinationUpdate.validate!(input[:http_endpoint_destination_update], context: "#{context}[:http_endpoint_destination_update]") unless input[:http_endpoint_destination_update].nil?
      end
    end

    class UpdateDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDestinationOutput, context: context)
      end
    end

    class VpcConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfiguration, context: context)
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class VpcConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfigurationDescription, context: context)
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

  end
end
