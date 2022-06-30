# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMIncidents
  module Stubs

    # Operation Stubber for CreateReplicationSet
    class CreateReplicationSet
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateResponsePlan
    class CreateResponsePlan
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTimelineEvent
    class CreateTimelineEvent
      def self.default(visited=[])
        {
          incident_record_arn: 'incident_record_arn',
          event_id: 'event_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['incidentRecordArn'] = stub[:incident_record_arn] unless stub[:incident_record_arn].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteIncidentRecord
    class DeleteIncidentRecord
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteReplicationSet
    class DeleteReplicationSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResponsePlan
    class DeleteResponsePlan
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteTimelineEvent
    class DeleteTimelineEvent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetIncidentRecord
    class GetIncidentRecord
      def self.default(visited=[])
        {
          incident_record: Stubs::IncidentRecord.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['incidentRecord'] = Stubs::IncidentRecord.stub(stub[:incident_record]) unless stub[:incident_record].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for IncidentRecord
    class IncidentRecord
      def self.default(visited=[])
        return nil if visited.include?('IncidentRecord')
        visited = visited + ['IncidentRecord']
        {
          arn: 'arn',
          title: 'title',
          summary: 'summary',
          status: 'status',
          impact: 1,
          creation_time: Time.now,
          resolved_time: Time.now,
          last_modified_time: Time.now,
          last_modified_by: 'last_modified_by',
          automation_executions: Stubs::AutomationExecutionSet.default(visited),
          incident_record_source: Stubs::IncidentRecordSource.default(visited),
          dedupe_string: 'dedupe_string',
          chat_channel: Stubs::ChatChannel.default(visited),
          notification_targets: Stubs::NotificationTargetSet.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IncidentRecord.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['summary'] = stub[:summary] unless stub[:summary].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['impact'] = stub[:impact] unless stub[:impact].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['resolvedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:resolved_time]).to_i unless stub[:resolved_time].nil?
        data['lastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['lastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['automationExecutions'] = Stubs::AutomationExecutionSet.stub(stub[:automation_executions]) unless stub[:automation_executions].nil?
        data['incidentRecordSource'] = Stubs::IncidentRecordSource.stub(stub[:incident_record_source]) unless stub[:incident_record_source].nil?
        data['dedupeString'] = stub[:dedupe_string] unless stub[:dedupe_string].nil?
        data['chatChannel'] = Stubs::ChatChannel.stub(stub[:chat_channel]) unless stub[:chat_channel].nil?
        data['notificationTargets'] = Stubs::NotificationTargetSet.stub(stub[:notification_targets]) unless stub[:notification_targets].nil?
        data
      end
    end

    # List Stubber for NotificationTargetSet
    class NotificationTargetSet
      def self.default(visited=[])
        return nil if visited.include?('NotificationTargetSet')
        visited = visited + ['NotificationTargetSet']
        [
          Stubs::NotificationTargetItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NotificationTargetItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for NotificationTargetItem
    class NotificationTargetItem
      def self.default(visited=[])
        return nil if visited.include?('NotificationTargetItem')
        visited = visited + ['NotificationTargetItem']
        {
          sns_topic_arn: 'sns_topic_arn',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::NotificationTargetItem::SnsTopicArn
          data['snsTopicArn'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::NotificationTargetItem"
        end

        data
      end
    end

    # Union Stubber for ChatChannel
    class ChatChannel
      def self.default(visited=[])
        return nil if visited.include?('ChatChannel')
        visited = visited + ['ChatChannel']
        {
          empty: Stubs::EmptyChatChannel.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ChatChannel::Empty
          data['empty'] = (Stubs::EmptyChatChannel.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ChatChannel::ChatbotSns
          data['chatbotSns'] = (Stubs::ChatbotSnsConfigurationSet.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ChatChannel"
        end

        data
      end
    end

    # Set Stubber for ChatbotSnsConfigurationSet
    class ChatbotSnsConfigurationSet
      def self.default(visited=[])
        return nil if visited.include?('ChatbotSnsConfigurationSet')
        visited = visited + ['ChatbotSnsConfigurationSet']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = Set.new
        stub.each do |element|
          data << element unless element.nil?
        end
        data.to_a
      end
    end

    # Structure Stubber for EmptyChatChannel
    class EmptyChatChannel
      def self.default(visited=[])
        return nil if visited.include?('EmptyChatChannel')
        visited = visited + ['EmptyChatChannel']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::EmptyChatChannel.new
        data = {}
        data
      end
    end

    # Structure Stubber for IncidentRecordSource
    class IncidentRecordSource
      def self.default(visited=[])
        return nil if visited.include?('IncidentRecordSource')
        visited = visited + ['IncidentRecordSource']
        {
          created_by: 'created_by',
          invoked_by: 'invoked_by',
          resource_arn: 'resource_arn',
          source: 'source',
        }
      end

      def self.stub(stub)
        stub ||= Types::IncidentRecordSource.new
        data = {}
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['invokedBy'] = stub[:invoked_by] unless stub[:invoked_by].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['source'] = stub[:source] unless stub[:source].nil?
        data
      end
    end

    # List Stubber for AutomationExecutionSet
    class AutomationExecutionSet
      def self.default(visited=[])
        return nil if visited.include?('AutomationExecutionSet')
        visited = visited + ['AutomationExecutionSet']
        [
          Stubs::AutomationExecution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AutomationExecution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for AutomationExecution
    class AutomationExecution
      def self.default(visited=[])
        return nil if visited.include?('AutomationExecution')
        visited = visited + ['AutomationExecution']
        {
          ssm_execution_arn: 'ssm_execution_arn',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AutomationExecution::SsmExecutionArn
          data['ssmExecutionArn'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AutomationExecution"
        end

        data
      end
    end

    # Operation Stubber for GetReplicationSet
    class GetReplicationSet
      def self.default(visited=[])
        {
          replication_set: Stubs::ReplicationSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['replicationSet'] = Stubs::ReplicationSet.stub(stub[:replication_set]) unless stub[:replication_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ReplicationSet
    class ReplicationSet
      def self.default(visited=[])
        return nil if visited.include?('ReplicationSet')
        visited = visited + ['ReplicationSet']
        {
          arn: 'arn',
          region_map: Stubs::RegionInfoMap.default(visited),
          status: 'status',
          deletion_protected: false,
          created_time: Time.now,
          created_by: 'created_by',
          last_modified_time: Time.now,
          last_modified_by: 'last_modified_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationSet.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['regionMap'] = Stubs::RegionInfoMap.stub(stub[:region_map]) unless stub[:region_map].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['deletionProtected'] = stub[:deletion_protected] unless stub[:deletion_protected].nil?
        data['createdTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['lastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['lastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data
      end
    end

    # Map Stubber for RegionInfoMap
    class RegionInfoMap
      def self.default(visited=[])
        return nil if visited.include?('RegionInfoMap')
        visited = visited + ['RegionInfoMap']
        {
          test_key: Stubs::RegionInfo.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::RegionInfo.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for RegionInfo
    class RegionInfo
      def self.default(visited=[])
        return nil if visited.include?('RegionInfo')
        visited = visited + ['RegionInfo']
        {
          sse_kms_key_id: 'sse_kms_key_id',
          status: 'status',
          status_message: 'status_message',
          status_update_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RegionInfo.new
        data = {}
        data['sseKmsKeyId'] = stub[:sse_kms_key_id] unless stub[:sse_kms_key_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['statusUpdateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:status_update_date_time]).to_i unless stub[:status_update_date_time].nil?
        data
      end
    end

    # Operation Stubber for GetResourcePolicies
    class GetResourcePolicies
      def self.default(visited=[])
        {
          resource_policies: Stubs::ResourcePolicyList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourcePolicies'] = Stubs::ResourcePolicyList.stub(stub[:resource_policies]) unless stub[:resource_policies].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourcePolicyList
    class ResourcePolicyList
      def self.default(visited=[])
        return nil if visited.include?('ResourcePolicyList')
        visited = visited + ['ResourcePolicyList']
        [
          Stubs::ResourcePolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourcePolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourcePolicy
    class ResourcePolicy
      def self.default(visited=[])
        return nil if visited.include?('ResourcePolicy')
        visited = visited + ['ResourcePolicy']
        {
          policy_document: 'policy_document',
          policy_id: 'policy_id',
          ram_resource_share_region: 'ram_resource_share_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourcePolicy.new
        data = {}
        data['policyDocument'] = stub[:policy_document] unless stub[:policy_document].nil?
        data['policyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['ramResourceShareRegion'] = stub[:ram_resource_share_region] unless stub[:ram_resource_share_region].nil?
        data
      end
    end

    # Operation Stubber for GetResponsePlan
    class GetResponsePlan
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          display_name: 'display_name',
          incident_template: Stubs::IncidentTemplate.default(visited),
          chat_channel: Stubs::ChatChannel.default(visited),
          engagements: Stubs::EngagementSet.default(visited),
          actions: Stubs::ActionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['incidentTemplate'] = Stubs::IncidentTemplate.stub(stub[:incident_template]) unless stub[:incident_template].nil?
        data['chatChannel'] = Stubs::ChatChannel.stub(stub[:chat_channel]) unless stub[:chat_channel].nil?
        data['engagements'] = Stubs::EngagementSet.stub(stub[:engagements]) unless stub[:engagements].nil?
        data['actions'] = Stubs::ActionsList.stub(stub[:actions]) unless stub[:actions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ActionsList
    class ActionsList
      def self.default(visited=[])
        return nil if visited.include?('ActionsList')
        visited = visited + ['ActionsList']
        [
          Stubs::Action.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Action.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          ssm_automation: Stubs::SsmAutomation.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::Action::SsmAutomation
          data['ssmAutomation'] = (Stubs::SsmAutomation.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Action"
        end

        data
      end
    end

    # Structure Stubber for SsmAutomation
    class SsmAutomation
      def self.default(visited=[])
        return nil if visited.include?('SsmAutomation')
        visited = visited + ['SsmAutomation']
        {
          role_arn: 'role_arn',
          document_name: 'document_name',
          document_version: 'document_version',
          target_account: 'target_account',
          parameters: Stubs::SsmParameters.default(visited),
          dynamic_parameters: Stubs::DynamicSsmParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SsmAutomation.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['documentName'] = stub[:document_name] unless stub[:document_name].nil?
        data['documentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['targetAccount'] = stub[:target_account] unless stub[:target_account].nil?
        data['parameters'] = Stubs::SsmParameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['dynamicParameters'] = Stubs::DynamicSsmParameters.stub(stub[:dynamic_parameters]) unless stub[:dynamic_parameters].nil?
        data
      end
    end

    # Map Stubber for DynamicSsmParameters
    class DynamicSsmParameters
      def self.default(visited=[])
        return nil if visited.include?('DynamicSsmParameters')
        visited = visited + ['DynamicSsmParameters']
        {
          test_key: Stubs::DynamicSsmParameterValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::DynamicSsmParameterValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Union Stubber for DynamicSsmParameterValue
    class DynamicSsmParameterValue
      def self.default(visited=[])
        return nil if visited.include?('DynamicSsmParameterValue')
        visited = visited + ['DynamicSsmParameterValue']
        {
          variable: 'variable',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::DynamicSsmParameterValue::Variable
          data['variable'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DynamicSsmParameterValue"
        end

        data
      end
    end

    # Map Stubber for SsmParameters
    class SsmParameters
      def self.default(visited=[])
        return nil if visited.include?('SsmParameters')
        visited = visited + ['SsmParameters']
        {
          test_key: Stubs::SsmParameterValues.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::SsmParameterValues.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for SsmParameterValues
    class SsmParameterValues
      def self.default(visited=[])
        return nil if visited.include?('SsmParameterValues')
        visited = visited + ['SsmParameterValues']
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

    # Set Stubber for EngagementSet
    class EngagementSet
      def self.default(visited=[])
        return nil if visited.include?('EngagementSet')
        visited = visited + ['EngagementSet']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = Set.new
        stub.each do |element|
          data << element unless element.nil?
        end
        data.to_a
      end
    end

    # Structure Stubber for IncidentTemplate
    class IncidentTemplate
      def self.default(visited=[])
        return nil if visited.include?('IncidentTemplate')
        visited = visited + ['IncidentTemplate']
        {
          title: 'title',
          impact: 1,
          summary: 'summary',
          dedupe_string: 'dedupe_string',
          notification_targets: Stubs::NotificationTargetSet.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IncidentTemplate.new
        data = {}
        data['title'] = stub[:title] unless stub[:title].nil?
        data['impact'] = stub[:impact] unless stub[:impact].nil?
        data['summary'] = stub[:summary] unless stub[:summary].nil?
        data['dedupeString'] = stub[:dedupe_string] unless stub[:dedupe_string].nil?
        data['notificationTargets'] = Stubs::NotificationTargetSet.stub(stub[:notification_targets]) unless stub[:notification_targets].nil?
        data
      end
    end

    # Operation Stubber for GetTimelineEvent
    class GetTimelineEvent
      def self.default(visited=[])
        {
          event: Stubs::TimelineEvent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['event'] = Stubs::TimelineEvent.stub(stub[:event]) unless stub[:event].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TimelineEvent
    class TimelineEvent
      def self.default(visited=[])
        return nil if visited.include?('TimelineEvent')
        visited = visited + ['TimelineEvent']
        {
          incident_record_arn: 'incident_record_arn',
          event_id: 'event_id',
          event_time: Time.now,
          event_updated_time: Time.now,
          event_type: 'event_type',
          event_data: 'event_data',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimelineEvent.new
        data = {}
        data['incidentRecordArn'] = stub[:incident_record_arn] unless stub[:incident_record_arn].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['eventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_time]).to_i unless stub[:event_time].nil?
        data['eventUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_updated_time]).to_i unless stub[:event_updated_time].nil?
        data['eventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['eventData'] = stub[:event_data] unless stub[:event_data].nil?
        data
      end
    end

    # Operation Stubber for ListIncidentRecords
    class ListIncidentRecords
      def self.default(visited=[])
        {
          incident_record_summaries: Stubs::IncidentRecordSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['incidentRecordSummaries'] = Stubs::IncidentRecordSummaryList.stub(stub[:incident_record_summaries]) unless stub[:incident_record_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IncidentRecordSummaryList
    class IncidentRecordSummaryList
      def self.default(visited=[])
        return nil if visited.include?('IncidentRecordSummaryList')
        visited = visited + ['IncidentRecordSummaryList']
        [
          Stubs::IncidentRecordSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IncidentRecordSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IncidentRecordSummary
    class IncidentRecordSummary
      def self.default(visited=[])
        return nil if visited.include?('IncidentRecordSummary')
        visited = visited + ['IncidentRecordSummary']
        {
          arn: 'arn',
          title: 'title',
          status: 'status',
          impact: 1,
          creation_time: Time.now,
          resolved_time: Time.now,
          incident_record_source: Stubs::IncidentRecordSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IncidentRecordSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['impact'] = stub[:impact] unless stub[:impact].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['resolvedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:resolved_time]).to_i unless stub[:resolved_time].nil?
        data['incidentRecordSource'] = Stubs::IncidentRecordSource.stub(stub[:incident_record_source]) unless stub[:incident_record_source].nil?
        data
      end
    end

    # Operation Stubber for ListRelatedItems
    class ListRelatedItems
      def self.default(visited=[])
        {
          related_items: Stubs::RelatedItemList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['relatedItems'] = Stubs::RelatedItemList.stub(stub[:related_items]) unless stub[:related_items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RelatedItemList
    class RelatedItemList
      def self.default(visited=[])
        return nil if visited.include?('RelatedItemList')
        visited = visited + ['RelatedItemList']
        [
          Stubs::RelatedItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RelatedItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RelatedItem
    class RelatedItem
      def self.default(visited=[])
        return nil if visited.include?('RelatedItem')
        visited = visited + ['RelatedItem']
        {
          identifier: Stubs::ItemIdentifier.default(visited),
          title: 'title',
        }
      end

      def self.stub(stub)
        stub ||= Types::RelatedItem.new
        data = {}
        data['identifier'] = Stubs::ItemIdentifier.stub(stub[:identifier]) unless stub[:identifier].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data
      end
    end

    # Structure Stubber for ItemIdentifier
    class ItemIdentifier
      def self.default(visited=[])
        return nil if visited.include?('ItemIdentifier')
        visited = visited + ['ItemIdentifier']
        {
          value: Stubs::ItemValue.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ItemIdentifier.new
        data = {}
        data['value'] = Stubs::ItemValue.stub(stub[:value]) unless stub[:value].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Union Stubber for ItemValue
    class ItemValue
      def self.default(visited=[])
        return nil if visited.include?('ItemValue')
        visited = visited + ['ItemValue']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ItemValue::Arn
          data['arn'] = stub.__getobj__
        when Types::ItemValue::Url
          data['url'] = stub.__getobj__
        when Types::ItemValue::MetricDefinition
          data['metricDefinition'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ItemValue"
        end

        data
      end
    end

    # Operation Stubber for ListReplicationSets
    class ListReplicationSets
      def self.default(visited=[])
        {
          replication_set_arns: Stubs::ReplicationSetArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['replicationSetArns'] = Stubs::ReplicationSetArnList.stub(stub[:replication_set_arns]) unless stub[:replication_set_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReplicationSetArnList
    class ReplicationSetArnList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationSetArnList')
        visited = visited + ['ReplicationSetArnList']
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

    # Operation Stubber for ListResponsePlans
    class ListResponsePlans
      def self.default(visited=[])
        {
          response_plan_summaries: Stubs::ResponsePlanSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['responsePlanSummaries'] = Stubs::ResponsePlanSummaryList.stub(stub[:response_plan_summaries]) unless stub[:response_plan_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResponsePlanSummaryList
    class ResponsePlanSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ResponsePlanSummaryList')
        visited = visited + ['ResponsePlanSummaryList']
        [
          Stubs::ResponsePlanSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResponsePlanSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResponsePlanSummary
    class ResponsePlanSummary
      def self.default(visited=[])
        return nil if visited.include?('ResponsePlanSummary')
        visited = visited + ['ResponsePlanSummary']
        {
          arn: 'arn',
          name: 'name',
          display_name: 'display_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponsePlanSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Operation Stubber for ListTimelineEvents
    class ListTimelineEvents
      def self.default(visited=[])
        {
          event_summaries: Stubs::EventSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['eventSummaries'] = Stubs::EventSummaryList.stub(stub[:event_summaries]) unless stub[:event_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EventSummaryList
    class EventSummaryList
      def self.default(visited=[])
        return nil if visited.include?('EventSummaryList')
        visited = visited + ['EventSummaryList']
        [
          Stubs::EventSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventSummary
    class EventSummary
      def self.default(visited=[])
        return nil if visited.include?('EventSummary')
        visited = visited + ['EventSummary']
        {
          incident_record_arn: 'incident_record_arn',
          event_id: 'event_id',
          event_time: Time.now,
          event_updated_time: Time.now,
          event_type: 'event_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventSummary.new
        data = {}
        data['incidentRecordArn'] = stub[:incident_record_arn] unless stub[:incident_record_arn].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['eventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_time]).to_i unless stub[:event_time].nil?
        data['eventUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_updated_time]).to_i unless stub[:event_updated_time].nil?
        data['eventType'] = stub[:event_type] unless stub[:event_type].nil?
        data
      end
    end

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
          policy_id: 'policy_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartIncident
    class StartIncident
      def self.default(visited=[])
        {
          incident_record_arn: 'incident_record_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['incidentRecordArn'] = stub[:incident_record_arn] unless stub[:incident_record_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateDeletionProtection
    class UpdateDeletionProtection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateIncidentRecord
    class UpdateIncidentRecord
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateRelatedItems
    class UpdateRelatedItems
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateReplicationSet
    class UpdateReplicationSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateResponsePlan
    class UpdateResponsePlan
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateTimelineEvent
    class UpdateTimelineEvent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end
  end
end
