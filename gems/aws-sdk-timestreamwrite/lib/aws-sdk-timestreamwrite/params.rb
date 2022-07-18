# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TimestreamWrite
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatabaseInput, context: context)
        type = Types::CreateDatabaseInput.new
        type.database_name = params[:database_name]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatabaseOutput, context: context)
        type = Types::CreateDatabaseOutput.new
        type.database = Database.build(params[:database], context: "#{context}[:database]") unless params[:database].nil?
        type
      end
    end

    module CreateTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTableInput, context: context)
        type = Types::CreateTableInput.new
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.retention_properties = RetentionProperties.build(params[:retention_properties], context: "#{context}[:retention_properties]") unless params[:retention_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.magnetic_store_write_properties = MagneticStoreWriteProperties.build(params[:magnetic_store_write_properties], context: "#{context}[:magnetic_store_write_properties]") unless params[:magnetic_store_write_properties].nil?
        type
      end
    end

    module CreateTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTableOutput, context: context)
        type = Types::CreateTableOutput.new
        type.table = Table.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type
      end
    end

    module Database
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Database, context: context)
        type = Types::Database.new
        type.arn = params[:arn]
        type.database_name = params[:database_name]
        type.table_count = params[:table_count]
        type.kms_key_id = params[:kms_key_id]
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module DatabaseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Database.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatabaseInput, context: context)
        type = Types::DeleteDatabaseInput.new
        type.database_name = params[:database_name]
        type
      end
    end

    module DeleteDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatabaseOutput, context: context)
        type = Types::DeleteDatabaseOutput.new
        type
      end
    end

    module DeleteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTableInput, context: context)
        type = Types::DeleteTableInput.new
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type
      end
    end

    module DeleteTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTableOutput, context: context)
        type = Types::DeleteTableOutput.new
        type
      end
    end

    module DescribeDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatabaseInput, context: context)
        type = Types::DescribeDatabaseInput.new
        type.database_name = params[:database_name]
        type
      end
    end

    module DescribeDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatabaseOutput, context: context)
        type = Types::DescribeDatabaseOutput.new
        type.database = Database.build(params[:database], context: "#{context}[:database]") unless params[:database].nil?
        type
      end
    end

    module DescribeEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointsInput, context: context)
        type = Types::DescribeEndpointsInput.new
        type
      end
    end

    module DescribeEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointsOutput, context: context)
        type = Types::DescribeEndpointsOutput.new
        type.endpoints = Endpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    module DescribeTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableInput, context: context)
        type = Types::DescribeTableInput.new
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type
      end
    end

    module DescribeTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableOutput, context: context)
        type = Types::DescribeTableOutput.new
        type.table = Table.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type
      end
    end

    module Dimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dimension, context: context)
        type = Types::Dimension.new
        type.name = params[:name]
        type.value = params[:value]
        type.dimension_value_type = params[:dimension_value_type]
        type
      end
    end

    module Dimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Dimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.address = params[:address]
        type.cache_period_in_minutes = params[:cache_period_in_minutes]
        type
      end
    end

    module Endpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Endpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEndpointException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEndpointException, context: context)
        type = Types::InvalidEndpointException.new
        type.message = params[:message]
        type
      end
    end

    module ListDatabasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatabasesInput, context: context)
        type = Types::ListDatabasesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatabasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatabasesOutput, context: context)
        type = Types::ListDatabasesOutput.new
        type.databases = DatabaseList.build(params[:databases], context: "#{context}[:databases]") unless params[:databases].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTablesInput, context: context)
        type = Types::ListTablesInput.new
        type.database_name = params[:database_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTablesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTablesOutput, context: context)
        type = Types::ListTablesOutput.new
        type.tables = TableList.build(params[:tables], context: "#{context}[:tables]") unless params[:tables].nil?
        type.next_token = params[:next_token]
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MagneticStoreRejectedDataLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MagneticStoreRejectedDataLocation, context: context)
        type = Types::MagneticStoreRejectedDataLocation.new
        type.s3_configuration = S3Configuration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type
      end
    end

    module MagneticStoreWriteProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MagneticStoreWriteProperties, context: context)
        type = Types::MagneticStoreWriteProperties.new
        type.enable_magnetic_store_writes = params[:enable_magnetic_store_writes]
        type.magnetic_store_rejected_data_location = MagneticStoreRejectedDataLocation.build(params[:magnetic_store_rejected_data_location], context: "#{context}[:magnetic_store_rejected_data_location]") unless params[:magnetic_store_rejected_data_location].nil?
        type
      end
    end

    module MeasureValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeasureValue, context: context)
        type = Types::MeasureValue.new
        type.name = params[:name]
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module MeasureValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MeasureValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Record, context: context)
        type = Types::Record.new
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.measure_name = params[:measure_name]
        type.measure_value = params[:measure_value]
        type.measure_value_type = params[:measure_value_type]
        type.time = params[:time]
        type.time_unit = params[:time_unit]
        type.version = params[:version]
        type.measure_values = MeasureValues.build(params[:measure_values], context: "#{context}[:measure_values]") unless params[:measure_values].nil?
        type
      end
    end

    module Records
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Record.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordsIngested
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordsIngested, context: context)
        type = Types::RecordsIngested.new
        type.total = params[:total]
        type.memory_store = params[:memory_store]
        type.magnetic_store = params[:magnetic_store]
        type
      end
    end

    module RejectedRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectedRecord, context: context)
        type = Types::RejectedRecord.new
        type.record_index = params[:record_index]
        type.reason = params[:reason]
        type.existing_version = params[:existing_version]
        type
      end
    end

    module RejectedRecords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RejectedRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RejectedRecordsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectedRecordsException, context: context)
        type = Types::RejectedRecordsException.new
        type.message = params[:message]
        type.rejected_records = RejectedRecords.build(params[:rejected_records], context: "#{context}[:rejected_records]") unless params[:rejected_records].nil?
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

    module RetentionProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetentionProperties, context: context)
        type = Types::RetentionProperties.new
        type.memory_store_retention_period_in_hours = params[:memory_store_retention_period_in_hours]
        type.magnetic_store_retention_period_in_days = params[:magnetic_store_retention_period_in_days]
        type
      end
    end

    module S3Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Configuration, context: context)
        type = Types::S3Configuration.new
        type.bucket_name = params[:bucket_name]
        type.object_key_prefix = params[:object_key_prefix]
        type.encryption_option = params[:encryption_option]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Table
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Table, context: context)
        type = Types::Table.new
        type.arn = params[:arn]
        type.table_name = params[:table_name]
        type.database_name = params[:database_name]
        type.table_status = params[:table_status]
        type.retention_properties = RetentionProperties.build(params[:retention_properties], context: "#{context}[:retention_properties]") unless params[:retention_properties].nil?
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.magnetic_store_write_properties = MagneticStoreWriteProperties.build(params[:magnetic_store_write_properties], context: "#{context}[:magnetic_store_write_properties]") unless params[:magnetic_store_write_properties].nil?
        type
      end
    end

    module TableList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Table.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatabaseInput, context: context)
        type = Types::UpdateDatabaseInput.new
        type.database_name = params[:database_name]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module UpdateDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatabaseOutput, context: context)
        type = Types::UpdateDatabaseOutput.new
        type.database = Database.build(params[:database], context: "#{context}[:database]") unless params[:database].nil?
        type
      end
    end

    module UpdateTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableInput, context: context)
        type = Types::UpdateTableInput.new
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.retention_properties = RetentionProperties.build(params[:retention_properties], context: "#{context}[:retention_properties]") unless params[:retention_properties].nil?
        type.magnetic_store_write_properties = MagneticStoreWriteProperties.build(params[:magnetic_store_write_properties], context: "#{context}[:magnetic_store_write_properties]") unless params[:magnetic_store_write_properties].nil?
        type
      end
    end

    module UpdateTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableOutput, context: context)
        type = Types::UpdateTableOutput.new
        type.table = Table.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module WriteRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteRecordsInput, context: context)
        type = Types::WriteRecordsInput.new
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.common_attributes = Record.build(params[:common_attributes], context: "#{context}[:common_attributes]") unless params[:common_attributes].nil?
        type.records = Records.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type
      end
    end

    module WriteRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteRecordsOutput, context: context)
        type = Types::WriteRecordsOutput.new
        type.records_ingested = RecordsIngested.build(params[:records_ingested], context: "#{context}[:records_ingested]") unless params[:records_ingested].nil?
        type
      end
    end

  end
end
