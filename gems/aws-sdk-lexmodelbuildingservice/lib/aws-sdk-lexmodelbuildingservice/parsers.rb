# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LexModelBuildingService
  module Parsers

    # Operation Parser for CreateBotVersion
    class CreateBotVersion
      def self.parse(http_resp)
        data = Types::CreateBotVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.intents = (Parsers::IntentList.parse(map['intents']) unless map['intents'].nil?)
        data.clarification_prompt = (Parsers::Prompt.parse(map['clarificationPrompt']) unless map['clarificationPrompt'].nil?)
        data.abort_statement = (Parsers::Statement.parse(map['abortStatement']) unless map['abortStatement'].nil?)
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.idle_session_ttl_in_seconds = map['idleSessionTTLInSeconds']
        data.voice_id = map['voiceId']
        data.checksum = map['checksum']
        data.version = map['version']
        data.locale = map['locale']
        data.child_directed = map['childDirected']
        data.enable_model_improvements = map['enableModelImprovements']
        data.detect_sentiment = map['detectSentiment']
        data
      end
    end

    class Statement
      def self.parse(map)
        data = Types::Statement.new
        data.messages = (Parsers::MessageList.parse(map['messages']) unless map['messages'].nil?)
        data.response_card = map['responseCard']
        return data
      end
    end

    class MessageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Message.parse(value) unless value.nil?
        end
        data
      end
    end

    class Message
      def self.parse(map)
        data = Types::Message.new
        data.content_type = map['contentType']
        data.content = map['content']
        data.group_number = map['groupNumber']
        return data
      end
    end

    class Prompt
      def self.parse(map)
        data = Types::Prompt.new
        data.messages = (Parsers::MessageList.parse(map['messages']) unless map['messages'].nil?)
        data.max_attempts = map['maxAttempts']
        data.response_card = map['responseCard']
        return data
      end
    end

    class IntentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Intent.parse(value) unless value.nil?
        end
        data
      end
    end

    class Intent
      def self.parse(map)
        data = Types::Intent.new
        data.intent_name = map['intentName']
        data.intent_version = map['intentVersion']
        return data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for PreconditionFailedException
    class PreconditionFailedException
      def self.parse(http_resp)
        data = Types::PreconditionFailedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateIntentVersion
    class CreateIntentVersion
      def self.parse(http_resp)
        data = Types::CreateIntentVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.slots = (Parsers::SlotList.parse(map['slots']) unless map['slots'].nil?)
        data.sample_utterances = (Parsers::IntentUtteranceList.parse(map['sampleUtterances']) unless map['sampleUtterances'].nil?)
        data.confirmation_prompt = (Parsers::Prompt.parse(map['confirmationPrompt']) unless map['confirmationPrompt'].nil?)
        data.rejection_statement = (Parsers::Statement.parse(map['rejectionStatement']) unless map['rejectionStatement'].nil?)
        data.follow_up_prompt = (Parsers::FollowUpPrompt.parse(map['followUpPrompt']) unless map['followUpPrompt'].nil?)
        data.conclusion_statement = (Parsers::Statement.parse(map['conclusionStatement']) unless map['conclusionStatement'].nil?)
        data.dialog_code_hook = (Parsers::CodeHook.parse(map['dialogCodeHook']) unless map['dialogCodeHook'].nil?)
        data.fulfillment_activity = (Parsers::FulfillmentActivity.parse(map['fulfillmentActivity']) unless map['fulfillmentActivity'].nil?)
        data.parent_intent_signature = map['parentIntentSignature']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.checksum = map['checksum']
        data.kendra_configuration = (Parsers::KendraConfiguration.parse(map['kendraConfiguration']) unless map['kendraConfiguration'].nil?)
        data.input_contexts = (Parsers::InputContextList.parse(map['inputContexts']) unless map['inputContexts'].nil?)
        data.output_contexts = (Parsers::OutputContextList.parse(map['outputContexts']) unless map['outputContexts'].nil?)
        data
      end
    end

    class OutputContextList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutputContext.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutputContext
      def self.parse(map)
        data = Types::OutputContext.new
        data.name = map['name']
        data.time_to_live_in_seconds = map['timeToLiveInSeconds']
        data.turns_to_live = map['turnsToLive']
        return data
      end
    end

    class InputContextList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputContext.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputContext
      def self.parse(map)
        data = Types::InputContext.new
        data.name = map['name']
        return data
      end
    end

    class KendraConfiguration
      def self.parse(map)
        data = Types::KendraConfiguration.new
        data.kendra_index = map['kendraIndex']
        data.query_filter_string = map['queryFilterString']
        data.role = map['role']
        return data
      end
    end

    class FulfillmentActivity
      def self.parse(map)
        data = Types::FulfillmentActivity.new
        data.type = map['type']
        data.code_hook = (Parsers::CodeHook.parse(map['codeHook']) unless map['codeHook'].nil?)
        return data
      end
    end

    class CodeHook
      def self.parse(map)
        data = Types::CodeHook.new
        data.uri = map['uri']
        data.message_version = map['messageVersion']
        return data
      end
    end

    class FollowUpPrompt
      def self.parse(map)
        data = Types::FollowUpPrompt.new
        data.prompt = (Parsers::Prompt.parse(map['prompt']) unless map['prompt'].nil?)
        data.rejection_statement = (Parsers::Statement.parse(map['rejectionStatement']) unless map['rejectionStatement'].nil?)
        return data
      end
    end

    class IntentUtteranceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SlotList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Slot.parse(value) unless value.nil?
        end
        data
      end
    end

    class Slot
      def self.parse(map)
        data = Types::Slot.new
        data.name = map['name']
        data.description = map['description']
        data.slot_constraint = map['slotConstraint']
        data.slot_type = map['slotType']
        data.slot_type_version = map['slotTypeVersion']
        data.value_elicitation_prompt = (Parsers::Prompt.parse(map['valueElicitationPrompt']) unless map['valueElicitationPrompt'].nil?)
        data.priority = map['priority']
        data.sample_utterances = (Parsers::SlotUtteranceList.parse(map['sampleUtterances']) unless map['sampleUtterances'].nil?)
        data.response_card = map['responseCard']
        data.obfuscation_setting = map['obfuscationSetting']
        data.default_value_spec = (Parsers::SlotDefaultValueSpec.parse(map['defaultValueSpec']) unless map['defaultValueSpec'].nil?)
        return data
      end
    end

    class SlotDefaultValueSpec
      def self.parse(map)
        data = Types::SlotDefaultValueSpec.new
        data.default_value_list = (Parsers::SlotDefaultValueList.parse(map['defaultValueList']) unless map['defaultValueList'].nil?)
        return data
      end
    end

    class SlotDefaultValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SlotDefaultValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class SlotDefaultValue
      def self.parse(map)
        data = Types::SlotDefaultValue.new
        data.default_value = map['defaultValue']
        return data
      end
    end

    class SlotUtteranceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateSlotTypeVersion
    class CreateSlotTypeVersion
      def self.parse(http_resp)
        data = Types::CreateSlotTypeVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.enumeration_values = (Parsers::EnumerationValues.parse(map['enumerationValues']) unless map['enumerationValues'].nil?)
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.checksum = map['checksum']
        data.value_selection_strategy = map['valueSelectionStrategy']
        data.parent_slot_type_signature = map['parentSlotTypeSignature']
        data.slot_type_configurations = (Parsers::SlotTypeConfigurations.parse(map['slotTypeConfigurations']) unless map['slotTypeConfigurations'].nil?)
        data
      end
    end

    class SlotTypeConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SlotTypeConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class SlotTypeConfiguration
      def self.parse(map)
        data = Types::SlotTypeConfiguration.new
        data.regex_configuration = (Parsers::SlotTypeRegexConfiguration.parse(map['regexConfiguration']) unless map['regexConfiguration'].nil?)
        return data
      end
    end

    class SlotTypeRegexConfiguration
      def self.parse(map)
        data = Types::SlotTypeRegexConfiguration.new
        data.pattern = map['pattern']
        return data
      end
    end

    class EnumerationValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EnumerationValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class EnumerationValue
      def self.parse(map)
        data = Types::EnumerationValue.new
        data.value = map['value']
        data.synonyms = (Parsers::SynonymList.parse(map['synonyms']) unless map['synonyms'].nil?)
        return data
      end
    end

    class SynonymList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DeleteBot
    class DeleteBot
      def self.parse(http_resp)
        data = Types::DeleteBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.reference_type = map['referenceType']
        data.example_reference = (Parsers::ResourceReference.parse(map['exampleReference']) unless map['exampleReference'].nil?)
        data
      end
    end

    class ResourceReference
      def self.parse(map)
        data = Types::ResourceReference.new
        data.name = map['name']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for DeleteBotAlias
    class DeleteBotAlias
      def self.parse(http_resp)
        data = Types::DeleteBotAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteBotChannelAssociation
    class DeleteBotChannelAssociation
      def self.parse(http_resp)
        data = Types::DeleteBotChannelAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteBotVersion
    class DeleteBotVersion
      def self.parse(http_resp)
        data = Types::DeleteBotVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteIntent
    class DeleteIntent
      def self.parse(http_resp)
        data = Types::DeleteIntentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteIntentVersion
    class DeleteIntentVersion
      def self.parse(http_resp)
        data = Types::DeleteIntentVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSlotType
    class DeleteSlotType
      def self.parse(http_resp)
        data = Types::DeleteSlotTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSlotTypeVersion
    class DeleteSlotTypeVersion
      def self.parse(http_resp)
        data = Types::DeleteSlotTypeVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteUtterances
    class DeleteUtterances
      def self.parse(http_resp)
        data = Types::DeleteUtterancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetBot
    class GetBot
      def self.parse(http_resp)
        data = Types::GetBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.intents = (Parsers::IntentList.parse(map['intents']) unless map['intents'].nil?)
        data.enable_model_improvements = map['enableModelImprovements']
        data.nlu_intent_confidence_threshold = Hearth::NumberHelper.deserialize(map['nluIntentConfidenceThreshold'])
        data.clarification_prompt = (Parsers::Prompt.parse(map['clarificationPrompt']) unless map['clarificationPrompt'].nil?)
        data.abort_statement = (Parsers::Statement.parse(map['abortStatement']) unless map['abortStatement'].nil?)
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.idle_session_ttl_in_seconds = map['idleSessionTTLInSeconds']
        data.voice_id = map['voiceId']
        data.checksum = map['checksum']
        data.version = map['version']
        data.locale = map['locale']
        data.child_directed = map['childDirected']
        data.detect_sentiment = map['detectSentiment']
        data
      end
    end

    # Operation Parser for GetBotAlias
    class GetBotAlias
      def self.parse(http_resp)
        data = Types::GetBotAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.bot_version = map['botVersion']
        data.bot_name = map['botName']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.checksum = map['checksum']
        data.conversation_logs = (Parsers::ConversationLogsResponse.parse(map['conversationLogs']) unless map['conversationLogs'].nil?)
        data
      end
    end

    class ConversationLogsResponse
      def self.parse(map)
        data = Types::ConversationLogsResponse.new
        data.log_settings = (Parsers::LogSettingsResponseList.parse(map['logSettings']) unless map['logSettings'].nil?)
        data.iam_role_arn = map['iamRoleArn']
        return data
      end
    end

    class LogSettingsResponseList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LogSettingsResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class LogSettingsResponse
      def self.parse(map)
        data = Types::LogSettingsResponse.new
        data.log_type = map['logType']
        data.destination = map['destination']
        data.kms_key_arn = map['kmsKeyArn']
        data.resource_arn = map['resourceArn']
        data.resource_prefix = map['resourcePrefix']
        return data
      end
    end

    # Operation Parser for GetBotAliases
    class GetBotAliases
      def self.parse(http_resp)
        data = Types::GetBotAliasesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_aliases = (Parsers::BotAliasMetadataList.parse(map['BotAliases']) unless map['BotAliases'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BotAliasMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotAliasMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotAliasMetadata
      def self.parse(map)
        data = Types::BotAliasMetadata.new
        data.name = map['name']
        data.description = map['description']
        data.bot_version = map['botVersion']
        data.bot_name = map['botName']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.checksum = map['checksum']
        data.conversation_logs = (Parsers::ConversationLogsResponse.parse(map['conversationLogs']) unless map['conversationLogs'].nil?)
        return data
      end
    end

    # Operation Parser for GetBotChannelAssociation
    class GetBotChannelAssociation
      def self.parse(http_resp)
        data = Types::GetBotChannelAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.bot_alias = map['botAlias']
        data.bot_name = map['botName']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.type = map['type']
        data.bot_configuration = (Parsers::ChannelConfigurationMap.parse(map['botConfiguration']) unless map['botConfiguration'].nil?)
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data
      end
    end

    class ChannelConfigurationMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetBotChannelAssociations
    class GetBotChannelAssociations
      def self.parse(http_resp)
        data = Types::GetBotChannelAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_channel_associations = (Parsers::BotChannelAssociationList.parse(map['botChannelAssociations']) unless map['botChannelAssociations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BotChannelAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotChannelAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotChannelAssociation
      def self.parse(map)
        data = Types::BotChannelAssociation.new
        data.name = map['name']
        data.description = map['description']
        data.bot_alias = map['botAlias']
        data.bot_name = map['botName']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.type = map['type']
        data.bot_configuration = (Parsers::ChannelConfigurationMap.parse(map['botConfiguration']) unless map['botConfiguration'].nil?)
        data.status = map['status']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    # Operation Parser for GetBotVersions
    class GetBotVersions
      def self.parse(http_resp)
        data = Types::GetBotVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bots = (Parsers::BotMetadataList.parse(map['bots']) unless map['bots'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BotMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotMetadata
      def self.parse(map)
        data = Types::BotMetadata.new
        data.name = map['name']
        data.description = map['description']
        data.status = map['status']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for GetBots
    class GetBots
      def self.parse(http_resp)
        data = Types::GetBotsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bots = (Parsers::BotMetadataList.parse(map['bots']) unless map['bots'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for GetBuiltinIntent
    class GetBuiltinIntent
      def self.parse(http_resp)
        data = Types::GetBuiltinIntentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.signature = map['signature']
        data.supported_locales = (Parsers::LocaleList.parse(map['supportedLocales']) unless map['supportedLocales'].nil?)
        data.slots = (Parsers::BuiltinIntentSlotList.parse(map['slots']) unless map['slots'].nil?)
        data
      end
    end

    class BuiltinIntentSlotList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BuiltinIntentSlot.parse(value) unless value.nil?
        end
        data
      end
    end

    class BuiltinIntentSlot
      def self.parse(map)
        data = Types::BuiltinIntentSlot.new
        data.name = map['name']
        return data
      end
    end

    class LocaleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetBuiltinIntents
    class GetBuiltinIntents
      def self.parse(http_resp)
        data = Types::GetBuiltinIntentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.intents = (Parsers::BuiltinIntentMetadataList.parse(map['intents']) unless map['intents'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BuiltinIntentMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BuiltinIntentMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class BuiltinIntentMetadata
      def self.parse(map)
        data = Types::BuiltinIntentMetadata.new
        data.signature = map['signature']
        data.supported_locales = (Parsers::LocaleList.parse(map['supportedLocales']) unless map['supportedLocales'].nil?)
        return data
      end
    end

    # Operation Parser for GetBuiltinSlotTypes
    class GetBuiltinSlotTypes
      def self.parse(http_resp)
        data = Types::GetBuiltinSlotTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.slot_types = (Parsers::BuiltinSlotTypeMetadataList.parse(map['slotTypes']) unless map['slotTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BuiltinSlotTypeMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BuiltinSlotTypeMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class BuiltinSlotTypeMetadata
      def self.parse(map)
        data = Types::BuiltinSlotTypeMetadata.new
        data.signature = map['signature']
        data.supported_locales = (Parsers::LocaleList.parse(map['supportedLocales']) unless map['supportedLocales'].nil?)
        return data
      end
    end

    # Operation Parser for GetExport
    class GetExport
      def self.parse(http_resp)
        data = Types::GetExportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.version = map['version']
        data.resource_type = map['resourceType']
        data.export_type = map['exportType']
        data.export_status = map['exportStatus']
        data.failure_reason = map['failureReason']
        data.url = map['url']
        data
      end
    end

    # Operation Parser for GetImport
    class GetImport
      def self.parse(http_resp)
        data = Types::GetImportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.resource_type = map['resourceType']
        data.merge_strategy = map['mergeStrategy']
        data.import_id = map['importId']
        data.import_status = map['importStatus']
        data.failure_reason = (Parsers::StringList.parse(map['failureReason']) unless map['failureReason'].nil?)
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetIntent
    class GetIntent
      def self.parse(http_resp)
        data = Types::GetIntentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.slots = (Parsers::SlotList.parse(map['slots']) unless map['slots'].nil?)
        data.sample_utterances = (Parsers::IntentUtteranceList.parse(map['sampleUtterances']) unless map['sampleUtterances'].nil?)
        data.confirmation_prompt = (Parsers::Prompt.parse(map['confirmationPrompt']) unless map['confirmationPrompt'].nil?)
        data.rejection_statement = (Parsers::Statement.parse(map['rejectionStatement']) unless map['rejectionStatement'].nil?)
        data.follow_up_prompt = (Parsers::FollowUpPrompt.parse(map['followUpPrompt']) unless map['followUpPrompt'].nil?)
        data.conclusion_statement = (Parsers::Statement.parse(map['conclusionStatement']) unless map['conclusionStatement'].nil?)
        data.dialog_code_hook = (Parsers::CodeHook.parse(map['dialogCodeHook']) unless map['dialogCodeHook'].nil?)
        data.fulfillment_activity = (Parsers::FulfillmentActivity.parse(map['fulfillmentActivity']) unless map['fulfillmentActivity'].nil?)
        data.parent_intent_signature = map['parentIntentSignature']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.checksum = map['checksum']
        data.kendra_configuration = (Parsers::KendraConfiguration.parse(map['kendraConfiguration']) unless map['kendraConfiguration'].nil?)
        data.input_contexts = (Parsers::InputContextList.parse(map['inputContexts']) unless map['inputContexts'].nil?)
        data.output_contexts = (Parsers::OutputContextList.parse(map['outputContexts']) unless map['outputContexts'].nil?)
        data
      end
    end

    # Operation Parser for GetIntentVersions
    class GetIntentVersions
      def self.parse(http_resp)
        data = Types::GetIntentVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.intents = (Parsers::IntentMetadataList.parse(map['intents']) unless map['intents'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class IntentMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IntentMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class IntentMetadata
      def self.parse(map)
        data = Types::IntentMetadata.new
        data.name = map['name']
        data.description = map['description']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for GetIntents
    class GetIntents
      def self.parse(http_resp)
        data = Types::GetIntentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.intents = (Parsers::IntentMetadataList.parse(map['intents']) unless map['intents'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for GetMigration
    class GetMigration
      def self.parse(http_resp)
        data = Types::GetMigrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.migration_id = map['migrationId']
        data.v1_bot_name = map['v1BotName']
        data.v1_bot_version = map['v1BotVersion']
        data.v1_bot_locale = map['v1BotLocale']
        data.v2_bot_id = map['v2BotId']
        data.v2_bot_role = map['v2BotRole']
        data.migration_status = map['migrationStatus']
        data.migration_strategy = map['migrationStrategy']
        data.migration_timestamp = Time.at(map['migrationTimestamp'].to_i) if map['migrationTimestamp']
        data.alerts = (Parsers::MigrationAlerts.parse(map['alerts']) unless map['alerts'].nil?)
        data
      end
    end

    class MigrationAlerts
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MigrationAlert.parse(value) unless value.nil?
        end
        data
      end
    end

    class MigrationAlert
      def self.parse(map)
        data = Types::MigrationAlert.new
        data.type = map['type']
        data.message = map['message'] || map['Message']
        data.details = (Parsers::MigrationAlertDetails.parse(map['details']) unless map['details'].nil?)
        data.reference_ur_ls = (Parsers::MigrationAlertReferenceURLs.parse(map['referenceURLs']) unless map['referenceURLs'].nil?)
        return data
      end
    end

    class MigrationAlertReferenceURLs
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class MigrationAlertDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetMigrations
    class GetMigrations
      def self.parse(http_resp)
        data = Types::GetMigrationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.migration_summaries = (Parsers::MigrationSummaryList.parse(map['migrationSummaries']) unless map['migrationSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class MigrationSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MigrationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class MigrationSummary
      def self.parse(map)
        data = Types::MigrationSummary.new
        data.migration_id = map['migrationId']
        data.v1_bot_name = map['v1BotName']
        data.v1_bot_version = map['v1BotVersion']
        data.v1_bot_locale = map['v1BotLocale']
        data.v2_bot_id = map['v2BotId']
        data.v2_bot_role = map['v2BotRole']
        data.migration_status = map['migrationStatus']
        data.migration_strategy = map['migrationStrategy']
        data.migration_timestamp = Time.at(map['migrationTimestamp'].to_i) if map['migrationTimestamp']
        return data
      end
    end

    # Operation Parser for GetSlotType
    class GetSlotType
      def self.parse(http_resp)
        data = Types::GetSlotTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.enumeration_values = (Parsers::EnumerationValues.parse(map['enumerationValues']) unless map['enumerationValues'].nil?)
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.checksum = map['checksum']
        data.value_selection_strategy = map['valueSelectionStrategy']
        data.parent_slot_type_signature = map['parentSlotTypeSignature']
        data.slot_type_configurations = (Parsers::SlotTypeConfigurations.parse(map['slotTypeConfigurations']) unless map['slotTypeConfigurations'].nil?)
        data
      end
    end

    # Operation Parser for GetSlotTypeVersions
    class GetSlotTypeVersions
      def self.parse(http_resp)
        data = Types::GetSlotTypeVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.slot_types = (Parsers::SlotTypeMetadataList.parse(map['slotTypes']) unless map['slotTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SlotTypeMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SlotTypeMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class SlotTypeMetadata
      def self.parse(map)
        data = Types::SlotTypeMetadata.new
        data.name = map['name']
        data.description = map['description']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for GetSlotTypes
    class GetSlotTypes
      def self.parse(http_resp)
        data = Types::GetSlotTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.slot_types = (Parsers::SlotTypeMetadataList.parse(map['slotTypes']) unless map['slotTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for GetUtterancesView
    class GetUtterancesView
      def self.parse(http_resp)
        data = Types::GetUtterancesViewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_name = map['botName']
        data.utterances = (Parsers::ListsOfUtterances.parse(map['utterances']) unless map['utterances'].nil?)
        data
      end
    end

    class ListsOfUtterances
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UtteranceList.parse(value) unless value.nil?
        end
        data
      end
    end

    class UtteranceList
      def self.parse(map)
        data = Types::UtteranceList.new
        data.bot_version = map['botVersion']
        data.utterances = (Parsers::ListOfUtterance.parse(map['utterances']) unless map['utterances'].nil?)
        return data
      end
    end

    class ListOfUtterance
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UtteranceData.parse(value) unless value.nil?
        end
        data
      end
    end

    class UtteranceData
      def self.parse(map)
        data = Types::UtteranceData.new
        data.utterance_string = map['utteranceString']
        data.count = map['count']
        data.distinct_users = map['distinctUsers']
        data.first_uttered_date = Time.at(map['firstUtteredDate'].to_i) if map['firstUtteredDate']
        data.last_uttered_date = Time.at(map['lastUtteredDate'].to_i) if map['lastUtteredDate']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for PutBot
    class PutBot
      def self.parse(http_resp)
        data = Types::PutBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.intents = (Parsers::IntentList.parse(map['intents']) unless map['intents'].nil?)
        data.enable_model_improvements = map['enableModelImprovements']
        data.nlu_intent_confidence_threshold = Hearth::NumberHelper.deserialize(map['nluIntentConfidenceThreshold'])
        data.clarification_prompt = (Parsers::Prompt.parse(map['clarificationPrompt']) unless map['clarificationPrompt'].nil?)
        data.abort_statement = (Parsers::Statement.parse(map['abortStatement']) unless map['abortStatement'].nil?)
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.idle_session_ttl_in_seconds = map['idleSessionTTLInSeconds']
        data.voice_id = map['voiceId']
        data.checksum = map['checksum']
        data.version = map['version']
        data.locale = map['locale']
        data.child_directed = map['childDirected']
        data.create_version = map['createVersion']
        data.detect_sentiment = map['detectSentiment']
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for PutBotAlias
    class PutBotAlias
      def self.parse(http_resp)
        data = Types::PutBotAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.bot_version = map['botVersion']
        data.bot_name = map['botName']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.checksum = map['checksum']
        data.conversation_logs = (Parsers::ConversationLogsResponse.parse(map['conversationLogs']) unless map['conversationLogs'].nil?)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for PutIntent
    class PutIntent
      def self.parse(http_resp)
        data = Types::PutIntentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.slots = (Parsers::SlotList.parse(map['slots']) unless map['slots'].nil?)
        data.sample_utterances = (Parsers::IntentUtteranceList.parse(map['sampleUtterances']) unless map['sampleUtterances'].nil?)
        data.confirmation_prompt = (Parsers::Prompt.parse(map['confirmationPrompt']) unless map['confirmationPrompt'].nil?)
        data.rejection_statement = (Parsers::Statement.parse(map['rejectionStatement']) unless map['rejectionStatement'].nil?)
        data.follow_up_prompt = (Parsers::FollowUpPrompt.parse(map['followUpPrompt']) unless map['followUpPrompt'].nil?)
        data.conclusion_statement = (Parsers::Statement.parse(map['conclusionStatement']) unless map['conclusionStatement'].nil?)
        data.dialog_code_hook = (Parsers::CodeHook.parse(map['dialogCodeHook']) unless map['dialogCodeHook'].nil?)
        data.fulfillment_activity = (Parsers::FulfillmentActivity.parse(map['fulfillmentActivity']) unless map['fulfillmentActivity'].nil?)
        data.parent_intent_signature = map['parentIntentSignature']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.checksum = map['checksum']
        data.create_version = map['createVersion']
        data.kendra_configuration = (Parsers::KendraConfiguration.parse(map['kendraConfiguration']) unless map['kendraConfiguration'].nil?)
        data.input_contexts = (Parsers::InputContextList.parse(map['inputContexts']) unless map['inputContexts'].nil?)
        data.output_contexts = (Parsers::OutputContextList.parse(map['outputContexts']) unless map['outputContexts'].nil?)
        data
      end
    end

    # Operation Parser for PutSlotType
    class PutSlotType
      def self.parse(http_resp)
        data = Types::PutSlotTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.enumeration_values = (Parsers::EnumerationValues.parse(map['enumerationValues']) unless map['enumerationValues'].nil?)
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.checksum = map['checksum']
        data.value_selection_strategy = map['valueSelectionStrategy']
        data.create_version = map['createVersion']
        data.parent_slot_type_signature = map['parentSlotTypeSignature']
        data.slot_type_configurations = (Parsers::SlotTypeConfigurations.parse(map['slotTypeConfigurations']) unless map['slotTypeConfigurations'].nil?)
        data
      end
    end

    # Operation Parser for StartImport
    class StartImport
      def self.parse(http_resp)
        data = Types::StartImportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.resource_type = map['resourceType']
        data.merge_strategy = map['mergeStrategy']
        data.import_id = map['importId']
        data.import_status = map['importStatus']
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data
      end
    end

    # Operation Parser for StartMigration
    class StartMigration
      def self.parse(http_resp)
        data = Types::StartMigrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.v1_bot_name = map['v1BotName']
        data.v1_bot_version = map['v1BotVersion']
        data.v1_bot_locale = map['v1BotLocale']
        data.v2_bot_id = map['v2BotId']
        data.v2_bot_role = map['v2BotRole']
        data.migration_id = map['migrationId']
        data.migration_strategy = map['migrationStrategy']
        data.migration_timestamp = Time.at(map['migrationTimestamp'].to_i) if map['migrationTimestamp']
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
  end
end
