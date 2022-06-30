# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Connect
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AgentContactReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentContactReference, context: context)
        type = Types::AgentContactReference.new
        type.contact_id = params[:contact_id]
        type.channel = params[:channel]
        type.initiation_method = params[:initiation_method]
        type.agent_contact_state = params[:agent_contact_state]
        type.state_start_timestamp = params[:state_start_timestamp]
        type.connected_to_agent_timestamp = params[:connected_to_agent_timestamp]
        type.queue = QueueReference.build(params[:queue], context: "#{context}[:queue]") unless params[:queue].nil?
        type
      end
    end

    module AgentContactReferenceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentContactReference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AgentInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentInfo, context: context)
        type = Types::AgentInfo.new
        type.id = params[:id]
        type.connected_to_agent_timestamp = params[:connected_to_agent_timestamp]
        type
      end
    end

    module AgentStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentStatus, context: context)
        type = Types::AgentStatus.new
        type.agent_status_arn = params[:agent_status_arn]
        type.agent_status_id = params[:agent_status_id]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.display_order = params[:display_order]
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AgentStatusReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentStatusReference, context: context)
        type = Types::AgentStatusReference.new
        type.status_start_timestamp = params[:status_start_timestamp]
        type.status_arn = params[:status_arn]
        type
      end
    end

    module AgentStatusSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentStatusSummary, context: context)
        type = Types::AgentStatusSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module AgentStatusSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentStatusSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AgentStatusTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AnswerMachineDetectionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnswerMachineDetectionConfig, context: context)
        type = Types::AnswerMachineDetectionConfig.new
        type.enable_answer_machine_detection = params[:enable_answer_machine_detection]
        type.await_answer_machine_prompt = params[:await_answer_machine_prompt]
        type
      end
    end

    module AssociateApprovedOriginInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApprovedOriginInput, context: context)
        type = Types::AssociateApprovedOriginInput.new
        type.instance_id = params[:instance_id]
        type.origin = params[:origin]
        type
      end
    end

    module AssociateApprovedOriginOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApprovedOriginOutput, context: context)
        type = Types::AssociateApprovedOriginOutput.new
        type
      end
    end

    module AssociateBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateBotInput, context: context)
        type = Types::AssociateBotInput.new
        type.instance_id = params[:instance_id]
        type.lex_bot = LexBot.build(params[:lex_bot], context: "#{context}[:lex_bot]") unless params[:lex_bot].nil?
        type.lex_v2_bot = LexV2Bot.build(params[:lex_v2_bot], context: "#{context}[:lex_v2_bot]") unless params[:lex_v2_bot].nil?
        type
      end
    end

    module AssociateBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateBotOutput, context: context)
        type = Types::AssociateBotOutput.new
        type
      end
    end

    module AssociateDefaultVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDefaultVocabularyInput, context: context)
        type = Types::AssociateDefaultVocabularyInput.new
        type.instance_id = params[:instance_id]
        type.language_code = params[:language_code]
        type.vocabulary_id = params[:vocabulary_id]
        type
      end
    end

    module AssociateDefaultVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDefaultVocabularyOutput, context: context)
        type = Types::AssociateDefaultVocabularyOutput.new
        type
      end
    end

    module AssociateInstanceStorageConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateInstanceStorageConfigInput, context: context)
        type = Types::AssociateInstanceStorageConfigInput.new
        type.instance_id = params[:instance_id]
        type.resource_type = params[:resource_type]
        type.storage_config = InstanceStorageConfig.build(params[:storage_config], context: "#{context}[:storage_config]") unless params[:storage_config].nil?
        type
      end
    end

    module AssociateInstanceStorageConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateInstanceStorageConfigOutput, context: context)
        type = Types::AssociateInstanceStorageConfigOutput.new
        type.association_id = params[:association_id]
        type
      end
    end

    module AssociateLambdaFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLambdaFunctionInput, context: context)
        type = Types::AssociateLambdaFunctionInput.new
        type.instance_id = params[:instance_id]
        type.function_arn = params[:function_arn]
        type
      end
    end

    module AssociateLambdaFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLambdaFunctionOutput, context: context)
        type = Types::AssociateLambdaFunctionOutput.new
        type
      end
    end

    module AssociateLexBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLexBotInput, context: context)
        type = Types::AssociateLexBotInput.new
        type.instance_id = params[:instance_id]
        type.lex_bot = LexBot.build(params[:lex_bot], context: "#{context}[:lex_bot]") unless params[:lex_bot].nil?
        type
      end
    end

    module AssociateLexBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLexBotOutput, context: context)
        type = Types::AssociateLexBotOutput.new
        type
      end
    end

    module AssociatePhoneNumberContactFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePhoneNumberContactFlowInput, context: context)
        type = Types::AssociatePhoneNumberContactFlowInput.new
        type.phone_number_id = params[:phone_number_id]
        type.instance_id = params[:instance_id]
        type.contact_flow_id = params[:contact_flow_id]
        type
      end
    end

    module AssociatePhoneNumberContactFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePhoneNumberContactFlowOutput, context: context)
        type = Types::AssociatePhoneNumberContactFlowOutput.new
        type
      end
    end

    module AssociateQueueQuickConnectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateQueueQuickConnectsInput, context: context)
        type = Types::AssociateQueueQuickConnectsInput.new
        type.instance_id = params[:instance_id]
        type.queue_id = params[:queue_id]
        type.quick_connect_ids = QuickConnectsList.build(params[:quick_connect_ids], context: "#{context}[:quick_connect_ids]") unless params[:quick_connect_ids].nil?
        type
      end
    end

    module AssociateQueueQuickConnectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateQueueQuickConnectsOutput, context: context)
        type = Types::AssociateQueueQuickConnectsOutput.new
        type
      end
    end

    module AssociateRoutingProfileQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateRoutingProfileQueuesInput, context: context)
        type = Types::AssociateRoutingProfileQueuesInput.new
        type.instance_id = params[:instance_id]
        type.routing_profile_id = params[:routing_profile_id]
        type.queue_configs = RoutingProfileQueueConfigList.build(params[:queue_configs], context: "#{context}[:queue_configs]") unless params[:queue_configs].nil?
        type
      end
    end

    module AssociateRoutingProfileQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateRoutingProfileQueuesOutput, context: context)
        type = Types::AssociateRoutingProfileQueuesOutput.new
        type
      end
    end

    module AssociateSecurityKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSecurityKeyInput, context: context)
        type = Types::AssociateSecurityKeyInput.new
        type.instance_id = params[:instance_id]
        type.key = params[:key]
        type
      end
    end

    module AssociateSecurityKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSecurityKeyOutput, context: context)
        type = Types::AssociateSecurityKeyOutput.new
        type.association_id = params[:association_id]
        type
      end
    end

    module AttachmentReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentReference, context: context)
        type = Types::AttachmentReference.new
        type.name = params[:name]
        type.value = params[:value]
        type.status = params[:status]
        type
      end
    end

    module Attribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attribute, context: context)
        type = Types::Attribute.new
        type.attribute_type = params[:attribute_type]
        type.value = params[:value]
        type
      end
    end

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AttributesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AvailableNumberSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailableNumberSummary, context: context)
        type = Types::AvailableNumberSummary.new
        type.phone_number = params[:phone_number]
        type.phone_number_country_code = params[:phone_number_country_code]
        type.phone_number_type = params[:phone_number_type]
        type
      end
    end

    module AvailableNumbersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailableNumberSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelToCountMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Channels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ChatMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChatMessage, context: context)
        type = Types::ChatMessage.new
        type.content_type = params[:content_type]
        type.content = params[:content]
        type
      end
    end

    module ChatStreamingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChatStreamingConfiguration, context: context)
        type = Types::ChatStreamingConfiguration.new
        type.streaming_endpoint_arn = params[:streaming_endpoint_arn]
        type
      end
    end

    module ClaimPhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClaimPhoneNumberInput, context: context)
        type = Types::ClaimPhoneNumberInput.new
        type.target_arn = params[:target_arn]
        type.phone_number = params[:phone_number]
        type.phone_number_description = params[:phone_number_description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module ClaimPhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClaimPhoneNumberOutput, context: context)
        type = Types::ClaimPhoneNumberOutput.new
        type.phone_number_id = params[:phone_number_id]
        type.phone_number_arn = params[:phone_number_arn]
        type
      end
    end

    module ClaimedPhoneNumberSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClaimedPhoneNumberSummary, context: context)
        type = Types::ClaimedPhoneNumberSummary.new
        type.phone_number_id = params[:phone_number_id]
        type.phone_number_arn = params[:phone_number_arn]
        type.phone_number = params[:phone_number]
        type.phone_number_country_code = params[:phone_number_country_code]
        type.phone_number_type = params[:phone_number_type]
        type.phone_number_description = params[:phone_number_description]
        type.target_arn = params[:target_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.phone_number_status = PhoneNumberStatus.build(params[:phone_number_status], context: "#{context}[:phone_number_status]") unless params[:phone_number_status].nil?
        type
      end
    end

    module Contact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Contact, context: context)
        type = Types::Contact.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.initial_contact_id = params[:initial_contact_id]
        type.previous_contact_id = params[:previous_contact_id]
        type.initiation_method = params[:initiation_method]
        type.name = params[:name]
        type.description = params[:description]
        type.channel = params[:channel]
        type.queue_info = QueueInfo.build(params[:queue_info], context: "#{context}[:queue_info]") unless params[:queue_info].nil?
        type.agent_info = AgentInfo.build(params[:agent_info], context: "#{context}[:agent_info]") unless params[:agent_info].nil?
        type.initiation_timestamp = params[:initiation_timestamp]
        type.disconnect_timestamp = params[:disconnect_timestamp]
        type.last_update_timestamp = params[:last_update_timestamp]
        type.scheduled_timestamp = params[:scheduled_timestamp]
        type
      end
    end

    module ContactFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactFilter, context: context)
        type = Types::ContactFilter.new
        type.contact_states = ContactStates.build(params[:contact_states], context: "#{context}[:contact_states]") unless params[:contact_states].nil?
        type
      end
    end

    module ContactFlow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactFlow, context: context)
        type = Types::ContactFlow.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.type = params[:type]
        type.state = params[:state]
        type.description = params[:description]
        type.content = params[:content]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ContactFlowModule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactFlowModule, context: context)
        type = Types::ContactFlowModule.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.content = params[:content]
        type.description = params[:description]
        type.state = params[:state]
        type.status = params[:status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ContactFlowModuleSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactFlowModuleSummary, context: context)
        type = Types::ContactFlowModuleSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.state = params[:state]
        type
      end
    end

    module ContactFlowModulesSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContactFlowModuleSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContactFlowNotPublishedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactFlowNotPublishedException, context: context)
        type = Types::ContactFlowNotPublishedException.new
        type.message = params[:message]
        type
      end
    end

    module ContactFlowSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactFlowSummary, context: context)
        type = Types::ContactFlowSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.contact_flow_type = params[:contact_flow_type]
        type.contact_flow_state = params[:contact_flow_state]
        type
      end
    end

    module ContactFlowSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContactFlowSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContactFlowTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContactNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactNotFoundException, context: context)
        type = Types::ContactNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ContactReferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Reference.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ContactStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ControlPlaneTagFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlPlaneTagFilter, context: context)
        type = Types::ControlPlaneTagFilter.new
        type.or_conditions = TagOrConditionList.build(params[:or_conditions], context: "#{context}[:or_conditions]") unless params[:or_conditions].nil?
        type.and_conditions = TagAndConditionList.build(params[:and_conditions], context: "#{context}[:and_conditions]") unless params[:and_conditions].nil?
        type.tag_condition = TagCondition.build(params[:tag_condition], context: "#{context}[:tag_condition]") unless params[:tag_condition].nil?
        type
      end
    end

    module CreateAgentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAgentStatusInput, context: context)
        type = Types::CreateAgentStatusInput.new
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.description = params[:description]
        type.state = params[:state]
        type.display_order = params[:display_order]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAgentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAgentStatusOutput, context: context)
        type = Types::CreateAgentStatusOutput.new
        type.agent_status_arn = params[:agent_status_arn]
        type.agent_status_id = params[:agent_status_id]
        type
      end
    end

    module CreateContactFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactFlowInput, context: context)
        type = Types::CreateContactFlowInput.new
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.type = params[:type]
        type.description = params[:description]
        type.content = params[:content]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateContactFlowModuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactFlowModuleInput, context: context)
        type = Types::CreateContactFlowModuleInput.new
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.description = params[:description]
        type.content = params[:content]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateContactFlowModuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactFlowModuleOutput, context: context)
        type = Types::CreateContactFlowModuleOutput.new
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module CreateContactFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactFlowOutput, context: context)
        type = Types::CreateContactFlowOutput.new
        type.contact_flow_id = params[:contact_flow_id]
        type.contact_flow_arn = params[:contact_flow_arn]
        type
      end
    end

    module CreateHoursOfOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHoursOfOperationInput, context: context)
        type = Types::CreateHoursOfOperationInput.new
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.description = params[:description]
        type.time_zone = params[:time_zone]
        type.config = HoursOfOperationConfigList.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateHoursOfOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHoursOfOperationOutput, context: context)
        type = Types::CreateHoursOfOperationOutput.new
        type.hours_of_operation_id = params[:hours_of_operation_id]
        type.hours_of_operation_arn = params[:hours_of_operation_arn]
        type
      end
    end

    module CreateInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceInput, context: context)
        type = Types::CreateInstanceInput.new
        type.client_token = params[:client_token]
        type.identity_management_type = params[:identity_management_type]
        type.instance_alias = params[:instance_alias]
        type.directory_id = params[:directory_id]
        type.inbound_calls_enabled = params[:inbound_calls_enabled]
        type.outbound_calls_enabled = params[:outbound_calls_enabled]
        type
      end
    end

    module CreateInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceOutput, context: context)
        type = Types::CreateInstanceOutput.new
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module CreateIntegrationAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntegrationAssociationInput, context: context)
        type = Types::CreateIntegrationAssociationInput.new
        type.instance_id = params[:instance_id]
        type.integration_type = params[:integration_type]
        type.integration_arn = params[:integration_arn]
        type.source_application_url = params[:source_application_url]
        type.source_application_name = params[:source_application_name]
        type.source_type = params[:source_type]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateIntegrationAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntegrationAssociationOutput, context: context)
        type = Types::CreateIntegrationAssociationOutput.new
        type.integration_association_id = params[:integration_association_id]
        type.integration_association_arn = params[:integration_association_arn]
        type
      end
    end

    module CreateQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQueueInput, context: context)
        type = Types::CreateQueueInput.new
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.description = params[:description]
        type.outbound_caller_config = OutboundCallerConfig.build(params[:outbound_caller_config], context: "#{context}[:outbound_caller_config]") unless params[:outbound_caller_config].nil?
        type.hours_of_operation_id = params[:hours_of_operation_id]
        type.max_contacts = params[:max_contacts]
        type.quick_connect_ids = QuickConnectsList.build(params[:quick_connect_ids], context: "#{context}[:quick_connect_ids]") unless params[:quick_connect_ids].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQueueOutput, context: context)
        type = Types::CreateQueueOutput.new
        type.queue_arn = params[:queue_arn]
        type.queue_id = params[:queue_id]
        type
      end
    end

    module CreateQuickConnectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQuickConnectInput, context: context)
        type = Types::CreateQuickConnectInput.new
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.description = params[:description]
        type.quick_connect_config = QuickConnectConfig.build(params[:quick_connect_config], context: "#{context}[:quick_connect_config]") unless params[:quick_connect_config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateQuickConnectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQuickConnectOutput, context: context)
        type = Types::CreateQuickConnectOutput.new
        type.quick_connect_arn = params[:quick_connect_arn]
        type.quick_connect_id = params[:quick_connect_id]
        type
      end
    end

    module CreateRoutingProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoutingProfileInput, context: context)
        type = Types::CreateRoutingProfileInput.new
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.description = params[:description]
        type.default_outbound_queue_id = params[:default_outbound_queue_id]
        type.queue_configs = RoutingProfileQueueConfigList.build(params[:queue_configs], context: "#{context}[:queue_configs]") unless params[:queue_configs].nil?
        type.media_concurrencies = MediaConcurrencies.build(params[:media_concurrencies], context: "#{context}[:media_concurrencies]") unless params[:media_concurrencies].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRoutingProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoutingProfileOutput, context: context)
        type = Types::CreateRoutingProfileOutput.new
        type.routing_profile_arn = params[:routing_profile_arn]
        type.routing_profile_id = params[:routing_profile_id]
        type
      end
    end

    module CreateSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecurityProfileInput, context: context)
        type = Types::CreateSecurityProfileInput.new
        type.security_profile_name = params[:security_profile_name]
        type.description = params[:description]
        type.permissions = PermissionsList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.instance_id = params[:instance_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecurityProfileOutput, context: context)
        type = Types::CreateSecurityProfileOutput.new
        type.security_profile_id = params[:security_profile_id]
        type.security_profile_arn = params[:security_profile_arn]
        type
      end
    end

    module CreateTaskTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTaskTemplateInput, context: context)
        type = Types::CreateTaskTemplateInput.new
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.description = params[:description]
        type.contact_flow_id = params[:contact_flow_id]
        type.constraints = TaskTemplateConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.defaults = TaskTemplateDefaults.build(params[:defaults], context: "#{context}[:defaults]") unless params[:defaults].nil?
        type.status = params[:status]
        type.fields = TaskTemplateFields.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateTaskTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTaskTemplateOutput, context: context)
        type = Types::CreateTaskTemplateOutput.new
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module CreateUseCaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUseCaseInput, context: context)
        type = Types::CreateUseCaseInput.new
        type.instance_id = params[:instance_id]
        type.integration_association_id = params[:integration_association_id]
        type.use_case_type = params[:use_case_type]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUseCaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUseCaseOutput, context: context)
        type = Types::CreateUseCaseOutput.new
        type.use_case_id = params[:use_case_id]
        type.use_case_arn = params[:use_case_arn]
        type
      end
    end

    module CreateUserHierarchyGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserHierarchyGroupInput, context: context)
        type = Types::CreateUserHierarchyGroupInput.new
        type.name = params[:name]
        type.parent_group_id = params[:parent_group_id]
        type.instance_id = params[:instance_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUserHierarchyGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserHierarchyGroupOutput, context: context)
        type = Types::CreateUserHierarchyGroupOutput.new
        type.hierarchy_group_id = params[:hierarchy_group_id]
        type.hierarchy_group_arn = params[:hierarchy_group_arn]
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.username = params[:username]
        type.password = params[:password]
        type.identity_info = UserIdentityInfo.build(params[:identity_info], context: "#{context}[:identity_info]") unless params[:identity_info].nil?
        type.phone_config = UserPhoneConfig.build(params[:phone_config], context: "#{context}[:phone_config]") unless params[:phone_config].nil?
        type.directory_user_id = params[:directory_user_id]
        type.security_profile_ids = SecurityProfileIds.build(params[:security_profile_ids], context: "#{context}[:security_profile_ids]") unless params[:security_profile_ids].nil?
        type.routing_profile_id = params[:routing_profile_id]
        type.hierarchy_group_id = params[:hierarchy_group_id]
        type.instance_id = params[:instance_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type.user_id = params[:user_id]
        type.user_arn = params[:user_arn]
        type
      end
    end

    module CreateVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVocabularyInput, context: context)
        type = Types::CreateVocabularyInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.instance_id = params[:instance_id]
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.content = params[:content]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVocabularyOutput, context: context)
        type = Types::CreateVocabularyOutput.new
        type.vocabulary_arn = params[:vocabulary_arn]
        type.vocabulary_id = params[:vocabulary_id]
        type.state = params[:state]
        type
      end
    end

    module Credentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Credentials, context: context)
        type = Types::Credentials.new
        type.access_token = params[:access_token]
        type.access_token_expiration = params[:access_token_expiration]
        type.refresh_token = params[:refresh_token]
        type.refresh_token_expiration = params[:refresh_token_expiration]
        type
      end
    end

    module CurrentMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CurrentMetric, context: context)
        type = Types::CurrentMetric.new
        type.name = params[:name]
        type.unit = params[:unit]
        type
      end
    end

    module CurrentMetricData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CurrentMetricData, context: context)
        type = Types::CurrentMetricData.new
        type.metric = CurrentMetric.build(params[:metric], context: "#{context}[:metric]") unless params[:metric].nil?
        type.value = params[:value]
        type
      end
    end

    module CurrentMetricDataCollections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CurrentMetricData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CurrentMetricResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CurrentMetricResult, context: context)
        type = Types::CurrentMetricResult.new
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.collections = CurrentMetricDataCollections.build(params[:collections], context: "#{context}[:collections]") unless params[:collections].nil?
        type
      end
    end

    module CurrentMetricResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CurrentMetricResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CurrentMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CurrentMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DateReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateReference, context: context)
        type = Types::DateReference.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module DefaultVocabulary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultVocabulary, context: context)
        type = Types::DefaultVocabulary.new
        type.instance_id = params[:instance_id]
        type.language_code = params[:language_code]
        type.vocabulary_id = params[:vocabulary_id]
        type.vocabulary_name = params[:vocabulary_name]
        type
      end
    end

    module DefaultVocabularyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DefaultVocabulary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteContactFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactFlowInput, context: context)
        type = Types::DeleteContactFlowInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_id = params[:contact_flow_id]
        type
      end
    end

    module DeleteContactFlowModuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactFlowModuleInput, context: context)
        type = Types::DeleteContactFlowModuleInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_module_id = params[:contact_flow_module_id]
        type
      end
    end

    module DeleteContactFlowModuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactFlowModuleOutput, context: context)
        type = Types::DeleteContactFlowModuleOutput.new
        type
      end
    end

    module DeleteContactFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactFlowOutput, context: context)
        type = Types::DeleteContactFlowOutput.new
        type
      end
    end

    module DeleteHoursOfOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHoursOfOperationInput, context: context)
        type = Types::DeleteHoursOfOperationInput.new
        type.instance_id = params[:instance_id]
        type.hours_of_operation_id = params[:hours_of_operation_id]
        type
      end
    end

    module DeleteHoursOfOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHoursOfOperationOutput, context: context)
        type = Types::DeleteHoursOfOperationOutput.new
        type
      end
    end

    module DeleteInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceInput, context: context)
        type = Types::DeleteInstanceInput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DeleteInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceOutput, context: context)
        type = Types::DeleteInstanceOutput.new
        type
      end
    end

    module DeleteIntegrationAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntegrationAssociationInput, context: context)
        type = Types::DeleteIntegrationAssociationInput.new
        type.instance_id = params[:instance_id]
        type.integration_association_id = params[:integration_association_id]
        type
      end
    end

    module DeleteIntegrationAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntegrationAssociationOutput, context: context)
        type = Types::DeleteIntegrationAssociationOutput.new
        type
      end
    end

    module DeleteQuickConnectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQuickConnectInput, context: context)
        type = Types::DeleteQuickConnectInput.new
        type.instance_id = params[:instance_id]
        type.quick_connect_id = params[:quick_connect_id]
        type
      end
    end

    module DeleteQuickConnectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQuickConnectOutput, context: context)
        type = Types::DeleteQuickConnectOutput.new
        type
      end
    end

    module DeleteSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSecurityProfileInput, context: context)
        type = Types::DeleteSecurityProfileInput.new
        type.instance_id = params[:instance_id]
        type.security_profile_id = params[:security_profile_id]
        type
      end
    end

    module DeleteSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSecurityProfileOutput, context: context)
        type = Types::DeleteSecurityProfileOutput.new
        type
      end
    end

    module DeleteTaskTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTaskTemplateInput, context: context)
        type = Types::DeleteTaskTemplateInput.new
        type.instance_id = params[:instance_id]
        type.task_template_id = params[:task_template_id]
        type
      end
    end

    module DeleteTaskTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTaskTemplateOutput, context: context)
        type = Types::DeleteTaskTemplateOutput.new
        type
      end
    end

    module DeleteUseCaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUseCaseInput, context: context)
        type = Types::DeleteUseCaseInput.new
        type.instance_id = params[:instance_id]
        type.integration_association_id = params[:integration_association_id]
        type.use_case_id = params[:use_case_id]
        type
      end
    end

    module DeleteUseCaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUseCaseOutput, context: context)
        type = Types::DeleteUseCaseOutput.new
        type
      end
    end

    module DeleteUserHierarchyGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserHierarchyGroupInput, context: context)
        type = Types::DeleteUserHierarchyGroupInput.new
        type.hierarchy_group_id = params[:hierarchy_group_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DeleteUserHierarchyGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserHierarchyGroupOutput, context: context)
        type = Types::DeleteUserHierarchyGroupOutput.new
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.instance_id = params[:instance_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type
      end
    end

    module DeleteVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVocabularyInput, context: context)
        type = Types::DeleteVocabularyInput.new
        type.instance_id = params[:instance_id]
        type.vocabulary_id = params[:vocabulary_id]
        type
      end
    end

    module DeleteVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVocabularyOutput, context: context)
        type = Types::DeleteVocabularyOutput.new
        type.vocabulary_arn = params[:vocabulary_arn]
        type.vocabulary_id = params[:vocabulary_id]
        type.state = params[:state]
        type
      end
    end

    module DescribeAgentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAgentStatusInput, context: context)
        type = Types::DescribeAgentStatusInput.new
        type.instance_id = params[:instance_id]
        type.agent_status_id = params[:agent_status_id]
        type
      end
    end

    module DescribeAgentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAgentStatusOutput, context: context)
        type = Types::DescribeAgentStatusOutput.new
        type.agent_status = AgentStatus.build(params[:agent_status], context: "#{context}[:agent_status]") unless params[:agent_status].nil?
        type
      end
    end

    module DescribeContactFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContactFlowInput, context: context)
        type = Types::DescribeContactFlowInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_id = params[:contact_flow_id]
        type
      end
    end

    module DescribeContactFlowModuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContactFlowModuleInput, context: context)
        type = Types::DescribeContactFlowModuleInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_module_id = params[:contact_flow_module_id]
        type
      end
    end

    module DescribeContactFlowModuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContactFlowModuleOutput, context: context)
        type = Types::DescribeContactFlowModuleOutput.new
        type.contact_flow_module = ContactFlowModule.build(params[:contact_flow_module], context: "#{context}[:contact_flow_module]") unless params[:contact_flow_module].nil?
        type
      end
    end

    module DescribeContactFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContactFlowOutput, context: context)
        type = Types::DescribeContactFlowOutput.new
        type.contact_flow = ContactFlow.build(params[:contact_flow], context: "#{context}[:contact_flow]") unless params[:contact_flow].nil?
        type
      end
    end

    module DescribeContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContactInput, context: context)
        type = Types::DescribeContactInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type
      end
    end

    module DescribeContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContactOutput, context: context)
        type = Types::DescribeContactOutput.new
        type.contact = Contact.build(params[:contact], context: "#{context}[:contact]") unless params[:contact].nil?
        type
      end
    end

    module DescribeHoursOfOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHoursOfOperationInput, context: context)
        type = Types::DescribeHoursOfOperationInput.new
        type.instance_id = params[:instance_id]
        type.hours_of_operation_id = params[:hours_of_operation_id]
        type
      end
    end

    module DescribeHoursOfOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHoursOfOperationOutput, context: context)
        type = Types::DescribeHoursOfOperationOutput.new
        type.hours_of_operation = HoursOfOperation.build(params[:hours_of_operation], context: "#{context}[:hours_of_operation]") unless params[:hours_of_operation].nil?
        type
      end
    end

    module DescribeInstanceAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceAttributeInput, context: context)
        type = Types::DescribeInstanceAttributeInput.new
        type.instance_id = params[:instance_id]
        type.attribute_type = params[:attribute_type]
        type
      end
    end

    module DescribeInstanceAttributeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceAttributeOutput, context: context)
        type = Types::DescribeInstanceAttributeOutput.new
        type.attribute = Attribute.build(params[:attribute], context: "#{context}[:attribute]") unless params[:attribute].nil?
        type
      end
    end

    module DescribeInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceInput, context: context)
        type = Types::DescribeInstanceInput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DescribeInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceOutput, context: context)
        type = Types::DescribeInstanceOutput.new
        type.instance = Instance.build(params[:instance], context: "#{context}[:instance]") unless params[:instance].nil?
        type
      end
    end

    module DescribeInstanceStorageConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceStorageConfigInput, context: context)
        type = Types::DescribeInstanceStorageConfigInput.new
        type.instance_id = params[:instance_id]
        type.association_id = params[:association_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module DescribeInstanceStorageConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceStorageConfigOutput, context: context)
        type = Types::DescribeInstanceStorageConfigOutput.new
        type.storage_config = InstanceStorageConfig.build(params[:storage_config], context: "#{context}[:storage_config]") unless params[:storage_config].nil?
        type
      end
    end

    module DescribePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePhoneNumberInput, context: context)
        type = Types::DescribePhoneNumberInput.new
        type.phone_number_id = params[:phone_number_id]
        type
      end
    end

    module DescribePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePhoneNumberOutput, context: context)
        type = Types::DescribePhoneNumberOutput.new
        type.claimed_phone_number_summary = ClaimedPhoneNumberSummary.build(params[:claimed_phone_number_summary], context: "#{context}[:claimed_phone_number_summary]") unless params[:claimed_phone_number_summary].nil?
        type
      end
    end

    module DescribeQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQueueInput, context: context)
        type = Types::DescribeQueueInput.new
        type.instance_id = params[:instance_id]
        type.queue_id = params[:queue_id]
        type
      end
    end

    module DescribeQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQueueOutput, context: context)
        type = Types::DescribeQueueOutput.new
        type.queue = Queue.build(params[:queue], context: "#{context}[:queue]") unless params[:queue].nil?
        type
      end
    end

    module DescribeQuickConnectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQuickConnectInput, context: context)
        type = Types::DescribeQuickConnectInput.new
        type.instance_id = params[:instance_id]
        type.quick_connect_id = params[:quick_connect_id]
        type
      end
    end

    module DescribeQuickConnectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQuickConnectOutput, context: context)
        type = Types::DescribeQuickConnectOutput.new
        type.quick_connect = QuickConnect.build(params[:quick_connect], context: "#{context}[:quick_connect]") unless params[:quick_connect].nil?
        type
      end
    end

    module DescribeRoutingProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRoutingProfileInput, context: context)
        type = Types::DescribeRoutingProfileInput.new
        type.instance_id = params[:instance_id]
        type.routing_profile_id = params[:routing_profile_id]
        type
      end
    end

    module DescribeRoutingProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRoutingProfileOutput, context: context)
        type = Types::DescribeRoutingProfileOutput.new
        type.routing_profile = RoutingProfile.build(params[:routing_profile], context: "#{context}[:routing_profile]") unless params[:routing_profile].nil?
        type
      end
    end

    module DescribeSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityProfileInput, context: context)
        type = Types::DescribeSecurityProfileInput.new
        type.security_profile_id = params[:security_profile_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DescribeSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityProfileOutput, context: context)
        type = Types::DescribeSecurityProfileOutput.new
        type.security_profile = SecurityProfile.build(params[:security_profile], context: "#{context}[:security_profile]") unless params[:security_profile].nil?
        type
      end
    end

    module DescribeUserHierarchyGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserHierarchyGroupInput, context: context)
        type = Types::DescribeUserHierarchyGroupInput.new
        type.hierarchy_group_id = params[:hierarchy_group_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DescribeUserHierarchyGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserHierarchyGroupOutput, context: context)
        type = Types::DescribeUserHierarchyGroupOutput.new
        type.hierarchy_group = HierarchyGroup.build(params[:hierarchy_group], context: "#{context}[:hierarchy_group]") unless params[:hierarchy_group].nil?
        type
      end
    end

    module DescribeUserHierarchyStructureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserHierarchyStructureInput, context: context)
        type = Types::DescribeUserHierarchyStructureInput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DescribeUserHierarchyStructureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserHierarchyStructureOutput, context: context)
        type = Types::DescribeUserHierarchyStructureOutput.new
        type.hierarchy_structure = HierarchyStructure.build(params[:hierarchy_structure], context: "#{context}[:hierarchy_structure]") unless params[:hierarchy_structure].nil?
        type
      end
    end

    module DescribeUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserInput, context: context)
        type = Types::DescribeUserInput.new
        type.user_id = params[:user_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DescribeUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserOutput, context: context)
        type = Types::DescribeUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module DescribeVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVocabularyInput, context: context)
        type = Types::DescribeVocabularyInput.new
        type.instance_id = params[:instance_id]
        type.vocabulary_id = params[:vocabulary_id]
        type
      end
    end

    module DescribeVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVocabularyOutput, context: context)
        type = Types::DescribeVocabularyOutput.new
        type.vocabulary = Vocabulary.build(params[:vocabulary], context: "#{context}[:vocabulary]") unless params[:vocabulary].nil?
        type
      end
    end

    module DestinationNotAllowedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationNotAllowedException, context: context)
        type = Types::DestinationNotAllowedException.new
        type.message = params[:message]
        type
      end
    end

    module Dimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dimensions, context: context)
        type = Types::Dimensions.new
        type.queue = QueueReference.build(params[:queue], context: "#{context}[:queue]") unless params[:queue].nil?
        type.channel = params[:channel]
        type
      end
    end

    module DisassociateApprovedOriginInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApprovedOriginInput, context: context)
        type = Types::DisassociateApprovedOriginInput.new
        type.instance_id = params[:instance_id]
        type.origin = params[:origin]
        type
      end
    end

    module DisassociateApprovedOriginOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApprovedOriginOutput, context: context)
        type = Types::DisassociateApprovedOriginOutput.new
        type
      end
    end

    module DisassociateBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateBotInput, context: context)
        type = Types::DisassociateBotInput.new
        type.instance_id = params[:instance_id]
        type.lex_bot = LexBot.build(params[:lex_bot], context: "#{context}[:lex_bot]") unless params[:lex_bot].nil?
        type.lex_v2_bot = LexV2Bot.build(params[:lex_v2_bot], context: "#{context}[:lex_v2_bot]") unless params[:lex_v2_bot].nil?
        type
      end
    end

    module DisassociateBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateBotOutput, context: context)
        type = Types::DisassociateBotOutput.new
        type
      end
    end

    module DisassociateInstanceStorageConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateInstanceStorageConfigInput, context: context)
        type = Types::DisassociateInstanceStorageConfigInput.new
        type.instance_id = params[:instance_id]
        type.association_id = params[:association_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module DisassociateInstanceStorageConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateInstanceStorageConfigOutput, context: context)
        type = Types::DisassociateInstanceStorageConfigOutput.new
        type
      end
    end

    module DisassociateLambdaFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLambdaFunctionInput, context: context)
        type = Types::DisassociateLambdaFunctionInput.new
        type.instance_id = params[:instance_id]
        type.function_arn = params[:function_arn]
        type
      end
    end

    module DisassociateLambdaFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLambdaFunctionOutput, context: context)
        type = Types::DisassociateLambdaFunctionOutput.new
        type
      end
    end

    module DisassociateLexBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLexBotInput, context: context)
        type = Types::DisassociateLexBotInput.new
        type.instance_id = params[:instance_id]
        type.bot_name = params[:bot_name]
        type.lex_region = params[:lex_region]
        type
      end
    end

    module DisassociateLexBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLexBotOutput, context: context)
        type = Types::DisassociateLexBotOutput.new
        type
      end
    end

    module DisassociatePhoneNumberContactFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePhoneNumberContactFlowInput, context: context)
        type = Types::DisassociatePhoneNumberContactFlowInput.new
        type.phone_number_id = params[:phone_number_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DisassociatePhoneNumberContactFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePhoneNumberContactFlowOutput, context: context)
        type = Types::DisassociatePhoneNumberContactFlowOutput.new
        type
      end
    end

    module DisassociateQueueQuickConnectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateQueueQuickConnectsInput, context: context)
        type = Types::DisassociateQueueQuickConnectsInput.new
        type.instance_id = params[:instance_id]
        type.queue_id = params[:queue_id]
        type.quick_connect_ids = QuickConnectsList.build(params[:quick_connect_ids], context: "#{context}[:quick_connect_ids]") unless params[:quick_connect_ids].nil?
        type
      end
    end

    module DisassociateQueueQuickConnectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateQueueQuickConnectsOutput, context: context)
        type = Types::DisassociateQueueQuickConnectsOutput.new
        type
      end
    end

    module DisassociateRoutingProfileQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateRoutingProfileQueuesInput, context: context)
        type = Types::DisassociateRoutingProfileQueuesInput.new
        type.instance_id = params[:instance_id]
        type.routing_profile_id = params[:routing_profile_id]
        type.queue_references = RoutingProfileQueueReferenceList.build(params[:queue_references], context: "#{context}[:queue_references]") unless params[:queue_references].nil?
        type
      end
    end

    module DisassociateRoutingProfileQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateRoutingProfileQueuesOutput, context: context)
        type = Types::DisassociateRoutingProfileQueuesOutput.new
        type
      end
    end

    module DisassociateSecurityKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSecurityKeyInput, context: context)
        type = Types::DisassociateSecurityKeyInput.new
        type.instance_id = params[:instance_id]
        type.association_id = params[:association_id]
        type
      end
    end

    module DisassociateSecurityKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSecurityKeyOutput, context: context)
        type = Types::DisassociateSecurityKeyOutput.new
        type
      end
    end

    module DuplicateResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateResourceException, context: context)
        type = Types::DuplicateResourceException.new
        type.message = params[:message]
        type
      end
    end

    module EmailReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailReference, context: context)
        type = Types::EmailReference.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module EncryptionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfig, context: context)
        type = Types::EncryptionConfig.new
        type.encryption_type = params[:encryption_type]
        type.key_id = params[:key_id]
        type
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filters, context: context)
        type = Types::Filters.new
        type.queues = Queues.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type.channels = Channels.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type
      end
    end

    module FunctionArnsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetContactAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactAttributesInput, context: context)
        type = Types::GetContactAttributesInput.new
        type.instance_id = params[:instance_id]
        type.initial_contact_id = params[:initial_contact_id]
        type
      end
    end

    module GetContactAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactAttributesOutput, context: context)
        type = Types::GetContactAttributesOutput.new
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module GetCurrentMetricDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCurrentMetricDataInput, context: context)
        type = Types::GetCurrentMetricDataInput.new
        type.instance_id = params[:instance_id]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.groupings = Groupings.build(params[:groupings], context: "#{context}[:groupings]") unless params[:groupings].nil?
        type.current_metrics = CurrentMetrics.build(params[:current_metrics], context: "#{context}[:current_metrics]") unless params[:current_metrics].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetCurrentMetricDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCurrentMetricDataOutput, context: context)
        type = Types::GetCurrentMetricDataOutput.new
        type.next_token = params[:next_token]
        type.metric_results = CurrentMetricResults.build(params[:metric_results], context: "#{context}[:metric_results]") unless params[:metric_results].nil?
        type.data_snapshot_time = params[:data_snapshot_time]
        type
      end
    end

    module GetCurrentUserDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCurrentUserDataInput, context: context)
        type = Types::GetCurrentUserDataInput.new
        type.instance_id = params[:instance_id]
        type.filters = UserDataFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetCurrentUserDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCurrentUserDataOutput, context: context)
        type = Types::GetCurrentUserDataOutput.new
        type.next_token = params[:next_token]
        type.user_data_list = UserDataList.build(params[:user_data_list], context: "#{context}[:user_data_list]") unless params[:user_data_list].nil?
        type
      end
    end

    module GetFederationTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFederationTokenInput, context: context)
        type = Types::GetFederationTokenInput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module GetFederationTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFederationTokenOutput, context: context)
        type = Types::GetFederationTokenOutput.new
        type.credentials = Credentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type
      end
    end

    module GetMetricDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMetricDataInput, context: context)
        type = Types::GetMetricDataInput.new
        type.instance_id = params[:instance_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.groupings = Groupings.build(params[:groupings], context: "#{context}[:groupings]") unless params[:groupings].nil?
        type.historical_metrics = HistoricalMetrics.build(params[:historical_metrics], context: "#{context}[:historical_metrics]") unless params[:historical_metrics].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetMetricDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMetricDataOutput, context: context)
        type = Types::GetMetricDataOutput.new
        type.next_token = params[:next_token]
        type.metric_results = HistoricalMetricResults.build(params[:metric_results], context: "#{context}[:metric_results]") unless params[:metric_results].nil?
        type
      end
    end

    module GetTaskTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTaskTemplateInput, context: context)
        type = Types::GetTaskTemplateInput.new
        type.instance_id = params[:instance_id]
        type.task_template_id = params[:task_template_id]
        type.snapshot_version = params[:snapshot_version]
        type
      end
    end

    module GetTaskTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTaskTemplateOutput, context: context)
        type = Types::GetTaskTemplateOutput.new
        type.instance_id = params[:instance_id]
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.contact_flow_id = params[:contact_flow_id]
        type.constraints = TaskTemplateConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.defaults = TaskTemplateDefaults.build(params[:defaults], context: "#{context}[:defaults]") unless params[:defaults].nil?
        type.fields = TaskTemplateFields.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.status = params[:status]
        type.last_modified_time = params[:last_modified_time]
        type.created_time = params[:created_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Groupings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HierarchyGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyGroup, context: context)
        type = Types::HierarchyGroup.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.level_id = params[:level_id]
        type.hierarchy_path = HierarchyPath.build(params[:hierarchy_path], context: "#{context}[:hierarchy_path]") unless params[:hierarchy_path].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module HierarchyGroupCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyGroupCondition, context: context)
        type = Types::HierarchyGroupCondition.new
        type.value = params[:value]
        type.hierarchy_group_match_type = params[:hierarchy_group_match_type]
        type
      end
    end

    module HierarchyGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyGroupSummary, context: context)
        type = Types::HierarchyGroupSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module HierarchyGroupSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HierarchyGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HierarchyGroupSummaryReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyGroupSummaryReference, context: context)
        type = Types::HierarchyGroupSummaryReference.new
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module HierarchyLevel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyLevel, context: context)
        type = Types::HierarchyLevel.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module HierarchyLevelUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyLevelUpdate, context: context)
        type = Types::HierarchyLevelUpdate.new
        type.name = params[:name]
        type
      end
    end

    module HierarchyPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyPath, context: context)
        type = Types::HierarchyPath.new
        type.level_one = HierarchyGroupSummary.build(params[:level_one], context: "#{context}[:level_one]") unless params[:level_one].nil?
        type.level_two = HierarchyGroupSummary.build(params[:level_two], context: "#{context}[:level_two]") unless params[:level_two].nil?
        type.level_three = HierarchyGroupSummary.build(params[:level_three], context: "#{context}[:level_three]") unless params[:level_three].nil?
        type.level_four = HierarchyGroupSummary.build(params[:level_four], context: "#{context}[:level_four]") unless params[:level_four].nil?
        type.level_five = HierarchyGroupSummary.build(params[:level_five], context: "#{context}[:level_five]") unless params[:level_five].nil?
        type
      end
    end

    module HierarchyPathReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyPathReference, context: context)
        type = Types::HierarchyPathReference.new
        type.level_one = HierarchyGroupSummaryReference.build(params[:level_one], context: "#{context}[:level_one]") unless params[:level_one].nil?
        type.level_two = HierarchyGroupSummaryReference.build(params[:level_two], context: "#{context}[:level_two]") unless params[:level_two].nil?
        type.level_three = HierarchyGroupSummaryReference.build(params[:level_three], context: "#{context}[:level_three]") unless params[:level_three].nil?
        type.level_four = HierarchyGroupSummaryReference.build(params[:level_four], context: "#{context}[:level_four]") unless params[:level_four].nil?
        type.level_five = HierarchyGroupSummaryReference.build(params[:level_five], context: "#{context}[:level_five]") unless params[:level_five].nil?
        type
      end
    end

    module HierarchyStructure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyStructure, context: context)
        type = Types::HierarchyStructure.new
        type.level_one = HierarchyLevel.build(params[:level_one], context: "#{context}[:level_one]") unless params[:level_one].nil?
        type.level_two = HierarchyLevel.build(params[:level_two], context: "#{context}[:level_two]") unless params[:level_two].nil?
        type.level_three = HierarchyLevel.build(params[:level_three], context: "#{context}[:level_three]") unless params[:level_three].nil?
        type.level_four = HierarchyLevel.build(params[:level_four], context: "#{context}[:level_four]") unless params[:level_four].nil?
        type.level_five = HierarchyLevel.build(params[:level_five], context: "#{context}[:level_five]") unless params[:level_five].nil?
        type
      end
    end

    module HierarchyStructureUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyStructureUpdate, context: context)
        type = Types::HierarchyStructureUpdate.new
        type.level_one = HierarchyLevelUpdate.build(params[:level_one], context: "#{context}[:level_one]") unless params[:level_one].nil?
        type.level_two = HierarchyLevelUpdate.build(params[:level_two], context: "#{context}[:level_two]") unless params[:level_two].nil?
        type.level_three = HierarchyLevelUpdate.build(params[:level_three], context: "#{context}[:level_three]") unless params[:level_three].nil?
        type.level_four = HierarchyLevelUpdate.build(params[:level_four], context: "#{context}[:level_four]") unless params[:level_four].nil?
        type.level_five = HierarchyLevelUpdate.build(params[:level_five], context: "#{context}[:level_five]") unless params[:level_five].nil?
        type
      end
    end

    module HistoricalMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HistoricalMetric, context: context)
        type = Types::HistoricalMetric.new
        type.name = params[:name]
        type.threshold = Threshold.build(params[:threshold], context: "#{context}[:threshold]") unless params[:threshold].nil?
        type.statistic = params[:statistic]
        type.unit = params[:unit]
        type
      end
    end

    module HistoricalMetricData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HistoricalMetricData, context: context)
        type = Types::HistoricalMetricData.new
        type.metric = HistoricalMetric.build(params[:metric], context: "#{context}[:metric]") unless params[:metric].nil?
        type.value = params[:value]
        type
      end
    end

    module HistoricalMetricDataCollections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HistoricalMetricData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HistoricalMetricResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HistoricalMetricResult, context: context)
        type = Types::HistoricalMetricResult.new
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.collections = HistoricalMetricDataCollections.build(params[:collections], context: "#{context}[:collections]") unless params[:collections].nil?
        type
      end
    end

    module HistoricalMetricResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HistoricalMetricResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HistoricalMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HistoricalMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HoursOfOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HoursOfOperation, context: context)
        type = Types::HoursOfOperation.new
        type.hours_of_operation_id = params[:hours_of_operation_id]
        type.hours_of_operation_arn = params[:hours_of_operation_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.time_zone = params[:time_zone]
        type.config = HoursOfOperationConfigList.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module HoursOfOperationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HoursOfOperationConfig, context: context)
        type = Types::HoursOfOperationConfig.new
        type.day = params[:day]
        type.start_time = HoursOfOperationTimeSlice.build(params[:start_time], context: "#{context}[:start_time]") unless params[:start_time].nil?
        type.end_time = HoursOfOperationTimeSlice.build(params[:end_time], context: "#{context}[:end_time]") unless params[:end_time].nil?
        type
      end
    end

    module HoursOfOperationConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HoursOfOperationConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HoursOfOperationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HoursOfOperationSummary, context: context)
        type = Types::HoursOfOperationSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module HoursOfOperationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HoursOfOperationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HoursOfOperationTimeSlice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HoursOfOperationTimeSlice, context: context)
        type = Types::HoursOfOperationTimeSlice.new
        type.hours = params[:hours]
        type.minutes = params[:minutes]
        type
      end
    end

    module IdempotencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotencyException, context: context)
        type = Types::IdempotencyException.new
        type.message = params[:message]
        type
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.identity_management_type = params[:identity_management_type]
        type.instance_alias = params[:instance_alias]
        type.created_time = params[:created_time]
        type.service_role = params[:service_role]
        type.instance_status = params[:instance_status]
        type.status_reason = InstanceStatusReason.build(params[:status_reason], context: "#{context}[:status_reason]") unless params[:status_reason].nil?
        type.inbound_calls_enabled = params[:inbound_calls_enabled]
        type.outbound_calls_enabled = params[:outbound_calls_enabled]
        type
      end
    end

    module InstanceStatusReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceStatusReason, context: context)
        type = Types::InstanceStatusReason.new
        type.message = params[:message]
        type
      end
    end

    module InstanceStorageConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceStorageConfig, context: context)
        type = Types::InstanceStorageConfig.new
        type.association_id = params[:association_id]
        type.storage_type = params[:storage_type]
        type.s3_config = S3Config.build(params[:s3_config], context: "#{context}[:s3_config]") unless params[:s3_config].nil?
        type.kinesis_video_stream_config = KinesisVideoStreamConfig.build(params[:kinesis_video_stream_config], context: "#{context}[:kinesis_video_stream_config]") unless params[:kinesis_video_stream_config].nil?
        type.kinesis_stream_config = KinesisStreamConfig.build(params[:kinesis_stream_config], context: "#{context}[:kinesis_stream_config]") unless params[:kinesis_stream_config].nil?
        type.kinesis_firehose_config = KinesisFirehoseConfig.build(params[:kinesis_firehose_config], context: "#{context}[:kinesis_firehose_config]") unless params[:kinesis_firehose_config].nil?
        type
      end
    end

    module InstanceStorageConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceStorageConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceSummary, context: context)
        type = Types::InstanceSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.identity_management_type = params[:identity_management_type]
        type.instance_alias = params[:instance_alias]
        type.created_time = params[:created_time]
        type.service_role = params[:service_role]
        type.instance_status = params[:instance_status]
        type.inbound_calls_enabled = params[:inbound_calls_enabled]
        type.outbound_calls_enabled = params[:outbound_calls_enabled]
        type
      end
    end

    module InstanceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntegrationAssociationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegrationAssociationSummary, context: context)
        type = Types::IntegrationAssociationSummary.new
        type.integration_association_id = params[:integration_association_id]
        type.integration_association_arn = params[:integration_association_arn]
        type.instance_id = params[:instance_id]
        type.integration_type = params[:integration_type]
        type.integration_arn = params[:integration_arn]
        type.source_application_url = params[:source_application_url]
        type.source_application_name = params[:source_application_name]
        type.source_type = params[:source_type]
        type
      end
    end

    module IntegrationAssociationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntegrationAssociationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidContactFlowException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidContactFlowException, context: context)
        type = Types::InvalidContactFlowException.new
        type.problems = Problems.build(params[:problems], context: "#{context}[:problems]") unless params[:problems].nil?
        type
      end
    end

    module InvalidContactFlowModuleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidContactFlowModuleException, context: context)
        type = Types::InvalidContactFlowModuleException.new
        type.problems = Problems.build(params[:problems], context: "#{context}[:problems]") unless params[:problems].nil?
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module InvisibleFieldInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvisibleFieldInfo, context: context)
        type = Types::InvisibleFieldInfo.new
        type.id = TaskTemplateFieldIdentifier.build(params[:id], context: "#{context}[:id]") unless params[:id].nil?
        type
      end
    end

    module InvisibleTaskTemplateFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InvisibleFieldInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KinesisFirehoseConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseConfig, context: context)
        type = Types::KinesisFirehoseConfig.new
        type.firehose_arn = params[:firehose_arn]
        type
      end
    end

    module KinesisStreamConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamConfig, context: context)
        type = Types::KinesisStreamConfig.new
        type.stream_arn = params[:stream_arn]
        type
      end
    end

    module KinesisVideoStreamConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisVideoStreamConfig, context: context)
        type = Types::KinesisVideoStreamConfig.new
        type.prefix = params[:prefix]
        type.retention_period_hours = params[:retention_period_hours]
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type
      end
    end

    module LexBot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LexBot, context: context)
        type = Types::LexBot.new
        type.name = params[:name]
        type.lex_region = params[:lex_region]
        type
      end
    end

    module LexBotConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LexBotConfig, context: context)
        type = Types::LexBotConfig.new
        type.lex_bot = LexBot.build(params[:lex_bot], context: "#{context}[:lex_bot]") unless params[:lex_bot].nil?
        type.lex_v2_bot = LexV2Bot.build(params[:lex_v2_bot], context: "#{context}[:lex_v2_bot]") unless params[:lex_v2_bot].nil?
        type
      end
    end

    module LexBotConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LexBotConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LexBotsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LexBot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LexV2Bot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LexV2Bot, context: context)
        type = Types::LexV2Bot.new
        type.alias_arn = params[:alias_arn]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAgentStatusesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAgentStatusesInput, context: context)
        type = Types::ListAgentStatusesInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.agent_status_types = AgentStatusTypes.build(params[:agent_status_types], context: "#{context}[:agent_status_types]") unless params[:agent_status_types].nil?
        type
      end
    end

    module ListAgentStatusesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAgentStatusesOutput, context: context)
        type = Types::ListAgentStatusesOutput.new
        type.next_token = params[:next_token]
        type.agent_status_summary_list = AgentStatusSummaryList.build(params[:agent_status_summary_list], context: "#{context}[:agent_status_summary_list]") unless params[:agent_status_summary_list].nil?
        type
      end
    end

    module ListApprovedOriginsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApprovedOriginsInput, context: context)
        type = Types::ListApprovedOriginsInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListApprovedOriginsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApprovedOriginsOutput, context: context)
        type = Types::ListApprovedOriginsOutput.new
        type.origins = OriginsList.build(params[:origins], context: "#{context}[:origins]") unless params[:origins].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotsInput, context: context)
        type = Types::ListBotsInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.lex_version = params[:lex_version]
        type
      end
    end

    module ListBotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotsOutput, context: context)
        type = Types::ListBotsOutput.new
        type.lex_bots = LexBotConfigList.build(params[:lex_bots], context: "#{context}[:lex_bots]") unless params[:lex_bots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContactFlowModulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactFlowModulesInput, context: context)
        type = Types::ListContactFlowModulesInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.contact_flow_module_state = params[:contact_flow_module_state]
        type
      end
    end

    module ListContactFlowModulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactFlowModulesOutput, context: context)
        type = Types::ListContactFlowModulesOutput.new
        type.contact_flow_modules_summary_list = ContactFlowModulesSummaryList.build(params[:contact_flow_modules_summary_list], context: "#{context}[:contact_flow_modules_summary_list]") unless params[:contact_flow_modules_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContactFlowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactFlowsInput, context: context)
        type = Types::ListContactFlowsInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_types = ContactFlowTypes.build(params[:contact_flow_types], context: "#{context}[:contact_flow_types]") unless params[:contact_flow_types].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListContactFlowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactFlowsOutput, context: context)
        type = Types::ListContactFlowsOutput.new
        type.contact_flow_summary_list = ContactFlowSummaryList.build(params[:contact_flow_summary_list], context: "#{context}[:contact_flow_summary_list]") unless params[:contact_flow_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContactReferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactReferencesInput, context: context)
        type = Types::ListContactReferencesInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.reference_types = ReferenceTypes.build(params[:reference_types], context: "#{context}[:reference_types]") unless params[:reference_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContactReferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactReferencesOutput, context: context)
        type = Types::ListContactReferencesOutput.new
        type.reference_summary_list = ReferenceSummaryList.build(params[:reference_summary_list], context: "#{context}[:reference_summary_list]") unless params[:reference_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDefaultVocabulariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDefaultVocabulariesInput, context: context)
        type = Types::ListDefaultVocabulariesInput.new
        type.instance_id = params[:instance_id]
        type.language_code = params[:language_code]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDefaultVocabulariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDefaultVocabulariesOutput, context: context)
        type = Types::ListDefaultVocabulariesOutput.new
        type.default_vocabulary_list = DefaultVocabularyList.build(params[:default_vocabulary_list], context: "#{context}[:default_vocabulary_list]") unless params[:default_vocabulary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHoursOfOperationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHoursOfOperationsInput, context: context)
        type = Types::ListHoursOfOperationsInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListHoursOfOperationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHoursOfOperationsOutput, context: context)
        type = Types::ListHoursOfOperationsOutput.new
        type.hours_of_operation_summary_list = HoursOfOperationSummaryList.build(params[:hours_of_operation_summary_list], context: "#{context}[:hours_of_operation_summary_list]") unless params[:hours_of_operation_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInstanceAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceAttributesInput, context: context)
        type = Types::ListInstanceAttributesInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListInstanceAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceAttributesOutput, context: context)
        type = Types::ListInstanceAttributesOutput.new
        type.attributes = AttributesList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInstanceStorageConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceStorageConfigsInput, context: context)
        type = Types::ListInstanceStorageConfigsInput.new
        type.instance_id = params[:instance_id]
        type.resource_type = params[:resource_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListInstanceStorageConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceStorageConfigsOutput, context: context)
        type = Types::ListInstanceStorageConfigsOutput.new
        type.storage_configs = InstanceStorageConfigs.build(params[:storage_configs], context: "#{context}[:storage_configs]") unless params[:storage_configs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstancesInput, context: context)
        type = Types::ListInstancesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstancesOutput, context: context)
        type = Types::ListInstancesOutput.new
        type.instance_summary_list = InstanceSummaryList.build(params[:instance_summary_list], context: "#{context}[:instance_summary_list]") unless params[:instance_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIntegrationAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIntegrationAssociationsInput, context: context)
        type = Types::ListIntegrationAssociationsInput.new
        type.instance_id = params[:instance_id]
        type.integration_type = params[:integration_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListIntegrationAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIntegrationAssociationsOutput, context: context)
        type = Types::ListIntegrationAssociationsOutput.new
        type.integration_association_summary_list = IntegrationAssociationSummaryList.build(params[:integration_association_summary_list], context: "#{context}[:integration_association_summary_list]") unless params[:integration_association_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLambdaFunctionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLambdaFunctionsInput, context: context)
        type = Types::ListLambdaFunctionsInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLambdaFunctionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLambdaFunctionsOutput, context: context)
        type = Types::ListLambdaFunctionsOutput.new
        type.lambda_functions = FunctionArnsList.build(params[:lambda_functions], context: "#{context}[:lambda_functions]") unless params[:lambda_functions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLexBotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLexBotsInput, context: context)
        type = Types::ListLexBotsInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLexBotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLexBotsOutput, context: context)
        type = Types::ListLexBotsOutput.new
        type.lex_bots = LexBotsList.build(params[:lex_bots], context: "#{context}[:lex_bots]") unless params[:lex_bots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPhoneNumbersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumbersInput, context: context)
        type = Types::ListPhoneNumbersInput.new
        type.instance_id = params[:instance_id]
        type.phone_number_types = PhoneNumberTypes.build(params[:phone_number_types], context: "#{context}[:phone_number_types]") unless params[:phone_number_types].nil?
        type.phone_number_country_codes = PhoneNumberCountryCodes.build(params[:phone_number_country_codes], context: "#{context}[:phone_number_country_codes]") unless params[:phone_number_country_codes].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPhoneNumbersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumbersOutput, context: context)
        type = Types::ListPhoneNumbersOutput.new
        type.phone_number_summary_list = PhoneNumberSummaryList.build(params[:phone_number_summary_list], context: "#{context}[:phone_number_summary_list]") unless params[:phone_number_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPhoneNumbersSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumbersSummary, context: context)
        type = Types::ListPhoneNumbersSummary.new
        type.phone_number_id = params[:phone_number_id]
        type.phone_number_arn = params[:phone_number_arn]
        type.phone_number = params[:phone_number]
        type.phone_number_country_code = params[:phone_number_country_code]
        type.phone_number_type = params[:phone_number_type]
        type.target_arn = params[:target_arn]
        type
      end
    end

    module ListPhoneNumbersSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListPhoneNumbersSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListPhoneNumbersV2Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumbersV2Input, context: context)
        type = Types::ListPhoneNumbersV2Input.new
        type.target_arn = params[:target_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.phone_number_country_codes = PhoneNumberCountryCodes.build(params[:phone_number_country_codes], context: "#{context}[:phone_number_country_codes]") unless params[:phone_number_country_codes].nil?
        type.phone_number_types = PhoneNumberTypes.build(params[:phone_number_types], context: "#{context}[:phone_number_types]") unless params[:phone_number_types].nil?
        type.phone_number_prefix = params[:phone_number_prefix]
        type
      end
    end

    module ListPhoneNumbersV2Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumbersV2Output, context: context)
        type = Types::ListPhoneNumbersV2Output.new
        type.next_token = params[:next_token]
        type.list_phone_numbers_summary_list = ListPhoneNumbersSummaryList.build(params[:list_phone_numbers_summary_list], context: "#{context}[:list_phone_numbers_summary_list]") unless params[:list_phone_numbers_summary_list].nil?
        type
      end
    end

    module ListPromptsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPromptsInput, context: context)
        type = Types::ListPromptsInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPromptsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPromptsOutput, context: context)
        type = Types::ListPromptsOutput.new
        type.prompt_summary_list = PromptSummaryList.build(params[:prompt_summary_list], context: "#{context}[:prompt_summary_list]") unless params[:prompt_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListQueueQuickConnectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueueQuickConnectsInput, context: context)
        type = Types::ListQueueQuickConnectsInput.new
        type.instance_id = params[:instance_id]
        type.queue_id = params[:queue_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListQueueQuickConnectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueueQuickConnectsOutput, context: context)
        type = Types::ListQueueQuickConnectsOutput.new
        type.next_token = params[:next_token]
        type.quick_connect_summary_list = QuickConnectSummaryList.build(params[:quick_connect_summary_list], context: "#{context}[:quick_connect_summary_list]") unless params[:quick_connect_summary_list].nil?
        type
      end
    end

    module ListQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueuesInput, context: context)
        type = Types::ListQueuesInput.new
        type.instance_id = params[:instance_id]
        type.queue_types = QueueTypes.build(params[:queue_types], context: "#{context}[:queue_types]") unless params[:queue_types].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueuesOutput, context: context)
        type = Types::ListQueuesOutput.new
        type.queue_summary_list = QueueSummaryList.build(params[:queue_summary_list], context: "#{context}[:queue_summary_list]") unless params[:queue_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListQuickConnectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQuickConnectsInput, context: context)
        type = Types::ListQuickConnectsInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.quick_connect_types = QuickConnectTypes.build(params[:quick_connect_types], context: "#{context}[:quick_connect_types]") unless params[:quick_connect_types].nil?
        type
      end
    end

    module ListQuickConnectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQuickConnectsOutput, context: context)
        type = Types::ListQuickConnectsOutput.new
        type.quick_connect_summary_list = QuickConnectSummaryList.build(params[:quick_connect_summary_list], context: "#{context}[:quick_connect_summary_list]") unless params[:quick_connect_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoutingProfileQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutingProfileQueuesInput, context: context)
        type = Types::ListRoutingProfileQueuesInput.new
        type.instance_id = params[:instance_id]
        type.routing_profile_id = params[:routing_profile_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRoutingProfileQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutingProfileQueuesOutput, context: context)
        type = Types::ListRoutingProfileQueuesOutput.new
        type.next_token = params[:next_token]
        type.routing_profile_queue_config_summary_list = RoutingProfileQueueConfigSummaryList.build(params[:routing_profile_queue_config_summary_list], context: "#{context}[:routing_profile_queue_config_summary_list]") unless params[:routing_profile_queue_config_summary_list].nil?
        type
      end
    end

    module ListRoutingProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutingProfilesInput, context: context)
        type = Types::ListRoutingProfilesInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRoutingProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutingProfilesOutput, context: context)
        type = Types::ListRoutingProfilesOutput.new
        type.routing_profile_summary_list = RoutingProfileSummaryList.build(params[:routing_profile_summary_list], context: "#{context}[:routing_profile_summary_list]") unless params[:routing_profile_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSecurityKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityKeysInput, context: context)
        type = Types::ListSecurityKeysInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSecurityKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityKeysOutput, context: context)
        type = Types::ListSecurityKeysOutput.new
        type.security_keys = SecurityKeysList.build(params[:security_keys], context: "#{context}[:security_keys]") unless params[:security_keys].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSecurityProfilePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityProfilePermissionsInput, context: context)
        type = Types::ListSecurityProfilePermissionsInput.new
        type.security_profile_id = params[:security_profile_id]
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSecurityProfilePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityProfilePermissionsOutput, context: context)
        type = Types::ListSecurityProfilePermissionsOutput.new
        type.permissions = PermissionsList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSecurityProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityProfilesInput, context: context)
        type = Types::ListSecurityProfilesInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSecurityProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityProfilesOutput, context: context)
        type = Types::ListSecurityProfilesOutput.new
        type.security_profile_summary_list = SecurityProfileSummaryList.build(params[:security_profile_summary_list], context: "#{context}[:security_profile_summary_list]") unless params[:security_profile_summary_list].nil?
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

    module ListTaskTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTaskTemplatesInput, context: context)
        type = Types::ListTaskTemplatesInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.status = params[:status]
        type.name = params[:name]
        type
      end
    end

    module ListTaskTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTaskTemplatesOutput, context: context)
        type = Types::ListTaskTemplatesOutput.new
        type.task_templates = TaskTemplateList.build(params[:task_templates], context: "#{context}[:task_templates]") unless params[:task_templates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUseCasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUseCasesInput, context: context)
        type = Types::ListUseCasesInput.new
        type.instance_id = params[:instance_id]
        type.integration_association_id = params[:integration_association_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUseCasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUseCasesOutput, context: context)
        type = Types::ListUseCasesOutput.new
        type.use_case_summary_list = UseCaseSummaryList.build(params[:use_case_summary_list], context: "#{context}[:use_case_summary_list]") unless params[:use_case_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUserHierarchyGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserHierarchyGroupsInput, context: context)
        type = Types::ListUserHierarchyGroupsInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUserHierarchyGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserHierarchyGroupsOutput, context: context)
        type = Types::ListUserHierarchyGroupsOutput.new
        type.user_hierarchy_group_summary_list = HierarchyGroupSummaryList.build(params[:user_hierarchy_group_summary_list], context: "#{context}[:user_hierarchy_group_summary_list]") unless params[:user_hierarchy_group_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.user_summary_list = UserSummaryList.build(params[:user_summary_list], context: "#{context}[:user_summary_list]") unless params[:user_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MediaConcurrencies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaConcurrency.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MediaConcurrency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaConcurrency, context: context)
        type = Types::MediaConcurrency.new
        type.channel = params[:channel]
        type.concurrency = params[:concurrency]
        type
      end
    end

    module NumberReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberReference, context: context)
        type = Types::NumberReference.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module OriginsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OutboundCallerConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutboundCallerConfig, context: context)
        type = Types::OutboundCallerConfig.new
        type.outbound_caller_id_name = params[:outbound_caller_id_name]
        type.outbound_caller_id_number_id = params[:outbound_caller_id_number_id]
        type.outbound_flow_id = params[:outbound_flow_id]
        type
      end
    end

    module OutboundContactNotPermittedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutboundContactNotPermittedException, context: context)
        type = Types::OutboundContactNotPermittedException.new
        type.message = params[:message]
        type
      end
    end

    module ParticipantDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParticipantDetails, context: context)
        type = Types::ParticipantDetails.new
        type.display_name = params[:display_name]
        type
      end
    end

    module PermissionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PhoneNumberCountryCodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PhoneNumberQuickConnectConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberQuickConnectConfig, context: context)
        type = Types::PhoneNumberQuickConnectConfig.new
        type.phone_number = params[:phone_number]
        type
      end
    end

    module PhoneNumberStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberStatus, context: context)
        type = Types::PhoneNumberStatus.new
        type.status = params[:status]
        type.message = params[:message]
        type
      end
    end

    module PhoneNumberSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberSummary, context: context)
        type = Types::PhoneNumberSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.phone_number = params[:phone_number]
        type.phone_number_type = params[:phone_number_type]
        type.phone_number_country_code = params[:phone_number_country_code]
        type
      end
    end

    module PhoneNumberSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhoneNumberSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhoneNumberTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProblemDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProblemDetail, context: context)
        type = Types::ProblemDetail.new
        type.message = params[:message]
        type
      end
    end

    module Problems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProblemDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PromptSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PromptSummary, context: context)
        type = Types::PromptSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module PromptSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PromptSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PropertyValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyValidationException, context: context)
        type = Types::PropertyValidationException.new
        type.message = params[:message]
        type.property_list = PropertyValidationExceptionPropertyList.build(params[:property_list], context: "#{context}[:property_list]") unless params[:property_list].nil?
        type
      end
    end

    module PropertyValidationExceptionProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyValidationExceptionProperty, context: context)
        type = Types::PropertyValidationExceptionProperty.new
        type.property_path = params[:property_path]
        type.reason = params[:reason]
        type.message = params[:message]
        type
      end
    end

    module PropertyValidationExceptionPropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyValidationExceptionProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutUserStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutUserStatusInput, context: context)
        type = Types::PutUserStatusInput.new
        type.user_id = params[:user_id]
        type.instance_id = params[:instance_id]
        type.agent_status_id = params[:agent_status_id]
        type
      end
    end

    module PutUserStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutUserStatusOutput, context: context)
        type = Types::PutUserStatusOutput.new
        type
      end
    end

    module Queue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Queue, context: context)
        type = Types::Queue.new
        type.name = params[:name]
        type.queue_arn = params[:queue_arn]
        type.queue_id = params[:queue_id]
        type.description = params[:description]
        type.outbound_caller_config = OutboundCallerConfig.build(params[:outbound_caller_config], context: "#{context}[:outbound_caller_config]") unless params[:outbound_caller_config].nil?
        type.hours_of_operation_id = params[:hours_of_operation_id]
        type.max_contacts = params[:max_contacts]
        type.status = params[:status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module QueueInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueueInfo, context: context)
        type = Types::QueueInfo.new
        type.id = params[:id]
        type.enqueue_timestamp = params[:enqueue_timestamp]
        type
      end
    end

    module QueueQuickConnectConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueueQuickConnectConfig, context: context)
        type = Types::QueueQuickConnectConfig.new
        type.queue_id = params[:queue_id]
        type.contact_flow_id = params[:contact_flow_id]
        type
      end
    end

    module QueueReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueueReference, context: context)
        type = Types::QueueReference.new
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module QueueSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueueSummary, context: context)
        type = Types::QueueSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.queue_type = params[:queue_type]
        type
      end
    end

    module QueueSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueueSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueueTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Queues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module QuickConnect
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuickConnect, context: context)
        type = Types::QuickConnect.new
        type.quick_connect_arn = params[:quick_connect_arn]
        type.quick_connect_id = params[:quick_connect_id]
        type.name = params[:name]
        type.description = params[:description]
        type.quick_connect_config = QuickConnectConfig.build(params[:quick_connect_config], context: "#{context}[:quick_connect_config]") unless params[:quick_connect_config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module QuickConnectConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuickConnectConfig, context: context)
        type = Types::QuickConnectConfig.new
        type.quick_connect_type = params[:quick_connect_type]
        type.user_config = UserQuickConnectConfig.build(params[:user_config], context: "#{context}[:user_config]") unless params[:user_config].nil?
        type.queue_config = QueueQuickConnectConfig.build(params[:queue_config], context: "#{context}[:queue_config]") unless params[:queue_config].nil?
        type.phone_config = PhoneNumberQuickConnectConfig.build(params[:phone_config], context: "#{context}[:phone_config]") unless params[:phone_config].nil?
        type
      end
    end

    module QuickConnectSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuickConnectSummary, context: context)
        type = Types::QuickConnectSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.quick_connect_type = params[:quick_connect_type]
        type
      end
    end

    module QuickConnectSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QuickConnectSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QuickConnectTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module QuickConnectsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReadOnlyFieldInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReadOnlyFieldInfo, context: context)
        type = Types::ReadOnlyFieldInfo.new
        type.id = TaskTemplateFieldIdentifier.build(params[:id], context: "#{context}[:id]") unless params[:id].nil?
        type
      end
    end

    module ReadOnlyTaskTemplateFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReadOnlyFieldInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Reference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Reference, context: context)
        type = Types::Reference.new
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module ReferenceSummary
      def self.build(params, context: '')
        return params if params.is_a?(Types::ReferenceSummary)
        Hearth::Validator.validate!(params, ::Hash, Types::ReferenceSummary, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :url
          Types::ReferenceSummary::Url.new(
            (UrlReference.build(params[:url], context: "#{context}[:url]") unless params[:url].nil?)
          )
        when :attachment
          Types::ReferenceSummary::Attachment.new(
            (AttachmentReference.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?)
          )
        when :string
          Types::ReferenceSummary::String.new(
            (StringReference.build(params[:string], context: "#{context}[:string]") unless params[:string].nil?)
          )
        when :number
          Types::ReferenceSummary::Number.new(
            (NumberReference.build(params[:number], context: "#{context}[:number]") unless params[:number].nil?)
          )
        when :date
          Types::ReferenceSummary::Date.new(
            (DateReference.build(params[:date], context: "#{context}[:date]") unless params[:date].nil?)
          )
        when :email
          Types::ReferenceSummary::Email.new(
            (EmailReference.build(params[:email], context: "#{context}[:email]") unless params[:email].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :url, :attachment, :string, :number, :date, :email set"
        end
      end
    end

    module ReferenceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReferenceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReferenceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReleasePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleasePhoneNumberInput, context: context)
        type = Types::ReleasePhoneNumberInput.new
        type.phone_number_id = params[:phone_number_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module ReleasePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleasePhoneNumberOutput, context: context)
        type = Types::ReleasePhoneNumberOutput.new
        type
      end
    end

    module RequiredFieldInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequiredFieldInfo, context: context)
        type = Types::RequiredFieldInfo.new
        type.id = TaskTemplateFieldIdentifier.build(params[:id], context: "#{context}[:id]") unless params[:id].nil?
        type
      end
    end

    module RequiredTaskTemplateFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RequiredFieldInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConflictException, context: context)
        type = Types::ResourceConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResumeContactRecordingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeContactRecordingInput, context: context)
        type = Types::ResumeContactRecordingInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.initial_contact_id = params[:initial_contact_id]
        type
      end
    end

    module ResumeContactRecordingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeContactRecordingOutput, context: context)
        type = Types::ResumeContactRecordingOutput.new
        type
      end
    end

    module RoutingProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutingProfile, context: context)
        type = Types::RoutingProfile.new
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.routing_profile_arn = params[:routing_profile_arn]
        type.routing_profile_id = params[:routing_profile_id]
        type.description = params[:description]
        type.media_concurrencies = MediaConcurrencies.build(params[:media_concurrencies], context: "#{context}[:media_concurrencies]") unless params[:media_concurrencies].nil?
        type.default_outbound_queue_id = params[:default_outbound_queue_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RoutingProfileQueueConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutingProfileQueueConfig, context: context)
        type = Types::RoutingProfileQueueConfig.new
        type.queue_reference = RoutingProfileQueueReference.build(params[:queue_reference], context: "#{context}[:queue_reference]") unless params[:queue_reference].nil?
        type.priority = params[:priority]
        type.delay = params[:delay]
        type
      end
    end

    module RoutingProfileQueueConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoutingProfileQueueConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoutingProfileQueueConfigSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutingProfileQueueConfigSummary, context: context)
        type = Types::RoutingProfileQueueConfigSummary.new
        type.queue_id = params[:queue_id]
        type.queue_arn = params[:queue_arn]
        type.queue_name = params[:queue_name]
        type.priority = params[:priority]
        type.delay = params[:delay]
        type.channel = params[:channel]
        type
      end
    end

    module RoutingProfileQueueConfigSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoutingProfileQueueConfigSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoutingProfileQueueReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutingProfileQueueReference, context: context)
        type = Types::RoutingProfileQueueReference.new
        type.queue_id = params[:queue_id]
        type.channel = params[:channel]
        type
      end
    end

    module RoutingProfileQueueReferenceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoutingProfileQueueReference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoutingProfileReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutingProfileReference, context: context)
        type = Types::RoutingProfileReference.new
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module RoutingProfileSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutingProfileSummary, context: context)
        type = Types::RoutingProfileSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module RoutingProfileSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoutingProfileSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Config
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Config, context: context)
        type = Types::S3Config.new
        type.bucket_name = params[:bucket_name]
        type.bucket_prefix = params[:bucket_prefix]
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type
      end
    end

    module SearchAvailablePhoneNumbersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAvailablePhoneNumbersInput, context: context)
        type = Types::SearchAvailablePhoneNumbersInput.new
        type.target_arn = params[:target_arn]
        type.phone_number_country_code = params[:phone_number_country_code]
        type.phone_number_type = params[:phone_number_type]
        type.phone_number_prefix = params[:phone_number_prefix]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchAvailablePhoneNumbersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAvailablePhoneNumbersOutput, context: context)
        type = Types::SearchAvailablePhoneNumbersOutput.new
        type.next_token = params[:next_token]
        type.available_numbers_list = AvailableNumbersList.build(params[:available_numbers_list], context: "#{context}[:available_numbers_list]") unless params[:available_numbers_list].nil?
        type
      end
    end

    module SearchUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchUsersInput, context: context)
        type = Types::SearchUsersInput.new
        type.instance_id = params[:instance_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.search_filter = UserSearchFilter.build(params[:search_filter], context: "#{context}[:search_filter]") unless params[:search_filter].nil?
        type.search_criteria = UserSearchCriteria.build(params[:search_criteria], context: "#{context}[:search_criteria]") unless params[:search_criteria].nil?
        type
      end
    end

    module SearchUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchUsersOutput, context: context)
        type = Types::SearchUsersOutput.new
        type.users = UserSearchSummaryList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.next_token = params[:next_token]
        type.approximate_total_count = params[:approximate_total_count]
        type
      end
    end

    module SearchVocabulariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchVocabulariesInput, context: context)
        type = Types::SearchVocabulariesInput.new
        type.instance_id = params[:instance_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.state = params[:state]
        type.name_starts_with = params[:name_starts_with]
        type.language_code = params[:language_code]
        type
      end
    end

    module SearchVocabulariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchVocabulariesOutput, context: context)
        type = Types::SearchVocabulariesOutput.new
        type.vocabulary_summary_list = VocabularySummaryList.build(params[:vocabulary_summary_list], context: "#{context}[:vocabulary_summary_list]") unless params[:vocabulary_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SecurityKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityKey, context: context)
        type = Types::SecurityKey.new
        type.association_id = params[:association_id]
        type.key = params[:key]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module SecurityKeysList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityProfile, context: context)
        type = Types::SecurityProfile.new
        type.id = params[:id]
        type.organization_resource_id = params[:organization_resource_id]
        type.arn = params[:arn]
        type.security_profile_name = params[:security_profile_name]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SecurityProfileIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecurityProfileSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityProfileSummary, context: context)
        type = Types::SecurityProfileSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module SecurityProfileSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityProfileSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SingleSelectOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartChatContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChatContactInput, context: context)
        type = Types::StartChatContactInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_id = params[:contact_flow_id]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.participant_details = ParticipantDetails.build(params[:participant_details], context: "#{context}[:participant_details]") unless params[:participant_details].nil?
        type.initial_message = ChatMessage.build(params[:initial_message], context: "#{context}[:initial_message]") unless params[:initial_message].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.chat_duration_in_minutes = params[:chat_duration_in_minutes]
        type.supported_messaging_content_types = SupportedMessagingContentTypes.build(params[:supported_messaging_content_types], context: "#{context}[:supported_messaging_content_types]") unless params[:supported_messaging_content_types].nil?
        type
      end
    end

    module StartChatContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChatContactOutput, context: context)
        type = Types::StartChatContactOutput.new
        type.contact_id = params[:contact_id]
        type.participant_id = params[:participant_id]
        type.participant_token = params[:participant_token]
        type
      end
    end

    module StartContactRecordingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContactRecordingInput, context: context)
        type = Types::StartContactRecordingInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.initial_contact_id = params[:initial_contact_id]
        type.voice_recording_configuration = VoiceRecordingConfiguration.build(params[:voice_recording_configuration], context: "#{context}[:voice_recording_configuration]") unless params[:voice_recording_configuration].nil?
        type
      end
    end

    module StartContactRecordingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContactRecordingOutput, context: context)
        type = Types::StartContactRecordingOutput.new
        type
      end
    end

    module StartContactStreamingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContactStreamingInput, context: context)
        type = Types::StartContactStreamingInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.chat_streaming_configuration = ChatStreamingConfiguration.build(params[:chat_streaming_configuration], context: "#{context}[:chat_streaming_configuration]") unless params[:chat_streaming_configuration].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StartContactStreamingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContactStreamingOutput, context: context)
        type = Types::StartContactStreamingOutput.new
        type.streaming_id = params[:streaming_id]
        type
      end
    end

    module StartOutboundVoiceContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOutboundVoiceContactInput, context: context)
        type = Types::StartOutboundVoiceContactInput.new
        type.destination_phone_number = params[:destination_phone_number]
        type.contact_flow_id = params[:contact_flow_id]
        type.instance_id = params[:instance_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.source_phone_number = params[:source_phone_number]
        type.queue_id = params[:queue_id]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.answer_machine_detection_config = AnswerMachineDetectionConfig.build(params[:answer_machine_detection_config], context: "#{context}[:answer_machine_detection_config]") unless params[:answer_machine_detection_config].nil?
        type.campaign_id = params[:campaign_id]
        type.traffic_type = params[:traffic_type]
        type
      end
    end

    module StartOutboundVoiceContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOutboundVoiceContactOutput, context: context)
        type = Types::StartOutboundVoiceContactOutput.new
        type.contact_id = params[:contact_id]
        type
      end
    end

    module StartTaskContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTaskContactInput, context: context)
        type = Types::StartTaskContactInput.new
        type.instance_id = params[:instance_id]
        type.previous_contact_id = params[:previous_contact_id]
        type.contact_flow_id = params[:contact_flow_id]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.name = params[:name]
        type.references = ContactReferences.build(params[:references], context: "#{context}[:references]") unless params[:references].nil?
        type.description = params[:description]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.scheduled_time = params[:scheduled_time]
        type.task_template_id = params[:task_template_id]
        type.quick_connect_id = params[:quick_connect_id]
        type
      end
    end

    module StartTaskContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTaskContactOutput, context: context)
        type = Types::StartTaskContactOutput.new
        type.contact_id = params[:contact_id]
        type
      end
    end

    module StopContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopContactInput, context: context)
        type = Types::StopContactInput.new
        type.contact_id = params[:contact_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module StopContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopContactOutput, context: context)
        type = Types::StopContactOutput.new
        type
      end
    end

    module StopContactRecordingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopContactRecordingInput, context: context)
        type = Types::StopContactRecordingInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.initial_contact_id = params[:initial_contact_id]
        type
      end
    end

    module StopContactRecordingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopContactRecordingOutput, context: context)
        type = Types::StopContactRecordingOutput.new
        type
      end
    end

    module StopContactStreamingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopContactStreamingInput, context: context)
        type = Types::StopContactStreamingInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.streaming_id = params[:streaming_id]
        type
      end
    end

    module StopContactStreamingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopContactStreamingOutput, context: context)
        type = Types::StopContactStreamingOutput.new
        type
      end
    end

    module StringCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StringCondition, context: context)
        type = Types::StringCondition.new
        type.field_name = params[:field_name]
        type.value = params[:value]
        type.comparison_type = params[:comparison_type]
        type
      end
    end

    module StringReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StringReference, context: context)
        type = Types::StringReference.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module SupportedMessagingContentTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SuspendContactRecordingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuspendContactRecordingInput, context: context)
        type = Types::SuspendContactRecordingInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.initial_contact_id = params[:initial_contact_id]
        type
      end
    end

    module SuspendContactRecordingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuspendContactRecordingOutput, context: context)
        type = Types::SuspendContactRecordingOutput.new
        type
      end
    end

    module TagAndConditionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagCondition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagCondition, context: context)
        type = Types::TagCondition.new
        type.tag_key = params[:tag_key]
        type.tag_value = params[:tag_value]
        type
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

    module TagOrConditionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagAndConditionList.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module TaskTemplateConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskTemplateConstraints, context: context)
        type = Types::TaskTemplateConstraints.new
        type.required_fields = RequiredTaskTemplateFields.build(params[:required_fields], context: "#{context}[:required_fields]") unless params[:required_fields].nil?
        type.read_only_fields = ReadOnlyTaskTemplateFields.build(params[:read_only_fields], context: "#{context}[:read_only_fields]") unless params[:read_only_fields].nil?
        type.invisible_fields = InvisibleTaskTemplateFields.build(params[:invisible_fields], context: "#{context}[:invisible_fields]") unless params[:invisible_fields].nil?
        type
      end
    end

    module TaskTemplateDefaultFieldValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskTemplateDefaultFieldValue, context: context)
        type = Types::TaskTemplateDefaultFieldValue.new
        type.id = TaskTemplateFieldIdentifier.build(params[:id], context: "#{context}[:id]") unless params[:id].nil?
        type.default_value = params[:default_value]
        type
      end
    end

    module TaskTemplateDefaultFieldValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskTemplateDefaultFieldValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TaskTemplateDefaults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskTemplateDefaults, context: context)
        type = Types::TaskTemplateDefaults.new
        type.default_field_values = TaskTemplateDefaultFieldValueList.build(params[:default_field_values], context: "#{context}[:default_field_values]") unless params[:default_field_values].nil?
        type
      end
    end

    module TaskTemplateField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskTemplateField, context: context)
        type = Types::TaskTemplateField.new
        type.id = TaskTemplateFieldIdentifier.build(params[:id], context: "#{context}[:id]") unless params[:id].nil?
        type.description = params[:description]
        type.type = params[:type]
        type.single_select_options = SingleSelectOptions.build(params[:single_select_options], context: "#{context}[:single_select_options]") unless params[:single_select_options].nil?
        type
      end
    end

    module TaskTemplateFieldIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskTemplateFieldIdentifier, context: context)
        type = Types::TaskTemplateFieldIdentifier.new
        type.name = params[:name]
        type
      end
    end

    module TaskTemplateFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskTemplateField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TaskTemplateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskTemplateMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TaskTemplateMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskTemplateMetadata, context: context)
        type = Types::TaskTemplateMetadata.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.last_modified_time = params[:last_modified_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module Threshold
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Threshold, context: context)
        type = Types::Threshold.new
        type.comparison = params[:comparison]
        type.threshold_value = params[:threshold_value]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TransferContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferContactInput, context: context)
        type = Types::TransferContactInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.queue_id = params[:queue_id]
        type.user_id = params[:user_id]
        type.contact_flow_id = params[:contact_flow_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module TransferContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferContactOutput, context: context)
        type = Types::TransferContactOutput.new
        type.contact_id = params[:contact_id]
        type.contact_arn = params[:contact_arn]
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

    module UpdateAgentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAgentStatusInput, context: context)
        type = Types::UpdateAgentStatusInput.new
        type.instance_id = params[:instance_id]
        type.agent_status_id = params[:agent_status_id]
        type.name = params[:name]
        type.description = params[:description]
        type.state = params[:state]
        type.display_order = params[:display_order]
        type.reset_order_number = params[:reset_order_number]
        type
      end
    end

    module UpdateAgentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAgentStatusOutput, context: context)
        type = Types::UpdateAgentStatusOutput.new
        type
      end
    end

    module UpdateContactAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactAttributesInput, context: context)
        type = Types::UpdateContactAttributesInput.new
        type.initial_contact_id = params[:initial_contact_id]
        type.instance_id = params[:instance_id]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module UpdateContactAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactAttributesOutput, context: context)
        type = Types::UpdateContactAttributesOutput.new
        type
      end
    end

    module UpdateContactFlowContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowContentInput, context: context)
        type = Types::UpdateContactFlowContentInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_id = params[:contact_flow_id]
        type.content = params[:content]
        type
      end
    end

    module UpdateContactFlowContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowContentOutput, context: context)
        type = Types::UpdateContactFlowContentOutput.new
        type
      end
    end

    module UpdateContactFlowMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowMetadataInput, context: context)
        type = Types::UpdateContactFlowMetadataInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_id = params[:contact_flow_id]
        type.name = params[:name]
        type.description = params[:description]
        type.contact_flow_state = params[:contact_flow_state]
        type
      end
    end

    module UpdateContactFlowMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowMetadataOutput, context: context)
        type = Types::UpdateContactFlowMetadataOutput.new
        type
      end
    end

    module UpdateContactFlowModuleContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowModuleContentInput, context: context)
        type = Types::UpdateContactFlowModuleContentInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_module_id = params[:contact_flow_module_id]
        type.content = params[:content]
        type
      end
    end

    module UpdateContactFlowModuleContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowModuleContentOutput, context: context)
        type = Types::UpdateContactFlowModuleContentOutput.new
        type
      end
    end

    module UpdateContactFlowModuleMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowModuleMetadataInput, context: context)
        type = Types::UpdateContactFlowModuleMetadataInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_module_id = params[:contact_flow_module_id]
        type.name = params[:name]
        type.description = params[:description]
        type.state = params[:state]
        type
      end
    end

    module UpdateContactFlowModuleMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowModuleMetadataOutput, context: context)
        type = Types::UpdateContactFlowModuleMetadataOutput.new
        type
      end
    end

    module UpdateContactFlowNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowNameInput, context: context)
        type = Types::UpdateContactFlowNameInput.new
        type.instance_id = params[:instance_id]
        type.contact_flow_id = params[:contact_flow_id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateContactFlowNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactFlowNameOutput, context: context)
        type = Types::UpdateContactFlowNameOutput.new
        type
      end
    end

    module UpdateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactInput, context: context)
        type = Types::UpdateContactInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.name = params[:name]
        type.description = params[:description]
        type.references = ContactReferences.build(params[:references], context: "#{context}[:references]") unless params[:references].nil?
        type
      end
    end

    module UpdateContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactOutput, context: context)
        type = Types::UpdateContactOutput.new
        type
      end
    end

    module UpdateContactScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactScheduleInput, context: context)
        type = Types::UpdateContactScheduleInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.scheduled_time = params[:scheduled_time]
        type
      end
    end

    module UpdateContactScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactScheduleOutput, context: context)
        type = Types::UpdateContactScheduleOutput.new
        type
      end
    end

    module UpdateHoursOfOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHoursOfOperationInput, context: context)
        type = Types::UpdateHoursOfOperationInput.new
        type.instance_id = params[:instance_id]
        type.hours_of_operation_id = params[:hours_of_operation_id]
        type.name = params[:name]
        type.description = params[:description]
        type.time_zone = params[:time_zone]
        type.config = HoursOfOperationConfigList.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type
      end
    end

    module UpdateHoursOfOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHoursOfOperationOutput, context: context)
        type = Types::UpdateHoursOfOperationOutput.new
        type
      end
    end

    module UpdateInstanceAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceAttributeInput, context: context)
        type = Types::UpdateInstanceAttributeInput.new
        type.instance_id = params[:instance_id]
        type.attribute_type = params[:attribute_type]
        type.value = params[:value]
        type
      end
    end

    module UpdateInstanceAttributeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceAttributeOutput, context: context)
        type = Types::UpdateInstanceAttributeOutput.new
        type
      end
    end

    module UpdateInstanceStorageConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceStorageConfigInput, context: context)
        type = Types::UpdateInstanceStorageConfigInput.new
        type.instance_id = params[:instance_id]
        type.association_id = params[:association_id]
        type.resource_type = params[:resource_type]
        type.storage_config = InstanceStorageConfig.build(params[:storage_config], context: "#{context}[:storage_config]") unless params[:storage_config].nil?
        type
      end
    end

    module UpdateInstanceStorageConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceStorageConfigOutput, context: context)
        type = Types::UpdateInstanceStorageConfigOutput.new
        type
      end
    end

    module UpdatePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePhoneNumberInput, context: context)
        type = Types::UpdatePhoneNumberInput.new
        type.phone_number_id = params[:phone_number_id]
        type.target_arn = params[:target_arn]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdatePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePhoneNumberOutput, context: context)
        type = Types::UpdatePhoneNumberOutput.new
        type.phone_number_id = params[:phone_number_id]
        type.phone_number_arn = params[:phone_number_arn]
        type
      end
    end

    module UpdateQueueHoursOfOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueHoursOfOperationInput, context: context)
        type = Types::UpdateQueueHoursOfOperationInput.new
        type.instance_id = params[:instance_id]
        type.queue_id = params[:queue_id]
        type.hours_of_operation_id = params[:hours_of_operation_id]
        type
      end
    end

    module UpdateQueueHoursOfOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueHoursOfOperationOutput, context: context)
        type = Types::UpdateQueueHoursOfOperationOutput.new
        type
      end
    end

    module UpdateQueueMaxContactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueMaxContactsInput, context: context)
        type = Types::UpdateQueueMaxContactsInput.new
        type.instance_id = params[:instance_id]
        type.queue_id = params[:queue_id]
        type.max_contacts = params[:max_contacts]
        type
      end
    end

    module UpdateQueueMaxContactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueMaxContactsOutput, context: context)
        type = Types::UpdateQueueMaxContactsOutput.new
        type
      end
    end

    module UpdateQueueNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueNameInput, context: context)
        type = Types::UpdateQueueNameInput.new
        type.instance_id = params[:instance_id]
        type.queue_id = params[:queue_id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateQueueNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueNameOutput, context: context)
        type = Types::UpdateQueueNameOutput.new
        type
      end
    end

    module UpdateQueueOutboundCallerConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueOutboundCallerConfigInput, context: context)
        type = Types::UpdateQueueOutboundCallerConfigInput.new
        type.instance_id = params[:instance_id]
        type.queue_id = params[:queue_id]
        type.outbound_caller_config = OutboundCallerConfig.build(params[:outbound_caller_config], context: "#{context}[:outbound_caller_config]") unless params[:outbound_caller_config].nil?
        type
      end
    end

    module UpdateQueueOutboundCallerConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueOutboundCallerConfigOutput, context: context)
        type = Types::UpdateQueueOutboundCallerConfigOutput.new
        type
      end
    end

    module UpdateQueueStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueStatusInput, context: context)
        type = Types::UpdateQueueStatusInput.new
        type.instance_id = params[:instance_id]
        type.queue_id = params[:queue_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateQueueStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQueueStatusOutput, context: context)
        type = Types::UpdateQueueStatusOutput.new
        type
      end
    end

    module UpdateQuickConnectConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQuickConnectConfigInput, context: context)
        type = Types::UpdateQuickConnectConfigInput.new
        type.instance_id = params[:instance_id]
        type.quick_connect_id = params[:quick_connect_id]
        type.quick_connect_config = QuickConnectConfig.build(params[:quick_connect_config], context: "#{context}[:quick_connect_config]") unless params[:quick_connect_config].nil?
        type
      end
    end

    module UpdateQuickConnectConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQuickConnectConfigOutput, context: context)
        type = Types::UpdateQuickConnectConfigOutput.new
        type
      end
    end

    module UpdateQuickConnectNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQuickConnectNameInput, context: context)
        type = Types::UpdateQuickConnectNameInput.new
        type.instance_id = params[:instance_id]
        type.quick_connect_id = params[:quick_connect_id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateQuickConnectNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQuickConnectNameOutput, context: context)
        type = Types::UpdateQuickConnectNameOutput.new
        type
      end
    end

    module UpdateRoutingProfileConcurrencyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingProfileConcurrencyInput, context: context)
        type = Types::UpdateRoutingProfileConcurrencyInput.new
        type.instance_id = params[:instance_id]
        type.routing_profile_id = params[:routing_profile_id]
        type.media_concurrencies = MediaConcurrencies.build(params[:media_concurrencies], context: "#{context}[:media_concurrencies]") unless params[:media_concurrencies].nil?
        type
      end
    end

    module UpdateRoutingProfileConcurrencyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingProfileConcurrencyOutput, context: context)
        type = Types::UpdateRoutingProfileConcurrencyOutput.new
        type
      end
    end

    module UpdateRoutingProfileDefaultOutboundQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingProfileDefaultOutboundQueueInput, context: context)
        type = Types::UpdateRoutingProfileDefaultOutboundQueueInput.new
        type.instance_id = params[:instance_id]
        type.routing_profile_id = params[:routing_profile_id]
        type.default_outbound_queue_id = params[:default_outbound_queue_id]
        type
      end
    end

    module UpdateRoutingProfileDefaultOutboundQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingProfileDefaultOutboundQueueOutput, context: context)
        type = Types::UpdateRoutingProfileDefaultOutboundQueueOutput.new
        type
      end
    end

    module UpdateRoutingProfileNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingProfileNameInput, context: context)
        type = Types::UpdateRoutingProfileNameInput.new
        type.instance_id = params[:instance_id]
        type.routing_profile_id = params[:routing_profile_id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateRoutingProfileNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingProfileNameOutput, context: context)
        type = Types::UpdateRoutingProfileNameOutput.new
        type
      end
    end

    module UpdateRoutingProfileQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingProfileQueuesInput, context: context)
        type = Types::UpdateRoutingProfileQueuesInput.new
        type.instance_id = params[:instance_id]
        type.routing_profile_id = params[:routing_profile_id]
        type.queue_configs = RoutingProfileQueueConfigList.build(params[:queue_configs], context: "#{context}[:queue_configs]") unless params[:queue_configs].nil?
        type
      end
    end

    module UpdateRoutingProfileQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingProfileQueuesOutput, context: context)
        type = Types::UpdateRoutingProfileQueuesOutput.new
        type
      end
    end

    module UpdateSecurityProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityProfileInput, context: context)
        type = Types::UpdateSecurityProfileInput.new
        type.description = params[:description]
        type.permissions = PermissionsList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.security_profile_id = params[:security_profile_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module UpdateSecurityProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityProfileOutput, context: context)
        type = Types::UpdateSecurityProfileOutput.new
        type
      end
    end

    module UpdateTaskTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTaskTemplateInput, context: context)
        type = Types::UpdateTaskTemplateInput.new
        type.task_template_id = params[:task_template_id]
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.description = params[:description]
        type.contact_flow_id = params[:contact_flow_id]
        type.constraints = TaskTemplateConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.defaults = TaskTemplateDefaults.build(params[:defaults], context: "#{context}[:defaults]") unless params[:defaults].nil?
        type.status = params[:status]
        type.fields = TaskTemplateFields.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module UpdateTaskTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTaskTemplateOutput, context: context)
        type = Types::UpdateTaskTemplateOutput.new
        type.instance_id = params[:instance_id]
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.contact_flow_id = params[:contact_flow_id]
        type.constraints = TaskTemplateConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.defaults = TaskTemplateDefaults.build(params[:defaults], context: "#{context}[:defaults]") unless params[:defaults].nil?
        type.fields = TaskTemplateFields.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.status = params[:status]
        type.last_modified_time = params[:last_modified_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module UpdateUserHierarchyGroupNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserHierarchyGroupNameInput, context: context)
        type = Types::UpdateUserHierarchyGroupNameInput.new
        type.name = params[:name]
        type.hierarchy_group_id = params[:hierarchy_group_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module UpdateUserHierarchyGroupNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserHierarchyGroupNameOutput, context: context)
        type = Types::UpdateUserHierarchyGroupNameOutput.new
        type
      end
    end

    module UpdateUserHierarchyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserHierarchyInput, context: context)
        type = Types::UpdateUserHierarchyInput.new
        type.hierarchy_group_id = params[:hierarchy_group_id]
        type.user_id = params[:user_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module UpdateUserHierarchyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserHierarchyOutput, context: context)
        type = Types::UpdateUserHierarchyOutput.new
        type
      end
    end

    module UpdateUserHierarchyStructureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserHierarchyStructureInput, context: context)
        type = Types::UpdateUserHierarchyStructureInput.new
        type.hierarchy_structure = HierarchyStructureUpdate.build(params[:hierarchy_structure], context: "#{context}[:hierarchy_structure]") unless params[:hierarchy_structure].nil?
        type.instance_id = params[:instance_id]
        type
      end
    end

    module UpdateUserHierarchyStructureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserHierarchyStructureOutput, context: context)
        type = Types::UpdateUserHierarchyStructureOutput.new
        type
      end
    end

    module UpdateUserIdentityInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserIdentityInfoInput, context: context)
        type = Types::UpdateUserIdentityInfoInput.new
        type.identity_info = UserIdentityInfo.build(params[:identity_info], context: "#{context}[:identity_info]") unless params[:identity_info].nil?
        type.user_id = params[:user_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module UpdateUserIdentityInfoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserIdentityInfoOutput, context: context)
        type = Types::UpdateUserIdentityInfoOutput.new
        type
      end
    end

    module UpdateUserPhoneConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserPhoneConfigInput, context: context)
        type = Types::UpdateUserPhoneConfigInput.new
        type.phone_config = UserPhoneConfig.build(params[:phone_config], context: "#{context}[:phone_config]") unless params[:phone_config].nil?
        type.user_id = params[:user_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module UpdateUserPhoneConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserPhoneConfigOutput, context: context)
        type = Types::UpdateUserPhoneConfigOutput.new
        type
      end
    end

    module UpdateUserRoutingProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserRoutingProfileInput, context: context)
        type = Types::UpdateUserRoutingProfileInput.new
        type.routing_profile_id = params[:routing_profile_id]
        type.user_id = params[:user_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module UpdateUserRoutingProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserRoutingProfileOutput, context: context)
        type = Types::UpdateUserRoutingProfileOutput.new
        type
      end
    end

    module UpdateUserSecurityProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserSecurityProfilesInput, context: context)
        type = Types::UpdateUserSecurityProfilesInput.new
        type.security_profile_ids = SecurityProfileIds.build(params[:security_profile_ids], context: "#{context}[:security_profile_ids]") unless params[:security_profile_ids].nil?
        type.user_id = params[:user_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module UpdateUserSecurityProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserSecurityProfilesOutput, context: context)
        type = Types::UpdateUserSecurityProfilesOutput.new
        type
      end
    end

    module UrlReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UrlReference, context: context)
        type = Types::UrlReference.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module UseCase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UseCase, context: context)
        type = Types::UseCase.new
        type.use_case_id = params[:use_case_id]
        type.use_case_arn = params[:use_case_arn]
        type.use_case_type = params[:use_case_type]
        type
      end
    end

    module UseCaseSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UseCase.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.username = params[:username]
        type.identity_info = UserIdentityInfo.build(params[:identity_info], context: "#{context}[:identity_info]") unless params[:identity_info].nil?
        type.phone_config = UserPhoneConfig.build(params[:phone_config], context: "#{context}[:phone_config]") unless params[:phone_config].nil?
        type.directory_user_id = params[:directory_user_id]
        type.security_profile_ids = SecurityProfileIds.build(params[:security_profile_ids], context: "#{context}[:security_profile_ids]") unless params[:security_profile_ids].nil?
        type.routing_profile_id = params[:routing_profile_id]
        type.hierarchy_group_id = params[:hierarchy_group_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UserData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserData, context: context)
        type = Types::UserData.new
        type.user = UserReference.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type.routing_profile = RoutingProfileReference.build(params[:routing_profile], context: "#{context}[:routing_profile]") unless params[:routing_profile].nil?
        type.hierarchy_path = HierarchyPathReference.build(params[:hierarchy_path], context: "#{context}[:hierarchy_path]") unless params[:hierarchy_path].nil?
        type.status = AgentStatusReference.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.available_slots_by_channel = ChannelToCountMap.build(params[:available_slots_by_channel], context: "#{context}[:available_slots_by_channel]") unless params[:available_slots_by_channel].nil?
        type.max_slots_by_channel = ChannelToCountMap.build(params[:max_slots_by_channel], context: "#{context}[:max_slots_by_channel]") unless params[:max_slots_by_channel].nil?
        type.active_slots_by_channel = ChannelToCountMap.build(params[:active_slots_by_channel], context: "#{context}[:active_slots_by_channel]") unless params[:active_slots_by_channel].nil?
        type.contacts = AgentContactReferenceList.build(params[:contacts], context: "#{context}[:contacts]") unless params[:contacts].nil?
        type
      end
    end

    module UserDataFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserDataFilters, context: context)
        type = Types::UserDataFilters.new
        type.queues = Queues.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type.contact_filter = ContactFilter.build(params[:contact_filter], context: "#{context}[:contact_filter]") unless params[:contact_filter].nil?
        type
      end
    end

    module UserDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserIdentityInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserIdentityInfo, context: context)
        type = Types::UserIdentityInfo.new
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.email = params[:email]
        type
      end
    end

    module UserIdentityInfoLite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserIdentityInfoLite, context: context)
        type = Types::UserIdentityInfoLite.new
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type
      end
    end

    module UserNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserNotFoundException, context: context)
        type = Types::UserNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module UserPhoneConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPhoneConfig, context: context)
        type = Types::UserPhoneConfig.new
        type.phone_type = params[:phone_type]
        type.auto_accept = params[:auto_accept]
        type.after_contact_work_time_limit = params[:after_contact_work_time_limit]
        type.desk_phone_number = params[:desk_phone_number]
        type
      end
    end

    module UserQuickConnectConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserQuickConnectConfig, context: context)
        type = Types::UserQuickConnectConfig.new
        type.user_id = params[:user_id]
        type.contact_flow_id = params[:contact_flow_id]
        type
      end
    end

    module UserReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserReference, context: context)
        type = Types::UserReference.new
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module UserSearchConditionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserSearchCriteria.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserSearchCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSearchCriteria, context: context)
        type = Types::UserSearchCriteria.new
        type.or_conditions = UserSearchConditionList.build(params[:or_conditions], context: "#{context}[:or_conditions]") unless params[:or_conditions].nil?
        type.and_conditions = UserSearchConditionList.build(params[:and_conditions], context: "#{context}[:and_conditions]") unless params[:and_conditions].nil?
        type.string_condition = StringCondition.build(params[:string_condition], context: "#{context}[:string_condition]") unless params[:string_condition].nil?
        type.hierarchy_group_condition = HierarchyGroupCondition.build(params[:hierarchy_group_condition], context: "#{context}[:hierarchy_group_condition]") unless params[:hierarchy_group_condition].nil?
        type
      end
    end

    module UserSearchFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSearchFilter, context: context)
        type = Types::UserSearchFilter.new
        type.tag_filter = ControlPlaneTagFilter.build(params[:tag_filter], context: "#{context}[:tag_filter]") unless params[:tag_filter].nil?
        type
      end
    end

    module UserSearchSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSearchSummary, context: context)
        type = Types::UserSearchSummary.new
        type.arn = params[:arn]
        type.directory_user_id = params[:directory_user_id]
        type.hierarchy_group_id = params[:hierarchy_group_id]
        type.id = params[:id]
        type.identity_info = UserIdentityInfoLite.build(params[:identity_info], context: "#{context}[:identity_info]") unless params[:identity_info].nil?
        type.phone_config = UserPhoneConfig.build(params[:phone_config], context: "#{context}[:phone_config]") unless params[:phone_config].nil?
        type.routing_profile_id = params[:routing_profile_id]
        type.security_profile_ids = SecurityProfileIds.build(params[:security_profile_ids], context: "#{context}[:security_profile_ids]") unless params[:security_profile_ids].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.username = params[:username]
        type
      end
    end

    module UserSearchSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserSearchSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSummary, context: context)
        type = Types::UserSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.username = params[:username]
        type
      end
    end

    module UserSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Vocabulary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Vocabulary, context: context)
        type = Types::Vocabulary.new
        type.name = params[:name]
        type.id = params[:id]
        type.arn = params[:arn]
        type.language_code = params[:language_code]
        type.state = params[:state]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type.content = params[:content]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module VocabularySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VocabularySummary, context: context)
        type = Types::VocabularySummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.arn = params[:arn]
        type.language_code = params[:language_code]
        type.state = params[:state]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module VocabularySummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VocabularySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VoiceRecordingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceRecordingConfiguration, context: context)
        type = Types::VoiceRecordingConfiguration.new
        type.voice_recording_track = params[:voice_recording_track]
        type
      end
    end

  end
end
