# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TimestreamWrite
  module Stubs

    # Operation Stubber for CreateDatabase
    class CreateDatabase
      def self.default(visited=[])
        {
          database: Stubs::Database.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Database'] = Stubs::Database.stub(stub[:database]) unless stub[:database].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Database
    class Database
      def self.default(visited=[])
        return nil if visited.include?('Database')
        visited = visited + ['Database']
        {
          arn: 'arn',
          database_name: 'database_name',
          table_count: 1,
          kms_key_id: 'kms_key_id',
          creation_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Database.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableCount'] = stub[:table_count] unless stub[:table_count].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for CreateTable
    class CreateTable
      def self.default(visited=[])
        {
          table: Stubs::Table.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Table'] = Stubs::Table.stub(stub[:table]) unless stub[:table].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Table
    class Table
      def self.default(visited=[])
        return nil if visited.include?('Table')
        visited = visited + ['Table']
        {
          arn: 'arn',
          table_name: 'table_name',
          database_name: 'database_name',
          table_status: 'table_status',
          retention_properties: Stubs::RetentionProperties.default(visited),
          creation_time: Time.now,
          last_updated_time: Time.now,
          magnetic_store_write_properties: Stubs::MagneticStoreWriteProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Table.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableStatus'] = stub[:table_status] unless stub[:table_status].nil?
        data['RetentionProperties'] = Stubs::RetentionProperties.stub(stub[:retention_properties]) unless stub[:retention_properties].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['MagneticStoreWriteProperties'] = Stubs::MagneticStoreWriteProperties.stub(stub[:magnetic_store_write_properties]) unless stub[:magnetic_store_write_properties].nil?
        data
      end
    end

    # Structure Stubber for MagneticStoreWriteProperties
    class MagneticStoreWriteProperties
      def self.default(visited=[])
        return nil if visited.include?('MagneticStoreWriteProperties')
        visited = visited + ['MagneticStoreWriteProperties']
        {
          enable_magnetic_store_writes: false,
          magnetic_store_rejected_data_location: Stubs::MagneticStoreRejectedDataLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MagneticStoreWriteProperties.new
        data = {}
        data['EnableMagneticStoreWrites'] = stub[:enable_magnetic_store_writes] unless stub[:enable_magnetic_store_writes].nil?
        data['MagneticStoreRejectedDataLocation'] = Stubs::MagneticStoreRejectedDataLocation.stub(stub[:magnetic_store_rejected_data_location]) unless stub[:magnetic_store_rejected_data_location].nil?
        data
      end
    end

    # Structure Stubber for MagneticStoreRejectedDataLocation
    class MagneticStoreRejectedDataLocation
      def self.default(visited=[])
        return nil if visited.include?('MagneticStoreRejectedDataLocation')
        visited = visited + ['MagneticStoreRejectedDataLocation']
        {
          s3_configuration: Stubs::S3Configuration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MagneticStoreRejectedDataLocation.new
        data = {}
        data['S3Configuration'] = Stubs::S3Configuration.stub(stub[:s3_configuration]) unless stub[:s3_configuration].nil?
        data
      end
    end

    # Structure Stubber for S3Configuration
    class S3Configuration
      def self.default(visited=[])
        return nil if visited.include?('S3Configuration')
        visited = visited + ['S3Configuration']
        {
          bucket_name: 'bucket_name',
          object_key_prefix: 'object_key_prefix',
          encryption_option: 'encryption_option',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Configuration.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['ObjectKeyPrefix'] = stub[:object_key_prefix] unless stub[:object_key_prefix].nil?
        data['EncryptionOption'] = stub[:encryption_option] unless stub[:encryption_option].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for RetentionProperties
    class RetentionProperties
      def self.default(visited=[])
        return nil if visited.include?('RetentionProperties')
        visited = visited + ['RetentionProperties']
        {
          memory_store_retention_period_in_hours: 1,
          magnetic_store_retention_period_in_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RetentionProperties.new
        data = {}
        data['MemoryStoreRetentionPeriodInHours'] = stub[:memory_store_retention_period_in_hours] unless stub[:memory_store_retention_period_in_hours].nil?
        data['MagneticStoreRetentionPeriodInDays'] = stub[:magnetic_store_retention_period_in_days] unless stub[:magnetic_store_retention_period_in_days].nil?
        data
      end
    end

    # Operation Stubber for DeleteDatabase
    class DeleteDatabase
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

    # Operation Stubber for DeleteTable
    class DeleteTable
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

    # Operation Stubber for DescribeDatabase
    class DescribeDatabase
      def self.default(visited=[])
        {
          database: Stubs::Database.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Database'] = Stubs::Database.stub(stub[:database]) unless stub[:database].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEndpoints
    class DescribeEndpoints
      def self.default(visited=[])
        {
          endpoints: Stubs::Endpoints.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Endpoints'] = Stubs::Endpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Endpoints
    class Endpoints
      def self.default(visited=[])
        return nil if visited.include?('Endpoints')
        visited = visited + ['Endpoints']
        [
          Stubs::Endpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Endpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          address: 'address',
          cache_period_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['CachePeriodInMinutes'] = stub[:cache_period_in_minutes] unless stub[:cache_period_in_minutes].nil?
        data
      end
    end

    # Operation Stubber for DescribeTable
    class DescribeTable
      def self.default(visited=[])
        {
          table: Stubs::Table.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Table'] = Stubs::Table.stub(stub[:table]) unless stub[:table].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDatabases
    class ListDatabases
      def self.default(visited=[])
        {
          databases: Stubs::DatabaseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Databases'] = Stubs::DatabaseList.stub(stub[:databases]) unless stub[:databases].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatabaseList
    class DatabaseList
      def self.default(visited=[])
        return nil if visited.include?('DatabaseList')
        visited = visited + ['DatabaseList']
        [
          Stubs::Database.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Database.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTables
    class ListTables
      def self.default(visited=[])
        {
          tables: Stubs::TableList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tables'] = Stubs::TableList.stub(stub[:tables]) unless stub[:tables].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TableList
    class TableList
      def self.default(visited=[])
        return nil if visited.include?('TableList')
        visited = visited + ['TableList']
        [
          Stubs::Table.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Table.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
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

    # Operation Stubber for UpdateDatabase
    class UpdateDatabase
      def self.default(visited=[])
        {
          database: Stubs::Database.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Database'] = Stubs::Database.stub(stub[:database]) unless stub[:database].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTable
    class UpdateTable
      def self.default(visited=[])
        {
          table: Stubs::Table.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Table'] = Stubs::Table.stub(stub[:table]) unless stub[:table].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for WriteRecords
    class WriteRecords
      def self.default(visited=[])
        {
          records_ingested: Stubs::RecordsIngested.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordsIngested'] = Stubs::RecordsIngested.stub(stub[:records_ingested]) unless stub[:records_ingested].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RecordsIngested
    class RecordsIngested
      def self.default(visited=[])
        return nil if visited.include?('RecordsIngested')
        visited = visited + ['RecordsIngested']
        {
          total: 1,
          memory_store: 1,
          magnetic_store: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordsIngested.new
        data = {}
        data['Total'] = stub[:total] unless stub[:total].nil?
        data['MemoryStore'] = stub[:memory_store] unless stub[:memory_store].nil?
        data['MagneticStore'] = stub[:magnetic_store] unless stub[:magnetic_store].nil?
        data
      end
    end
  end
end
