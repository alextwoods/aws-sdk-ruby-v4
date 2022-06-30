# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMIncidents
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Action
      def self.validate!(input, context:)
        case input
        when Types::Action::SsmAutomation
          Validators::SsmAutomation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::Action, got #{input.class}."
        end
      end

      class SsmAutomation
        def self.validate!(input, context:)
          Validators::SsmAutomation.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ActionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Action.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddRegionAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddRegionAction, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:sse_kms_key_id], ::String, context: "#{context}[:sse_kms_key_id]")
      end
    end

    class AttributeValueList
      def self.validate!(input, context:)
        case input
        when Types::AttributeValueList::StringValues
          Validators::StringList.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValueList::IntegerValues
          Validators::IntegerList.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AttributeValueList, got #{input.class}."
        end
      end

      class StringValues
        def self.validate!(input, context:)
          Validators::StringList.validate!(input, context: context) unless input.nil?
        end
      end

      class IntegerValues
        def self.validate!(input, context:)
          Validators::IntegerList.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class AutomationExecution
      def self.validate!(input, context:)
        case input
        when Types::AutomationExecution::SsmExecutionArn
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AutomationExecution, got #{input.class}."
        end
      end

      class SsmExecutionArn
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class AutomationExecutionSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AutomationExecution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChatChannel
      def self.validate!(input, context:)
        case input
        when Types::ChatChannel::Empty
          Validators::EmptyChatChannel.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ChatChannel::ChatbotSns
          Validators::ChatbotSnsConfigurationSet.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ChatChannel, got #{input.class}."
        end
      end

      class Empty
        def self.validate!(input, context:)
          Validators::EmptyChatChannel.validate!(input, context: context) unless input.nil?
        end
      end

      class ChatbotSns
        def self.validate!(input, context:)
          Validators::ChatbotSnsConfigurationSet.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ChatbotSnsConfigurationSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Set, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Condition
      def self.validate!(input, context:)
        case input
        when Types::Condition::Before
          Hearth::Validator.validate!(input.__getobj__, ::Time, context: context)
        when Types::Condition::After
          Hearth::Validator.validate!(input.__getobj__, ::Time, context: context)
        when Types::Condition::Equals
          Validators::AttributeValueList.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::Condition, got #{input.class}."
        end
      end

      class Before
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Time, context: context)
        end
      end

      class After
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Time, context: context)
        end
      end

      class Equals
        def self.validate!(input, context:)
          Validators::AttributeValueList.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:retry_after], ::Time, context: "#{context}[:retry_after]")
      end
    end

    class CreateReplicationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationSetInput, context: context)
        Validators::RegionMapInput.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateReplicationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationSetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateResponsePlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResponsePlanInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Validators::IncidentTemplate.validate!(input[:incident_template], context: "#{context}[:incident_template]") unless input[:incident_template].nil?
        Validators::ChatChannel.validate!(input[:chat_channel], context: "#{context}[:chat_channel]") unless input[:chat_channel].nil?
        Validators::EngagementSet.validate!(input[:engagements], context: "#{context}[:engagements]") unless input[:engagements].nil?
        Validators::ActionsList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateResponsePlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResponsePlanOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateTimelineEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTimelineEventInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:event_data], ::String, context: "#{context}[:event_data]")
      end
    end

    class CreateTimelineEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTimelineEventOutput, context: context)
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class DeleteIncidentRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIncidentRecordInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteIncidentRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIncidentRecordOutput, context: context)
      end
    end

    class DeleteRegionAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegionAction, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class DeleteReplicationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationSetInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteReplicationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationSetOutput, context: context)
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DeleteResponsePlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResponsePlanInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteResponsePlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResponsePlanOutput, context: context)
      end
    end

    class DeleteTimelineEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTimelineEventInput, context: context)
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class DeleteTimelineEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTimelineEventOutput, context: context)
      end
    end

    class DynamicSsmParameterValue
      def self.validate!(input, context:)
        case input
        when Types::DynamicSsmParameterValue::Variable
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::DynamicSsmParameterValue, got #{input.class}."
        end
      end

      class Variable
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class DynamicSsmParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::DynamicSsmParameterValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class EmptyChatChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmptyChatChannel, context: context)
      end
    end

    class EngagementSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Set, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSummary, context: context)
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate!(input[:event_updated_time], ::Time, context: "#{context}[:event_updated_time]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
      end
    end

    class EventSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Validators::Condition.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetIncidentRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIncidentRecordInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetIncidentRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIncidentRecordOutput, context: context)
        Validators::IncidentRecord.validate!(input[:incident_record], context: "#{context}[:incident_record]") unless input[:incident_record].nil?
      end
    end

    class GetReplicationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReplicationSetInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetReplicationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReplicationSetOutput, context: context)
        Validators::ReplicationSet.validate!(input[:replication_set], context: "#{context}[:replication_set]") unless input[:replication_set].nil?
      end
    end

    class GetResourcePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePoliciesInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourcePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePoliciesOutput, context: context)
        Validators::ResourcePolicyList.validate!(input[:resource_policies], context: "#{context}[:resource_policies]") unless input[:resource_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResponsePlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResponsePlanInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetResponsePlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResponsePlanOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Validators::IncidentTemplate.validate!(input[:incident_template], context: "#{context}[:incident_template]") unless input[:incident_template].nil?
        Validators::ChatChannel.validate!(input[:chat_channel], context: "#{context}[:chat_channel]") unless input[:chat_channel].nil?
        Validators::EngagementSet.validate!(input[:engagements], context: "#{context}[:engagements]") unless input[:engagements].nil?
        Validators::ActionsList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class GetTimelineEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTimelineEventInput, context: context)
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class GetTimelineEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTimelineEventOutput, context: context)
        Validators::TimelineEvent.validate!(input[:event], context: "#{context}[:event]") unless input[:event].nil?
      end
    end

    class IncidentRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncidentRecord, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:impact], ::Integer, context: "#{context}[:impact]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:resolved_time], ::Time, context: "#{context}[:resolved_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Validators::AutomationExecutionSet.validate!(input[:automation_executions], context: "#{context}[:automation_executions]") unless input[:automation_executions].nil?
        Validators::IncidentRecordSource.validate!(input[:incident_record_source], context: "#{context}[:incident_record_source]") unless input[:incident_record_source].nil?
        Hearth::Validator.validate!(input[:dedupe_string], ::String, context: "#{context}[:dedupe_string]")
        Validators::ChatChannel.validate!(input[:chat_channel], context: "#{context}[:chat_channel]") unless input[:chat_channel].nil?
        Validators::NotificationTargetSet.validate!(input[:notification_targets], context: "#{context}[:notification_targets]") unless input[:notification_targets].nil?
      end
    end

    class IncidentRecordSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncidentRecordSource, context: context)
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:invoked_by], ::String, context: "#{context}[:invoked_by]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
      end
    end

    class IncidentRecordSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncidentRecordSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:impact], ::Integer, context: "#{context}[:impact]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:resolved_time], ::Time, context: "#{context}[:resolved_time]")
        Validators::IncidentRecordSource.validate!(input[:incident_record_source], context: "#{context}[:incident_record_source]") unless input[:incident_record_source].nil?
      end
    end

    class IncidentRecordSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IncidentRecordSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IncidentTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncidentTemplate, context: context)
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:impact], ::Integer, context: "#{context}[:impact]")
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Hearth::Validator.validate!(input[:dedupe_string], ::String, context: "#{context}[:dedupe_string]")
        Validators::NotificationTargetSet.validate!(input[:notification_targets], context: "#{context}[:notification_targets]") unless input[:notification_targets].nil?
      end
    end

    class IntegerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ItemIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ItemIdentifier, context: context)
        Validators::ItemValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ItemValue
      def self.validate!(input, context:)
        case input
        when Types::ItemValue::Arn
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::ItemValue::Url
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::ItemValue::MetricDefinition
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ItemValue, got #{input.class}."
        end
      end

      class Arn
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Url
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class MetricDefinition
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class ListIncidentRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIncidentRecordsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIncidentRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIncidentRecordsOutput, context: context)
        Validators::IncidentRecordSummaryList.validate!(input[:incident_record_summaries], context: "#{context}[:incident_record_summaries]") unless input[:incident_record_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRelatedItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRelatedItemsInput, context: context)
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRelatedItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRelatedItemsOutput, context: context)
        Validators::RelatedItemList.validate!(input[:related_items], context: "#{context}[:related_items]") unless input[:related_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReplicationSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReplicationSetsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReplicationSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReplicationSetsOutput, context: context)
        Validators::ReplicationSetArnList.validate!(input[:replication_set_arns], context: "#{context}[:replication_set_arns]") unless input[:replication_set_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResponsePlansInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResponsePlansInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResponsePlansOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResponsePlansOutput, context: context)
        Validators::ResponsePlanSummaryList.validate!(input[:response_plan_summaries], context: "#{context}[:response_plan_summaries]") unless input[:response_plan_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTimelineEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTimelineEventsInput, context: context)
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTimelineEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTimelineEventsOutput, context: context)
        Validators::EventSummaryList.validate!(input[:event_summaries], context: "#{context}[:event_summaries]") unless input[:event_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotificationTargetItem
      def self.validate!(input, context:)
        case input
        when Types::NotificationTargetItem::SnsTopicArn
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::NotificationTargetItem, got #{input.class}."
        end
      end

      class SnsTopicArn
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class NotificationTargetSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NotificationTargetItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
      end
    end

    class RegionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionInfo, context: context)
        Hearth::Validator.validate!(input[:sse_kms_key_id], ::String, context: "#{context}[:sse_kms_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:status_update_date_time], ::Time, context: "#{context}[:status_update_date_time]")
      end
    end

    class RegionInfoMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::RegionInfo.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class RegionMapInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::RegionMapInputValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class RegionMapInputValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionMapInputValue, context: context)
        Hearth::Validator.validate!(input[:sse_kms_key_id], ::String, context: "#{context}[:sse_kms_key_id]")
      end
    end

    class RelatedItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelatedItem, context: context)
        Validators::ItemIdentifier.validate!(input[:identifier], context: "#{context}[:identifier]") unless input[:identifier].nil?
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
      end
    end

    class RelatedItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RelatedItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelatedItemsUpdate
      def self.validate!(input, context:)
        case input
        when Types::RelatedItemsUpdate::ItemToAdd
          Validators::RelatedItem.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::RelatedItemsUpdate::ItemToRemove
          Validators::ItemIdentifier.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::RelatedItemsUpdate, got #{input.class}."
        end
      end

      class ItemToAdd
        def self.validate!(input, context:)
          Validators::RelatedItem.validate!(input, context: context) unless input.nil?
        end
      end

      class ItemToRemove
        def self.validate!(input, context:)
          Validators::ItemIdentifier.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ReplicationSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationSet, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::RegionInfoMap.validate!(input[:region_map], context: "#{context}[:region_map]") unless input[:region_map].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:deletion_protected], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protected]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
      end
    end

    class ReplicationSetArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourcePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePolicy, context: context)
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:ram_resource_share_region], ::String, context: "#{context}[:ram_resource_share_region]")
      end
    end

    class ResourcePolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourcePolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResponsePlanSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponsePlanSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class ResponsePlanSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResponsePlanSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
      end
    end

    class SsmAutomation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SsmAutomation, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:target_account], ::String, context: "#{context}[:target_account]")
        Validators::SsmParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Validators::DynamicSsmParameters.validate!(input[:dynamic_parameters], context: "#{context}[:dynamic_parameters]") unless input[:dynamic_parameters].nil?
      end
    end

    class SsmParameterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SsmParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::SsmParameterValues.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class StartIncidentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartIncidentInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:response_plan_arn], ::String, context: "#{context}[:response_plan_arn]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:impact], ::Integer, context: "#{context}[:impact]")
        Validators::TriggerDetails.validate!(input[:trigger_details], context: "#{context}[:trigger_details]") unless input[:trigger_details].nil?
        Validators::RelatedItemList.validate!(input[:related_items], context: "#{context}[:related_items]") unless input[:related_items].nil?
      end
    end

    class StartIncidentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartIncidentOutput, context: context)
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
      end
    end

    class TimelineEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimelineEvent, context: context)
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate!(input[:event_updated_time], ::Time, context: "#{context}[:event_updated_time]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:event_data], ::String, context: "#{context}[:event_data]")
      end
    end

    class TriggerDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggerDetails, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:trigger_arn], ::String, context: "#{context}[:trigger_arn]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:raw_data], ::String, context: "#{context}[:raw_data]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpdateReplicationSetAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateDeletionProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeletionProtectionInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:deletion_protected], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protected]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateDeletionProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeletionProtectionOutput, context: context)
      end
    end

    class UpdateIncidentRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIncidentRecordInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Hearth::Validator.validate!(input[:impact], ::Integer, context: "#{context}[:impact]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ChatChannel.validate!(input[:chat_channel], context: "#{context}[:chat_channel]") unless input[:chat_channel].nil?
        Validators::NotificationTargetSet.validate!(input[:notification_targets], context: "#{context}[:notification_targets]") unless input[:notification_targets].nil?
      end
    end

    class UpdateIncidentRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIncidentRecordOutput, context: context)
      end
    end

    class UpdateRelatedItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRelatedItemsInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Validators::RelatedItemsUpdate.validate!(input[:related_items_update], context: "#{context}[:related_items_update]") unless input[:related_items_update].nil?
      end
    end

    class UpdateRelatedItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRelatedItemsOutput, context: context)
      end
    end

    class UpdateReplicationSetAction
      def self.validate!(input, context:)
        case input
        when Types::UpdateReplicationSetAction::AddRegionAction
          Validators::AddRegionAction.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::UpdateReplicationSetAction::DeleteRegionAction
          Validators::DeleteRegionAction.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::UpdateReplicationSetAction, got #{input.class}."
        end
      end

      class AddRegionAction
        def self.validate!(input, context:)
          Validators::AddRegionAction.validate!(input, context: context) unless input.nil?
        end
      end

      class DeleteRegionAction
        def self.validate!(input, context:)
          Validators::DeleteRegionAction.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class UpdateReplicationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationSetInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::UpdateActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateReplicationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationSetOutput, context: context)
      end
    end

    class UpdateResponsePlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResponsePlanInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:incident_template_title], ::String, context: "#{context}[:incident_template_title]")
        Hearth::Validator.validate!(input[:incident_template_impact], ::Integer, context: "#{context}[:incident_template_impact]")
        Hearth::Validator.validate!(input[:incident_template_summary], ::String, context: "#{context}[:incident_template_summary]")
        Hearth::Validator.validate!(input[:incident_template_dedupe_string], ::String, context: "#{context}[:incident_template_dedupe_string]")
        Validators::NotificationTargetSet.validate!(input[:incident_template_notification_targets], context: "#{context}[:incident_template_notification_targets]") unless input[:incident_template_notification_targets].nil?
        Validators::ChatChannel.validate!(input[:chat_channel], context: "#{context}[:chat_channel]") unless input[:chat_channel].nil?
        Validators::EngagementSet.validate!(input[:engagements], context: "#{context}[:engagements]") unless input[:engagements].nil?
        Validators::ActionsList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class UpdateResponsePlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResponsePlanOutput, context: context)
      end
    end

    class UpdateTimelineEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTimelineEventInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:incident_record_arn], ::String, context: "#{context}[:incident_record_arn]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:event_data], ::String, context: "#{context}[:event_data]")
      end
    end

    class UpdateTimelineEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTimelineEventOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
