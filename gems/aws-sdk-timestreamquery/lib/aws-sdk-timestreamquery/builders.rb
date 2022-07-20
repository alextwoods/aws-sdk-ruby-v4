# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::TimestreamQuery
  module Builders

    # Operation Builder for CancelQuery
    class CancelQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.CancelQuery'
        data = {}
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateScheduledQuery
    class CreateScheduledQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.CreateScheduledQuery'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data['ScheduleConfiguration'] = ScheduleConfiguration.build(input[:schedule_configuration]) unless input[:schedule_configuration].nil?
        data['NotificationConfiguration'] = NotificationConfiguration.build(input[:notification_configuration]) unless input[:notification_configuration].nil?
        data['TargetConfiguration'] = TargetConfiguration.build(input[:target_configuration]) unless input[:target_configuration].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['ScheduledQueryExecutionRoleArn'] = input[:scheduled_query_execution_role_arn] unless input[:scheduled_query_execution_role_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['ErrorReportConfiguration'] = ErrorReportConfiguration.build(input[:error_report_configuration]) unless input[:error_report_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ErrorReportConfiguration
    class ErrorReportConfiguration
      def self.build(input)
        data = {}
        data['S3Configuration'] = S3Configuration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
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
        data
      end
    end

    # List Builder for TagList
    class TagList
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

    # Structure Builder for TargetConfiguration
    class TargetConfiguration
      def self.build(input)
        data = {}
        data['TimestreamConfiguration'] = TimestreamConfiguration.build(input[:timestream_configuration]) unless input[:timestream_configuration].nil?
        data
      end
    end

    # Structure Builder for TimestreamConfiguration
    class TimestreamConfiguration
      def self.build(input)
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['TimeColumn'] = input[:time_column] unless input[:time_column].nil?
        data['DimensionMappings'] = DimensionMappingList.build(input[:dimension_mappings]) unless input[:dimension_mappings].nil?
        data['MultiMeasureMappings'] = MultiMeasureMappings.build(input[:multi_measure_mappings]) unless input[:multi_measure_mappings].nil?
        data['MixedMeasureMappings'] = MixedMeasureMappingList.build(input[:mixed_measure_mappings]) unless input[:mixed_measure_mappings].nil?
        data['MeasureNameColumn'] = input[:measure_name_column] unless input[:measure_name_column].nil?
        data
      end
    end

    # List Builder for MixedMeasureMappingList
    class MixedMeasureMappingList
      def self.build(input)
        data = []
        input.each do |element|
          data << MixedMeasureMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MixedMeasureMapping
    class MixedMeasureMapping
      def self.build(input)
        data = {}
        data['MeasureName'] = input[:measure_name] unless input[:measure_name].nil?
        data['SourceColumn'] = input[:source_column] unless input[:source_column].nil?
        data['TargetMeasureName'] = input[:target_measure_name] unless input[:target_measure_name].nil?
        data['MeasureValueType'] = input[:measure_value_type] unless input[:measure_value_type].nil?
        data['MultiMeasureAttributeMappings'] = MultiMeasureAttributeMappingList.build(input[:multi_measure_attribute_mappings]) unless input[:multi_measure_attribute_mappings].nil?
        data
      end
    end

    # List Builder for MultiMeasureAttributeMappingList
    class MultiMeasureAttributeMappingList
      def self.build(input)
        data = []
        input.each do |element|
          data << MultiMeasureAttributeMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MultiMeasureAttributeMapping
    class MultiMeasureAttributeMapping
      def self.build(input)
        data = {}
        data['SourceColumn'] = input[:source_column] unless input[:source_column].nil?
        data['TargetMultiMeasureAttributeName'] = input[:target_multi_measure_attribute_name] unless input[:target_multi_measure_attribute_name].nil?
        data['MeasureValueType'] = input[:measure_value_type] unless input[:measure_value_type].nil?
        data
      end
    end

    # Structure Builder for MultiMeasureMappings
    class MultiMeasureMappings
      def self.build(input)
        data = {}
        data['TargetMultiMeasureName'] = input[:target_multi_measure_name] unless input[:target_multi_measure_name].nil?
        data['MultiMeasureAttributeMappings'] = MultiMeasureAttributeMappingList.build(input[:multi_measure_attribute_mappings]) unless input[:multi_measure_attribute_mappings].nil?
        data
      end
    end

    # List Builder for DimensionMappingList
    class DimensionMappingList
      def self.build(input)
        data = []
        input.each do |element|
          data << DimensionMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DimensionMapping
    class DimensionMapping
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DimensionValueType'] = input[:dimension_value_type] unless input[:dimension_value_type].nil?
        data
      end
    end

    # Structure Builder for NotificationConfiguration
    class NotificationConfiguration
      def self.build(input)
        data = {}
        data['SnsConfiguration'] = SnsConfiguration.build(input[:sns_configuration]) unless input[:sns_configuration].nil?
        data
      end
    end

    # Structure Builder for SnsConfiguration
    class SnsConfiguration
      def self.build(input)
        data = {}
        data['TopicArn'] = input[:topic_arn] unless input[:topic_arn].nil?
        data
      end
    end

    # Structure Builder for ScheduleConfiguration
    class ScheduleConfiguration
      def self.build(input)
        data = {}
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data
      end
    end

    # Operation Builder for DeleteScheduledQuery
    class DeleteScheduledQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.DeleteScheduledQuery'
        data = {}
        data['ScheduledQueryArn'] = input[:scheduled_query_arn] unless input[:scheduled_query_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeScheduledQuery
    class DescribeScheduledQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.DescribeScheduledQuery'
        data = {}
        data['ScheduledQueryArn'] = input[:scheduled_query_arn] unless input[:scheduled_query_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteScheduledQuery
    class ExecuteScheduledQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.ExecuteScheduledQuery'
        data = {}
        data['ScheduledQueryArn'] = input[:scheduled_query_arn] unless input[:scheduled_query_arn].nil?
        data['InvocationTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:invocation_time]).to_i unless input[:invocation_time].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListScheduledQueries
    class ListScheduledQueries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.ListScheduledQueries'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PrepareQuery
    class PrepareQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.PrepareQuery'
        data = {}
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data['ValidateOnly'] = input[:validate_only] unless input[:validate_only].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Query
    class Query
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.Query'
        data = {}
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxRows'] = input[:max_rows] unless input[:max_rows].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateScheduledQuery
    class UpdateScheduledQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'Timestream_20181101.UpdateScheduledQuery'
        data = {}
        data['ScheduledQueryArn'] = input[:scheduled_query_arn] unless input[:scheduled_query_arn].nil?
        data['State'] = input[:state] unless input[:state].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
