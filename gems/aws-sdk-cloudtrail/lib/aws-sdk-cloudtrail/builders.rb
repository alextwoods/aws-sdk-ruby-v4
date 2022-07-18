# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudTrail
  module Builders

    # Operation Builder for AddTags
    class AddTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.AddTags'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagsList'] = Builders::TagsList.build(input[:tags_list]) unless input[:tags_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagsList
    class TagsList
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

    # Operation Builder for CancelQuery
    class CancelQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.CancelQuery'
        data = {}
        data['EventDataStore'] = input[:event_data_store] unless input[:event_data_store].nil?
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateEventDataStore
    class CreateEventDataStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.CreateEventDataStore'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['AdvancedEventSelectors'] = Builders::AdvancedEventSelectors.build(input[:advanced_event_selectors]) unless input[:advanced_event_selectors].nil?
        data['MultiRegionEnabled'] = input[:multi_region_enabled] unless input[:multi_region_enabled].nil?
        data['OrganizationEnabled'] = input[:organization_enabled] unless input[:organization_enabled].nil?
        data['RetentionPeriod'] = input[:retention_period] unless input[:retention_period].nil?
        data['TerminationProtectionEnabled'] = input[:termination_protection_enabled] unless input[:termination_protection_enabled].nil?
        data['TagsList'] = Builders::TagsList.build(input[:tags_list]) unless input[:tags_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AdvancedEventSelectors
    class AdvancedEventSelectors
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AdvancedEventSelector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AdvancedEventSelector
    class AdvancedEventSelector
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['FieldSelectors'] = Builders::AdvancedFieldSelectors.build(input[:field_selectors]) unless input[:field_selectors].nil?
        data
      end
    end

    # List Builder for AdvancedFieldSelectors
    class AdvancedFieldSelectors
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AdvancedFieldSelector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AdvancedFieldSelector
    class AdvancedFieldSelector
      def self.build(input)
        data = {}
        data['Field'] = input[:field] unless input[:field].nil?
        data['Equals'] = Builders::Operator.build(input[:equals]) unless input[:equals].nil?
        data['StartsWith'] = Builders::Operator.build(input[:starts_with]) unless input[:starts_with].nil?
        data['EndsWith'] = Builders::Operator.build(input[:ends_with]) unless input[:ends_with].nil?
        data['NotEquals'] = Builders::Operator.build(input[:not_equals]) unless input[:not_equals].nil?
        data['NotStartsWith'] = Builders::Operator.build(input[:not_starts_with]) unless input[:not_starts_with].nil?
        data['NotEndsWith'] = Builders::Operator.build(input[:not_ends_with]) unless input[:not_ends_with].nil?
        data
      end
    end

    # List Builder for Operator
    class Operator
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateTrail
    class CreateTrail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.CreateTrail'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data['SnsTopicName'] = input[:sns_topic_name] unless input[:sns_topic_name].nil?
        data['IncludeGlobalServiceEvents'] = input[:include_global_service_events] unless input[:include_global_service_events].nil?
        data['IsMultiRegionTrail'] = input[:is_multi_region_trail] unless input[:is_multi_region_trail].nil?
        data['EnableLogFileValidation'] = input[:enable_log_file_validation] unless input[:enable_log_file_validation].nil?
        data['CloudWatchLogsLogGroupArn'] = input[:cloud_watch_logs_log_group_arn] unless input[:cloud_watch_logs_log_group_arn].nil?
        data['CloudWatchLogsRoleArn'] = input[:cloud_watch_logs_role_arn] unless input[:cloud_watch_logs_role_arn].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['IsOrganizationTrail'] = input[:is_organization_trail] unless input[:is_organization_trail].nil?
        data['TagsList'] = Builders::TagsList.build(input[:tags_list]) unless input[:tags_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEventDataStore
    class DeleteEventDataStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.DeleteEventDataStore'
        data = {}
        data['EventDataStore'] = input[:event_data_store] unless input[:event_data_store].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTrail
    class DeleteTrail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.DeleteTrail'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeQuery
    class DescribeQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.DescribeQuery'
        data = {}
        data['EventDataStore'] = input[:event_data_store] unless input[:event_data_store].nil?
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTrails
    class DescribeTrails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.DescribeTrails'
        data = {}
        data['trailNameList'] = Builders::TrailNameList.build(input[:trail_name_list]) unless input[:trail_name_list].nil?
        data['includeShadowTrails'] = input[:include_shadow_trails] unless input[:include_shadow_trails].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TrailNameList
    class TrailNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetEventDataStore
    class GetEventDataStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.GetEventDataStore'
        data = {}
        data['EventDataStore'] = input[:event_data_store] unless input[:event_data_store].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEventSelectors
    class GetEventSelectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.GetEventSelectors'
        data = {}
        data['TrailName'] = input[:trail_name] unless input[:trail_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInsightSelectors
    class GetInsightSelectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.GetInsightSelectors'
        data = {}
        data['TrailName'] = input[:trail_name] unless input[:trail_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetQueryResults
    class GetQueryResults
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.GetQueryResults'
        data = {}
        data['EventDataStore'] = input[:event_data_store] unless input[:event_data_store].nil?
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxQueryResults'] = input[:max_query_results] unless input[:max_query_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTrail
    class GetTrail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.GetTrail'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTrailStatus
    class GetTrailStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.GetTrailStatus'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEventDataStores
    class ListEventDataStores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.ListEventDataStores'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPublicKeys
    class ListPublicKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.ListPublicKeys'
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListQueries
    class ListQueries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.ListQueries'
        data = {}
        data['EventDataStore'] = input[:event_data_store] unless input[:event_data_store].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['QueryStatus'] = input[:query_status] unless input[:query_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.ListTags'
        data = {}
        data['ResourceIdList'] = Builders::ResourceIdList.build(input[:resource_id_list]) unless input[:resource_id_list].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceIdList
    class ResourceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListTrails
    class ListTrails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.ListTrails'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for LookupEvents
    class LookupEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.LookupEvents'
        data = {}
        data['LookupAttributes'] = Builders::LookupAttributesList.build(input[:lookup_attributes]) unless input[:lookup_attributes].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['EventCategory'] = input[:event_category] unless input[:event_category].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LookupAttributesList
    class LookupAttributesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LookupAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LookupAttribute
    class LookupAttribute
      def self.build(input)
        data = {}
        data['AttributeKey'] = input[:attribute_key] unless input[:attribute_key].nil?
        data['AttributeValue'] = input[:attribute_value] unless input[:attribute_value].nil?
        data
      end
    end

    # Operation Builder for PutEventSelectors
    class PutEventSelectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.PutEventSelectors'
        data = {}
        data['TrailName'] = input[:trail_name] unless input[:trail_name].nil?
        data['EventSelectors'] = Builders::EventSelectors.build(input[:event_selectors]) unless input[:event_selectors].nil?
        data['AdvancedEventSelectors'] = Builders::AdvancedEventSelectors.build(input[:advanced_event_selectors]) unless input[:advanced_event_selectors].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EventSelectors
    class EventSelectors
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EventSelector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EventSelector
    class EventSelector
      def self.build(input)
        data = {}
        data['ReadWriteType'] = input[:read_write_type] unless input[:read_write_type].nil?
        data['IncludeManagementEvents'] = input[:include_management_events] unless input[:include_management_events].nil?
        data['DataResources'] = Builders::DataResources.build(input[:data_resources]) unless input[:data_resources].nil?
        data['ExcludeManagementEventSources'] = Builders::ExcludeManagementEventSources.build(input[:exclude_management_event_sources]) unless input[:exclude_management_event_sources].nil?
        data
      end
    end

    # List Builder for ExcludeManagementEventSources
    class ExcludeManagementEventSources
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DataResources
    class DataResources
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataResource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataResource
    class DataResource
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Values'] = Builders::DataResourceValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for DataResourceValues
    class DataResourceValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutInsightSelectors
    class PutInsightSelectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.PutInsightSelectors'
        data = {}
        data['TrailName'] = input[:trail_name] unless input[:trail_name].nil?
        data['InsightSelectors'] = Builders::InsightSelectors.build(input[:insight_selectors]) unless input[:insight_selectors].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InsightSelectors
    class InsightSelectors
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InsightSelector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InsightSelector
    class InsightSelector
      def self.build(input)
        data = {}
        data['InsightType'] = input[:insight_type] unless input[:insight_type].nil?
        data
      end
    end

    # Operation Builder for RemoveTags
    class RemoveTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.RemoveTags'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagsList'] = Builders::TagsList.build(input[:tags_list]) unless input[:tags_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreEventDataStore
    class RestoreEventDataStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.RestoreEventDataStore'
        data = {}
        data['EventDataStore'] = input[:event_data_store] unless input[:event_data_store].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartLogging
    class StartLogging
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.StartLogging'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartQuery
    class StartQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.StartQuery'
        data = {}
        data['QueryStatement'] = input[:query_statement] unless input[:query_statement].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopLogging
    class StopLogging
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.StopLogging'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEventDataStore
    class UpdateEventDataStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.UpdateEventDataStore'
        data = {}
        data['EventDataStore'] = input[:event_data_store] unless input[:event_data_store].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['AdvancedEventSelectors'] = Builders::AdvancedEventSelectors.build(input[:advanced_event_selectors]) unless input[:advanced_event_selectors].nil?
        data['MultiRegionEnabled'] = input[:multi_region_enabled] unless input[:multi_region_enabled].nil?
        data['OrganizationEnabled'] = input[:organization_enabled] unless input[:organization_enabled].nil?
        data['RetentionPeriod'] = input[:retention_period] unless input[:retention_period].nil?
        data['TerminationProtectionEnabled'] = input[:termination_protection_enabled] unless input[:termination_protection_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTrail
    class UpdateTrail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudTrail_20131101.UpdateTrail'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data['SnsTopicName'] = input[:sns_topic_name] unless input[:sns_topic_name].nil?
        data['IncludeGlobalServiceEvents'] = input[:include_global_service_events] unless input[:include_global_service_events].nil?
        data['IsMultiRegionTrail'] = input[:is_multi_region_trail] unless input[:is_multi_region_trail].nil?
        data['EnableLogFileValidation'] = input[:enable_log_file_validation] unless input[:enable_log_file_validation].nil?
        data['CloudWatchLogsLogGroupArn'] = input[:cloud_watch_logs_log_group_arn] unless input[:cloud_watch_logs_log_group_arn].nil?
        data['CloudWatchLogsRoleArn'] = input[:cloud_watch_logs_role_arn] unless input[:cloud_watch_logs_role_arn].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['IsOrganizationTrail'] = input[:is_organization_trail] unless input[:is_organization_trail].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
