# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelBuildingService
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module BotAliasMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotAliasMetadata, context: context)
        type = Types::BotAliasMetadata.new
        type.name = params[:name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_name = params[:bot_name]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.checksum = params[:checksum]
        type.conversation_logs = ConversationLogsResponse.build(params[:conversation_logs], context: "#{context}[:conversation_logs]") unless params[:conversation_logs].nil?
        type
      end
    end

    module BotAliasMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotAliasMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotChannelAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotChannelAssociation, context: context)
        type = Types::BotChannelAssociation.new
        type.name = params[:name]
        type.description = params[:description]
        type.bot_alias = params[:bot_alias]
        type.bot_name = params[:bot_name]
        type.created_date = params[:created_date]
        type.type = params[:type]
        type.bot_configuration = ChannelConfigurationMap.build(params[:bot_configuration], context: "#{context}[:bot_configuration]") unless params[:bot_configuration].nil?
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module BotChannelAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotChannelAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotMetadata, context: context)
        type = Types::BotMetadata.new
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type
      end
    end

    module BotMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BuiltinIntentMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuiltinIntentMetadata, context: context)
        type = Types::BuiltinIntentMetadata.new
        type.signature = params[:signature]
        type.supported_locales = LocaleList.build(params[:supported_locales], context: "#{context}[:supported_locales]") unless params[:supported_locales].nil?
        type
      end
    end

    module BuiltinIntentMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuiltinIntentMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuiltinIntentSlot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuiltinIntentSlot, context: context)
        type = Types::BuiltinIntentSlot.new
        type.name = params[:name]
        type
      end
    end

    module BuiltinIntentSlotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuiltinIntentSlot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuiltinSlotTypeMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuiltinSlotTypeMetadata, context: context)
        type = Types::BuiltinSlotTypeMetadata.new
        type.signature = params[:signature]
        type.supported_locales = LocaleList.build(params[:supported_locales], context: "#{context}[:supported_locales]") unless params[:supported_locales].nil?
        type
      end
    end

    module BuiltinSlotTypeMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuiltinSlotTypeMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelConfigurationMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CodeHook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeHook, context: context)
        type = Types::CodeHook.new
        type.uri = params[:uri]
        type.message_version = params[:message_version]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ConversationLogsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConversationLogsRequest, context: context)
        type = Types::ConversationLogsRequest.new
        type.log_settings = LogSettingsRequestList.build(params[:log_settings], context: "#{context}[:log_settings]") unless params[:log_settings].nil?
        type.iam_role_arn = params[:iam_role_arn]
        type
      end
    end

    module ConversationLogsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConversationLogsResponse, context: context)
        type = Types::ConversationLogsResponse.new
        type.log_settings = LogSettingsResponseList.build(params[:log_settings], context: "#{context}[:log_settings]") unless params[:log_settings].nil?
        type.iam_role_arn = params[:iam_role_arn]
        type
      end
    end

    module CreateBotVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotVersionInput, context: context)
        type = Types::CreateBotVersionInput.new
        type.name = params[:name]
        type.checksum = params[:checksum]
        type
      end
    end

    module CreateBotVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotVersionOutput, context: context)
        type = Types::CreateBotVersionOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.intents = IntentList.build(params[:intents], context: "#{context}[:intents]") unless params[:intents].nil?
        type.clarification_prompt = Prompt.build(params[:clarification_prompt], context: "#{context}[:clarification_prompt]") unless params[:clarification_prompt].nil?
        type.abort_statement = Statement.build(params[:abort_statement], context: "#{context}[:abort_statement]") unless params[:abort_statement].nil?
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.voice_id = params[:voice_id]
        type.checksum = params[:checksum]
        type.version = params[:version]
        type.locale = params[:locale]
        type.child_directed = params[:child_directed]
        type.enable_model_improvements = params[:enable_model_improvements]
        type.detect_sentiment = params[:detect_sentiment]
        type
      end
    end

    module CreateIntentVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntentVersionInput, context: context)
        type = Types::CreateIntentVersionInput.new
        type.name = params[:name]
        type.checksum = params[:checksum]
        type
      end
    end

    module CreateIntentVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntentVersionOutput, context: context)
        type = Types::CreateIntentVersionOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.slots = SlotList.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type.sample_utterances = IntentUtteranceList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.confirmation_prompt = Prompt.build(params[:confirmation_prompt], context: "#{context}[:confirmation_prompt]") unless params[:confirmation_prompt].nil?
        type.rejection_statement = Statement.build(params[:rejection_statement], context: "#{context}[:rejection_statement]") unless params[:rejection_statement].nil?
        type.follow_up_prompt = FollowUpPrompt.build(params[:follow_up_prompt], context: "#{context}[:follow_up_prompt]") unless params[:follow_up_prompt].nil?
        type.conclusion_statement = Statement.build(params[:conclusion_statement], context: "#{context}[:conclusion_statement]") unless params[:conclusion_statement].nil?
        type.dialog_code_hook = CodeHook.build(params[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless params[:dialog_code_hook].nil?
        type.fulfillment_activity = FulfillmentActivity.build(params[:fulfillment_activity], context: "#{context}[:fulfillment_activity]") unless params[:fulfillment_activity].nil?
        type.parent_intent_signature = params[:parent_intent_signature]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.checksum = params[:checksum]
        type.kendra_configuration = KendraConfiguration.build(params[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless params[:kendra_configuration].nil?
        type.input_contexts = InputContextList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type
      end
    end

    module CreateSlotTypeVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSlotTypeVersionInput, context: context)
        type = Types::CreateSlotTypeVersionInput.new
        type.name = params[:name]
        type.checksum = params[:checksum]
        type
      end
    end

    module CreateSlotTypeVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSlotTypeVersionOutput, context: context)
        type = Types::CreateSlotTypeVersionOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.enumeration_values = EnumerationValues.build(params[:enumeration_values], context: "#{context}[:enumeration_values]") unless params[:enumeration_values].nil?
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.checksum = params[:checksum]
        type.value_selection_strategy = params[:value_selection_strategy]
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.slot_type_configurations = SlotTypeConfigurations.build(params[:slot_type_configurations], context: "#{context}[:slot_type_configurations]") unless params[:slot_type_configurations].nil?
        type
      end
    end

    module DeleteBotAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotAliasInput, context: context)
        type = Types::DeleteBotAliasInput.new
        type.name = params[:name]
        type.bot_name = params[:bot_name]
        type
      end
    end

    module DeleteBotAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotAliasOutput, context: context)
        type = Types::DeleteBotAliasOutput.new
        type
      end
    end

    module DeleteBotChannelAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotChannelAssociationInput, context: context)
        type = Types::DeleteBotChannelAssociationInput.new
        type.name = params[:name]
        type.bot_name = params[:bot_name]
        type.bot_alias = params[:bot_alias]
        type
      end
    end

    module DeleteBotChannelAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotChannelAssociationOutput, context: context)
        type = Types::DeleteBotChannelAssociationOutput.new
        type
      end
    end

    module DeleteBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotInput, context: context)
        type = Types::DeleteBotInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotOutput, context: context)
        type = Types::DeleteBotOutput.new
        type
      end
    end

    module DeleteBotVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotVersionInput, context: context)
        type = Types::DeleteBotVersionInput.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module DeleteBotVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotVersionOutput, context: context)
        type = Types::DeleteBotVersionOutput.new
        type
      end
    end

    module DeleteIntentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntentInput, context: context)
        type = Types::DeleteIntentInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteIntentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntentOutput, context: context)
        type = Types::DeleteIntentOutput.new
        type
      end
    end

    module DeleteIntentVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntentVersionInput, context: context)
        type = Types::DeleteIntentVersionInput.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module DeleteIntentVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntentVersionOutput, context: context)
        type = Types::DeleteIntentVersionOutput.new
        type
      end
    end

    module DeleteSlotTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSlotTypeInput, context: context)
        type = Types::DeleteSlotTypeInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteSlotTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSlotTypeOutput, context: context)
        type = Types::DeleteSlotTypeOutput.new
        type
      end
    end

    module DeleteSlotTypeVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSlotTypeVersionInput, context: context)
        type = Types::DeleteSlotTypeVersionInput.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module DeleteSlotTypeVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSlotTypeVersionOutput, context: context)
        type = Types::DeleteSlotTypeVersionOutput.new
        type
      end
    end

    module DeleteUtterancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUtterancesInput, context: context)
        type = Types::DeleteUtterancesInput.new
        type.bot_name = params[:bot_name]
        type.user_id = params[:user_id]
        type
      end
    end

    module DeleteUtterancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUtterancesOutput, context: context)
        type = Types::DeleteUtterancesOutput.new
        type
      end
    end

    module EnumerationValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnumerationValue, context: context)
        type = Types::EnumerationValue.new
        type.value = params[:value]
        type.synonyms = SynonymList.build(params[:synonyms], context: "#{context}[:synonyms]") unless params[:synonyms].nil?
        type
      end
    end

    module EnumerationValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnumerationValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FollowUpPrompt
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FollowUpPrompt, context: context)
        type = Types::FollowUpPrompt.new
        type.prompt = Prompt.build(params[:prompt], context: "#{context}[:prompt]") unless params[:prompt].nil?
        type.rejection_statement = Statement.build(params[:rejection_statement], context: "#{context}[:rejection_statement]") unless params[:rejection_statement].nil?
        type
      end
    end

    module FulfillmentActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FulfillmentActivity, context: context)
        type = Types::FulfillmentActivity.new
        type.type = params[:type]
        type.code_hook = CodeHook.build(params[:code_hook], context: "#{context}[:code_hook]") unless params[:code_hook].nil?
        type
      end
    end

    module GetBotAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotAliasInput, context: context)
        type = Types::GetBotAliasInput.new
        type.name = params[:name]
        type.bot_name = params[:bot_name]
        type
      end
    end

    module GetBotAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotAliasOutput, context: context)
        type = Types::GetBotAliasOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_name = params[:bot_name]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.checksum = params[:checksum]
        type.conversation_logs = ConversationLogsResponse.build(params[:conversation_logs], context: "#{context}[:conversation_logs]") unless params[:conversation_logs].nil?
        type
      end
    end

    module GetBotAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotAliasesInput, context: context)
        type = Types::GetBotAliasesInput.new
        type.bot_name = params[:bot_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type
      end
    end

    module GetBotAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotAliasesOutput, context: context)
        type = Types::GetBotAliasesOutput.new
        type.bot_aliases = BotAliasMetadataList.build(params[:bot_aliases], context: "#{context}[:bot_aliases]") unless params[:bot_aliases].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBotChannelAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotChannelAssociationInput, context: context)
        type = Types::GetBotChannelAssociationInput.new
        type.name = params[:name]
        type.bot_name = params[:bot_name]
        type.bot_alias = params[:bot_alias]
        type
      end
    end

    module GetBotChannelAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotChannelAssociationOutput, context: context)
        type = Types::GetBotChannelAssociationOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.bot_alias = params[:bot_alias]
        type.bot_name = params[:bot_name]
        type.created_date = params[:created_date]
        type.type = params[:type]
        type.bot_configuration = ChannelConfigurationMap.build(params[:bot_configuration], context: "#{context}[:bot_configuration]") unless params[:bot_configuration].nil?
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module GetBotChannelAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotChannelAssociationsInput, context: context)
        type = Types::GetBotChannelAssociationsInput.new
        type.bot_name = params[:bot_name]
        type.bot_alias = params[:bot_alias]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type
      end
    end

    module GetBotChannelAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotChannelAssociationsOutput, context: context)
        type = Types::GetBotChannelAssociationsOutput.new
        type.bot_channel_associations = BotChannelAssociationList.build(params[:bot_channel_associations], context: "#{context}[:bot_channel_associations]") unless params[:bot_channel_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotInput, context: context)
        type = Types::GetBotInput.new
        type.name = params[:name]
        type.version_or_alias = params[:version_or_alias]
        type
      end
    end

    module GetBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotOutput, context: context)
        type = Types::GetBotOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.intents = IntentList.build(params[:intents], context: "#{context}[:intents]") unless params[:intents].nil?
        type.enable_model_improvements = params[:enable_model_improvements]
        type.nlu_intent_confidence_threshold = params[:nlu_intent_confidence_threshold]
        type.clarification_prompt = Prompt.build(params[:clarification_prompt], context: "#{context}[:clarification_prompt]") unless params[:clarification_prompt].nil?
        type.abort_statement = Statement.build(params[:abort_statement], context: "#{context}[:abort_statement]") unless params[:abort_statement].nil?
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.voice_id = params[:voice_id]
        type.checksum = params[:checksum]
        type.version = params[:version]
        type.locale = params[:locale]
        type.child_directed = params[:child_directed]
        type.detect_sentiment = params[:detect_sentiment]
        type
      end
    end

    module GetBotVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotVersionsInput, context: context)
        type = Types::GetBotVersionsInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetBotVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotVersionsOutput, context: context)
        type = Types::GetBotVersionsOutput.new
        type.bots = BotMetadataList.build(params[:bots], context: "#{context}[:bots]") unless params[:bots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotsInput, context: context)
        type = Types::GetBotsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type
      end
    end

    module GetBotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotsOutput, context: context)
        type = Types::GetBotsOutput.new
        type.bots = BotMetadataList.build(params[:bots], context: "#{context}[:bots]") unless params[:bots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBuiltinIntentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBuiltinIntentInput, context: context)
        type = Types::GetBuiltinIntentInput.new
        type.signature = params[:signature]
        type
      end
    end

    module GetBuiltinIntentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBuiltinIntentOutput, context: context)
        type = Types::GetBuiltinIntentOutput.new
        type.signature = params[:signature]
        type.supported_locales = LocaleList.build(params[:supported_locales], context: "#{context}[:supported_locales]") unless params[:supported_locales].nil?
        type.slots = BuiltinIntentSlotList.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type
      end
    end

    module GetBuiltinIntentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBuiltinIntentsInput, context: context)
        type = Types::GetBuiltinIntentsInput.new
        type.locale = params[:locale]
        type.signature_contains = params[:signature_contains]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetBuiltinIntentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBuiltinIntentsOutput, context: context)
        type = Types::GetBuiltinIntentsOutput.new
        type.intents = BuiltinIntentMetadataList.build(params[:intents], context: "#{context}[:intents]") unless params[:intents].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBuiltinSlotTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBuiltinSlotTypesInput, context: context)
        type = Types::GetBuiltinSlotTypesInput.new
        type.locale = params[:locale]
        type.signature_contains = params[:signature_contains]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetBuiltinSlotTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBuiltinSlotTypesOutput, context: context)
        type = Types::GetBuiltinSlotTypesOutput.new
        type.slot_types = BuiltinSlotTypeMetadataList.build(params[:slot_types], context: "#{context}[:slot_types]") unless params[:slot_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportInput, context: context)
        type = Types::GetExportInput.new
        type.name = params[:name]
        type.version = params[:version]
        type.resource_type = params[:resource_type]
        type.export_type = params[:export_type]
        type
      end
    end

    module GetExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportOutput, context: context)
        type = Types::GetExportOutput.new
        type.name = params[:name]
        type.version = params[:version]
        type.resource_type = params[:resource_type]
        type.export_type = params[:export_type]
        type.export_status = params[:export_status]
        type.failure_reason = params[:failure_reason]
        type.url = params[:url]
        type
      end
    end

    module GetImportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportInput, context: context)
        type = Types::GetImportInput.new
        type.import_id = params[:import_id]
        type
      end
    end

    module GetImportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportOutput, context: context)
        type = Types::GetImportOutput.new
        type.name = params[:name]
        type.resource_type = params[:resource_type]
        type.merge_strategy = params[:merge_strategy]
        type.import_id = params[:import_id]
        type.import_status = params[:import_status]
        type.failure_reason = StringList.build(params[:failure_reason], context: "#{context}[:failure_reason]") unless params[:failure_reason].nil?
        type.created_date = params[:created_date]
        type
      end
    end

    module GetIntentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntentInput, context: context)
        type = Types::GetIntentInput.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module GetIntentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntentOutput, context: context)
        type = Types::GetIntentOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.slots = SlotList.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type.sample_utterances = IntentUtteranceList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.confirmation_prompt = Prompt.build(params[:confirmation_prompt], context: "#{context}[:confirmation_prompt]") unless params[:confirmation_prompt].nil?
        type.rejection_statement = Statement.build(params[:rejection_statement], context: "#{context}[:rejection_statement]") unless params[:rejection_statement].nil?
        type.follow_up_prompt = FollowUpPrompt.build(params[:follow_up_prompt], context: "#{context}[:follow_up_prompt]") unless params[:follow_up_prompt].nil?
        type.conclusion_statement = Statement.build(params[:conclusion_statement], context: "#{context}[:conclusion_statement]") unless params[:conclusion_statement].nil?
        type.dialog_code_hook = CodeHook.build(params[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless params[:dialog_code_hook].nil?
        type.fulfillment_activity = FulfillmentActivity.build(params[:fulfillment_activity], context: "#{context}[:fulfillment_activity]") unless params[:fulfillment_activity].nil?
        type.parent_intent_signature = params[:parent_intent_signature]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.checksum = params[:checksum]
        type.kendra_configuration = KendraConfiguration.build(params[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless params[:kendra_configuration].nil?
        type.input_contexts = InputContextList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type
      end
    end

    module GetIntentVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntentVersionsInput, context: context)
        type = Types::GetIntentVersionsInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetIntentVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntentVersionsOutput, context: context)
        type = Types::GetIntentVersionsOutput.new
        type.intents = IntentMetadataList.build(params[:intents], context: "#{context}[:intents]") unless params[:intents].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetIntentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntentsInput, context: context)
        type = Types::GetIntentsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type
      end
    end

    module GetIntentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntentsOutput, context: context)
        type = Types::GetIntentsOutput.new
        type.intents = IntentMetadataList.build(params[:intents], context: "#{context}[:intents]") unless params[:intents].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetMigrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMigrationInput, context: context)
        type = Types::GetMigrationInput.new
        type.migration_id = params[:migration_id]
        type
      end
    end

    module GetMigrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMigrationOutput, context: context)
        type = Types::GetMigrationOutput.new
        type.migration_id = params[:migration_id]
        type.v1_bot_name = params[:v1_bot_name]
        type.v1_bot_version = params[:v1_bot_version]
        type.v1_bot_locale = params[:v1_bot_locale]
        type.v2_bot_id = params[:v2_bot_id]
        type.v2_bot_role = params[:v2_bot_role]
        type.migration_status = params[:migration_status]
        type.migration_strategy = params[:migration_strategy]
        type.migration_timestamp = params[:migration_timestamp]
        type.alerts = MigrationAlerts.build(params[:alerts], context: "#{context}[:alerts]") unless params[:alerts].nil?
        type
      end
    end

    module GetMigrationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMigrationsInput, context: context)
        type = Types::GetMigrationsInput.new
        type.sort_by_attribute = params[:sort_by_attribute]
        type.sort_by_order = params[:sort_by_order]
        type.v1_bot_name_contains = params[:v1_bot_name_contains]
        type.migration_status_equals = params[:migration_status_equals]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetMigrationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMigrationsOutput, context: context)
        type = Types::GetMigrationsOutput.new
        type.migration_summaries = MigrationSummaryList.build(params[:migration_summaries], context: "#{context}[:migration_summaries]") unless params[:migration_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSlotTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSlotTypeInput, context: context)
        type = Types::GetSlotTypeInput.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module GetSlotTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSlotTypeOutput, context: context)
        type = Types::GetSlotTypeOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.enumeration_values = EnumerationValues.build(params[:enumeration_values], context: "#{context}[:enumeration_values]") unless params[:enumeration_values].nil?
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.checksum = params[:checksum]
        type.value_selection_strategy = params[:value_selection_strategy]
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.slot_type_configurations = SlotTypeConfigurations.build(params[:slot_type_configurations], context: "#{context}[:slot_type_configurations]") unless params[:slot_type_configurations].nil?
        type
      end
    end

    module GetSlotTypeVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSlotTypeVersionsInput, context: context)
        type = Types::GetSlotTypeVersionsInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetSlotTypeVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSlotTypeVersionsOutput, context: context)
        type = Types::GetSlotTypeVersionsOutput.new
        type.slot_types = SlotTypeMetadataList.build(params[:slot_types], context: "#{context}[:slot_types]") unless params[:slot_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSlotTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSlotTypesInput, context: context)
        type = Types::GetSlotTypesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type
      end
    end

    module GetSlotTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSlotTypesOutput, context: context)
        type = Types::GetSlotTypesOutput.new
        type.slot_types = SlotTypeMetadataList.build(params[:slot_types], context: "#{context}[:slot_types]") unless params[:slot_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetUtterancesViewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUtterancesViewInput, context: context)
        type = Types::GetUtterancesViewInput.new
        type.bot_name = params[:bot_name]
        type.bot_versions = BotVersions.build(params[:bot_versions], context: "#{context}[:bot_versions]") unless params[:bot_versions].nil?
        type.status_type = params[:status_type]
        type
      end
    end

    module GetUtterancesViewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUtterancesViewOutput, context: context)
        type = Types::GetUtterancesViewOutput.new
        type.bot_name = params[:bot_name]
        type.utterances = ListsOfUtterances.build(params[:utterances], context: "#{context}[:utterances]") unless params[:utterances].nil?
        type
      end
    end

    module InputContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputContext, context: context)
        type = Types::InputContext.new
        type.name = params[:name]
        type
      end
    end

    module InputContextList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputContext.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Intent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Intent, context: context)
        type = Types::Intent.new
        type.intent_name = params[:intent_name]
        type.intent_version = params[:intent_version]
        type
      end
    end

    module IntentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Intent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntentMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentMetadata, context: context)
        type = Types::IntentMetadata.new
        type.name = params[:name]
        type.description = params[:description]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type
      end
    end

    module IntentMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntentMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntentUtteranceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module KendraConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KendraConfiguration, context: context)
        type = Types::KendraConfiguration.new
        type.kendra_index = params[:kendra_index]
        type.query_filter_string = params[:query_filter_string]
        type.role = params[:role]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.message = params[:message]
        type
      end
    end

    module ListOfUtterance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UtteranceData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListsOfUtterances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UtteranceList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LocaleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LogSettingsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogSettingsRequest, context: context)
        type = Types::LogSettingsRequest.new
        type.log_type = params[:log_type]
        type.destination = params[:destination]
        type.kms_key_arn = params[:kms_key_arn]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module LogSettingsRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogSettingsRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LogSettingsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogSettingsResponse, context: context)
        type = Types::LogSettingsResponse.new
        type.log_type = params[:log_type]
        type.destination = params[:destination]
        type.kms_key_arn = params[:kms_key_arn]
        type.resource_arn = params[:resource_arn]
        type.resource_prefix = params[:resource_prefix]
        type
      end
    end

    module LogSettingsResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogSettingsResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.content_type = params[:content_type]
        type.content = params[:content]
        type.group_number = params[:group_number]
        type
      end
    end

    module MessageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Message.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MigrationAlert
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MigrationAlert, context: context)
        type = Types::MigrationAlert.new
        type.type = params[:type]
        type.message = params[:message]
        type.details = MigrationAlertDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type.reference_ur_ls = MigrationAlertReferenceURLs.build(params[:reference_ur_ls], context: "#{context}[:reference_ur_ls]") unless params[:reference_ur_ls].nil?
        type
      end
    end

    module MigrationAlertDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MigrationAlertReferenceURLs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MigrationAlerts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MigrationAlert.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MigrationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MigrationSummary, context: context)
        type = Types::MigrationSummary.new
        type.migration_id = params[:migration_id]
        type.v1_bot_name = params[:v1_bot_name]
        type.v1_bot_version = params[:v1_bot_version]
        type.v1_bot_locale = params[:v1_bot_locale]
        type.v2_bot_id = params[:v2_bot_id]
        type.v2_bot_role = params[:v2_bot_role]
        type.migration_status = params[:migration_status]
        type.migration_strategy = params[:migration_strategy]
        type.migration_timestamp = params[:migration_timestamp]
        type
      end
    end

    module MigrationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MigrationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OutputContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputContext, context: context)
        type = Types::OutputContext.new
        type.name = params[:name]
        type.time_to_live_in_seconds = params[:time_to_live_in_seconds]
        type.turns_to_live = params[:turns_to_live]
        type
      end
    end

    module OutputContextList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputContext.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PreconditionFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreconditionFailedException, context: context)
        type = Types::PreconditionFailedException.new
        type.message = params[:message]
        type
      end
    end

    module Prompt
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Prompt, context: context)
        type = Types::Prompt.new
        type.messages = MessageList.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.max_attempts = params[:max_attempts]
        type.response_card = params[:response_card]
        type
      end
    end

    module PutBotAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBotAliasInput, context: context)
        type = Types::PutBotAliasInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_name = params[:bot_name]
        type.checksum = params[:checksum]
        type.conversation_logs = ConversationLogsRequest.build(params[:conversation_logs], context: "#{context}[:conversation_logs]") unless params[:conversation_logs].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutBotAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBotAliasOutput, context: context)
        type = Types::PutBotAliasOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_name = params[:bot_name]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.checksum = params[:checksum]
        type.conversation_logs = ConversationLogsResponse.build(params[:conversation_logs], context: "#{context}[:conversation_logs]") unless params[:conversation_logs].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBotInput, context: context)
        type = Types::PutBotInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.intents = IntentList.build(params[:intents], context: "#{context}[:intents]") unless params[:intents].nil?
        type.enable_model_improvements = params[:enable_model_improvements]
        type.nlu_intent_confidence_threshold = params[:nlu_intent_confidence_threshold]
        type.clarification_prompt = Prompt.build(params[:clarification_prompt], context: "#{context}[:clarification_prompt]") unless params[:clarification_prompt].nil?
        type.abort_statement = Statement.build(params[:abort_statement], context: "#{context}[:abort_statement]") unless params[:abort_statement].nil?
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.voice_id = params[:voice_id]
        type.checksum = params[:checksum]
        type.process_behavior = params[:process_behavior]
        type.locale = params[:locale]
        type.child_directed = params[:child_directed]
        type.detect_sentiment = params[:detect_sentiment]
        type.create_version = params[:create_version]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBotOutput, context: context)
        type = Types::PutBotOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.intents = IntentList.build(params[:intents], context: "#{context}[:intents]") unless params[:intents].nil?
        type.enable_model_improvements = params[:enable_model_improvements]
        type.nlu_intent_confidence_threshold = params[:nlu_intent_confidence_threshold]
        type.clarification_prompt = Prompt.build(params[:clarification_prompt], context: "#{context}[:clarification_prompt]") unless params[:clarification_prompt].nil?
        type.abort_statement = Statement.build(params[:abort_statement], context: "#{context}[:abort_statement]") unless params[:abort_statement].nil?
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.voice_id = params[:voice_id]
        type.checksum = params[:checksum]
        type.version = params[:version]
        type.locale = params[:locale]
        type.child_directed = params[:child_directed]
        type.create_version = params[:create_version]
        type.detect_sentiment = params[:detect_sentiment]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutIntentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIntentInput, context: context)
        type = Types::PutIntentInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.slots = SlotList.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type.sample_utterances = IntentUtteranceList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.confirmation_prompt = Prompt.build(params[:confirmation_prompt], context: "#{context}[:confirmation_prompt]") unless params[:confirmation_prompt].nil?
        type.rejection_statement = Statement.build(params[:rejection_statement], context: "#{context}[:rejection_statement]") unless params[:rejection_statement].nil?
        type.follow_up_prompt = FollowUpPrompt.build(params[:follow_up_prompt], context: "#{context}[:follow_up_prompt]") unless params[:follow_up_prompt].nil?
        type.conclusion_statement = Statement.build(params[:conclusion_statement], context: "#{context}[:conclusion_statement]") unless params[:conclusion_statement].nil?
        type.dialog_code_hook = CodeHook.build(params[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless params[:dialog_code_hook].nil?
        type.fulfillment_activity = FulfillmentActivity.build(params[:fulfillment_activity], context: "#{context}[:fulfillment_activity]") unless params[:fulfillment_activity].nil?
        type.parent_intent_signature = params[:parent_intent_signature]
        type.checksum = params[:checksum]
        type.create_version = params[:create_version]
        type.kendra_configuration = KendraConfiguration.build(params[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless params[:kendra_configuration].nil?
        type.input_contexts = InputContextList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type
      end
    end

    module PutIntentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIntentOutput, context: context)
        type = Types::PutIntentOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.slots = SlotList.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type.sample_utterances = IntentUtteranceList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.confirmation_prompt = Prompt.build(params[:confirmation_prompt], context: "#{context}[:confirmation_prompt]") unless params[:confirmation_prompt].nil?
        type.rejection_statement = Statement.build(params[:rejection_statement], context: "#{context}[:rejection_statement]") unless params[:rejection_statement].nil?
        type.follow_up_prompt = FollowUpPrompt.build(params[:follow_up_prompt], context: "#{context}[:follow_up_prompt]") unless params[:follow_up_prompt].nil?
        type.conclusion_statement = Statement.build(params[:conclusion_statement], context: "#{context}[:conclusion_statement]") unless params[:conclusion_statement].nil?
        type.dialog_code_hook = CodeHook.build(params[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless params[:dialog_code_hook].nil?
        type.fulfillment_activity = FulfillmentActivity.build(params[:fulfillment_activity], context: "#{context}[:fulfillment_activity]") unless params[:fulfillment_activity].nil?
        type.parent_intent_signature = params[:parent_intent_signature]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.checksum = params[:checksum]
        type.create_version = params[:create_version]
        type.kendra_configuration = KendraConfiguration.build(params[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless params[:kendra_configuration].nil?
        type.input_contexts = InputContextList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type
      end
    end

    module PutSlotTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSlotTypeInput, context: context)
        type = Types::PutSlotTypeInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.enumeration_values = EnumerationValues.build(params[:enumeration_values], context: "#{context}[:enumeration_values]") unless params[:enumeration_values].nil?
        type.checksum = params[:checksum]
        type.value_selection_strategy = params[:value_selection_strategy]
        type.create_version = params[:create_version]
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.slot_type_configurations = SlotTypeConfigurations.build(params[:slot_type_configurations], context: "#{context}[:slot_type_configurations]") unless params[:slot_type_configurations].nil?
        type
      end
    end

    module PutSlotTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSlotTypeOutput, context: context)
        type = Types::PutSlotTypeOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.enumeration_values = EnumerationValues.build(params[:enumeration_values], context: "#{context}[:enumeration_values]") unless params[:enumeration_values].nil?
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.checksum = params[:checksum]
        type.value_selection_strategy = params[:value_selection_strategy]
        type.create_version = params[:create_version]
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.slot_type_configurations = SlotTypeConfigurations.build(params[:slot_type_configurations], context: "#{context}[:slot_type_configurations]") unless params[:slot_type_configurations].nil?
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.reference_type = params[:reference_type]
        type.example_reference = ResourceReference.build(params[:example_reference], context: "#{context}[:example_reference]") unless params[:example_reference].nil?
        type
      end
    end

    module ResourceReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceReference, context: context)
        type = Types::ResourceReference.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module Slot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Slot, context: context)
        type = Types::Slot.new
        type.name = params[:name]
        type.description = params[:description]
        type.slot_constraint = params[:slot_constraint]
        type.slot_type = params[:slot_type]
        type.slot_type_version = params[:slot_type_version]
        type.value_elicitation_prompt = Prompt.build(params[:value_elicitation_prompt], context: "#{context}[:value_elicitation_prompt]") unless params[:value_elicitation_prompt].nil?
        type.priority = params[:priority]
        type.sample_utterances = SlotUtteranceList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.response_card = params[:response_card]
        type.obfuscation_setting = params[:obfuscation_setting]
        type.default_value_spec = SlotDefaultValueSpec.build(params[:default_value_spec], context: "#{context}[:default_value_spec]") unless params[:default_value_spec].nil?
        type
      end
    end

    module SlotDefaultValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotDefaultValue, context: context)
        type = Types::SlotDefaultValue.new
        type.default_value = params[:default_value]
        type
      end
    end

    module SlotDefaultValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SlotDefaultValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotDefaultValueSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotDefaultValueSpec, context: context)
        type = Types::SlotDefaultValueSpec.new
        type.default_value_list = SlotDefaultValueList.build(params[:default_value_list], context: "#{context}[:default_value_list]") unless params[:default_value_list].nil?
        type
      end
    end

    module SlotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Slot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotTypeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotTypeConfiguration, context: context)
        type = Types::SlotTypeConfiguration.new
        type.regex_configuration = SlotTypeRegexConfiguration.build(params[:regex_configuration], context: "#{context}[:regex_configuration]") unless params[:regex_configuration].nil?
        type
      end
    end

    module SlotTypeConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SlotTypeConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotTypeMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotTypeMetadata, context: context)
        type = Types::SlotTypeMetadata.new
        type.name = params[:name]
        type.description = params[:description]
        type.last_updated_date = params[:last_updated_date]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type
      end
    end

    module SlotTypeMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SlotTypeMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotTypeRegexConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotTypeRegexConfiguration, context: context)
        type = Types::SlotTypeRegexConfiguration.new
        type.pattern = params[:pattern]
        type
      end
    end

    module SlotUtteranceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartImportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportInput, context: context)
        type = Types::StartImportInput.new
        type.payload = params[:payload]
        type.resource_type = params[:resource_type]
        type.merge_strategy = params[:merge_strategy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartImportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportOutput, context: context)
        type = Types::StartImportOutput.new
        type.name = params[:name]
        type.resource_type = params[:resource_type]
        type.merge_strategy = params[:merge_strategy]
        type.import_id = params[:import_id]
        type.import_status = params[:import_status]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_date = params[:created_date]
        type
      end
    end

    module StartMigrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMigrationInput, context: context)
        type = Types::StartMigrationInput.new
        type.v1_bot_name = params[:v1_bot_name]
        type.v1_bot_version = params[:v1_bot_version]
        type.v2_bot_name = params[:v2_bot_name]
        type.v2_bot_role = params[:v2_bot_role]
        type.migration_strategy = params[:migration_strategy]
        type
      end
    end

    module StartMigrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMigrationOutput, context: context)
        type = Types::StartMigrationOutput.new
        type.v1_bot_name = params[:v1_bot_name]
        type.v1_bot_version = params[:v1_bot_version]
        type.v1_bot_locale = params[:v1_bot_locale]
        type.v2_bot_id = params[:v2_bot_id]
        type.v2_bot_role = params[:v2_bot_role]
        type.migration_id = params[:migration_id]
        type.migration_strategy = params[:migration_strategy]
        type.migration_timestamp = params[:migration_timestamp]
        type
      end
    end

    module Statement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Statement, context: context)
        type = Types::Statement.new
        type.messages = MessageList.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.response_card = params[:response_card]
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

    module SynonymList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module UtteranceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UtteranceData, context: context)
        type = Types::UtteranceData.new
        type.utterance_string = params[:utterance_string]
        type.count = params[:count]
        type.distinct_users = params[:distinct_users]
        type.first_uttered_date = params[:first_uttered_date]
        type.last_uttered_date = params[:last_uttered_date]
        type
      end
    end

    module UtteranceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UtteranceList, context: context)
        type = Types::UtteranceList.new
        type.bot_version = params[:bot_version]
        type.utterances = ListOfUtterance.build(params[:utterances], context: "#{context}[:utterances]") unless params[:utterances].nil?
        type
      end
    end

  end
end
