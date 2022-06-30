# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelBuildingService
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BotAliasMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotAliasMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Validators::ConversationLogsResponse.validate!(input[:conversation_logs], context: "#{context}[:conversation_logs]") unless input[:conversation_logs].nil?
      end
    end

    class BotAliasMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotAliasMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotChannelAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotChannelAssociation, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ChannelConfigurationMap.validate!(input[:bot_configuration], context: "#{context}[:bot_configuration]") unless input[:bot_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class BotChannelAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotChannelAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class BotMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BuiltinIntentMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuiltinIntentMetadata, context: context)
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
        Validators::LocaleList.validate!(input[:supported_locales], context: "#{context}[:supported_locales]") unless input[:supported_locales].nil?
      end
    end

    class BuiltinIntentMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BuiltinIntentMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuiltinIntentSlot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuiltinIntentSlot, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class BuiltinIntentSlotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BuiltinIntentSlot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuiltinSlotTypeMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuiltinSlotTypeMetadata, context: context)
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
        Validators::LocaleList.validate!(input[:supported_locales], context: "#{context}[:supported_locales]") unless input[:supported_locales].nil?
      end
    end

    class BuiltinSlotTypeMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BuiltinSlotTypeMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelConfigurationMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CodeHook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeHook, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:message_version], ::String, context: "#{context}[:message_version]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConversationLogsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConversationLogsRequest, context: context)
        Validators::LogSettingsRequestList.validate!(input[:log_settings], context: "#{context}[:log_settings]") unless input[:log_settings].nil?
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
      end
    end

    class ConversationLogsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConversationLogsResponse, context: context)
        Validators::LogSettingsResponseList.validate!(input[:log_settings], context: "#{context}[:log_settings]") unless input[:log_settings].nil?
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
      end
    end

    class CreateBotVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
      end
    end

    class CreateBotVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotVersionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::IntentList.validate!(input[:intents], context: "#{context}[:intents]") unless input[:intents].nil?
        Validators::Prompt.validate!(input[:clarification_prompt], context: "#{context}[:clarification_prompt]") unless input[:clarification_prompt].nil?
        Validators::Statement.validate!(input[:abort_statement], context: "#{context}[:abort_statement]") unless input[:abort_statement].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:child_directed], ::TrueClass, ::FalseClass, context: "#{context}[:child_directed]")
        Hearth::Validator.validate!(input[:enable_model_improvements], ::TrueClass, ::FalseClass, context: "#{context}[:enable_model_improvements]")
        Hearth::Validator.validate!(input[:detect_sentiment], ::TrueClass, ::FalseClass, context: "#{context}[:detect_sentiment]")
      end
    end

    class CreateIntentVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntentVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
      end
    end

    class CreateIntentVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntentVersionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SlotList.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
        Validators::IntentUtteranceList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::Prompt.validate!(input[:confirmation_prompt], context: "#{context}[:confirmation_prompt]") unless input[:confirmation_prompt].nil?
        Validators::Statement.validate!(input[:rejection_statement], context: "#{context}[:rejection_statement]") unless input[:rejection_statement].nil?
        Validators::FollowUpPrompt.validate!(input[:follow_up_prompt], context: "#{context}[:follow_up_prompt]") unless input[:follow_up_prompt].nil?
        Validators::Statement.validate!(input[:conclusion_statement], context: "#{context}[:conclusion_statement]") unless input[:conclusion_statement].nil?
        Validators::CodeHook.validate!(input[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless input[:dialog_code_hook].nil?
        Validators::FulfillmentActivity.validate!(input[:fulfillment_activity], context: "#{context}[:fulfillment_activity]") unless input[:fulfillment_activity].nil?
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Validators::KendraConfiguration.validate!(input[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless input[:kendra_configuration].nil?
        Validators::InputContextList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
      end
    end

    class CreateSlotTypeVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSlotTypeVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
      end
    end

    class CreateSlotTypeVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSlotTypeVersionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EnumerationValues.validate!(input[:enumeration_values], context: "#{context}[:enumeration_values]") unless input[:enumeration_values].nil?
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:value_selection_strategy], ::String, context: "#{context}[:value_selection_strategy]")
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Validators::SlotTypeConfigurations.validate!(input[:slot_type_configurations], context: "#{context}[:slot_type_configurations]") unless input[:slot_type_configurations].nil?
      end
    end

    class DeleteBotAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotAliasInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
      end
    end

    class DeleteBotAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotAliasOutput, context: context)
      end
    end

    class DeleteBotChannelAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotChannelAssociationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
      end
    end

    class DeleteBotChannelAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotChannelAssociationOutput, context: context)
      end
    end

    class DeleteBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotOutput, context: context)
      end
    end

    class DeleteBotVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteBotVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotVersionOutput, context: context)
      end
    end

    class DeleteIntentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteIntentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntentOutput, context: context)
      end
    end

    class DeleteIntentVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntentVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteIntentVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntentVersionOutput, context: context)
      end
    end

    class DeleteSlotTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSlotTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteSlotTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSlotTypeOutput, context: context)
      end
    end

    class DeleteSlotTypeVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSlotTypeVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteSlotTypeVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSlotTypeVersionOutput, context: context)
      end
    end

    class DeleteUtterancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUtterancesInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DeleteUtterancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUtterancesOutput, context: context)
      end
    end

    class EnumerationValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnumerationValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Validators::SynonymList.validate!(input[:synonyms], context: "#{context}[:synonyms]") unless input[:synonyms].nil?
      end
    end

    class EnumerationValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EnumerationValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FollowUpPrompt
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FollowUpPrompt, context: context)
        Validators::Prompt.validate!(input[:prompt], context: "#{context}[:prompt]") unless input[:prompt].nil?
        Validators::Statement.validate!(input[:rejection_statement], context: "#{context}[:rejection_statement]") unless input[:rejection_statement].nil?
      end
    end

    class FulfillmentActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FulfillmentActivity, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::CodeHook.validate!(input[:code_hook], context: "#{context}[:code_hook]") unless input[:code_hook].nil?
      end
    end

    class GetBotAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotAliasInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
      end
    end

    class GetBotAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotAliasOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Validators::ConversationLogsResponse.validate!(input[:conversation_logs], context: "#{context}[:conversation_logs]") unless input[:conversation_logs].nil?
      end
    end

    class GetBotAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotAliasesInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
      end
    end

    class GetBotAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotAliasesOutput, context: context)
        Validators::BotAliasMetadataList.validate!(input[:bot_aliases], context: "#{context}[:bot_aliases]") unless input[:bot_aliases].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBotChannelAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotChannelAssociationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
      end
    end

    class GetBotChannelAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotChannelAssociationOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ChannelConfigurationMap.validate!(input[:bot_configuration], context: "#{context}[:bot_configuration]") unless input[:bot_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class GetBotChannelAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotChannelAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
      end
    end

    class GetBotChannelAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotChannelAssociationsOutput, context: context)
        Validators::BotChannelAssociationList.validate!(input[:bot_channel_associations], context: "#{context}[:bot_channel_associations]") unless input[:bot_channel_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version_or_alias], ::String, context: "#{context}[:version_or_alias]")
      end
    end

    class GetBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::IntentList.validate!(input[:intents], context: "#{context}[:intents]") unless input[:intents].nil?
        Hearth::Validator.validate!(input[:enable_model_improvements], ::TrueClass, ::FalseClass, context: "#{context}[:enable_model_improvements]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence_threshold], ::Float, context: "#{context}[:nlu_intent_confidence_threshold]")
        Validators::Prompt.validate!(input[:clarification_prompt], context: "#{context}[:clarification_prompt]") unless input[:clarification_prompt].nil?
        Validators::Statement.validate!(input[:abort_statement], context: "#{context}[:abort_statement]") unless input[:abort_statement].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:child_directed], ::TrueClass, ::FalseClass, context: "#{context}[:child_directed]")
        Hearth::Validator.validate!(input[:detect_sentiment], ::TrueClass, ::FalseClass, context: "#{context}[:detect_sentiment]")
      end
    end

    class GetBotVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotVersionsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetBotVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotVersionsOutput, context: context)
        Validators::BotMetadataList.validate!(input[:bots], context: "#{context}[:bots]") unless input[:bots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
      end
    end

    class GetBotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotsOutput, context: context)
        Validators::BotMetadataList.validate!(input[:bots], context: "#{context}[:bots]") unless input[:bots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBuiltinIntentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBuiltinIntentInput, context: context)
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
      end
    end

    class GetBuiltinIntentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBuiltinIntentOutput, context: context)
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
        Validators::LocaleList.validate!(input[:supported_locales], context: "#{context}[:supported_locales]") unless input[:supported_locales].nil?
        Validators::BuiltinIntentSlotList.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
      end
    end

    class GetBuiltinIntentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBuiltinIntentsInput, context: context)
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:signature_contains], ::String, context: "#{context}[:signature_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetBuiltinIntentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBuiltinIntentsOutput, context: context)
        Validators::BuiltinIntentMetadataList.validate!(input[:intents], context: "#{context}[:intents]") unless input[:intents].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBuiltinSlotTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBuiltinSlotTypesInput, context: context)
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:signature_contains], ::String, context: "#{context}[:signature_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetBuiltinSlotTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBuiltinSlotTypesOutput, context: context)
        Validators::BuiltinSlotTypeMetadataList.validate!(input[:slot_types], context: "#{context}[:slot_types]") unless input[:slot_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:export_type], ::String, context: "#{context}[:export_type]")
      end
    end

    class GetExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:export_type], ::String, context: "#{context}[:export_type]")
        Hearth::Validator.validate!(input[:export_status], ::String, context: "#{context}[:export_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class GetImportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportInput, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
      end
    end

    class GetImportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:merge_strategy], ::String, context: "#{context}[:merge_strategy]")
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
        Hearth::Validator.validate!(input[:import_status], ::String, context: "#{context}[:import_status]")
        Validators::StringList.validate!(input[:failure_reason], context: "#{context}[:failure_reason]") unless input[:failure_reason].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
      end
    end

    class GetIntentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetIntentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntentOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SlotList.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
        Validators::IntentUtteranceList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::Prompt.validate!(input[:confirmation_prompt], context: "#{context}[:confirmation_prompt]") unless input[:confirmation_prompt].nil?
        Validators::Statement.validate!(input[:rejection_statement], context: "#{context}[:rejection_statement]") unless input[:rejection_statement].nil?
        Validators::FollowUpPrompt.validate!(input[:follow_up_prompt], context: "#{context}[:follow_up_prompt]") unless input[:follow_up_prompt].nil?
        Validators::Statement.validate!(input[:conclusion_statement], context: "#{context}[:conclusion_statement]") unless input[:conclusion_statement].nil?
        Validators::CodeHook.validate!(input[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless input[:dialog_code_hook].nil?
        Validators::FulfillmentActivity.validate!(input[:fulfillment_activity], context: "#{context}[:fulfillment_activity]") unless input[:fulfillment_activity].nil?
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Validators::KendraConfiguration.validate!(input[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless input[:kendra_configuration].nil?
        Validators::InputContextList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
      end
    end

    class GetIntentVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntentVersionsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetIntentVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntentVersionsOutput, context: context)
        Validators::IntentMetadataList.validate!(input[:intents], context: "#{context}[:intents]") unless input[:intents].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetIntentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntentsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
      end
    end

    class GetIntentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntentsOutput, context: context)
        Validators::IntentMetadataList.validate!(input[:intents], context: "#{context}[:intents]") unless input[:intents].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetMigrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMigrationInput, context: context)
        Hearth::Validator.validate!(input[:migration_id], ::String, context: "#{context}[:migration_id]")
      end
    end

    class GetMigrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMigrationOutput, context: context)
        Hearth::Validator.validate!(input[:migration_id], ::String, context: "#{context}[:migration_id]")
        Hearth::Validator.validate!(input[:v1_bot_name], ::String, context: "#{context}[:v1_bot_name]")
        Hearth::Validator.validate!(input[:v1_bot_version], ::String, context: "#{context}[:v1_bot_version]")
        Hearth::Validator.validate!(input[:v1_bot_locale], ::String, context: "#{context}[:v1_bot_locale]")
        Hearth::Validator.validate!(input[:v2_bot_id], ::String, context: "#{context}[:v2_bot_id]")
        Hearth::Validator.validate!(input[:v2_bot_role], ::String, context: "#{context}[:v2_bot_role]")
        Hearth::Validator.validate!(input[:migration_status], ::String, context: "#{context}[:migration_status]")
        Hearth::Validator.validate!(input[:migration_strategy], ::String, context: "#{context}[:migration_strategy]")
        Hearth::Validator.validate!(input[:migration_timestamp], ::Time, context: "#{context}[:migration_timestamp]")
        Validators::MigrationAlerts.validate!(input[:alerts], context: "#{context}[:alerts]") unless input[:alerts].nil?
      end
    end

    class GetMigrationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMigrationsInput, context: context)
        Hearth::Validator.validate!(input[:sort_by_attribute], ::String, context: "#{context}[:sort_by_attribute]")
        Hearth::Validator.validate!(input[:sort_by_order], ::String, context: "#{context}[:sort_by_order]")
        Hearth::Validator.validate!(input[:v1_bot_name_contains], ::String, context: "#{context}[:v1_bot_name_contains]")
        Hearth::Validator.validate!(input[:migration_status_equals], ::String, context: "#{context}[:migration_status_equals]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetMigrationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMigrationsOutput, context: context)
        Validators::MigrationSummaryList.validate!(input[:migration_summaries], context: "#{context}[:migration_summaries]") unless input[:migration_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSlotTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSlotTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetSlotTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSlotTypeOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EnumerationValues.validate!(input[:enumeration_values], context: "#{context}[:enumeration_values]") unless input[:enumeration_values].nil?
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:value_selection_strategy], ::String, context: "#{context}[:value_selection_strategy]")
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Validators::SlotTypeConfigurations.validate!(input[:slot_type_configurations], context: "#{context}[:slot_type_configurations]") unless input[:slot_type_configurations].nil?
      end
    end

    class GetSlotTypeVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSlotTypeVersionsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetSlotTypeVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSlotTypeVersionsOutput, context: context)
        Validators::SlotTypeMetadataList.validate!(input[:slot_types], context: "#{context}[:slot_types]") unless input[:slot_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSlotTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSlotTypesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
      end
    end

    class GetSlotTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSlotTypesOutput, context: context)
        Validators::SlotTypeMetadataList.validate!(input[:slot_types], context: "#{context}[:slot_types]") unless input[:slot_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetUtterancesViewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUtterancesViewInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Validators::BotVersions.validate!(input[:bot_versions], context: "#{context}[:bot_versions]") unless input[:bot_versions].nil?
        Hearth::Validator.validate!(input[:status_type], ::String, context: "#{context}[:status_type]")
      end
    end

    class GetUtterancesViewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUtterancesViewOutput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Validators::ListsOfUtterances.validate!(input[:utterances], context: "#{context}[:utterances]") unless input[:utterances].nil?
      end
    end

    class InputContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputContext, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class InputContextList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InputContext.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Intent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Intent, context: context)
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:intent_version], ::String, context: "#{context}[:intent_version]")
      end
    end

    class IntentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Intent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntentMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntentMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class IntentMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IntentMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntentUtteranceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KendraConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KendraConfiguration, context: context)
        Hearth::Validator.validate!(input[:kendra_index], ::String, context: "#{context}[:kendra_index]")
        Hearth::Validator.validate!(input[:query_filter_string], ::String, context: "#{context}[:query_filter_string]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListOfUtterance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UtteranceData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListsOfUtterances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UtteranceList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LocaleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LogSettingsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogSettingsRequest, context: context)
        Hearth::Validator.validate!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class LogSettingsRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogSettingsRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogSettingsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogSettingsResponse, context: context)
        Hearth::Validator.validate!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_prefix], ::String, context: "#{context}[:resource_prefix]")
      end
    end

    class LogSettingsResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogSettingsResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Message, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:group_number], ::Integer, context: "#{context}[:group_number]")
      end
    end

    class MessageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Message.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MigrationAlert
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MigrationAlert, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::MigrationAlertDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
        Validators::MigrationAlertReferenceURLs.validate!(input[:reference_ur_ls], context: "#{context}[:reference_ur_ls]") unless input[:reference_ur_ls].nil?
      end
    end

    class MigrationAlertDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MigrationAlertReferenceURLs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MigrationAlerts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MigrationAlert.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MigrationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MigrationSummary, context: context)
        Hearth::Validator.validate!(input[:migration_id], ::String, context: "#{context}[:migration_id]")
        Hearth::Validator.validate!(input[:v1_bot_name], ::String, context: "#{context}[:v1_bot_name]")
        Hearth::Validator.validate!(input[:v1_bot_version], ::String, context: "#{context}[:v1_bot_version]")
        Hearth::Validator.validate!(input[:v1_bot_locale], ::String, context: "#{context}[:v1_bot_locale]")
        Hearth::Validator.validate!(input[:v2_bot_id], ::String, context: "#{context}[:v2_bot_id]")
        Hearth::Validator.validate!(input[:v2_bot_role], ::String, context: "#{context}[:v2_bot_role]")
        Hearth::Validator.validate!(input[:migration_status], ::String, context: "#{context}[:migration_status]")
        Hearth::Validator.validate!(input[:migration_strategy], ::String, context: "#{context}[:migration_strategy]")
        Hearth::Validator.validate!(input[:migration_timestamp], ::Time, context: "#{context}[:migration_timestamp]")
      end
    end

    class MigrationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MigrationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OutputContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputContext, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:time_to_live_in_seconds], ::Integer, context: "#{context}[:time_to_live_in_seconds]")
        Hearth::Validator.validate!(input[:turns_to_live], ::Integer, context: "#{context}[:turns_to_live]")
      end
    end

    class OutputContextList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OutputContext.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PreconditionFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Prompt
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Prompt, context: context)
        Validators::MessageList.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        Hearth::Validator.validate!(input[:max_attempts], ::Integer, context: "#{context}[:max_attempts]")
        Hearth::Validator.validate!(input[:response_card], ::String, context: "#{context}[:response_card]")
      end
    end

    class PutBotAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBotAliasInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Validators::ConversationLogsRequest.validate!(input[:conversation_logs], context: "#{context}[:conversation_logs]") unless input[:conversation_logs].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutBotAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBotAliasOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Validators::ConversationLogsResponse.validate!(input[:conversation_logs], context: "#{context}[:conversation_logs]") unless input[:conversation_logs].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBotInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::IntentList.validate!(input[:intents], context: "#{context}[:intents]") unless input[:intents].nil?
        Hearth::Validator.validate!(input[:enable_model_improvements], ::TrueClass, ::FalseClass, context: "#{context}[:enable_model_improvements]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence_threshold], ::Float, context: "#{context}[:nlu_intent_confidence_threshold]")
        Validators::Prompt.validate!(input[:clarification_prompt], context: "#{context}[:clarification_prompt]") unless input[:clarification_prompt].nil?
        Validators::Statement.validate!(input[:abort_statement], context: "#{context}[:abort_statement]") unless input[:abort_statement].nil?
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:process_behavior], ::String, context: "#{context}[:process_behavior]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:child_directed], ::TrueClass, ::FalseClass, context: "#{context}[:child_directed]")
        Hearth::Validator.validate!(input[:detect_sentiment], ::TrueClass, ::FalseClass, context: "#{context}[:detect_sentiment]")
        Hearth::Validator.validate!(input[:create_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_version]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBotOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::IntentList.validate!(input[:intents], context: "#{context}[:intents]") unless input[:intents].nil?
        Hearth::Validator.validate!(input[:enable_model_improvements], ::TrueClass, ::FalseClass, context: "#{context}[:enable_model_improvements]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence_threshold], ::Float, context: "#{context}[:nlu_intent_confidence_threshold]")
        Validators::Prompt.validate!(input[:clarification_prompt], context: "#{context}[:clarification_prompt]") unless input[:clarification_prompt].nil?
        Validators::Statement.validate!(input[:abort_statement], context: "#{context}[:abort_statement]") unless input[:abort_statement].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:child_directed], ::TrueClass, ::FalseClass, context: "#{context}[:child_directed]")
        Hearth::Validator.validate!(input[:create_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_version]")
        Hearth::Validator.validate!(input[:detect_sentiment], ::TrueClass, ::FalseClass, context: "#{context}[:detect_sentiment]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutIntentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIntentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SlotList.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
        Validators::IntentUtteranceList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::Prompt.validate!(input[:confirmation_prompt], context: "#{context}[:confirmation_prompt]") unless input[:confirmation_prompt].nil?
        Validators::Statement.validate!(input[:rejection_statement], context: "#{context}[:rejection_statement]") unless input[:rejection_statement].nil?
        Validators::FollowUpPrompt.validate!(input[:follow_up_prompt], context: "#{context}[:follow_up_prompt]") unless input[:follow_up_prompt].nil?
        Validators::Statement.validate!(input[:conclusion_statement], context: "#{context}[:conclusion_statement]") unless input[:conclusion_statement].nil?
        Validators::CodeHook.validate!(input[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless input[:dialog_code_hook].nil?
        Validators::FulfillmentActivity.validate!(input[:fulfillment_activity], context: "#{context}[:fulfillment_activity]") unless input[:fulfillment_activity].nil?
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:create_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_version]")
        Validators::KendraConfiguration.validate!(input[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless input[:kendra_configuration].nil?
        Validators::InputContextList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
      end
    end

    class PutIntentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIntentOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SlotList.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
        Validators::IntentUtteranceList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::Prompt.validate!(input[:confirmation_prompt], context: "#{context}[:confirmation_prompt]") unless input[:confirmation_prompt].nil?
        Validators::Statement.validate!(input[:rejection_statement], context: "#{context}[:rejection_statement]") unless input[:rejection_statement].nil?
        Validators::FollowUpPrompt.validate!(input[:follow_up_prompt], context: "#{context}[:follow_up_prompt]") unless input[:follow_up_prompt].nil?
        Validators::Statement.validate!(input[:conclusion_statement], context: "#{context}[:conclusion_statement]") unless input[:conclusion_statement].nil?
        Validators::CodeHook.validate!(input[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless input[:dialog_code_hook].nil?
        Validators::FulfillmentActivity.validate!(input[:fulfillment_activity], context: "#{context}[:fulfillment_activity]") unless input[:fulfillment_activity].nil?
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:create_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_version]")
        Validators::KendraConfiguration.validate!(input[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless input[:kendra_configuration].nil?
        Validators::InputContextList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
      end
    end

    class PutSlotTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSlotTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EnumerationValues.validate!(input[:enumeration_values], context: "#{context}[:enumeration_values]") unless input[:enumeration_values].nil?
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:value_selection_strategy], ::String, context: "#{context}[:value_selection_strategy]")
        Hearth::Validator.validate!(input[:create_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_version]")
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Validators::SlotTypeConfigurations.validate!(input[:slot_type_configurations], context: "#{context}[:slot_type_configurations]") unless input[:slot_type_configurations].nil?
      end
    end

    class PutSlotTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSlotTypeOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EnumerationValues.validate!(input[:enumeration_values], context: "#{context}[:enumeration_values]") unless input[:enumeration_values].nil?
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:value_selection_strategy], ::String, context: "#{context}[:value_selection_strategy]")
        Hearth::Validator.validate!(input[:create_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_version]")
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Validators::SlotTypeConfigurations.validate!(input[:slot_type_configurations], context: "#{context}[:slot_type_configurations]") unless input[:slot_type_configurations].nil?
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:reference_type], ::String, context: "#{context}[:reference_type]")
        Validators::ResourceReference.validate!(input[:example_reference], context: "#{context}[:example_reference]") unless input[:example_reference].nil?
      end
    end

    class ResourceReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceReference, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class Slot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Slot, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:slot_constraint], ::String, context: "#{context}[:slot_constraint]")
        Hearth::Validator.validate!(input[:slot_type], ::String, context: "#{context}[:slot_type]")
        Hearth::Validator.validate!(input[:slot_type_version], ::String, context: "#{context}[:slot_type_version]")
        Validators::Prompt.validate!(input[:value_elicitation_prompt], context: "#{context}[:value_elicitation_prompt]") unless input[:value_elicitation_prompt].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::SlotUtteranceList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Hearth::Validator.validate!(input[:response_card], ::String, context: "#{context}[:response_card]")
        Hearth::Validator.validate!(input[:obfuscation_setting], ::String, context: "#{context}[:obfuscation_setting]")
        Validators::SlotDefaultValueSpec.validate!(input[:default_value_spec], context: "#{context}[:default_value_spec]") unless input[:default_value_spec].nil?
      end
    end

    class SlotDefaultValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotDefaultValue, context: context)
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class SlotDefaultValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SlotDefaultValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotDefaultValueSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotDefaultValueSpec, context: context)
        Validators::SlotDefaultValueList.validate!(input[:default_value_list], context: "#{context}[:default_value_list]") unless input[:default_value_list].nil?
      end
    end

    class SlotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Slot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotTypeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotTypeConfiguration, context: context)
        Validators::SlotTypeRegexConfiguration.validate!(input[:regex_configuration], context: "#{context}[:regex_configuration]") unless input[:regex_configuration].nil?
      end
    end

    class SlotTypeConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SlotTypeConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotTypeMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotTypeMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class SlotTypeMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SlotTypeMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotTypeRegexConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotTypeRegexConfiguration, context: context)
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
      end
    end

    class SlotUtteranceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartImportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportInput, context: context)
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:merge_strategy], ::String, context: "#{context}[:merge_strategy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartImportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:merge_strategy], ::String, context: "#{context}[:merge_strategy]")
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
        Hearth::Validator.validate!(input[:import_status], ::String, context: "#{context}[:import_status]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
      end
    end

    class StartMigrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMigrationInput, context: context)
        Hearth::Validator.validate!(input[:v1_bot_name], ::String, context: "#{context}[:v1_bot_name]")
        Hearth::Validator.validate!(input[:v1_bot_version], ::String, context: "#{context}[:v1_bot_version]")
        Hearth::Validator.validate!(input[:v2_bot_name], ::String, context: "#{context}[:v2_bot_name]")
        Hearth::Validator.validate!(input[:v2_bot_role], ::String, context: "#{context}[:v2_bot_role]")
        Hearth::Validator.validate!(input[:migration_strategy], ::String, context: "#{context}[:migration_strategy]")
      end
    end

    class StartMigrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMigrationOutput, context: context)
        Hearth::Validator.validate!(input[:v1_bot_name], ::String, context: "#{context}[:v1_bot_name]")
        Hearth::Validator.validate!(input[:v1_bot_version], ::String, context: "#{context}[:v1_bot_version]")
        Hearth::Validator.validate!(input[:v1_bot_locale], ::String, context: "#{context}[:v1_bot_locale]")
        Hearth::Validator.validate!(input[:v2_bot_id], ::String, context: "#{context}[:v2_bot_id]")
        Hearth::Validator.validate!(input[:v2_bot_role], ::String, context: "#{context}[:v2_bot_role]")
        Hearth::Validator.validate!(input[:migration_id], ::String, context: "#{context}[:migration_id]")
        Hearth::Validator.validate!(input[:migration_strategy], ::String, context: "#{context}[:migration_strategy]")
        Hearth::Validator.validate!(input[:migration_timestamp], ::Time, context: "#{context}[:migration_timestamp]")
      end
    end

    class Statement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Statement, context: context)
        Validators::MessageList.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        Hearth::Validator.validate!(input[:response_card], ::String, context: "#{context}[:response_card]")
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

    class SynonymList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
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

    class UtteranceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UtteranceData, context: context)
        Hearth::Validator.validate!(input[:utterance_string], ::String, context: "#{context}[:utterance_string]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:distinct_users], ::Integer, context: "#{context}[:distinct_users]")
        Hearth::Validator.validate!(input[:first_uttered_date], ::Time, context: "#{context}[:first_uttered_date]")
        Hearth::Validator.validate!(input[:last_uttered_date], ::Time, context: "#{context}[:last_uttered_date]")
      end
    end

    class UtteranceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UtteranceList, context: context)
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::ListOfUtterance.validate!(input[:utterances], context: "#{context}[:utterances]") unless input[:utterances].nil?
      end
    end

  end
end
