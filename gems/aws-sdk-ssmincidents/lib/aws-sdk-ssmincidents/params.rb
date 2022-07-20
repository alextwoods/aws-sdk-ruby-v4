# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SSMIncidents
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Action
      def self.build(params, context: '')
        return params if params.is_a?(Types::Action)
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :ssm_automation
          Types::Action::SsmAutomation.new(
            (SsmAutomation.build(params[:ssm_automation], context: "#{context}[:ssm_automation]") unless params[:ssm_automation].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :ssm_automation set"
        end
      end
    end

    module ActionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Action.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddRegionAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddRegionAction, context: context)
        type = Types::AddRegionAction.new
        type.region_name = params[:region_name]
        type.sse_kms_key_id = params[:sse_kms_key_id]
        type
      end
    end

    module AttributeValueList
      def self.build(params, context: '')
        return params if params.is_a?(Types::AttributeValueList)
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeValueList, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :string_values
          Types::AttributeValueList::StringValues.new(
            (StringList.build(params[:string_values], context: "#{context}[:string_values]") unless params[:string_values].nil?)
          )
        when :integer_values
          Types::AttributeValueList::IntegerValues.new(
            (IntegerList.build(params[:integer_values], context: "#{context}[:integer_values]") unless params[:integer_values].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :string_values, :integer_values set"
        end
      end
    end

    module AutomationExecution
      def self.build(params, context: '')
        return params if params.is_a?(Types::AutomationExecution)
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationExecution, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :ssm_execution_arn
          Types::AutomationExecution::SsmExecutionArn.new(
            params[:ssm_execution_arn]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :ssm_execution_arn set"
        end
      end
    end

    module AutomationExecutionSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutomationExecution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChatChannel
      def self.build(params, context: '')
        return params if params.is_a?(Types::ChatChannel)
        Hearth::Validator.validate!(params, ::Hash, Types::ChatChannel, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :empty
          Types::ChatChannel::Empty.new(
            (EmptyChatChannel.build(params[:empty], context: "#{context}[:empty]") unless params[:empty].nil?)
          )
        when :chatbot_sns
          Types::ChatChannel::ChatbotSns.new(
            (ChatbotSnsConfigurationSet.build(params[:chatbot_sns], context: "#{context}[:chatbot_sns]") unless params[:chatbot_sns].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :empty, :chatbot_sns set"
        end
      end
    end

    module ChatbotSnsConfigurationSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Condition
      def self.build(params, context: '')
        return params if params.is_a?(Types::Condition)
        Hearth::Validator.validate!(params, ::Hash, Types::Condition, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :before
          Types::Condition::Before.new(
            params[:before]
          )
        when :after
          Types::Condition::After.new(
            params[:after]
          )
        when :equals
          Types::Condition::Equals.new(
            (AttributeValueList.build(params[:equals], context: "#{context}[:equals]") unless params[:equals].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :before, :after, :equals set"
        end
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_identifier = params[:resource_identifier]
        type.resource_type = params[:resource_type]
        type.retry_after = params[:retry_after]
        type
      end
    end

    module CreateReplicationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationSetInput, context: context)
        type = Types::CreateReplicationSetInput.new
        type.regions = RegionMapInput.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateReplicationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationSetOutput, context: context)
        type = Types::CreateReplicationSetOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CreateResponsePlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResponsePlanInput, context: context)
        type = Types::CreateResponsePlanInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.incident_template = IncidentTemplate.build(params[:incident_template], context: "#{context}[:incident_template]") unless params[:incident_template].nil?
        type.chat_channel = ChatChannel.build(params[:chat_channel], context: "#{context}[:chat_channel]") unless params[:chat_channel].nil?
        type.engagements = EngagementSet.build(params[:engagements], context: "#{context}[:engagements]") unless params[:engagements].nil?
        type.actions = ActionsList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateResponsePlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResponsePlanOutput, context: context)
        type = Types::CreateResponsePlanOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CreateTimelineEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTimelineEventInput, context: context)
        type = Types::CreateTimelineEventInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.incident_record_arn = params[:incident_record_arn]
        type.event_time = params[:event_time]
        type.event_type = params[:event_type]
        type.event_data = params[:event_data]
        type
      end
    end

    module CreateTimelineEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTimelineEventOutput, context: context)
        type = Types::CreateTimelineEventOutput.new
        type.incident_record_arn = params[:incident_record_arn]
        type.event_id = params[:event_id]
        type
      end
    end

    module DeleteIncidentRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIncidentRecordInput, context: context)
        type = Types::DeleteIncidentRecordInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteIncidentRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIncidentRecordOutput, context: context)
        type = Types::DeleteIncidentRecordOutput.new
        type
      end
    end

    module DeleteRegionAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegionAction, context: context)
        type = Types::DeleteRegionAction.new
        type.region_name = params[:region_name]
        type
      end
    end

    module DeleteReplicationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationSetInput, context: context)
        type = Types::DeleteReplicationSetInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteReplicationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationSetOutput, context: context)
        type = Types::DeleteReplicationSetOutput.new
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.policy_id = params[:policy_id]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type
      end
    end

    module DeleteResponsePlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResponsePlanInput, context: context)
        type = Types::DeleteResponsePlanInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteResponsePlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResponsePlanOutput, context: context)
        type = Types::DeleteResponsePlanOutput.new
        type
      end
    end

    module DeleteTimelineEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTimelineEventInput, context: context)
        type = Types::DeleteTimelineEventInput.new
        type.incident_record_arn = params[:incident_record_arn]
        type.event_id = params[:event_id]
        type
      end
    end

    module DeleteTimelineEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTimelineEventOutput, context: context)
        type = Types::DeleteTimelineEventOutput.new
        type
      end
    end

    module DynamicSsmParameterValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::DynamicSsmParameterValue)
        Hearth::Validator.validate!(params, ::Hash, Types::DynamicSsmParameterValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :variable
          Types::DynamicSsmParameterValue::Variable.new(
            params[:variable]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :variable set"
        end
      end
    end

    module DynamicSsmParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = DynamicSsmParameterValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module EmptyChatChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmptyChatChannel, context: context)
        type = Types::EmptyChatChannel.new
        type
      end
    end

    module EngagementSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSummary, context: context)
        type = Types::EventSummary.new
        type.incident_record_arn = params[:incident_record_arn]
        type.event_id = params[:event_id]
        type.event_time = params[:event_time]
        type.event_updated_time = params[:event_updated_time]
        type.event_type = params[:event_type]
        type
      end
    end

    module EventSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.key = params[:key]
        type.condition = Condition.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetIncidentRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIncidentRecordInput, context: context)
        type = Types::GetIncidentRecordInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetIncidentRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIncidentRecordOutput, context: context)
        type = Types::GetIncidentRecordOutput.new
        type.incident_record = IncidentRecord.build(params[:incident_record], context: "#{context}[:incident_record]") unless params[:incident_record].nil?
        type
      end
    end

    module GetReplicationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReplicationSetInput, context: context)
        type = Types::GetReplicationSetInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetReplicationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReplicationSetOutput, context: context)
        type = Types::GetReplicationSetOutput.new
        type.replication_set = ReplicationSet.build(params[:replication_set], context: "#{context}[:replication_set]") unless params[:replication_set].nil?
        type
      end
    end

    module GetResourcePoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePoliciesInput, context: context)
        type = Types::GetResourcePoliciesInput.new
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourcePoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePoliciesOutput, context: context)
        type = Types::GetResourcePoliciesOutput.new
        type.resource_policies = ResourcePolicyList.build(params[:resource_policies], context: "#{context}[:resource_policies]") unless params[:resource_policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResponsePlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResponsePlanInput, context: context)
        type = Types::GetResponsePlanInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetResponsePlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResponsePlanOutput, context: context)
        type = Types::GetResponsePlanOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.incident_template = IncidentTemplate.build(params[:incident_template], context: "#{context}[:incident_template]") unless params[:incident_template].nil?
        type.chat_channel = ChatChannel.build(params[:chat_channel], context: "#{context}[:chat_channel]") unless params[:chat_channel].nil?
        type.engagements = EngagementSet.build(params[:engagements], context: "#{context}[:engagements]") unless params[:engagements].nil?
        type.actions = ActionsList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module GetTimelineEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTimelineEventInput, context: context)
        type = Types::GetTimelineEventInput.new
        type.incident_record_arn = params[:incident_record_arn]
        type.event_id = params[:event_id]
        type
      end
    end

    module GetTimelineEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTimelineEventOutput, context: context)
        type = Types::GetTimelineEventOutput.new
        type.event = TimelineEvent.build(params[:event], context: "#{context}[:event]") unless params[:event].nil?
        type
      end
    end

    module IncidentRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncidentRecord, context: context)
        type = Types::IncidentRecord.new
        type.arn = params[:arn]
        type.title = params[:title]
        type.summary = params[:summary]
        type.status = params[:status]
        type.impact = params[:impact]
        type.creation_time = params[:creation_time]
        type.resolved_time = params[:resolved_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = params[:last_modified_by]
        type.automation_executions = AutomationExecutionSet.build(params[:automation_executions], context: "#{context}[:automation_executions]") unless params[:automation_executions].nil?
        type.incident_record_source = IncidentRecordSource.build(params[:incident_record_source], context: "#{context}[:incident_record_source]") unless params[:incident_record_source].nil?
        type.dedupe_string = params[:dedupe_string]
        type.chat_channel = ChatChannel.build(params[:chat_channel], context: "#{context}[:chat_channel]") unless params[:chat_channel].nil?
        type.notification_targets = NotificationTargetSet.build(params[:notification_targets], context: "#{context}[:notification_targets]") unless params[:notification_targets].nil?
        type
      end
    end

    module IncidentRecordSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncidentRecordSource, context: context)
        type = Types::IncidentRecordSource.new
        type.created_by = params[:created_by]
        type.invoked_by = params[:invoked_by]
        type.resource_arn = params[:resource_arn]
        type.source = params[:source]
        type
      end
    end

    module IncidentRecordSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncidentRecordSummary, context: context)
        type = Types::IncidentRecordSummary.new
        type.arn = params[:arn]
        type.title = params[:title]
        type.status = params[:status]
        type.impact = params[:impact]
        type.creation_time = params[:creation_time]
        type.resolved_time = params[:resolved_time]
        type.incident_record_source = IncidentRecordSource.build(params[:incident_record_source], context: "#{context}[:incident_record_source]") unless params[:incident_record_source].nil?
        type
      end
    end

    module IncidentRecordSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IncidentRecordSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IncidentTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncidentTemplate, context: context)
        type = Types::IncidentTemplate.new
        type.title = params[:title]
        type.impact = params[:impact]
        type.summary = params[:summary]
        type.dedupe_string = params[:dedupe_string]
        type.notification_targets = NotificationTargetSet.build(params[:notification_targets], context: "#{context}[:notification_targets]") unless params[:notification_targets].nil?
        type
      end
    end

    module IntegerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ItemIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ItemIdentifier, context: context)
        type = Types::ItemIdentifier.new
        type.value = ItemValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.type = params[:type]
        type
      end
    end

    module ItemValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::ItemValue)
        Hearth::Validator.validate!(params, ::Hash, Types::ItemValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :arn
          Types::ItemValue::Arn.new(
            params[:arn]
          )
        when :url
          Types::ItemValue::Url.new(
            params[:url]
          )
        when :metric_definition
          Types::ItemValue::MetricDefinition.new(
            params[:metric_definition]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :arn, :url, :metric_definition set"
        end
      end
    end

    module ListIncidentRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIncidentRecordsInput, context: context)
        type = Types::ListIncidentRecordsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIncidentRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIncidentRecordsOutput, context: context)
        type = Types::ListIncidentRecordsOutput.new
        type.incident_record_summaries = IncidentRecordSummaryList.build(params[:incident_record_summaries], context: "#{context}[:incident_record_summaries]") unless params[:incident_record_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRelatedItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRelatedItemsInput, context: context)
        type = Types::ListRelatedItemsInput.new
        type.incident_record_arn = params[:incident_record_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRelatedItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRelatedItemsOutput, context: context)
        type = Types::ListRelatedItemsOutput.new
        type.related_items = RelatedItemList.build(params[:related_items], context: "#{context}[:related_items]") unless params[:related_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReplicationSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReplicationSetsInput, context: context)
        type = Types::ListReplicationSetsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReplicationSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReplicationSetsOutput, context: context)
        type = Types::ListReplicationSetsOutput.new
        type.replication_set_arns = ReplicationSetArnList.build(params[:replication_set_arns], context: "#{context}[:replication_set_arns]") unless params[:replication_set_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResponsePlansInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResponsePlansInput, context: context)
        type = Types::ListResponsePlansInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResponsePlansOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResponsePlansOutput, context: context)
        type = Types::ListResponsePlansOutput.new
        type.response_plan_summaries = ResponsePlanSummaryList.build(params[:response_plan_summaries], context: "#{context}[:response_plan_summaries]") unless params[:response_plan_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTimelineEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTimelineEventsInput, context: context)
        type = Types::ListTimelineEventsInput.new
        type.incident_record_arn = params[:incident_record_arn]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTimelineEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTimelineEventsOutput, context: context)
        type = Types::ListTimelineEventsOutput.new
        type.event_summaries = EventSummaryList.build(params[:event_summaries], context: "#{context}[:event_summaries]") unless params[:event_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotificationTargetItem
      def self.build(params, context: '')
        return params if params.is_a?(Types::NotificationTargetItem)
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationTargetItem, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :sns_topic_arn
          Types::NotificationTargetItem::SnsTopicArn.new(
            params[:sns_topic_arn]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :sns_topic_arn set"
        end
      end
    end

    module NotificationTargetSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotificationTargetItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type.policy_id = params[:policy_id]
        type
      end
    end

    module RegionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegionInfo, context: context)
        type = Types::RegionInfo.new
        type.sse_kms_key_id = params[:sse_kms_key_id]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.status_update_date_time = params[:status_update_date_time]
        type
      end
    end

    module RegionInfoMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = RegionInfo.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module RegionMapInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = RegionMapInputValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module RegionMapInputValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegionMapInputValue, context: context)
        type = Types::RegionMapInputValue.new
        type.sse_kms_key_id = params[:sse_kms_key_id]
        type
      end
    end

    module RelatedItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelatedItem, context: context)
        type = Types::RelatedItem.new
        type.identifier = ItemIdentifier.build(params[:identifier], context: "#{context}[:identifier]") unless params[:identifier].nil?
        type.title = params[:title]
        type
      end
    end

    module RelatedItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelatedItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelatedItemsUpdate
      def self.build(params, context: '')
        return params if params.is_a?(Types::RelatedItemsUpdate)
        Hearth::Validator.validate!(params, ::Hash, Types::RelatedItemsUpdate, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :item_to_add
          Types::RelatedItemsUpdate::ItemToAdd.new(
            (RelatedItem.build(params[:item_to_add], context: "#{context}[:item_to_add]") unless params[:item_to_add].nil?)
          )
        when :item_to_remove
          Types::RelatedItemsUpdate::ItemToRemove.new(
            (ItemIdentifier.build(params[:item_to_remove], context: "#{context}[:item_to_remove]") unless params[:item_to_remove].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :item_to_add, :item_to_remove set"
        end
      end
    end

    module ReplicationSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationSet, context: context)
        type = Types::ReplicationSet.new
        type.arn = params[:arn]
        type.region_map = RegionInfoMap.build(params[:region_map], context: "#{context}[:region_map]") unless params[:region_map].nil?
        type.status = params[:status]
        type.deletion_protected = params[:deletion_protected]
        type.created_time = params[:created_time]
        type.created_by = params[:created_by]
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = params[:last_modified_by]
        type
      end
    end

    module ReplicationSetArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_identifier = params[:resource_identifier]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourcePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePolicy, context: context)
        type = Types::ResourcePolicy.new
        type.policy_document = params[:policy_document]
        type.policy_id = params[:policy_id]
        type.ram_resource_share_region = params[:ram_resource_share_region]
        type
      end
    end

    module ResourcePolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourcePolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResponsePlanSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponsePlanSummary, context: context)
        type = Types::ResponsePlanSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.display_name = params[:display_name]
        type
      end
    end

    module ResponsePlanSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResponsePlanSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_identifier = params[:resource_identifier]
        type.resource_type = params[:resource_type]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type
      end
    end

    module SsmAutomation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SsmAutomation, context: context)
        type = Types::SsmAutomation.new
        type.role_arn = params[:role_arn]
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.target_account = params[:target_account]
        type.parameters = SsmParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.dynamic_parameters = DynamicSsmParameters.build(params[:dynamic_parameters], context: "#{context}[:dynamic_parameters]") unless params[:dynamic_parameters].nil?
        type
      end
    end

    module SsmParameterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SsmParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = SsmParameterValues.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module StartIncidentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartIncidentInput, context: context)
        type = Types::StartIncidentInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.response_plan_arn = params[:response_plan_arn]
        type.title = params[:title]
        type.impact = params[:impact]
        type.trigger_details = TriggerDetails.build(params[:trigger_details], context: "#{context}[:trigger_details]") unless params[:trigger_details].nil?
        type.related_items = RelatedItemList.build(params[:related_items], context: "#{context}[:related_items]") unless params[:related_items].nil?
        type
      end
    end

    module StartIncidentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartIncidentOutput, context: context)
        type = Types::StartIncidentOutput.new
        type.incident_record_arn = params[:incident_record_arn]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type
      end
    end

    module TimelineEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimelineEvent, context: context)
        type = Types::TimelineEvent.new
        type.incident_record_arn = params[:incident_record_arn]
        type.event_id = params[:event_id]
        type.event_time = params[:event_time]
        type.event_updated_time = params[:event_updated_time]
        type.event_type = params[:event_type]
        type.event_data = params[:event_data]
        type
      end
    end

    module TriggerDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggerDetails, context: context)
        type = Types::TriggerDetails.new
        type.source = params[:source]
        type.trigger_arn = params[:trigger_arn]
        type.timestamp = params[:timestamp]
        type.raw_data = params[:raw_data]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateReplicationSetAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateDeletionProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeletionProtectionInput, context: context)
        type = Types::UpdateDeletionProtectionInput.new
        type.arn = params[:arn]
        type.deletion_protected = params[:deletion_protected]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateDeletionProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeletionProtectionOutput, context: context)
        type = Types::UpdateDeletionProtectionOutput.new
        type
      end
    end

    module UpdateIncidentRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIncidentRecordInput, context: context)
        type = Types::UpdateIncidentRecordInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.arn = params[:arn]
        type.title = params[:title]
        type.summary = params[:summary]
        type.impact = params[:impact]
        type.status = params[:status]
        type.chat_channel = ChatChannel.build(params[:chat_channel], context: "#{context}[:chat_channel]") unless params[:chat_channel].nil?
        type.notification_targets = NotificationTargetSet.build(params[:notification_targets], context: "#{context}[:notification_targets]") unless params[:notification_targets].nil?
        type
      end
    end

    module UpdateIncidentRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIncidentRecordOutput, context: context)
        type = Types::UpdateIncidentRecordOutput.new
        type
      end
    end

    module UpdateRelatedItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRelatedItemsInput, context: context)
        type = Types::UpdateRelatedItemsInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.incident_record_arn = params[:incident_record_arn]
        type.related_items_update = RelatedItemsUpdate.build(params[:related_items_update], context: "#{context}[:related_items_update]") unless params[:related_items_update].nil?
        type
      end
    end

    module UpdateRelatedItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRelatedItemsOutput, context: context)
        type = Types::UpdateRelatedItemsOutput.new
        type
      end
    end

    module UpdateReplicationSetAction
      def self.build(params, context: '')
        return params if params.is_a?(Types::UpdateReplicationSetAction)
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationSetAction, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :add_region_action
          Types::UpdateReplicationSetAction::AddRegionAction.new(
            (AddRegionAction.build(params[:add_region_action], context: "#{context}[:add_region_action]") unless params[:add_region_action].nil?)
          )
        when :delete_region_action
          Types::UpdateReplicationSetAction::DeleteRegionAction.new(
            (DeleteRegionAction.build(params[:delete_region_action], context: "#{context}[:delete_region_action]") unless params[:delete_region_action].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :add_region_action, :delete_region_action set"
        end
      end
    end

    module UpdateReplicationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationSetInput, context: context)
        type = Types::UpdateReplicationSetInput.new
        type.arn = params[:arn]
        type.actions = UpdateActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateReplicationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationSetOutput, context: context)
        type = Types::UpdateReplicationSetOutput.new
        type
      end
    end

    module UpdateResponsePlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResponsePlanInput, context: context)
        type = Types::UpdateResponsePlanInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.arn = params[:arn]
        type.display_name = params[:display_name]
        type.incident_template_title = params[:incident_template_title]
        type.incident_template_impact = params[:incident_template_impact]
        type.incident_template_summary = params[:incident_template_summary]
        type.incident_template_dedupe_string = params[:incident_template_dedupe_string]
        type.incident_template_notification_targets = NotificationTargetSet.build(params[:incident_template_notification_targets], context: "#{context}[:incident_template_notification_targets]") unless params[:incident_template_notification_targets].nil?
        type.chat_channel = ChatChannel.build(params[:chat_channel], context: "#{context}[:chat_channel]") unless params[:chat_channel].nil?
        type.engagements = EngagementSet.build(params[:engagements], context: "#{context}[:engagements]") unless params[:engagements].nil?
        type.actions = ActionsList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module UpdateResponsePlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResponsePlanOutput, context: context)
        type = Types::UpdateResponsePlanOutput.new
        type
      end
    end

    module UpdateTimelineEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTimelineEventInput, context: context)
        type = Types::UpdateTimelineEventInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.incident_record_arn = params[:incident_record_arn]
        type.event_id = params[:event_id]
        type.event_time = params[:event_time]
        type.event_type = params[:event_type]
        type.event_data = params[:event_data]
        type
      end
    end

    module UpdateTimelineEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTimelineEventOutput, context: context)
        type = Types::UpdateTimelineEventOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
