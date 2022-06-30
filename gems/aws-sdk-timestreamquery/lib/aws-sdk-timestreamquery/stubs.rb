# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TimestreamQuery
  module Stubs

    # Operation Stubber for CancelQuery
    class CancelQuery
      def self.default(visited=[])
        {
          cancellation_message: 'cancellation_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CancellationMessage'] = stub[:cancellation_message] unless stub[:cancellation_message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateScheduledQuery
    class CreateScheduledQuery
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteScheduledQuery
    class DeleteScheduledQuery
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

    # Operation Stubber for DescribeScheduledQuery
    class DescribeScheduledQuery
      def self.default(visited=[])
        {
          scheduled_query: Stubs::ScheduledQueryDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScheduledQuery'] = Stubs::ScheduledQueryDescription.stub(stub[:scheduled_query]) unless stub[:scheduled_query].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ScheduledQueryDescription
    class ScheduledQueryDescription
      def self.default(visited=[])
        return nil if visited.include?('ScheduledQueryDescription')
        visited = visited + ['ScheduledQueryDescription']
        {
          arn: 'arn',
          name: 'name',
          query_string: 'query_string',
          creation_time: Time.now,
          state: 'state',
          previous_invocation_time: Time.now,
          next_invocation_time: Time.now,
          schedule_configuration: Stubs::ScheduleConfiguration.default(visited),
          notification_configuration: Stubs::NotificationConfiguration.default(visited),
          target_configuration: Stubs::TargetConfiguration.default(visited),
          scheduled_query_execution_role_arn: 'scheduled_query_execution_role_arn',
          kms_key_id: 'kms_key_id',
          error_report_configuration: Stubs::ErrorReportConfiguration.default(visited),
          last_run_summary: Stubs::ScheduledQueryRunSummary.default(visited),
          recently_failed_runs: Stubs::ScheduledQueryRunSummaryList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledQueryDescription.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['PreviousInvocationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:previous_invocation_time]).to_i unless stub[:previous_invocation_time].nil?
        data['NextInvocationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:next_invocation_time]).to_i unless stub[:next_invocation_time].nil?
        data['ScheduleConfiguration'] = Stubs::ScheduleConfiguration.stub(stub[:schedule_configuration]) unless stub[:schedule_configuration].nil?
        data['NotificationConfiguration'] = Stubs::NotificationConfiguration.stub(stub[:notification_configuration]) unless stub[:notification_configuration].nil?
        data['TargetConfiguration'] = Stubs::TargetConfiguration.stub(stub[:target_configuration]) unless stub[:target_configuration].nil?
        data['ScheduledQueryExecutionRoleArn'] = stub[:scheduled_query_execution_role_arn] unless stub[:scheduled_query_execution_role_arn].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ErrorReportConfiguration'] = Stubs::ErrorReportConfiguration.stub(stub[:error_report_configuration]) unless stub[:error_report_configuration].nil?
        data['LastRunSummary'] = Stubs::ScheduledQueryRunSummary.stub(stub[:last_run_summary]) unless stub[:last_run_summary].nil?
        data['RecentlyFailedRuns'] = Stubs::ScheduledQueryRunSummaryList.stub(stub[:recently_failed_runs]) unless stub[:recently_failed_runs].nil?
        data
      end
    end

    # List Stubber for ScheduledQueryRunSummaryList
    class ScheduledQueryRunSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ScheduledQueryRunSummaryList')
        visited = visited + ['ScheduledQueryRunSummaryList']
        [
          Stubs::ScheduledQueryRunSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScheduledQueryRunSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScheduledQueryRunSummary
    class ScheduledQueryRunSummary
      def self.default(visited=[])
        return nil if visited.include?('ScheduledQueryRunSummary')
        visited = visited + ['ScheduledQueryRunSummary']
        {
          invocation_time: Time.now,
          trigger_time: Time.now,
          run_status: 'run_status',
          execution_stats: Stubs::ExecutionStats.default(visited),
          error_report_location: Stubs::ErrorReportLocation.default(visited),
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledQueryRunSummary.new
        data = {}
        data['InvocationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:invocation_time]).to_i unless stub[:invocation_time].nil?
        data['TriggerTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:trigger_time]).to_i unless stub[:trigger_time].nil?
        data['RunStatus'] = stub[:run_status] unless stub[:run_status].nil?
        data['ExecutionStats'] = Stubs::ExecutionStats.stub(stub[:execution_stats]) unless stub[:execution_stats].nil?
        data['ErrorReportLocation'] = Stubs::ErrorReportLocation.stub(stub[:error_report_location]) unless stub[:error_report_location].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Structure Stubber for ErrorReportLocation
    class ErrorReportLocation
      def self.default(visited=[])
        return nil if visited.include?('ErrorReportLocation')
        visited = visited + ['ErrorReportLocation']
        {
          s3_report_location: Stubs::S3ReportLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorReportLocation.new
        data = {}
        data['S3ReportLocation'] = Stubs::S3ReportLocation.stub(stub[:s3_report_location]) unless stub[:s3_report_location].nil?
        data
      end
    end

    # Structure Stubber for S3ReportLocation
    class S3ReportLocation
      def self.default(visited=[])
        return nil if visited.include?('S3ReportLocation')
        visited = visited + ['S3ReportLocation']
        {
          bucket_name: 'bucket_name',
          object_key: 'object_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ReportLocation.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['ObjectKey'] = stub[:object_key] unless stub[:object_key].nil?
        data
      end
    end

    # Structure Stubber for ExecutionStats
    class ExecutionStats
      def self.default(visited=[])
        return nil if visited.include?('ExecutionStats')
        visited = visited + ['ExecutionStats']
        {
          execution_time_in_millis: 1,
          data_writes: 1,
          bytes_metered: 1,
          records_ingested: 1,
          query_result_rows: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionStats.new
        data = {}
        data['ExecutionTimeInMillis'] = stub[:execution_time_in_millis] unless stub[:execution_time_in_millis].nil?
        data['DataWrites'] = stub[:data_writes] unless stub[:data_writes].nil?
        data['BytesMetered'] = stub[:bytes_metered] unless stub[:bytes_metered].nil?
        data['RecordsIngested'] = stub[:records_ingested] unless stub[:records_ingested].nil?
        data['QueryResultRows'] = stub[:query_result_rows] unless stub[:query_result_rows].nil?
        data
      end
    end

    # Structure Stubber for ErrorReportConfiguration
    class ErrorReportConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ErrorReportConfiguration')
        visited = visited + ['ErrorReportConfiguration']
        {
          s3_configuration: Stubs::S3Configuration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorReportConfiguration.new
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
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Configuration.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['ObjectKeyPrefix'] = stub[:object_key_prefix] unless stub[:object_key_prefix].nil?
        data['EncryptionOption'] = stub[:encryption_option] unless stub[:encryption_option].nil?
        data
      end
    end

    # Structure Stubber for TargetConfiguration
    class TargetConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TargetConfiguration')
        visited = visited + ['TargetConfiguration']
        {
          timestream_configuration: Stubs::TimestreamConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetConfiguration.new
        data = {}
        data['TimestreamConfiguration'] = Stubs::TimestreamConfiguration.stub(stub[:timestream_configuration]) unless stub[:timestream_configuration].nil?
        data
      end
    end

    # Structure Stubber for TimestreamConfiguration
    class TimestreamConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TimestreamConfiguration')
        visited = visited + ['TimestreamConfiguration']
        {
          database_name: 'database_name',
          table_name: 'table_name',
          time_column: 'time_column',
          dimension_mappings: Stubs::DimensionMappingList.default(visited),
          multi_measure_mappings: Stubs::MultiMeasureMappings.default(visited),
          mixed_measure_mappings: Stubs::MixedMeasureMappingList.default(visited),
          measure_name_column: 'measure_name_column',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestreamConfiguration.new
        data = {}
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['TimeColumn'] = stub[:time_column] unless stub[:time_column].nil?
        data['DimensionMappings'] = Stubs::DimensionMappingList.stub(stub[:dimension_mappings]) unless stub[:dimension_mappings].nil?
        data['MultiMeasureMappings'] = Stubs::MultiMeasureMappings.stub(stub[:multi_measure_mappings]) unless stub[:multi_measure_mappings].nil?
        data['MixedMeasureMappings'] = Stubs::MixedMeasureMappingList.stub(stub[:mixed_measure_mappings]) unless stub[:mixed_measure_mappings].nil?
        data['MeasureNameColumn'] = stub[:measure_name_column] unless stub[:measure_name_column].nil?
        data
      end
    end

    # List Stubber for MixedMeasureMappingList
    class MixedMeasureMappingList
      def self.default(visited=[])
        return nil if visited.include?('MixedMeasureMappingList')
        visited = visited + ['MixedMeasureMappingList']
        [
          Stubs::MixedMeasureMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MixedMeasureMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MixedMeasureMapping
    class MixedMeasureMapping
      def self.default(visited=[])
        return nil if visited.include?('MixedMeasureMapping')
        visited = visited + ['MixedMeasureMapping']
        {
          measure_name: 'measure_name',
          source_column: 'source_column',
          target_measure_name: 'target_measure_name',
          measure_value_type: 'measure_value_type',
          multi_measure_attribute_mappings: Stubs::MultiMeasureAttributeMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MixedMeasureMapping.new
        data = {}
        data['MeasureName'] = stub[:measure_name] unless stub[:measure_name].nil?
        data['SourceColumn'] = stub[:source_column] unless stub[:source_column].nil?
        data['TargetMeasureName'] = stub[:target_measure_name] unless stub[:target_measure_name].nil?
        data['MeasureValueType'] = stub[:measure_value_type] unless stub[:measure_value_type].nil?
        data['MultiMeasureAttributeMappings'] = Stubs::MultiMeasureAttributeMappingList.stub(stub[:multi_measure_attribute_mappings]) unless stub[:multi_measure_attribute_mappings].nil?
        data
      end
    end

    # List Stubber for MultiMeasureAttributeMappingList
    class MultiMeasureAttributeMappingList
      def self.default(visited=[])
        return nil if visited.include?('MultiMeasureAttributeMappingList')
        visited = visited + ['MultiMeasureAttributeMappingList']
        [
          Stubs::MultiMeasureAttributeMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MultiMeasureAttributeMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiMeasureAttributeMapping
    class MultiMeasureAttributeMapping
      def self.default(visited=[])
        return nil if visited.include?('MultiMeasureAttributeMapping')
        visited = visited + ['MultiMeasureAttributeMapping']
        {
          source_column: 'source_column',
          target_multi_measure_attribute_name: 'target_multi_measure_attribute_name',
          measure_value_type: 'measure_value_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiMeasureAttributeMapping.new
        data = {}
        data['SourceColumn'] = stub[:source_column] unless stub[:source_column].nil?
        data['TargetMultiMeasureAttributeName'] = stub[:target_multi_measure_attribute_name] unless stub[:target_multi_measure_attribute_name].nil?
        data['MeasureValueType'] = stub[:measure_value_type] unless stub[:measure_value_type].nil?
        data
      end
    end

    # Structure Stubber for MultiMeasureMappings
    class MultiMeasureMappings
      def self.default(visited=[])
        return nil if visited.include?('MultiMeasureMappings')
        visited = visited + ['MultiMeasureMappings']
        {
          target_multi_measure_name: 'target_multi_measure_name',
          multi_measure_attribute_mappings: Stubs::MultiMeasureAttributeMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiMeasureMappings.new
        data = {}
        data['TargetMultiMeasureName'] = stub[:target_multi_measure_name] unless stub[:target_multi_measure_name].nil?
        data['MultiMeasureAttributeMappings'] = Stubs::MultiMeasureAttributeMappingList.stub(stub[:multi_measure_attribute_mappings]) unless stub[:multi_measure_attribute_mappings].nil?
        data
      end
    end

    # List Stubber for DimensionMappingList
    class DimensionMappingList
      def self.default(visited=[])
        return nil if visited.include?('DimensionMappingList')
        visited = visited + ['DimensionMappingList']
        [
          Stubs::DimensionMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DimensionMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DimensionMapping
    class DimensionMapping
      def self.default(visited=[])
        return nil if visited.include?('DimensionMapping')
        visited = visited + ['DimensionMapping']
        {
          name: 'name',
          dimension_value_type: 'dimension_value_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionMapping.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DimensionValueType'] = stub[:dimension_value_type] unless stub[:dimension_value_type].nil?
        data
      end
    end

    # Structure Stubber for NotificationConfiguration
    class NotificationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfiguration')
        visited = visited + ['NotificationConfiguration']
        {
          sns_configuration: Stubs::SnsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationConfiguration.new
        data = {}
        data['SnsConfiguration'] = Stubs::SnsConfiguration.stub(stub[:sns_configuration]) unless stub[:sns_configuration].nil?
        data
      end
    end

    # Structure Stubber for SnsConfiguration
    class SnsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SnsConfiguration')
        visited = visited + ['SnsConfiguration']
        {
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SnsConfiguration.new
        data = {}
        data['TopicArn'] = stub[:topic_arn] unless stub[:topic_arn].nil?
        data
      end
    end

    # Structure Stubber for ScheduleConfiguration
    class ScheduleConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ScheduleConfiguration')
        visited = visited + ['ScheduleConfiguration']
        {
          schedule_expression: 'schedule_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleConfiguration.new
        data = {}
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data
      end
    end

    # Operation Stubber for ExecuteScheduledQuery
    class ExecuteScheduledQuery
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

    # Operation Stubber for ListScheduledQueries
    class ListScheduledQueries
      def self.default(visited=[])
        {
          scheduled_queries: Stubs::ScheduledQueryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScheduledQueries'] = Stubs::ScheduledQueryList.stub(stub[:scheduled_queries]) unless stub[:scheduled_queries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScheduledQueryList
    class ScheduledQueryList
      def self.default(visited=[])
        return nil if visited.include?('ScheduledQueryList')
        visited = visited + ['ScheduledQueryList']
        [
          Stubs::ScheduledQuery.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScheduledQuery.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScheduledQuery
    class ScheduledQuery
      def self.default(visited=[])
        return nil if visited.include?('ScheduledQuery')
        visited = visited + ['ScheduledQuery']
        {
          arn: 'arn',
          name: 'name',
          creation_time: Time.now,
          state: 'state',
          previous_invocation_time: Time.now,
          next_invocation_time: Time.now,
          error_report_configuration: Stubs::ErrorReportConfiguration.default(visited),
          target_destination: Stubs::TargetDestination.default(visited),
          last_run_status: 'last_run_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledQuery.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['PreviousInvocationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:previous_invocation_time]).to_i unless stub[:previous_invocation_time].nil?
        data['NextInvocationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:next_invocation_time]).to_i unless stub[:next_invocation_time].nil?
        data['ErrorReportConfiguration'] = Stubs::ErrorReportConfiguration.stub(stub[:error_report_configuration]) unless stub[:error_report_configuration].nil?
        data['TargetDestination'] = Stubs::TargetDestination.stub(stub[:target_destination]) unless stub[:target_destination].nil?
        data['LastRunStatus'] = stub[:last_run_status] unless stub[:last_run_status].nil?
        data
      end
    end

    # Structure Stubber for TargetDestination
    class TargetDestination
      def self.default(visited=[])
        return nil if visited.include?('TargetDestination')
        visited = visited + ['TargetDestination']
        {
          timestream_destination: Stubs::TimestreamDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetDestination.new
        data = {}
        data['TimestreamDestination'] = Stubs::TimestreamDestination.stub(stub[:timestream_destination]) unless stub[:timestream_destination].nil?
        data
      end
    end

    # Structure Stubber for TimestreamDestination
    class TimestreamDestination
      def self.default(visited=[])
        return nil if visited.include?('TimestreamDestination')
        visited = visited + ['TimestreamDestination']
        {
          database_name: 'database_name',
          table_name: 'table_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestreamDestination.new
        data = {}
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
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

    # Operation Stubber for PrepareQuery
    class PrepareQuery
      def self.default(visited=[])
        {
          query_string: 'query_string',
          columns: Stubs::SelectColumnList.default(visited),
          parameters: Stubs::ParameterMappingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['Columns'] = Stubs::SelectColumnList.stub(stub[:columns]) unless stub[:columns].nil?
        data['Parameters'] = Stubs::ParameterMappingList.stub(stub[:parameters]) unless stub[:parameters].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterMappingList
    class ParameterMappingList
      def self.default(visited=[])
        return nil if visited.include?('ParameterMappingList')
        visited = visited + ['ParameterMappingList']
        [
          Stubs::ParameterMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParameterMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterMapping
    class ParameterMapping
      def self.default(visited=[])
        return nil if visited.include?('ParameterMapping')
        visited = visited + ['ParameterMapping']
        {
          name: 'name',
          type: Stubs::Type.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterMapping.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = Stubs::Type.stub(stub[:type]) unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for Type
    class Type
      def self.default(visited=[])
        return nil if visited.include?('Type')
        visited = visited + ['Type']
        {
          scalar_type: 'scalar_type',
          array_column_info: Stubs::ColumnInfo.default(visited),
          time_series_measure_value_column_info: Stubs::ColumnInfo.default(visited),
          row_column_info: Stubs::ColumnInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Type.new
        data = {}
        data['ScalarType'] = stub[:scalar_type] unless stub[:scalar_type].nil?
        data['ArrayColumnInfo'] = Stubs::ColumnInfo.stub(stub[:array_column_info]) unless stub[:array_column_info].nil?
        data['TimeSeriesMeasureValueColumnInfo'] = Stubs::ColumnInfo.stub(stub[:time_series_measure_value_column_info]) unless stub[:time_series_measure_value_column_info].nil?
        data['RowColumnInfo'] = Stubs::ColumnInfoList.stub(stub[:row_column_info]) unless stub[:row_column_info].nil?
        data
      end
    end

    # List Stubber for ColumnInfoList
    class ColumnInfoList
      def self.default(visited=[])
        return nil if visited.include?('ColumnInfoList')
        visited = visited + ['ColumnInfoList']
        [
          Stubs::ColumnInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnInfo
    class ColumnInfo
      def self.default(visited=[])
        return nil if visited.include?('ColumnInfo')
        visited = visited + ['ColumnInfo']
        {
          name: 'name',
          type: Stubs::Type.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnInfo.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = Stubs::Type.stub(stub[:type]) unless stub[:type].nil?
        data
      end
    end

    # List Stubber for SelectColumnList
    class SelectColumnList
      def self.default(visited=[])
        return nil if visited.include?('SelectColumnList')
        visited = visited + ['SelectColumnList']
        [
          Stubs::SelectColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SelectColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SelectColumn
    class SelectColumn
      def self.default(visited=[])
        return nil if visited.include?('SelectColumn')
        visited = visited + ['SelectColumn']
        {
          name: 'name',
          type: Stubs::Type.default(visited),
          database_name: 'database_name',
          table_name: 'table_name',
          aliased: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SelectColumn.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = Stubs::Type.stub(stub[:type]) unless stub[:type].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['Aliased'] = stub[:aliased] unless stub[:aliased].nil?
        data
      end
    end

    # Operation Stubber for Query
    class Query
      def self.default(visited=[])
        {
          query_id: 'query_id',
          next_token: 'next_token',
          rows: Stubs::RowList.default(visited),
          column_info: Stubs::ColumnInfoList.default(visited),
          query_status: Stubs::QueryStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Rows'] = Stubs::RowList.stub(stub[:rows]) unless stub[:rows].nil?
        data['ColumnInfo'] = Stubs::ColumnInfoList.stub(stub[:column_info]) unless stub[:column_info].nil?
        data['QueryStatus'] = Stubs::QueryStatus.stub(stub[:query_status]) unless stub[:query_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for QueryStatus
    class QueryStatus
      def self.default(visited=[])
        return nil if visited.include?('QueryStatus')
        visited = visited + ['QueryStatus']
        {
          progress_percentage: 1.0,
          cumulative_bytes_scanned: 1,
          cumulative_bytes_metered: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryStatus.new
        data = {}
        data['ProgressPercentage'] = Hearth::NumberHelper.serialize(stub[:progress_percentage])
        data['CumulativeBytesScanned'] = stub[:cumulative_bytes_scanned] unless stub[:cumulative_bytes_scanned].nil?
        data['CumulativeBytesMetered'] = stub[:cumulative_bytes_metered] unless stub[:cumulative_bytes_metered].nil?
        data
      end
    end

    # List Stubber for RowList
    class RowList
      def self.default(visited=[])
        return nil if visited.include?('RowList')
        visited = visited + ['RowList']
        [
          Stubs::Row.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Row.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Row
    class Row
      def self.default(visited=[])
        return nil if visited.include?('Row')
        visited = visited + ['Row']
        {
          data: Stubs::DatumList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Row.new
        data = {}
        data['Data'] = Stubs::DatumList.stub(stub[:data]) unless stub[:data].nil?
        data
      end
    end

    # List Stubber for DatumList
    class DatumList
      def self.default(visited=[])
        return nil if visited.include?('DatumList')
        visited = visited + ['DatumList']
        [
          Stubs::Datum.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Datum.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Datum
    class Datum
      def self.default(visited=[])
        return nil if visited.include?('Datum')
        visited = visited + ['Datum']
        {
          scalar_value: 'scalar_value',
          time_series_value: Stubs::TimeSeriesDataPointList.default(visited),
          array_value: Stubs::DatumList.default(visited),
          row_value: Stubs::Row.default(visited),
          null_value: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Datum.new
        data = {}
        data['ScalarValue'] = stub[:scalar_value] unless stub[:scalar_value].nil?
        data['TimeSeriesValue'] = Stubs::TimeSeriesDataPointList.stub(stub[:time_series_value]) unless stub[:time_series_value].nil?
        data['ArrayValue'] = Stubs::DatumList.stub(stub[:array_value]) unless stub[:array_value].nil?
        data['RowValue'] = Stubs::Row.stub(stub[:row_value]) unless stub[:row_value].nil?
        data['NullValue'] = stub[:null_value] unless stub[:null_value].nil?
        data
      end
    end

    # List Stubber for TimeSeriesDataPointList
    class TimeSeriesDataPointList
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesDataPointList')
        visited = visited + ['TimeSeriesDataPointList']
        [
          Stubs::TimeSeriesDataPoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TimeSeriesDataPoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TimeSeriesDataPoint
    class TimeSeriesDataPoint
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesDataPoint')
        visited = visited + ['TimeSeriesDataPoint']
        {
          time: 'time',
          value: Stubs::Datum.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeSeriesDataPoint.new
        data = {}
        data['Time'] = stub[:time] unless stub[:time].nil?
        data['Value'] = Stubs::Datum.stub(stub[:value]) unless stub[:value].nil?
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

    # Operation Stubber for UpdateScheduledQuery
    class UpdateScheduledQuery
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
  end
end
