# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TimestreamWrite
  module Builders

    # Operation Builder for CreateDatabase
    class CreateDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.CreateDatabase'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
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

    # Operation Builder for CreateTable
    class CreateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.CreateTable'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['RetentionProperties'] = Builders::RetentionProperties.build(input[:retention_properties]) unless input[:retention_properties].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['MagneticStoreWriteProperties'] = Builders::MagneticStoreWriteProperties.build(input[:magnetic_store_write_properties]) unless input[:magnetic_store_write_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MagneticStoreWriteProperties
    class MagneticStoreWriteProperties
      def self.build(input)
        data = {}
        data['EnableMagneticStoreWrites'] = input[:enable_magnetic_store_writes] unless input[:enable_magnetic_store_writes].nil?
        data['MagneticStoreRejectedDataLocation'] = Builders::MagneticStoreRejectedDataLocation.build(input[:magnetic_store_rejected_data_location]) unless input[:magnetic_store_rejected_data_location].nil?
        data
      end
    end

    # Structure Builder for MagneticStoreRejectedDataLocation
    class MagneticStoreRejectedDataLocation
      def self.build(input)
        data = {}
        data['S3Configuration'] = Builders::S3Configuration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data
      end
    end

    # Structure Builder for S3Configuration
    class S3Configuration
      def self.build(input)
        data = {}
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['ObjectKeyPrefix'] = input[:object_key_prefix] unless input[:object_key_prefix].nil?
        data['EncryptionOption'] = input[:encryption_option] unless input[:encryption_option].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for RetentionProperties
    class RetentionProperties
      def self.build(input)
        data = {}
        data['MemoryStoreRetentionPeriodInHours'] = input[:memory_store_retention_period_in_hours] unless input[:memory_store_retention_period_in_hours].nil?
        data['MagneticStoreRetentionPeriodInDays'] = input[:magnetic_store_retention_period_in_days] unless input[:magnetic_store_retention_period_in_days].nil?
        data
      end
    end

    # Operation Builder for DeleteDatabase
    class DeleteDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.DeleteDatabase'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTable
    class DeleteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.DeleteTable'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDatabase
    class DescribeDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.DescribeDatabase'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEndpoints
    class DescribeEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.DescribeEndpoints'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTable
    class DescribeTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.DescribeTable'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatabases
    class ListDatabases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.ListDatabases'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTables
    class ListTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.ListTables'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateDatabase
    class UpdateDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.UpdateDatabase'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTable
    class UpdateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.UpdateTable'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['RetentionProperties'] = Builders::RetentionProperties.build(input[:retention_properties]) unless input[:retention_properties].nil?
        data['MagneticStoreWriteProperties'] = Builders::MagneticStoreWriteProperties.build(input[:magnetic_store_write_properties]) unless input[:magnetic_store_write_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for WriteRecords
    class WriteRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.WriteRecords'
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['CommonAttributes'] = Builders::Record.build(input[:common_attributes]) unless input[:common_attributes].nil?
        data['Records'] = Builders::Records.build(input[:records]) unless input[:records].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Records
    class Records
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Record.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Record
    class Record
      def self.build(input)
        data = {}
        data['Dimensions'] = Builders::Dimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['MeasureName'] = input[:measure_name] unless input[:measure_name].nil?
        data['MeasureValue'] = input[:measure_value] unless input[:measure_value].nil?
        data['MeasureValueType'] = input[:measure_value_type] unless input[:measure_value_type].nil?
        data['Time'] = input[:time] unless input[:time].nil?
        data['TimeUnit'] = input[:time_unit] unless input[:time_unit].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['MeasureValues'] = Builders::MeasureValues.build(input[:measure_values]) unless input[:measure_values].nil?
        data
      end
    end

    # List Builder for MeasureValues
    class MeasureValues
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MeasureValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MeasureValue
    class MeasureValue
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for Dimensions
    class Dimensions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Dimension.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Dimension
    class Dimension
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['DimensionValueType'] = input[:dimension_value_type] unless input[:dimension_value_type].nil?
        data
      end
    end
  end
end
