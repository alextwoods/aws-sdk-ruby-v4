# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SSMIncidents
  module Parsers

    # Operation Parser for CreateReplicationSet
    class CreateReplicationSet
      def self.parse(http_resp)
        data = Types::CreateReplicationSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_identifier = map['resourceIdentifier']
        data.resource_type = map['resourceType']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_identifier = map['resourceIdentifier']
        data.resource_type = map['resourceType']
        data.retry_after = Time.at(map['retryAfter'].to_i) if map['retryAfter']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateResponsePlan
    class CreateResponsePlan
      def self.parse(http_resp)
        data = Types::CreateResponsePlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_identifier = map['resourceIdentifier']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for CreateTimelineEvent
    class CreateTimelineEvent
      def self.parse(http_resp)
        data = Types::CreateTimelineEventOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.incident_record_arn = map['incidentRecordArn']
        data.event_id = map['eventId']
        data
      end
    end

    # Operation Parser for DeleteIncidentRecord
    class DeleteIncidentRecord
      def self.parse(http_resp)
        data = Types::DeleteIncidentRecordOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteReplicationSet
    class DeleteReplicationSet
      def self.parse(http_resp)
        data = Types::DeleteReplicationSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteResponsePlan
    class DeleteResponsePlan
      def self.parse(http_resp)
        data = Types::DeleteResponsePlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteTimelineEvent
    class DeleteTimelineEvent
      def self.parse(http_resp)
        data = Types::DeleteTimelineEventOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetIncidentRecord
    class GetIncidentRecord
      def self.parse(http_resp)
        data = Types::GetIncidentRecordOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.incident_record = (Parsers::IncidentRecord.parse(map['incidentRecord']) unless map['incidentRecord'].nil?)
        data
      end
    end

    class IncidentRecord
      def self.parse(map)
        data = Types::IncidentRecord.new
        data.arn = map['arn']
        data.title = map['title']
        data.summary = map['summary']
        data.status = map['status']
        data.impact = map['impact']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.resolved_time = Time.at(map['resolvedTime'].to_i) if map['resolvedTime']
        data.last_modified_time = Time.at(map['lastModifiedTime'].to_i) if map['lastModifiedTime']
        data.last_modified_by = map['lastModifiedBy']
        data.automation_executions = (Parsers::AutomationExecutionSet.parse(map['automationExecutions']) unless map['automationExecutions'].nil?)
        data.incident_record_source = (Parsers::IncidentRecordSource.parse(map['incidentRecordSource']) unless map['incidentRecordSource'].nil?)
        data.dedupe_string = map['dedupeString']
        data.chat_channel = (Parsers::ChatChannel.parse(map['chatChannel']) unless map['chatChannel'].nil?)
        data.notification_targets = (Parsers::NotificationTargetSet.parse(map['notificationTargets']) unless map['notificationTargets'].nil?)
        return data
      end
    end

    class NotificationTargetSet
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NotificationTargetItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class NotificationTargetItem
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'snsTopicArn'
          value = value
          Types::NotificationTargetItem::SnsTopicArn.new(value) if value
        else
          Types::NotificationTargetItem::Unknown.new({name: key, value: value})
        end
      end
    end

    class ChatChannel
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'empty'
          value = (Parsers::EmptyChatChannel.parse(value) unless value.nil?)
          Types::ChatChannel::Empty.new(value) if value
        when 'chatbotSns'
          value = value
          Types::ChatChannel::ChatbotSns.new(value) if value
        else
          Types::ChatChannel::Unknown.new({name: key, value: value})
        end
      end
    end

    class ChatbotSnsConfigurationSet
      def self.parse(list)
        data = list.map do |value|
          value unless value.nil?
        end
        Set.new(data)
      end
    end

    class EmptyChatChannel
      def self.parse(map)
        data = Types::EmptyChatChannel.new
        return data
      end
    end

    class IncidentRecordSource
      def self.parse(map)
        data = Types::IncidentRecordSource.new
        data.created_by = map['createdBy']
        data.invoked_by = map['invokedBy']
        data.resource_arn = map['resourceArn']
        data.source = map['source']
        return data
      end
    end

    class AutomationExecutionSet
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AutomationExecution.parse(value) unless value.nil?
        end
        data
      end
    end

    class AutomationExecution
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'ssmExecutionArn'
          value = value
          Types::AutomationExecution::SsmExecutionArn.new(value) if value
        else
          Types::AutomationExecution::Unknown.new({name: key, value: value})
        end
      end
    end

    # Operation Parser for GetReplicationSet
    class GetReplicationSet
      def self.parse(http_resp)
        data = Types::GetReplicationSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.replication_set = (Parsers::ReplicationSet.parse(map['replicationSet']) unless map['replicationSet'].nil?)
        data
      end
    end

    class ReplicationSet
      def self.parse(map)
        data = Types::ReplicationSet.new
        data.arn = map['arn']
        data.region_map = (Parsers::RegionInfoMap.parse(map['regionMap']) unless map['regionMap'].nil?)
        data.status = map['status']
        data.deletion_protected = map['deletionProtected']
        data.created_time = Time.at(map['createdTime'].to_i) if map['createdTime']
        data.created_by = map['createdBy']
        data.last_modified_time = Time.at(map['lastModifiedTime'].to_i) if map['lastModifiedTime']
        data.last_modified_by = map['lastModifiedBy']
        return data
      end
    end

    class RegionInfoMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::RegionInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class RegionInfo
      def self.parse(map)
        data = Types::RegionInfo.new
        data.sse_kms_key_id = map['sseKmsKeyId']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.status_update_date_time = Time.at(map['statusUpdateDateTime'].to_i) if map['statusUpdateDateTime']
        return data
      end
    end

    # Operation Parser for GetResourcePolicies
    class GetResourcePolicies
      def self.parse(http_resp)
        data = Types::GetResourcePoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_policies = (Parsers::ResourcePolicyList.parse(map['resourcePolicies']) unless map['resourcePolicies'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourcePolicyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourcePolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourcePolicy
      def self.parse(map)
        data = Types::ResourcePolicy.new
        data.policy_document = map['policyDocument']
        data.policy_id = map['policyId']
        data.ram_resource_share_region = map['ramResourceShareRegion']
        return data
      end
    end

    # Operation Parser for GetResponsePlan
    class GetResponsePlan
      def self.parse(http_resp)
        data = Types::GetResponsePlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.display_name = map['displayName']
        data.incident_template = (Parsers::IncidentTemplate.parse(map['incidentTemplate']) unless map['incidentTemplate'].nil?)
        data.chat_channel = (Parsers::ChatChannel.parse(map['chatChannel']) unless map['chatChannel'].nil?)
        data.engagements = map['engagements']
        data.actions = (Parsers::ActionsList.parse(map['actions']) unless map['actions'].nil?)
        data
      end
    end

    class ActionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Action.parse(value) unless value.nil?
        end
        data
      end
    end

    class Action
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'ssmAutomation'
          value = (Parsers::SsmAutomation.parse(value) unless value.nil?)
          Types::Action::SsmAutomation.new(value) if value
        else
          Types::Action::Unknown.new({name: key, value: value})
        end
      end
    end

    class SsmAutomation
      def self.parse(map)
        data = Types::SsmAutomation.new
        data.role_arn = map['roleArn']
        data.document_name = map['documentName']
        data.document_version = map['documentVersion']
        data.target_account = map['targetAccount']
        data.parameters = (Parsers::SsmParameters.parse(map['parameters']) unless map['parameters'].nil?)
        data.dynamic_parameters = (Parsers::DynamicSsmParameters.parse(map['dynamicParameters']) unless map['dynamicParameters'].nil?)
        return data
      end
    end

    class DynamicSsmParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::DynamicSsmParameterValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class DynamicSsmParameterValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'variable'
          value = value
          Types::DynamicSsmParameterValue::Variable.new(value) if value
        else
          Types::DynamicSsmParameterValue::Unknown.new({name: key, value: value})
        end
      end
    end

    class SsmParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::SsmParameterValues.parse(value) unless value.nil?
        end
        data
      end
    end

    class SsmParameterValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class EngagementSet
      def self.parse(list)
        data = list.map do |value|
          value unless value.nil?
        end
        Set.new(data)
      end
    end

    class IncidentTemplate
      def self.parse(map)
        data = Types::IncidentTemplate.new
        data.title = map['title']
        data.impact = map['impact']
        data.summary = map['summary']
        data.dedupe_string = map['dedupeString']
        data.notification_targets = (Parsers::NotificationTargetSet.parse(map['notificationTargets']) unless map['notificationTargets'].nil?)
        return data
      end
    end

    # Operation Parser for GetTimelineEvent
    class GetTimelineEvent
      def self.parse(http_resp)
        data = Types::GetTimelineEventOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event = (Parsers::TimelineEvent.parse(map['event']) unless map['event'].nil?)
        data
      end
    end

    class TimelineEvent
      def self.parse(map)
        data = Types::TimelineEvent.new
        data.incident_record_arn = map['incidentRecordArn']
        data.event_id = map['eventId']
        data.event_time = Time.at(map['eventTime'].to_i) if map['eventTime']
        data.event_updated_time = Time.at(map['eventUpdatedTime'].to_i) if map['eventUpdatedTime']
        data.event_type = map['eventType']
        data.event_data = map['eventData']
        return data
      end
    end

    # Operation Parser for ListIncidentRecords
    class ListIncidentRecords
      def self.parse(http_resp)
        data = Types::ListIncidentRecordsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.incident_record_summaries = (Parsers::IncidentRecordSummaryList.parse(map['incidentRecordSummaries']) unless map['incidentRecordSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class IncidentRecordSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IncidentRecordSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class IncidentRecordSummary
      def self.parse(map)
        data = Types::IncidentRecordSummary.new
        data.arn = map['arn']
        data.title = map['title']
        data.status = map['status']
        data.impact = map['impact']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.resolved_time = Time.at(map['resolvedTime'].to_i) if map['resolvedTime']
        data.incident_record_source = (Parsers::IncidentRecordSource.parse(map['incidentRecordSource']) unless map['incidentRecordSource'].nil?)
        return data
      end
    end

    # Operation Parser for ListRelatedItems
    class ListRelatedItems
      def self.parse(http_resp)
        data = Types::ListRelatedItemsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.related_items = (Parsers::RelatedItemList.parse(map['relatedItems']) unless map['relatedItems'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RelatedItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RelatedItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class RelatedItem
      def self.parse(map)
        data = Types::RelatedItem.new
        data.identifier = (Parsers::ItemIdentifier.parse(map['identifier']) unless map['identifier'].nil?)
        data.title = map['title']
        return data
      end
    end

    class ItemIdentifier
      def self.parse(map)
        data = Types::ItemIdentifier.new
        data.value = (Parsers::ItemValue.parse(map['value']) unless map['value'].nil?)
        data.type = map['type']
        return data
      end
    end

    class ItemValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'arn'
          value = value
          Types::ItemValue::Arn.new(value) if value
        when 'url'
          value = value
          Types::ItemValue::Url.new(value) if value
        when 'metricDefinition'
          value = value
          Types::ItemValue::MetricDefinition.new(value) if value
        else
          Types::ItemValue::Unknown.new({name: key, value: value})
        end
      end
    end

    # Operation Parser for ListReplicationSets
    class ListReplicationSets
      def self.parse(http_resp)
        data = Types::ListReplicationSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.replication_set_arns = (Parsers::ReplicationSetArnList.parse(map['replicationSetArns']) unless map['replicationSetArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ReplicationSetArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListResponsePlans
    class ListResponsePlans
      def self.parse(http_resp)
        data = Types::ListResponsePlansOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.response_plan_summaries = (Parsers::ResponsePlanSummaryList.parse(map['responsePlanSummaries']) unless map['responsePlanSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResponsePlanSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResponsePlanSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResponsePlanSummary
      def self.parse(map)
        data = Types::ResponsePlanSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.display_name = map['displayName']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTimelineEvents
    class ListTimelineEvents
      def self.parse(http_resp)
        data = Types::ListTimelineEventsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_summaries = (Parsers::EventSummaryList.parse(map['eventSummaries']) unless map['eventSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EventSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EventSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventSummary
      def self.parse(map)
        data = Types::EventSummary.new
        data.incident_record_arn = map['incidentRecordArn']
        data.event_id = map['eventId']
        data.event_time = Time.at(map['eventTime'].to_i) if map['eventTime']
        data.event_updated_time = Time.at(map['eventUpdatedTime'].to_i) if map['eventUpdatedTime']
        data.event_type = map['eventType']
        return data
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_id = map['policyId']
        data
      end
    end

    # Operation Parser for StartIncident
    class StartIncident
      def self.parse(http_resp)
        data = Types::StartIncidentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.incident_record_arn = map['incidentRecordArn']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDeletionProtection
    class UpdateDeletionProtection
      def self.parse(http_resp)
        data = Types::UpdateDeletionProtectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateIncidentRecord
    class UpdateIncidentRecord
      def self.parse(http_resp)
        data = Types::UpdateIncidentRecordOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRelatedItems
    class UpdateRelatedItems
      def self.parse(http_resp)
        data = Types::UpdateRelatedItemsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateReplicationSet
    class UpdateReplicationSet
      def self.parse(http_resp)
        data = Types::UpdateReplicationSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateResponsePlan
    class UpdateResponsePlan
      def self.parse(http_resp)
        data = Types::UpdateResponsePlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateTimelineEvent
    class UpdateTimelineEvent
      def self.parse(http_resp)
        data = Types::UpdateTimelineEventOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
