# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Connect
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AgentContactReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentContactReference, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:channel], ::String, context: "#{context}[:channel]")
        Hearth::Validator.validate!(input[:initiation_method], ::String, context: "#{context}[:initiation_method]")
        Hearth::Validator.validate!(input[:agent_contact_state], ::String, context: "#{context}[:agent_contact_state]")
        Hearth::Validator.validate!(input[:state_start_timestamp], ::Time, context: "#{context}[:state_start_timestamp]")
        Hearth::Validator.validate!(input[:connected_to_agent_timestamp], ::Time, context: "#{context}[:connected_to_agent_timestamp]")
        QueueReference.validate!(input[:queue], context: "#{context}[:queue]") unless input[:queue].nil?
      end
    end

    class AgentContactReferenceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentContactReference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AgentInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentInfo, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:connected_to_agent_timestamp], ::Time, context: "#{context}[:connected_to_agent_timestamp]")
      end
    end

    class AgentStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentStatus, context: context)
        Hearth::Validator.validate!(input[:agent_status_arn], ::String, context: "#{context}[:agent_status_arn]")
        Hearth::Validator.validate!(input[:agent_status_id], ::String, context: "#{context}[:agent_status_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:display_order], ::Integer, context: "#{context}[:display_order]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AgentStatusReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentStatusReference, context: context)
        Hearth::Validator.validate!(input[:status_start_timestamp], ::Time, context: "#{context}[:status_start_timestamp]")
        Hearth::Validator.validate!(input[:status_arn], ::String, context: "#{context}[:status_arn]")
      end
    end

    class AgentStatusSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentStatusSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AgentStatusSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentStatusSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AgentStatusTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AnswerMachineDetectionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnswerMachineDetectionConfig, context: context)
        Hearth::Validator.validate!(input[:enable_answer_machine_detection], ::TrueClass, ::FalseClass, context: "#{context}[:enable_answer_machine_detection]")
        Hearth::Validator.validate!(input[:await_answer_machine_prompt], ::TrueClass, ::FalseClass, context: "#{context}[:await_answer_machine_prompt]")
      end
    end

    class AssociateApprovedOriginInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApprovedOriginInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
      end
    end

    class AssociateApprovedOriginOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApprovedOriginOutput, context: context)
      end
    end

    class AssociateBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateBotInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        LexBot.validate!(input[:lex_bot], context: "#{context}[:lex_bot]") unless input[:lex_bot].nil?
        LexV2Bot.validate!(input[:lex_v2_bot], context: "#{context}[:lex_v2_bot]") unless input[:lex_v2_bot].nil?
      end
    end

    class AssociateBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateBotOutput, context: context)
      end
    end

    class AssociateDefaultVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDefaultVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_id], ::String, context: "#{context}[:vocabulary_id]")
      end
    end

    class AssociateDefaultVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDefaultVocabularyOutput, context: context)
      end
    end

    class AssociateInstanceStorageConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateInstanceStorageConfigInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        InstanceStorageConfig.validate!(input[:storage_config], context: "#{context}[:storage_config]") unless input[:storage_config].nil?
      end
    end

    class AssociateInstanceStorageConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateInstanceStorageConfigOutput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class AssociateLambdaFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLambdaFunctionInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
      end
    end

    class AssociateLambdaFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLambdaFunctionOutput, context: context)
      end
    end

    class AssociateLexBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLexBotInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        LexBot.validate!(input[:lex_bot], context: "#{context}[:lex_bot]") unless input[:lex_bot].nil?
      end
    end

    class AssociateLexBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLexBotOutput, context: context)
      end
    end

    class AssociatePhoneNumberContactFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePhoneNumberContactFlowInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
      end
    end

    class AssociatePhoneNumberContactFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePhoneNumberContactFlowOutput, context: context)
      end
    end

    class AssociateQueueQuickConnectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateQueueQuickConnectsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        QuickConnectsList.validate!(input[:quick_connect_ids], context: "#{context}[:quick_connect_ids]") unless input[:quick_connect_ids].nil?
      end
    end

    class AssociateQueueQuickConnectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateQueueQuickConnectsOutput, context: context)
      end
    end

    class AssociateRoutingProfileQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateRoutingProfileQueuesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        RoutingProfileQueueConfigList.validate!(input[:queue_configs], context: "#{context}[:queue_configs]") unless input[:queue_configs].nil?
      end
    end

    class AssociateRoutingProfileQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateRoutingProfileQueuesOutput, context: context)
      end
    end

    class AssociateSecurityKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSecurityKeyInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class AssociateSecurityKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSecurityKeyOutput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class AttachmentReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentReference, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Attribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attribute, context: context)
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AvailableNumberSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailableNumberSummary, context: context)
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:phone_number_country_code], ::String, context: "#{context}[:phone_number_country_code]")
        Hearth::Validator.validate!(input[:phone_number_type], ::String, context: "#{context}[:phone_number_type]")
      end
    end

    class AvailableNumbersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AvailableNumberSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelToCountMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class Channels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ChatMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChatMessage, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class ChatStreamingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChatStreamingConfiguration, context: context)
        Hearth::Validator.validate!(input[:streaming_endpoint_arn], ::String, context: "#{context}[:streaming_endpoint_arn]")
      end
    end

    class ClaimPhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClaimPhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:phone_number_description], ::String, context: "#{context}[:phone_number_description]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class ClaimPhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClaimPhoneNumberOutput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:phone_number_arn], ::String, context: "#{context}[:phone_number_arn]")
      end
    end

    class ClaimedPhoneNumberSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClaimedPhoneNumberSummary, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:phone_number_arn], ::String, context: "#{context}[:phone_number_arn]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:phone_number_country_code], ::String, context: "#{context}[:phone_number_country_code]")
        Hearth::Validator.validate!(input[:phone_number_type], ::String, context: "#{context}[:phone_number_type]")
        Hearth::Validator.validate!(input[:phone_number_description], ::String, context: "#{context}[:phone_number_description]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        PhoneNumberStatus.validate!(input[:phone_number_status], context: "#{context}[:phone_number_status]") unless input[:phone_number_status].nil?
      end
    end

    class Contact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Contact, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:initial_contact_id], ::String, context: "#{context}[:initial_contact_id]")
        Hearth::Validator.validate!(input[:previous_contact_id], ::String, context: "#{context}[:previous_contact_id]")
        Hearth::Validator.validate!(input[:initiation_method], ::String, context: "#{context}[:initiation_method]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:channel], ::String, context: "#{context}[:channel]")
        QueueInfo.validate!(input[:queue_info], context: "#{context}[:queue_info]") unless input[:queue_info].nil?
        AgentInfo.validate!(input[:agent_info], context: "#{context}[:agent_info]") unless input[:agent_info].nil?
        Hearth::Validator.validate!(input[:initiation_timestamp], ::Time, context: "#{context}[:initiation_timestamp]")
        Hearth::Validator.validate!(input[:disconnect_timestamp], ::Time, context: "#{context}[:disconnect_timestamp]")
        Hearth::Validator.validate!(input[:last_update_timestamp], ::Time, context: "#{context}[:last_update_timestamp]")
        Hearth::Validator.validate!(input[:scheduled_timestamp], ::Time, context: "#{context}[:scheduled_timestamp]")
      end
    end

    class ContactFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactFilter, context: context)
        ContactStates.validate!(input[:contact_states], context: "#{context}[:contact_states]") unless input[:contact_states].nil?
      end
    end

    class ContactFlow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactFlow, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ContactFlowModule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactFlowModule, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ContactFlowModuleSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactFlowModuleSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class ContactFlowModulesSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContactFlowModuleSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContactFlowNotPublishedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactFlowNotPublishedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContactFlowSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactFlowSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:contact_flow_type], ::String, context: "#{context}[:contact_flow_type]")
        Hearth::Validator.validate!(input[:contact_flow_state], ::String, context: "#{context}[:contact_flow_state]")
      end
    end

    class ContactFlowSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContactFlowSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContactFlowTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContactNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContactReferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Reference.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ContactStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ControlPlaneTagFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlPlaneTagFilter, context: context)
        TagOrConditionList.validate!(input[:or_conditions], context: "#{context}[:or_conditions]") unless input[:or_conditions].nil?
        TagAndConditionList.validate!(input[:and_conditions], context: "#{context}[:and_conditions]") unless input[:and_conditions].nil?
        TagCondition.validate!(input[:tag_condition], context: "#{context}[:tag_condition]") unless input[:tag_condition].nil?
      end
    end

    class CreateAgentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAgentStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:display_order], ::Integer, context: "#{context}[:display_order]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAgentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAgentStatusOutput, context: context)
        Hearth::Validator.validate!(input[:agent_status_arn], ::String, context: "#{context}[:agent_status_arn]")
        Hearth::Validator.validate!(input[:agent_status_id], ::String, context: "#{context}[:agent_status_id]")
      end
    end

    class CreateContactFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactFlowInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateContactFlowModuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactFlowModuleInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateContactFlowModuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactFlowModuleOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateContactFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactFlowOutput, context: context)
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        Hearth::Validator.validate!(input[:contact_flow_arn], ::String, context: "#{context}[:contact_flow_arn]")
      end
    end

    class CreateHoursOfOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHoursOfOperationInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
        HoursOfOperationConfigList.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateHoursOfOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHoursOfOperationOutput, context: context)
        Hearth::Validator.validate!(input[:hours_of_operation_id], ::String, context: "#{context}[:hours_of_operation_id]")
        Hearth::Validator.validate!(input[:hours_of_operation_arn], ::String, context: "#{context}[:hours_of_operation_arn]")
      end
    end

    class CreateInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:identity_management_type], ::String, context: "#{context}[:identity_management_type]")
        Hearth::Validator.validate!(input[:instance_alias], ::String, context: "#{context}[:instance_alias]")
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:inbound_calls_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:inbound_calls_enabled]")
        Hearth::Validator.validate!(input[:outbound_calls_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:outbound_calls_enabled]")
      end
    end

    class CreateInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateIntegrationAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntegrationAssociationInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:integration_type], ::String, context: "#{context}[:integration_type]")
        Hearth::Validator.validate!(input[:integration_arn], ::String, context: "#{context}[:integration_arn]")
        Hearth::Validator.validate!(input[:source_application_url], ::String, context: "#{context}[:source_application_url]")
        Hearth::Validator.validate!(input[:source_application_name], ::String, context: "#{context}[:source_application_name]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateIntegrationAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntegrationAssociationOutput, context: context)
        Hearth::Validator.validate!(input[:integration_association_id], ::String, context: "#{context}[:integration_association_id]")
        Hearth::Validator.validate!(input[:integration_association_arn], ::String, context: "#{context}[:integration_association_arn]")
      end
    end

    class CreateQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQueueInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        OutboundCallerConfig.validate!(input[:outbound_caller_config], context: "#{context}[:outbound_caller_config]") unless input[:outbound_caller_config].nil?
        Hearth::Validator.validate!(input[:hours_of_operation_id], ::String, context: "#{context}[:hours_of_operation_id]")
        Hearth::Validator.validate!(input[:max_contacts], ::Integer, context: "#{context}[:max_contacts]")
        QuickConnectsList.validate!(input[:quick_connect_ids], context: "#{context}[:quick_connect_ids]") unless input[:quick_connect_ids].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQueueOutput, context: context)
        Hearth::Validator.validate!(input[:queue_arn], ::String, context: "#{context}[:queue_arn]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
      end
    end

    class CreateQuickConnectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQuickConnectInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        QuickConnectConfig.validate!(input[:quick_connect_config], context: "#{context}[:quick_connect_config]") unless input[:quick_connect_config].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateQuickConnectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQuickConnectOutput, context: context)
        Hearth::Validator.validate!(input[:quick_connect_arn], ::String, context: "#{context}[:quick_connect_arn]")
        Hearth::Validator.validate!(input[:quick_connect_id], ::String, context: "#{context}[:quick_connect_id]")
      end
    end

    class CreateRoutingProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoutingProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_outbound_queue_id], ::String, context: "#{context}[:default_outbound_queue_id]")
        RoutingProfileQueueConfigList.validate!(input[:queue_configs], context: "#{context}[:queue_configs]") unless input[:queue_configs].nil?
        MediaConcurrencies.validate!(input[:media_concurrencies], context: "#{context}[:media_concurrencies]") unless input[:media_concurrencies].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRoutingProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoutingProfileOutput, context: context)
        Hearth::Validator.validate!(input[:routing_profile_arn], ::String, context: "#{context}[:routing_profile_arn]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
      end
    end

    class CreateSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PermissionsList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecurityProfileOutput, context: context)
        Hearth::Validator.validate!(input[:security_profile_id], ::String, context: "#{context}[:security_profile_id]")
        Hearth::Validator.validate!(input[:security_profile_arn], ::String, context: "#{context}[:security_profile_arn]")
      end
    end

    class CreateTaskTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTaskTemplateInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        TaskTemplateConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        TaskTemplateDefaults.validate!(input[:defaults], context: "#{context}[:defaults]") unless input[:defaults].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TaskTemplateFields.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateTaskTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTaskTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateUseCaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUseCaseInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:integration_association_id], ::String, context: "#{context}[:integration_association_id]")
        Hearth::Validator.validate!(input[:use_case_type], ::String, context: "#{context}[:use_case_type]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUseCaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUseCaseOutput, context: context)
        Hearth::Validator.validate!(input[:use_case_id], ::String, context: "#{context}[:use_case_id]")
        Hearth::Validator.validate!(input[:use_case_arn], ::String, context: "#{context}[:use_case_arn]")
      end
    end

    class CreateUserHierarchyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserHierarchyGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:parent_group_id], ::String, context: "#{context}[:parent_group_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUserHierarchyGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserHierarchyGroupOutput, context: context)
        Hearth::Validator.validate!(input[:hierarchy_group_id], ::String, context: "#{context}[:hierarchy_group_id]")
        Hearth::Validator.validate!(input[:hierarchy_group_arn], ::String, context: "#{context}[:hierarchy_group_arn]")
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        UserIdentityInfo.validate!(input[:identity_info], context: "#{context}[:identity_info]") unless input[:identity_info].nil?
        UserPhoneConfig.validate!(input[:phone_config], context: "#{context}[:phone_config]") unless input[:phone_config].nil?
        Hearth::Validator.validate!(input[:directory_user_id], ::String, context: "#{context}[:directory_user_id]")
        SecurityProfileIds.validate!(input[:security_profile_ids], context: "#{context}[:security_profile_ids]") unless input[:security_profile_ids].nil?
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        Hearth::Validator.validate!(input[:hierarchy_group_id], ::String, context: "#{context}[:hierarchy_group_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class CreateVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVocabularyOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_arn], ::String, context: "#{context}[:vocabulary_arn]")
        Hearth::Validator.validate!(input[:vocabulary_id], ::String, context: "#{context}[:vocabulary_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class Credentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Credentials, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:access_token_expiration], ::Time, context: "#{context}[:access_token_expiration]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
        Hearth::Validator.validate!(input[:refresh_token_expiration], ::Time, context: "#{context}[:refresh_token_expiration]")
      end
    end

    class CurrentMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CurrentMetric, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class CurrentMetricData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CurrentMetricData, context: context)
        CurrentMetric.validate!(input[:metric], context: "#{context}[:metric]") unless input[:metric].nil?
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class CurrentMetricDataCollections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CurrentMetricData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CurrentMetricResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CurrentMetricResult, context: context)
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        CurrentMetricDataCollections.validate!(input[:collections], context: "#{context}[:collections]") unless input[:collections].nil?
      end
    end

    class CurrentMetricResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CurrentMetricResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CurrentMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CurrentMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DateReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateReference, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class DefaultVocabulary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultVocabulary, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_id], ::String, context: "#{context}[:vocabulary_id]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
      end
    end

    class DefaultVocabularyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DefaultVocabulary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteContactFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactFlowInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
      end
    end

    class DeleteContactFlowModuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactFlowModuleInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_module_id], ::String, context: "#{context}[:contact_flow_module_id]")
      end
    end

    class DeleteContactFlowModuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactFlowModuleOutput, context: context)
      end
    end

    class DeleteContactFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactFlowOutput, context: context)
      end
    end

    class DeleteHoursOfOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHoursOfOperationInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:hours_of_operation_id], ::String, context: "#{context}[:hours_of_operation_id]")
      end
    end

    class DeleteHoursOfOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHoursOfOperationOutput, context: context)
      end
    end

    class DeleteInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DeleteInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceOutput, context: context)
      end
    end

    class DeleteIntegrationAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationAssociationInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:integration_association_id], ::String, context: "#{context}[:integration_association_id]")
      end
    end

    class DeleteIntegrationAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationAssociationOutput, context: context)
      end
    end

    class DeleteQuickConnectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQuickConnectInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:quick_connect_id], ::String, context: "#{context}[:quick_connect_id]")
      end
    end

    class DeleteQuickConnectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQuickConnectOutput, context: context)
      end
    end

    class DeleteSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:security_profile_id], ::String, context: "#{context}[:security_profile_id]")
      end
    end

    class DeleteSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSecurityProfileOutput, context: context)
      end
    end

    class DeleteTaskTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTaskTemplateInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:task_template_id], ::String, context: "#{context}[:task_template_id]")
      end
    end

    class DeleteTaskTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTaskTemplateOutput, context: context)
      end
    end

    class DeleteUseCaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUseCaseInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:integration_association_id], ::String, context: "#{context}[:integration_association_id]")
        Hearth::Validator.validate!(input[:use_case_id], ::String, context: "#{context}[:use_case_id]")
      end
    end

    class DeleteUseCaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUseCaseOutput, context: context)
      end
    end

    class DeleteUserHierarchyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserHierarchyGroupInput, context: context)
        Hearth::Validator.validate!(input[:hierarchy_group_id], ::String, context: "#{context}[:hierarchy_group_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DeleteUserHierarchyGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserHierarchyGroupOutput, context: context)
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
      end
    end

    class DeleteVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:vocabulary_id], ::String, context: "#{context}[:vocabulary_id]")
      end
    end

    class DeleteVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVocabularyOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_arn], ::String, context: "#{context}[:vocabulary_arn]")
        Hearth::Validator.validate!(input[:vocabulary_id], ::String, context: "#{context}[:vocabulary_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DescribeAgentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAgentStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:agent_status_id], ::String, context: "#{context}[:agent_status_id]")
      end
    end

    class DescribeAgentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAgentStatusOutput, context: context)
        AgentStatus.validate!(input[:agent_status], context: "#{context}[:agent_status]") unless input[:agent_status].nil?
      end
    end

    class DescribeContactFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContactFlowInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
      end
    end

    class DescribeContactFlowModuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContactFlowModuleInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_module_id], ::String, context: "#{context}[:contact_flow_module_id]")
      end
    end

    class DescribeContactFlowModuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContactFlowModuleOutput, context: context)
        ContactFlowModule.validate!(input[:contact_flow_module], context: "#{context}[:contact_flow_module]") unless input[:contact_flow_module].nil?
      end
    end

    class DescribeContactFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContactFlowOutput, context: context)
        ContactFlow.validate!(input[:contact_flow], context: "#{context}[:contact_flow]") unless input[:contact_flow].nil?
      end
    end

    class DescribeContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContactInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
      end
    end

    class DescribeContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContactOutput, context: context)
        Contact.validate!(input[:contact], context: "#{context}[:contact]") unless input[:contact].nil?
      end
    end

    class DescribeHoursOfOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHoursOfOperationInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:hours_of_operation_id], ::String, context: "#{context}[:hours_of_operation_id]")
      end
    end

    class DescribeHoursOfOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHoursOfOperationOutput, context: context)
        HoursOfOperation.validate!(input[:hours_of_operation], context: "#{context}[:hours_of_operation]") unless input[:hours_of_operation].nil?
      end
    end

    class DescribeInstanceAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceAttributeInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
      end
    end

    class DescribeInstanceAttributeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceAttributeOutput, context: context)
        Attribute.validate!(input[:attribute], context: "#{context}[:attribute]") unless input[:attribute].nil?
      end
    end

    class DescribeInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DescribeInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceOutput, context: context)
        Instance.validate!(input[:instance], context: "#{context}[:instance]") unless input[:instance].nil?
      end
    end

    class DescribeInstanceStorageConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceStorageConfigInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class DescribeInstanceStorageConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceStorageConfigOutput, context: context)
        InstanceStorageConfig.validate!(input[:storage_config], context: "#{context}[:storage_config]") unless input[:storage_config].nil?
      end
    end

    class DescribePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
      end
    end

    class DescribePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePhoneNumberOutput, context: context)
        ClaimedPhoneNumberSummary.validate!(input[:claimed_phone_number_summary], context: "#{context}[:claimed_phone_number_summary]") unless input[:claimed_phone_number_summary].nil?
      end
    end

    class DescribeQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQueueInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
      end
    end

    class DescribeQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQueueOutput, context: context)
        Queue.validate!(input[:queue], context: "#{context}[:queue]") unless input[:queue].nil?
      end
    end

    class DescribeQuickConnectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQuickConnectInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:quick_connect_id], ::String, context: "#{context}[:quick_connect_id]")
      end
    end

    class DescribeQuickConnectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQuickConnectOutput, context: context)
        QuickConnect.validate!(input[:quick_connect], context: "#{context}[:quick_connect]") unless input[:quick_connect].nil?
      end
    end

    class DescribeRoutingProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRoutingProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
      end
    end

    class DescribeRoutingProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRoutingProfileOutput, context: context)
        RoutingProfile.validate!(input[:routing_profile], context: "#{context}[:routing_profile]") unless input[:routing_profile].nil?
      end
    end

    class DescribeSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_id], ::String, context: "#{context}[:security_profile_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DescribeSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityProfileOutput, context: context)
        SecurityProfile.validate!(input[:security_profile], context: "#{context}[:security_profile]") unless input[:security_profile].nil?
      end
    end

    class DescribeUserHierarchyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserHierarchyGroupInput, context: context)
        Hearth::Validator.validate!(input[:hierarchy_group_id], ::String, context: "#{context}[:hierarchy_group_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DescribeUserHierarchyGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserHierarchyGroupOutput, context: context)
        HierarchyGroup.validate!(input[:hierarchy_group], context: "#{context}[:hierarchy_group]") unless input[:hierarchy_group].nil?
      end
    end

    class DescribeUserHierarchyStructureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserHierarchyStructureInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DescribeUserHierarchyStructureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserHierarchyStructureOutput, context: context)
        HierarchyStructure.validate!(input[:hierarchy_structure], context: "#{context}[:hierarchy_structure]") unless input[:hierarchy_structure].nil?
      end
    end

    class DescribeUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DescribeUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class DescribeVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:vocabulary_id], ::String, context: "#{context}[:vocabulary_id]")
      end
    end

    class DescribeVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVocabularyOutput, context: context)
        Vocabulary.validate!(input[:vocabulary], context: "#{context}[:vocabulary]") unless input[:vocabulary].nil?
      end
    end

    class DestinationNotAllowedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationNotAllowedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Dimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dimensions, context: context)
        QueueReference.validate!(input[:queue], context: "#{context}[:queue]") unless input[:queue].nil?
        Hearth::Validator.validate!(input[:channel], ::String, context: "#{context}[:channel]")
      end
    end

    class DisassociateApprovedOriginInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApprovedOriginInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
      end
    end

    class DisassociateApprovedOriginOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApprovedOriginOutput, context: context)
      end
    end

    class DisassociateBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateBotInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        LexBot.validate!(input[:lex_bot], context: "#{context}[:lex_bot]") unless input[:lex_bot].nil?
        LexV2Bot.validate!(input[:lex_v2_bot], context: "#{context}[:lex_v2_bot]") unless input[:lex_v2_bot].nil?
      end
    end

    class DisassociateBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateBotOutput, context: context)
      end
    end

    class DisassociateInstanceStorageConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateInstanceStorageConfigInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class DisassociateInstanceStorageConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateInstanceStorageConfigOutput, context: context)
      end
    end

    class DisassociateLambdaFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLambdaFunctionInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
      end
    end

    class DisassociateLambdaFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLambdaFunctionOutput, context: context)
      end
    end

    class DisassociateLexBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLexBotInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:lex_region], ::String, context: "#{context}[:lex_region]")
      end
    end

    class DisassociateLexBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLexBotOutput, context: context)
      end
    end

    class DisassociatePhoneNumberContactFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePhoneNumberContactFlowInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DisassociatePhoneNumberContactFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePhoneNumberContactFlowOutput, context: context)
      end
    end

    class DisassociateQueueQuickConnectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateQueueQuickConnectsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        QuickConnectsList.validate!(input[:quick_connect_ids], context: "#{context}[:quick_connect_ids]") unless input[:quick_connect_ids].nil?
      end
    end

    class DisassociateQueueQuickConnectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateQueueQuickConnectsOutput, context: context)
      end
    end

    class DisassociateRoutingProfileQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateRoutingProfileQueuesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        RoutingProfileQueueReferenceList.validate!(input[:queue_references], context: "#{context}[:queue_references]") unless input[:queue_references].nil?
      end
    end

    class DisassociateRoutingProfileQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateRoutingProfileQueuesOutput, context: context)
      end
    end

    class DisassociateSecurityKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSecurityKeyInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class DisassociateSecurityKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSecurityKeyOutput, context: context)
      end
    end

    class DuplicateResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EmailReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailReference, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class EncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfig, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filters, context: context)
        Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        Channels.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
      end
    end

    class FunctionArnsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetContactAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactAttributesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:initial_contact_id], ::String, context: "#{context}[:initial_contact_id]")
      end
    end

    class GetContactAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactAttributesOutput, context: context)
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class GetCurrentMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCurrentMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Groupings.validate!(input[:groupings], context: "#{context}[:groupings]") unless input[:groupings].nil?
        CurrentMetrics.validate!(input[:current_metrics], context: "#{context}[:current_metrics]") unless input[:current_metrics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetCurrentMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCurrentMetricDataOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CurrentMetricResults.validate!(input[:metric_results], context: "#{context}[:metric_results]") unless input[:metric_results].nil?
        Hearth::Validator.validate!(input[:data_snapshot_time], ::Time, context: "#{context}[:data_snapshot_time]")
      end
    end

    class GetCurrentUserDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCurrentUserDataInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        UserDataFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetCurrentUserDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCurrentUserDataOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        UserDataList.validate!(input[:user_data_list], context: "#{context}[:user_data_list]") unless input[:user_data_list].nil?
      end
    end

    class GetFederationTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFederationTokenInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class GetFederationTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFederationTokenOutput, context: context)
        Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
      end
    end

    class GetMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Groupings.validate!(input[:groupings], context: "#{context}[:groupings]") unless input[:groupings].nil?
        HistoricalMetrics.validate!(input[:historical_metrics], context: "#{context}[:historical_metrics]") unless input[:historical_metrics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricDataOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        HistoricalMetricResults.validate!(input[:metric_results], context: "#{context}[:metric_results]") unless input[:metric_results].nil?
      end
    end

    class GetTaskTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTaskTemplateInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:task_template_id], ::String, context: "#{context}[:task_template_id]")
        Hearth::Validator.validate!(input[:snapshot_version], ::String, context: "#{context}[:snapshot_version]")
      end
    end

    class GetTaskTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTaskTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        TaskTemplateConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        TaskTemplateDefaults.validate!(input[:defaults], context: "#{context}[:defaults]") unless input[:defaults].nil?
        TaskTemplateFields.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Groupings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HierarchyGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyGroup, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:level_id], ::String, context: "#{context}[:level_id]")
        HierarchyPath.validate!(input[:hierarchy_path], context: "#{context}[:hierarchy_path]") unless input[:hierarchy_path].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class HierarchyGroupCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyGroupCondition, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:hierarchy_group_match_type], ::String, context: "#{context}[:hierarchy_group_match_type]")
      end
    end

    class HierarchyGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyGroupSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class HierarchyGroupSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HierarchyGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HierarchyGroupSummaryReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyGroupSummaryReference, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class HierarchyLevel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyLevel, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class HierarchyLevelUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyLevelUpdate, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class HierarchyPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyPath, context: context)
        HierarchyGroupSummary.validate!(input[:level_one], context: "#{context}[:level_one]") unless input[:level_one].nil?
        HierarchyGroupSummary.validate!(input[:level_two], context: "#{context}[:level_two]") unless input[:level_two].nil?
        HierarchyGroupSummary.validate!(input[:level_three], context: "#{context}[:level_three]") unless input[:level_three].nil?
        HierarchyGroupSummary.validate!(input[:level_four], context: "#{context}[:level_four]") unless input[:level_four].nil?
        HierarchyGroupSummary.validate!(input[:level_five], context: "#{context}[:level_five]") unless input[:level_five].nil?
      end
    end

    class HierarchyPathReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyPathReference, context: context)
        HierarchyGroupSummaryReference.validate!(input[:level_one], context: "#{context}[:level_one]") unless input[:level_one].nil?
        HierarchyGroupSummaryReference.validate!(input[:level_two], context: "#{context}[:level_two]") unless input[:level_two].nil?
        HierarchyGroupSummaryReference.validate!(input[:level_three], context: "#{context}[:level_three]") unless input[:level_three].nil?
        HierarchyGroupSummaryReference.validate!(input[:level_four], context: "#{context}[:level_four]") unless input[:level_four].nil?
        HierarchyGroupSummaryReference.validate!(input[:level_five], context: "#{context}[:level_five]") unless input[:level_five].nil?
      end
    end

    class HierarchyStructure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyStructure, context: context)
        HierarchyLevel.validate!(input[:level_one], context: "#{context}[:level_one]") unless input[:level_one].nil?
        HierarchyLevel.validate!(input[:level_two], context: "#{context}[:level_two]") unless input[:level_two].nil?
        HierarchyLevel.validate!(input[:level_three], context: "#{context}[:level_three]") unless input[:level_three].nil?
        HierarchyLevel.validate!(input[:level_four], context: "#{context}[:level_four]") unless input[:level_four].nil?
        HierarchyLevel.validate!(input[:level_five], context: "#{context}[:level_five]") unless input[:level_five].nil?
      end
    end

    class HierarchyStructureUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyStructureUpdate, context: context)
        HierarchyLevelUpdate.validate!(input[:level_one], context: "#{context}[:level_one]") unless input[:level_one].nil?
        HierarchyLevelUpdate.validate!(input[:level_two], context: "#{context}[:level_two]") unless input[:level_two].nil?
        HierarchyLevelUpdate.validate!(input[:level_three], context: "#{context}[:level_three]") unless input[:level_three].nil?
        HierarchyLevelUpdate.validate!(input[:level_four], context: "#{context}[:level_four]") unless input[:level_four].nil?
        HierarchyLevelUpdate.validate!(input[:level_five], context: "#{context}[:level_five]") unless input[:level_five].nil?
      end
    end

    class HistoricalMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HistoricalMetric, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Threshold.validate!(input[:threshold], context: "#{context}[:threshold]") unless input[:threshold].nil?
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class HistoricalMetricData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HistoricalMetricData, context: context)
        HistoricalMetric.validate!(input[:metric], context: "#{context}[:metric]") unless input[:metric].nil?
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class HistoricalMetricDataCollections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HistoricalMetricData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HistoricalMetricResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HistoricalMetricResult, context: context)
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        HistoricalMetricDataCollections.validate!(input[:collections], context: "#{context}[:collections]") unless input[:collections].nil?
      end
    end

    class HistoricalMetricResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HistoricalMetricResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HistoricalMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HistoricalMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HoursOfOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HoursOfOperation, context: context)
        Hearth::Validator.validate!(input[:hours_of_operation_id], ::String, context: "#{context}[:hours_of_operation_id]")
        Hearth::Validator.validate!(input[:hours_of_operation_arn], ::String, context: "#{context}[:hours_of_operation_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
        HoursOfOperationConfigList.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class HoursOfOperationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HoursOfOperationConfig, context: context)
        Hearth::Validator.validate!(input[:day], ::String, context: "#{context}[:day]")
        HoursOfOperationTimeSlice.validate!(input[:start_time], context: "#{context}[:start_time]") unless input[:start_time].nil?
        HoursOfOperationTimeSlice.validate!(input[:end_time], context: "#{context}[:end_time]") unless input[:end_time].nil?
      end
    end

    class HoursOfOperationConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HoursOfOperationConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HoursOfOperationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HoursOfOperationSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class HoursOfOperationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HoursOfOperationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HoursOfOperationTimeSlice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HoursOfOperationTimeSlice, context: context)
        Hearth::Validator.validate!(input[:hours], ::Integer, context: "#{context}[:hours]")
        Hearth::Validator.validate!(input[:minutes], ::Integer, context: "#{context}[:minutes]")
      end
    end

    class IdempotencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:identity_management_type], ::String, context: "#{context}[:identity_management_type]")
        Hearth::Validator.validate!(input[:instance_alias], ::String, context: "#{context}[:instance_alias]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:instance_status], ::String, context: "#{context}[:instance_status]")
        InstanceStatusReason.validate!(input[:status_reason], context: "#{context}[:status_reason]") unless input[:status_reason].nil?
        Hearth::Validator.validate!(input[:inbound_calls_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:inbound_calls_enabled]")
        Hearth::Validator.validate!(input[:outbound_calls_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:outbound_calls_enabled]")
      end
    end

    class InstanceStatusReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceStatusReason, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceStorageConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceStorageConfig, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        S3Config.validate!(input[:s3_config], context: "#{context}[:s3_config]") unless input[:s3_config].nil?
        KinesisVideoStreamConfig.validate!(input[:kinesis_video_stream_config], context: "#{context}[:kinesis_video_stream_config]") unless input[:kinesis_video_stream_config].nil?
        KinesisStreamConfig.validate!(input[:kinesis_stream_config], context: "#{context}[:kinesis_stream_config]") unless input[:kinesis_stream_config].nil?
        KinesisFirehoseConfig.validate!(input[:kinesis_firehose_config], context: "#{context}[:kinesis_firehose_config]") unless input[:kinesis_firehose_config].nil?
      end
    end

    class InstanceStorageConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceStorageConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:identity_management_type], ::String, context: "#{context}[:identity_management_type]")
        Hearth::Validator.validate!(input[:instance_alias], ::String, context: "#{context}[:instance_alias]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:instance_status], ::String, context: "#{context}[:instance_status]")
        Hearth::Validator.validate!(input[:inbound_calls_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:inbound_calls_enabled]")
        Hearth::Validator.validate!(input[:outbound_calls_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:outbound_calls_enabled]")
      end
    end

    class InstanceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntegrationAssociationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegrationAssociationSummary, context: context)
        Hearth::Validator.validate!(input[:integration_association_id], ::String, context: "#{context}[:integration_association_id]")
        Hearth::Validator.validate!(input[:integration_association_arn], ::String, context: "#{context}[:integration_association_arn]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:integration_type], ::String, context: "#{context}[:integration_type]")
        Hearth::Validator.validate!(input[:integration_arn], ::String, context: "#{context}[:integration_arn]")
        Hearth::Validator.validate!(input[:source_application_url], ::String, context: "#{context}[:source_application_url]")
        Hearth::Validator.validate!(input[:source_application_name], ::String, context: "#{context}[:source_application_name]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
      end
    end

    class IntegrationAssociationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IntegrationAssociationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidContactFlowException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidContactFlowException, context: context)
        Problems.validate!(input[:problems], context: "#{context}[:problems]") unless input[:problems].nil?
      end
    end

    class InvalidContactFlowModuleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidContactFlowModuleException, context: context)
        Problems.validate!(input[:problems], context: "#{context}[:problems]") unless input[:problems].nil?
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvisibleFieldInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvisibleFieldInfo, context: context)
        TaskTemplateFieldIdentifier.validate!(input[:id], context: "#{context}[:id]") unless input[:id].nil?
      end
    end

    class InvisibleTaskTemplateFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InvisibleFieldInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KinesisFirehoseConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseConfig, context: context)
        Hearth::Validator.validate!(input[:firehose_arn], ::String, context: "#{context}[:firehose_arn]")
      end
    end

    class KinesisStreamConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamConfig, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class KinesisVideoStreamConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisVideoStreamConfig, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:retention_period_hours], ::Integer, context: "#{context}[:retention_period_hours]")
        EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
      end
    end

    class LexBot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LexBot, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:lex_region], ::String, context: "#{context}[:lex_region]")
      end
    end

    class LexBotConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LexBotConfig, context: context)
        LexBot.validate!(input[:lex_bot], context: "#{context}[:lex_bot]") unless input[:lex_bot].nil?
        LexV2Bot.validate!(input[:lex_v2_bot], context: "#{context}[:lex_v2_bot]") unless input[:lex_v2_bot].nil?
      end
    end

    class LexBotConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LexBotConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LexBotsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LexBot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LexV2Bot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LexV2Bot, context: context)
        Hearth::Validator.validate!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAgentStatusesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAgentStatusesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        AgentStatusTypes.validate!(input[:agent_status_types], context: "#{context}[:agent_status_types]") unless input[:agent_status_types].nil?
      end
    end

    class ListAgentStatusesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAgentStatusesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        AgentStatusSummaryList.validate!(input[:agent_status_summary_list], context: "#{context}[:agent_status_summary_list]") unless input[:agent_status_summary_list].nil?
      end
    end

    class ListApprovedOriginsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApprovedOriginsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListApprovedOriginsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApprovedOriginsOutput, context: context)
        OriginsList.validate!(input[:origins], context: "#{context}[:origins]") unless input[:origins].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:lex_version], ::String, context: "#{context}[:lex_version]")
      end
    end

    class ListBotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotsOutput, context: context)
        LexBotConfigList.validate!(input[:lex_bots], context: "#{context}[:lex_bots]") unless input[:lex_bots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContactFlowModulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactFlowModulesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:contact_flow_module_state], ::String, context: "#{context}[:contact_flow_module_state]")
      end
    end

    class ListContactFlowModulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactFlowModulesOutput, context: context)
        ContactFlowModulesSummaryList.validate!(input[:contact_flow_modules_summary_list], context: "#{context}[:contact_flow_modules_summary_list]") unless input[:contact_flow_modules_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContactFlowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactFlowsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        ContactFlowTypes.validate!(input[:contact_flow_types], context: "#{context}[:contact_flow_types]") unless input[:contact_flow_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListContactFlowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactFlowsOutput, context: context)
        ContactFlowSummaryList.validate!(input[:contact_flow_summary_list], context: "#{context}[:contact_flow_summary_list]") unless input[:contact_flow_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContactReferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactReferencesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        ReferenceTypes.validate!(input[:reference_types], context: "#{context}[:reference_types]") unless input[:reference_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContactReferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactReferencesOutput, context: context)
        ReferenceSummaryList.validate!(input[:reference_summary_list], context: "#{context}[:reference_summary_list]") unless input[:reference_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDefaultVocabulariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDefaultVocabulariesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDefaultVocabulariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDefaultVocabulariesOutput, context: context)
        DefaultVocabularyList.validate!(input[:default_vocabulary_list], context: "#{context}[:default_vocabulary_list]") unless input[:default_vocabulary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHoursOfOperationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHoursOfOperationsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListHoursOfOperationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHoursOfOperationsOutput, context: context)
        HoursOfOperationSummaryList.validate!(input[:hours_of_operation_summary_list], context: "#{context}[:hours_of_operation_summary_list]") unless input[:hours_of_operation_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInstanceAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceAttributesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListInstanceAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceAttributesOutput, context: context)
        AttributesList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInstanceStorageConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceStorageConfigsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListInstanceStorageConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceStorageConfigsOutput, context: context)
        InstanceStorageConfigs.validate!(input[:storage_configs], context: "#{context}[:storage_configs]") unless input[:storage_configs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstancesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstancesOutput, context: context)
        InstanceSummaryList.validate!(input[:instance_summary_list], context: "#{context}[:instance_summary_list]") unless input[:instance_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIntegrationAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIntegrationAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:integration_type], ::String, context: "#{context}[:integration_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListIntegrationAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIntegrationAssociationsOutput, context: context)
        IntegrationAssociationSummaryList.validate!(input[:integration_association_summary_list], context: "#{context}[:integration_association_summary_list]") unless input[:integration_association_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLambdaFunctionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLambdaFunctionsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLambdaFunctionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLambdaFunctionsOutput, context: context)
        FunctionArnsList.validate!(input[:lambda_functions], context: "#{context}[:lambda_functions]") unless input[:lambda_functions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLexBotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLexBotsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLexBotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLexBotsOutput, context: context)
        LexBotsList.validate!(input[:lex_bots], context: "#{context}[:lex_bots]") unless input[:lex_bots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPhoneNumbersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumbersInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        PhoneNumberTypes.validate!(input[:phone_number_types], context: "#{context}[:phone_number_types]") unless input[:phone_number_types].nil?
        PhoneNumberCountryCodes.validate!(input[:phone_number_country_codes], context: "#{context}[:phone_number_country_codes]") unless input[:phone_number_country_codes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPhoneNumbersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumbersOutput, context: context)
        PhoneNumberSummaryList.validate!(input[:phone_number_summary_list], context: "#{context}[:phone_number_summary_list]") unless input[:phone_number_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPhoneNumbersSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumbersSummary, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:phone_number_arn], ::String, context: "#{context}[:phone_number_arn]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:phone_number_country_code], ::String, context: "#{context}[:phone_number_country_code]")
        Hearth::Validator.validate!(input[:phone_number_type], ::String, context: "#{context}[:phone_number_type]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class ListPhoneNumbersSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListPhoneNumbersSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListPhoneNumbersV2Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumbersV2Input, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        PhoneNumberCountryCodes.validate!(input[:phone_number_country_codes], context: "#{context}[:phone_number_country_codes]") unless input[:phone_number_country_codes].nil?
        PhoneNumberTypes.validate!(input[:phone_number_types], context: "#{context}[:phone_number_types]") unless input[:phone_number_types].nil?
        Hearth::Validator.validate!(input[:phone_number_prefix], ::String, context: "#{context}[:phone_number_prefix]")
      end
    end

    class ListPhoneNumbersV2Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumbersV2Output, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ListPhoneNumbersSummaryList.validate!(input[:list_phone_numbers_summary_list], context: "#{context}[:list_phone_numbers_summary_list]") unless input[:list_phone_numbers_summary_list].nil?
      end
    end

    class ListPromptsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPromptsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPromptsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPromptsOutput, context: context)
        PromptSummaryList.validate!(input[:prompt_summary_list], context: "#{context}[:prompt_summary_list]") unless input[:prompt_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListQueueQuickConnectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueueQuickConnectsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListQueueQuickConnectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueueQuickConnectsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        QuickConnectSummaryList.validate!(input[:quick_connect_summary_list], context: "#{context}[:quick_connect_summary_list]") unless input[:quick_connect_summary_list].nil?
      end
    end

    class ListQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueuesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        QueueTypes.validate!(input[:queue_types], context: "#{context}[:queue_types]") unless input[:queue_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueuesOutput, context: context)
        QueueSummaryList.validate!(input[:queue_summary_list], context: "#{context}[:queue_summary_list]") unless input[:queue_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListQuickConnectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQuickConnectsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        QuickConnectTypes.validate!(input[:quick_connect_types], context: "#{context}[:quick_connect_types]") unless input[:quick_connect_types].nil?
      end
    end

    class ListQuickConnectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQuickConnectsOutput, context: context)
        QuickConnectSummaryList.validate!(input[:quick_connect_summary_list], context: "#{context}[:quick_connect_summary_list]") unless input[:quick_connect_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoutingProfileQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutingProfileQueuesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRoutingProfileQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutingProfileQueuesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        RoutingProfileQueueConfigSummaryList.validate!(input[:routing_profile_queue_config_summary_list], context: "#{context}[:routing_profile_queue_config_summary_list]") unless input[:routing_profile_queue_config_summary_list].nil?
      end
    end

    class ListRoutingProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutingProfilesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRoutingProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutingProfilesOutput, context: context)
        RoutingProfileSummaryList.validate!(input[:routing_profile_summary_list], context: "#{context}[:routing_profile_summary_list]") unless input[:routing_profile_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSecurityKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityKeysInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSecurityKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityKeysOutput, context: context)
        SecurityKeysList.validate!(input[:security_keys], context: "#{context}[:security_keys]") unless input[:security_keys].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSecurityProfilePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityProfilePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:security_profile_id], ::String, context: "#{context}[:security_profile_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSecurityProfilePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityProfilePermissionsOutput, context: context)
        PermissionsList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSecurityProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityProfilesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSecurityProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityProfilesOutput, context: context)
        SecurityProfileSummaryList.validate!(input[:security_profile_summary_list], context: "#{context}[:security_profile_summary_list]") unless input[:security_profile_summary_list].nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTaskTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTaskTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ListTaskTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTaskTemplatesOutput, context: context)
        TaskTemplateList.validate!(input[:task_templates], context: "#{context}[:task_templates]") unless input[:task_templates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUseCasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUseCasesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:integration_association_id], ::String, context: "#{context}[:integration_association_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUseCasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUseCasesOutput, context: context)
        UseCaseSummaryList.validate!(input[:use_case_summary_list], context: "#{context}[:use_case_summary_list]") unless input[:use_case_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUserHierarchyGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserHierarchyGroupsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUserHierarchyGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserHierarchyGroupsOutput, context: context)
        HierarchyGroupSummaryList.validate!(input[:user_hierarchy_group_summary_list], context: "#{context}[:user_hierarchy_group_summary_list]") unless input[:user_hierarchy_group_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersOutput, context: context)
        UserSummaryList.validate!(input[:user_summary_list], context: "#{context}[:user_summary_list]") unless input[:user_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MediaConcurrencies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaConcurrency.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MediaConcurrency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaConcurrency, context: context)
        Hearth::Validator.validate!(input[:channel], ::String, context: "#{context}[:channel]")
        Hearth::Validator.validate!(input[:concurrency], ::Integer, context: "#{context}[:concurrency]")
      end
    end

    class NumberReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberReference, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class OriginsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OutboundCallerConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutboundCallerConfig, context: context)
        Hearth::Validator.validate!(input[:outbound_caller_id_name], ::String, context: "#{context}[:outbound_caller_id_name]")
        Hearth::Validator.validate!(input[:outbound_caller_id_number_id], ::String, context: "#{context}[:outbound_caller_id_number_id]")
        Hearth::Validator.validate!(input[:outbound_flow_id], ::String, context: "#{context}[:outbound_flow_id]")
      end
    end

    class OutboundContactNotPermittedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutboundContactNotPermittedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParticipantDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParticipantDetails, context: context)
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class PermissionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PhoneNumberCountryCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PhoneNumberQuickConnectConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberQuickConnectConfig, context: context)
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
      end
    end

    class PhoneNumberStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PhoneNumberSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:phone_number_type], ::String, context: "#{context}[:phone_number_type]")
        Hearth::Validator.validate!(input[:phone_number_country_code], ::String, context: "#{context}[:phone_number_country_code]")
      end
    end

    class PhoneNumberSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhoneNumberSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhoneNumberTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProblemDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProblemDetail, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Problems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProblemDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PromptSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PromptSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class PromptSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PromptSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PropertyValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        PropertyValidationExceptionPropertyList.validate!(input[:property_list], context: "#{context}[:property_list]") unless input[:property_list].nil?
      end
    end

    class PropertyValidationExceptionProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyValidationExceptionProperty, context: context)
        Hearth::Validator.validate!(input[:property_path], ::String, context: "#{context}[:property_path]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PropertyValidationExceptionPropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PropertyValidationExceptionProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutUserStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutUserStatusInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:agent_status_id], ::String, context: "#{context}[:agent_status_id]")
      end
    end

    class PutUserStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutUserStatusOutput, context: context)
      end
    end

    class Queue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Queue, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:queue_arn], ::String, context: "#{context}[:queue_arn]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        OutboundCallerConfig.validate!(input[:outbound_caller_config], context: "#{context}[:outbound_caller_config]") unless input[:outbound_caller_config].nil?
        Hearth::Validator.validate!(input[:hours_of_operation_id], ::String, context: "#{context}[:hours_of_operation_id]")
        Hearth::Validator.validate!(input[:max_contacts], ::Integer, context: "#{context}[:max_contacts]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class QueueInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueueInfo, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:enqueue_timestamp], ::Time, context: "#{context}[:enqueue_timestamp]")
      end
    end

    class QueueQuickConnectConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueueQuickConnectConfig, context: context)
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
      end
    end

    class QueueReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueueReference, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class QueueSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueueSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:queue_type], ::String, context: "#{context}[:queue_type]")
      end
    end

    class QueueSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QueueSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueueTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Queues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class QuickConnect
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuickConnect, context: context)
        Hearth::Validator.validate!(input[:quick_connect_arn], ::String, context: "#{context}[:quick_connect_arn]")
        Hearth::Validator.validate!(input[:quick_connect_id], ::String, context: "#{context}[:quick_connect_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        QuickConnectConfig.validate!(input[:quick_connect_config], context: "#{context}[:quick_connect_config]") unless input[:quick_connect_config].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class QuickConnectConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuickConnectConfig, context: context)
        Hearth::Validator.validate!(input[:quick_connect_type], ::String, context: "#{context}[:quick_connect_type]")
        UserQuickConnectConfig.validate!(input[:user_config], context: "#{context}[:user_config]") unless input[:user_config].nil?
        QueueQuickConnectConfig.validate!(input[:queue_config], context: "#{context}[:queue_config]") unless input[:queue_config].nil?
        PhoneNumberQuickConnectConfig.validate!(input[:phone_config], context: "#{context}[:phone_config]") unless input[:phone_config].nil?
      end
    end

    class QuickConnectSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuickConnectSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:quick_connect_type], ::String, context: "#{context}[:quick_connect_type]")
      end
    end

    class QuickConnectSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QuickConnectSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QuickConnectTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class QuickConnectsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReadOnlyFieldInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReadOnlyFieldInfo, context: context)
        TaskTemplateFieldIdentifier.validate!(input[:id], context: "#{context}[:id]") unless input[:id].nil?
      end
    end

    class ReadOnlyTaskTemplateFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReadOnlyFieldInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Reference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Reference, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ReferenceSummary
      def self.validate!(input, context:)
        case input
        when Types::ReferenceSummary::Url
          UrlReference.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ReferenceSummary::Attachment
          AttachmentReference.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ReferenceSummary::String
          StringReference.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ReferenceSummary::Number
          NumberReference.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ReferenceSummary::Date
          DateReference.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ReferenceSummary::Email
          EmailReference.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ReferenceSummary, got #{input.class}."
        end
      end

      class Url
        def self.validate!(input, context:)
          Validators::UrlReference.validate!(input, context: context) unless input.nil?
        end
      end

      class Attachment
        def self.validate!(input, context:)
          Validators::AttachmentReference.validate!(input, context: context) unless input.nil?
        end
      end

      class String
        def self.validate!(input, context:)
          Validators::StringReference.validate!(input, context: context) unless input.nil?
        end
      end

      class Number
        def self.validate!(input, context:)
          Validators::NumberReference.validate!(input, context: context) unless input.nil?
        end
      end

      class Date
        def self.validate!(input, context:)
          Validators::DateReference.validate!(input, context: context) unless input.nil?
        end
      end

      class Email
        def self.validate!(input, context:)
          Validators::EmailReference.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ReferenceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReferenceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReferenceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReleasePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleasePhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class ReleasePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleasePhoneNumberOutput, context: context)
      end
    end

    class RequiredFieldInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequiredFieldInfo, context: context)
        TaskTemplateFieldIdentifier.validate!(input[:id], context: "#{context}[:id]") unless input[:id].nil?
      end
    end

    class RequiredTaskTemplateFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RequiredFieldInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResumeContactRecordingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeContactRecordingInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:initial_contact_id], ::String, context: "#{context}[:initial_contact_id]")
      end
    end

    class ResumeContactRecordingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeContactRecordingOutput, context: context)
      end
    end

    class RoutingProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingProfile, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:routing_profile_arn], ::String, context: "#{context}[:routing_profile_arn]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        MediaConcurrencies.validate!(input[:media_concurrencies], context: "#{context}[:media_concurrencies]") unless input[:media_concurrencies].nil?
        Hearth::Validator.validate!(input[:default_outbound_queue_id], ::String, context: "#{context}[:default_outbound_queue_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RoutingProfileQueueConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingProfileQueueConfig, context: context)
        RoutingProfileQueueReference.validate!(input[:queue_reference], context: "#{context}[:queue_reference]") unless input[:queue_reference].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:delay], ::Integer, context: "#{context}[:delay]")
      end
    end

    class RoutingProfileQueueConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoutingProfileQueueConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoutingProfileQueueConfigSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingProfileQueueConfigSummary, context: context)
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:queue_arn], ::String, context: "#{context}[:queue_arn]")
        Hearth::Validator.validate!(input[:queue_name], ::String, context: "#{context}[:queue_name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:delay], ::Integer, context: "#{context}[:delay]")
        Hearth::Validator.validate!(input[:channel], ::String, context: "#{context}[:channel]")
      end
    end

    class RoutingProfileQueueConfigSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoutingProfileQueueConfigSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoutingProfileQueueReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingProfileQueueReference, context: context)
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:channel], ::String, context: "#{context}[:channel]")
      end
    end

    class RoutingProfileQueueReferenceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoutingProfileQueueReference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoutingProfileReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingProfileReference, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RoutingProfileSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingProfileSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class RoutingProfileSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoutingProfileSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Config
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Config, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
      end
    end

    class SearchAvailablePhoneNumbersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAvailablePhoneNumbersInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:phone_number_country_code], ::String, context: "#{context}[:phone_number_country_code]")
        Hearth::Validator.validate!(input[:phone_number_type], ::String, context: "#{context}[:phone_number_type]")
        Hearth::Validator.validate!(input[:phone_number_prefix], ::String, context: "#{context}[:phone_number_prefix]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchAvailablePhoneNumbersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAvailablePhoneNumbersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        AvailableNumbersList.validate!(input[:available_numbers_list], context: "#{context}[:available_numbers_list]") unless input[:available_numbers_list].nil?
      end
    end

    class SearchUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchUsersInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        UserSearchFilter.validate!(input[:search_filter], context: "#{context}[:search_filter]") unless input[:search_filter].nil?
        UserSearchCriteria.validate!(input[:search_criteria], context: "#{context}[:search_criteria]") unless input[:search_criteria].nil?
      end
    end

    class SearchUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchUsersOutput, context: context)
        UserSearchSummaryList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:approximate_total_count], ::Integer, context: "#{context}[:approximate_total_count]")
      end
    end

    class SearchVocabulariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchVocabulariesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:name_starts_with], ::String, context: "#{context}[:name_starts_with]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class SearchVocabulariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchVocabulariesOutput, context: context)
        VocabularySummaryList.validate!(input[:vocabulary_summary_list], context: "#{context}[:vocabulary_summary_list]") unless input[:vocabulary_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SecurityKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityKey, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class SecurityKeysList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecurityKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityProfile, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:organization_resource_id], ::String, context: "#{context}[:organization_resource_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:security_profile_name], ::String, context: "#{context}[:security_profile_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SecurityProfileIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityProfileSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityProfileSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SecurityProfileSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecurityProfileSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SingleSelectOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartChatContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChatContactInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        ParticipantDetails.validate!(input[:participant_details], context: "#{context}[:participant_details]") unless input[:participant_details].nil?
        ChatMessage.validate!(input[:initial_message], context: "#{context}[:initial_message]") unless input[:initial_message].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:chat_duration_in_minutes], ::Integer, context: "#{context}[:chat_duration_in_minutes]")
        SupportedMessagingContentTypes.validate!(input[:supported_messaging_content_types], context: "#{context}[:supported_messaging_content_types]") unless input[:supported_messaging_content_types].nil?
      end
    end

    class StartChatContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChatContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:participant_id], ::String, context: "#{context}[:participant_id]")
        Hearth::Validator.validate!(input[:participant_token], ::String, context: "#{context}[:participant_token]")
      end
    end

    class StartContactRecordingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContactRecordingInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:initial_contact_id], ::String, context: "#{context}[:initial_contact_id]")
        VoiceRecordingConfiguration.validate!(input[:voice_recording_configuration], context: "#{context}[:voice_recording_configuration]") unless input[:voice_recording_configuration].nil?
      end
    end

    class StartContactRecordingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContactRecordingOutput, context: context)
      end
    end

    class StartContactStreamingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContactStreamingInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        ChatStreamingConfiguration.validate!(input[:chat_streaming_configuration], context: "#{context}[:chat_streaming_configuration]") unless input[:chat_streaming_configuration].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartContactStreamingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContactStreamingOutput, context: context)
        Hearth::Validator.validate!(input[:streaming_id], ::String, context: "#{context}[:streaming_id]")
      end
    end

    class StartOutboundVoiceContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOutboundVoiceContactInput, context: context)
        Hearth::Validator.validate!(input[:destination_phone_number], ::String, context: "#{context}[:destination_phone_number]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:source_phone_number], ::String, context: "#{context}[:source_phone_number]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        AnswerMachineDetectionConfig.validate!(input[:answer_machine_detection_config], context: "#{context}[:answer_machine_detection_config]") unless input[:answer_machine_detection_config].nil?
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:traffic_type], ::String, context: "#{context}[:traffic_type]")
      end
    end

    class StartOutboundVoiceContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOutboundVoiceContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
      end
    end

    class StartTaskContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTaskContactInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:previous_contact_id], ::String, context: "#{context}[:previous_contact_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ContactReferences.validate!(input[:references], context: "#{context}[:references]") unless input[:references].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:scheduled_time], ::Time, context: "#{context}[:scheduled_time]")
        Hearth::Validator.validate!(input[:task_template_id], ::String, context: "#{context}[:task_template_id]")
        Hearth::Validator.validate!(input[:quick_connect_id], ::String, context: "#{context}[:quick_connect_id]")
      end
    end

    class StartTaskContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTaskContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
      end
    end

    class StopContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class StopContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopContactOutput, context: context)
      end
    end

    class StopContactRecordingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopContactRecordingInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:initial_contact_id], ::String, context: "#{context}[:initial_contact_id]")
      end
    end

    class StopContactRecordingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopContactRecordingOutput, context: context)
      end
    end

    class StopContactStreamingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopContactStreamingInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:streaming_id], ::String, context: "#{context}[:streaming_id]")
      end
    end

    class StopContactStreamingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopContactStreamingOutput, context: context)
      end
    end

    class StringCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StringCondition, context: context)
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:comparison_type], ::String, context: "#{context}[:comparison_type]")
      end
    end

    class StringReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StringReference, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SupportedMessagingContentTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SuspendContactRecordingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuspendContactRecordingInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:initial_contact_id], ::String, context: "#{context}[:initial_contact_id]")
      end
    end

    class SuspendContactRecordingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuspendContactRecordingOutput, context: context)
      end
    end

    class TagAndConditionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagCondition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagCondition, context: context)
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Hearth::Validator.validate!(input[:tag_value], ::String, context: "#{context}[:tag_value]")
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

    class TagOrConditionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagAndConditionList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TaskTemplateConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskTemplateConstraints, context: context)
        RequiredTaskTemplateFields.validate!(input[:required_fields], context: "#{context}[:required_fields]") unless input[:required_fields].nil?
        ReadOnlyTaskTemplateFields.validate!(input[:read_only_fields], context: "#{context}[:read_only_fields]") unless input[:read_only_fields].nil?
        InvisibleTaskTemplateFields.validate!(input[:invisible_fields], context: "#{context}[:invisible_fields]") unless input[:invisible_fields].nil?
      end
    end

    class TaskTemplateDefaultFieldValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskTemplateDefaultFieldValue, context: context)
        TaskTemplateFieldIdentifier.validate!(input[:id], context: "#{context}[:id]") unless input[:id].nil?
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class TaskTemplateDefaultFieldValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskTemplateDefaultFieldValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaskTemplateDefaults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskTemplateDefaults, context: context)
        TaskTemplateDefaultFieldValueList.validate!(input[:default_field_values], context: "#{context}[:default_field_values]") unless input[:default_field_values].nil?
      end
    end

    class TaskTemplateField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskTemplateField, context: context)
        TaskTemplateFieldIdentifier.validate!(input[:id], context: "#{context}[:id]") unless input[:id].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        SingleSelectOptions.validate!(input[:single_select_options], context: "#{context}[:single_select_options]") unless input[:single_select_options].nil?
      end
    end

    class TaskTemplateFieldIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskTemplateFieldIdentifier, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class TaskTemplateFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskTemplateField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaskTemplateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskTemplateMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaskTemplateMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskTemplateMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class Threshold
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Threshold, context: context)
        Hearth::Validator.validate!(input[:comparison], ::String, context: "#{context}[:comparison]")
        Hearth::Validator.validate!(input[:threshold_value], ::Float, context: "#{context}[:threshold_value]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransferContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferContactInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class TransferContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAgentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAgentStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:agent_status_id], ::String, context: "#{context}[:agent_status_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:display_order], ::Integer, context: "#{context}[:display_order]")
        Hearth::Validator.validate!(input[:reset_order_number], ::TrueClass, ::FalseClass, context: "#{context}[:reset_order_number]")
      end
    end

    class UpdateAgentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAgentStatusOutput, context: context)
      end
    end

    class UpdateContactAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactAttributesInput, context: context)
        Hearth::Validator.validate!(input[:initial_contact_id], ::String, context: "#{context}[:initial_contact_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class UpdateContactAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactAttributesOutput, context: context)
      end
    end

    class UpdateContactFlowContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowContentInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class UpdateContactFlowContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowContentOutput, context: context)
      end
    end

    class UpdateContactFlowMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowMetadataInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:contact_flow_state], ::String, context: "#{context}[:contact_flow_state]")
      end
    end

    class UpdateContactFlowMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowMetadataOutput, context: context)
      end
    end

    class UpdateContactFlowModuleContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowModuleContentInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_module_id], ::String, context: "#{context}[:contact_flow_module_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class UpdateContactFlowModuleContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowModuleContentOutput, context: context)
      end
    end

    class UpdateContactFlowModuleMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowModuleMetadataInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_module_id], ::String, context: "#{context}[:contact_flow_module_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class UpdateContactFlowModuleMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowModuleMetadataOutput, context: context)
      end
    end

    class UpdateContactFlowNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowNameInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateContactFlowNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactFlowNameOutput, context: context)
      end
    end

    class UpdateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ContactReferences.validate!(input[:references], context: "#{context}[:references]") unless input[:references].nil?
      end
    end

    class UpdateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactOutput, context: context)
      end
    end

    class UpdateContactScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactScheduleInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:scheduled_time], ::Time, context: "#{context}[:scheduled_time]")
      end
    end

    class UpdateContactScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactScheduleOutput, context: context)
      end
    end

    class UpdateHoursOfOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHoursOfOperationInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:hours_of_operation_id], ::String, context: "#{context}[:hours_of_operation_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
        HoursOfOperationConfigList.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
      end
    end

    class UpdateHoursOfOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHoursOfOperationOutput, context: context)
      end
    end

    class UpdateInstanceAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceAttributeInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class UpdateInstanceAttributeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceAttributeOutput, context: context)
      end
    end

    class UpdateInstanceStorageConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceStorageConfigInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        InstanceStorageConfig.validate!(input[:storage_config], context: "#{context}[:storage_config]") unless input[:storage_config].nil?
      end
    end

    class UpdateInstanceStorageConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceStorageConfigOutput, context: context)
      end
    end

    class UpdatePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdatePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePhoneNumberOutput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:phone_number_arn], ::String, context: "#{context}[:phone_number_arn]")
      end
    end

    class UpdateQueueHoursOfOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueHoursOfOperationInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:hours_of_operation_id], ::String, context: "#{context}[:hours_of_operation_id]")
      end
    end

    class UpdateQueueHoursOfOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueHoursOfOperationOutput, context: context)
      end
    end

    class UpdateQueueMaxContactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueMaxContactsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:max_contacts], ::Integer, context: "#{context}[:max_contacts]")
      end
    end

    class UpdateQueueMaxContactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueMaxContactsOutput, context: context)
      end
    end

    class UpdateQueueNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueNameInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateQueueNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueNameOutput, context: context)
      end
    end

    class UpdateQueueOutboundCallerConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueOutboundCallerConfigInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        OutboundCallerConfig.validate!(input[:outbound_caller_config], context: "#{context}[:outbound_caller_config]") unless input[:outbound_caller_config].nil?
      end
    end

    class UpdateQueueOutboundCallerConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueOutboundCallerConfigOutput, context: context)
      end
    end

    class UpdateQueueStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:queue_id], ::String, context: "#{context}[:queue_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateQueueStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQueueStatusOutput, context: context)
      end
    end

    class UpdateQuickConnectConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQuickConnectConfigInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:quick_connect_id], ::String, context: "#{context}[:quick_connect_id]")
        QuickConnectConfig.validate!(input[:quick_connect_config], context: "#{context}[:quick_connect_config]") unless input[:quick_connect_config].nil?
      end
    end

    class UpdateQuickConnectConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQuickConnectConfigOutput, context: context)
      end
    end

    class UpdateQuickConnectNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQuickConnectNameInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:quick_connect_id], ::String, context: "#{context}[:quick_connect_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateQuickConnectNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQuickConnectNameOutput, context: context)
      end
    end

    class UpdateRoutingProfileConcurrencyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingProfileConcurrencyInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        MediaConcurrencies.validate!(input[:media_concurrencies], context: "#{context}[:media_concurrencies]") unless input[:media_concurrencies].nil?
      end
    end

    class UpdateRoutingProfileConcurrencyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingProfileConcurrencyOutput, context: context)
      end
    end

    class UpdateRoutingProfileDefaultOutboundQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingProfileDefaultOutboundQueueInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        Hearth::Validator.validate!(input[:default_outbound_queue_id], ::String, context: "#{context}[:default_outbound_queue_id]")
      end
    end

    class UpdateRoutingProfileDefaultOutboundQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingProfileDefaultOutboundQueueOutput, context: context)
      end
    end

    class UpdateRoutingProfileNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingProfileNameInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateRoutingProfileNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingProfileNameOutput, context: context)
      end
    end

    class UpdateRoutingProfileQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingProfileQueuesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        RoutingProfileQueueConfigList.validate!(input[:queue_configs], context: "#{context}[:queue_configs]") unless input[:queue_configs].nil?
      end
    end

    class UpdateRoutingProfileQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingProfileQueuesOutput, context: context)
      end
    end

    class UpdateSecurityProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityProfileInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PermissionsList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:security_profile_id], ::String, context: "#{context}[:security_profile_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class UpdateSecurityProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityProfileOutput, context: context)
      end
    end

    class UpdateTaskTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTaskTemplateInput, context: context)
        Hearth::Validator.validate!(input[:task_template_id], ::String, context: "#{context}[:task_template_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        TaskTemplateConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        TaskTemplateDefaults.validate!(input[:defaults], context: "#{context}[:defaults]") unless input[:defaults].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TaskTemplateFields.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class UpdateTaskTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTaskTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
        TaskTemplateConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        TaskTemplateDefaults.validate!(input[:defaults], context: "#{context}[:defaults]") unless input[:defaults].nil?
        TaskTemplateFields.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class UpdateUserHierarchyGroupNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserHierarchyGroupNameInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:hierarchy_group_id], ::String, context: "#{context}[:hierarchy_group_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class UpdateUserHierarchyGroupNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserHierarchyGroupNameOutput, context: context)
      end
    end

    class UpdateUserHierarchyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserHierarchyInput, context: context)
        Hearth::Validator.validate!(input[:hierarchy_group_id], ::String, context: "#{context}[:hierarchy_group_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class UpdateUserHierarchyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserHierarchyOutput, context: context)
      end
    end

    class UpdateUserHierarchyStructureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserHierarchyStructureInput, context: context)
        HierarchyStructureUpdate.validate!(input[:hierarchy_structure], context: "#{context}[:hierarchy_structure]") unless input[:hierarchy_structure].nil?
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class UpdateUserHierarchyStructureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserHierarchyStructureOutput, context: context)
      end
    end

    class UpdateUserIdentityInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserIdentityInfoInput, context: context)
        UserIdentityInfo.validate!(input[:identity_info], context: "#{context}[:identity_info]") unless input[:identity_info].nil?
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class UpdateUserIdentityInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserIdentityInfoOutput, context: context)
      end
    end

    class UpdateUserPhoneConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserPhoneConfigInput, context: context)
        UserPhoneConfig.validate!(input[:phone_config], context: "#{context}[:phone_config]") unless input[:phone_config].nil?
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class UpdateUserPhoneConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserPhoneConfigOutput, context: context)
      end
    end

    class UpdateUserRoutingProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserRoutingProfileInput, context: context)
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class UpdateUserRoutingProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserRoutingProfileOutput, context: context)
      end
    end

    class UpdateUserSecurityProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserSecurityProfilesInput, context: context)
        SecurityProfileIds.validate!(input[:security_profile_ids], context: "#{context}[:security_profile_ids]") unless input[:security_profile_ids].nil?
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class UpdateUserSecurityProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserSecurityProfilesOutput, context: context)
      end
    end

    class UrlReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UrlReference, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class UseCase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UseCase, context: context)
        Hearth::Validator.validate!(input[:use_case_id], ::String, context: "#{context}[:use_case_id]")
        Hearth::Validator.validate!(input[:use_case_arn], ::String, context: "#{context}[:use_case_arn]")
        Hearth::Validator.validate!(input[:use_case_type], ::String, context: "#{context}[:use_case_type]")
      end
    end

    class UseCaseSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UseCase.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        UserIdentityInfo.validate!(input[:identity_info], context: "#{context}[:identity_info]") unless input[:identity_info].nil?
        UserPhoneConfig.validate!(input[:phone_config], context: "#{context}[:phone_config]") unless input[:phone_config].nil?
        Hearth::Validator.validate!(input[:directory_user_id], ::String, context: "#{context}[:directory_user_id]")
        SecurityProfileIds.validate!(input[:security_profile_ids], context: "#{context}[:security_profile_ids]") unless input[:security_profile_ids].nil?
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        Hearth::Validator.validate!(input[:hierarchy_group_id], ::String, context: "#{context}[:hierarchy_group_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UserData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserData, context: context)
        UserReference.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
        RoutingProfileReference.validate!(input[:routing_profile], context: "#{context}[:routing_profile]") unless input[:routing_profile].nil?
        HierarchyPathReference.validate!(input[:hierarchy_path], context: "#{context}[:hierarchy_path]") unless input[:hierarchy_path].nil?
        AgentStatusReference.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        ChannelToCountMap.validate!(input[:available_slots_by_channel], context: "#{context}[:available_slots_by_channel]") unless input[:available_slots_by_channel].nil?
        ChannelToCountMap.validate!(input[:max_slots_by_channel], context: "#{context}[:max_slots_by_channel]") unless input[:max_slots_by_channel].nil?
        ChannelToCountMap.validate!(input[:active_slots_by_channel], context: "#{context}[:active_slots_by_channel]") unless input[:active_slots_by_channel].nil?
        AgentContactReferenceList.validate!(input[:contacts], context: "#{context}[:contacts]") unless input[:contacts].nil?
      end
    end

    class UserDataFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserDataFilters, context: context)
        Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        ContactFilter.validate!(input[:contact_filter], context: "#{context}[:contact_filter]") unless input[:contact_filter].nil?
      end
    end

    class UserDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserIdentityInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserIdentityInfo, context: context)
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
      end
    end

    class UserIdentityInfoLite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserIdentityInfoLite, context: context)
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
      end
    end

    class UserNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserPhoneConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPhoneConfig, context: context)
        Hearth::Validator.validate!(input[:phone_type], ::String, context: "#{context}[:phone_type]")
        Hearth::Validator.validate!(input[:auto_accept], ::TrueClass, ::FalseClass, context: "#{context}[:auto_accept]")
        Hearth::Validator.validate!(input[:after_contact_work_time_limit], ::Integer, context: "#{context}[:after_contact_work_time_limit]")
        Hearth::Validator.validate!(input[:desk_phone_number], ::String, context: "#{context}[:desk_phone_number]")
      end
    end

    class UserQuickConnectConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserQuickConnectConfig, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:contact_flow_id], ::String, context: "#{context}[:contact_flow_id]")
      end
    end

    class UserReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserReference, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class UserSearchConditionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserSearchCriteria.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserSearchCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSearchCriteria, context: context)
        UserSearchConditionList.validate!(input[:or_conditions], context: "#{context}[:or_conditions]") unless input[:or_conditions].nil?
        UserSearchConditionList.validate!(input[:and_conditions], context: "#{context}[:and_conditions]") unless input[:and_conditions].nil?
        StringCondition.validate!(input[:string_condition], context: "#{context}[:string_condition]") unless input[:string_condition].nil?
        HierarchyGroupCondition.validate!(input[:hierarchy_group_condition], context: "#{context}[:hierarchy_group_condition]") unless input[:hierarchy_group_condition].nil?
      end
    end

    class UserSearchFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSearchFilter, context: context)
        ControlPlaneTagFilter.validate!(input[:tag_filter], context: "#{context}[:tag_filter]") unless input[:tag_filter].nil?
      end
    end

    class UserSearchSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSearchSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:directory_user_id], ::String, context: "#{context}[:directory_user_id]")
        Hearth::Validator.validate!(input[:hierarchy_group_id], ::String, context: "#{context}[:hierarchy_group_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        UserIdentityInfoLite.validate!(input[:identity_info], context: "#{context}[:identity_info]") unless input[:identity_info].nil?
        UserPhoneConfig.validate!(input[:phone_config], context: "#{context}[:phone_config]") unless input[:phone_config].nil?
        Hearth::Validator.validate!(input[:routing_profile_id], ::String, context: "#{context}[:routing_profile_id]")
        SecurityProfileIds.validate!(input[:security_profile_ids], context: "#{context}[:security_profile_ids]") unless input[:security_profile_ids].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class UserSearchSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserSearchSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class UserSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Vocabulary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Vocabulary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class VocabularySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VocabularySummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class VocabularySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VocabularySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VoiceRecordingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceRecordingConfiguration, context: context)
        Hearth::Validator.validate!(input[:voice_recording_track], ::String, context: "#{context}[:voice_recording_track]")
      end
    end

  end
end
