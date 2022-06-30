# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Firehose
  module Params

    module AmazonopensearchserviceBufferingHints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmazonopensearchserviceBufferingHints, context: context)
        type = Types::AmazonopensearchserviceBufferingHints.new
        type.interval_in_seconds = params[:interval_in_seconds]
        type.size_in_m_bs = params[:size_in_m_bs]
        type
      end
    end

    module AmazonopensearchserviceDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmazonopensearchserviceDestinationConfiguration, context: context)
        type = Types::AmazonopensearchserviceDestinationConfiguration.new
        type.role_arn = params[:role_arn]
        type.domain_arn = params[:domain_arn]
        type.cluster_endpoint = params[:cluster_endpoint]
        type.index_name = params[:index_name]
        type.type_name = params[:type_name]
        type.index_rotation_period = params[:index_rotation_period]
        type.buffering_hints = AmazonopensearchserviceBufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.retry_options = AmazonopensearchserviceRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_configuration = S3DestinationConfiguration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module AmazonopensearchserviceDestinationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmazonopensearchserviceDestinationDescription, context: context)
        type = Types::AmazonopensearchserviceDestinationDescription.new
        type.role_arn = params[:role_arn]
        type.domain_arn = params[:domain_arn]
        type.cluster_endpoint = params[:cluster_endpoint]
        type.index_name = params[:index_name]
        type.type_name = params[:type_name]
        type.index_rotation_period = params[:index_rotation_period]
        type.buffering_hints = AmazonopensearchserviceBufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.retry_options = AmazonopensearchserviceRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_destination_description = S3DestinationDescription.build(params[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless params[:s3_destination_description].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.vpc_configuration_description = VpcConfigurationDescription.build(params[:vpc_configuration_description], context: "#{context}[:vpc_configuration_description]") unless params[:vpc_configuration_description].nil?
        type
      end
    end

    module AmazonopensearchserviceDestinationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmazonopensearchserviceDestinationUpdate, context: context)
        type = Types::AmazonopensearchserviceDestinationUpdate.new
        type.role_arn = params[:role_arn]
        type.domain_arn = params[:domain_arn]
        type.cluster_endpoint = params[:cluster_endpoint]
        type.index_name = params[:index_name]
        type.type_name = params[:type_name]
        type.index_rotation_period = params[:index_rotation_period]
        type.buffering_hints = AmazonopensearchserviceBufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.retry_options = AmazonopensearchserviceRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_update = S3DestinationUpdate.build(params[:s3_update], context: "#{context}[:s3_update]") unless params[:s3_update].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module AmazonopensearchserviceRetryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmazonopensearchserviceRetryOptions, context: context)
        type = Types::AmazonopensearchserviceRetryOptions.new
        type.duration_in_seconds = params[:duration_in_seconds]
        type
      end
    end

    module BufferingHints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BufferingHints, context: context)
        type = Types::BufferingHints.new
        type.size_in_m_bs = params[:size_in_m_bs]
        type.interval_in_seconds = params[:interval_in_seconds]
        type
      end
    end

    module CloudWatchLoggingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLoggingOptions, context: context)
        type = Types::CloudWatchLoggingOptions.new
        type.enabled = params[:enabled]
        type.log_group_name = params[:log_group_name]
        type.log_stream_name = params[:log_stream_name]
        type
      end
    end

    module ColumnToJsonKeyMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
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

    module CopyCommand
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyCommand, context: context)
        type = Types::CopyCommand.new
        type.data_table_name = params[:data_table_name]
        type.data_table_columns = params[:data_table_columns]
        type.copy_options = params[:copy_options]
        type
      end
    end

    module CreateDeliveryStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeliveryStreamInput, context: context)
        type = Types::CreateDeliveryStreamInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.delivery_stream_type = params[:delivery_stream_type]
        type.kinesis_stream_source_configuration = KinesisStreamSourceConfiguration.build(params[:kinesis_stream_source_configuration], context: "#{context}[:kinesis_stream_source_configuration]") unless params[:kinesis_stream_source_configuration].nil?
        type.delivery_stream_encryption_configuration_input = DeliveryStreamEncryptionConfigurationInput.build(params[:delivery_stream_encryption_configuration_input], context: "#{context}[:delivery_stream_encryption_configuration_input]") unless params[:delivery_stream_encryption_configuration_input].nil?
        type.s3_destination_configuration = S3DestinationConfiguration.build(params[:s3_destination_configuration], context: "#{context}[:s3_destination_configuration]") unless params[:s3_destination_configuration].nil?
        type.extended_s3_destination_configuration = ExtendedS3DestinationConfiguration.build(params[:extended_s3_destination_configuration], context: "#{context}[:extended_s3_destination_configuration]") unless params[:extended_s3_destination_configuration].nil?
        type.redshift_destination_configuration = RedshiftDestinationConfiguration.build(params[:redshift_destination_configuration], context: "#{context}[:redshift_destination_configuration]") unless params[:redshift_destination_configuration].nil?
        type.elasticsearch_destination_configuration = ElasticsearchDestinationConfiguration.build(params[:elasticsearch_destination_configuration], context: "#{context}[:elasticsearch_destination_configuration]") unless params[:elasticsearch_destination_configuration].nil?
        type.amazonopensearchservice_destination_configuration = AmazonopensearchserviceDestinationConfiguration.build(params[:amazonopensearchservice_destination_configuration], context: "#{context}[:amazonopensearchservice_destination_configuration]") unless params[:amazonopensearchservice_destination_configuration].nil?
        type.splunk_destination_configuration = SplunkDestinationConfiguration.build(params[:splunk_destination_configuration], context: "#{context}[:splunk_destination_configuration]") unless params[:splunk_destination_configuration].nil?
        type.http_endpoint_destination_configuration = HttpEndpointDestinationConfiguration.build(params[:http_endpoint_destination_configuration], context: "#{context}[:http_endpoint_destination_configuration]") unless params[:http_endpoint_destination_configuration].nil?
        type.tags = TagDeliveryStreamInputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDeliveryStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeliveryStreamOutput, context: context)
        type = Types::CreateDeliveryStreamOutput.new
        type.delivery_stream_arn = params[:delivery_stream_arn]
        type
      end
    end

    module DataFormatConversionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataFormatConversionConfiguration, context: context)
        type = Types::DataFormatConversionConfiguration.new
        type.schema_configuration = SchemaConfiguration.build(params[:schema_configuration], context: "#{context}[:schema_configuration]") unless params[:schema_configuration].nil?
        type.input_format_configuration = InputFormatConfiguration.build(params[:input_format_configuration], context: "#{context}[:input_format_configuration]") unless params[:input_format_configuration].nil?
        type.output_format_configuration = OutputFormatConfiguration.build(params[:output_format_configuration], context: "#{context}[:output_format_configuration]") unless params[:output_format_configuration].nil?
        type.enabled = params[:enabled]
        type
      end
    end

    module DeleteDeliveryStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeliveryStreamInput, context: context)
        type = Types::DeleteDeliveryStreamInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.allow_force_delete = params[:allow_force_delete]
        type
      end
    end

    module DeleteDeliveryStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeliveryStreamOutput, context: context)
        type = Types::DeleteDeliveryStreamOutput.new
        type
      end
    end

    module DeliveryStreamDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliveryStreamDescription, context: context)
        type = Types::DeliveryStreamDescription.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.delivery_stream_arn = params[:delivery_stream_arn]
        type.delivery_stream_status = params[:delivery_stream_status]
        type.failure_description = FailureDescription.build(params[:failure_description], context: "#{context}[:failure_description]") unless params[:failure_description].nil?
        type.delivery_stream_encryption_configuration = DeliveryStreamEncryptionConfiguration.build(params[:delivery_stream_encryption_configuration], context: "#{context}[:delivery_stream_encryption_configuration]") unless params[:delivery_stream_encryption_configuration].nil?
        type.delivery_stream_type = params[:delivery_stream_type]
        type.version_id = params[:version_id]
        type.create_timestamp = params[:create_timestamp]
        type.last_update_timestamp = params[:last_update_timestamp]
        type.source = SourceDescription.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.destinations = DestinationDescriptionList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.has_more_destinations = params[:has_more_destinations]
        type
      end
    end

    module DeliveryStreamEncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliveryStreamEncryptionConfiguration, context: context)
        type = Types::DeliveryStreamEncryptionConfiguration.new
        type.key_arn = params[:key_arn]
        type.key_type = params[:key_type]
        type.status = params[:status]
        type.failure_description = FailureDescription.build(params[:failure_description], context: "#{context}[:failure_description]") unless params[:failure_description].nil?
        type
      end
    end

    module DeliveryStreamEncryptionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliveryStreamEncryptionConfigurationInput, context: context)
        type = Types::DeliveryStreamEncryptionConfigurationInput.new
        type.key_arn = params[:key_arn]
        type.key_type = params[:key_type]
        type
      end
    end

    module DeliveryStreamNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DescribeDeliveryStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeliveryStreamInput, context: context)
        type = Types::DescribeDeliveryStreamInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.limit = params[:limit]
        type.exclusive_start_destination_id = params[:exclusive_start_destination_id]
        type
      end
    end

    module DescribeDeliveryStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeliveryStreamOutput, context: context)
        type = Types::DescribeDeliveryStreamOutput.new
        type.delivery_stream_description = DeliveryStreamDescription.build(params[:delivery_stream_description], context: "#{context}[:delivery_stream_description]") unless params[:delivery_stream_description].nil?
        type
      end
    end

    module Deserializer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Deserializer, context: context)
        type = Types::Deserializer.new
        type.open_x_json_ser_de = OpenXJsonSerDe.build(params[:open_x_json_ser_de], context: "#{context}[:open_x_json_ser_de]") unless params[:open_x_json_ser_de].nil?
        type.hive_json_ser_de = HiveJsonSerDe.build(params[:hive_json_ser_de], context: "#{context}[:hive_json_ser_de]") unless params[:hive_json_ser_de].nil?
        type
      end
    end

    module DestinationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationDescription, context: context)
        type = Types::DestinationDescription.new
        type.destination_id = params[:destination_id]
        type.s3_destination_description = S3DestinationDescription.build(params[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless params[:s3_destination_description].nil?
        type.extended_s3_destination_description = ExtendedS3DestinationDescription.build(params[:extended_s3_destination_description], context: "#{context}[:extended_s3_destination_description]") unless params[:extended_s3_destination_description].nil?
        type.redshift_destination_description = RedshiftDestinationDescription.build(params[:redshift_destination_description], context: "#{context}[:redshift_destination_description]") unless params[:redshift_destination_description].nil?
        type.elasticsearch_destination_description = ElasticsearchDestinationDescription.build(params[:elasticsearch_destination_description], context: "#{context}[:elasticsearch_destination_description]") unless params[:elasticsearch_destination_description].nil?
        type.amazonopensearchservice_destination_description = AmazonopensearchserviceDestinationDescription.build(params[:amazonopensearchservice_destination_description], context: "#{context}[:amazonopensearchservice_destination_description]") unless params[:amazonopensearchservice_destination_description].nil?
        type.splunk_destination_description = SplunkDestinationDescription.build(params[:splunk_destination_description], context: "#{context}[:splunk_destination_description]") unless params[:splunk_destination_description].nil?
        type.http_endpoint_destination_description = HttpEndpointDestinationDescription.build(params[:http_endpoint_destination_description], context: "#{context}[:http_endpoint_destination_description]") unless params[:http_endpoint_destination_description].nil?
        type
      end
    end

    module DestinationDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DestinationDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DynamicPartitioningConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynamicPartitioningConfiguration, context: context)
        type = Types::DynamicPartitioningConfiguration.new
        type.retry_options = RetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.enabled = params[:enabled]
        type
      end
    end

    module ElasticsearchBufferingHints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchBufferingHints, context: context)
        type = Types::ElasticsearchBufferingHints.new
        type.interval_in_seconds = params[:interval_in_seconds]
        type.size_in_m_bs = params[:size_in_m_bs]
        type
      end
    end

    module ElasticsearchDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchDestinationConfiguration, context: context)
        type = Types::ElasticsearchDestinationConfiguration.new
        type.role_arn = params[:role_arn]
        type.domain_arn = params[:domain_arn]
        type.cluster_endpoint = params[:cluster_endpoint]
        type.index_name = params[:index_name]
        type.type_name = params[:type_name]
        type.index_rotation_period = params[:index_rotation_period]
        type.buffering_hints = ElasticsearchBufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.retry_options = ElasticsearchRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_configuration = S3DestinationConfiguration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module ElasticsearchDestinationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchDestinationDescription, context: context)
        type = Types::ElasticsearchDestinationDescription.new
        type.role_arn = params[:role_arn]
        type.domain_arn = params[:domain_arn]
        type.cluster_endpoint = params[:cluster_endpoint]
        type.index_name = params[:index_name]
        type.type_name = params[:type_name]
        type.index_rotation_period = params[:index_rotation_period]
        type.buffering_hints = ElasticsearchBufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.retry_options = ElasticsearchRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_destination_description = S3DestinationDescription.build(params[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless params[:s3_destination_description].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.vpc_configuration_description = VpcConfigurationDescription.build(params[:vpc_configuration_description], context: "#{context}[:vpc_configuration_description]") unless params[:vpc_configuration_description].nil?
        type
      end
    end

    module ElasticsearchDestinationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchDestinationUpdate, context: context)
        type = Types::ElasticsearchDestinationUpdate.new
        type.role_arn = params[:role_arn]
        type.domain_arn = params[:domain_arn]
        type.cluster_endpoint = params[:cluster_endpoint]
        type.index_name = params[:index_name]
        type.type_name = params[:type_name]
        type.index_rotation_period = params[:index_rotation_period]
        type.buffering_hints = ElasticsearchBufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.retry_options = ElasticsearchRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_update = S3DestinationUpdate.build(params[:s3_update], context: "#{context}[:s3_update]") unless params[:s3_update].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module ElasticsearchRetryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchRetryOptions, context: context)
        type = Types::ElasticsearchRetryOptions.new
        type.duration_in_seconds = params[:duration_in_seconds]
        type
      end
    end

    module EncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfiguration, context: context)
        type = Types::EncryptionConfiguration.new
        type.no_encryption_config = params[:no_encryption_config]
        type.kms_encryption_config = KMSEncryptionConfig.build(params[:kms_encryption_config], context: "#{context}[:kms_encryption_config]") unless params[:kms_encryption_config].nil?
        type
      end
    end

    module ExtendedS3DestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendedS3DestinationConfiguration, context: context)
        type = Types::ExtendedS3DestinationConfiguration.new
        type.role_arn = params[:role_arn]
        type.bucket_arn = params[:bucket_arn]
        type.prefix = params[:prefix]
        type.error_output_prefix = params[:error_output_prefix]
        type.buffering_hints = BufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.compression_format = params[:compression_format]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_backup_configuration = S3DestinationConfiguration.build(params[:s3_backup_configuration], context: "#{context}[:s3_backup_configuration]") unless params[:s3_backup_configuration].nil?
        type.data_format_conversion_configuration = DataFormatConversionConfiguration.build(params[:data_format_conversion_configuration], context: "#{context}[:data_format_conversion_configuration]") unless params[:data_format_conversion_configuration].nil?
        type.dynamic_partitioning_configuration = DynamicPartitioningConfiguration.build(params[:dynamic_partitioning_configuration], context: "#{context}[:dynamic_partitioning_configuration]") unless params[:dynamic_partitioning_configuration].nil?
        type
      end
    end

    module ExtendedS3DestinationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendedS3DestinationDescription, context: context)
        type = Types::ExtendedS3DestinationDescription.new
        type.role_arn = params[:role_arn]
        type.bucket_arn = params[:bucket_arn]
        type.prefix = params[:prefix]
        type.error_output_prefix = params[:error_output_prefix]
        type.buffering_hints = BufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.compression_format = params[:compression_format]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_backup_description = S3DestinationDescription.build(params[:s3_backup_description], context: "#{context}[:s3_backup_description]") unless params[:s3_backup_description].nil?
        type.data_format_conversion_configuration = DataFormatConversionConfiguration.build(params[:data_format_conversion_configuration], context: "#{context}[:data_format_conversion_configuration]") unless params[:data_format_conversion_configuration].nil?
        type.dynamic_partitioning_configuration = DynamicPartitioningConfiguration.build(params[:dynamic_partitioning_configuration], context: "#{context}[:dynamic_partitioning_configuration]") unless params[:dynamic_partitioning_configuration].nil?
        type
      end
    end

    module ExtendedS3DestinationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendedS3DestinationUpdate, context: context)
        type = Types::ExtendedS3DestinationUpdate.new
        type.role_arn = params[:role_arn]
        type.bucket_arn = params[:bucket_arn]
        type.prefix = params[:prefix]
        type.error_output_prefix = params[:error_output_prefix]
        type.buffering_hints = BufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.compression_format = params[:compression_format]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_backup_update = S3DestinationUpdate.build(params[:s3_backup_update], context: "#{context}[:s3_backup_update]") unless params[:s3_backup_update].nil?
        type.data_format_conversion_configuration = DataFormatConversionConfiguration.build(params[:data_format_conversion_configuration], context: "#{context}[:data_format_conversion_configuration]") unless params[:data_format_conversion_configuration].nil?
        type.dynamic_partitioning_configuration = DynamicPartitioningConfiguration.build(params[:dynamic_partitioning_configuration], context: "#{context}[:dynamic_partitioning_configuration]") unless params[:dynamic_partitioning_configuration].nil?
        type
      end
    end

    module FailureDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailureDescription, context: context)
        type = Types::FailureDescription.new
        type.type = params[:type]
        type.details = params[:details]
        type
      end
    end

    module HiveJsonSerDe
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HiveJsonSerDe, context: context)
        type = Types::HiveJsonSerDe.new
        type.timestamp_formats = ListOfNonEmptyStrings.build(params[:timestamp_formats], context: "#{context}[:timestamp_formats]") unless params[:timestamp_formats].nil?
        type
      end
    end

    module HttpEndpointBufferingHints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpEndpointBufferingHints, context: context)
        type = Types::HttpEndpointBufferingHints.new
        type.size_in_m_bs = params[:size_in_m_bs]
        type.interval_in_seconds = params[:interval_in_seconds]
        type
      end
    end

    module HttpEndpointCommonAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpEndpointCommonAttribute, context: context)
        type = Types::HttpEndpointCommonAttribute.new
        type.attribute_name = params[:attribute_name]
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module HttpEndpointCommonAttributesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HttpEndpointCommonAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HttpEndpointConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpEndpointConfiguration, context: context)
        type = Types::HttpEndpointConfiguration.new
        type.url = params[:url]
        type.name = params[:name]
        type.access_key = params[:access_key]
        type
      end
    end

    module HttpEndpointDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpEndpointDescription, context: context)
        type = Types::HttpEndpointDescription.new
        type.url = params[:url]
        type.name = params[:name]
        type
      end
    end

    module HttpEndpointDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpEndpointDestinationConfiguration, context: context)
        type = Types::HttpEndpointDestinationConfiguration.new
        type.endpoint_configuration = HttpEndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.buffering_hints = HttpEndpointBufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.request_configuration = HttpEndpointRequestConfiguration.build(params[:request_configuration], context: "#{context}[:request_configuration]") unless params[:request_configuration].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.role_arn = params[:role_arn]
        type.retry_options = HttpEndpointRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_configuration = S3DestinationConfiguration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type
      end
    end

    module HttpEndpointDestinationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpEndpointDestinationDescription, context: context)
        type = Types::HttpEndpointDestinationDescription.new
        type.endpoint_configuration = HttpEndpointDescription.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.buffering_hints = HttpEndpointBufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.request_configuration = HttpEndpointRequestConfiguration.build(params[:request_configuration], context: "#{context}[:request_configuration]") unless params[:request_configuration].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.role_arn = params[:role_arn]
        type.retry_options = HttpEndpointRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_destination_description = S3DestinationDescription.build(params[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless params[:s3_destination_description].nil?
        type
      end
    end

    module HttpEndpointDestinationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpEndpointDestinationUpdate, context: context)
        type = Types::HttpEndpointDestinationUpdate.new
        type.endpoint_configuration = HttpEndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.buffering_hints = HttpEndpointBufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type.request_configuration = HttpEndpointRequestConfiguration.build(params[:request_configuration], context: "#{context}[:request_configuration]") unless params[:request_configuration].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.role_arn = params[:role_arn]
        type.retry_options = HttpEndpointRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_update = S3DestinationUpdate.build(params[:s3_update], context: "#{context}[:s3_update]") unless params[:s3_update].nil?
        type
      end
    end

    module HttpEndpointRequestConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpEndpointRequestConfiguration, context: context)
        type = Types::HttpEndpointRequestConfiguration.new
        type.content_encoding = params[:content_encoding]
        type.common_attributes = HttpEndpointCommonAttributesList.build(params[:common_attributes], context: "#{context}[:common_attributes]") unless params[:common_attributes].nil?
        type
      end
    end

    module HttpEndpointRetryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpEndpointRetryOptions, context: context)
        type = Types::HttpEndpointRetryOptions.new
        type.duration_in_seconds = params[:duration_in_seconds]
        type
      end
    end

    module InputFormatConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputFormatConfiguration, context: context)
        type = Types::InputFormatConfiguration.new
        type.deserializer = Deserializer.build(params[:deserializer], context: "#{context}[:deserializer]") unless params[:deserializer].nil?
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

    module InvalidKMSResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKMSResourceException, context: context)
        type = Types::InvalidKMSResourceException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module KMSEncryptionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSEncryptionConfig, context: context)
        type = Types::KMSEncryptionConfig.new
        type.awskms_key_arn = params[:awskms_key_arn]
        type
      end
    end

    module KinesisStreamSourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamSourceConfiguration, context: context)
        type = Types::KinesisStreamSourceConfiguration.new
        type.kinesis_stream_arn = params[:kinesis_stream_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module KinesisStreamSourceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamSourceDescription, context: context)
        type = Types::KinesisStreamSourceDescription.new
        type.kinesis_stream_arn = params[:kinesis_stream_arn]
        type.role_arn = params[:role_arn]
        type.delivery_start_timestamp = params[:delivery_start_timestamp]
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

    module ListDeliveryStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeliveryStreamsInput, context: context)
        type = Types::ListDeliveryStreamsInput.new
        type.limit = params[:limit]
        type.delivery_stream_type = params[:delivery_stream_type]
        type.exclusive_start_delivery_stream_name = params[:exclusive_start_delivery_stream_name]
        type
      end
    end

    module ListDeliveryStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeliveryStreamsOutput, context: context)
        type = Types::ListDeliveryStreamsOutput.new
        type.delivery_stream_names = DeliveryStreamNameList.build(params[:delivery_stream_names], context: "#{context}[:delivery_stream_names]") unless params[:delivery_stream_names].nil?
        type.has_more_delivery_streams = params[:has_more_delivery_streams]
        type
      end
    end

    module ListOfNonEmptyStrings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfNonEmptyStringsWithoutWhitespace
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListTagsForDeliveryStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForDeliveryStreamInput, context: context)
        type = Types::ListTagsForDeliveryStreamInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.exclusive_start_tag_key = params[:exclusive_start_tag_key]
        type.limit = params[:limit]
        type
      end
    end

    module ListTagsForDeliveryStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForDeliveryStreamOutput, context: context)
        type = Types::ListTagsForDeliveryStreamOutput.new
        type.tags = ListTagsForDeliveryStreamOutputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.has_more_tags = params[:has_more_tags]
        type
      end
    end

    module ListTagsForDeliveryStreamOutputTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpenXJsonSerDe
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenXJsonSerDe, context: context)
        type = Types::OpenXJsonSerDe.new
        type.convert_dots_in_json_keys_to_underscores = params[:convert_dots_in_json_keys_to_underscores]
        type.case_insensitive = params[:case_insensitive]
        type.column_to_json_key_mappings = ColumnToJsonKeyMappings.build(params[:column_to_json_key_mappings], context: "#{context}[:column_to_json_key_mappings]") unless params[:column_to_json_key_mappings].nil?
        type
      end
    end

    module OrcSerDe
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrcSerDe, context: context)
        type = Types::OrcSerDe.new
        type.stripe_size_bytes = params[:stripe_size_bytes]
        type.block_size_bytes = params[:block_size_bytes]
        type.row_index_stride = params[:row_index_stride]
        type.enable_padding = params[:enable_padding]
        type.padding_tolerance = params[:padding_tolerance]
        type.compression = params[:compression]
        type.bloom_filter_columns = ListOfNonEmptyStringsWithoutWhitespace.build(params[:bloom_filter_columns], context: "#{context}[:bloom_filter_columns]") unless params[:bloom_filter_columns].nil?
        type.bloom_filter_false_positive_probability = params[:bloom_filter_false_positive_probability]
        type.dictionary_key_threshold = params[:dictionary_key_threshold]
        type.format_version = params[:format_version]
        type
      end
    end

    module OutputFormatConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputFormatConfiguration, context: context)
        type = Types::OutputFormatConfiguration.new
        type.serializer = Serializer.build(params[:serializer], context: "#{context}[:serializer]") unless params[:serializer].nil?
        type
      end
    end

    module ParquetSerDe
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParquetSerDe, context: context)
        type = Types::ParquetSerDe.new
        type.block_size_bytes = params[:block_size_bytes]
        type.page_size_bytes = params[:page_size_bytes]
        type.compression = params[:compression]
        type.enable_dictionary_compression = params[:enable_dictionary_compression]
        type.max_padding_bytes = params[:max_padding_bytes]
        type.writer_version = params[:writer_version]
        type
      end
    end

    module ProcessingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingConfiguration, context: context)
        type = Types::ProcessingConfiguration.new
        type.enabled = params[:enabled]
        type.processors = ProcessorList.build(params[:processors], context: "#{context}[:processors]") unless params[:processors].nil?
        type
      end
    end

    module Processor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Processor, context: context)
        type = Types::Processor.new
        type.type = params[:type]
        type.parameters = ProcessorParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ProcessorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Processor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProcessorParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessorParameter, context: context)
        type = Types::ProcessorParameter.new
        type.parameter_name = params[:parameter_name]
        type.parameter_value = params[:parameter_value]
        type
      end
    end

    module ProcessorParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProcessorParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutRecordBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordBatchInput, context: context)
        type = Types::PutRecordBatchInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.records = PutRecordBatchRequestEntryList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type
      end
    end

    module PutRecordBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordBatchOutput, context: context)
        type = Types::PutRecordBatchOutput.new
        type.failed_put_count = params[:failed_put_count]
        type.encrypted = params[:encrypted]
        type.request_responses = PutRecordBatchResponseEntryList.build(params[:request_responses], context: "#{context}[:request_responses]") unless params[:request_responses].nil?
        type
      end
    end

    module PutRecordBatchRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Record.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutRecordBatchResponseEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordBatchResponseEntry, context: context)
        type = Types::PutRecordBatchResponseEntry.new
        type.record_id = params[:record_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module PutRecordBatchResponseEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutRecordBatchResponseEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordInput, context: context)
        type = Types::PutRecordInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.record = Record.build(params[:record], context: "#{context}[:record]") unless params[:record].nil?
        type
      end
    end

    module PutRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordOutput, context: context)
        type = Types::PutRecordOutput.new
        type.record_id = params[:record_id]
        type.encrypted = params[:encrypted]
        type
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Record, context: context)
        type = Types::Record.new
        type.data = params[:data]
        type
      end
    end

    module RedshiftDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDestinationConfiguration, context: context)
        type = Types::RedshiftDestinationConfiguration.new
        type.role_arn = params[:role_arn]
        type.cluster_jdbcurl = params[:cluster_jdbcurl]
        type.copy_command = CopyCommand.build(params[:copy_command], context: "#{context}[:copy_command]") unless params[:copy_command].nil?
        type.username = params[:username]
        type.password = params[:password]
        type.retry_options = RedshiftRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_configuration = S3DestinationConfiguration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_backup_configuration = S3DestinationConfiguration.build(params[:s3_backup_configuration], context: "#{context}[:s3_backup_configuration]") unless params[:s3_backup_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module RedshiftDestinationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDestinationDescription, context: context)
        type = Types::RedshiftDestinationDescription.new
        type.role_arn = params[:role_arn]
        type.cluster_jdbcurl = params[:cluster_jdbcurl]
        type.copy_command = CopyCommand.build(params[:copy_command], context: "#{context}[:copy_command]") unless params[:copy_command].nil?
        type.username = params[:username]
        type.retry_options = RedshiftRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_destination_description = S3DestinationDescription.build(params[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless params[:s3_destination_description].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_backup_description = S3DestinationDescription.build(params[:s3_backup_description], context: "#{context}[:s3_backup_description]") unless params[:s3_backup_description].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module RedshiftDestinationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDestinationUpdate, context: context)
        type = Types::RedshiftDestinationUpdate.new
        type.role_arn = params[:role_arn]
        type.cluster_jdbcurl = params[:cluster_jdbcurl]
        type.copy_command = CopyCommand.build(params[:copy_command], context: "#{context}[:copy_command]") unless params[:copy_command].nil?
        type.username = params[:username]
        type.password = params[:password]
        type.retry_options = RedshiftRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_update = S3DestinationUpdate.build(params[:s3_update], context: "#{context}[:s3_update]") unless params[:s3_update].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_backup_update = S3DestinationUpdate.build(params[:s3_backup_update], context: "#{context}[:s3_backup_update]") unless params[:s3_backup_update].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module RedshiftRetryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftRetryOptions, context: context)
        type = Types::RedshiftRetryOptions.new
        type.duration_in_seconds = params[:duration_in_seconds]
        type
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

    module RetryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryOptions, context: context)
        type = Types::RetryOptions.new
        type.duration_in_seconds = params[:duration_in_seconds]
        type
      end
    end

    module S3DestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationConfiguration, context: context)
        type = Types::S3DestinationConfiguration.new
        type.role_arn = params[:role_arn]
        type.bucket_arn = params[:bucket_arn]
        type.prefix = params[:prefix]
        type.error_output_prefix = params[:error_output_prefix]
        type.buffering_hints = BufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.compression_format = params[:compression_format]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module S3DestinationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationDescription, context: context)
        type = Types::S3DestinationDescription.new
        type.role_arn = params[:role_arn]
        type.bucket_arn = params[:bucket_arn]
        type.prefix = params[:prefix]
        type.error_output_prefix = params[:error_output_prefix]
        type.buffering_hints = BufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.compression_format = params[:compression_format]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module S3DestinationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationUpdate, context: context)
        type = Types::S3DestinationUpdate.new
        type.role_arn = params[:role_arn]
        type.bucket_arn = params[:bucket_arn]
        type.prefix = params[:prefix]
        type.error_output_prefix = params[:error_output_prefix]
        type.buffering_hints = BufferingHints.build(params[:buffering_hints], context: "#{context}[:buffering_hints]") unless params[:buffering_hints].nil?
        type.compression_format = params[:compression_format]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module SchemaConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaConfiguration, context: context)
        type = Types::SchemaConfiguration.new
        type.role_arn = params[:role_arn]
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.region = params[:region]
        type.version_id = params[:version_id]
        type
      end
    end

    module SecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Serializer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Serializer, context: context)
        type = Types::Serializer.new
        type.parquet_ser_de = ParquetSerDe.build(params[:parquet_ser_de], context: "#{context}[:parquet_ser_de]") unless params[:parquet_ser_de].nil?
        type.orc_ser_de = OrcSerDe.build(params[:orc_ser_de], context: "#{context}[:orc_ser_de]") unless params[:orc_ser_de].nil?
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

    module SourceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceDescription, context: context)
        type = Types::SourceDescription.new
        type.kinesis_stream_source_description = KinesisStreamSourceDescription.build(params[:kinesis_stream_source_description], context: "#{context}[:kinesis_stream_source_description]") unless params[:kinesis_stream_source_description].nil?
        type
      end
    end

    module SplunkDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SplunkDestinationConfiguration, context: context)
        type = Types::SplunkDestinationConfiguration.new
        type.hec_endpoint = params[:hec_endpoint]
        type.hec_endpoint_type = params[:hec_endpoint_type]
        type.hec_token = params[:hec_token]
        type.hec_acknowledgment_timeout_in_seconds = params[:hec_acknowledgment_timeout_in_seconds]
        type.retry_options = SplunkRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_configuration = S3DestinationConfiguration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module SplunkDestinationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SplunkDestinationDescription, context: context)
        type = Types::SplunkDestinationDescription.new
        type.hec_endpoint = params[:hec_endpoint]
        type.hec_endpoint_type = params[:hec_endpoint_type]
        type.hec_token = params[:hec_token]
        type.hec_acknowledgment_timeout_in_seconds = params[:hec_acknowledgment_timeout_in_seconds]
        type.retry_options = SplunkRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_destination_description = S3DestinationDescription.build(params[:s3_destination_description], context: "#{context}[:s3_destination_description]") unless params[:s3_destination_description].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module SplunkDestinationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SplunkDestinationUpdate, context: context)
        type = Types::SplunkDestinationUpdate.new
        type.hec_endpoint = params[:hec_endpoint]
        type.hec_endpoint_type = params[:hec_endpoint_type]
        type.hec_token = params[:hec_token]
        type.hec_acknowledgment_timeout_in_seconds = params[:hec_acknowledgment_timeout_in_seconds]
        type.retry_options = SplunkRetryOptions.build(params[:retry_options], context: "#{context}[:retry_options]") unless params[:retry_options].nil?
        type.s3_backup_mode = params[:s3_backup_mode]
        type.s3_update = S3DestinationUpdate.build(params[:s3_update], context: "#{context}[:s3_update]") unless params[:s3_update].nil?
        type.processing_configuration = ProcessingConfiguration.build(params[:processing_configuration], context: "#{context}[:processing_configuration]") unless params[:processing_configuration].nil?
        type.cloud_watch_logging_options = CloudWatchLoggingOptions.build(params[:cloud_watch_logging_options], context: "#{context}[:cloud_watch_logging_options]") unless params[:cloud_watch_logging_options].nil?
        type
      end
    end

    module SplunkRetryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SplunkRetryOptions, context: context)
        type = Types::SplunkRetryOptions.new
        type.duration_in_seconds = params[:duration_in_seconds]
        type
      end
    end

    module StartDeliveryStreamEncryptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeliveryStreamEncryptionInput, context: context)
        type = Types::StartDeliveryStreamEncryptionInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.delivery_stream_encryption_configuration_input = DeliveryStreamEncryptionConfigurationInput.build(params[:delivery_stream_encryption_configuration_input], context: "#{context}[:delivery_stream_encryption_configuration_input]") unless params[:delivery_stream_encryption_configuration_input].nil?
        type
      end
    end

    module StartDeliveryStreamEncryptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeliveryStreamEncryptionOutput, context: context)
        type = Types::StartDeliveryStreamEncryptionOutput.new
        type
      end
    end

    module StopDeliveryStreamEncryptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDeliveryStreamEncryptionInput, context: context)
        type = Types::StopDeliveryStreamEncryptionInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type
      end
    end

    module StopDeliveryStreamEncryptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDeliveryStreamEncryptionOutput, context: context)
        type = Types::StopDeliveryStreamEncryptionOutput.new
        type
      end
    end

    module SubnetIdList
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

    module TagDeliveryStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagDeliveryStreamInput, context: context)
        type = Types::TagDeliveryStreamInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.tags = TagDeliveryStreamInputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagDeliveryStreamInputTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagDeliveryStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagDeliveryStreamOutput, context: context)
        type = Types::TagDeliveryStreamOutput.new
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UntagDeliveryStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagDeliveryStreamInput, context: context)
        type = Types::UntagDeliveryStreamInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagDeliveryStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagDeliveryStreamOutput, context: context)
        type = Types::UntagDeliveryStreamOutput.new
        type
      end
    end

    module UpdateDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDestinationInput, context: context)
        type = Types::UpdateDestinationInput.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.current_delivery_stream_version_id = params[:current_delivery_stream_version_id]
        type.destination_id = params[:destination_id]
        type.s3_destination_update = S3DestinationUpdate.build(params[:s3_destination_update], context: "#{context}[:s3_destination_update]") unless params[:s3_destination_update].nil?
        type.extended_s3_destination_update = ExtendedS3DestinationUpdate.build(params[:extended_s3_destination_update], context: "#{context}[:extended_s3_destination_update]") unless params[:extended_s3_destination_update].nil?
        type.redshift_destination_update = RedshiftDestinationUpdate.build(params[:redshift_destination_update], context: "#{context}[:redshift_destination_update]") unless params[:redshift_destination_update].nil?
        type.elasticsearch_destination_update = ElasticsearchDestinationUpdate.build(params[:elasticsearch_destination_update], context: "#{context}[:elasticsearch_destination_update]") unless params[:elasticsearch_destination_update].nil?
        type.amazonopensearchservice_destination_update = AmazonopensearchserviceDestinationUpdate.build(params[:amazonopensearchservice_destination_update], context: "#{context}[:amazonopensearchservice_destination_update]") unless params[:amazonopensearchservice_destination_update].nil?
        type.splunk_destination_update = SplunkDestinationUpdate.build(params[:splunk_destination_update], context: "#{context}[:splunk_destination_update]") unless params[:splunk_destination_update].nil?
        type.http_endpoint_destination_update = HttpEndpointDestinationUpdate.build(params[:http_endpoint_destination_update], context: "#{context}[:http_endpoint_destination_update]") unless params[:http_endpoint_destination_update].nil?
        type
      end
    end

    module UpdateDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDestinationOutput, context: context)
        type = Types::UpdateDestinationOutput.new
        type
      end
    end

    module VpcConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfiguration, context: context)
        type = Types::VpcConfiguration.new
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.role_arn = params[:role_arn]
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module VpcConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfigurationDescription, context: context)
        type = Types::VpcConfigurationDescription.new
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.role_arn = params[:role_arn]
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

  end
end
