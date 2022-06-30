# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LexModelsV2
  module Parsers

    # Operation Parser for BuildBotLocale
    class BuildBotLocale
      def self.parse(http_resp)
        data = Types::BuildBotLocaleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.bot_locale_status = map['botLocaleStatus']
        data.last_build_submitted_date_time = Time.at(map['lastBuildSubmittedDateTime'].to_i) if map['lastBuildSubmittedDateTime']
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

    # Error Parser for PreconditionFailedException
    class PreconditionFailedException
      def self.parse(http_resp)
        data = Types::PreconditionFailedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
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
        data
      end
    end

    # Operation Parser for CreateBot
    class CreateBot
      def self.parse(http_resp)
        data = Types::CreateBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_name = map['botName']
        data.description = map['description']
        data.role_arn = map['roleArn']
        data.data_privacy = (Parsers::DataPrivacy.parse(map['dataPrivacy']) unless map['dataPrivacy'].nil?)
        data.idle_session_ttl_in_seconds = map['idleSessionTTLInSeconds']
        data.bot_status = map['botStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.bot_tags = (Parsers::TagMap.parse(map['botTags']) unless map['botTags'].nil?)
        data.test_bot_alias_tags = (Parsers::TagMap.parse(map['testBotAliasTags']) unless map['testBotAliasTags'].nil?)
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

    class DataPrivacy
      def self.parse(map)
        data = Types::DataPrivacy.new
        data.child_directed = map['childDirected']
        return data
      end
    end

    # Operation Parser for CreateBotAlias
    class CreateBotAlias
      def self.parse(http_resp)
        data = Types::CreateBotAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_alias_id = map['botAliasId']
        data.bot_alias_name = map['botAliasName']
        data.description = map['description']
        data.bot_version = map['botVersion']
        data.bot_alias_locale_settings = (Parsers::BotAliasLocaleSettingsMap.parse(map['botAliasLocaleSettings']) unless map['botAliasLocaleSettings'].nil?)
        data.conversation_log_settings = (Parsers::ConversationLogSettings.parse(map['conversationLogSettings']) unless map['conversationLogSettings'].nil?)
        data.sentiment_analysis_settings = (Parsers::SentimentAnalysisSettings.parse(map['sentimentAnalysisSettings']) unless map['sentimentAnalysisSettings'].nil?)
        data.bot_alias_status = map['botAliasStatus']
        data.bot_id = map['botId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class SentimentAnalysisSettings
      def self.parse(map)
        data = Types::SentimentAnalysisSettings.new
        data.detect_sentiment = map['detectSentiment']
        return data
      end
    end

    class ConversationLogSettings
      def self.parse(map)
        data = Types::ConversationLogSettings.new
        data.text_log_settings = (Parsers::TextLogSettingsList.parse(map['textLogSettings']) unless map['textLogSettings'].nil?)
        data.audio_log_settings = (Parsers::AudioLogSettingsList.parse(map['audioLogSettings']) unless map['audioLogSettings'].nil?)
        return data
      end
    end

    class AudioLogSettingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AudioLogSetting.parse(value) unless value.nil?
        end
        data
      end
    end

    class AudioLogSetting
      def self.parse(map)
        data = Types::AudioLogSetting.new
        data.enabled = map['enabled']
        data.destination = (Parsers::AudioLogDestination.parse(map['destination']) unless map['destination'].nil?)
        return data
      end
    end

    class AudioLogDestination
      def self.parse(map)
        data = Types::AudioLogDestination.new
        data.s3_bucket = (Parsers::S3BucketLogDestination.parse(map['s3Bucket']) unless map['s3Bucket'].nil?)
        return data
      end
    end

    class S3BucketLogDestination
      def self.parse(map)
        data = Types::S3BucketLogDestination.new
        data.kms_key_arn = map['kmsKeyArn']
        data.s3_bucket_arn = map['s3BucketArn']
        data.log_prefix = map['logPrefix']
        return data
      end
    end

    class TextLogSettingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TextLogSetting.parse(value) unless value.nil?
        end
        data
      end
    end

    class TextLogSetting
      def self.parse(map)
        data = Types::TextLogSetting.new
        data.enabled = map['enabled']
        data.destination = (Parsers::TextLogDestination.parse(map['destination']) unless map['destination'].nil?)
        return data
      end
    end

    class TextLogDestination
      def self.parse(map)
        data = Types::TextLogDestination.new
        data.cloud_watch = (Parsers::CloudWatchLogGroupLogDestination.parse(map['cloudWatch']) unless map['cloudWatch'].nil?)
        return data
      end
    end

    class CloudWatchLogGroupLogDestination
      def self.parse(map)
        data = Types::CloudWatchLogGroupLogDestination.new
        data.cloud_watch_log_group_arn = map['cloudWatchLogGroupArn']
        data.log_prefix = map['logPrefix']
        return data
      end
    end

    class BotAliasLocaleSettingsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::BotAliasLocaleSettings.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotAliasLocaleSettings
      def self.parse(map)
        data = Types::BotAliasLocaleSettings.new
        data.enabled = map['enabled']
        data.code_hook_specification = (Parsers::CodeHookSpecification.parse(map['codeHookSpecification']) unless map['codeHookSpecification'].nil?)
        return data
      end
    end

    class CodeHookSpecification
      def self.parse(map)
        data = Types::CodeHookSpecification.new
        data.lambda_code_hook = (Parsers::LambdaCodeHook.parse(map['lambdaCodeHook']) unless map['lambdaCodeHook'].nil?)
        return data
      end
    end

    class LambdaCodeHook
      def self.parse(map)
        data = Types::LambdaCodeHook.new
        data.lambda_arn = map['lambdaARN']
        data.code_hook_interface_version = map['codeHookInterfaceVersion']
        return data
      end
    end

    # Operation Parser for CreateBotLocale
    class CreateBotLocale
      def self.parse(http_resp)
        data = Types::CreateBotLocaleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_name = map['localeName']
        data.locale_id = map['localeId']
        data.description = map['description']
        data.nlu_intent_confidence_threshold = Hearth::NumberHelper.deserialize(map['nluIntentConfidenceThreshold'])
        data.voice_settings = (Parsers::VoiceSettings.parse(map['voiceSettings']) unless map['voiceSettings'].nil?)
        data.bot_locale_status = map['botLocaleStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data
      end
    end

    class VoiceSettings
      def self.parse(map)
        data = Types::VoiceSettings.new
        data.voice_id = map['voiceId']
        data.engine = map['engine']
        return data
      end
    end

    # Operation Parser for CreateBotVersion
    class CreateBotVersion
      def self.parse(http_resp)
        data = Types::CreateBotVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.description = map['description']
        data.bot_version = map['botVersion']
        data.bot_version_locale_specification = (Parsers::BotVersionLocaleSpecification.parse(map['botVersionLocaleSpecification']) unless map['botVersionLocaleSpecification'].nil?)
        data.bot_status = map['botStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data
      end
    end

    class BotVersionLocaleSpecification
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::BotVersionLocaleDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotVersionLocaleDetails
      def self.parse(map)
        data = Types::BotVersionLocaleDetails.new
        data.source_bot_version = map['sourceBotVersion']
        return data
      end
    end

    # Operation Parser for CreateExport
    class CreateExport
      def self.parse(http_resp)
        data = Types::CreateExportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.export_id = map['exportId']
        data.resource_specification = (Parsers::ExportResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.file_format = map['fileFormat']
        data.export_status = map['exportStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data
      end
    end

    class ExportResourceSpecification
      def self.parse(map)
        data = Types::ExportResourceSpecification.new
        data.bot_export_specification = (Parsers::BotExportSpecification.parse(map['botExportSpecification']) unless map['botExportSpecification'].nil?)
        data.bot_locale_export_specification = (Parsers::BotLocaleExportSpecification.parse(map['botLocaleExportSpecification']) unless map['botLocaleExportSpecification'].nil?)
        data.custom_vocabulary_export_specification = (Parsers::CustomVocabularyExportSpecification.parse(map['customVocabularyExportSpecification']) unless map['customVocabularyExportSpecification'].nil?)
        return data
      end
    end

    class CustomVocabularyExportSpecification
      def self.parse(map)
        data = Types::CustomVocabularyExportSpecification.new
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        return data
      end
    end

    class BotLocaleExportSpecification
      def self.parse(map)
        data = Types::BotLocaleExportSpecification.new
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        return data
      end
    end

    class BotExportSpecification
      def self.parse(map)
        data = Types::BotExportSpecification.new
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateIntent
    class CreateIntent
      def self.parse(http_resp)
        data = Types::CreateIntentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.intent_id = map['intentId']
        data.intent_name = map['intentName']
        data.description = map['description']
        data.parent_intent_signature = map['parentIntentSignature']
        data.sample_utterances = (Parsers::SampleUtterancesList.parse(map['sampleUtterances']) unless map['sampleUtterances'].nil?)
        data.dialog_code_hook = (Parsers::DialogCodeHookSettings.parse(map['dialogCodeHook']) unless map['dialogCodeHook'].nil?)
        data.fulfillment_code_hook = (Parsers::FulfillmentCodeHookSettings.parse(map['fulfillmentCodeHook']) unless map['fulfillmentCodeHook'].nil?)
        data.intent_confirmation_setting = (Parsers::IntentConfirmationSetting.parse(map['intentConfirmationSetting']) unless map['intentConfirmationSetting'].nil?)
        data.intent_closing_setting = (Parsers::IntentClosingSetting.parse(map['intentClosingSetting']) unless map['intentClosingSetting'].nil?)
        data.input_contexts = (Parsers::InputContextsList.parse(map['inputContexts']) unless map['inputContexts'].nil?)
        data.output_contexts = (Parsers::OutputContextsList.parse(map['outputContexts']) unless map['outputContexts'].nil?)
        data.kendra_configuration = (Parsers::KendraConfiguration.parse(map['kendraConfiguration']) unless map['kendraConfiguration'].nil?)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data
      end
    end

    class KendraConfiguration
      def self.parse(map)
        data = Types::KendraConfiguration.new
        data.kendra_index = map['kendraIndex']
        data.query_filter_string_enabled = map['queryFilterStringEnabled']
        data.query_filter_string = map['queryFilterString']
        return data
      end
    end

    class OutputContextsList
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

    class InputContextsList
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

    class IntentClosingSetting
      def self.parse(map)
        data = Types::IntentClosingSetting.new
        data.closing_response = (Parsers::ResponseSpecification.parse(map['closingResponse']) unless map['closingResponse'].nil?)
        data.active = map['active']
        return data
      end
    end

    class ResponseSpecification
      def self.parse(map)
        data = Types::ResponseSpecification.new
        data.message_groups = (Parsers::MessageGroupsList.parse(map['messageGroups']) unless map['messageGroups'].nil?)
        data.allow_interrupt = map['allowInterrupt']
        return data
      end
    end

    class MessageGroupsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MessageGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class MessageGroup
      def self.parse(map)
        data = Types::MessageGroup.new
        data.message = (Parsers::Message.parse(map['message'] || map['Message']) unless map['message'] || map['Message'].nil?)
        data.variations = (Parsers::MessageVariationsList.parse(map['variations']) unless map['variations'].nil?)
        return data
      end
    end

    class MessageVariationsList
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
        data.plain_text_message = (Parsers::PlainTextMessage.parse(map['plainTextMessage']) unless map['plainTextMessage'].nil?)
        data.custom_payload = (Parsers::CustomPayload.parse(map['customPayload']) unless map['customPayload'].nil?)
        data.ssml_message = (Parsers::SSMLMessage.parse(map['ssmlMessage']) unless map['ssmlMessage'].nil?)
        data.image_response_card = (Parsers::ImageResponseCard.parse(map['imageResponseCard']) unless map['imageResponseCard'].nil?)
        return data
      end
    end

    class ImageResponseCard
      def self.parse(map)
        data = Types::ImageResponseCard.new
        data.title = map['title']
        data.subtitle = map['subtitle']
        data.image_url = map['imageUrl']
        data.buttons = (Parsers::ButtonsList.parse(map['buttons']) unless map['buttons'].nil?)
        return data
      end
    end

    class ButtonsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Button.parse(value) unless value.nil?
        end
        data
      end
    end

    class Button
      def self.parse(map)
        data = Types::Button.new
        data.text = map['text']
        data.value = map['value']
        return data
      end
    end

    class SSMLMessage
      def self.parse(map)
        data = Types::SSMLMessage.new
        data.value = map['value']
        return data
      end
    end

    class CustomPayload
      def self.parse(map)
        data = Types::CustomPayload.new
        data.value = map['value']
        return data
      end
    end

    class PlainTextMessage
      def self.parse(map)
        data = Types::PlainTextMessage.new
        data.value = map['value']
        return data
      end
    end

    class IntentConfirmationSetting
      def self.parse(map)
        data = Types::IntentConfirmationSetting.new
        data.prompt_specification = (Parsers::PromptSpecification.parse(map['promptSpecification']) unless map['promptSpecification'].nil?)
        data.declination_response = (Parsers::ResponseSpecification.parse(map['declinationResponse']) unless map['declinationResponse'].nil?)
        data.active = map['active']
        return data
      end
    end

    class PromptSpecification
      def self.parse(map)
        data = Types::PromptSpecification.new
        data.message_groups = (Parsers::MessageGroupsList.parse(map['messageGroups']) unless map['messageGroups'].nil?)
        data.max_retries = map['maxRetries']
        data.allow_interrupt = map['allowInterrupt']
        return data
      end
    end

    class FulfillmentCodeHookSettings
      def self.parse(map)
        data = Types::FulfillmentCodeHookSettings.new
        data.enabled = map['enabled']
        data.post_fulfillment_status_specification = (Parsers::PostFulfillmentStatusSpecification.parse(map['postFulfillmentStatusSpecification']) unless map['postFulfillmentStatusSpecification'].nil?)
        data.fulfillment_updates_specification = (Parsers::FulfillmentUpdatesSpecification.parse(map['fulfillmentUpdatesSpecification']) unless map['fulfillmentUpdatesSpecification'].nil?)
        return data
      end
    end

    class FulfillmentUpdatesSpecification
      def self.parse(map)
        data = Types::FulfillmentUpdatesSpecification.new
        data.active = map['active']
        data.start_response = (Parsers::FulfillmentStartResponseSpecification.parse(map['startResponse']) unless map['startResponse'].nil?)
        data.update_response = (Parsers::FulfillmentUpdateResponseSpecification.parse(map['updateResponse']) unless map['updateResponse'].nil?)
        data.timeout_in_seconds = map['timeoutInSeconds']
        return data
      end
    end

    class FulfillmentUpdateResponseSpecification
      def self.parse(map)
        data = Types::FulfillmentUpdateResponseSpecification.new
        data.frequency_in_seconds = map['frequencyInSeconds']
        data.message_groups = (Parsers::MessageGroupsList.parse(map['messageGroups']) unless map['messageGroups'].nil?)
        data.allow_interrupt = map['allowInterrupt']
        return data
      end
    end

    class FulfillmentStartResponseSpecification
      def self.parse(map)
        data = Types::FulfillmentStartResponseSpecification.new
        data.delay_in_seconds = map['delayInSeconds']
        data.message_groups = (Parsers::MessageGroupsList.parse(map['messageGroups']) unless map['messageGroups'].nil?)
        data.allow_interrupt = map['allowInterrupt']
        return data
      end
    end

    class PostFulfillmentStatusSpecification
      def self.parse(map)
        data = Types::PostFulfillmentStatusSpecification.new
        data.success_response = (Parsers::ResponseSpecification.parse(map['successResponse']) unless map['successResponse'].nil?)
        data.failure_response = (Parsers::ResponseSpecification.parse(map['failureResponse']) unless map['failureResponse'].nil?)
        data.timeout_response = (Parsers::ResponseSpecification.parse(map['timeoutResponse']) unless map['timeoutResponse'].nil?)
        return data
      end
    end

    class DialogCodeHookSettings
      def self.parse(map)
        data = Types::DialogCodeHookSettings.new
        data.enabled = map['enabled']
        return data
      end
    end

    class SampleUtterancesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SampleUtterance.parse(value) unless value.nil?
        end
        data
      end
    end

    class SampleUtterance
      def self.parse(map)
        data = Types::SampleUtterance.new
        data.utterance = map['utterance']
        return data
      end
    end

    # Operation Parser for CreateResourcePolicy
    class CreateResourcePolicy
      def self.parse(http_resp)
        data = Types::CreateResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_arn = map['resourceArn']
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for CreateResourcePolicyStatement
    class CreateResourcePolicyStatement
      def self.parse(http_resp)
        data = Types::CreateResourcePolicyStatementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_arn = map['resourceArn']
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for CreateSlot
    class CreateSlot
      def self.parse(http_resp)
        data = Types::CreateSlotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.slot_id = map['slotId']
        data.slot_name = map['slotName']
        data.description = map['description']
        data.slot_type_id = map['slotTypeId']
        data.value_elicitation_setting = (Parsers::SlotValueElicitationSetting.parse(map['valueElicitationSetting']) unless map['valueElicitationSetting'].nil?)
        data.obfuscation_setting = (Parsers::ObfuscationSetting.parse(map['obfuscationSetting']) unless map['obfuscationSetting'].nil?)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.intent_id = map['intentId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.multiple_values_setting = (Parsers::MultipleValuesSetting.parse(map['multipleValuesSetting']) unless map['multipleValuesSetting'].nil?)
        data
      end
    end

    class MultipleValuesSetting
      def self.parse(map)
        data = Types::MultipleValuesSetting.new
        data.allow_multiple_values = map['allowMultipleValues']
        return data
      end
    end

    class ObfuscationSetting
      def self.parse(map)
        data = Types::ObfuscationSetting.new
        data.obfuscation_setting_type = map['obfuscationSettingType']
        return data
      end
    end

    class SlotValueElicitationSetting
      def self.parse(map)
        data = Types::SlotValueElicitationSetting.new
        data.default_value_specification = (Parsers::SlotDefaultValueSpecification.parse(map['defaultValueSpecification']) unless map['defaultValueSpecification'].nil?)
        data.slot_constraint = map['slotConstraint']
        data.prompt_specification = (Parsers::PromptSpecification.parse(map['promptSpecification']) unless map['promptSpecification'].nil?)
        data.sample_utterances = (Parsers::SampleUtterancesList.parse(map['sampleUtterances']) unless map['sampleUtterances'].nil?)
        data.wait_and_continue_specification = (Parsers::WaitAndContinueSpecification.parse(map['waitAndContinueSpecification']) unless map['waitAndContinueSpecification'].nil?)
        return data
      end
    end

    class WaitAndContinueSpecification
      def self.parse(map)
        data = Types::WaitAndContinueSpecification.new
        data.waiting_response = (Parsers::ResponseSpecification.parse(map['waitingResponse']) unless map['waitingResponse'].nil?)
        data.continue_response = (Parsers::ResponseSpecification.parse(map['continueResponse']) unless map['continueResponse'].nil?)
        data.still_waiting_response = (Parsers::StillWaitingResponseSpecification.parse(map['stillWaitingResponse']) unless map['stillWaitingResponse'].nil?)
        data.active = map['active']
        return data
      end
    end

    class StillWaitingResponseSpecification
      def self.parse(map)
        data = Types::StillWaitingResponseSpecification.new
        data.message_groups = (Parsers::MessageGroupsList.parse(map['messageGroups']) unless map['messageGroups'].nil?)
        data.frequency_in_seconds = map['frequencyInSeconds']
        data.timeout_in_seconds = map['timeoutInSeconds']
        data.allow_interrupt = map['allowInterrupt']
        return data
      end
    end

    class SlotDefaultValueSpecification
      def self.parse(map)
        data = Types::SlotDefaultValueSpecification.new
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

    # Operation Parser for CreateSlotType
    class CreateSlotType
      def self.parse(http_resp)
        data = Types::CreateSlotTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.slot_type_id = map['slotTypeId']
        data.slot_type_name = map['slotTypeName']
        data.description = map['description']
        data.slot_type_values = (Parsers::SlotTypeValues.parse(map['slotTypeValues']) unless map['slotTypeValues'].nil?)
        data.value_selection_setting = (Parsers::SlotValueSelectionSetting.parse(map['valueSelectionSetting']) unless map['valueSelectionSetting'].nil?)
        data.parent_slot_type_signature = map['parentSlotTypeSignature']
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.external_source_setting = (Parsers::ExternalSourceSetting.parse(map['externalSourceSetting']) unless map['externalSourceSetting'].nil?)
        data
      end
    end

    class ExternalSourceSetting
      def self.parse(map)
        data = Types::ExternalSourceSetting.new
        data.grammar_slot_type_setting = (Parsers::GrammarSlotTypeSetting.parse(map['grammarSlotTypeSetting']) unless map['grammarSlotTypeSetting'].nil?)
        return data
      end
    end

    class GrammarSlotTypeSetting
      def self.parse(map)
        data = Types::GrammarSlotTypeSetting.new
        data.source = (Parsers::GrammarSlotTypeSource.parse(map['source']) unless map['source'].nil?)
        return data
      end
    end

    class GrammarSlotTypeSource
      def self.parse(map)
        data = Types::GrammarSlotTypeSource.new
        data.s3_bucket_name = map['s3BucketName']
        data.s3_object_key = map['s3ObjectKey']
        data.kms_key_arn = map['kmsKeyArn']
        return data
      end
    end

    class SlotValueSelectionSetting
      def self.parse(map)
        data = Types::SlotValueSelectionSetting.new
        data.resolution_strategy = map['resolutionStrategy']
        data.regex_filter = (Parsers::SlotValueRegexFilter.parse(map['regexFilter']) unless map['regexFilter'].nil?)
        data.advanced_recognition_setting = (Parsers::AdvancedRecognitionSetting.parse(map['advancedRecognitionSetting']) unless map['advancedRecognitionSetting'].nil?)
        return data
      end
    end

    class AdvancedRecognitionSetting
      def self.parse(map)
        data = Types::AdvancedRecognitionSetting.new
        data.audio_recognition_strategy = map['audioRecognitionStrategy']
        return data
      end
    end

    class SlotValueRegexFilter
      def self.parse(map)
        data = Types::SlotValueRegexFilter.new
        data.pattern = map['pattern']
        return data
      end
    end

    class SlotTypeValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SlotTypeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class SlotTypeValue
      def self.parse(map)
        data = Types::SlotTypeValue.new
        data.sample_value = (Parsers::SampleValue.parse(map['sampleValue']) unless map['sampleValue'].nil?)
        data.synonyms = (Parsers::SynonymList.parse(map['synonyms']) unless map['synonyms'].nil?)
        return data
      end
    end

    class SynonymList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SampleValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class SampleValue
      def self.parse(map)
        data = Types::SampleValue.new
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for CreateUploadUrl
    class CreateUploadUrl
      def self.parse(http_resp)
        data = Types::CreateUploadUrlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.import_id = map['importId']
        data.upload_url = map['uploadUrl']
        data
      end
    end

    # Operation Parser for DeleteBot
    class DeleteBot
      def self.parse(http_resp)
        data = Types::DeleteBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_status = map['botStatus']
        data
      end
    end

    # Operation Parser for DeleteBotAlias
    class DeleteBotAlias
      def self.parse(http_resp)
        data = Types::DeleteBotAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_alias_id = map['botAliasId']
        data.bot_id = map['botId']
        data.bot_alias_status = map['botAliasStatus']
        data
      end
    end

    # Operation Parser for DeleteBotLocale
    class DeleteBotLocale
      def self.parse(http_resp)
        data = Types::DeleteBotLocaleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.bot_locale_status = map['botLocaleStatus']
        data
      end
    end

    # Operation Parser for DeleteBotVersion
    class DeleteBotVersion
      def self.parse(http_resp)
        data = Types::DeleteBotVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.bot_status = map['botStatus']
        data
      end
    end

    # Operation Parser for DeleteCustomVocabulary
    class DeleteCustomVocabulary
      def self.parse(http_resp)
        data = Types::DeleteCustomVocabularyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.custom_vocabulary_status = map['customVocabularyStatus']
        data
      end
    end

    # Operation Parser for DeleteExport
    class DeleteExport
      def self.parse(http_resp)
        data = Types::DeleteExportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.export_id = map['exportId']
        data.export_status = map['exportStatus']
        data
      end
    end

    # Operation Parser for DeleteImport
    class DeleteImport
      def self.parse(http_resp)
        data = Types::DeleteImportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.import_id = map['importId']
        data.import_status = map['importStatus']
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

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_arn = map['resourceArn']
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for DeleteResourcePolicyStatement
    class DeleteResourcePolicyStatement
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyStatementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_arn = map['resourceArn']
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for DeleteSlot
    class DeleteSlot
      def self.parse(http_resp)
        data = Types::DeleteSlotOutput.new
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

    # Operation Parser for DeleteUtterances
    class DeleteUtterances
      def self.parse(http_resp)
        data = Types::DeleteUtterancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeBot
    class DescribeBot
      def self.parse(http_resp)
        data = Types::DescribeBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_name = map['botName']
        data.description = map['description']
        data.role_arn = map['roleArn']
        data.data_privacy = (Parsers::DataPrivacy.parse(map['dataPrivacy']) unless map['dataPrivacy'].nil?)
        data.idle_session_ttl_in_seconds = map['idleSessionTTLInSeconds']
        data.bot_status = map['botStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    # Operation Parser for DescribeBotAlias
    class DescribeBotAlias
      def self.parse(http_resp)
        data = Types::DescribeBotAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_alias_id = map['botAliasId']
        data.bot_alias_name = map['botAliasName']
        data.description = map['description']
        data.bot_version = map['botVersion']
        data.bot_alias_locale_settings = (Parsers::BotAliasLocaleSettingsMap.parse(map['botAliasLocaleSettings']) unless map['botAliasLocaleSettings'].nil?)
        data.conversation_log_settings = (Parsers::ConversationLogSettings.parse(map['conversationLogSettings']) unless map['conversationLogSettings'].nil?)
        data.sentiment_analysis_settings = (Parsers::SentimentAnalysisSettings.parse(map['sentimentAnalysisSettings']) unless map['sentimentAnalysisSettings'].nil?)
        data.bot_alias_history_events = (Parsers::BotAliasHistoryEventsList.parse(map['botAliasHistoryEvents']) unless map['botAliasHistoryEvents'].nil?)
        data.bot_alias_status = map['botAliasStatus']
        data.bot_id = map['botId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    class BotAliasHistoryEventsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotAliasHistoryEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotAliasHistoryEvent
      def self.parse(map)
        data = Types::BotAliasHistoryEvent.new
        data.bot_version = map['botVersion']
        data.start_date = Time.at(map['startDate'].to_i) if map['startDate']
        data.end_date = Time.at(map['endDate'].to_i) if map['endDate']
        return data
      end
    end

    # Operation Parser for DescribeBotLocale
    class DescribeBotLocale
      def self.parse(http_resp)
        data = Types::DescribeBotLocaleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.locale_name = map['localeName']
        data.description = map['description']
        data.nlu_intent_confidence_threshold = Hearth::NumberHelper.deserialize(map['nluIntentConfidenceThreshold'])
        data.voice_settings = (Parsers::VoiceSettings.parse(map['voiceSettings']) unless map['voiceSettings'].nil?)
        data.intents_count = map['intentsCount']
        data.slot_types_count = map['slotTypesCount']
        data.bot_locale_status = map['botLocaleStatus']
        data.failure_reasons = (Parsers::FailureReasons.parse(map['failureReasons']) unless map['failureReasons'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.last_build_submitted_date_time = Time.at(map['lastBuildSubmittedDateTime'].to_i) if map['lastBuildSubmittedDateTime']
        data.bot_locale_history_events = (Parsers::BotLocaleHistoryEventsList.parse(map['botLocaleHistoryEvents']) unless map['botLocaleHistoryEvents'].nil?)
        data.recommended_actions = (Parsers::RecommendedActions.parse(map['recommendedActions']) unless map['recommendedActions'].nil?)
        data
      end
    end

    class RecommendedActions
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class BotLocaleHistoryEventsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotLocaleHistoryEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotLocaleHistoryEvent
      def self.parse(map)
        data = Types::BotLocaleHistoryEvent.new
        data.event = map['event']
        data.event_date = Time.at(map['eventDate'].to_i) if map['eventDate']
        return data
      end
    end

    class FailureReasons
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeBotRecommendation
    class DescribeBotRecommendation
      def self.parse(http_resp)
        data = Types::DescribeBotRecommendationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.bot_recommendation_status = map['botRecommendationStatus']
        data.bot_recommendation_id = map['botRecommendationId']
        data.failure_reasons = (Parsers::FailureReasons.parse(map['failureReasons']) unless map['failureReasons'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.transcript_source_setting = (Parsers::TranscriptSourceSetting.parse(map['transcriptSourceSetting']) unless map['transcriptSourceSetting'].nil?)
        data.encryption_setting = (Parsers::EncryptionSetting.parse(map['encryptionSetting']) unless map['encryptionSetting'].nil?)
        data.bot_recommendation_results = (Parsers::BotRecommendationResults.parse(map['botRecommendationResults']) unless map['botRecommendationResults'].nil?)
        data
      end
    end

    class BotRecommendationResults
      def self.parse(map)
        data = Types::BotRecommendationResults.new
        data.bot_locale_export_url = map['botLocaleExportUrl']
        data.associated_transcripts_url = map['associatedTranscriptsUrl']
        data.statistics = (Parsers::BotRecommendationResultStatistics.parse(map['statistics']) unless map['statistics'].nil?)
        return data
      end
    end

    class BotRecommendationResultStatistics
      def self.parse(map)
        data = Types::BotRecommendationResultStatistics.new
        data.intents = (Parsers::IntentStatistics.parse(map['intents']) unless map['intents'].nil?)
        data.slot_types = (Parsers::SlotTypeStatistics.parse(map['slotTypes']) unless map['slotTypes'].nil?)
        return data
      end
    end

    class SlotTypeStatistics
      def self.parse(map)
        data = Types::SlotTypeStatistics.new
        data.discovered_slot_type_count = map['discoveredSlotTypeCount']
        return data
      end
    end

    class IntentStatistics
      def self.parse(map)
        data = Types::IntentStatistics.new
        data.discovered_intent_count = map['discoveredIntentCount']
        return data
      end
    end

    class EncryptionSetting
      def self.parse(map)
        data = Types::EncryptionSetting.new
        data.kms_key_arn = map['kmsKeyArn']
        data.bot_locale_export_password = map['botLocaleExportPassword']
        data.associated_transcripts_password = map['associatedTranscriptsPassword']
        return data
      end
    end

    class TranscriptSourceSetting
      def self.parse(map)
        data = Types::TranscriptSourceSetting.new
        data.s3_bucket_transcript_source = (Parsers::S3BucketTranscriptSource.parse(map['s3BucketTranscriptSource']) unless map['s3BucketTranscriptSource'].nil?)
        return data
      end
    end

    class S3BucketTranscriptSource
      def self.parse(map)
        data = Types::S3BucketTranscriptSource.new
        data.s3_bucket_name = map['s3BucketName']
        data.path_format = (Parsers::PathFormat.parse(map['pathFormat']) unless map['pathFormat'].nil?)
        data.transcript_format = map['transcriptFormat']
        data.transcript_filter = (Parsers::TranscriptFilter.parse(map['transcriptFilter']) unless map['transcriptFilter'].nil?)
        data.kms_key_arn = map['kmsKeyArn']
        return data
      end
    end

    class TranscriptFilter
      def self.parse(map)
        data = Types::TranscriptFilter.new
        data.lex_transcript_filter = (Parsers::LexTranscriptFilter.parse(map['lexTranscriptFilter']) unless map['lexTranscriptFilter'].nil?)
        return data
      end
    end

    class LexTranscriptFilter
      def self.parse(map)
        data = Types::LexTranscriptFilter.new
        data.date_range_filter = (Parsers::DateRangeFilter.parse(map['dateRangeFilter']) unless map['dateRangeFilter'].nil?)
        return data
      end
    end

    class DateRangeFilter
      def self.parse(map)
        data = Types::DateRangeFilter.new
        data.start_date_time = Time.at(map['startDateTime'].to_i) if map['startDateTime']
        data.end_date_time = Time.at(map['endDateTime'].to_i) if map['endDateTime']
        return data
      end
    end

    class PathFormat
      def self.parse(map)
        data = Types::PathFormat.new
        data.object_prefixes = (Parsers::ObjectPrefixes.parse(map['objectPrefixes']) unless map['objectPrefixes'].nil?)
        return data
      end
    end

    class ObjectPrefixes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeBotVersion
    class DescribeBotVersion
      def self.parse(http_resp)
        data = Types::DescribeBotVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_name = map['botName']
        data.bot_version = map['botVersion']
        data.description = map['description']
        data.role_arn = map['roleArn']
        data.data_privacy = (Parsers::DataPrivacy.parse(map['dataPrivacy']) unless map['dataPrivacy'].nil?)
        data.idle_session_ttl_in_seconds = map['idleSessionTTLInSeconds']
        data.bot_status = map['botStatus']
        data.failure_reasons = (Parsers::FailureReasons.parse(map['failureReasons']) unless map['failureReasons'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data
      end
    end

    # Operation Parser for DescribeCustomVocabularyMetadata
    class DescribeCustomVocabularyMetadata
      def self.parse(http_resp)
        data = Types::DescribeCustomVocabularyMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.custom_vocabulary_status = map['customVocabularyStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    # Operation Parser for DescribeExport
    class DescribeExport
      def self.parse(http_resp)
        data = Types::DescribeExportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.export_id = map['exportId']
        data.resource_specification = (Parsers::ExportResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.file_format = map['fileFormat']
        data.export_status = map['exportStatus']
        data.failure_reasons = (Parsers::FailureReasons.parse(map['failureReasons']) unless map['failureReasons'].nil?)
        data.download_url = map['downloadUrl']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    # Operation Parser for DescribeImport
    class DescribeImport
      def self.parse(http_resp)
        data = Types::DescribeImportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.import_id = map['importId']
        data.resource_specification = (Parsers::ImportResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.imported_resource_id = map['importedResourceId']
        data.imported_resource_name = map['importedResourceName']
        data.merge_strategy = map['mergeStrategy']
        data.import_status = map['importStatus']
        data.failure_reasons = (Parsers::FailureReasons.parse(map['failureReasons']) unless map['failureReasons'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    class ImportResourceSpecification
      def self.parse(map)
        data = Types::ImportResourceSpecification.new
        data.bot_import_specification = (Parsers::BotImportSpecification.parse(map['botImportSpecification']) unless map['botImportSpecification'].nil?)
        data.bot_locale_import_specification = (Parsers::BotLocaleImportSpecification.parse(map['botLocaleImportSpecification']) unless map['botLocaleImportSpecification'].nil?)
        data.custom_vocabulary_import_specification = (Parsers::CustomVocabularyImportSpecification.parse(map['customVocabularyImportSpecification']) unless map['customVocabularyImportSpecification'].nil?)
        return data
      end
    end

    class CustomVocabularyImportSpecification
      def self.parse(map)
        data = Types::CustomVocabularyImportSpecification.new
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        return data
      end
    end

    class BotLocaleImportSpecification
      def self.parse(map)
        data = Types::BotLocaleImportSpecification.new
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.nlu_intent_confidence_threshold = Hearth::NumberHelper.deserialize(map['nluIntentConfidenceThreshold'])
        data.voice_settings = (Parsers::VoiceSettings.parse(map['voiceSettings']) unless map['voiceSettings'].nil?)
        return data
      end
    end

    class BotImportSpecification
      def self.parse(map)
        data = Types::BotImportSpecification.new
        data.bot_name = map['botName']
        data.role_arn = map['roleArn']
        data.data_privacy = (Parsers::DataPrivacy.parse(map['dataPrivacy']) unless map['dataPrivacy'].nil?)
        data.idle_session_ttl_in_seconds = map['idleSessionTTLInSeconds']
        data.bot_tags = (Parsers::TagMap.parse(map['botTags']) unless map['botTags'].nil?)
        data.test_bot_alias_tags = (Parsers::TagMap.parse(map['testBotAliasTags']) unless map['testBotAliasTags'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeIntent
    class DescribeIntent
      def self.parse(http_resp)
        data = Types::DescribeIntentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.intent_id = map['intentId']
        data.intent_name = map['intentName']
        data.description = map['description']
        data.parent_intent_signature = map['parentIntentSignature']
        data.sample_utterances = (Parsers::SampleUtterancesList.parse(map['sampleUtterances']) unless map['sampleUtterances'].nil?)
        data.dialog_code_hook = (Parsers::DialogCodeHookSettings.parse(map['dialogCodeHook']) unless map['dialogCodeHook'].nil?)
        data.fulfillment_code_hook = (Parsers::FulfillmentCodeHookSettings.parse(map['fulfillmentCodeHook']) unless map['fulfillmentCodeHook'].nil?)
        data.slot_priorities = (Parsers::SlotPrioritiesList.parse(map['slotPriorities']) unless map['slotPriorities'].nil?)
        data.intent_confirmation_setting = (Parsers::IntentConfirmationSetting.parse(map['intentConfirmationSetting']) unless map['intentConfirmationSetting'].nil?)
        data.intent_closing_setting = (Parsers::IntentClosingSetting.parse(map['intentClosingSetting']) unless map['intentClosingSetting'].nil?)
        data.input_contexts = (Parsers::InputContextsList.parse(map['inputContexts']) unless map['inputContexts'].nil?)
        data.output_contexts = (Parsers::OutputContextsList.parse(map['outputContexts']) unless map['outputContexts'].nil?)
        data.kendra_configuration = (Parsers::KendraConfiguration.parse(map['kendraConfiguration']) unless map['kendraConfiguration'].nil?)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    class SlotPrioritiesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SlotPriority.parse(value) unless value.nil?
        end
        data
      end
    end

    class SlotPriority
      def self.parse(map)
        data = Types::SlotPriority.new
        data.priority = map['priority']
        data.slot_id = map['slotId']
        return data
      end
    end

    # Operation Parser for DescribeResourcePolicy
    class DescribeResourcePolicy
      def self.parse(http_resp)
        data = Types::DescribeResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_arn = map['resourceArn']
        data.policy = map['policy']
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for DescribeSlot
    class DescribeSlot
      def self.parse(http_resp)
        data = Types::DescribeSlotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.slot_id = map['slotId']
        data.slot_name = map['slotName']
        data.description = map['description']
        data.slot_type_id = map['slotTypeId']
        data.value_elicitation_setting = (Parsers::SlotValueElicitationSetting.parse(map['valueElicitationSetting']) unless map['valueElicitationSetting'].nil?)
        data.obfuscation_setting = (Parsers::ObfuscationSetting.parse(map['obfuscationSetting']) unless map['obfuscationSetting'].nil?)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.intent_id = map['intentId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.multiple_values_setting = (Parsers::MultipleValuesSetting.parse(map['multipleValuesSetting']) unless map['multipleValuesSetting'].nil?)
        data
      end
    end

    # Operation Parser for DescribeSlotType
    class DescribeSlotType
      def self.parse(http_resp)
        data = Types::DescribeSlotTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.slot_type_id = map['slotTypeId']
        data.slot_type_name = map['slotTypeName']
        data.description = map['description']
        data.slot_type_values = (Parsers::SlotTypeValues.parse(map['slotTypeValues']) unless map['slotTypeValues'].nil?)
        data.value_selection_setting = (Parsers::SlotValueSelectionSetting.parse(map['valueSelectionSetting']) unless map['valueSelectionSetting'].nil?)
        data.parent_slot_type_signature = map['parentSlotTypeSignature']
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.external_source_setting = (Parsers::ExternalSourceSetting.parse(map['externalSourceSetting']) unless map['externalSourceSetting'].nil?)
        data
      end
    end

    # Operation Parser for ListAggregatedUtterances
    class ListAggregatedUtterances
      def self.parse(http_resp)
        data = Types::ListAggregatedUtterancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_alias_id = map['botAliasId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.aggregation_duration = (Parsers::UtteranceAggregationDuration.parse(map['aggregationDuration']) unless map['aggregationDuration'].nil?)
        data.aggregation_window_start_time = Time.at(map['aggregationWindowStartTime'].to_i) if map['aggregationWindowStartTime']
        data.aggregation_window_end_time = Time.at(map['aggregationWindowEndTime'].to_i) if map['aggregationWindowEndTime']
        data.aggregation_last_refreshed_date_time = Time.at(map['aggregationLastRefreshedDateTime'].to_i) if map['aggregationLastRefreshedDateTime']
        data.aggregated_utterances_summaries = (Parsers::AggregatedUtterancesSummaryList.parse(map['aggregatedUtterancesSummaries']) unless map['aggregatedUtterancesSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AggregatedUtterancesSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AggregatedUtterancesSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AggregatedUtterancesSummary
      def self.parse(map)
        data = Types::AggregatedUtterancesSummary.new
        data.utterance = map['utterance']
        data.hit_count = map['hitCount']
        data.missed_count = map['missedCount']
        data.utterance_first_recorded_in_aggregation_duration = Time.at(map['utteranceFirstRecordedInAggregationDuration'].to_i) if map['utteranceFirstRecordedInAggregationDuration']
        data.utterance_last_recorded_in_aggregation_duration = Time.at(map['utteranceLastRecordedInAggregationDuration'].to_i) if map['utteranceLastRecordedInAggregationDuration']
        data.contains_data_from_deleted_resources = map['containsDataFromDeletedResources']
        return data
      end
    end

    class UtteranceAggregationDuration
      def self.parse(map)
        data = Types::UtteranceAggregationDuration.new
        data.relative_aggregation_duration = (Parsers::RelativeAggregationDuration.parse(map['relativeAggregationDuration']) unless map['relativeAggregationDuration'].nil?)
        return data
      end
    end

    class RelativeAggregationDuration
      def self.parse(map)
        data = Types::RelativeAggregationDuration.new
        data.time_dimension = map['timeDimension']
        data.time_value = map['timeValue']
        return data
      end
    end

    # Operation Parser for ListBotAliases
    class ListBotAliases
      def self.parse(http_resp)
        data = Types::ListBotAliasesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_alias_summaries = (Parsers::BotAliasSummaryList.parse(map['botAliasSummaries']) unless map['botAliasSummaries'].nil?)
        data.next_token = map['nextToken']
        data.bot_id = map['botId']
        data
      end
    end

    class BotAliasSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotAliasSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotAliasSummary
      def self.parse(map)
        data = Types::BotAliasSummary.new
        data.bot_alias_id = map['botAliasId']
        data.bot_alias_name = map['botAliasName']
        data.description = map['description']
        data.bot_version = map['botVersion']
        data.bot_alias_status = map['botAliasStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for ListBotLocales
    class ListBotLocales
      def self.parse(http_resp)
        data = Types::ListBotLocalesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.next_token = map['nextToken']
        data.bot_locale_summaries = (Parsers::BotLocaleSummaryList.parse(map['botLocaleSummaries']) unless map['botLocaleSummaries'].nil?)
        data
      end
    end

    class BotLocaleSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotLocaleSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotLocaleSummary
      def self.parse(map)
        data = Types::BotLocaleSummary.new
        data.locale_id = map['localeId']
        data.locale_name = map['localeName']
        data.description = map['description']
        data.bot_locale_status = map['botLocaleStatus']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.last_build_submitted_date_time = Time.at(map['lastBuildSubmittedDateTime'].to_i) if map['lastBuildSubmittedDateTime']
        return data
      end
    end

    # Operation Parser for ListBotRecommendations
    class ListBotRecommendations
      def self.parse(http_resp)
        data = Types::ListBotRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.bot_recommendation_summaries = (Parsers::BotRecommendationSummaryList.parse(map['botRecommendationSummaries']) unless map['botRecommendationSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BotRecommendationSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotRecommendationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotRecommendationSummary
      def self.parse(map)
        data = Types::BotRecommendationSummary.new
        data.bot_recommendation_status = map['botRecommendationStatus']
        data.bot_recommendation_id = map['botRecommendationId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for ListBotVersions
    class ListBotVersions
      def self.parse(http_resp)
        data = Types::ListBotVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version_summaries = (Parsers::BotVersionSummaryList.parse(map['botVersionSummaries']) unless map['botVersionSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BotVersionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotVersionSummary
      def self.parse(map)
        data = Types::BotVersionSummary.new
        data.bot_name = map['botName']
        data.bot_version = map['botVersion']
        data.description = map['description']
        data.bot_status = map['botStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        return data
      end
    end

    # Operation Parser for ListBots
    class ListBots
      def self.parse(http_resp)
        data = Types::ListBotsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_summaries = (Parsers::BotSummaryList.parse(map['botSummaries']) unless map['botSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BotSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BotSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BotSummary
      def self.parse(map)
        data = Types::BotSummary.new
        data.bot_id = map['botId']
        data.bot_name = map['botName']
        data.description = map['description']
        data.bot_status = map['botStatus']
        data.latest_bot_version = map['latestBotVersion']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for ListBuiltInIntents
    class ListBuiltInIntents
      def self.parse(http_resp)
        data = Types::ListBuiltInIntentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.built_in_intent_summaries = (Parsers::BuiltInIntentSummaryList.parse(map['builtInIntentSummaries']) unless map['builtInIntentSummaries'].nil?)
        data.next_token = map['nextToken']
        data.locale_id = map['localeId']
        data
      end
    end

    class BuiltInIntentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BuiltInIntentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BuiltInIntentSummary
      def self.parse(map)
        data = Types::BuiltInIntentSummary.new
        data.intent_signature = map['intentSignature']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for ListBuiltInSlotTypes
    class ListBuiltInSlotTypes
      def self.parse(http_resp)
        data = Types::ListBuiltInSlotTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.built_in_slot_type_summaries = (Parsers::BuiltInSlotTypeSummaryList.parse(map['builtInSlotTypeSummaries']) unless map['builtInSlotTypeSummaries'].nil?)
        data.next_token = map['nextToken']
        data.locale_id = map['localeId']
        data
      end
    end

    class BuiltInSlotTypeSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BuiltInSlotTypeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BuiltInSlotTypeSummary
      def self.parse(map)
        data = Types::BuiltInSlotTypeSummary.new
        data.slot_type_signature = map['slotTypeSignature']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for ListExports
    class ListExports
      def self.parse(http_resp)
        data = Types::ListExportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.export_summaries = (Parsers::ExportSummaryList.parse(map['exportSummaries']) unless map['exportSummaries'].nil?)
        data.next_token = map['nextToken']
        data.locale_id = map['localeId']
        data
      end
    end

    class ExportSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExportSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExportSummary
      def self.parse(map)
        data = Types::ExportSummary.new
        data.export_id = map['exportId']
        data.resource_specification = (Parsers::ExportResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.file_format = map['fileFormat']
        data.export_status = map['exportStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for ListImports
    class ListImports
      def self.parse(http_resp)
        data = Types::ListImportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.import_summaries = (Parsers::ImportSummaryList.parse(map['importSummaries']) unless map['importSummaries'].nil?)
        data.next_token = map['nextToken']
        data.locale_id = map['localeId']
        data
      end
    end

    class ImportSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ImportSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ImportSummary
      def self.parse(map)
        data = Types::ImportSummary.new
        data.import_id = map['importId']
        data.imported_resource_id = map['importedResourceId']
        data.imported_resource_name = map['importedResourceName']
        data.import_status = map['importStatus']
        data.merge_strategy = map['mergeStrategy']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.imported_resource_type = map['importedResourceType']
        return data
      end
    end

    # Operation Parser for ListIntents
    class ListIntents
      def self.parse(http_resp)
        data = Types::ListIntentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.intent_summaries = (Parsers::IntentSummaryList.parse(map['intentSummaries']) unless map['intentSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class IntentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IntentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class IntentSummary
      def self.parse(map)
        data = Types::IntentSummary.new
        data.intent_id = map['intentId']
        data.intent_name = map['intentName']
        data.description = map['description']
        data.parent_intent_signature = map['parentIntentSignature']
        data.input_contexts = (Parsers::InputContextsList.parse(map['inputContexts']) unless map['inputContexts'].nil?)
        data.output_contexts = (Parsers::OutputContextsList.parse(map['outputContexts']) unless map['outputContexts'].nil?)
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for ListRecommendedIntents
    class ListRecommendedIntents
      def self.parse(http_resp)
        data = Types::ListRecommendedIntentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.bot_recommendation_id = map['botRecommendationId']
        data.summary_list = (Parsers::RecommendedIntentSummaryList.parse(map['summaryList']) unless map['summaryList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RecommendedIntentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendedIntentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendedIntentSummary
      def self.parse(map)
        data = Types::RecommendedIntentSummary.new
        data.intent_id = map['intentId']
        data.intent_name = map['intentName']
        data.sample_utterances_count = map['sampleUtterancesCount']
        return data
      end
    end

    # Operation Parser for ListSlotTypes
    class ListSlotTypes
      def self.parse(http_resp)
        data = Types::ListSlotTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.slot_type_summaries = (Parsers::SlotTypeSummaryList.parse(map['slotTypeSummaries']) unless map['slotTypeSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SlotTypeSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SlotTypeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SlotTypeSummary
      def self.parse(map)
        data = Types::SlotTypeSummary.new
        data.slot_type_id = map['slotTypeId']
        data.slot_type_name = map['slotTypeName']
        data.description = map['description']
        data.parent_slot_type_signature = map['parentSlotTypeSignature']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.slot_type_category = map['slotTypeCategory']
        return data
      end
    end

    # Operation Parser for ListSlots
    class ListSlots
      def self.parse(http_resp)
        data = Types::ListSlotsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.intent_id = map['intentId']
        data.slot_summaries = (Parsers::SlotSummaryList.parse(map['slotSummaries']) unless map['slotSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SlotSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SlotSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SlotSummary
      def self.parse(map)
        data = Types::SlotSummary.new
        data.slot_id = map['slotId']
        data.slot_name = map['slotName']
        data.description = map['description']
        data.slot_constraint = map['slotConstraint']
        data.slot_type_id = map['slotTypeId']
        data.value_elicitation_prompt_specification = (Parsers::PromptSpecification.parse(map['valueElicitationPromptSpecification']) unless map['valueElicitationPromptSpecification'].nil?)
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
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

    # Operation Parser for SearchAssociatedTranscripts
    class SearchAssociatedTranscripts
      def self.parse(http_resp)
        data = Types::SearchAssociatedTranscriptsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.bot_recommendation_id = map['botRecommendationId']
        data.next_index = map['nextIndex']
        data.associated_transcripts = (Parsers::AssociatedTranscriptList.parse(map['associatedTranscripts']) unless map['associatedTranscripts'].nil?)
        data.total_results = map['totalResults']
        data
      end
    end

    class AssociatedTranscriptList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssociatedTranscript.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssociatedTranscript
      def self.parse(map)
        data = Types::AssociatedTranscript.new
        data.transcript = map['transcript']
        return data
      end
    end

    # Operation Parser for StartBotRecommendation
    class StartBotRecommendation
      def self.parse(http_resp)
        data = Types::StartBotRecommendationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.bot_recommendation_status = map['botRecommendationStatus']
        data.bot_recommendation_id = map['botRecommendationId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.transcript_source_setting = (Parsers::TranscriptSourceSetting.parse(map['transcriptSourceSetting']) unless map['transcriptSourceSetting'].nil?)
        data.encryption_setting = (Parsers::EncryptionSetting.parse(map['encryptionSetting']) unless map['encryptionSetting'].nil?)
        data
      end
    end

    # Operation Parser for StartImport
    class StartImport
      def self.parse(http_resp)
        data = Types::StartImportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.import_id = map['importId']
        data.resource_specification = (Parsers::ImportResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.merge_strategy = map['mergeStrategy']
        data.import_status = map['importStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
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

    # Operation Parser for UpdateBot
    class UpdateBot
      def self.parse(http_resp)
        data = Types::UpdateBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_name = map['botName']
        data.description = map['description']
        data.role_arn = map['roleArn']
        data.data_privacy = (Parsers::DataPrivacy.parse(map['dataPrivacy']) unless map['dataPrivacy'].nil?)
        data.idle_session_ttl_in_seconds = map['idleSessionTTLInSeconds']
        data.bot_status = map['botStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    # Operation Parser for UpdateBotAlias
    class UpdateBotAlias
      def self.parse(http_resp)
        data = Types::UpdateBotAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_alias_id = map['botAliasId']
        data.bot_alias_name = map['botAliasName']
        data.description = map['description']
        data.bot_version = map['botVersion']
        data.bot_alias_locale_settings = (Parsers::BotAliasLocaleSettingsMap.parse(map['botAliasLocaleSettings']) unless map['botAliasLocaleSettings'].nil?)
        data.conversation_log_settings = (Parsers::ConversationLogSettings.parse(map['conversationLogSettings']) unless map['conversationLogSettings'].nil?)
        data.sentiment_analysis_settings = (Parsers::SentimentAnalysisSettings.parse(map['sentimentAnalysisSettings']) unless map['sentimentAnalysisSettings'].nil?)
        data.bot_alias_status = map['botAliasStatus']
        data.bot_id = map['botId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    # Operation Parser for UpdateBotLocale
    class UpdateBotLocale
      def self.parse(http_resp)
        data = Types::UpdateBotLocaleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.locale_name = map['localeName']
        data.description = map['description']
        data.nlu_intent_confidence_threshold = Hearth::NumberHelper.deserialize(map['nluIntentConfidenceThreshold'])
        data.voice_settings = (Parsers::VoiceSettings.parse(map['voiceSettings']) unless map['voiceSettings'].nil?)
        data.bot_locale_status = map['botLocaleStatus']
        data.failure_reasons = (Parsers::FailureReasons.parse(map['failureReasons']) unless map['failureReasons'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.recommended_actions = (Parsers::RecommendedActions.parse(map['recommendedActions']) unless map['recommendedActions'].nil?)
        data
      end
    end

    # Operation Parser for UpdateBotRecommendation
    class UpdateBotRecommendation
      def self.parse(http_resp)
        data = Types::UpdateBotRecommendationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.bot_recommendation_status = map['botRecommendationStatus']
        data.bot_recommendation_id = map['botRecommendationId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.transcript_source_setting = (Parsers::TranscriptSourceSetting.parse(map['transcriptSourceSetting']) unless map['transcriptSourceSetting'].nil?)
        data.encryption_setting = (Parsers::EncryptionSetting.parse(map['encryptionSetting']) unless map['encryptionSetting'].nil?)
        data
      end
    end

    # Operation Parser for UpdateExport
    class UpdateExport
      def self.parse(http_resp)
        data = Types::UpdateExportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.export_id = map['exportId']
        data.resource_specification = (Parsers::ExportResourceSpecification.parse(map['resourceSpecification']) unless map['resourceSpecification'].nil?)
        data.file_format = map['fileFormat']
        data.export_status = map['exportStatus']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    # Operation Parser for UpdateIntent
    class UpdateIntent
      def self.parse(http_resp)
        data = Types::UpdateIntentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.intent_id = map['intentId']
        data.intent_name = map['intentName']
        data.description = map['description']
        data.parent_intent_signature = map['parentIntentSignature']
        data.sample_utterances = (Parsers::SampleUtterancesList.parse(map['sampleUtterances']) unless map['sampleUtterances'].nil?)
        data.dialog_code_hook = (Parsers::DialogCodeHookSettings.parse(map['dialogCodeHook']) unless map['dialogCodeHook'].nil?)
        data.fulfillment_code_hook = (Parsers::FulfillmentCodeHookSettings.parse(map['fulfillmentCodeHook']) unless map['fulfillmentCodeHook'].nil?)
        data.slot_priorities = (Parsers::SlotPrioritiesList.parse(map['slotPriorities']) unless map['slotPriorities'].nil?)
        data.intent_confirmation_setting = (Parsers::IntentConfirmationSetting.parse(map['intentConfirmationSetting']) unless map['intentConfirmationSetting'].nil?)
        data.intent_closing_setting = (Parsers::IntentClosingSetting.parse(map['intentClosingSetting']) unless map['intentClosingSetting'].nil?)
        data.input_contexts = (Parsers::InputContextsList.parse(map['inputContexts']) unless map['inputContexts'].nil?)
        data.output_contexts = (Parsers::OutputContextsList.parse(map['outputContexts']) unless map['outputContexts'].nil?)
        data.kendra_configuration = (Parsers::KendraConfiguration.parse(map['kendraConfiguration']) unless map['kendraConfiguration'].nil?)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data
      end
    end

    # Operation Parser for UpdateResourcePolicy
    class UpdateResourcePolicy
      def self.parse(http_resp)
        data = Types::UpdateResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_arn = map['resourceArn']
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for UpdateSlot
    class UpdateSlot
      def self.parse(http_resp)
        data = Types::UpdateSlotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.slot_id = map['slotId']
        data.slot_name = map['slotName']
        data.description = map['description']
        data.slot_type_id = map['slotTypeId']
        data.value_elicitation_setting = (Parsers::SlotValueElicitationSetting.parse(map['valueElicitationSetting']) unless map['valueElicitationSetting'].nil?)
        data.obfuscation_setting = (Parsers::ObfuscationSetting.parse(map['obfuscationSetting']) unless map['obfuscationSetting'].nil?)
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.intent_id = map['intentId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.multiple_values_setting = (Parsers::MultipleValuesSetting.parse(map['multipleValuesSetting']) unless map['multipleValuesSetting'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSlotType
    class UpdateSlotType
      def self.parse(http_resp)
        data = Types::UpdateSlotTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.slot_type_id = map['slotTypeId']
        data.slot_type_name = map['slotTypeName']
        data.description = map['description']
        data.slot_type_values = (Parsers::SlotTypeValues.parse(map['slotTypeValues']) unless map['slotTypeValues'].nil?)
        data.value_selection_setting = (Parsers::SlotValueSelectionSetting.parse(map['valueSelectionSetting']) unless map['valueSelectionSetting'].nil?)
        data.parent_slot_type_signature = map['parentSlotTypeSignature']
        data.bot_id = map['botId']
        data.bot_version = map['botVersion']
        data.locale_id = map['localeId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.external_source_setting = (Parsers::ExternalSourceSetting.parse(map['externalSourceSetting']) unless map['externalSourceSetting'].nil?)
        data
      end
    end
  end
end
