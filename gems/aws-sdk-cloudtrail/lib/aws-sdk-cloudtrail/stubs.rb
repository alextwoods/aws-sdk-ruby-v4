# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::CloudTrail
  module Stubs

    # Operation Stubber for AddTags
    class AddTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelQuery
    class CancelQuery
      def self.default(visited=[])
        {
          query_id: 'query_id',
          query_status: 'query_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        data['QueryStatus'] = stub[:query_status] unless stub[:query_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEventDataStore
    class CreateEventDataStore
      def self.default(visited=[])
        {
          event_data_store_arn: 'event_data_store_arn',
          name: 'name',
          status: 'status',
          advanced_event_selectors: AdvancedEventSelectors.default(visited),
          multi_region_enabled: false,
          organization_enabled: false,
          retention_period: 1,
          termination_protection_enabled: false,
          tags_list: TagsList.default(visited),
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventDataStoreArn'] = stub[:event_data_store_arn] unless stub[:event_data_store_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AdvancedEventSelectors'] = AdvancedEventSelectors.stub(stub[:advanced_event_selectors]) unless stub[:advanced_event_selectors].nil?
        data['MultiRegionEnabled'] = stub[:multi_region_enabled] unless stub[:multi_region_enabled].nil?
        data['OrganizationEnabled'] = stub[:organization_enabled] unless stub[:organization_enabled].nil?
        data['RetentionPeriod'] = stub[:retention_period] unless stub[:retention_period].nil?
        data['TerminationProtectionEnabled'] = stub[:termination_protection_enabled] unless stub[:termination_protection_enabled].nil?
        data['TagsList'] = TagsList.stub(stub[:tags_list]) unless stub[:tags_list].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_timestamp]).to_i unless stub[:updated_timestamp].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagsList
    class TagsList
      def self.default(visited=[])
        return nil if visited.include?('TagsList')
        visited = visited + ['TagsList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
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

    # List Stubber for AdvancedEventSelectors
    class AdvancedEventSelectors
      def self.default(visited=[])
        return nil if visited.include?('AdvancedEventSelectors')
        visited = visited + ['AdvancedEventSelectors']
        [
          AdvancedEventSelector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AdvancedEventSelector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdvancedEventSelector
    class AdvancedEventSelector
      def self.default(visited=[])
        return nil if visited.include?('AdvancedEventSelector')
        visited = visited + ['AdvancedEventSelector']
        {
          name: 'name',
          field_selectors: AdvancedFieldSelectors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdvancedEventSelector.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['FieldSelectors'] = AdvancedFieldSelectors.stub(stub[:field_selectors]) unless stub[:field_selectors].nil?
        data
      end
    end

    # List Stubber for AdvancedFieldSelectors
    class AdvancedFieldSelectors
      def self.default(visited=[])
        return nil if visited.include?('AdvancedFieldSelectors')
        visited = visited + ['AdvancedFieldSelectors']
        [
          AdvancedFieldSelector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AdvancedFieldSelector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdvancedFieldSelector
    class AdvancedFieldSelector
      def self.default(visited=[])
        return nil if visited.include?('AdvancedFieldSelector')
        visited = visited + ['AdvancedFieldSelector']
        {
          field: 'field',
          equals: Operator.default(visited),
          starts_with: Operator.default(visited),
          ends_with: Operator.default(visited),
          not_equals: Operator.default(visited),
          not_starts_with: Operator.default(visited),
          not_ends_with: Operator.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdvancedFieldSelector.new
        data = {}
        data['Field'] = stub[:field] unless stub[:field].nil?
        data['Equals'] = Operator.stub(stub[:equals]) unless stub[:equals].nil?
        data['StartsWith'] = Operator.stub(stub[:starts_with]) unless stub[:starts_with].nil?
        data['EndsWith'] = Operator.stub(stub[:ends_with]) unless stub[:ends_with].nil?
        data['NotEquals'] = Operator.stub(stub[:not_equals]) unless stub[:not_equals].nil?
        data['NotStartsWith'] = Operator.stub(stub[:not_starts_with]) unless stub[:not_starts_with].nil?
        data['NotEndsWith'] = Operator.stub(stub[:not_ends_with]) unless stub[:not_ends_with].nil?
        data
      end
    end

    # List Stubber for Operator
    class Operator
      def self.default(visited=[])
        return nil if visited.include?('Operator')
        visited = visited + ['Operator']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateTrail
    class CreateTrail
      def self.default(visited=[])
        {
          name: 'name',
          s3_bucket_name: 's3_bucket_name',
          s3_key_prefix: 's3_key_prefix',
          sns_topic_name: 'sns_topic_name',
          sns_topic_arn: 'sns_topic_arn',
          include_global_service_events: false,
          is_multi_region_trail: false,
          trail_arn: 'trail_arn',
          log_file_validation_enabled: false,
          cloud_watch_logs_log_group_arn: 'cloud_watch_logs_log_group_arn',
          cloud_watch_logs_role_arn: 'cloud_watch_logs_role_arn',
          kms_key_id: 'kms_key_id',
          is_organization_trail: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data['SnsTopicName'] = stub[:sns_topic_name] unless stub[:sns_topic_name].nil?
        data['SnsTopicARN'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['IncludeGlobalServiceEvents'] = stub[:include_global_service_events] unless stub[:include_global_service_events].nil?
        data['IsMultiRegionTrail'] = stub[:is_multi_region_trail] unless stub[:is_multi_region_trail].nil?
        data['TrailARN'] = stub[:trail_arn] unless stub[:trail_arn].nil?
        data['LogFileValidationEnabled'] = stub[:log_file_validation_enabled] unless stub[:log_file_validation_enabled].nil?
        data['CloudWatchLogsLogGroupArn'] = stub[:cloud_watch_logs_log_group_arn] unless stub[:cloud_watch_logs_log_group_arn].nil?
        data['CloudWatchLogsRoleArn'] = stub[:cloud_watch_logs_role_arn] unless stub[:cloud_watch_logs_role_arn].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['IsOrganizationTrail'] = stub[:is_organization_trail] unless stub[:is_organization_trail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventDataStore
    class DeleteEventDataStore
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTrail
    class DeleteTrail
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeQuery
    class DescribeQuery
      def self.default(visited=[])
        {
          query_id: 'query_id',
          query_string: 'query_string',
          query_status: 'query_status',
          query_statistics: QueryStatisticsForDescribeQuery.default(visited),
          error_message: 'error_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['QueryStatus'] = stub[:query_status] unless stub[:query_status].nil?
        data['QueryStatistics'] = QueryStatisticsForDescribeQuery.stub(stub[:query_statistics]) unless stub[:query_statistics].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for QueryStatisticsForDescribeQuery
    class QueryStatisticsForDescribeQuery
      def self.default(visited=[])
        return nil if visited.include?('QueryStatisticsForDescribeQuery')
        visited = visited + ['QueryStatisticsForDescribeQuery']
        {
          events_matched: 1,
          events_scanned: 1,
          bytes_scanned: 1,
          execution_time_in_millis: 1,
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryStatisticsForDescribeQuery.new
        data = {}
        data['EventsMatched'] = stub[:events_matched] unless stub[:events_matched].nil?
        data['EventsScanned'] = stub[:events_scanned] unless stub[:events_scanned].nil?
        data['BytesScanned'] = stub[:bytes_scanned] unless stub[:bytes_scanned].nil?
        data['ExecutionTimeInMillis'] = stub[:execution_time_in_millis] unless stub[:execution_time_in_millis].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeTrails
    class DescribeTrails
      def self.default(visited=[])
        {
          trail_list: TrailList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['trailList'] = TrailList.stub(stub[:trail_list]) unless stub[:trail_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TrailList
    class TrailList
      def self.default(visited=[])
        return nil if visited.include?('TrailList')
        visited = visited + ['TrailList']
        [
          Trail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Trail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Trail
    class Trail
      def self.default(visited=[])
        return nil if visited.include?('Trail')
        visited = visited + ['Trail']
        {
          name: 'name',
          s3_bucket_name: 's3_bucket_name',
          s3_key_prefix: 's3_key_prefix',
          sns_topic_name: 'sns_topic_name',
          sns_topic_arn: 'sns_topic_arn',
          include_global_service_events: false,
          is_multi_region_trail: false,
          home_region: 'home_region',
          trail_arn: 'trail_arn',
          log_file_validation_enabled: false,
          cloud_watch_logs_log_group_arn: 'cloud_watch_logs_log_group_arn',
          cloud_watch_logs_role_arn: 'cloud_watch_logs_role_arn',
          kms_key_id: 'kms_key_id',
          has_custom_event_selectors: false,
          has_insight_selectors: false,
          is_organization_trail: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Trail.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data['SnsTopicName'] = stub[:sns_topic_name] unless stub[:sns_topic_name].nil?
        data['SnsTopicARN'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['IncludeGlobalServiceEvents'] = stub[:include_global_service_events] unless stub[:include_global_service_events].nil?
        data['IsMultiRegionTrail'] = stub[:is_multi_region_trail] unless stub[:is_multi_region_trail].nil?
        data['HomeRegion'] = stub[:home_region] unless stub[:home_region].nil?
        data['TrailARN'] = stub[:trail_arn] unless stub[:trail_arn].nil?
        data['LogFileValidationEnabled'] = stub[:log_file_validation_enabled] unless stub[:log_file_validation_enabled].nil?
        data['CloudWatchLogsLogGroupArn'] = stub[:cloud_watch_logs_log_group_arn] unless stub[:cloud_watch_logs_log_group_arn].nil?
        data['CloudWatchLogsRoleArn'] = stub[:cloud_watch_logs_role_arn] unless stub[:cloud_watch_logs_role_arn].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['HasCustomEventSelectors'] = stub[:has_custom_event_selectors] unless stub[:has_custom_event_selectors].nil?
        data['HasInsightSelectors'] = stub[:has_insight_selectors] unless stub[:has_insight_selectors].nil?
        data['IsOrganizationTrail'] = stub[:is_organization_trail] unless stub[:is_organization_trail].nil?
        data
      end
    end

    # Operation Stubber for GetEventDataStore
    class GetEventDataStore
      def self.default(visited=[])
        {
          event_data_store_arn: 'event_data_store_arn',
          name: 'name',
          status: 'status',
          advanced_event_selectors: AdvancedEventSelectors.default(visited),
          multi_region_enabled: false,
          organization_enabled: false,
          retention_period: 1,
          termination_protection_enabled: false,
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventDataStoreArn'] = stub[:event_data_store_arn] unless stub[:event_data_store_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AdvancedEventSelectors'] = AdvancedEventSelectors.stub(stub[:advanced_event_selectors]) unless stub[:advanced_event_selectors].nil?
        data['MultiRegionEnabled'] = stub[:multi_region_enabled] unless stub[:multi_region_enabled].nil?
        data['OrganizationEnabled'] = stub[:organization_enabled] unless stub[:organization_enabled].nil?
        data['RetentionPeriod'] = stub[:retention_period] unless stub[:retention_period].nil?
        data['TerminationProtectionEnabled'] = stub[:termination_protection_enabled] unless stub[:termination_protection_enabled].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_timestamp]).to_i unless stub[:updated_timestamp].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEventSelectors
    class GetEventSelectors
      def self.default(visited=[])
        {
          trail_arn: 'trail_arn',
          event_selectors: EventSelectors.default(visited),
          advanced_event_selectors: AdvancedEventSelectors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrailARN'] = stub[:trail_arn] unless stub[:trail_arn].nil?
        data['EventSelectors'] = EventSelectors.stub(stub[:event_selectors]) unless stub[:event_selectors].nil?
        data['AdvancedEventSelectors'] = AdvancedEventSelectors.stub(stub[:advanced_event_selectors]) unless stub[:advanced_event_selectors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventSelectors
    class EventSelectors
      def self.default(visited=[])
        return nil if visited.include?('EventSelectors')
        visited = visited + ['EventSelectors']
        [
          EventSelector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventSelector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventSelector
    class EventSelector
      def self.default(visited=[])
        return nil if visited.include?('EventSelector')
        visited = visited + ['EventSelector']
        {
          read_write_type: 'read_write_type',
          include_management_events: false,
          data_resources: DataResources.default(visited),
          exclude_management_event_sources: ExcludeManagementEventSources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventSelector.new
        data = {}
        data['ReadWriteType'] = stub[:read_write_type] unless stub[:read_write_type].nil?
        data['IncludeManagementEvents'] = stub[:include_management_events] unless stub[:include_management_events].nil?
        data['DataResources'] = DataResources.stub(stub[:data_resources]) unless stub[:data_resources].nil?
        data['ExcludeManagementEventSources'] = ExcludeManagementEventSources.stub(stub[:exclude_management_event_sources]) unless stub[:exclude_management_event_sources].nil?
        data
      end
    end

    # List Stubber for ExcludeManagementEventSources
    class ExcludeManagementEventSources
      def self.default(visited=[])
        return nil if visited.include?('ExcludeManagementEventSources')
        visited = visited + ['ExcludeManagementEventSources']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for DataResources
    class DataResources
      def self.default(visited=[])
        return nil if visited.include?('DataResources')
        visited = visited + ['DataResources']
        [
          DataResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataResource
    class DataResource
      def self.default(visited=[])
        return nil if visited.include?('DataResource')
        visited = visited + ['DataResource']
        {
          type: 'type',
          values: DataResourceValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataResource.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Values'] = DataResourceValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for DataResourceValues
    class DataResourceValues
      def self.default(visited=[])
        return nil if visited.include?('DataResourceValues')
        visited = visited + ['DataResourceValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetInsightSelectors
    class GetInsightSelectors
      def self.default(visited=[])
        {
          trail_arn: 'trail_arn',
          insight_selectors: InsightSelectors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrailARN'] = stub[:trail_arn] unless stub[:trail_arn].nil?
        data['InsightSelectors'] = InsightSelectors.stub(stub[:insight_selectors]) unless stub[:insight_selectors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InsightSelectors
    class InsightSelectors
      def self.default(visited=[])
        return nil if visited.include?('InsightSelectors')
        visited = visited + ['InsightSelectors']
        [
          InsightSelector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InsightSelector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InsightSelector
    class InsightSelector
      def self.default(visited=[])
        return nil if visited.include?('InsightSelector')
        visited = visited + ['InsightSelector']
        {
          insight_type: 'insight_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightSelector.new
        data = {}
        data['InsightType'] = stub[:insight_type] unless stub[:insight_type].nil?
        data
      end
    end

    # Operation Stubber for GetQueryResults
    class GetQueryResults
      def self.default(visited=[])
        {
          query_status: 'query_status',
          query_statistics: QueryStatistics.default(visited),
          query_result_rows: QueryResultRows.default(visited),
          next_token: 'next_token',
          error_message: 'error_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryStatus'] = stub[:query_status] unless stub[:query_status].nil?
        data['QueryStatistics'] = QueryStatistics.stub(stub[:query_statistics]) unless stub[:query_statistics].nil?
        data['QueryResultRows'] = QueryResultRows.stub(stub[:query_result_rows]) unless stub[:query_result_rows].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for QueryResultRows
    class QueryResultRows
      def self.default(visited=[])
        return nil if visited.include?('QueryResultRows')
        visited = visited + ['QueryResultRows']
        [
          QueryResultRow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << QueryResultRow.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for QueryResultRow
    class QueryResultRow
      def self.default(visited=[])
        return nil if visited.include?('QueryResultRow')
        visited = visited + ['QueryResultRow']
        [
          QueryResultColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << QueryResultColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for QueryResultColumn
    class QueryResultColumn
      def self.default(visited=[])
        return nil if visited.include?('QueryResultColumn')
        visited = visited + ['QueryResultColumn']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for QueryStatistics
    class QueryStatistics
      def self.default(visited=[])
        return nil if visited.include?('QueryStatistics')
        visited = visited + ['QueryStatistics']
        {
          results_count: 1,
          total_results_count: 1,
          bytes_scanned: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryStatistics.new
        data = {}
        data['ResultsCount'] = stub[:results_count] unless stub[:results_count].nil?
        data['TotalResultsCount'] = stub[:total_results_count] unless stub[:total_results_count].nil?
        data['BytesScanned'] = stub[:bytes_scanned] unless stub[:bytes_scanned].nil?
        data
      end
    end

    # Operation Stubber for GetTrail
    class GetTrail
      def self.default(visited=[])
        {
          trail: Trail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Trail'] = Trail.stub(stub[:trail]) unless stub[:trail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTrailStatus
    class GetTrailStatus
      def self.default(visited=[])
        {
          is_logging: false,
          latest_delivery_error: 'latest_delivery_error',
          latest_notification_error: 'latest_notification_error',
          latest_delivery_time: Time.now,
          latest_notification_time: Time.now,
          start_logging_time: Time.now,
          stop_logging_time: Time.now,
          latest_cloud_watch_logs_delivery_error: 'latest_cloud_watch_logs_delivery_error',
          latest_cloud_watch_logs_delivery_time: Time.now,
          latest_digest_delivery_time: Time.now,
          latest_digest_delivery_error: 'latest_digest_delivery_error',
          latest_delivery_attempt_time: 'latest_delivery_attempt_time',
          latest_notification_attempt_time: 'latest_notification_attempt_time',
          latest_notification_attempt_succeeded: 'latest_notification_attempt_succeeded',
          latest_delivery_attempt_succeeded: 'latest_delivery_attempt_succeeded',
          time_logging_started: 'time_logging_started',
          time_logging_stopped: 'time_logging_stopped',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IsLogging'] = stub[:is_logging] unless stub[:is_logging].nil?
        data['LatestDeliveryError'] = stub[:latest_delivery_error] unless stub[:latest_delivery_error].nil?
        data['LatestNotificationError'] = stub[:latest_notification_error] unless stub[:latest_notification_error].nil?
        data['LatestDeliveryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_delivery_time]).to_i unless stub[:latest_delivery_time].nil?
        data['LatestNotificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_notification_time]).to_i unless stub[:latest_notification_time].nil?
        data['StartLoggingTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_logging_time]).to_i unless stub[:start_logging_time].nil?
        data['StopLoggingTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_logging_time]).to_i unless stub[:stop_logging_time].nil?
        data['LatestCloudWatchLogsDeliveryError'] = stub[:latest_cloud_watch_logs_delivery_error] unless stub[:latest_cloud_watch_logs_delivery_error].nil?
        data['LatestCloudWatchLogsDeliveryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_cloud_watch_logs_delivery_time]).to_i unless stub[:latest_cloud_watch_logs_delivery_time].nil?
        data['LatestDigestDeliveryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_digest_delivery_time]).to_i unless stub[:latest_digest_delivery_time].nil?
        data['LatestDigestDeliveryError'] = stub[:latest_digest_delivery_error] unless stub[:latest_digest_delivery_error].nil?
        data['LatestDeliveryAttemptTime'] = stub[:latest_delivery_attempt_time] unless stub[:latest_delivery_attempt_time].nil?
        data['LatestNotificationAttemptTime'] = stub[:latest_notification_attempt_time] unless stub[:latest_notification_attempt_time].nil?
        data['LatestNotificationAttemptSucceeded'] = stub[:latest_notification_attempt_succeeded] unless stub[:latest_notification_attempt_succeeded].nil?
        data['LatestDeliveryAttemptSucceeded'] = stub[:latest_delivery_attempt_succeeded] unless stub[:latest_delivery_attempt_succeeded].nil?
        data['TimeLoggingStarted'] = stub[:time_logging_started] unless stub[:time_logging_started].nil?
        data['TimeLoggingStopped'] = stub[:time_logging_stopped] unless stub[:time_logging_stopped].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListEventDataStores
    class ListEventDataStores
      def self.default(visited=[])
        {
          event_data_stores: EventDataStores.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventDataStores'] = EventDataStores.stub(stub[:event_data_stores]) unless stub[:event_data_stores].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventDataStores
    class EventDataStores
      def self.default(visited=[])
        return nil if visited.include?('EventDataStores')
        visited = visited + ['EventDataStores']
        [
          EventDataStore.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventDataStore.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventDataStore
    class EventDataStore
      def self.default(visited=[])
        return nil if visited.include?('EventDataStore')
        visited = visited + ['EventDataStore']
        {
          event_data_store_arn: 'event_data_store_arn',
          name: 'name',
          termination_protection_enabled: false,
          status: 'status',
          advanced_event_selectors: AdvancedEventSelectors.default(visited),
          multi_region_enabled: false,
          organization_enabled: false,
          retention_period: 1,
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventDataStore.new
        data = {}
        data['EventDataStoreArn'] = stub[:event_data_store_arn] unless stub[:event_data_store_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['TerminationProtectionEnabled'] = stub[:termination_protection_enabled] unless stub[:termination_protection_enabled].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AdvancedEventSelectors'] = AdvancedEventSelectors.stub(stub[:advanced_event_selectors]) unless stub[:advanced_event_selectors].nil?
        data['MultiRegionEnabled'] = stub[:multi_region_enabled] unless stub[:multi_region_enabled].nil?
        data['OrganizationEnabled'] = stub[:organization_enabled] unless stub[:organization_enabled].nil?
        data['RetentionPeriod'] = stub[:retention_period] unless stub[:retention_period].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_timestamp]).to_i unless stub[:updated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListPublicKeys
    class ListPublicKeys
      def self.default(visited=[])
        {
          public_key_list: PublicKeyList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PublicKeyList'] = PublicKeyList.stub(stub[:public_key_list]) unless stub[:public_key_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PublicKeyList
    class PublicKeyList
      def self.default(visited=[])
        return nil if visited.include?('PublicKeyList')
        visited = visited + ['PublicKeyList']
        [
          PublicKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PublicKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PublicKey
    class PublicKey
      def self.default(visited=[])
        return nil if visited.include?('PublicKey')
        visited = visited + ['PublicKey']
        {
          value: 'value',
          validity_start_time: Time.now,
          validity_end_time: Time.now,
          fingerprint: 'fingerprint',
        }
      end

      def self.stub(stub)
        stub ||= Types::PublicKey.new
        data = {}
        data['Value'] = ::Base64::encode64(stub[:value]) unless stub[:value].nil?
        data['ValidityStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:validity_start_time]).to_i unless stub[:validity_start_time].nil?
        data['ValidityEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:validity_end_time]).to_i unless stub[:validity_end_time].nil?
        data['Fingerprint'] = stub[:fingerprint] unless stub[:fingerprint].nil?
        data
      end
    end

    # Operation Stubber for ListQueries
    class ListQueries
      def self.default(visited=[])
        {
          queries: Queries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Queries'] = Queries.stub(stub[:queries]) unless stub[:queries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Queries
    class Queries
      def self.default(visited=[])
        return nil if visited.include?('Queries')
        visited = visited + ['Queries']
        [
          Query.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Query.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Query
    class Query
      def self.default(visited=[])
        return nil if visited.include?('Query')
        visited = visited + ['Query']
        {
          query_id: 'query_id',
          query_status: 'query_status',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Query.new
        data = {}
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        data['QueryStatus'] = stub[:query_status] unless stub[:query_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          resource_tag_list: ResourceTagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceTagList'] = ResourceTagList.stub(stub[:resource_tag_list]) unless stub[:resource_tag_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceTagList
    class ResourceTagList
      def self.default(visited=[])
        return nil if visited.include?('ResourceTagList')
        visited = visited + ['ResourceTagList']
        [
          ResourceTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceTag
    class ResourceTag
      def self.default(visited=[])
        return nil if visited.include?('ResourceTag')
        visited = visited + ['ResourceTag']
        {
          resource_id: 'resource_id',
          tags_list: TagsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceTag.new
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['TagsList'] = TagsList.stub(stub[:tags_list]) unless stub[:tags_list].nil?
        data
      end
    end

    # Operation Stubber for ListTrails
    class ListTrails
      def self.default(visited=[])
        {
          trails: Trails.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Trails'] = Trails.stub(stub[:trails]) unless stub[:trails].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Trails
    class Trails
      def self.default(visited=[])
        return nil if visited.include?('Trails')
        visited = visited + ['Trails']
        [
          TrailInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TrailInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrailInfo
    class TrailInfo
      def self.default(visited=[])
        return nil if visited.include?('TrailInfo')
        visited = visited + ['TrailInfo']
        {
          trail_arn: 'trail_arn',
          name: 'name',
          home_region: 'home_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrailInfo.new
        data = {}
        data['TrailARN'] = stub[:trail_arn] unless stub[:trail_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['HomeRegion'] = stub[:home_region] unless stub[:home_region].nil?
        data
      end
    end

    # Operation Stubber for LookupEvents
    class LookupEvents
      def self.default(visited=[])
        {
          events: EventsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Events'] = EventsList.stub(stub[:events]) unless stub[:events].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventsList
    class EventsList
      def self.default(visited=[])
        return nil if visited.include?('EventsList')
        visited = visited + ['EventsList']
        [
          Event.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Event.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          event_id: 'event_id',
          event_name: 'event_name',
          read_only: 'read_only',
          access_key_id: 'access_key_id',
          event_time: Time.now,
          event_source: 'event_source',
          username: 'username',
          resources: ResourceList.default(visited),
          cloud_trail_event: 'cloud_trail_event',
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['EventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['EventName'] = stub[:event_name] unless stub[:event_name].nil?
        data['ReadOnly'] = stub[:read_only] unless stub[:read_only].nil?
        data['AccessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['EventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_time]).to_i unless stub[:event_time].nil?
        data['EventSource'] = stub[:event_source] unless stub[:event_source].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['Resources'] = ResourceList.stub(stub[:resources]) unless stub[:resources].nil?
        data['CloudTrailEvent'] = stub[:cloud_trail_event] unless stub[:cloud_trail_event].nil?
        data
      end
    end

    # List Stubber for ResourceList
    class ResourceList
      def self.default(visited=[])
        return nil if visited.include?('ResourceList')
        visited = visited + ['ResourceList']
        [
          Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          resource_type: 'resource_type',
          resource_name: 'resource_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data
      end
    end

    # Operation Stubber for PutEventSelectors
    class PutEventSelectors
      def self.default(visited=[])
        {
          trail_arn: 'trail_arn',
          event_selectors: EventSelectors.default(visited),
          advanced_event_selectors: AdvancedEventSelectors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrailARN'] = stub[:trail_arn] unless stub[:trail_arn].nil?
        data['EventSelectors'] = EventSelectors.stub(stub[:event_selectors]) unless stub[:event_selectors].nil?
        data['AdvancedEventSelectors'] = AdvancedEventSelectors.stub(stub[:advanced_event_selectors]) unless stub[:advanced_event_selectors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutInsightSelectors
    class PutInsightSelectors
      def self.default(visited=[])
        {
          trail_arn: 'trail_arn',
          insight_selectors: InsightSelectors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrailARN'] = stub[:trail_arn] unless stub[:trail_arn].nil?
        data['InsightSelectors'] = InsightSelectors.stub(stub[:insight_selectors]) unless stub[:insight_selectors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTags
    class RemoveTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreEventDataStore
    class RestoreEventDataStore
      def self.default(visited=[])
        {
          event_data_store_arn: 'event_data_store_arn',
          name: 'name',
          status: 'status',
          advanced_event_selectors: AdvancedEventSelectors.default(visited),
          multi_region_enabled: false,
          organization_enabled: false,
          retention_period: 1,
          termination_protection_enabled: false,
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventDataStoreArn'] = stub[:event_data_store_arn] unless stub[:event_data_store_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AdvancedEventSelectors'] = AdvancedEventSelectors.stub(stub[:advanced_event_selectors]) unless stub[:advanced_event_selectors].nil?
        data['MultiRegionEnabled'] = stub[:multi_region_enabled] unless stub[:multi_region_enabled].nil?
        data['OrganizationEnabled'] = stub[:organization_enabled] unless stub[:organization_enabled].nil?
        data['RetentionPeriod'] = stub[:retention_period] unless stub[:retention_period].nil?
        data['TerminationProtectionEnabled'] = stub[:termination_protection_enabled] unless stub[:termination_protection_enabled].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_timestamp]).to_i unless stub[:updated_timestamp].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartLogging
    class StartLogging
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartQuery
    class StartQuery
      def self.default(visited=[])
        {
          query_id: 'query_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopLogging
    class StopLogging
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEventDataStore
    class UpdateEventDataStore
      def self.default(visited=[])
        {
          event_data_store_arn: 'event_data_store_arn',
          name: 'name',
          status: 'status',
          advanced_event_selectors: AdvancedEventSelectors.default(visited),
          multi_region_enabled: false,
          organization_enabled: false,
          retention_period: 1,
          termination_protection_enabled: false,
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventDataStoreArn'] = stub[:event_data_store_arn] unless stub[:event_data_store_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AdvancedEventSelectors'] = AdvancedEventSelectors.stub(stub[:advanced_event_selectors]) unless stub[:advanced_event_selectors].nil?
        data['MultiRegionEnabled'] = stub[:multi_region_enabled] unless stub[:multi_region_enabled].nil?
        data['OrganizationEnabled'] = stub[:organization_enabled] unless stub[:organization_enabled].nil?
        data['RetentionPeriod'] = stub[:retention_period] unless stub[:retention_period].nil?
        data['TerminationProtectionEnabled'] = stub[:termination_protection_enabled] unless stub[:termination_protection_enabled].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_timestamp]).to_i unless stub[:updated_timestamp].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTrail
    class UpdateTrail
      def self.default(visited=[])
        {
          name: 'name',
          s3_bucket_name: 's3_bucket_name',
          s3_key_prefix: 's3_key_prefix',
          sns_topic_name: 'sns_topic_name',
          sns_topic_arn: 'sns_topic_arn',
          include_global_service_events: false,
          is_multi_region_trail: false,
          trail_arn: 'trail_arn',
          log_file_validation_enabled: false,
          cloud_watch_logs_log_group_arn: 'cloud_watch_logs_log_group_arn',
          cloud_watch_logs_role_arn: 'cloud_watch_logs_role_arn',
          kms_key_id: 'kms_key_id',
          is_organization_trail: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data['SnsTopicName'] = stub[:sns_topic_name] unless stub[:sns_topic_name].nil?
        data['SnsTopicARN'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['IncludeGlobalServiceEvents'] = stub[:include_global_service_events] unless stub[:include_global_service_events].nil?
        data['IsMultiRegionTrail'] = stub[:is_multi_region_trail] unless stub[:is_multi_region_trail].nil?
        data['TrailARN'] = stub[:trail_arn] unless stub[:trail_arn].nil?
        data['LogFileValidationEnabled'] = stub[:log_file_validation_enabled] unless stub[:log_file_validation_enabled].nil?
        data['CloudWatchLogsLogGroupArn'] = stub[:cloud_watch_logs_log_group_arn] unless stub[:cloud_watch_logs_log_group_arn].nil?
        data['CloudWatchLogsRoleArn'] = stub[:cloud_watch_logs_role_arn] unless stub[:cloud_watch_logs_role_arn].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['IsOrganizationTrail'] = stub[:is_organization_trail] unless stub[:is_organization_trail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
