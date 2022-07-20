# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::TimestreamWrite
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatabaseOutput, context: context)
        Database.validate!(input[:database], context: "#{context}[:database]") unless input[:database].nil?
      end
    end

    class CreateTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTableInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        RetentionProperties.validate!(input[:retention_properties], context: "#{context}[:retention_properties]") unless input[:retention_properties].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MagneticStoreWriteProperties.validate!(input[:magnetic_store_write_properties], context: "#{context}[:magnetic_store_write_properties]") unless input[:magnetic_store_write_properties].nil?
      end
    end

    class CreateTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTableOutput, context: context)
        Table.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
      end
    end

    class Database
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Database, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_count], ::Integer, context: "#{context}[:table_count]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class DatabaseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Database.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
      end
    end

    class DeleteDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatabaseOutput, context: context)
      end
    end

    class DeleteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DeleteTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableOutput, context: context)
      end
    end

    class DescribeDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
      end
    end

    class DescribeDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatabaseOutput, context: context)
        Database.validate!(input[:database], context: "#{context}[:database]") unless input[:database].nil?
      end
    end

    class DescribeEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsInput, context: context)
      end
    end

    class DescribeEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsOutput, context: context)
        Endpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class DescribeTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableOutput, context: context)
        Table.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
      end
    end

    class Dimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dimension, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:dimension_value_type], ::String, context: "#{context}[:dimension_value_type]")
      end
    end

    class Dimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Dimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:cache_period_in_minutes], ::Integer, context: "#{context}[:cache_period_in_minutes]")
      end
    end

    class Endpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Endpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEndpointException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEndpointException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDatabasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatabasesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatabasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatabasesOutput, context: context)
        DatabaseList.validate!(input[:databases], context: "#{context}[:databases]") unless input[:databases].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesOutput, context: context)
        TableList.validate!(input[:tables], context: "#{context}[:tables]") unless input[:tables].nil?
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
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MagneticStoreRejectedDataLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MagneticStoreRejectedDataLocation, context: context)
        S3Configuration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
      end
    end

    class MagneticStoreWriteProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MagneticStoreWriteProperties, context: context)
        Hearth::Validator.validate!(input[:enable_magnetic_store_writes], ::TrueClass, ::FalseClass, context: "#{context}[:enable_magnetic_store_writes]")
        MagneticStoreRejectedDataLocation.validate!(input[:magnetic_store_rejected_data_location], context: "#{context}[:magnetic_store_rejected_data_location]") unless input[:magnetic_store_rejected_data_location].nil?
      end
    end

    class MeasureValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeasureValue, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class MeasureValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MeasureValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Record, context: context)
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:measure_name], ::String, context: "#{context}[:measure_name]")
        Hearth::Validator.validate!(input[:measure_value], ::String, context: "#{context}[:measure_value]")
        Hearth::Validator.validate!(input[:measure_value_type], ::String, context: "#{context}[:measure_value_type]")
        Hearth::Validator.validate!(input[:time], ::String, context: "#{context}[:time]")
        Hearth::Validator.validate!(input[:time_unit], ::String, context: "#{context}[:time_unit]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        MeasureValues.validate!(input[:measure_values], context: "#{context}[:measure_values]") unless input[:measure_values].nil?
      end
    end

    class Records
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Record.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordsIngested
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordsIngested, context: context)
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:memory_store], ::Integer, context: "#{context}[:memory_store]")
        Hearth::Validator.validate!(input[:magnetic_store], ::Integer, context: "#{context}[:magnetic_store]")
      end
    end

    class RejectedRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectedRecord, context: context)
        Hearth::Validator.validate!(input[:record_index], ::Integer, context: "#{context}[:record_index]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:existing_version], ::Integer, context: "#{context}[:existing_version]")
      end
    end

    class RejectedRecords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RejectedRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RejectedRecordsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectedRecordsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        RejectedRecords.validate!(input[:rejected_records], context: "#{context}[:rejected_records]") unless input[:rejected_records].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RetentionProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetentionProperties, context: context)
        Hearth::Validator.validate!(input[:memory_store_retention_period_in_hours], ::Integer, context: "#{context}[:memory_store_retention_period_in_hours]")
        Hearth::Validator.validate!(input[:magnetic_store_retention_period_in_days], ::Integer, context: "#{context}[:magnetic_store_retention_period_in_days]")
      end
    end

    class S3Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Configuration, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:object_key_prefix], ::String, context: "#{context}[:object_key_prefix]")
        Hearth::Validator.validate!(input[:encryption_option], ::String, context: "#{context}[:encryption_option]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Table
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Table, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_status], ::String, context: "#{context}[:table_status]")
        RetentionProperties.validate!(input[:retention_properties], context: "#{context}[:retention_properties]") unless input[:retention_properties].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        MagneticStoreWriteProperties.validate!(input[:magnetic_store_write_properties], context: "#{context}[:magnetic_store_write_properties]") unless input[:magnetic_store_write_properties].nil?
      end
    end

    class TableList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Table.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class UpdateDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatabaseOutput, context: context)
        Database.validate!(input[:database], context: "#{context}[:database]") unless input[:database].nil?
      end
    end

    class UpdateTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        RetentionProperties.validate!(input[:retention_properties], context: "#{context}[:retention_properties]") unless input[:retention_properties].nil?
        MagneticStoreWriteProperties.validate!(input[:magnetic_store_write_properties], context: "#{context}[:magnetic_store_write_properties]") unless input[:magnetic_store_write_properties].nil?
      end
    end

    class UpdateTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableOutput, context: context)
        Table.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WriteRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteRecordsInput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Record.validate!(input[:common_attributes], context: "#{context}[:common_attributes]") unless input[:common_attributes].nil?
        Records.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
      end
    end

    class WriteRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteRecordsOutput, context: context)
        RecordsIngested.validate!(input[:records_ingested], context: "#{context}[:records_ingested]") unless input[:records_ingested].nil?
      end
    end

  end
end
