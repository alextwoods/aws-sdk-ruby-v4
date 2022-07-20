# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::LexModelsV2
  module Builders

    # Operation Builder for BuildBotLocale
    class BuildBotLocale
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateBot
    class CreateBot
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/bots')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['botName'] = input[:bot_name] unless input[:bot_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['dataPrivacy'] = DataPrivacy.build(input[:data_privacy]) unless input[:data_privacy].nil?
        data['idleSessionTTLInSeconds'] = input[:idle_session_ttl_in_seconds] unless input[:idle_session_ttl_in_seconds].nil?
        data['botTags'] = TagMap.build(input[:bot_tags]) unless input[:bot_tags].nil?
        data['testBotAliasTags'] = TagMap.build(input[:test_bot_alias_tags]) unless input[:test_bot_alias_tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DataPrivacy
    class DataPrivacy
      def self.build(input)
        data = {}
        data['childDirected'] = input[:child_directed] unless input[:child_directed].nil?
        data
      end
    end

    # Operation Builder for CreateBotAlias
    class CreateBotAlias
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botaliases',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['botAliasName'] = input[:bot_alias_name] unless input[:bot_alias_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['botAliasLocaleSettings'] = BotAliasLocaleSettingsMap.build(input[:bot_alias_locale_settings]) unless input[:bot_alias_locale_settings].nil?
        data['conversationLogSettings'] = ConversationLogSettings.build(input[:conversation_log_settings]) unless input[:conversation_log_settings].nil?
        data['sentimentAnalysisSettings'] = SentimentAnalysisSettings.build(input[:sentiment_analysis_settings]) unless input[:sentiment_analysis_settings].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SentimentAnalysisSettings
    class SentimentAnalysisSettings
      def self.build(input)
        data = {}
        data['detectSentiment'] = input[:detect_sentiment] unless input[:detect_sentiment].nil?
        data
      end
    end

    # Structure Builder for ConversationLogSettings
    class ConversationLogSettings
      def self.build(input)
        data = {}
        data['textLogSettings'] = TextLogSettingsList.build(input[:text_log_settings]) unless input[:text_log_settings].nil?
        data['audioLogSettings'] = AudioLogSettingsList.build(input[:audio_log_settings]) unless input[:audio_log_settings].nil?
        data
      end
    end

    # List Builder for AudioLogSettingsList
    class AudioLogSettingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << AudioLogSetting.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AudioLogSetting
    class AudioLogSetting
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['destination'] = AudioLogDestination.build(input[:destination]) unless input[:destination].nil?
        data
      end
    end

    # Structure Builder for AudioLogDestination
    class AudioLogDestination
      def self.build(input)
        data = {}
        data['s3Bucket'] = S3BucketLogDestination.build(input[:s3_bucket]) unless input[:s3_bucket].nil?
        data
      end
    end

    # Structure Builder for S3BucketLogDestination
    class S3BucketLogDestination
      def self.build(input)
        data = {}
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['s3BucketArn'] = input[:s3_bucket_arn] unless input[:s3_bucket_arn].nil?
        data['logPrefix'] = input[:log_prefix] unless input[:log_prefix].nil?
        data
      end
    end

    # List Builder for TextLogSettingsList
    class TextLogSettingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << TextLogSetting.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TextLogSetting
    class TextLogSetting
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['destination'] = TextLogDestination.build(input[:destination]) unless input[:destination].nil?
        data
      end
    end

    # Structure Builder for TextLogDestination
    class TextLogDestination
      def self.build(input)
        data = {}
        data['cloudWatch'] = CloudWatchLogGroupLogDestination.build(input[:cloud_watch]) unless input[:cloud_watch].nil?
        data
      end
    end

    # Structure Builder for CloudWatchLogGroupLogDestination
    class CloudWatchLogGroupLogDestination
      def self.build(input)
        data = {}
        data['cloudWatchLogGroupArn'] = input[:cloud_watch_log_group_arn] unless input[:cloud_watch_log_group_arn].nil?
        data['logPrefix'] = input[:log_prefix] unless input[:log_prefix].nil?
        data
      end
    end

    # Map Builder for BotAliasLocaleSettingsMap
    class BotAliasLocaleSettingsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = BotAliasLocaleSettings.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for BotAliasLocaleSettings
    class BotAliasLocaleSettings
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['codeHookSpecification'] = CodeHookSpecification.build(input[:code_hook_specification]) unless input[:code_hook_specification].nil?
        data
      end
    end

    # Structure Builder for CodeHookSpecification
    class CodeHookSpecification
      def self.build(input)
        data = {}
        data['lambdaCodeHook'] = LambdaCodeHook.build(input[:lambda_code_hook]) unless input[:lambda_code_hook].nil?
        data
      end
    end

    # Structure Builder for LambdaCodeHook
    class LambdaCodeHook
      def self.build(input)
        data = {}
        data['lambdaARN'] = input[:lambda_arn] unless input[:lambda_arn].nil?
        data['codeHookInterfaceVersion'] = input[:code_hook_interface_version] unless input[:code_hook_interface_version].nil?
        data
      end
    end

    # Operation Builder for CreateBotLocale
    class CreateBotLocale
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['localeId'] = input[:locale_id] unless input[:locale_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(input[:nlu_intent_confidence_threshold]) unless input[:nlu_intent_confidence_threshold].nil?
        data['voiceSettings'] = VoiceSettings.build(input[:voice_settings]) unless input[:voice_settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VoiceSettings
    class VoiceSettings
      def self.build(input)
        data = {}
        data['voiceId'] = input[:voice_id] unless input[:voice_id].nil?
        data['engine'] = input[:engine] unless input[:engine].nil?
        data
      end
    end

    # Operation Builder for CreateBotVersion
    class CreateBotVersion
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['botVersionLocaleSpecification'] = BotVersionLocaleSpecification.build(input[:bot_version_locale_specification]) unless input[:bot_version_locale_specification].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for BotVersionLocaleSpecification
    class BotVersionLocaleSpecification
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = BotVersionLocaleDetails.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for BotVersionLocaleDetails
    class BotVersionLocaleDetails
      def self.build(input)
        data = {}
        data['sourceBotVersion'] = input[:source_bot_version] unless input[:source_bot_version].nil?
        data
      end
    end

    # Operation Builder for CreateExport
    class CreateExport
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/exports')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceSpecification'] = ExportResourceSpecification.build(input[:resource_specification]) unless input[:resource_specification].nil?
        data['fileFormat'] = input[:file_format] unless input[:file_format].nil?
        data['filePassword'] = input[:file_password] unless input[:file_password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExportResourceSpecification
    class ExportResourceSpecification
      def self.build(input)
        data = {}
        data['botExportSpecification'] = BotExportSpecification.build(input[:bot_export_specification]) unless input[:bot_export_specification].nil?
        data['botLocaleExportSpecification'] = BotLocaleExportSpecification.build(input[:bot_locale_export_specification]) unless input[:bot_locale_export_specification].nil?
        data['customVocabularyExportSpecification'] = CustomVocabularyExportSpecification.build(input[:custom_vocabulary_export_specification]) unless input[:custom_vocabulary_export_specification].nil?
        data
      end
    end

    # Structure Builder for CustomVocabularyExportSpecification
    class CustomVocabularyExportSpecification
      def self.build(input)
        data = {}
        data['botId'] = input[:bot_id] unless input[:bot_id].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['localeId'] = input[:locale_id] unless input[:locale_id].nil?
        data
      end
    end

    # Structure Builder for BotLocaleExportSpecification
    class BotLocaleExportSpecification
      def self.build(input)
        data = {}
        data['botId'] = input[:bot_id] unless input[:bot_id].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['localeId'] = input[:locale_id] unless input[:locale_id].nil?
        data
      end
    end

    # Structure Builder for BotExportSpecification
    class BotExportSpecification
      def self.build(input)
        data = {}
        data['botId'] = input[:bot_id] unless input[:bot_id].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data
      end
    end

    # Operation Builder for CreateIntent
    class CreateIntent
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['intentName'] = input[:intent_name] unless input[:intent_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['parentIntentSignature'] = input[:parent_intent_signature] unless input[:parent_intent_signature].nil?
        data['sampleUtterances'] = SampleUtterancesList.build(input[:sample_utterances]) unless input[:sample_utterances].nil?
        data['dialogCodeHook'] = DialogCodeHookSettings.build(input[:dialog_code_hook]) unless input[:dialog_code_hook].nil?
        data['fulfillmentCodeHook'] = FulfillmentCodeHookSettings.build(input[:fulfillment_code_hook]) unless input[:fulfillment_code_hook].nil?
        data['intentConfirmationSetting'] = IntentConfirmationSetting.build(input[:intent_confirmation_setting]) unless input[:intent_confirmation_setting].nil?
        data['intentClosingSetting'] = IntentClosingSetting.build(input[:intent_closing_setting]) unless input[:intent_closing_setting].nil?
        data['inputContexts'] = InputContextsList.build(input[:input_contexts]) unless input[:input_contexts].nil?
        data['outputContexts'] = OutputContextsList.build(input[:output_contexts]) unless input[:output_contexts].nil?
        data['kendraConfiguration'] = KendraConfiguration.build(input[:kendra_configuration]) unless input[:kendra_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for KendraConfiguration
    class KendraConfiguration
      def self.build(input)
        data = {}
        data['kendraIndex'] = input[:kendra_index] unless input[:kendra_index].nil?
        data['queryFilterStringEnabled'] = input[:query_filter_string_enabled] unless input[:query_filter_string_enabled].nil?
        data['queryFilterString'] = input[:query_filter_string] unless input[:query_filter_string].nil?
        data
      end
    end

    # List Builder for OutputContextsList
    class OutputContextsList
      def self.build(input)
        data = []
        input.each do |element|
          data << OutputContext.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputContext
    class OutputContext
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['timeToLiveInSeconds'] = input[:time_to_live_in_seconds] unless input[:time_to_live_in_seconds].nil?
        data['turnsToLive'] = input[:turns_to_live] unless input[:turns_to_live].nil?
        data
      end
    end

    # List Builder for InputContextsList
    class InputContextsList
      def self.build(input)
        data = []
        input.each do |element|
          data << InputContext.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputContext
    class InputContext
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for IntentClosingSetting
    class IntentClosingSetting
      def self.build(input)
        data = {}
        data['closingResponse'] = ResponseSpecification.build(input[:closing_response]) unless input[:closing_response].nil?
        data['active'] = input[:active] unless input[:active].nil?
        data
      end
    end

    # Structure Builder for ResponseSpecification
    class ResponseSpecification
      def self.build(input)
        data = {}
        data['messageGroups'] = MessageGroupsList.build(input[:message_groups]) unless input[:message_groups].nil?
        data['allowInterrupt'] = input[:allow_interrupt] unless input[:allow_interrupt].nil?
        data
      end
    end

    # List Builder for MessageGroupsList
    class MessageGroupsList
      def self.build(input)
        data = []
        input.each do |element|
          data << MessageGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MessageGroup
    class MessageGroup
      def self.build(input)
        data = {}
        data['message'] = Message.build(input[:message]) unless input[:message].nil?
        data['variations'] = MessageVariationsList.build(input[:variations]) unless input[:variations].nil?
        data
      end
    end

    # List Builder for MessageVariationsList
    class MessageVariationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Message.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Message
    class Message
      def self.build(input)
        data = {}
        data['plainTextMessage'] = PlainTextMessage.build(input[:plain_text_message]) unless input[:plain_text_message].nil?
        data['customPayload'] = CustomPayload.build(input[:custom_payload]) unless input[:custom_payload].nil?
        data['ssmlMessage'] = SSMLMessage.build(input[:ssml_message]) unless input[:ssml_message].nil?
        data['imageResponseCard'] = ImageResponseCard.build(input[:image_response_card]) unless input[:image_response_card].nil?
        data
      end
    end

    # Structure Builder for ImageResponseCard
    class ImageResponseCard
      def self.build(input)
        data = {}
        data['title'] = input[:title] unless input[:title].nil?
        data['subtitle'] = input[:subtitle] unless input[:subtitle].nil?
        data['imageUrl'] = input[:image_url] unless input[:image_url].nil?
        data['buttons'] = ButtonsList.build(input[:buttons]) unless input[:buttons].nil?
        data
      end
    end

    # List Builder for ButtonsList
    class ButtonsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Button.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Button
    class Button
      def self.build(input)
        data = {}
        data['text'] = input[:text] unless input[:text].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for SSMLMessage
    class SSMLMessage
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for CustomPayload
    class CustomPayload
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for PlainTextMessage
    class PlainTextMessage
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for IntentConfirmationSetting
    class IntentConfirmationSetting
      def self.build(input)
        data = {}
        data['promptSpecification'] = PromptSpecification.build(input[:prompt_specification]) unless input[:prompt_specification].nil?
        data['declinationResponse'] = ResponseSpecification.build(input[:declination_response]) unless input[:declination_response].nil?
        data['active'] = input[:active] unless input[:active].nil?
        data
      end
    end

    # Structure Builder for PromptSpecification
    class PromptSpecification
      def self.build(input)
        data = {}
        data['messageGroups'] = MessageGroupsList.build(input[:message_groups]) unless input[:message_groups].nil?
        data['maxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['allowInterrupt'] = input[:allow_interrupt] unless input[:allow_interrupt].nil?
        data
      end
    end

    # Structure Builder for FulfillmentCodeHookSettings
    class FulfillmentCodeHookSettings
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['postFulfillmentStatusSpecification'] = PostFulfillmentStatusSpecification.build(input[:post_fulfillment_status_specification]) unless input[:post_fulfillment_status_specification].nil?
        data['fulfillmentUpdatesSpecification'] = FulfillmentUpdatesSpecification.build(input[:fulfillment_updates_specification]) unless input[:fulfillment_updates_specification].nil?
        data
      end
    end

    # Structure Builder for FulfillmentUpdatesSpecification
    class FulfillmentUpdatesSpecification
      def self.build(input)
        data = {}
        data['active'] = input[:active] unless input[:active].nil?
        data['startResponse'] = FulfillmentStartResponseSpecification.build(input[:start_response]) unless input[:start_response].nil?
        data['updateResponse'] = FulfillmentUpdateResponseSpecification.build(input[:update_response]) unless input[:update_response].nil?
        data['timeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data
      end
    end

    # Structure Builder for FulfillmentUpdateResponseSpecification
    class FulfillmentUpdateResponseSpecification
      def self.build(input)
        data = {}
        data['frequencyInSeconds'] = input[:frequency_in_seconds] unless input[:frequency_in_seconds].nil?
        data['messageGroups'] = MessageGroupsList.build(input[:message_groups]) unless input[:message_groups].nil?
        data['allowInterrupt'] = input[:allow_interrupt] unless input[:allow_interrupt].nil?
        data
      end
    end

    # Structure Builder for FulfillmentStartResponseSpecification
    class FulfillmentStartResponseSpecification
      def self.build(input)
        data = {}
        data['delayInSeconds'] = input[:delay_in_seconds] unless input[:delay_in_seconds].nil?
        data['messageGroups'] = MessageGroupsList.build(input[:message_groups]) unless input[:message_groups].nil?
        data['allowInterrupt'] = input[:allow_interrupt] unless input[:allow_interrupt].nil?
        data
      end
    end

    # Structure Builder for PostFulfillmentStatusSpecification
    class PostFulfillmentStatusSpecification
      def self.build(input)
        data = {}
        data['successResponse'] = ResponseSpecification.build(input[:success_response]) unless input[:success_response].nil?
        data['failureResponse'] = ResponseSpecification.build(input[:failure_response]) unless input[:failure_response].nil?
        data['timeoutResponse'] = ResponseSpecification.build(input[:timeout_response]) unless input[:timeout_response].nil?
        data
      end
    end

    # Structure Builder for DialogCodeHookSettings
    class DialogCodeHookSettings
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # List Builder for SampleUtterancesList
    class SampleUtterancesList
      def self.build(input)
        data = []
        input.each do |element|
          data << SampleUtterance.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SampleUtterance
    class SampleUtterance
      def self.build(input)
        data = {}
        data['utterance'] = input[:utterance] unless input[:utterance].nil?
        data
      end
    end

    # Operation Builder for CreateResourcePolicy
    class CreateResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policy/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateResourcePolicyStatement
    class CreateResourcePolicyStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policy/%<resourceArn>s/statements',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedRevisionId'] = input[:expected_revision_id].to_s unless input[:expected_revision_id].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['statementId'] = input[:statement_id] unless input[:statement_id].nil?
        data['effect'] = input[:effect] unless input[:effect].nil?
        data['principal'] = PrincipalList.build(input[:principal]) unless input[:principal].nil?
        data['action'] = OperationList.build(input[:action]) unless input[:action].nil?
        data['condition'] = ConditionMap.build(input[:condition]) unless input[:condition].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ConditionMap
    class ConditionMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = ConditionKeyValueMap.build(value) unless value.nil?
        end
        data
      end
    end

    # Map Builder for ConditionKeyValueMap
    class ConditionKeyValueMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for OperationList
    class OperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PrincipalList
    class PrincipalList
      def self.build(input)
        data = []
        input.each do |element|
          data << Principal.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Principal
    class Principal
      def self.build(input)
        data = {}
        data['service'] = input[:service] unless input[:service].nil?
        data['arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Operation Builder for CreateSlot
    class CreateSlot
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:intent_id].to_s.empty?
          raise ArgumentError, "HTTP label :intent_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents/%<intentId>s/slots',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            intentId: Hearth::HTTP.uri_escape(input[:intent_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['slotName'] = input[:slot_name] unless input[:slot_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['slotTypeId'] = input[:slot_type_id] unless input[:slot_type_id].nil?
        data['valueElicitationSetting'] = SlotValueElicitationSetting.build(input[:value_elicitation_setting]) unless input[:value_elicitation_setting].nil?
        data['obfuscationSetting'] = ObfuscationSetting.build(input[:obfuscation_setting]) unless input[:obfuscation_setting].nil?
        data['multipleValuesSetting'] = MultipleValuesSetting.build(input[:multiple_values_setting]) unless input[:multiple_values_setting].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MultipleValuesSetting
    class MultipleValuesSetting
      def self.build(input)
        data = {}
        data['allowMultipleValues'] = input[:allow_multiple_values] unless input[:allow_multiple_values].nil?
        data
      end
    end

    # Structure Builder for ObfuscationSetting
    class ObfuscationSetting
      def self.build(input)
        data = {}
        data['obfuscationSettingType'] = input[:obfuscation_setting_type] unless input[:obfuscation_setting_type].nil?
        data
      end
    end

    # Structure Builder for SlotValueElicitationSetting
    class SlotValueElicitationSetting
      def self.build(input)
        data = {}
        data['defaultValueSpecification'] = SlotDefaultValueSpecification.build(input[:default_value_specification]) unless input[:default_value_specification].nil?
        data['slotConstraint'] = input[:slot_constraint] unless input[:slot_constraint].nil?
        data['promptSpecification'] = PromptSpecification.build(input[:prompt_specification]) unless input[:prompt_specification].nil?
        data['sampleUtterances'] = SampleUtterancesList.build(input[:sample_utterances]) unless input[:sample_utterances].nil?
        data['waitAndContinueSpecification'] = WaitAndContinueSpecification.build(input[:wait_and_continue_specification]) unless input[:wait_and_continue_specification].nil?
        data
      end
    end

    # Structure Builder for WaitAndContinueSpecification
    class WaitAndContinueSpecification
      def self.build(input)
        data = {}
        data['waitingResponse'] = ResponseSpecification.build(input[:waiting_response]) unless input[:waiting_response].nil?
        data['continueResponse'] = ResponseSpecification.build(input[:continue_response]) unless input[:continue_response].nil?
        data['stillWaitingResponse'] = StillWaitingResponseSpecification.build(input[:still_waiting_response]) unless input[:still_waiting_response].nil?
        data['active'] = input[:active] unless input[:active].nil?
        data
      end
    end

    # Structure Builder for StillWaitingResponseSpecification
    class StillWaitingResponseSpecification
      def self.build(input)
        data = {}
        data['messageGroups'] = MessageGroupsList.build(input[:message_groups]) unless input[:message_groups].nil?
        data['frequencyInSeconds'] = input[:frequency_in_seconds] unless input[:frequency_in_seconds].nil?
        data['timeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data['allowInterrupt'] = input[:allow_interrupt] unless input[:allow_interrupt].nil?
        data
      end
    end

    # Structure Builder for SlotDefaultValueSpecification
    class SlotDefaultValueSpecification
      def self.build(input)
        data = {}
        data['defaultValueList'] = SlotDefaultValueList.build(input[:default_value_list]) unless input[:default_value_list].nil?
        data
      end
    end

    # List Builder for SlotDefaultValueList
    class SlotDefaultValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << SlotDefaultValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SlotDefaultValue
    class SlotDefaultValue
      def self.build(input)
        data = {}
        data['defaultValue'] = input[:default_value] unless input[:default_value].nil?
        data
      end
    end

    # Operation Builder for CreateSlotType
    class CreateSlotType
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/slottypes',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['slotTypeName'] = input[:slot_type_name] unless input[:slot_type_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['slotTypeValues'] = SlotTypeValues.build(input[:slot_type_values]) unless input[:slot_type_values].nil?
        data['valueSelectionSetting'] = SlotValueSelectionSetting.build(input[:value_selection_setting]) unless input[:value_selection_setting].nil?
        data['parentSlotTypeSignature'] = input[:parent_slot_type_signature] unless input[:parent_slot_type_signature].nil?
        data['externalSourceSetting'] = ExternalSourceSetting.build(input[:external_source_setting]) unless input[:external_source_setting].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExternalSourceSetting
    class ExternalSourceSetting
      def self.build(input)
        data = {}
        data['grammarSlotTypeSetting'] = GrammarSlotTypeSetting.build(input[:grammar_slot_type_setting]) unless input[:grammar_slot_type_setting].nil?
        data
      end
    end

    # Structure Builder for GrammarSlotTypeSetting
    class GrammarSlotTypeSetting
      def self.build(input)
        data = {}
        data['source'] = GrammarSlotTypeSource.build(input[:source]) unless input[:source].nil?
        data
      end
    end

    # Structure Builder for GrammarSlotTypeSource
    class GrammarSlotTypeSource
      def self.build(input)
        data = {}
        data['s3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['s3ObjectKey'] = input[:s3_object_key] unless input[:s3_object_key].nil?
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Structure Builder for SlotValueSelectionSetting
    class SlotValueSelectionSetting
      def self.build(input)
        data = {}
        data['resolutionStrategy'] = input[:resolution_strategy] unless input[:resolution_strategy].nil?
        data['regexFilter'] = SlotValueRegexFilter.build(input[:regex_filter]) unless input[:regex_filter].nil?
        data['advancedRecognitionSetting'] = AdvancedRecognitionSetting.build(input[:advanced_recognition_setting]) unless input[:advanced_recognition_setting].nil?
        data
      end
    end

    # Structure Builder for AdvancedRecognitionSetting
    class AdvancedRecognitionSetting
      def self.build(input)
        data = {}
        data['audioRecognitionStrategy'] = input[:audio_recognition_strategy] unless input[:audio_recognition_strategy].nil?
        data
      end
    end

    # Structure Builder for SlotValueRegexFilter
    class SlotValueRegexFilter
      def self.build(input)
        data = {}
        data['pattern'] = input[:pattern] unless input[:pattern].nil?
        data
      end
    end

    # List Builder for SlotTypeValues
    class SlotTypeValues
      def self.build(input)
        data = []
        input.each do |element|
          data << SlotTypeValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SlotTypeValue
    class SlotTypeValue
      def self.build(input)
        data = {}
        data['sampleValue'] = SampleValue.build(input[:sample_value]) unless input[:sample_value].nil?
        data['synonyms'] = SynonymList.build(input[:synonyms]) unless input[:synonyms].nil?
        data
      end
    end

    # List Builder for SynonymList
    class SynonymList
      def self.build(input)
        data = []
        input.each do |element|
          data << SampleValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SampleValue
    class SampleValue
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateUploadUrl
    class CreateUploadUrl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createuploadurl')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBot
    class DeleteBot
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['skipResourceInUseCheck'] = input[:skip_resource_in_use_check].to_s unless input[:skip_resource_in_use_check].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBotAlias
    class DeleteBotAlias
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botaliases/%<botAliasId>s',
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['skipResourceInUseCheck'] = input[:skip_resource_in_use_check].to_s unless input[:skip_resource_in_use_check].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBotLocale
    class DeleteBotLocale
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBotVersion
    class DeleteBotVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['skipResourceInUseCheck'] = input[:skip_resource_in_use_check].to_s unless input[:skip_resource_in_use_check].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCustomVocabulary
    class DeleteCustomVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/customvocabulary',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteExport
    class DeleteExport
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:export_id].to_s.empty?
          raise ArgumentError, "HTTP label :export_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/exports/%<exportId>s',
            exportId: Hearth::HTTP.uri_escape(input[:export_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteImport
    class DeleteImport
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:import_id].to_s.empty?
          raise ArgumentError, "HTTP label :import_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/imports/%<importId>s',
            importId: Hearth::HTTP.uri_escape(input[:import_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIntent
    class DeleteIntent
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:intent_id].to_s.empty?
          raise ArgumentError, "HTTP label :intent_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents/%<intentId>s',
            intentId: Hearth::HTTP.uri_escape(input[:intent_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policy/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedRevisionId'] = input[:expected_revision_id].to_s unless input[:expected_revision_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResourcePolicyStatement
    class DeleteResourcePolicyStatement
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        if input[:statement_id].to_s.empty?
          raise ArgumentError, "HTTP label :statement_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policy/%<resourceArn>s/statements/%<statementId>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s),
            statementId: Hearth::HTTP.uri_escape(input[:statement_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedRevisionId'] = input[:expected_revision_id].to_s unless input[:expected_revision_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSlot
    class DeleteSlot
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:slot_id].to_s.empty?
          raise ArgumentError, "HTTP label :slot_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:intent_id].to_s.empty?
          raise ArgumentError, "HTTP label :intent_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents/%<intentId>s/slots/%<slotId>s',
            slotId: Hearth::HTTP.uri_escape(input[:slot_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            intentId: Hearth::HTTP.uri_escape(input[:intent_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSlotType
    class DeleteSlotType
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:slot_type_id].to_s.empty?
          raise ArgumentError, "HTTP label :slot_type_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/slottypes/%<slotTypeId>s',
            slotTypeId: Hearth::HTTP.uri_escape(input[:slot_type_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['skipResourceInUseCheck'] = input[:skip_resource_in_use_check].to_s unless input[:skip_resource_in_use_check].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUtterances
    class DeleteUtterances
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/utterances',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['localeId'] = input[:locale_id].to_s unless input[:locale_id].nil?
        params['sessionId'] = input[:session_id].to_s unless input[:session_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBot
    class DescribeBot
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBotAlias
    class DescribeBotAlias
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botaliases/%<botAliasId>s',
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBotLocale
    class DescribeBotLocale
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBotRecommendation
    class DescribeBotRecommendation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:bot_recommendation_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_recommendation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/botrecommendations/%<botRecommendationId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            botRecommendationId: Hearth::HTTP.uri_escape(input[:bot_recommendation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBotVersion
    class DescribeBotVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCustomVocabularyMetadata
    class DescribeCustomVocabularyMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/customvocabulary/DEFAULT/metadata',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeExport
    class DescribeExport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:export_id].to_s.empty?
          raise ArgumentError, "HTTP label :export_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/exports/%<exportId>s',
            exportId: Hearth::HTTP.uri_escape(input[:export_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeImport
    class DescribeImport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:import_id].to_s.empty?
          raise ArgumentError, "HTTP label :import_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/imports/%<importId>s',
            importId: Hearth::HTTP.uri_escape(input[:import_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeIntent
    class DescribeIntent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:intent_id].to_s.empty?
          raise ArgumentError, "HTTP label :intent_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents/%<intentId>s',
            intentId: Hearth::HTTP.uri_escape(input[:intent_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeResourcePolicy
    class DescribeResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policy/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSlot
    class DescribeSlot
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:slot_id].to_s.empty?
          raise ArgumentError, "HTTP label :slot_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:intent_id].to_s.empty?
          raise ArgumentError, "HTTP label :intent_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents/%<intentId>s/slots/%<slotId>s',
            slotId: Hearth::HTTP.uri_escape(input[:slot_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            intentId: Hearth::HTTP.uri_escape(input[:intent_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSlotType
    class DescribeSlotType
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:slot_type_id].to_s.empty?
          raise ArgumentError, "HTTP label :slot_type_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/slottypes/%<slotTypeId>s',
            slotTypeId: Hearth::HTTP.uri_escape(input[:slot_type_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAggregatedUtterances
    class ListAggregatedUtterances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/aggregatedutterances',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['botAliasId'] = input[:bot_alias_id] unless input[:bot_alias_id].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['localeId'] = input[:locale_id] unless input[:locale_id].nil?
        data['aggregationDuration'] = UtteranceAggregationDuration.build(input[:aggregation_duration]) unless input[:aggregation_duration].nil?
        data['sortBy'] = AggregatedUtterancesSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['filters'] = AggregatedUtterancesFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AggregatedUtterancesFilters
    class AggregatedUtterancesFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << AggregatedUtterancesFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AggregatedUtterancesFilter
    class AggregatedUtterancesFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AggregatedUtterancesSortBy
    class AggregatedUtterancesSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Structure Builder for UtteranceAggregationDuration
    class UtteranceAggregationDuration
      def self.build(input)
        data = {}
        data['relativeAggregationDuration'] = RelativeAggregationDuration.build(input[:relative_aggregation_duration]) unless input[:relative_aggregation_duration].nil?
        data
      end
    end

    # Structure Builder for RelativeAggregationDuration
    class RelativeAggregationDuration
      def self.build(input)
        data = {}
        data['timeDimension'] = input[:time_dimension] unless input[:time_dimension].nil?
        data['timeValue'] = input[:time_value] unless input[:time_value].nil?
        data
      end
    end

    # Operation Builder for ListBotAliases
    class ListBotAliases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botaliases',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBotLocales
    class ListBotLocales
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = BotLocaleSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['filters'] = BotLocaleFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BotLocaleFilters
    class BotLocaleFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << BotLocaleFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BotLocaleFilter
    class BotLocaleFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Structure Builder for BotLocaleSortBy
    class BotLocaleSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListBotRecommendations
    class ListBotRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/botrecommendations',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBotVersions
    class ListBotVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = BotVersionSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BotVersionSortBy
    class BotVersionSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListBots
    class ListBots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/bots')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = BotSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['filters'] = BotFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BotFilters
    class BotFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << BotFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BotFilter
    class BotFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Structure Builder for BotSortBy
    class BotSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListBuiltInIntents
    class ListBuiltInIntents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/builtins/locales/%<localeId>s/intents',
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = BuiltInIntentSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BuiltInIntentSortBy
    class BuiltInIntentSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListBuiltInSlotTypes
    class ListBuiltInSlotTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/builtins/locales/%<localeId>s/slottypes',
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = BuiltInSlotTypeSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BuiltInSlotTypeSortBy
    class BuiltInSlotTypeSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListExports
    class ListExports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/exports')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['botId'] = input[:bot_id] unless input[:bot_id].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['sortBy'] = ExportSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['filters'] = ExportFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['localeId'] = input[:locale_id] unless input[:locale_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ExportFilters
    class ExportFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << ExportFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ExportFilter
    class ExportFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Structure Builder for ExportSortBy
    class ExportSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListImports
    class ListImports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/imports')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['botId'] = input[:bot_id] unless input[:bot_id].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['sortBy'] = ImportSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['filters'] = ImportFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['localeId'] = input[:locale_id] unless input[:locale_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ImportFilters
    class ImportFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << ImportFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ImportFilter
    class ImportFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Structure Builder for ImportSortBy
    class ImportSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListIntents
    class ListIntents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = IntentSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['filters'] = IntentFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IntentFilters
    class IntentFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << IntentFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IntentFilter
    class IntentFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Structure Builder for IntentSortBy
    class IntentSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListRecommendedIntents
    class ListRecommendedIntents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:bot_recommendation_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_recommendation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/botrecommendations/%<botRecommendationId>s/intents',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            botRecommendationId: Hearth::HTTP.uri_escape(input[:bot_recommendation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSlotTypes
    class ListSlotTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/slottypes',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = SlotTypeSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['filters'] = SlotTypeFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SlotTypeFilters
    class SlotTypeFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << SlotTypeFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SlotTypeFilter
    class SlotTypeFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Structure Builder for SlotTypeSortBy
    class SlotTypeSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListSlots
    class ListSlots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:intent_id].to_s.empty?
          raise ArgumentError, "HTTP label :intent_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents/%<intentId>s/slots',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            intentId: Hearth::HTTP.uri_escape(input[:intent_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sortBy'] = SlotSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['filters'] = SlotFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SlotFilters
    class SlotFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << SlotFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SlotFilter
    class SlotFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Structure Builder for SlotSortBy
    class SlotSortBy
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceARN>s',
            resourceARN: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SearchAssociatedTranscripts
    class SearchAssociatedTranscripts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:bot_recommendation_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_recommendation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/botrecommendations/%<botRecommendationId>s/associatedtranscripts',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            botRecommendationId: Hearth::HTTP.uri_escape(input[:bot_recommendation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['searchOrder'] = input[:search_order] unless input[:search_order].nil?
        data['filters'] = AssociatedTranscriptFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextIndex'] = input[:next_index] unless input[:next_index].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssociatedTranscriptFilters
    class AssociatedTranscriptFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << AssociatedTranscriptFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssociatedTranscriptFilter
    class AssociatedTranscriptFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for StartBotRecommendation
    class StartBotRecommendation
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/botrecommendations',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['transcriptSourceSetting'] = TranscriptSourceSetting.build(input[:transcript_source_setting]) unless input[:transcript_source_setting].nil?
        data['encryptionSetting'] = EncryptionSetting.build(input[:encryption_setting]) unless input[:encryption_setting].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EncryptionSetting
    class EncryptionSetting
      def self.build(input)
        data = {}
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['botLocaleExportPassword'] = input[:bot_locale_export_password] unless input[:bot_locale_export_password].nil?
        data['associatedTranscriptsPassword'] = input[:associated_transcripts_password] unless input[:associated_transcripts_password].nil?
        data
      end
    end

    # Structure Builder for TranscriptSourceSetting
    class TranscriptSourceSetting
      def self.build(input)
        data = {}
        data['s3BucketTranscriptSource'] = S3BucketTranscriptSource.build(input[:s3_bucket_transcript_source]) unless input[:s3_bucket_transcript_source].nil?
        data
      end
    end

    # Structure Builder for S3BucketTranscriptSource
    class S3BucketTranscriptSource
      def self.build(input)
        data = {}
        data['s3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['pathFormat'] = PathFormat.build(input[:path_format]) unless input[:path_format].nil?
        data['transcriptFormat'] = input[:transcript_format] unless input[:transcript_format].nil?
        data['transcriptFilter'] = TranscriptFilter.build(input[:transcript_filter]) unless input[:transcript_filter].nil?
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Structure Builder for TranscriptFilter
    class TranscriptFilter
      def self.build(input)
        data = {}
        data['lexTranscriptFilter'] = LexTranscriptFilter.build(input[:lex_transcript_filter]) unless input[:lex_transcript_filter].nil?
        data
      end
    end

    # Structure Builder for LexTranscriptFilter
    class LexTranscriptFilter
      def self.build(input)
        data = {}
        data['dateRangeFilter'] = DateRangeFilter.build(input[:date_range_filter]) unless input[:date_range_filter].nil?
        data
      end
    end

    # Structure Builder for DateRangeFilter
    class DateRangeFilter
      def self.build(input)
        data = {}
        data['startDateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_date_time]).to_i unless input[:start_date_time].nil?
        data['endDateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_date_time]).to_i unless input[:end_date_time].nil?
        data
      end
    end

    # Structure Builder for PathFormat
    class PathFormat
      def self.build(input)
        data = {}
        data['objectPrefixes'] = ObjectPrefixes.build(input[:object_prefixes]) unless input[:object_prefixes].nil?
        data
      end
    end

    # List Builder for ObjectPrefixes
    class ObjectPrefixes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartImport
    class StartImport
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/imports')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['importId'] = input[:import_id] unless input[:import_id].nil?
        data['resourceSpecification'] = ImportResourceSpecification.build(input[:resource_specification]) unless input[:resource_specification].nil?
        data['mergeStrategy'] = input[:merge_strategy] unless input[:merge_strategy].nil?
        data['filePassword'] = input[:file_password] unless input[:file_password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ImportResourceSpecification
    class ImportResourceSpecification
      def self.build(input)
        data = {}
        data['botImportSpecification'] = BotImportSpecification.build(input[:bot_import_specification]) unless input[:bot_import_specification].nil?
        data['botLocaleImportSpecification'] = BotLocaleImportSpecification.build(input[:bot_locale_import_specification]) unless input[:bot_locale_import_specification].nil?
        data['customVocabularyImportSpecification'] = CustomVocabularyImportSpecification.build(input[:custom_vocabulary_import_specification]) unless input[:custom_vocabulary_import_specification].nil?
        data
      end
    end

    # Structure Builder for CustomVocabularyImportSpecification
    class CustomVocabularyImportSpecification
      def self.build(input)
        data = {}
        data['botId'] = input[:bot_id] unless input[:bot_id].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['localeId'] = input[:locale_id] unless input[:locale_id].nil?
        data
      end
    end

    # Structure Builder for BotLocaleImportSpecification
    class BotLocaleImportSpecification
      def self.build(input)
        data = {}
        data['botId'] = input[:bot_id] unless input[:bot_id].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['localeId'] = input[:locale_id] unless input[:locale_id].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(input[:nlu_intent_confidence_threshold]) unless input[:nlu_intent_confidence_threshold].nil?
        data['voiceSettings'] = VoiceSettings.build(input[:voice_settings]) unless input[:voice_settings].nil?
        data
      end
    end

    # Structure Builder for BotImportSpecification
    class BotImportSpecification
      def self.build(input)
        data = {}
        data['botName'] = input[:bot_name] unless input[:bot_name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['dataPrivacy'] = DataPrivacy.build(input[:data_privacy]) unless input[:data_privacy].nil?
        data['idleSessionTTLInSeconds'] = input[:idle_session_ttl_in_seconds] unless input[:idle_session_ttl_in_seconds].nil?
        data['botTags'] = TagMap.build(input[:bot_tags]) unless input[:bot_tags].nil?
        data['testBotAliasTags'] = TagMap.build(input[:test_bot_alias_tags]) unless input[:test_bot_alias_tags].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceARN>s',
            resourceARN: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceARN>s',
            resourceARN: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateBot
    class UpdateBot
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['botName'] = input[:bot_name] unless input[:bot_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['dataPrivacy'] = DataPrivacy.build(input[:data_privacy]) unless input[:data_privacy].nil?
        data['idleSessionTTLInSeconds'] = input[:idle_session_ttl_in_seconds] unless input[:idle_session_ttl_in_seconds].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBotAlias
    class UpdateBotAlias
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botaliases/%<botAliasId>s',
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['botAliasName'] = input[:bot_alias_name] unless input[:bot_alias_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['botAliasLocaleSettings'] = BotAliasLocaleSettingsMap.build(input[:bot_alias_locale_settings]) unless input[:bot_alias_locale_settings].nil?
        data['conversationLogSettings'] = ConversationLogSettings.build(input[:conversation_log_settings]) unless input[:conversation_log_settings].nil?
        data['sentimentAnalysisSettings'] = SentimentAnalysisSettings.build(input[:sentiment_analysis_settings]) unless input[:sentiment_analysis_settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBotLocale
    class UpdateBotLocale
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(input[:nlu_intent_confidence_threshold]) unless input[:nlu_intent_confidence_threshold].nil?
        data['voiceSettings'] = VoiceSettings.build(input[:voice_settings]) unless input[:voice_settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBotRecommendation
    class UpdateBotRecommendation
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:bot_recommendation_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_recommendation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/botrecommendations/%<botRecommendationId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            botRecommendationId: Hearth::HTTP.uri_escape(input[:bot_recommendation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['encryptionSetting'] = EncryptionSetting.build(input[:encryption_setting]) unless input[:encryption_setting].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateExport
    class UpdateExport
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:export_id].to_s.empty?
          raise ArgumentError, "HTTP label :export_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/exports/%<exportId>s',
            exportId: Hearth::HTTP.uri_escape(input[:export_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filePassword'] = input[:file_password] unless input[:file_password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIntent
    class UpdateIntent
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:intent_id].to_s.empty?
          raise ArgumentError, "HTTP label :intent_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents/%<intentId>s',
            intentId: Hearth::HTTP.uri_escape(input[:intent_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['intentName'] = input[:intent_name] unless input[:intent_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['parentIntentSignature'] = input[:parent_intent_signature] unless input[:parent_intent_signature].nil?
        data['sampleUtterances'] = SampleUtterancesList.build(input[:sample_utterances]) unless input[:sample_utterances].nil?
        data['dialogCodeHook'] = DialogCodeHookSettings.build(input[:dialog_code_hook]) unless input[:dialog_code_hook].nil?
        data['fulfillmentCodeHook'] = FulfillmentCodeHookSettings.build(input[:fulfillment_code_hook]) unless input[:fulfillment_code_hook].nil?
        data['slotPriorities'] = SlotPrioritiesList.build(input[:slot_priorities]) unless input[:slot_priorities].nil?
        data['intentConfirmationSetting'] = IntentConfirmationSetting.build(input[:intent_confirmation_setting]) unless input[:intent_confirmation_setting].nil?
        data['intentClosingSetting'] = IntentClosingSetting.build(input[:intent_closing_setting]) unless input[:intent_closing_setting].nil?
        data['inputContexts'] = InputContextsList.build(input[:input_contexts]) unless input[:input_contexts].nil?
        data['outputContexts'] = OutputContextsList.build(input[:output_contexts]) unless input[:output_contexts].nil?
        data['kendraConfiguration'] = KendraConfiguration.build(input[:kendra_configuration]) unless input[:kendra_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SlotPrioritiesList
    class SlotPrioritiesList
      def self.build(input)
        data = []
        input.each do |element|
          data << SlotPriority.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SlotPriority
    class SlotPriority
      def self.build(input)
        data = {}
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['slotId'] = input[:slot_id] unless input[:slot_id].nil?
        data
      end
    end

    # Operation Builder for UpdateResourcePolicy
    class UpdateResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policy/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedRevisionId'] = input[:expected_revision_id].to_s unless input[:expected_revision_id].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSlot
    class UpdateSlot
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:slot_id].to_s.empty?
          raise ArgumentError, "HTTP label :slot_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:intent_id].to_s.empty?
          raise ArgumentError, "HTTP label :intent_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/intents/%<intentId>s/slots/%<slotId>s',
            slotId: Hearth::HTTP.uri_escape(input[:slot_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            intentId: Hearth::HTTP.uri_escape(input[:intent_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['slotName'] = input[:slot_name] unless input[:slot_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['slotTypeId'] = input[:slot_type_id] unless input[:slot_type_id].nil?
        data['valueElicitationSetting'] = SlotValueElicitationSetting.build(input[:value_elicitation_setting]) unless input[:value_elicitation_setting].nil?
        data['obfuscationSetting'] = ObfuscationSetting.build(input[:obfuscation_setting]) unless input[:obfuscation_setting].nil?
        data['multipleValuesSetting'] = MultipleValuesSetting.build(input[:multiple_values_setting]) unless input[:multiple_values_setting].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSlotType
    class UpdateSlotType
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:slot_type_id].to_s.empty?
          raise ArgumentError, "HTTP label :slot_type_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_version].to_s.empty?
          raise ArgumentError, "HTTP label :bot_version cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botversions/%<botVersion>s/botlocales/%<localeId>s/slottypes/%<slotTypeId>s',
            slotTypeId: Hearth::HTTP.uri_escape(input[:slot_type_id].to_s),
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botVersion: Hearth::HTTP.uri_escape(input[:bot_version].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['slotTypeName'] = input[:slot_type_name] unless input[:slot_type_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['slotTypeValues'] = SlotTypeValues.build(input[:slot_type_values]) unless input[:slot_type_values].nil?
        data['valueSelectionSetting'] = SlotValueSelectionSetting.build(input[:value_selection_setting]) unless input[:value_selection_setting].nil?
        data['parentSlotTypeSignature'] = input[:parent_slot_type_signature] unless input[:parent_slot_type_signature].nil?
        data['externalSourceSetting'] = ExternalSourceSetting.build(input[:external_source_setting]) unless input[:external_source_setting].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
