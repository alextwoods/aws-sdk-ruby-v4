# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelsV2
  module Stubs

    # Operation Stubber for BuildBotLocale
    class BuildBotLocale
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          bot_locale_status: 'bot_locale_status',
          last_build_submitted_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['botLocaleStatus'] = stub[:bot_locale_status] unless stub[:bot_locale_status].nil?
        data['lastBuildSubmittedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_build_submitted_date_time]).to_i unless stub[:last_build_submitted_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBot
    class CreateBot
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_name: 'bot_name',
          description: 'description',
          role_arn: 'role_arn',
          data_privacy: DataPrivacy.default(visited),
          idle_session_ttl_in_seconds: 1,
          bot_status: 'bot_status',
          creation_date_time: Time.now,
          bot_tags: TagMap.default(visited),
          test_bot_alias_tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['dataPrivacy'] = Stubs::DataPrivacy.stub(stub[:data_privacy]) unless stub[:data_privacy].nil?
        data['idleSessionTTLInSeconds'] = stub[:idle_session_ttl_in_seconds] unless stub[:idle_session_ttl_in_seconds].nil?
        data['botStatus'] = stub[:bot_status] unless stub[:bot_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['botTags'] = Stubs::TagMap.stub(stub[:bot_tags]) unless stub[:bot_tags].nil?
        data['testBotAliasTags'] = Stubs::TagMap.stub(stub[:test_bot_alias_tags]) unless stub[:test_bot_alias_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for DataPrivacy
    class DataPrivacy
      def self.default(visited=[])
        return nil if visited.include?('DataPrivacy')
        visited = visited + ['DataPrivacy']
        {
          child_directed: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataPrivacy.new
        data = {}
        data['childDirected'] = stub[:child_directed] unless stub[:child_directed].nil?
        data
      end
    end

    # Operation Stubber for CreateBotAlias
    class CreateBotAlias
      def self.default(visited=[])
        {
          bot_alias_id: 'bot_alias_id',
          bot_alias_name: 'bot_alias_name',
          description: 'description',
          bot_version: 'bot_version',
          bot_alias_locale_settings: BotAliasLocaleSettingsMap.default(visited),
          conversation_log_settings: ConversationLogSettings.default(visited),
          sentiment_analysis_settings: SentimentAnalysisSettings.default(visited),
          bot_alias_status: 'bot_alias_status',
          bot_id: 'bot_id',
          creation_date_time: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botAliasId'] = stub[:bot_alias_id] unless stub[:bot_alias_id].nil?
        data['botAliasName'] = stub[:bot_alias_name] unless stub[:bot_alias_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['botAliasLocaleSettings'] = Stubs::BotAliasLocaleSettingsMap.stub(stub[:bot_alias_locale_settings]) unless stub[:bot_alias_locale_settings].nil?
        data['conversationLogSettings'] = Stubs::ConversationLogSettings.stub(stub[:conversation_log_settings]) unless stub[:conversation_log_settings].nil?
        data['sentimentAnalysisSettings'] = Stubs::SentimentAnalysisSettings.stub(stub[:sentiment_analysis_settings]) unless stub[:sentiment_analysis_settings].nil?
        data['botAliasStatus'] = stub[:bot_alias_status] unless stub[:bot_alias_status].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SentimentAnalysisSettings
    class SentimentAnalysisSettings
      def self.default(visited=[])
        return nil if visited.include?('SentimentAnalysisSettings')
        visited = visited + ['SentimentAnalysisSettings']
        {
          detect_sentiment: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SentimentAnalysisSettings.new
        data = {}
        data['detectSentiment'] = stub[:detect_sentiment] unless stub[:detect_sentiment].nil?
        data
      end
    end

    # Structure Stubber for ConversationLogSettings
    class ConversationLogSettings
      def self.default(visited=[])
        return nil if visited.include?('ConversationLogSettings')
        visited = visited + ['ConversationLogSettings']
        {
          text_log_settings: TextLogSettingsList.default(visited),
          audio_log_settings: AudioLogSettingsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConversationLogSettings.new
        data = {}
        data['textLogSettings'] = Stubs::TextLogSettingsList.stub(stub[:text_log_settings]) unless stub[:text_log_settings].nil?
        data['audioLogSettings'] = Stubs::AudioLogSettingsList.stub(stub[:audio_log_settings]) unless stub[:audio_log_settings].nil?
        data
      end
    end

    # List Stubber for AudioLogSettingsList
    class AudioLogSettingsList
      def self.default(visited=[])
        return nil if visited.include?('AudioLogSettingsList')
        visited = visited + ['AudioLogSettingsList']
        [
          AudioLogSetting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AudioLogSetting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AudioLogSetting
    class AudioLogSetting
      def self.default(visited=[])
        return nil if visited.include?('AudioLogSetting')
        visited = visited + ['AudioLogSetting']
        {
          enabled: false,
          destination: AudioLogDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioLogSetting.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['destination'] = Stubs::AudioLogDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data
      end
    end

    # Structure Stubber for AudioLogDestination
    class AudioLogDestination
      def self.default(visited=[])
        return nil if visited.include?('AudioLogDestination')
        visited = visited + ['AudioLogDestination']
        {
          s3_bucket: S3BucketLogDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioLogDestination.new
        data = {}
        data['s3Bucket'] = Stubs::S3BucketLogDestination.stub(stub[:s3_bucket]) unless stub[:s3_bucket].nil?
        data
      end
    end

    # Structure Stubber for S3BucketLogDestination
    class S3BucketLogDestination
      def self.default(visited=[])
        return nil if visited.include?('S3BucketLogDestination')
        visited = visited + ['S3BucketLogDestination']
        {
          kms_key_arn: 'kms_key_arn',
          s3_bucket_arn: 's3_bucket_arn',
          log_prefix: 'log_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketLogDestination.new
        data = {}
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['s3BucketArn'] = stub[:s3_bucket_arn] unless stub[:s3_bucket_arn].nil?
        data['logPrefix'] = stub[:log_prefix] unless stub[:log_prefix].nil?
        data
      end
    end

    # List Stubber for TextLogSettingsList
    class TextLogSettingsList
      def self.default(visited=[])
        return nil if visited.include?('TextLogSettingsList')
        visited = visited + ['TextLogSettingsList']
        [
          TextLogSetting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TextLogSetting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TextLogSetting
    class TextLogSetting
      def self.default(visited=[])
        return nil if visited.include?('TextLogSetting')
        visited = visited + ['TextLogSetting']
        {
          enabled: false,
          destination: TextLogDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TextLogSetting.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['destination'] = Stubs::TextLogDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data
      end
    end

    # Structure Stubber for TextLogDestination
    class TextLogDestination
      def self.default(visited=[])
        return nil if visited.include?('TextLogDestination')
        visited = visited + ['TextLogDestination']
        {
          cloud_watch: CloudWatchLogGroupLogDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TextLogDestination.new
        data = {}
        data['cloudWatch'] = Stubs::CloudWatchLogGroupLogDestination.stub(stub[:cloud_watch]) unless stub[:cloud_watch].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchLogGroupLogDestination
    class CloudWatchLogGroupLogDestination
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogGroupLogDestination')
        visited = visited + ['CloudWatchLogGroupLogDestination']
        {
          cloud_watch_log_group_arn: 'cloud_watch_log_group_arn',
          log_prefix: 'log_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLogGroupLogDestination.new
        data = {}
        data['cloudWatchLogGroupArn'] = stub[:cloud_watch_log_group_arn] unless stub[:cloud_watch_log_group_arn].nil?
        data['logPrefix'] = stub[:log_prefix] unless stub[:log_prefix].nil?
        data
      end
    end

    # Map Stubber for BotAliasLocaleSettingsMap
    class BotAliasLocaleSettingsMap
      def self.default(visited=[])
        return nil if visited.include?('BotAliasLocaleSettingsMap')
        visited = visited + ['BotAliasLocaleSettingsMap']
        {
          test_key: BotAliasLocaleSettings.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::BotAliasLocaleSettings.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for BotAliasLocaleSettings
    class BotAliasLocaleSettings
      def self.default(visited=[])
        return nil if visited.include?('BotAliasLocaleSettings')
        visited = visited + ['BotAliasLocaleSettings']
        {
          enabled: false,
          code_hook_specification: CodeHookSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BotAliasLocaleSettings.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['codeHookSpecification'] = Stubs::CodeHookSpecification.stub(stub[:code_hook_specification]) unless stub[:code_hook_specification].nil?
        data
      end
    end

    # Structure Stubber for CodeHookSpecification
    class CodeHookSpecification
      def self.default(visited=[])
        return nil if visited.include?('CodeHookSpecification')
        visited = visited + ['CodeHookSpecification']
        {
          lambda_code_hook: LambdaCodeHook.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeHookSpecification.new
        data = {}
        data['lambdaCodeHook'] = Stubs::LambdaCodeHook.stub(stub[:lambda_code_hook]) unless stub[:lambda_code_hook].nil?
        data
      end
    end

    # Structure Stubber for LambdaCodeHook
    class LambdaCodeHook
      def self.default(visited=[])
        return nil if visited.include?('LambdaCodeHook')
        visited = visited + ['LambdaCodeHook']
        {
          lambda_arn: 'lambda_arn',
          code_hook_interface_version: 'code_hook_interface_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaCodeHook.new
        data = {}
        data['lambdaARN'] = stub[:lambda_arn] unless stub[:lambda_arn].nil?
        data['codeHookInterfaceVersion'] = stub[:code_hook_interface_version] unless stub[:code_hook_interface_version].nil?
        data
      end
    end

    # Operation Stubber for CreateBotLocale
    class CreateBotLocale
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_name: 'locale_name',
          locale_id: 'locale_id',
          description: 'description',
          nlu_intent_confidence_threshold: 1.0,
          voice_settings: VoiceSettings.default(visited),
          bot_locale_status: 'bot_locale_status',
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeName'] = stub[:locale_name] unless stub[:locale_name].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(stub[:nlu_intent_confidence_threshold])
        data['voiceSettings'] = Stubs::VoiceSettings.stub(stub[:voice_settings]) unless stub[:voice_settings].nil?
        data['botLocaleStatus'] = stub[:bot_locale_status] unless stub[:bot_locale_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VoiceSettings
    class VoiceSettings
      def self.default(visited=[])
        return nil if visited.include?('VoiceSettings')
        visited = visited + ['VoiceSettings']
        {
          voice_id: 'voice_id',
          engine: 'engine',
        }
      end

      def self.stub(stub)
        stub ||= Types::VoiceSettings.new
        data = {}
        data['voiceId'] = stub[:voice_id] unless stub[:voice_id].nil?
        data['engine'] = stub[:engine] unless stub[:engine].nil?
        data
      end
    end

    # Operation Stubber for CreateBotVersion
    class CreateBotVersion
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          description: 'description',
          bot_version: 'bot_version',
          bot_version_locale_specification: BotVersionLocaleSpecification.default(visited),
          bot_status: 'bot_status',
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['botVersionLocaleSpecification'] = Stubs::BotVersionLocaleSpecification.stub(stub[:bot_version_locale_specification]) unless stub[:bot_version_locale_specification].nil?
        data['botStatus'] = stub[:bot_status] unless stub[:bot_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for BotVersionLocaleSpecification
    class BotVersionLocaleSpecification
      def self.default(visited=[])
        return nil if visited.include?('BotVersionLocaleSpecification')
        visited = visited + ['BotVersionLocaleSpecification']
        {
          test_key: BotVersionLocaleDetails.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::BotVersionLocaleDetails.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for BotVersionLocaleDetails
    class BotVersionLocaleDetails
      def self.default(visited=[])
        return nil if visited.include?('BotVersionLocaleDetails')
        visited = visited + ['BotVersionLocaleDetails']
        {
          source_bot_version: 'source_bot_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::BotVersionLocaleDetails.new
        data = {}
        data['sourceBotVersion'] = stub[:source_bot_version] unless stub[:source_bot_version].nil?
        data
      end
    end

    # Operation Stubber for CreateExport
    class CreateExport
      def self.default(visited=[])
        {
          export_id: 'export_id',
          resource_specification: ExportResourceSpecification.default(visited),
          file_format: 'file_format',
          export_status: 'export_status',
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        data['resourceSpecification'] = Stubs::ExportResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['fileFormat'] = stub[:file_format] unless stub[:file_format].nil?
        data['exportStatus'] = stub[:export_status] unless stub[:export_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ExportResourceSpecification
    class ExportResourceSpecification
      def self.default(visited=[])
        return nil if visited.include?('ExportResourceSpecification')
        visited = visited + ['ExportResourceSpecification']
        {
          bot_export_specification: BotExportSpecification.default(visited),
          bot_locale_export_specification: BotLocaleExportSpecification.default(visited),
          custom_vocabulary_export_specification: CustomVocabularyExportSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportResourceSpecification.new
        data = {}
        data['botExportSpecification'] = Stubs::BotExportSpecification.stub(stub[:bot_export_specification]) unless stub[:bot_export_specification].nil?
        data['botLocaleExportSpecification'] = Stubs::BotLocaleExportSpecification.stub(stub[:bot_locale_export_specification]) unless stub[:bot_locale_export_specification].nil?
        data['customVocabularyExportSpecification'] = Stubs::CustomVocabularyExportSpecification.stub(stub[:custom_vocabulary_export_specification]) unless stub[:custom_vocabulary_export_specification].nil?
        data
      end
    end

    # Structure Stubber for CustomVocabularyExportSpecification
    class CustomVocabularyExportSpecification
      def self.default(visited=[])
        return nil if visited.include?('CustomVocabularyExportSpecification')
        visited = visited + ['CustomVocabularyExportSpecification']
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomVocabularyExportSpecification.new
        data = {}
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data
      end
    end

    # Structure Stubber for BotLocaleExportSpecification
    class BotLocaleExportSpecification
      def self.default(visited=[])
        return nil if visited.include?('BotLocaleExportSpecification')
        visited = visited + ['BotLocaleExportSpecification']
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BotLocaleExportSpecification.new
        data = {}
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data
      end
    end

    # Structure Stubber for BotExportSpecification
    class BotExportSpecification
      def self.default(visited=[])
        return nil if visited.include?('BotExportSpecification')
        visited = visited + ['BotExportSpecification']
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::BotExportSpecification.new
        data = {}
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data
      end
    end

    # Operation Stubber for CreateIntent
    class CreateIntent
      def self.default(visited=[])
        {
          intent_id: 'intent_id',
          intent_name: 'intent_name',
          description: 'description',
          parent_intent_signature: 'parent_intent_signature',
          sample_utterances: SampleUtterancesList.default(visited),
          dialog_code_hook: DialogCodeHookSettings.default(visited),
          fulfillment_code_hook: FulfillmentCodeHookSettings.default(visited),
          intent_confirmation_setting: IntentConfirmationSetting.default(visited),
          intent_closing_setting: IntentClosingSetting.default(visited),
          input_contexts: InputContextsList.default(visited),
          output_contexts: OutputContextsList.default(visited),
          kendra_configuration: KendraConfiguration.default(visited),
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['intentId'] = stub[:intent_id] unless stub[:intent_id].nil?
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['parentIntentSignature'] = stub[:parent_intent_signature] unless stub[:parent_intent_signature].nil?
        data['sampleUtterances'] = Stubs::SampleUtterancesList.stub(stub[:sample_utterances]) unless stub[:sample_utterances].nil?
        data['dialogCodeHook'] = Stubs::DialogCodeHookSettings.stub(stub[:dialog_code_hook]) unless stub[:dialog_code_hook].nil?
        data['fulfillmentCodeHook'] = Stubs::FulfillmentCodeHookSettings.stub(stub[:fulfillment_code_hook]) unless stub[:fulfillment_code_hook].nil?
        data['intentConfirmationSetting'] = Stubs::IntentConfirmationSetting.stub(stub[:intent_confirmation_setting]) unless stub[:intent_confirmation_setting].nil?
        data['intentClosingSetting'] = Stubs::IntentClosingSetting.stub(stub[:intent_closing_setting]) unless stub[:intent_closing_setting].nil?
        data['inputContexts'] = Stubs::InputContextsList.stub(stub[:input_contexts]) unless stub[:input_contexts].nil?
        data['outputContexts'] = Stubs::OutputContextsList.stub(stub[:output_contexts]) unless stub[:output_contexts].nil?
        data['kendraConfiguration'] = Stubs::KendraConfiguration.stub(stub[:kendra_configuration]) unless stub[:kendra_configuration].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for KendraConfiguration
    class KendraConfiguration
      def self.default(visited=[])
        return nil if visited.include?('KendraConfiguration')
        visited = visited + ['KendraConfiguration']
        {
          kendra_index: 'kendra_index',
          query_filter_string_enabled: false,
          query_filter_string: 'query_filter_string',
        }
      end

      def self.stub(stub)
        stub ||= Types::KendraConfiguration.new
        data = {}
        data['kendraIndex'] = stub[:kendra_index] unless stub[:kendra_index].nil?
        data['queryFilterStringEnabled'] = stub[:query_filter_string_enabled] unless stub[:query_filter_string_enabled].nil?
        data['queryFilterString'] = stub[:query_filter_string] unless stub[:query_filter_string].nil?
        data
      end
    end

    # List Stubber for OutputContextsList
    class OutputContextsList
      def self.default(visited=[])
        return nil if visited.include?('OutputContextsList')
        visited = visited + ['OutputContextsList']
        [
          OutputContext.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputContext.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputContext
    class OutputContext
      def self.default(visited=[])
        return nil if visited.include?('OutputContext')
        visited = visited + ['OutputContext']
        {
          name: 'name',
          time_to_live_in_seconds: 1,
          turns_to_live: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputContext.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['timeToLiveInSeconds'] = stub[:time_to_live_in_seconds] unless stub[:time_to_live_in_seconds].nil?
        data['turnsToLive'] = stub[:turns_to_live] unless stub[:turns_to_live].nil?
        data
      end
    end

    # List Stubber for InputContextsList
    class InputContextsList
      def self.default(visited=[])
        return nil if visited.include?('InputContextsList')
        visited = visited + ['InputContextsList']
        [
          InputContext.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputContext.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputContext
    class InputContext
      def self.default(visited=[])
        return nil if visited.include?('InputContext')
        visited = visited + ['InputContext']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputContext.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for IntentClosingSetting
    class IntentClosingSetting
      def self.default(visited=[])
        return nil if visited.include?('IntentClosingSetting')
        visited = visited + ['IntentClosingSetting']
        {
          closing_response: ResponseSpecification.default(visited),
          active: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::IntentClosingSetting.new
        data = {}
        data['closingResponse'] = Stubs::ResponseSpecification.stub(stub[:closing_response]) unless stub[:closing_response].nil?
        data['active'] = stub[:active] unless stub[:active].nil?
        data
      end
    end

    # Structure Stubber for ResponseSpecification
    class ResponseSpecification
      def self.default(visited=[])
        return nil if visited.include?('ResponseSpecification')
        visited = visited + ['ResponseSpecification']
        {
          message_groups: MessageGroupsList.default(visited),
          allow_interrupt: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseSpecification.new
        data = {}
        data['messageGroups'] = Stubs::MessageGroupsList.stub(stub[:message_groups]) unless stub[:message_groups].nil?
        data['allowInterrupt'] = stub[:allow_interrupt] unless stub[:allow_interrupt].nil?
        data
      end
    end

    # List Stubber for MessageGroupsList
    class MessageGroupsList
      def self.default(visited=[])
        return nil if visited.include?('MessageGroupsList')
        visited = visited + ['MessageGroupsList']
        [
          MessageGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MessageGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MessageGroup
    class MessageGroup
      def self.default(visited=[])
        return nil if visited.include?('MessageGroup')
        visited = visited + ['MessageGroup']
        {
          message: Message.default(visited),
          variations: MessageVariationsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MessageGroup.new
        data = {}
        data['message'] = Stubs::Message.stub(stub[:message]) unless stub[:message].nil?
        data['variations'] = Stubs::MessageVariationsList.stub(stub[:variations]) unless stub[:variations].nil?
        data
      end
    end

    # List Stubber for MessageVariationsList
    class MessageVariationsList
      def self.default(visited=[])
        return nil if visited.include?('MessageVariationsList')
        visited = visited + ['MessageVariationsList']
        [
          Message.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Message.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Message
    class Message
      def self.default(visited=[])
        return nil if visited.include?('Message')
        visited = visited + ['Message']
        {
          plain_text_message: PlainTextMessage.default(visited),
          custom_payload: CustomPayload.default(visited),
          ssml_message: SSMLMessage.default(visited),
          image_response_card: ImageResponseCard.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Message.new
        data = {}
        data['plainTextMessage'] = Stubs::PlainTextMessage.stub(stub[:plain_text_message]) unless stub[:plain_text_message].nil?
        data['customPayload'] = Stubs::CustomPayload.stub(stub[:custom_payload]) unless stub[:custom_payload].nil?
        data['ssmlMessage'] = Stubs::SSMLMessage.stub(stub[:ssml_message]) unless stub[:ssml_message].nil?
        data['imageResponseCard'] = Stubs::ImageResponseCard.stub(stub[:image_response_card]) unless stub[:image_response_card].nil?
        data
      end
    end

    # Structure Stubber for ImageResponseCard
    class ImageResponseCard
      def self.default(visited=[])
        return nil if visited.include?('ImageResponseCard')
        visited = visited + ['ImageResponseCard']
        {
          title: 'title',
          subtitle: 'subtitle',
          image_url: 'image_url',
          buttons: ButtonsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageResponseCard.new
        data = {}
        data['title'] = stub[:title] unless stub[:title].nil?
        data['subtitle'] = stub[:subtitle] unless stub[:subtitle].nil?
        data['imageUrl'] = stub[:image_url] unless stub[:image_url].nil?
        data['buttons'] = Stubs::ButtonsList.stub(stub[:buttons]) unless stub[:buttons].nil?
        data
      end
    end

    # List Stubber for ButtonsList
    class ButtonsList
      def self.default(visited=[])
        return nil if visited.include?('ButtonsList')
        visited = visited + ['ButtonsList']
        [
          Button.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Button.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Button
    class Button
      def self.default(visited=[])
        return nil if visited.include?('Button')
        visited = visited + ['Button']
        {
          text: 'text',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Button.new
        data = {}
        data['text'] = stub[:text] unless stub[:text].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for SSMLMessage
    class SSMLMessage
      def self.default(visited=[])
        return nil if visited.include?('SSMLMessage')
        visited = visited + ['SSMLMessage']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SSMLMessage.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for CustomPayload
    class CustomPayload
      def self.default(visited=[])
        return nil if visited.include?('CustomPayload')
        visited = visited + ['CustomPayload']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomPayload.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for PlainTextMessage
    class PlainTextMessage
      def self.default(visited=[])
        return nil if visited.include?('PlainTextMessage')
        visited = visited + ['PlainTextMessage']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlainTextMessage.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for IntentConfirmationSetting
    class IntentConfirmationSetting
      def self.default(visited=[])
        return nil if visited.include?('IntentConfirmationSetting')
        visited = visited + ['IntentConfirmationSetting']
        {
          prompt_specification: PromptSpecification.default(visited),
          declination_response: ResponseSpecification.default(visited),
          active: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::IntentConfirmationSetting.new
        data = {}
        data['promptSpecification'] = Stubs::PromptSpecification.stub(stub[:prompt_specification]) unless stub[:prompt_specification].nil?
        data['declinationResponse'] = Stubs::ResponseSpecification.stub(stub[:declination_response]) unless stub[:declination_response].nil?
        data['active'] = stub[:active] unless stub[:active].nil?
        data
      end
    end

    # Structure Stubber for PromptSpecification
    class PromptSpecification
      def self.default(visited=[])
        return nil if visited.include?('PromptSpecification')
        visited = visited + ['PromptSpecification']
        {
          message_groups: MessageGroupsList.default(visited),
          max_retries: 1,
          allow_interrupt: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PromptSpecification.new
        data = {}
        data['messageGroups'] = Stubs::MessageGroupsList.stub(stub[:message_groups]) unless stub[:message_groups].nil?
        data['maxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['allowInterrupt'] = stub[:allow_interrupt] unless stub[:allow_interrupt].nil?
        data
      end
    end

    # Structure Stubber for FulfillmentCodeHookSettings
    class FulfillmentCodeHookSettings
      def self.default(visited=[])
        return nil if visited.include?('FulfillmentCodeHookSettings')
        visited = visited + ['FulfillmentCodeHookSettings']
        {
          enabled: false,
          post_fulfillment_status_specification: PostFulfillmentStatusSpecification.default(visited),
          fulfillment_updates_specification: FulfillmentUpdatesSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FulfillmentCodeHookSettings.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['postFulfillmentStatusSpecification'] = Stubs::PostFulfillmentStatusSpecification.stub(stub[:post_fulfillment_status_specification]) unless stub[:post_fulfillment_status_specification].nil?
        data['fulfillmentUpdatesSpecification'] = Stubs::FulfillmentUpdatesSpecification.stub(stub[:fulfillment_updates_specification]) unless stub[:fulfillment_updates_specification].nil?
        data
      end
    end

    # Structure Stubber for FulfillmentUpdatesSpecification
    class FulfillmentUpdatesSpecification
      def self.default(visited=[])
        return nil if visited.include?('FulfillmentUpdatesSpecification')
        visited = visited + ['FulfillmentUpdatesSpecification']
        {
          active: false,
          start_response: FulfillmentStartResponseSpecification.default(visited),
          update_response: FulfillmentUpdateResponseSpecification.default(visited),
          timeout_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FulfillmentUpdatesSpecification.new
        data = {}
        data['active'] = stub[:active] unless stub[:active].nil?
        data['startResponse'] = Stubs::FulfillmentStartResponseSpecification.stub(stub[:start_response]) unless stub[:start_response].nil?
        data['updateResponse'] = Stubs::FulfillmentUpdateResponseSpecification.stub(stub[:update_response]) unless stub[:update_response].nil?
        data['timeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for FulfillmentUpdateResponseSpecification
    class FulfillmentUpdateResponseSpecification
      def self.default(visited=[])
        return nil if visited.include?('FulfillmentUpdateResponseSpecification')
        visited = visited + ['FulfillmentUpdateResponseSpecification']
        {
          frequency_in_seconds: 1,
          message_groups: MessageGroupsList.default(visited),
          allow_interrupt: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FulfillmentUpdateResponseSpecification.new
        data = {}
        data['frequencyInSeconds'] = stub[:frequency_in_seconds] unless stub[:frequency_in_seconds].nil?
        data['messageGroups'] = Stubs::MessageGroupsList.stub(stub[:message_groups]) unless stub[:message_groups].nil?
        data['allowInterrupt'] = stub[:allow_interrupt] unless stub[:allow_interrupt].nil?
        data
      end
    end

    # Structure Stubber for FulfillmentStartResponseSpecification
    class FulfillmentStartResponseSpecification
      def self.default(visited=[])
        return nil if visited.include?('FulfillmentStartResponseSpecification')
        visited = visited + ['FulfillmentStartResponseSpecification']
        {
          delay_in_seconds: 1,
          message_groups: MessageGroupsList.default(visited),
          allow_interrupt: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FulfillmentStartResponseSpecification.new
        data = {}
        data['delayInSeconds'] = stub[:delay_in_seconds] unless stub[:delay_in_seconds].nil?
        data['messageGroups'] = Stubs::MessageGroupsList.stub(stub[:message_groups]) unless stub[:message_groups].nil?
        data['allowInterrupt'] = stub[:allow_interrupt] unless stub[:allow_interrupt].nil?
        data
      end
    end

    # Structure Stubber for PostFulfillmentStatusSpecification
    class PostFulfillmentStatusSpecification
      def self.default(visited=[])
        return nil if visited.include?('PostFulfillmentStatusSpecification')
        visited = visited + ['PostFulfillmentStatusSpecification']
        {
          success_response: ResponseSpecification.default(visited),
          failure_response: ResponseSpecification.default(visited),
          timeout_response: ResponseSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PostFulfillmentStatusSpecification.new
        data = {}
        data['successResponse'] = Stubs::ResponseSpecification.stub(stub[:success_response]) unless stub[:success_response].nil?
        data['failureResponse'] = Stubs::ResponseSpecification.stub(stub[:failure_response]) unless stub[:failure_response].nil?
        data['timeoutResponse'] = Stubs::ResponseSpecification.stub(stub[:timeout_response]) unless stub[:timeout_response].nil?
        data
      end
    end

    # Structure Stubber for DialogCodeHookSettings
    class DialogCodeHookSettings
      def self.default(visited=[])
        return nil if visited.include?('DialogCodeHookSettings')
        visited = visited + ['DialogCodeHookSettings']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DialogCodeHookSettings.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # List Stubber for SampleUtterancesList
    class SampleUtterancesList
      def self.default(visited=[])
        return nil if visited.include?('SampleUtterancesList')
        visited = visited + ['SampleUtterancesList']
        [
          SampleUtterance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SampleUtterance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SampleUtterance
    class SampleUtterance
      def self.default(visited=[])
        return nil if visited.include?('SampleUtterance')
        visited = visited + ['SampleUtterance']
        {
          utterance: 'utterance',
        }
      end

      def self.stub(stub)
        stub ||= Types::SampleUtterance.new
        data = {}
        data['utterance'] = stub[:utterance] unless stub[:utterance].nil?
        data
      end
    end

    # Operation Stubber for CreateResourcePolicy
    class CreateResourcePolicy
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateResourcePolicyStatement
    class CreateResourcePolicyStatement
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSlot
    class CreateSlot
      def self.default(visited=[])
        {
          slot_id: 'slot_id',
          slot_name: 'slot_name',
          description: 'description',
          slot_type_id: 'slot_type_id',
          value_elicitation_setting: SlotValueElicitationSetting.default(visited),
          obfuscation_setting: ObfuscationSetting.default(visited),
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          intent_id: 'intent_id',
          creation_date_time: Time.now,
          multiple_values_setting: MultipleValuesSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['slotId'] = stub[:slot_id] unless stub[:slot_id].nil?
        data['slotName'] = stub[:slot_name] unless stub[:slot_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slotTypeId'] = stub[:slot_type_id] unless stub[:slot_type_id].nil?
        data['valueElicitationSetting'] = Stubs::SlotValueElicitationSetting.stub(stub[:value_elicitation_setting]) unless stub[:value_elicitation_setting].nil?
        data['obfuscationSetting'] = Stubs::ObfuscationSetting.stub(stub[:obfuscation_setting]) unless stub[:obfuscation_setting].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['intentId'] = stub[:intent_id] unless stub[:intent_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['multipleValuesSetting'] = Stubs::MultipleValuesSetting.stub(stub[:multiple_values_setting]) unless stub[:multiple_values_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MultipleValuesSetting
    class MultipleValuesSetting
      def self.default(visited=[])
        return nil if visited.include?('MultipleValuesSetting')
        visited = visited + ['MultipleValuesSetting']
        {
          allow_multiple_values: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::MultipleValuesSetting.new
        data = {}
        data['allowMultipleValues'] = stub[:allow_multiple_values] unless stub[:allow_multiple_values].nil?
        data
      end
    end

    # Structure Stubber for ObfuscationSetting
    class ObfuscationSetting
      def self.default(visited=[])
        return nil if visited.include?('ObfuscationSetting')
        visited = visited + ['ObfuscationSetting']
        {
          obfuscation_setting_type: 'obfuscation_setting_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ObfuscationSetting.new
        data = {}
        data['obfuscationSettingType'] = stub[:obfuscation_setting_type] unless stub[:obfuscation_setting_type].nil?
        data
      end
    end

    # Structure Stubber for SlotValueElicitationSetting
    class SlotValueElicitationSetting
      def self.default(visited=[])
        return nil if visited.include?('SlotValueElicitationSetting')
        visited = visited + ['SlotValueElicitationSetting']
        {
          default_value_specification: SlotDefaultValueSpecification.default(visited),
          slot_constraint: 'slot_constraint',
          prompt_specification: PromptSpecification.default(visited),
          sample_utterances: SampleUtterancesList.default(visited),
          wait_and_continue_specification: WaitAndContinueSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotValueElicitationSetting.new
        data = {}
        data['defaultValueSpecification'] = Stubs::SlotDefaultValueSpecification.stub(stub[:default_value_specification]) unless stub[:default_value_specification].nil?
        data['slotConstraint'] = stub[:slot_constraint] unless stub[:slot_constraint].nil?
        data['promptSpecification'] = Stubs::PromptSpecification.stub(stub[:prompt_specification]) unless stub[:prompt_specification].nil?
        data['sampleUtterances'] = Stubs::SampleUtterancesList.stub(stub[:sample_utterances]) unless stub[:sample_utterances].nil?
        data['waitAndContinueSpecification'] = Stubs::WaitAndContinueSpecification.stub(stub[:wait_and_continue_specification]) unless stub[:wait_and_continue_specification].nil?
        data
      end
    end

    # Structure Stubber for WaitAndContinueSpecification
    class WaitAndContinueSpecification
      def self.default(visited=[])
        return nil if visited.include?('WaitAndContinueSpecification')
        visited = visited + ['WaitAndContinueSpecification']
        {
          waiting_response: ResponseSpecification.default(visited),
          continue_response: ResponseSpecification.default(visited),
          still_waiting_response: StillWaitingResponseSpecification.default(visited),
          active: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::WaitAndContinueSpecification.new
        data = {}
        data['waitingResponse'] = Stubs::ResponseSpecification.stub(stub[:waiting_response]) unless stub[:waiting_response].nil?
        data['continueResponse'] = Stubs::ResponseSpecification.stub(stub[:continue_response]) unless stub[:continue_response].nil?
        data['stillWaitingResponse'] = Stubs::StillWaitingResponseSpecification.stub(stub[:still_waiting_response]) unless stub[:still_waiting_response].nil?
        data['active'] = stub[:active] unless stub[:active].nil?
        data
      end
    end

    # Structure Stubber for StillWaitingResponseSpecification
    class StillWaitingResponseSpecification
      def self.default(visited=[])
        return nil if visited.include?('StillWaitingResponseSpecification')
        visited = visited + ['StillWaitingResponseSpecification']
        {
          message_groups: MessageGroupsList.default(visited),
          frequency_in_seconds: 1,
          timeout_in_seconds: 1,
          allow_interrupt: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::StillWaitingResponseSpecification.new
        data = {}
        data['messageGroups'] = Stubs::MessageGroupsList.stub(stub[:message_groups]) unless stub[:message_groups].nil?
        data['frequencyInSeconds'] = stub[:frequency_in_seconds] unless stub[:frequency_in_seconds].nil?
        data['timeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data['allowInterrupt'] = stub[:allow_interrupt] unless stub[:allow_interrupt].nil?
        data
      end
    end

    # Structure Stubber for SlotDefaultValueSpecification
    class SlotDefaultValueSpecification
      def self.default(visited=[])
        return nil if visited.include?('SlotDefaultValueSpecification')
        visited = visited + ['SlotDefaultValueSpecification']
        {
          default_value_list: SlotDefaultValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotDefaultValueSpecification.new
        data = {}
        data['defaultValueList'] = Stubs::SlotDefaultValueList.stub(stub[:default_value_list]) unless stub[:default_value_list].nil?
        data
      end
    end

    # List Stubber for SlotDefaultValueList
    class SlotDefaultValueList
      def self.default(visited=[])
        return nil if visited.include?('SlotDefaultValueList')
        visited = visited + ['SlotDefaultValueList']
        [
          SlotDefaultValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SlotDefaultValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SlotDefaultValue
    class SlotDefaultValue
      def self.default(visited=[])
        return nil if visited.include?('SlotDefaultValue')
        visited = visited + ['SlotDefaultValue']
        {
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotDefaultValue.new
        data = {}
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # Operation Stubber for CreateSlotType
    class CreateSlotType
      def self.default(visited=[])
        {
          slot_type_id: 'slot_type_id',
          slot_type_name: 'slot_type_name',
          description: 'description',
          slot_type_values: SlotTypeValues.default(visited),
          value_selection_setting: SlotValueSelectionSetting.default(visited),
          parent_slot_type_signature: 'parent_slot_type_signature',
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          creation_date_time: Time.now,
          external_source_setting: ExternalSourceSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['slotTypeId'] = stub[:slot_type_id] unless stub[:slot_type_id].nil?
        data['slotTypeName'] = stub[:slot_type_name] unless stub[:slot_type_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slotTypeValues'] = Stubs::SlotTypeValues.stub(stub[:slot_type_values]) unless stub[:slot_type_values].nil?
        data['valueSelectionSetting'] = Stubs::SlotValueSelectionSetting.stub(stub[:value_selection_setting]) unless stub[:value_selection_setting].nil?
        data['parentSlotTypeSignature'] = stub[:parent_slot_type_signature] unless stub[:parent_slot_type_signature].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['externalSourceSetting'] = Stubs::ExternalSourceSetting.stub(stub[:external_source_setting]) unless stub[:external_source_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ExternalSourceSetting
    class ExternalSourceSetting
      def self.default(visited=[])
        return nil if visited.include?('ExternalSourceSetting')
        visited = visited + ['ExternalSourceSetting']
        {
          grammar_slot_type_setting: GrammarSlotTypeSetting.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExternalSourceSetting.new
        data = {}
        data['grammarSlotTypeSetting'] = Stubs::GrammarSlotTypeSetting.stub(stub[:grammar_slot_type_setting]) unless stub[:grammar_slot_type_setting].nil?
        data
      end
    end

    # Structure Stubber for GrammarSlotTypeSetting
    class GrammarSlotTypeSetting
      def self.default(visited=[])
        return nil if visited.include?('GrammarSlotTypeSetting')
        visited = visited + ['GrammarSlotTypeSetting']
        {
          source: GrammarSlotTypeSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrammarSlotTypeSetting.new
        data = {}
        data['source'] = Stubs::GrammarSlotTypeSource.stub(stub[:source]) unless stub[:source].nil?
        data
      end
    end

    # Structure Stubber for GrammarSlotTypeSource
    class GrammarSlotTypeSource
      def self.default(visited=[])
        return nil if visited.include?('GrammarSlotTypeSource')
        visited = visited + ['GrammarSlotTypeSource']
        {
          s3_bucket_name: 's3_bucket_name',
          s3_object_key: 's3_object_key',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::GrammarSlotTypeSource.new
        data = {}
        data['s3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['s3ObjectKey'] = stub[:s3_object_key] unless stub[:s3_object_key].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Structure Stubber for SlotValueSelectionSetting
    class SlotValueSelectionSetting
      def self.default(visited=[])
        return nil if visited.include?('SlotValueSelectionSetting')
        visited = visited + ['SlotValueSelectionSetting']
        {
          resolution_strategy: 'resolution_strategy',
          regex_filter: SlotValueRegexFilter.default(visited),
          advanced_recognition_setting: AdvancedRecognitionSetting.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotValueSelectionSetting.new
        data = {}
        data['resolutionStrategy'] = stub[:resolution_strategy] unless stub[:resolution_strategy].nil?
        data['regexFilter'] = Stubs::SlotValueRegexFilter.stub(stub[:regex_filter]) unless stub[:regex_filter].nil?
        data['advancedRecognitionSetting'] = Stubs::AdvancedRecognitionSetting.stub(stub[:advanced_recognition_setting]) unless stub[:advanced_recognition_setting].nil?
        data
      end
    end

    # Structure Stubber for AdvancedRecognitionSetting
    class AdvancedRecognitionSetting
      def self.default(visited=[])
        return nil if visited.include?('AdvancedRecognitionSetting')
        visited = visited + ['AdvancedRecognitionSetting']
        {
          audio_recognition_strategy: 'audio_recognition_strategy',
        }
      end

      def self.stub(stub)
        stub ||= Types::AdvancedRecognitionSetting.new
        data = {}
        data['audioRecognitionStrategy'] = stub[:audio_recognition_strategy] unless stub[:audio_recognition_strategy].nil?
        data
      end
    end

    # Structure Stubber for SlotValueRegexFilter
    class SlotValueRegexFilter
      def self.default(visited=[])
        return nil if visited.include?('SlotValueRegexFilter')
        visited = visited + ['SlotValueRegexFilter']
        {
          pattern: 'pattern',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotValueRegexFilter.new
        data = {}
        data['pattern'] = stub[:pattern] unless stub[:pattern].nil?
        data
      end
    end

    # List Stubber for SlotTypeValues
    class SlotTypeValues
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeValues')
        visited = visited + ['SlotTypeValues']
        [
          SlotTypeValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SlotTypeValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SlotTypeValue
    class SlotTypeValue
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeValue')
        visited = visited + ['SlotTypeValue']
        {
          sample_value: SampleValue.default(visited),
          synonyms: SynonymList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotTypeValue.new
        data = {}
        data['sampleValue'] = Stubs::SampleValue.stub(stub[:sample_value]) unless stub[:sample_value].nil?
        data['synonyms'] = Stubs::SynonymList.stub(stub[:synonyms]) unless stub[:synonyms].nil?
        data
      end
    end

    # List Stubber for SynonymList
    class SynonymList
      def self.default(visited=[])
        return nil if visited.include?('SynonymList')
        visited = visited + ['SynonymList']
        [
          SampleValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SampleValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SampleValue
    class SampleValue
      def self.default(visited=[])
        return nil if visited.include?('SampleValue')
        visited = visited + ['SampleValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SampleValue.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateUploadUrl
    class CreateUploadUrl
      def self.default(visited=[])
        {
          import_id: 'import_id',
          upload_url: 'upload_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['importId'] = stub[:import_id] unless stub[:import_id].nil?
        data['uploadUrl'] = stub[:upload_url] unless stub[:upload_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBot
    class DeleteBot
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_status: 'bot_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botStatus'] = stub[:bot_status] unless stub[:bot_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBotAlias
    class DeleteBotAlias
      def self.default(visited=[])
        {
          bot_alias_id: 'bot_alias_id',
          bot_id: 'bot_id',
          bot_alias_status: 'bot_alias_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botAliasId'] = stub[:bot_alias_id] unless stub[:bot_alias_id].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botAliasStatus'] = stub[:bot_alias_status] unless stub[:bot_alias_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBotLocale
    class DeleteBotLocale
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          bot_locale_status: 'bot_locale_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['botLocaleStatus'] = stub[:bot_locale_status] unless stub[:bot_locale_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBotVersion
    class DeleteBotVersion
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          bot_status: 'bot_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['botStatus'] = stub[:bot_status] unless stub[:bot_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteCustomVocabulary
    class DeleteCustomVocabulary
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          custom_vocabulary_status: 'custom_vocabulary_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['customVocabularyStatus'] = stub[:custom_vocabulary_status] unless stub[:custom_vocabulary_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteExport
    class DeleteExport
      def self.default(visited=[])
        {
          export_id: 'export_id',
          export_status: 'export_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        data['exportStatus'] = stub[:export_status] unless stub[:export_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteImport
    class DeleteImport
      def self.default(visited=[])
        {
          import_id: 'import_id',
          import_status: 'import_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['importId'] = stub[:import_id] unless stub[:import_id].nil?
        data['importStatus'] = stub[:import_status] unless stub[:import_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteIntent
    class DeleteIntent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteResourcePolicyStatement
    class DeleteResourcePolicyStatement
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteSlot
    class DeleteSlot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteSlotType
    class DeleteSlotType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteUtterances
    class DeleteUtterances
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeBot
    class DescribeBot
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_name: 'bot_name',
          description: 'description',
          role_arn: 'role_arn',
          data_privacy: DataPrivacy.default(visited),
          idle_session_ttl_in_seconds: 1,
          bot_status: 'bot_status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['dataPrivacy'] = Stubs::DataPrivacy.stub(stub[:data_privacy]) unless stub[:data_privacy].nil?
        data['idleSessionTTLInSeconds'] = stub[:idle_session_ttl_in_seconds] unless stub[:idle_session_ttl_in_seconds].nil?
        data['botStatus'] = stub[:bot_status] unless stub[:bot_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeBotAlias
    class DescribeBotAlias
      def self.default(visited=[])
        {
          bot_alias_id: 'bot_alias_id',
          bot_alias_name: 'bot_alias_name',
          description: 'description',
          bot_version: 'bot_version',
          bot_alias_locale_settings: BotAliasLocaleSettingsMap.default(visited),
          conversation_log_settings: ConversationLogSettings.default(visited),
          sentiment_analysis_settings: SentimentAnalysisSettings.default(visited),
          bot_alias_history_events: BotAliasHistoryEventsList.default(visited),
          bot_alias_status: 'bot_alias_status',
          bot_id: 'bot_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botAliasId'] = stub[:bot_alias_id] unless stub[:bot_alias_id].nil?
        data['botAliasName'] = stub[:bot_alias_name] unless stub[:bot_alias_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['botAliasLocaleSettings'] = Stubs::BotAliasLocaleSettingsMap.stub(stub[:bot_alias_locale_settings]) unless stub[:bot_alias_locale_settings].nil?
        data['conversationLogSettings'] = Stubs::ConversationLogSettings.stub(stub[:conversation_log_settings]) unless stub[:conversation_log_settings].nil?
        data['sentimentAnalysisSettings'] = Stubs::SentimentAnalysisSettings.stub(stub[:sentiment_analysis_settings]) unless stub[:sentiment_analysis_settings].nil?
        data['botAliasHistoryEvents'] = Stubs::BotAliasHistoryEventsList.stub(stub[:bot_alias_history_events]) unless stub[:bot_alias_history_events].nil?
        data['botAliasStatus'] = stub[:bot_alias_status] unless stub[:bot_alias_status].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotAliasHistoryEventsList
    class BotAliasHistoryEventsList
      def self.default(visited=[])
        return nil if visited.include?('BotAliasHistoryEventsList')
        visited = visited + ['BotAliasHistoryEventsList']
        [
          BotAliasHistoryEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotAliasHistoryEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotAliasHistoryEvent
    class BotAliasHistoryEvent
      def self.default(visited=[])
        return nil if visited.include?('BotAliasHistoryEvent')
        visited = visited + ['BotAliasHistoryEvent']
        {
          bot_version: 'bot_version',
          start_date: Time.now,
          end_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BotAliasHistoryEvent.new
        data = {}
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['startDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        data['endDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date]).to_i unless stub[:end_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeBotLocale
    class DescribeBotLocale
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          locale_name: 'locale_name',
          description: 'description',
          nlu_intent_confidence_threshold: 1.0,
          voice_settings: VoiceSettings.default(visited),
          intents_count: 1,
          slot_types_count: 1,
          bot_locale_status: 'bot_locale_status',
          failure_reasons: FailureReasons.default(visited),
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          last_build_submitted_date_time: Time.now,
          bot_locale_history_events: BotLocaleHistoryEventsList.default(visited),
          recommended_actions: RecommendedActions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['localeName'] = stub[:locale_name] unless stub[:locale_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(stub[:nlu_intent_confidence_threshold])
        data['voiceSettings'] = Stubs::VoiceSettings.stub(stub[:voice_settings]) unless stub[:voice_settings].nil?
        data['intentsCount'] = stub[:intents_count] unless stub[:intents_count].nil?
        data['slotTypesCount'] = stub[:slot_types_count] unless stub[:slot_types_count].nil?
        data['botLocaleStatus'] = stub[:bot_locale_status] unless stub[:bot_locale_status].nil?
        data['failureReasons'] = Stubs::FailureReasons.stub(stub[:failure_reasons]) unless stub[:failure_reasons].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['lastBuildSubmittedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_build_submitted_date_time]).to_i unless stub[:last_build_submitted_date_time].nil?
        data['botLocaleHistoryEvents'] = Stubs::BotLocaleHistoryEventsList.stub(stub[:bot_locale_history_events]) unless stub[:bot_locale_history_events].nil?
        data['recommendedActions'] = Stubs::RecommendedActions.stub(stub[:recommended_actions]) unless stub[:recommended_actions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecommendedActions
    class RecommendedActions
      def self.default(visited=[])
        return nil if visited.include?('RecommendedActions')
        visited = visited + ['RecommendedActions']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for BotLocaleHistoryEventsList
    class BotLocaleHistoryEventsList
      def self.default(visited=[])
        return nil if visited.include?('BotLocaleHistoryEventsList')
        visited = visited + ['BotLocaleHistoryEventsList']
        [
          BotLocaleHistoryEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotLocaleHistoryEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotLocaleHistoryEvent
    class BotLocaleHistoryEvent
      def self.default(visited=[])
        return nil if visited.include?('BotLocaleHistoryEvent')
        visited = visited + ['BotLocaleHistoryEvent']
        {
          event: 'event',
          event_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BotLocaleHistoryEvent.new
        data = {}
        data['event'] = stub[:event] unless stub[:event].nil?
        data['eventDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_date]).to_i unless stub[:event_date].nil?
        data
      end
    end

    # List Stubber for FailureReasons
    class FailureReasons
      def self.default(visited=[])
        return nil if visited.include?('FailureReasons')
        visited = visited + ['FailureReasons']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeBotRecommendation
    class DescribeBotRecommendation
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          bot_recommendation_status: 'bot_recommendation_status',
          bot_recommendation_id: 'bot_recommendation_id',
          failure_reasons: FailureReasons.default(visited),
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          transcript_source_setting: TranscriptSourceSetting.default(visited),
          encryption_setting: EncryptionSetting.default(visited),
          bot_recommendation_results: BotRecommendationResults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['botRecommendationStatus'] = stub[:bot_recommendation_status] unless stub[:bot_recommendation_status].nil?
        data['botRecommendationId'] = stub[:bot_recommendation_id] unless stub[:bot_recommendation_id].nil?
        data['failureReasons'] = Stubs::FailureReasons.stub(stub[:failure_reasons]) unless stub[:failure_reasons].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['transcriptSourceSetting'] = Stubs::TranscriptSourceSetting.stub(stub[:transcript_source_setting]) unless stub[:transcript_source_setting].nil?
        data['encryptionSetting'] = Stubs::EncryptionSetting.stub(stub[:encryption_setting]) unless stub[:encryption_setting].nil?
        data['botRecommendationResults'] = Stubs::BotRecommendationResults.stub(stub[:bot_recommendation_results]) unless stub[:bot_recommendation_results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BotRecommendationResults
    class BotRecommendationResults
      def self.default(visited=[])
        return nil if visited.include?('BotRecommendationResults')
        visited = visited + ['BotRecommendationResults']
        {
          bot_locale_export_url: 'bot_locale_export_url',
          associated_transcripts_url: 'associated_transcripts_url',
          statistics: BotRecommendationResultStatistics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BotRecommendationResults.new
        data = {}
        data['botLocaleExportUrl'] = stub[:bot_locale_export_url] unless stub[:bot_locale_export_url].nil?
        data['associatedTranscriptsUrl'] = stub[:associated_transcripts_url] unless stub[:associated_transcripts_url].nil?
        data['statistics'] = Stubs::BotRecommendationResultStatistics.stub(stub[:statistics]) unless stub[:statistics].nil?
        data
      end
    end

    # Structure Stubber for BotRecommendationResultStatistics
    class BotRecommendationResultStatistics
      def self.default(visited=[])
        return nil if visited.include?('BotRecommendationResultStatistics')
        visited = visited + ['BotRecommendationResultStatistics']
        {
          intents: IntentStatistics.default(visited),
          slot_types: SlotTypeStatistics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BotRecommendationResultStatistics.new
        data = {}
        data['intents'] = Stubs::IntentStatistics.stub(stub[:intents]) unless stub[:intents].nil?
        data['slotTypes'] = Stubs::SlotTypeStatistics.stub(stub[:slot_types]) unless stub[:slot_types].nil?
        data
      end
    end

    # Structure Stubber for SlotTypeStatistics
    class SlotTypeStatistics
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeStatistics')
        visited = visited + ['SlotTypeStatistics']
        {
          discovered_slot_type_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotTypeStatistics.new
        data = {}
        data['discoveredSlotTypeCount'] = stub[:discovered_slot_type_count] unless stub[:discovered_slot_type_count].nil?
        data
      end
    end

    # Structure Stubber for IntentStatistics
    class IntentStatistics
      def self.default(visited=[])
        return nil if visited.include?('IntentStatistics')
        visited = visited + ['IntentStatistics']
        {
          discovered_intent_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IntentStatistics.new
        data = {}
        data['discoveredIntentCount'] = stub[:discovered_intent_count] unless stub[:discovered_intent_count].nil?
        data
      end
    end

    # Structure Stubber for EncryptionSetting
    class EncryptionSetting
      def self.default(visited=[])
        return nil if visited.include?('EncryptionSetting')
        visited = visited + ['EncryptionSetting']
        {
          kms_key_arn: 'kms_key_arn',
          bot_locale_export_password: 'bot_locale_export_password',
          associated_transcripts_password: 'associated_transcripts_password',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionSetting.new
        data = {}
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['botLocaleExportPassword'] = stub[:bot_locale_export_password] unless stub[:bot_locale_export_password].nil?
        data['associatedTranscriptsPassword'] = stub[:associated_transcripts_password] unless stub[:associated_transcripts_password].nil?
        data
      end
    end

    # Structure Stubber for TranscriptSourceSetting
    class TranscriptSourceSetting
      def self.default(visited=[])
        return nil if visited.include?('TranscriptSourceSetting')
        visited = visited + ['TranscriptSourceSetting']
        {
          s3_bucket_transcript_source: S3BucketTranscriptSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TranscriptSourceSetting.new
        data = {}
        data['s3BucketTranscriptSource'] = Stubs::S3BucketTranscriptSource.stub(stub[:s3_bucket_transcript_source]) unless stub[:s3_bucket_transcript_source].nil?
        data
      end
    end

    # Structure Stubber for S3BucketTranscriptSource
    class S3BucketTranscriptSource
      def self.default(visited=[])
        return nil if visited.include?('S3BucketTranscriptSource')
        visited = visited + ['S3BucketTranscriptSource']
        {
          s3_bucket_name: 's3_bucket_name',
          path_format: PathFormat.default(visited),
          transcript_format: 'transcript_format',
          transcript_filter: TranscriptFilter.default(visited),
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketTranscriptSource.new
        data = {}
        data['s3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['pathFormat'] = Stubs::PathFormat.stub(stub[:path_format]) unless stub[:path_format].nil?
        data['transcriptFormat'] = stub[:transcript_format] unless stub[:transcript_format].nil?
        data['transcriptFilter'] = Stubs::TranscriptFilter.stub(stub[:transcript_filter]) unless stub[:transcript_filter].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Structure Stubber for TranscriptFilter
    class TranscriptFilter
      def self.default(visited=[])
        return nil if visited.include?('TranscriptFilter')
        visited = visited + ['TranscriptFilter']
        {
          lex_transcript_filter: LexTranscriptFilter.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TranscriptFilter.new
        data = {}
        data['lexTranscriptFilter'] = Stubs::LexTranscriptFilter.stub(stub[:lex_transcript_filter]) unless stub[:lex_transcript_filter].nil?
        data
      end
    end

    # Structure Stubber for LexTranscriptFilter
    class LexTranscriptFilter
      def self.default(visited=[])
        return nil if visited.include?('LexTranscriptFilter')
        visited = visited + ['LexTranscriptFilter']
        {
          date_range_filter: DateRangeFilter.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LexTranscriptFilter.new
        data = {}
        data['dateRangeFilter'] = Stubs::DateRangeFilter.stub(stub[:date_range_filter]) unless stub[:date_range_filter].nil?
        data
      end
    end

    # Structure Stubber for DateRangeFilter
    class DateRangeFilter
      def self.default(visited=[])
        return nil if visited.include?('DateRangeFilter')
        visited = visited + ['DateRangeFilter']
        {
          start_date_time: Time.now,
          end_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DateRangeFilter.new
        data = {}
        data['startDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date_time]).to_i unless stub[:start_date_time].nil?
        data['endDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data
      end
    end

    # Structure Stubber for PathFormat
    class PathFormat
      def self.default(visited=[])
        return nil if visited.include?('PathFormat')
        visited = visited + ['PathFormat']
        {
          object_prefixes: ObjectPrefixes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PathFormat.new
        data = {}
        data['objectPrefixes'] = Stubs::ObjectPrefixes.stub(stub[:object_prefixes]) unless stub[:object_prefixes].nil?
        data
      end
    end

    # List Stubber for ObjectPrefixes
    class ObjectPrefixes
      def self.default(visited=[])
        return nil if visited.include?('ObjectPrefixes')
        visited = visited + ['ObjectPrefixes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeBotVersion
    class DescribeBotVersion
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_name: 'bot_name',
          bot_version: 'bot_version',
          description: 'description',
          role_arn: 'role_arn',
          data_privacy: DataPrivacy.default(visited),
          idle_session_ttl_in_seconds: 1,
          bot_status: 'bot_status',
          failure_reasons: FailureReasons.default(visited),
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['dataPrivacy'] = Stubs::DataPrivacy.stub(stub[:data_privacy]) unless stub[:data_privacy].nil?
        data['idleSessionTTLInSeconds'] = stub[:idle_session_ttl_in_seconds] unless stub[:idle_session_ttl_in_seconds].nil?
        data['botStatus'] = stub[:bot_status] unless stub[:bot_status].nil?
        data['failureReasons'] = Stubs::FailureReasons.stub(stub[:failure_reasons]) unless stub[:failure_reasons].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeCustomVocabularyMetadata
    class DescribeCustomVocabularyMetadata
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          custom_vocabulary_status: 'custom_vocabulary_status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['customVocabularyStatus'] = stub[:custom_vocabulary_status] unless stub[:custom_vocabulary_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeExport
    class DescribeExport
      def self.default(visited=[])
        {
          export_id: 'export_id',
          resource_specification: ExportResourceSpecification.default(visited),
          file_format: 'file_format',
          export_status: 'export_status',
          failure_reasons: FailureReasons.default(visited),
          download_url: 'download_url',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        data['resourceSpecification'] = Stubs::ExportResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['fileFormat'] = stub[:file_format] unless stub[:file_format].nil?
        data['exportStatus'] = stub[:export_status] unless stub[:export_status].nil?
        data['failureReasons'] = Stubs::FailureReasons.stub(stub[:failure_reasons]) unless stub[:failure_reasons].nil?
        data['downloadUrl'] = stub[:download_url] unless stub[:download_url].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeImport
    class DescribeImport
      def self.default(visited=[])
        {
          import_id: 'import_id',
          resource_specification: ImportResourceSpecification.default(visited),
          imported_resource_id: 'imported_resource_id',
          imported_resource_name: 'imported_resource_name',
          merge_strategy: 'merge_strategy',
          import_status: 'import_status',
          failure_reasons: FailureReasons.default(visited),
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['importId'] = stub[:import_id] unless stub[:import_id].nil?
        data['resourceSpecification'] = Stubs::ImportResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['importedResourceId'] = stub[:imported_resource_id] unless stub[:imported_resource_id].nil?
        data['importedResourceName'] = stub[:imported_resource_name] unless stub[:imported_resource_name].nil?
        data['mergeStrategy'] = stub[:merge_strategy] unless stub[:merge_strategy].nil?
        data['importStatus'] = stub[:import_status] unless stub[:import_status].nil?
        data['failureReasons'] = Stubs::FailureReasons.stub(stub[:failure_reasons]) unless stub[:failure_reasons].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ImportResourceSpecification
    class ImportResourceSpecification
      def self.default(visited=[])
        return nil if visited.include?('ImportResourceSpecification')
        visited = visited + ['ImportResourceSpecification']
        {
          bot_import_specification: BotImportSpecification.default(visited),
          bot_locale_import_specification: BotLocaleImportSpecification.default(visited),
          custom_vocabulary_import_specification: CustomVocabularyImportSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportResourceSpecification.new
        data = {}
        data['botImportSpecification'] = Stubs::BotImportSpecification.stub(stub[:bot_import_specification]) unless stub[:bot_import_specification].nil?
        data['botLocaleImportSpecification'] = Stubs::BotLocaleImportSpecification.stub(stub[:bot_locale_import_specification]) unless stub[:bot_locale_import_specification].nil?
        data['customVocabularyImportSpecification'] = Stubs::CustomVocabularyImportSpecification.stub(stub[:custom_vocabulary_import_specification]) unless stub[:custom_vocabulary_import_specification].nil?
        data
      end
    end

    # Structure Stubber for CustomVocabularyImportSpecification
    class CustomVocabularyImportSpecification
      def self.default(visited=[])
        return nil if visited.include?('CustomVocabularyImportSpecification')
        visited = visited + ['CustomVocabularyImportSpecification']
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomVocabularyImportSpecification.new
        data = {}
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data
      end
    end

    # Structure Stubber for BotLocaleImportSpecification
    class BotLocaleImportSpecification
      def self.default(visited=[])
        return nil if visited.include?('BotLocaleImportSpecification')
        visited = visited + ['BotLocaleImportSpecification']
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          nlu_intent_confidence_threshold: 1.0,
          voice_settings: VoiceSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BotLocaleImportSpecification.new
        data = {}
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(stub[:nlu_intent_confidence_threshold])
        data['voiceSettings'] = Stubs::VoiceSettings.stub(stub[:voice_settings]) unless stub[:voice_settings].nil?
        data
      end
    end

    # Structure Stubber for BotImportSpecification
    class BotImportSpecification
      def self.default(visited=[])
        return nil if visited.include?('BotImportSpecification')
        visited = visited + ['BotImportSpecification']
        {
          bot_name: 'bot_name',
          role_arn: 'role_arn',
          data_privacy: DataPrivacy.default(visited),
          idle_session_ttl_in_seconds: 1,
          bot_tags: TagMap.default(visited),
          test_bot_alias_tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BotImportSpecification.new
        data = {}
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['dataPrivacy'] = Stubs::DataPrivacy.stub(stub[:data_privacy]) unless stub[:data_privacy].nil?
        data['idleSessionTTLInSeconds'] = stub[:idle_session_ttl_in_seconds] unless stub[:idle_session_ttl_in_seconds].nil?
        data['botTags'] = Stubs::TagMap.stub(stub[:bot_tags]) unless stub[:bot_tags].nil?
        data['testBotAliasTags'] = Stubs::TagMap.stub(stub[:test_bot_alias_tags]) unless stub[:test_bot_alias_tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeIntent
    class DescribeIntent
      def self.default(visited=[])
        {
          intent_id: 'intent_id',
          intent_name: 'intent_name',
          description: 'description',
          parent_intent_signature: 'parent_intent_signature',
          sample_utterances: SampleUtterancesList.default(visited),
          dialog_code_hook: DialogCodeHookSettings.default(visited),
          fulfillment_code_hook: FulfillmentCodeHookSettings.default(visited),
          slot_priorities: SlotPrioritiesList.default(visited),
          intent_confirmation_setting: IntentConfirmationSetting.default(visited),
          intent_closing_setting: IntentClosingSetting.default(visited),
          input_contexts: InputContextsList.default(visited),
          output_contexts: OutputContextsList.default(visited),
          kendra_configuration: KendraConfiguration.default(visited),
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['intentId'] = stub[:intent_id] unless stub[:intent_id].nil?
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['parentIntentSignature'] = stub[:parent_intent_signature] unless stub[:parent_intent_signature].nil?
        data['sampleUtterances'] = Stubs::SampleUtterancesList.stub(stub[:sample_utterances]) unless stub[:sample_utterances].nil?
        data['dialogCodeHook'] = Stubs::DialogCodeHookSettings.stub(stub[:dialog_code_hook]) unless stub[:dialog_code_hook].nil?
        data['fulfillmentCodeHook'] = Stubs::FulfillmentCodeHookSettings.stub(stub[:fulfillment_code_hook]) unless stub[:fulfillment_code_hook].nil?
        data['slotPriorities'] = Stubs::SlotPrioritiesList.stub(stub[:slot_priorities]) unless stub[:slot_priorities].nil?
        data['intentConfirmationSetting'] = Stubs::IntentConfirmationSetting.stub(stub[:intent_confirmation_setting]) unless stub[:intent_confirmation_setting].nil?
        data['intentClosingSetting'] = Stubs::IntentClosingSetting.stub(stub[:intent_closing_setting]) unless stub[:intent_closing_setting].nil?
        data['inputContexts'] = Stubs::InputContextsList.stub(stub[:input_contexts]) unless stub[:input_contexts].nil?
        data['outputContexts'] = Stubs::OutputContextsList.stub(stub[:output_contexts]) unless stub[:output_contexts].nil?
        data['kendraConfiguration'] = Stubs::KendraConfiguration.stub(stub[:kendra_configuration]) unless stub[:kendra_configuration].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SlotPrioritiesList
    class SlotPrioritiesList
      def self.default(visited=[])
        return nil if visited.include?('SlotPrioritiesList')
        visited = visited + ['SlotPrioritiesList']
        [
          SlotPriority.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SlotPriority.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SlotPriority
    class SlotPriority
      def self.default(visited=[])
        return nil if visited.include?('SlotPriority')
        visited = visited + ['SlotPriority']
        {
          priority: 1,
          slot_id: 'slot_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotPriority.new
        data = {}
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['slotId'] = stub[:slot_id] unless stub[:slot_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeResourcePolicy
    class DescribeResourcePolicy
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          policy: 'policy',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeSlot
    class DescribeSlot
      def self.default(visited=[])
        {
          slot_id: 'slot_id',
          slot_name: 'slot_name',
          description: 'description',
          slot_type_id: 'slot_type_id',
          value_elicitation_setting: SlotValueElicitationSetting.default(visited),
          obfuscation_setting: ObfuscationSetting.default(visited),
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          intent_id: 'intent_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          multiple_values_setting: MultipleValuesSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['slotId'] = stub[:slot_id] unless stub[:slot_id].nil?
        data['slotName'] = stub[:slot_name] unless stub[:slot_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slotTypeId'] = stub[:slot_type_id] unless stub[:slot_type_id].nil?
        data['valueElicitationSetting'] = Stubs::SlotValueElicitationSetting.stub(stub[:value_elicitation_setting]) unless stub[:value_elicitation_setting].nil?
        data['obfuscationSetting'] = Stubs::ObfuscationSetting.stub(stub[:obfuscation_setting]) unless stub[:obfuscation_setting].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['intentId'] = stub[:intent_id] unless stub[:intent_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['multipleValuesSetting'] = Stubs::MultipleValuesSetting.stub(stub[:multiple_values_setting]) unless stub[:multiple_values_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeSlotType
    class DescribeSlotType
      def self.default(visited=[])
        {
          slot_type_id: 'slot_type_id',
          slot_type_name: 'slot_type_name',
          description: 'description',
          slot_type_values: SlotTypeValues.default(visited),
          value_selection_setting: SlotValueSelectionSetting.default(visited),
          parent_slot_type_signature: 'parent_slot_type_signature',
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          external_source_setting: ExternalSourceSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['slotTypeId'] = stub[:slot_type_id] unless stub[:slot_type_id].nil?
        data['slotTypeName'] = stub[:slot_type_name] unless stub[:slot_type_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slotTypeValues'] = Stubs::SlotTypeValues.stub(stub[:slot_type_values]) unless stub[:slot_type_values].nil?
        data['valueSelectionSetting'] = Stubs::SlotValueSelectionSetting.stub(stub[:value_selection_setting]) unless stub[:value_selection_setting].nil?
        data['parentSlotTypeSignature'] = stub[:parent_slot_type_signature] unless stub[:parent_slot_type_signature].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['externalSourceSetting'] = Stubs::ExternalSourceSetting.stub(stub[:external_source_setting]) unless stub[:external_source_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAggregatedUtterances
    class ListAggregatedUtterances
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_alias_id: 'bot_alias_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          aggregation_duration: UtteranceAggregationDuration.default(visited),
          aggregation_window_start_time: Time.now,
          aggregation_window_end_time: Time.now,
          aggregation_last_refreshed_date_time: Time.now,
          aggregated_utterances_summaries: AggregatedUtterancesSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botAliasId'] = stub[:bot_alias_id] unless stub[:bot_alias_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['aggregationDuration'] = Stubs::UtteranceAggregationDuration.stub(stub[:aggregation_duration]) unless stub[:aggregation_duration].nil?
        data['aggregationWindowStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:aggregation_window_start_time]).to_i unless stub[:aggregation_window_start_time].nil?
        data['aggregationWindowEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:aggregation_window_end_time]).to_i unless stub[:aggregation_window_end_time].nil?
        data['aggregationLastRefreshedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:aggregation_last_refreshed_date_time]).to_i unless stub[:aggregation_last_refreshed_date_time].nil?
        data['aggregatedUtterancesSummaries'] = Stubs::AggregatedUtterancesSummaryList.stub(stub[:aggregated_utterances_summaries]) unless stub[:aggregated_utterances_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AggregatedUtterancesSummaryList
    class AggregatedUtterancesSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AggregatedUtterancesSummaryList')
        visited = visited + ['AggregatedUtterancesSummaryList']
        [
          AggregatedUtterancesSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AggregatedUtterancesSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregatedUtterancesSummary
    class AggregatedUtterancesSummary
      def self.default(visited=[])
        return nil if visited.include?('AggregatedUtterancesSummary')
        visited = visited + ['AggregatedUtterancesSummary']
        {
          utterance: 'utterance',
          hit_count: 1,
          missed_count: 1,
          utterance_first_recorded_in_aggregation_duration: Time.now,
          utterance_last_recorded_in_aggregation_duration: Time.now,
          contains_data_from_deleted_resources: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregatedUtterancesSummary.new
        data = {}
        data['utterance'] = stub[:utterance] unless stub[:utterance].nil?
        data['hitCount'] = stub[:hit_count] unless stub[:hit_count].nil?
        data['missedCount'] = stub[:missed_count] unless stub[:missed_count].nil?
        data['utteranceFirstRecordedInAggregationDuration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:utterance_first_recorded_in_aggregation_duration]).to_i unless stub[:utterance_first_recorded_in_aggregation_duration].nil?
        data['utteranceLastRecordedInAggregationDuration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:utterance_last_recorded_in_aggregation_duration]).to_i unless stub[:utterance_last_recorded_in_aggregation_duration].nil?
        data['containsDataFromDeletedResources'] = stub[:contains_data_from_deleted_resources] unless stub[:contains_data_from_deleted_resources].nil?
        data
      end
    end

    # Structure Stubber for UtteranceAggregationDuration
    class UtteranceAggregationDuration
      def self.default(visited=[])
        return nil if visited.include?('UtteranceAggregationDuration')
        visited = visited + ['UtteranceAggregationDuration']
        {
          relative_aggregation_duration: RelativeAggregationDuration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UtteranceAggregationDuration.new
        data = {}
        data['relativeAggregationDuration'] = Stubs::RelativeAggregationDuration.stub(stub[:relative_aggregation_duration]) unless stub[:relative_aggregation_duration].nil?
        data
      end
    end

    # Structure Stubber for RelativeAggregationDuration
    class RelativeAggregationDuration
      def self.default(visited=[])
        return nil if visited.include?('RelativeAggregationDuration')
        visited = visited + ['RelativeAggregationDuration']
        {
          time_dimension: 'time_dimension',
          time_value: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RelativeAggregationDuration.new
        data = {}
        data['timeDimension'] = stub[:time_dimension] unless stub[:time_dimension].nil?
        data['timeValue'] = stub[:time_value] unless stub[:time_value].nil?
        data
      end
    end

    # Operation Stubber for ListBotAliases
    class ListBotAliases
      def self.default(visited=[])
        {
          bot_alias_summaries: BotAliasSummaryList.default(visited),
          next_token: 'next_token',
          bot_id: 'bot_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botAliasSummaries'] = Stubs::BotAliasSummaryList.stub(stub[:bot_alias_summaries]) unless stub[:bot_alias_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotAliasSummaryList
    class BotAliasSummaryList
      def self.default(visited=[])
        return nil if visited.include?('BotAliasSummaryList')
        visited = visited + ['BotAliasSummaryList']
        [
          BotAliasSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotAliasSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotAliasSummary
    class BotAliasSummary
      def self.default(visited=[])
        return nil if visited.include?('BotAliasSummary')
        visited = visited + ['BotAliasSummary']
        {
          bot_alias_id: 'bot_alias_id',
          bot_alias_name: 'bot_alias_name',
          description: 'description',
          bot_version: 'bot_version',
          bot_alias_status: 'bot_alias_status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BotAliasSummary.new
        data = {}
        data['botAliasId'] = stub[:bot_alias_id] unless stub[:bot_alias_id].nil?
        data['botAliasName'] = stub[:bot_alias_name] unless stub[:bot_alias_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['botAliasStatus'] = stub[:bot_alias_status] unless stub[:bot_alias_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListBotLocales
    class ListBotLocales
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          next_token: 'next_token',
          bot_locale_summaries: BotLocaleSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['botLocaleSummaries'] = Stubs::BotLocaleSummaryList.stub(stub[:bot_locale_summaries]) unless stub[:bot_locale_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotLocaleSummaryList
    class BotLocaleSummaryList
      def self.default(visited=[])
        return nil if visited.include?('BotLocaleSummaryList')
        visited = visited + ['BotLocaleSummaryList']
        [
          BotLocaleSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotLocaleSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotLocaleSummary
    class BotLocaleSummary
      def self.default(visited=[])
        return nil if visited.include?('BotLocaleSummary')
        visited = visited + ['BotLocaleSummary']
        {
          locale_id: 'locale_id',
          locale_name: 'locale_name',
          description: 'description',
          bot_locale_status: 'bot_locale_status',
          last_updated_date_time: Time.now,
          last_build_submitted_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BotLocaleSummary.new
        data = {}
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['localeName'] = stub[:locale_name] unless stub[:locale_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botLocaleStatus'] = stub[:bot_locale_status] unless stub[:bot_locale_status].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['lastBuildSubmittedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_build_submitted_date_time]).to_i unless stub[:last_build_submitted_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListBotRecommendations
    class ListBotRecommendations
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          bot_recommendation_summaries: BotRecommendationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['botRecommendationSummaries'] = Stubs::BotRecommendationSummaryList.stub(stub[:bot_recommendation_summaries]) unless stub[:bot_recommendation_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotRecommendationSummaryList
    class BotRecommendationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('BotRecommendationSummaryList')
        visited = visited + ['BotRecommendationSummaryList']
        [
          BotRecommendationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotRecommendationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotRecommendationSummary
    class BotRecommendationSummary
      def self.default(visited=[])
        return nil if visited.include?('BotRecommendationSummary')
        visited = visited + ['BotRecommendationSummary']
        {
          bot_recommendation_status: 'bot_recommendation_status',
          bot_recommendation_id: 'bot_recommendation_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BotRecommendationSummary.new
        data = {}
        data['botRecommendationStatus'] = stub[:bot_recommendation_status] unless stub[:bot_recommendation_status].nil?
        data['botRecommendationId'] = stub[:bot_recommendation_id] unless stub[:bot_recommendation_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListBotVersions
    class ListBotVersions
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version_summaries: BotVersionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersionSummaries'] = Stubs::BotVersionSummaryList.stub(stub[:bot_version_summaries]) unless stub[:bot_version_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotVersionSummaryList
    class BotVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('BotVersionSummaryList')
        visited = visited + ['BotVersionSummaryList']
        [
          BotVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotVersionSummary
    class BotVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('BotVersionSummary')
        visited = visited + ['BotVersionSummary']
        {
          bot_name: 'bot_name',
          bot_version: 'bot_version',
          description: 'description',
          bot_status: 'bot_status',
          creation_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BotVersionSummary.new
        data = {}
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botStatus'] = stub[:bot_status] unless stub[:bot_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListBots
    class ListBots
      def self.default(visited=[])
        {
          bot_summaries: BotSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botSummaries'] = Stubs::BotSummaryList.stub(stub[:bot_summaries]) unless stub[:bot_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotSummaryList
    class BotSummaryList
      def self.default(visited=[])
        return nil if visited.include?('BotSummaryList')
        visited = visited + ['BotSummaryList']
        [
          BotSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotSummary
    class BotSummary
      def self.default(visited=[])
        return nil if visited.include?('BotSummary')
        visited = visited + ['BotSummary']
        {
          bot_id: 'bot_id',
          bot_name: 'bot_name',
          description: 'description',
          bot_status: 'bot_status',
          latest_bot_version: 'latest_bot_version',
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BotSummary.new
        data = {}
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botStatus'] = stub[:bot_status] unless stub[:bot_status].nil?
        data['latestBotVersion'] = stub[:latest_bot_version] unless stub[:latest_bot_version].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListBuiltInIntents
    class ListBuiltInIntents
      def self.default(visited=[])
        {
          built_in_intent_summaries: BuiltInIntentSummaryList.default(visited),
          next_token: 'next_token',
          locale_id: 'locale_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['builtInIntentSummaries'] = Stubs::BuiltInIntentSummaryList.stub(stub[:built_in_intent_summaries]) unless stub[:built_in_intent_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BuiltInIntentSummaryList
    class BuiltInIntentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('BuiltInIntentSummaryList')
        visited = visited + ['BuiltInIntentSummaryList']
        [
          BuiltInIntentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BuiltInIntentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuiltInIntentSummary
    class BuiltInIntentSummary
      def self.default(visited=[])
        return nil if visited.include?('BuiltInIntentSummary')
        visited = visited + ['BuiltInIntentSummary']
        {
          intent_signature: 'intent_signature',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::BuiltInIntentSummary.new
        data = {}
        data['intentSignature'] = stub[:intent_signature] unless stub[:intent_signature].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListBuiltInSlotTypes
    class ListBuiltInSlotTypes
      def self.default(visited=[])
        {
          built_in_slot_type_summaries: BuiltInSlotTypeSummaryList.default(visited),
          next_token: 'next_token',
          locale_id: 'locale_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['builtInSlotTypeSummaries'] = Stubs::BuiltInSlotTypeSummaryList.stub(stub[:built_in_slot_type_summaries]) unless stub[:built_in_slot_type_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BuiltInSlotTypeSummaryList
    class BuiltInSlotTypeSummaryList
      def self.default(visited=[])
        return nil if visited.include?('BuiltInSlotTypeSummaryList')
        visited = visited + ['BuiltInSlotTypeSummaryList']
        [
          BuiltInSlotTypeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BuiltInSlotTypeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuiltInSlotTypeSummary
    class BuiltInSlotTypeSummary
      def self.default(visited=[])
        return nil if visited.include?('BuiltInSlotTypeSummary')
        visited = visited + ['BuiltInSlotTypeSummary']
        {
          slot_type_signature: 'slot_type_signature',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::BuiltInSlotTypeSummary.new
        data = {}
        data['slotTypeSignature'] = stub[:slot_type_signature] unless stub[:slot_type_signature].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListExports
    class ListExports
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          export_summaries: ExportSummaryList.default(visited),
          next_token: 'next_token',
          locale_id: 'locale_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['exportSummaries'] = Stubs::ExportSummaryList.stub(stub[:export_summaries]) unless stub[:export_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ExportSummaryList
    class ExportSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ExportSummaryList')
        visited = visited + ['ExportSummaryList']
        [
          ExportSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExportSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExportSummary
    class ExportSummary
      def self.default(visited=[])
        return nil if visited.include?('ExportSummary')
        visited = visited + ['ExportSummary']
        {
          export_id: 'export_id',
          resource_specification: ExportResourceSpecification.default(visited),
          file_format: 'file_format',
          export_status: 'export_status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportSummary.new
        data = {}
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        data['resourceSpecification'] = Stubs::ExportResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['fileFormat'] = stub[:file_format] unless stub[:file_format].nil?
        data['exportStatus'] = stub[:export_status] unless stub[:export_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListImports
    class ListImports
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          import_summaries: ImportSummaryList.default(visited),
          next_token: 'next_token',
          locale_id: 'locale_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['importSummaries'] = Stubs::ImportSummaryList.stub(stub[:import_summaries]) unless stub[:import_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ImportSummaryList
    class ImportSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ImportSummaryList')
        visited = visited + ['ImportSummaryList']
        [
          ImportSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImportSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImportSummary
    class ImportSummary
      def self.default(visited=[])
        return nil if visited.include?('ImportSummary')
        visited = visited + ['ImportSummary']
        {
          import_id: 'import_id',
          imported_resource_id: 'imported_resource_id',
          imported_resource_name: 'imported_resource_name',
          import_status: 'import_status',
          merge_strategy: 'merge_strategy',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          imported_resource_type: 'imported_resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportSummary.new
        data = {}
        data['importId'] = stub[:import_id] unless stub[:import_id].nil?
        data['importedResourceId'] = stub[:imported_resource_id] unless stub[:imported_resource_id].nil?
        data['importedResourceName'] = stub[:imported_resource_name] unless stub[:imported_resource_name].nil?
        data['importStatus'] = stub[:import_status] unless stub[:import_status].nil?
        data['mergeStrategy'] = stub[:merge_strategy] unless stub[:merge_strategy].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['importedResourceType'] = stub[:imported_resource_type] unless stub[:imported_resource_type].nil?
        data
      end
    end

    # Operation Stubber for ListIntents
    class ListIntents
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          intent_summaries: IntentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['intentSummaries'] = Stubs::IntentSummaryList.stub(stub[:intent_summaries]) unless stub[:intent_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IntentSummaryList
    class IntentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('IntentSummaryList')
        visited = visited + ['IntentSummaryList']
        [
          IntentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IntentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IntentSummary
    class IntentSummary
      def self.default(visited=[])
        return nil if visited.include?('IntentSummary')
        visited = visited + ['IntentSummary']
        {
          intent_id: 'intent_id',
          intent_name: 'intent_name',
          description: 'description',
          parent_intent_signature: 'parent_intent_signature',
          input_contexts: InputContextsList.default(visited),
          output_contexts: OutputContextsList.default(visited),
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::IntentSummary.new
        data = {}
        data['intentId'] = stub[:intent_id] unless stub[:intent_id].nil?
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['parentIntentSignature'] = stub[:parent_intent_signature] unless stub[:parent_intent_signature].nil?
        data['inputContexts'] = Stubs::InputContextsList.stub(stub[:input_contexts]) unless stub[:input_contexts].nil?
        data['outputContexts'] = Stubs::OutputContextsList.stub(stub[:output_contexts]) unless stub[:output_contexts].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListRecommendedIntents
    class ListRecommendedIntents
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          bot_recommendation_id: 'bot_recommendation_id',
          summary_list: RecommendedIntentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['botRecommendationId'] = stub[:bot_recommendation_id] unless stub[:bot_recommendation_id].nil?
        data['summaryList'] = Stubs::RecommendedIntentSummaryList.stub(stub[:summary_list]) unless stub[:summary_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecommendedIntentSummaryList
    class RecommendedIntentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('RecommendedIntentSummaryList')
        visited = visited + ['RecommendedIntentSummaryList']
        [
          RecommendedIntentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendedIntentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendedIntentSummary
    class RecommendedIntentSummary
      def self.default(visited=[])
        return nil if visited.include?('RecommendedIntentSummary')
        visited = visited + ['RecommendedIntentSummary']
        {
          intent_id: 'intent_id',
          intent_name: 'intent_name',
          sample_utterances_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendedIntentSummary.new
        data = {}
        data['intentId'] = stub[:intent_id] unless stub[:intent_id].nil?
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['sampleUtterancesCount'] = stub[:sample_utterances_count] unless stub[:sample_utterances_count].nil?
        data
      end
    end

    # Operation Stubber for ListSlotTypes
    class ListSlotTypes
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          slot_type_summaries: SlotTypeSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['slotTypeSummaries'] = Stubs::SlotTypeSummaryList.stub(stub[:slot_type_summaries]) unless stub[:slot_type_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SlotTypeSummaryList
    class SlotTypeSummaryList
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeSummaryList')
        visited = visited + ['SlotTypeSummaryList']
        [
          SlotTypeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SlotTypeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SlotTypeSummary
    class SlotTypeSummary
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeSummary')
        visited = visited + ['SlotTypeSummary']
        {
          slot_type_id: 'slot_type_id',
          slot_type_name: 'slot_type_name',
          description: 'description',
          parent_slot_type_signature: 'parent_slot_type_signature',
          last_updated_date_time: Time.now,
          slot_type_category: 'slot_type_category',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotTypeSummary.new
        data = {}
        data['slotTypeId'] = stub[:slot_type_id] unless stub[:slot_type_id].nil?
        data['slotTypeName'] = stub[:slot_type_name] unless stub[:slot_type_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['parentSlotTypeSignature'] = stub[:parent_slot_type_signature] unless stub[:parent_slot_type_signature].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['slotTypeCategory'] = stub[:slot_type_category] unless stub[:slot_type_category].nil?
        data
      end
    end

    # Operation Stubber for ListSlots
    class ListSlots
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          intent_id: 'intent_id',
          slot_summaries: SlotSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['intentId'] = stub[:intent_id] unless stub[:intent_id].nil?
        data['slotSummaries'] = Stubs::SlotSummaryList.stub(stub[:slot_summaries]) unless stub[:slot_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SlotSummaryList
    class SlotSummaryList
      def self.default(visited=[])
        return nil if visited.include?('SlotSummaryList')
        visited = visited + ['SlotSummaryList']
        [
          SlotSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SlotSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SlotSummary
    class SlotSummary
      def self.default(visited=[])
        return nil if visited.include?('SlotSummary')
        visited = visited + ['SlotSummary']
        {
          slot_id: 'slot_id',
          slot_name: 'slot_name',
          description: 'description',
          slot_constraint: 'slot_constraint',
          slot_type_id: 'slot_type_id',
          value_elicitation_prompt_specification: PromptSpecification.default(visited),
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotSummary.new
        data = {}
        data['slotId'] = stub[:slot_id] unless stub[:slot_id].nil?
        data['slotName'] = stub[:slot_name] unless stub[:slot_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slotConstraint'] = stub[:slot_constraint] unless stub[:slot_constraint].nil?
        data['slotTypeId'] = stub[:slot_type_id] unless stub[:slot_type_id].nil?
        data['valueElicitationPromptSpecification'] = Stubs::PromptSpecification.stub(stub[:value_elicitation_prompt_specification]) unless stub[:value_elicitation_prompt_specification].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchAssociatedTranscripts
    class SearchAssociatedTranscripts
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          bot_recommendation_id: 'bot_recommendation_id',
          next_index: 1,
          associated_transcripts: AssociatedTranscriptList.default(visited),
          total_results: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['botRecommendationId'] = stub[:bot_recommendation_id] unless stub[:bot_recommendation_id].nil?
        data['nextIndex'] = stub[:next_index] unless stub[:next_index].nil?
        data['associatedTranscripts'] = Stubs::AssociatedTranscriptList.stub(stub[:associated_transcripts]) unless stub[:associated_transcripts].nil?
        data['totalResults'] = stub[:total_results] unless stub[:total_results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssociatedTranscriptList
    class AssociatedTranscriptList
      def self.default(visited=[])
        return nil if visited.include?('AssociatedTranscriptList')
        visited = visited + ['AssociatedTranscriptList']
        [
          AssociatedTranscript.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssociatedTranscript.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociatedTranscript
    class AssociatedTranscript
      def self.default(visited=[])
        return nil if visited.include?('AssociatedTranscript')
        visited = visited + ['AssociatedTranscript']
        {
          transcript: 'transcript',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociatedTranscript.new
        data = {}
        data['transcript'] = stub[:transcript] unless stub[:transcript].nil?
        data
      end
    end

    # Operation Stubber for StartBotRecommendation
    class StartBotRecommendation
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          bot_recommendation_status: 'bot_recommendation_status',
          bot_recommendation_id: 'bot_recommendation_id',
          creation_date_time: Time.now,
          transcript_source_setting: TranscriptSourceSetting.default(visited),
          encryption_setting: EncryptionSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['botRecommendationStatus'] = stub[:bot_recommendation_status] unless stub[:bot_recommendation_status].nil?
        data['botRecommendationId'] = stub[:bot_recommendation_id] unless stub[:bot_recommendation_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['transcriptSourceSetting'] = Stubs::TranscriptSourceSetting.stub(stub[:transcript_source_setting]) unless stub[:transcript_source_setting].nil?
        data['encryptionSetting'] = Stubs::EncryptionSetting.stub(stub[:encryption_setting]) unless stub[:encryption_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartImport
    class StartImport
      def self.default(visited=[])
        {
          import_id: 'import_id',
          resource_specification: ImportResourceSpecification.default(visited),
          merge_strategy: 'merge_strategy',
          import_status: 'import_status',
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['importId'] = stub[:import_id] unless stub[:import_id].nil?
        data['resourceSpecification'] = Stubs::ImportResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['mergeStrategy'] = stub[:merge_strategy] unless stub[:merge_strategy].nil?
        data['importStatus'] = stub[:import_status] unless stub[:import_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBot
    class UpdateBot
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_name: 'bot_name',
          description: 'description',
          role_arn: 'role_arn',
          data_privacy: DataPrivacy.default(visited),
          idle_session_ttl_in_seconds: 1,
          bot_status: 'bot_status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['dataPrivacy'] = Stubs::DataPrivacy.stub(stub[:data_privacy]) unless stub[:data_privacy].nil?
        data['idleSessionTTLInSeconds'] = stub[:idle_session_ttl_in_seconds] unless stub[:idle_session_ttl_in_seconds].nil?
        data['botStatus'] = stub[:bot_status] unless stub[:bot_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBotAlias
    class UpdateBotAlias
      def self.default(visited=[])
        {
          bot_alias_id: 'bot_alias_id',
          bot_alias_name: 'bot_alias_name',
          description: 'description',
          bot_version: 'bot_version',
          bot_alias_locale_settings: BotAliasLocaleSettingsMap.default(visited),
          conversation_log_settings: ConversationLogSettings.default(visited),
          sentiment_analysis_settings: SentimentAnalysisSettings.default(visited),
          bot_alias_status: 'bot_alias_status',
          bot_id: 'bot_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botAliasId'] = stub[:bot_alias_id] unless stub[:bot_alias_id].nil?
        data['botAliasName'] = stub[:bot_alias_name] unless stub[:bot_alias_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['botAliasLocaleSettings'] = Stubs::BotAliasLocaleSettingsMap.stub(stub[:bot_alias_locale_settings]) unless stub[:bot_alias_locale_settings].nil?
        data['conversationLogSettings'] = Stubs::ConversationLogSettings.stub(stub[:conversation_log_settings]) unless stub[:conversation_log_settings].nil?
        data['sentimentAnalysisSettings'] = Stubs::SentimentAnalysisSettings.stub(stub[:sentiment_analysis_settings]) unless stub[:sentiment_analysis_settings].nil?
        data['botAliasStatus'] = stub[:bot_alias_status] unless stub[:bot_alias_status].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBotLocale
    class UpdateBotLocale
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          locale_name: 'locale_name',
          description: 'description',
          nlu_intent_confidence_threshold: 1.0,
          voice_settings: VoiceSettings.default(visited),
          bot_locale_status: 'bot_locale_status',
          failure_reasons: FailureReasons.default(visited),
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          recommended_actions: RecommendedActions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['localeName'] = stub[:locale_name] unless stub[:locale_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(stub[:nlu_intent_confidence_threshold])
        data['voiceSettings'] = Stubs::VoiceSettings.stub(stub[:voice_settings]) unless stub[:voice_settings].nil?
        data['botLocaleStatus'] = stub[:bot_locale_status] unless stub[:bot_locale_status].nil?
        data['failureReasons'] = Stubs::FailureReasons.stub(stub[:failure_reasons]) unless stub[:failure_reasons].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['recommendedActions'] = Stubs::RecommendedActions.stub(stub[:recommended_actions]) unless stub[:recommended_actions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBotRecommendation
    class UpdateBotRecommendation
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          bot_recommendation_status: 'bot_recommendation_status',
          bot_recommendation_id: 'bot_recommendation_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          transcript_source_setting: TranscriptSourceSetting.default(visited),
          encryption_setting: EncryptionSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['botRecommendationStatus'] = stub[:bot_recommendation_status] unless stub[:bot_recommendation_status].nil?
        data['botRecommendationId'] = stub[:bot_recommendation_id] unless stub[:bot_recommendation_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['transcriptSourceSetting'] = Stubs::TranscriptSourceSetting.stub(stub[:transcript_source_setting]) unless stub[:transcript_source_setting].nil?
        data['encryptionSetting'] = Stubs::EncryptionSetting.stub(stub[:encryption_setting]) unless stub[:encryption_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateExport
    class UpdateExport
      def self.default(visited=[])
        {
          export_id: 'export_id',
          resource_specification: ExportResourceSpecification.default(visited),
          file_format: 'file_format',
          export_status: 'export_status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        data['resourceSpecification'] = Stubs::ExportResourceSpecification.stub(stub[:resource_specification]) unless stub[:resource_specification].nil?
        data['fileFormat'] = stub[:file_format] unless stub[:file_format].nil?
        data['exportStatus'] = stub[:export_status] unless stub[:export_status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateIntent
    class UpdateIntent
      def self.default(visited=[])
        {
          intent_id: 'intent_id',
          intent_name: 'intent_name',
          description: 'description',
          parent_intent_signature: 'parent_intent_signature',
          sample_utterances: SampleUtterancesList.default(visited),
          dialog_code_hook: DialogCodeHookSettings.default(visited),
          fulfillment_code_hook: FulfillmentCodeHookSettings.default(visited),
          slot_priorities: SlotPrioritiesList.default(visited),
          intent_confirmation_setting: IntentConfirmationSetting.default(visited),
          intent_closing_setting: IntentClosingSetting.default(visited),
          input_contexts: InputContextsList.default(visited),
          output_contexts: OutputContextsList.default(visited),
          kendra_configuration: KendraConfiguration.default(visited),
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['intentId'] = stub[:intent_id] unless stub[:intent_id].nil?
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['parentIntentSignature'] = stub[:parent_intent_signature] unless stub[:parent_intent_signature].nil?
        data['sampleUtterances'] = Stubs::SampleUtterancesList.stub(stub[:sample_utterances]) unless stub[:sample_utterances].nil?
        data['dialogCodeHook'] = Stubs::DialogCodeHookSettings.stub(stub[:dialog_code_hook]) unless stub[:dialog_code_hook].nil?
        data['fulfillmentCodeHook'] = Stubs::FulfillmentCodeHookSettings.stub(stub[:fulfillment_code_hook]) unless stub[:fulfillment_code_hook].nil?
        data['slotPriorities'] = Stubs::SlotPrioritiesList.stub(stub[:slot_priorities]) unless stub[:slot_priorities].nil?
        data['intentConfirmationSetting'] = Stubs::IntentConfirmationSetting.stub(stub[:intent_confirmation_setting]) unless stub[:intent_confirmation_setting].nil?
        data['intentClosingSetting'] = Stubs::IntentClosingSetting.stub(stub[:intent_closing_setting]) unless stub[:intent_closing_setting].nil?
        data['inputContexts'] = Stubs::InputContextsList.stub(stub[:input_contexts]) unless stub[:input_contexts].nil?
        data['outputContexts'] = Stubs::OutputContextsList.stub(stub[:output_contexts]) unless stub[:output_contexts].nil?
        data['kendraConfiguration'] = Stubs::KendraConfiguration.stub(stub[:kendra_configuration]) unless stub[:kendra_configuration].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateResourcePolicy
    class UpdateResourcePolicy
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSlot
    class UpdateSlot
      def self.default(visited=[])
        {
          slot_id: 'slot_id',
          slot_name: 'slot_name',
          description: 'description',
          slot_type_id: 'slot_type_id',
          value_elicitation_setting: SlotValueElicitationSetting.default(visited),
          obfuscation_setting: ObfuscationSetting.default(visited),
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          intent_id: 'intent_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          multiple_values_setting: MultipleValuesSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['slotId'] = stub[:slot_id] unless stub[:slot_id].nil?
        data['slotName'] = stub[:slot_name] unless stub[:slot_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slotTypeId'] = stub[:slot_type_id] unless stub[:slot_type_id].nil?
        data['valueElicitationSetting'] = Stubs::SlotValueElicitationSetting.stub(stub[:value_elicitation_setting]) unless stub[:value_elicitation_setting].nil?
        data['obfuscationSetting'] = Stubs::ObfuscationSetting.stub(stub[:obfuscation_setting]) unless stub[:obfuscation_setting].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['intentId'] = stub[:intent_id] unless stub[:intent_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['multipleValuesSetting'] = Stubs::MultipleValuesSetting.stub(stub[:multiple_values_setting]) unless stub[:multiple_values_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSlotType
    class UpdateSlotType
      def self.default(visited=[])
        {
          slot_type_id: 'slot_type_id',
          slot_type_name: 'slot_type_name',
          description: 'description',
          slot_type_values: SlotTypeValues.default(visited),
          value_selection_setting: SlotValueSelectionSetting.default(visited),
          parent_slot_type_signature: 'parent_slot_type_signature',
          bot_id: 'bot_id',
          bot_version: 'bot_version',
          locale_id: 'locale_id',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          external_source_setting: ExternalSourceSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['slotTypeId'] = stub[:slot_type_id] unless stub[:slot_type_id].nil?
        data['slotTypeName'] = stub[:slot_type_name] unless stub[:slot_type_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slotTypeValues'] = Stubs::SlotTypeValues.stub(stub[:slot_type_values]) unless stub[:slot_type_values].nil?
        data['valueSelectionSetting'] = Stubs::SlotValueSelectionSetting.stub(stub[:value_selection_setting]) unless stub[:value_selection_setting].nil?
        data['parentSlotTypeSignature'] = stub[:parent_slot_type_signature] unless stub[:parent_slot_type_signature].nil?
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['externalSourceSetting'] = Stubs::ExternalSourceSetting.stub(stub[:external_source_setting]) unless stub[:external_source_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
