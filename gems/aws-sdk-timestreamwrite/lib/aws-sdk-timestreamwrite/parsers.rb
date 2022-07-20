# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TimestreamWrite
  module Parsers

    # Operation Parser for CreateDatabase
    class CreateDatabase
      def self.parse(http_resp)
        data = Types::CreateDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.database = (Parsers::Database.parse(map['Database']) unless map['Database'].nil?)
        data
      end
    end

    class Database
      def self.parse(map)
        data = Types::Database.new
        data.arn = map['Arn']
        data.database_name = map['DatabaseName']
        data.table_count = map['TableCount']
        data.kms_key_id = map['KmsKeyId']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidEndpointException
    class InvalidEndpointException
      def self.parse(http_resp)
        data = Types::InvalidEndpointException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateTable
    class CreateTable
      def self.parse(http_resp)
        data = Types::CreateTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table = (Parsers::Table.parse(map['Table']) unless map['Table'].nil?)
        data
      end
    end

    class Table
      def self.parse(map)
        data = Types::Table.new
        data.arn = map['Arn']
        data.table_name = map['TableName']
        data.database_name = map['DatabaseName']
        data.table_status = map['TableStatus']
        data.retention_properties = (Parsers::RetentionProperties.parse(map['RetentionProperties']) unless map['RetentionProperties'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.magnetic_store_write_properties = (Parsers::MagneticStoreWriteProperties.parse(map['MagneticStoreWriteProperties']) unless map['MagneticStoreWriteProperties'].nil?)
        return data
      end
    end

    class MagneticStoreWriteProperties
      def self.parse(map)
        data = Types::MagneticStoreWriteProperties.new
        data.enable_magnetic_store_writes = map['EnableMagneticStoreWrites']
        data.magnetic_store_rejected_data_location = (Parsers::MagneticStoreRejectedDataLocation.parse(map['MagneticStoreRejectedDataLocation']) unless map['MagneticStoreRejectedDataLocation'].nil?)
        return data
      end
    end

    class MagneticStoreRejectedDataLocation
      def self.parse(map)
        data = Types::MagneticStoreRejectedDataLocation.new
        data.s3_configuration = (Parsers::S3Configuration.parse(map['S3Configuration']) unless map['S3Configuration'].nil?)
        return data
      end
    end

    class S3Configuration
      def self.parse(map)
        data = Types::S3Configuration.new
        data.bucket_name = map['BucketName']
        data.object_key_prefix = map['ObjectKeyPrefix']
        data.encryption_option = map['EncryptionOption']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class RetentionProperties
      def self.parse(map)
        data = Types::RetentionProperties.new
        data.memory_store_retention_period_in_hours = map['MemoryStoreRetentionPeriodInHours']
        data.magnetic_store_retention_period_in_days = map['MagneticStoreRetentionPeriodInDays']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteDatabase
    class DeleteDatabase
      def self.parse(http_resp)
        data = Types::DeleteDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTable
    class DeleteTable
      def self.parse(http_resp)
        data = Types::DeleteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeDatabase
    class DescribeDatabase
      def self.parse(http_resp)
        data = Types::DescribeDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.database = (Parsers::Database.parse(map['Database']) unless map['Database'].nil?)
        data
      end
    end

    # Operation Parser for DescribeEndpoints
    class DescribeEndpoints
      def self.parse(http_resp)
        data = Types::DescribeEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoints = (Parsers::Endpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data
      end
    end

    class Endpoints
      def self.parse(list)
        list.map do |value|
          Parsers::Endpoint.parse(value) unless value.nil?
        end
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.address = map['Address']
        data.cache_period_in_minutes = map['CachePeriodInMinutes']
        return data
      end
    end

    # Operation Parser for DescribeTable
    class DescribeTable
      def self.parse(http_resp)
        data = Types::DescribeTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table = (Parsers::Table.parse(map['Table']) unless map['Table'].nil?)
        data
      end
    end

    # Operation Parser for ListDatabases
    class ListDatabases
      def self.parse(http_resp)
        data = Types::ListDatabasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.databases = (Parsers::DatabaseList.parse(map['Databases']) unless map['Databases'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatabaseList
      def self.parse(list)
        list.map do |value|
          Parsers::Database.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTables
    class ListTables
      def self.parse(http_resp)
        data = Types::ListTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tables = (Parsers::TableList.parse(map['Tables']) unless map['Tables'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TableList
      def self.parse(list)
        list.map do |value|
          Parsers::Table.parse(value) unless value.nil?
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
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
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

    # Operation Parser for UpdateDatabase
    class UpdateDatabase
      def self.parse(http_resp)
        data = Types::UpdateDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.database = (Parsers::Database.parse(map['Database']) unless map['Database'].nil?)
        data
      end
    end

    # Operation Parser for UpdateTable
    class UpdateTable
      def self.parse(http_resp)
        data = Types::UpdateTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table = (Parsers::Table.parse(map['Table']) unless map['Table'].nil?)
        data
      end
    end

    # Operation Parser for WriteRecords
    class WriteRecords
      def self.parse(http_resp)
        data = Types::WriteRecordsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.records_ingested = (Parsers::RecordsIngested.parse(map['RecordsIngested']) unless map['RecordsIngested'].nil?)
        data
      end
    end

    class RecordsIngested
      def self.parse(map)
        data = Types::RecordsIngested.new
        data.total = map['Total']
        data.memory_store = map['MemoryStore']
        data.magnetic_store = map['MagneticStore']
        return data
      end
    end

    # Error Parser for RejectedRecordsException
    class RejectedRecordsException
      def self.parse(http_resp)
        data = Types::RejectedRecordsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.rejected_records = (Parsers::RejectedRecords.parse(map['RejectedRecords']) unless map['RejectedRecords'].nil?)
        data
      end
    end

    class RejectedRecords
      def self.parse(list)
        list.map do |value|
          Parsers::RejectedRecord.parse(value) unless value.nil?
        end
      end
    end

    class RejectedRecord
      def self.parse(map)
        data = Types::RejectedRecord.new
        data.record_index = map['RecordIndex']
        data.reason = map['Reason']
        data.existing_version = map['ExistingVersion']
        return data
      end
    end
  end
end
