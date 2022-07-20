# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelsV2
  module Params

    module AdvancedRecognitionSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvancedRecognitionSetting, context: context)
        type = Types::AdvancedRecognitionSetting.new
        type.audio_recognition_strategy = params[:audio_recognition_strategy]
        type
      end
    end

    module AggregatedUtterancesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregatedUtterancesFilter, context: context)
        type = Types::AggregatedUtterancesFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module AggregatedUtterancesFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregatedUtterancesFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregatedUtterancesSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregatedUtterancesSortBy, context: context)
        type = Types::AggregatedUtterancesSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module AggregatedUtterancesSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregatedUtterancesSummary, context: context)
        type = Types::AggregatedUtterancesSummary.new
        type.utterance = params[:utterance]
        type.hit_count = params[:hit_count]
        type.missed_count = params[:missed_count]
        type.utterance_first_recorded_in_aggregation_duration = params[:utterance_first_recorded_in_aggregation_duration]
        type.utterance_last_recorded_in_aggregation_duration = params[:utterance_last_recorded_in_aggregation_duration]
        type.contains_data_from_deleted_resources = params[:contains_data_from_deleted_resources]
        type
      end
    end

    module AggregatedUtterancesSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregatedUtterancesSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociatedTranscript
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatedTranscript, context: context)
        type = Types::AssociatedTranscript.new
        type.transcript = params[:transcript]
        type
      end
    end

    module AssociatedTranscriptFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatedTranscriptFilter, context: context)
        type = Types::AssociatedTranscriptFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module AssociatedTranscriptFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociatedTranscriptFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociatedTranscriptList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociatedTranscript.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AudioLogDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioLogDestination, context: context)
        type = Types::AudioLogDestination.new
        type.s3_bucket = S3BucketLogDestination.build(params[:s3_bucket], context: "#{context}[:s3_bucket]") unless params[:s3_bucket].nil?
        type
      end
    end

    module AudioLogSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioLogSetting, context: context)
        type = Types::AudioLogSetting.new
        type.enabled = params[:enabled]
        type.destination = AudioLogDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module AudioLogSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AudioLogSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotAliasHistoryEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotAliasHistoryEvent, context: context)
        type = Types::BotAliasHistoryEvent.new
        type.bot_version = params[:bot_version]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type
      end
    end

    module BotAliasHistoryEventsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotAliasHistoryEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotAliasLocaleSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotAliasLocaleSettings, context: context)
        type = Types::BotAliasLocaleSettings.new
        type.enabled = params[:enabled]
        type.code_hook_specification = CodeHookSpecification.build(params[:code_hook_specification], context: "#{context}[:code_hook_specification]") unless params[:code_hook_specification].nil?
        type
      end
    end

    module BotAliasLocaleSettingsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = BotAliasLocaleSettings.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module BotAliasSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotAliasSummary, context: context)
        type = Types::BotAliasSummary.new
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_alias_name = params[:bot_alias_name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_alias_status = params[:bot_alias_status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module BotAliasSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotAliasSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotExportSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotExportSpecification, context: context)
        type = Types::BotExportSpecification.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type
      end
    end

    module BotFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotFilter, context: context)
        type = Types::BotFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module BotFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotImportSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotImportSpecification, context: context)
        type = Types::BotImportSpecification.new
        type.bot_name = params[:bot_name]
        type.role_arn = params[:role_arn]
        type.data_privacy = DataPrivacy.build(params[:data_privacy], context: "#{context}[:data_privacy]") unless params[:data_privacy].nil?
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.bot_tags = TagMap.build(params[:bot_tags], context: "#{context}[:bot_tags]") unless params[:bot_tags].nil?
        type.test_bot_alias_tags = TagMap.build(params[:test_bot_alias_tags], context: "#{context}[:test_bot_alias_tags]") unless params[:test_bot_alias_tags].nil?
        type
      end
    end

    module BotLocaleExportSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotLocaleExportSpecification, context: context)
        type = Types::BotLocaleExportSpecification.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module BotLocaleFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotLocaleFilter, context: context)
        type = Types::BotLocaleFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module BotLocaleFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotLocaleFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotLocaleHistoryEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotLocaleHistoryEvent, context: context)
        type = Types::BotLocaleHistoryEvent.new
        type.event = params[:event]
        type.event_date = params[:event_date]
        type
      end
    end

    module BotLocaleHistoryEventsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotLocaleHistoryEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotLocaleImportSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotLocaleImportSpecification, context: context)
        type = Types::BotLocaleImportSpecification.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.nlu_intent_confidence_threshold = params[:nlu_intent_confidence_threshold]
        type.voice_settings = VoiceSettings.build(params[:voice_settings], context: "#{context}[:voice_settings]") unless params[:voice_settings].nil?
        type
      end
    end

    module BotLocaleSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotLocaleSortBy, context: context)
        type = Types::BotLocaleSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module BotLocaleSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotLocaleSummary, context: context)
        type = Types::BotLocaleSummary.new
        type.locale_id = params[:locale_id]
        type.locale_name = params[:locale_name]
        type.description = params[:description]
        type.bot_locale_status = params[:bot_locale_status]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.last_build_submitted_date_time = params[:last_build_submitted_date_time]
        type
      end
    end

    module BotLocaleSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotLocaleSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotRecommendationResultStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotRecommendationResultStatistics, context: context)
        type = Types::BotRecommendationResultStatistics.new
        type.intents = IntentStatistics.build(params[:intents], context: "#{context}[:intents]") unless params[:intents].nil?
        type.slot_types = SlotTypeStatistics.build(params[:slot_types], context: "#{context}[:slot_types]") unless params[:slot_types].nil?
        type
      end
    end

    module BotRecommendationResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotRecommendationResults, context: context)
        type = Types::BotRecommendationResults.new
        type.bot_locale_export_url = params[:bot_locale_export_url]
        type.associated_transcripts_url = params[:associated_transcripts_url]
        type.statistics = BotRecommendationResultStatistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module BotRecommendationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotRecommendationSummary, context: context)
        type = Types::BotRecommendationSummary.new
        type.bot_recommendation_status = params[:bot_recommendation_status]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module BotRecommendationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotRecommendationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotSortBy, context: context)
        type = Types::BotSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module BotSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotSummary, context: context)
        type = Types::BotSummary.new
        type.bot_id = params[:bot_id]
        type.bot_name = params[:bot_name]
        type.description = params[:description]
        type.bot_status = params[:bot_status]
        type.latest_bot_version = params[:latest_bot_version]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module BotSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BotVersionLocaleDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotVersionLocaleDetails, context: context)
        type = Types::BotVersionLocaleDetails.new
        type.source_bot_version = params[:source_bot_version]
        type
      end
    end

    module BotVersionLocaleSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = BotVersionLocaleDetails.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module BotVersionSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotVersionSortBy, context: context)
        type = Types::BotVersionSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module BotVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BotVersionSummary, context: context)
        type = Types::BotVersionSummary.new
        type.bot_name = params[:bot_name]
        type.bot_version = params[:bot_version]
        type.description = params[:description]
        type.bot_status = params[:bot_status]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module BotVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BotVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuildBotLocaleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildBotLocaleInput, context: context)
        type = Types::BuildBotLocaleInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module BuildBotLocaleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildBotLocaleOutput, context: context)
        type = Types::BuildBotLocaleOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_locale_status = params[:bot_locale_status]
        type.last_build_submitted_date_time = params[:last_build_submitted_date_time]
        type
      end
    end

    module BuiltInIntentSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuiltInIntentSortBy, context: context)
        type = Types::BuiltInIntentSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module BuiltInIntentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuiltInIntentSummary, context: context)
        type = Types::BuiltInIntentSummary.new
        type.intent_signature = params[:intent_signature]
        type.description = params[:description]
        type
      end
    end

    module BuiltInIntentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuiltInIntentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuiltInSlotTypeSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuiltInSlotTypeSortBy, context: context)
        type = Types::BuiltInSlotTypeSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module BuiltInSlotTypeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuiltInSlotTypeSummary, context: context)
        type = Types::BuiltInSlotTypeSummary.new
        type.slot_type_signature = params[:slot_type_signature]
        type.description = params[:description]
        type
      end
    end

    module BuiltInSlotTypeSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuiltInSlotTypeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Button
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Button, context: context)
        type = Types::Button.new
        type.text = params[:text]
        type.value = params[:value]
        type
      end
    end

    module ButtonsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Button.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudWatchLogGroupLogDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogGroupLogDestination, context: context)
        type = Types::CloudWatchLogGroupLogDestination.new
        type.cloud_watch_log_group_arn = params[:cloud_watch_log_group_arn]
        type.log_prefix = params[:log_prefix]
        type
      end
    end

    module CodeHookSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeHookSpecification, context: context)
        type = Types::CodeHookSpecification.new
        type.lambda_code_hook = LambdaCodeHook.build(params[:lambda_code_hook], context: "#{context}[:lambda_code_hook]") unless params[:lambda_code_hook].nil?
        type
      end
    end

    module ConditionKeyValueMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ConditionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ConditionKeyValueMap.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
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

    module ConversationLogSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConversationLogSettings, context: context)
        type = Types::ConversationLogSettings.new
        type.text_log_settings = TextLogSettingsList.build(params[:text_log_settings], context: "#{context}[:text_log_settings]") unless params[:text_log_settings].nil?
        type.audio_log_settings = AudioLogSettingsList.build(params[:audio_log_settings], context: "#{context}[:audio_log_settings]") unless params[:audio_log_settings].nil?
        type
      end
    end

    module CreateBotAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotAliasInput, context: context)
        type = Types::CreateBotAliasInput.new
        type.bot_alias_name = params[:bot_alias_name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_alias_locale_settings = BotAliasLocaleSettingsMap.build(params[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless params[:bot_alias_locale_settings].nil?
        type.conversation_log_settings = ConversationLogSettings.build(params[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless params[:conversation_log_settings].nil?
        type.sentiment_analysis_settings = SentimentAnalysisSettings.build(params[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless params[:sentiment_analysis_settings].nil?
        type.bot_id = params[:bot_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBotAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotAliasOutput, context: context)
        type = Types::CreateBotAliasOutput.new
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_alias_name = params[:bot_alias_name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_alias_locale_settings = BotAliasLocaleSettingsMap.build(params[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless params[:bot_alias_locale_settings].nil?
        type.conversation_log_settings = ConversationLogSettings.build(params[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless params[:conversation_log_settings].nil?
        type.sentiment_analysis_settings = SentimentAnalysisSettings.build(params[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless params[:sentiment_analysis_settings].nil?
        type.bot_alias_status = params[:bot_alias_status]
        type.bot_id = params[:bot_id]
        type.creation_date_time = params[:creation_date_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotInput, context: context)
        type = Types::CreateBotInput.new
        type.bot_name = params[:bot_name]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.data_privacy = DataPrivacy.build(params[:data_privacy], context: "#{context}[:data_privacy]") unless params[:data_privacy].nil?
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.bot_tags = TagMap.build(params[:bot_tags], context: "#{context}[:bot_tags]") unless params[:bot_tags].nil?
        type.test_bot_alias_tags = TagMap.build(params[:test_bot_alias_tags], context: "#{context}[:test_bot_alias_tags]") unless params[:test_bot_alias_tags].nil?
        type
      end
    end

    module CreateBotLocaleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotLocaleInput, context: context)
        type = Types::CreateBotLocaleInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.description = params[:description]
        type.nlu_intent_confidence_threshold = params[:nlu_intent_confidence_threshold]
        type.voice_settings = VoiceSettings.build(params[:voice_settings], context: "#{context}[:voice_settings]") unless params[:voice_settings].nil?
        type
      end
    end

    module CreateBotLocaleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotLocaleOutput, context: context)
        type = Types::CreateBotLocaleOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_name = params[:locale_name]
        type.locale_id = params[:locale_id]
        type.description = params[:description]
        type.nlu_intent_confidence_threshold = params[:nlu_intent_confidence_threshold]
        type.voice_settings = VoiceSettings.build(params[:voice_settings], context: "#{context}[:voice_settings]") unless params[:voice_settings].nil?
        type.bot_locale_status = params[:bot_locale_status]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module CreateBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotOutput, context: context)
        type = Types::CreateBotOutput.new
        type.bot_id = params[:bot_id]
        type.bot_name = params[:bot_name]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.data_privacy = DataPrivacy.build(params[:data_privacy], context: "#{context}[:data_privacy]") unless params[:data_privacy].nil?
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.bot_status = params[:bot_status]
        type.creation_date_time = params[:creation_date_time]
        type.bot_tags = TagMap.build(params[:bot_tags], context: "#{context}[:bot_tags]") unless params[:bot_tags].nil?
        type.test_bot_alias_tags = TagMap.build(params[:test_bot_alias_tags], context: "#{context}[:test_bot_alias_tags]") unless params[:test_bot_alias_tags].nil?
        type
      end
    end

    module CreateBotVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotVersionInput, context: context)
        type = Types::CreateBotVersionInput.new
        type.bot_id = params[:bot_id]
        type.description = params[:description]
        type.bot_version_locale_specification = BotVersionLocaleSpecification.build(params[:bot_version_locale_specification], context: "#{context}[:bot_version_locale_specification]") unless params[:bot_version_locale_specification].nil?
        type
      end
    end

    module CreateBotVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotVersionOutput, context: context)
        type = Types::CreateBotVersionOutput.new
        type.bot_id = params[:bot_id]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_version_locale_specification = BotVersionLocaleSpecification.build(params[:bot_version_locale_specification], context: "#{context}[:bot_version_locale_specification]") unless params[:bot_version_locale_specification].nil?
        type.bot_status = params[:bot_status]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module CreateExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExportInput, context: context)
        type = Types::CreateExportInput.new
        type.resource_specification = ExportResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.file_format = params[:file_format]
        type.file_password = params[:file_password]
        type
      end
    end

    module CreateExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExportOutput, context: context)
        type = Types::CreateExportOutput.new
        type.export_id = params[:export_id]
        type.resource_specification = ExportResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.file_format = params[:file_format]
        type.export_status = params[:export_status]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module CreateIntentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntentInput, context: context)
        type = Types::CreateIntentInput.new
        type.intent_name = params[:intent_name]
        type.description = params[:description]
        type.parent_intent_signature = params[:parent_intent_signature]
        type.sample_utterances = SampleUtterancesList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.dialog_code_hook = DialogCodeHookSettings.build(params[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless params[:dialog_code_hook].nil?
        type.fulfillment_code_hook = FulfillmentCodeHookSettings.build(params[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless params[:fulfillment_code_hook].nil?
        type.intent_confirmation_setting = IntentConfirmationSetting.build(params[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless params[:intent_confirmation_setting].nil?
        type.intent_closing_setting = IntentClosingSetting.build(params[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless params[:intent_closing_setting].nil?
        type.input_contexts = InputContextsList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextsList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type.kendra_configuration = KendraConfiguration.build(params[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless params[:kendra_configuration].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module CreateIntentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntentOutput, context: context)
        type = Types::CreateIntentOutput.new
        type.intent_id = params[:intent_id]
        type.intent_name = params[:intent_name]
        type.description = params[:description]
        type.parent_intent_signature = params[:parent_intent_signature]
        type.sample_utterances = SampleUtterancesList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.dialog_code_hook = DialogCodeHookSettings.build(params[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless params[:dialog_code_hook].nil?
        type.fulfillment_code_hook = FulfillmentCodeHookSettings.build(params[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless params[:fulfillment_code_hook].nil?
        type.intent_confirmation_setting = IntentConfirmationSetting.build(params[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless params[:intent_confirmation_setting].nil?
        type.intent_closing_setting = IntentClosingSetting.build(params[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless params[:intent_closing_setting].nil?
        type.input_contexts = InputContextsList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextsList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type.kendra_configuration = KendraConfiguration.build(params[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless params[:kendra_configuration].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module CreateResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourcePolicyInput, context: context)
        type = Types::CreateResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.policy = params[:policy]
        type
      end
    end

    module CreateResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourcePolicyOutput, context: context)
        type = Types::CreateResourcePolicyOutput.new
        type.resource_arn = params[:resource_arn]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module CreateResourcePolicyStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourcePolicyStatementInput, context: context)
        type = Types::CreateResourcePolicyStatementInput.new
        type.resource_arn = params[:resource_arn]
        type.statement_id = params[:statement_id]
        type.effect = params[:effect]
        type.principal = PrincipalList.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.action = OperationList.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.condition = ConditionMap.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.expected_revision_id = params[:expected_revision_id]
        type
      end
    end

    module CreateResourcePolicyStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourcePolicyStatementOutput, context: context)
        type = Types::CreateResourcePolicyStatementOutput.new
        type.resource_arn = params[:resource_arn]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module CreateSlotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSlotInput, context: context)
        type = Types::CreateSlotInput.new
        type.slot_name = params[:slot_name]
        type.description = params[:description]
        type.slot_type_id = params[:slot_type_id]
        type.value_elicitation_setting = SlotValueElicitationSetting.build(params[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless params[:value_elicitation_setting].nil?
        type.obfuscation_setting = ObfuscationSetting.build(params[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless params[:obfuscation_setting].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_id = params[:intent_id]
        type.multiple_values_setting = MultipleValuesSetting.build(params[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless params[:multiple_values_setting].nil?
        type
      end
    end

    module CreateSlotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSlotOutput, context: context)
        type = Types::CreateSlotOutput.new
        type.slot_id = params[:slot_id]
        type.slot_name = params[:slot_name]
        type.description = params[:description]
        type.slot_type_id = params[:slot_type_id]
        type.value_elicitation_setting = SlotValueElicitationSetting.build(params[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless params[:value_elicitation_setting].nil?
        type.obfuscation_setting = ObfuscationSetting.build(params[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless params[:obfuscation_setting].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_id = params[:intent_id]
        type.creation_date_time = params[:creation_date_time]
        type.multiple_values_setting = MultipleValuesSetting.build(params[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless params[:multiple_values_setting].nil?
        type
      end
    end

    module CreateSlotTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSlotTypeInput, context: context)
        type = Types::CreateSlotTypeInput.new
        type.slot_type_name = params[:slot_type_name]
        type.description = params[:description]
        type.slot_type_values = SlotTypeValues.build(params[:slot_type_values], context: "#{context}[:slot_type_values]") unless params[:slot_type_values].nil?
        type.value_selection_setting = SlotValueSelectionSetting.build(params[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless params[:value_selection_setting].nil?
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.external_source_setting = ExternalSourceSetting.build(params[:external_source_setting], context: "#{context}[:external_source_setting]") unless params[:external_source_setting].nil?
        type
      end
    end

    module CreateSlotTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSlotTypeOutput, context: context)
        type = Types::CreateSlotTypeOutput.new
        type.slot_type_id = params[:slot_type_id]
        type.slot_type_name = params[:slot_type_name]
        type.description = params[:description]
        type.slot_type_values = SlotTypeValues.build(params[:slot_type_values], context: "#{context}[:slot_type_values]") unless params[:slot_type_values].nil?
        type.value_selection_setting = SlotValueSelectionSetting.build(params[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless params[:value_selection_setting].nil?
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.creation_date_time = params[:creation_date_time]
        type.external_source_setting = ExternalSourceSetting.build(params[:external_source_setting], context: "#{context}[:external_source_setting]") unless params[:external_source_setting].nil?
        type
      end
    end

    module CreateUploadUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUploadUrlInput, context: context)
        type = Types::CreateUploadUrlInput.new
        type
      end
    end

    module CreateUploadUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUploadUrlOutput, context: context)
        type = Types::CreateUploadUrlOutput.new
        type.import_id = params[:import_id]
        type.upload_url = params[:upload_url]
        type
      end
    end

    module CustomPayload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomPayload, context: context)
        type = Types::CustomPayload.new
        type.value = params[:value]
        type
      end
    end

    module CustomVocabularyExportSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomVocabularyExportSpecification, context: context)
        type = Types::CustomVocabularyExportSpecification.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module CustomVocabularyImportSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomVocabularyImportSpecification, context: context)
        type = Types::CustomVocabularyImportSpecification.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module DataPrivacy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataPrivacy, context: context)
        type = Types::DataPrivacy.new
        type.child_directed = params[:child_directed]
        type
      end
    end

    module DateRangeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateRangeFilter, context: context)
        type = Types::DateRangeFilter.new
        type.start_date_time = params[:start_date_time]
        type.end_date_time = params[:end_date_time]
        type
      end
    end

    module DeleteBotAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotAliasInput, context: context)
        type = Types::DeleteBotAliasInput.new
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_id = params[:bot_id]
        type.skip_resource_in_use_check = params[:skip_resource_in_use_check]
        type
      end
    end

    module DeleteBotAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotAliasOutput, context: context)
        type = Types::DeleteBotAliasOutput.new
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_id = params[:bot_id]
        type.bot_alias_status = params[:bot_alias_status]
        type
      end
    end

    module DeleteBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotInput, context: context)
        type = Types::DeleteBotInput.new
        type.bot_id = params[:bot_id]
        type.skip_resource_in_use_check = params[:skip_resource_in_use_check]
        type
      end
    end

    module DeleteBotLocaleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotLocaleInput, context: context)
        type = Types::DeleteBotLocaleInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module DeleteBotLocaleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotLocaleOutput, context: context)
        type = Types::DeleteBotLocaleOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_locale_status = params[:bot_locale_status]
        type
      end
    end

    module DeleteBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotOutput, context: context)
        type = Types::DeleteBotOutput.new
        type.bot_id = params[:bot_id]
        type.bot_status = params[:bot_status]
        type
      end
    end

    module DeleteBotVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotVersionInput, context: context)
        type = Types::DeleteBotVersionInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.skip_resource_in_use_check = params[:skip_resource_in_use_check]
        type
      end
    end

    module DeleteBotVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBotVersionOutput, context: context)
        type = Types::DeleteBotVersionOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.bot_status = params[:bot_status]
        type
      end
    end

    module DeleteCustomVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomVocabularyInput, context: context)
        type = Types::DeleteCustomVocabularyInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module DeleteCustomVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomVocabularyOutput, context: context)
        type = Types::DeleteCustomVocabularyOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.custom_vocabulary_status = params[:custom_vocabulary_status]
        type
      end
    end

    module DeleteExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExportInput, context: context)
        type = Types::DeleteExportInput.new
        type.export_id = params[:export_id]
        type
      end
    end

    module DeleteExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExportOutput, context: context)
        type = Types::DeleteExportOutput.new
        type.export_id = params[:export_id]
        type.export_status = params[:export_status]
        type
      end
    end

    module DeleteImportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImportInput, context: context)
        type = Types::DeleteImportInput.new
        type.import_id = params[:import_id]
        type
      end
    end

    module DeleteImportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImportOutput, context: context)
        type = Types::DeleteImportOutput.new
        type.import_id = params[:import_id]
        type.import_status = params[:import_status]
        type
      end
    end

    module DeleteIntentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntentInput, context: context)
        type = Types::DeleteIntentInput.new
        type.intent_id = params[:intent_id]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
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

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.expected_revision_id = params[:expected_revision_id]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type.resource_arn = params[:resource_arn]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module DeleteResourcePolicyStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyStatementInput, context: context)
        type = Types::DeleteResourcePolicyStatementInput.new
        type.resource_arn = params[:resource_arn]
        type.statement_id = params[:statement_id]
        type.expected_revision_id = params[:expected_revision_id]
        type
      end
    end

    module DeleteResourcePolicyStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyStatementOutput, context: context)
        type = Types::DeleteResourcePolicyStatementOutput.new
        type.resource_arn = params[:resource_arn]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module DeleteSlotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSlotInput, context: context)
        type = Types::DeleteSlotInput.new
        type.slot_id = params[:slot_id]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_id = params[:intent_id]
        type
      end
    end

    module DeleteSlotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSlotOutput, context: context)
        type = Types::DeleteSlotOutput.new
        type
      end
    end

    module DeleteSlotTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSlotTypeInput, context: context)
        type = Types::DeleteSlotTypeInput.new
        type.slot_type_id = params[:slot_type_id]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.skip_resource_in_use_check = params[:skip_resource_in_use_check]
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

    module DeleteUtterancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUtterancesInput, context: context)
        type = Types::DeleteUtterancesInput.new
        type.bot_id = params[:bot_id]
        type.locale_id = params[:locale_id]
        type.session_id = params[:session_id]
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

    module DescribeBotAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotAliasInput, context: context)
        type = Types::DescribeBotAliasInput.new
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_id = params[:bot_id]
        type
      end
    end

    module DescribeBotAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotAliasOutput, context: context)
        type = Types::DescribeBotAliasOutput.new
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_alias_name = params[:bot_alias_name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_alias_locale_settings = BotAliasLocaleSettingsMap.build(params[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless params[:bot_alias_locale_settings].nil?
        type.conversation_log_settings = ConversationLogSettings.build(params[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless params[:conversation_log_settings].nil?
        type.sentiment_analysis_settings = SentimentAnalysisSettings.build(params[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless params[:sentiment_analysis_settings].nil?
        type.bot_alias_history_events = BotAliasHistoryEventsList.build(params[:bot_alias_history_events], context: "#{context}[:bot_alias_history_events]") unless params[:bot_alias_history_events].nil?
        type.bot_alias_status = params[:bot_alias_status]
        type.bot_id = params[:bot_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module DescribeBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotInput, context: context)
        type = Types::DescribeBotInput.new
        type.bot_id = params[:bot_id]
        type
      end
    end

    module DescribeBotLocaleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotLocaleInput, context: context)
        type = Types::DescribeBotLocaleInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module DescribeBotLocaleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotLocaleOutput, context: context)
        type = Types::DescribeBotLocaleOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.locale_name = params[:locale_name]
        type.description = params[:description]
        type.nlu_intent_confidence_threshold = params[:nlu_intent_confidence_threshold]
        type.voice_settings = VoiceSettings.build(params[:voice_settings], context: "#{context}[:voice_settings]") unless params[:voice_settings].nil?
        type.intents_count = params[:intents_count]
        type.slot_types_count = params[:slot_types_count]
        type.bot_locale_status = params[:bot_locale_status]
        type.failure_reasons = FailureReasons.build(params[:failure_reasons], context: "#{context}[:failure_reasons]") unless params[:failure_reasons].nil?
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.last_build_submitted_date_time = params[:last_build_submitted_date_time]
        type.bot_locale_history_events = BotLocaleHistoryEventsList.build(params[:bot_locale_history_events], context: "#{context}[:bot_locale_history_events]") unless params[:bot_locale_history_events].nil?
        type.recommended_actions = RecommendedActions.build(params[:recommended_actions], context: "#{context}[:recommended_actions]") unless params[:recommended_actions].nil?
        type
      end
    end

    module DescribeBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotOutput, context: context)
        type = Types::DescribeBotOutput.new
        type.bot_id = params[:bot_id]
        type.bot_name = params[:bot_name]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.data_privacy = DataPrivacy.build(params[:data_privacy], context: "#{context}[:data_privacy]") unless params[:data_privacy].nil?
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.bot_status = params[:bot_status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module DescribeBotRecommendationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotRecommendationInput, context: context)
        type = Types::DescribeBotRecommendationInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type
      end
    end

    module DescribeBotRecommendationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotRecommendationOutput, context: context)
        type = Types::DescribeBotRecommendationOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_status = params[:bot_recommendation_status]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type.failure_reasons = FailureReasons.build(params[:failure_reasons], context: "#{context}[:failure_reasons]") unless params[:failure_reasons].nil?
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.transcript_source_setting = TranscriptSourceSetting.build(params[:transcript_source_setting], context: "#{context}[:transcript_source_setting]") unless params[:transcript_source_setting].nil?
        type.encryption_setting = EncryptionSetting.build(params[:encryption_setting], context: "#{context}[:encryption_setting]") unless params[:encryption_setting].nil?
        type.bot_recommendation_results = BotRecommendationResults.build(params[:bot_recommendation_results], context: "#{context}[:bot_recommendation_results]") unless params[:bot_recommendation_results].nil?
        type
      end
    end

    module DescribeBotVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotVersionInput, context: context)
        type = Types::DescribeBotVersionInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type
      end
    end

    module DescribeBotVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBotVersionOutput, context: context)
        type = Types::DescribeBotVersionOutput.new
        type.bot_id = params[:bot_id]
        type.bot_name = params[:bot_name]
        type.bot_version = params[:bot_version]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.data_privacy = DataPrivacy.build(params[:data_privacy], context: "#{context}[:data_privacy]") unless params[:data_privacy].nil?
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.bot_status = params[:bot_status]
        type.failure_reasons = FailureReasons.build(params[:failure_reasons], context: "#{context}[:failure_reasons]") unless params[:failure_reasons].nil?
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module DescribeCustomVocabularyMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomVocabularyMetadataInput, context: context)
        type = Types::DescribeCustomVocabularyMetadataInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module DescribeCustomVocabularyMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomVocabularyMetadataOutput, context: context)
        type = Types::DescribeCustomVocabularyMetadataOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.custom_vocabulary_status = params[:custom_vocabulary_status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module DescribeExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportInput, context: context)
        type = Types::DescribeExportInput.new
        type.export_id = params[:export_id]
        type
      end
    end

    module DescribeExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportOutput, context: context)
        type = Types::DescribeExportOutput.new
        type.export_id = params[:export_id]
        type.resource_specification = ExportResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.file_format = params[:file_format]
        type.export_status = params[:export_status]
        type.failure_reasons = FailureReasons.build(params[:failure_reasons], context: "#{context}[:failure_reasons]") unless params[:failure_reasons].nil?
        type.download_url = params[:download_url]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module DescribeImportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImportInput, context: context)
        type = Types::DescribeImportInput.new
        type.import_id = params[:import_id]
        type
      end
    end

    module DescribeImportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImportOutput, context: context)
        type = Types::DescribeImportOutput.new
        type.import_id = params[:import_id]
        type.resource_specification = ImportResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.imported_resource_id = params[:imported_resource_id]
        type.imported_resource_name = params[:imported_resource_name]
        type.merge_strategy = params[:merge_strategy]
        type.import_status = params[:import_status]
        type.failure_reasons = FailureReasons.build(params[:failure_reasons], context: "#{context}[:failure_reasons]") unless params[:failure_reasons].nil?
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module DescribeIntentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIntentInput, context: context)
        type = Types::DescribeIntentInput.new
        type.intent_id = params[:intent_id]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module DescribeIntentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIntentOutput, context: context)
        type = Types::DescribeIntentOutput.new
        type.intent_id = params[:intent_id]
        type.intent_name = params[:intent_name]
        type.description = params[:description]
        type.parent_intent_signature = params[:parent_intent_signature]
        type.sample_utterances = SampleUtterancesList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.dialog_code_hook = DialogCodeHookSettings.build(params[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless params[:dialog_code_hook].nil?
        type.fulfillment_code_hook = FulfillmentCodeHookSettings.build(params[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless params[:fulfillment_code_hook].nil?
        type.slot_priorities = SlotPrioritiesList.build(params[:slot_priorities], context: "#{context}[:slot_priorities]") unless params[:slot_priorities].nil?
        type.intent_confirmation_setting = IntentConfirmationSetting.build(params[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless params[:intent_confirmation_setting].nil?
        type.intent_closing_setting = IntentClosingSetting.build(params[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless params[:intent_closing_setting].nil?
        type.input_contexts = InputContextsList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextsList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type.kendra_configuration = KendraConfiguration.build(params[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless params[:kendra_configuration].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module DescribeResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePolicyInput, context: context)
        type = Types::DescribeResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DescribeResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePolicyOutput, context: context)
        type = Types::DescribeResourcePolicyOutput.new
        type.resource_arn = params[:resource_arn]
        type.policy = params[:policy]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module DescribeSlotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSlotInput, context: context)
        type = Types::DescribeSlotInput.new
        type.slot_id = params[:slot_id]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_id = params[:intent_id]
        type
      end
    end

    module DescribeSlotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSlotOutput, context: context)
        type = Types::DescribeSlotOutput.new
        type.slot_id = params[:slot_id]
        type.slot_name = params[:slot_name]
        type.description = params[:description]
        type.slot_type_id = params[:slot_type_id]
        type.value_elicitation_setting = SlotValueElicitationSetting.build(params[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless params[:value_elicitation_setting].nil?
        type.obfuscation_setting = ObfuscationSetting.build(params[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless params[:obfuscation_setting].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_id = params[:intent_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.multiple_values_setting = MultipleValuesSetting.build(params[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless params[:multiple_values_setting].nil?
        type
      end
    end

    module DescribeSlotTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSlotTypeInput, context: context)
        type = Types::DescribeSlotTypeInput.new
        type.slot_type_id = params[:slot_type_id]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module DescribeSlotTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSlotTypeOutput, context: context)
        type = Types::DescribeSlotTypeOutput.new
        type.slot_type_id = params[:slot_type_id]
        type.slot_type_name = params[:slot_type_name]
        type.description = params[:description]
        type.slot_type_values = SlotTypeValues.build(params[:slot_type_values], context: "#{context}[:slot_type_values]") unless params[:slot_type_values].nil?
        type.value_selection_setting = SlotValueSelectionSetting.build(params[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless params[:value_selection_setting].nil?
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.external_source_setting = ExternalSourceSetting.build(params[:external_source_setting], context: "#{context}[:external_source_setting]") unless params[:external_source_setting].nil?
        type
      end
    end

    module DialogCodeHookSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DialogCodeHookSettings, context: context)
        type = Types::DialogCodeHookSettings.new
        type.enabled = params[:enabled]
        type
      end
    end

    module EncryptionSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionSetting, context: context)
        type = Types::EncryptionSetting.new
        type.kms_key_arn = params[:kms_key_arn]
        type.bot_locale_export_password = params[:bot_locale_export_password]
        type.associated_transcripts_password = params[:associated_transcripts_password]
        type
      end
    end

    module ExportFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportFilter, context: context)
        type = Types::ExportFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module ExportFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExportResourceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportResourceSpecification, context: context)
        type = Types::ExportResourceSpecification.new
        type.bot_export_specification = BotExportSpecification.build(params[:bot_export_specification], context: "#{context}[:bot_export_specification]") unless params[:bot_export_specification].nil?
        type.bot_locale_export_specification = BotLocaleExportSpecification.build(params[:bot_locale_export_specification], context: "#{context}[:bot_locale_export_specification]") unless params[:bot_locale_export_specification].nil?
        type.custom_vocabulary_export_specification = CustomVocabularyExportSpecification.build(params[:custom_vocabulary_export_specification], context: "#{context}[:custom_vocabulary_export_specification]") unless params[:custom_vocabulary_export_specification].nil?
        type
      end
    end

    module ExportSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSortBy, context: context)
        type = Types::ExportSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module ExportSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSummary, context: context)
        type = Types::ExportSummary.new
        type.export_id = params[:export_id]
        type.resource_specification = ExportResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.file_format = params[:file_format]
        type.export_status = params[:export_status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module ExportSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExternalSourceSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalSourceSetting, context: context)
        type = Types::ExternalSourceSetting.new
        type.grammar_slot_type_setting = GrammarSlotTypeSetting.build(params[:grammar_slot_type_setting], context: "#{context}[:grammar_slot_type_setting]") unless params[:grammar_slot_type_setting].nil?
        type
      end
    end

    module FailureReasons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FulfillmentCodeHookSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FulfillmentCodeHookSettings, context: context)
        type = Types::FulfillmentCodeHookSettings.new
        type.enabled = params[:enabled]
        type.post_fulfillment_status_specification = PostFulfillmentStatusSpecification.build(params[:post_fulfillment_status_specification], context: "#{context}[:post_fulfillment_status_specification]") unless params[:post_fulfillment_status_specification].nil?
        type.fulfillment_updates_specification = FulfillmentUpdatesSpecification.build(params[:fulfillment_updates_specification], context: "#{context}[:fulfillment_updates_specification]") unless params[:fulfillment_updates_specification].nil?
        type
      end
    end

    module FulfillmentStartResponseSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FulfillmentStartResponseSpecification, context: context)
        type = Types::FulfillmentStartResponseSpecification.new
        type.delay_in_seconds = params[:delay_in_seconds]
        type.message_groups = MessageGroupsList.build(params[:message_groups], context: "#{context}[:message_groups]") unless params[:message_groups].nil?
        type.allow_interrupt = params[:allow_interrupt]
        type
      end
    end

    module FulfillmentUpdateResponseSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FulfillmentUpdateResponseSpecification, context: context)
        type = Types::FulfillmentUpdateResponseSpecification.new
        type.frequency_in_seconds = params[:frequency_in_seconds]
        type.message_groups = MessageGroupsList.build(params[:message_groups], context: "#{context}[:message_groups]") unless params[:message_groups].nil?
        type.allow_interrupt = params[:allow_interrupt]
        type
      end
    end

    module FulfillmentUpdatesSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FulfillmentUpdatesSpecification, context: context)
        type = Types::FulfillmentUpdatesSpecification.new
        type.active = params[:active]
        type.start_response = FulfillmentStartResponseSpecification.build(params[:start_response], context: "#{context}[:start_response]") unless params[:start_response].nil?
        type.update_response = FulfillmentUpdateResponseSpecification.build(params[:update_response], context: "#{context}[:update_response]") unless params[:update_response].nil?
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type
      end
    end

    module GrammarSlotTypeSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrammarSlotTypeSetting, context: context)
        type = Types::GrammarSlotTypeSetting.new
        type.source = GrammarSlotTypeSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type
      end
    end

    module GrammarSlotTypeSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrammarSlotTypeSource, context: context)
        type = Types::GrammarSlotTypeSource.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_object_key = params[:s3_object_key]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module ImageResponseCard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageResponseCard, context: context)
        type = Types::ImageResponseCard.new
        type.title = params[:title]
        type.subtitle = params[:subtitle]
        type.image_url = params[:image_url]
        type.buttons = ButtonsList.build(params[:buttons], context: "#{context}[:buttons]") unless params[:buttons].nil?
        type
      end
    end

    module ImportFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportFilter, context: context)
        type = Types::ImportFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module ImportFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImportResourceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportResourceSpecification, context: context)
        type = Types::ImportResourceSpecification.new
        type.bot_import_specification = BotImportSpecification.build(params[:bot_import_specification], context: "#{context}[:bot_import_specification]") unless params[:bot_import_specification].nil?
        type.bot_locale_import_specification = BotLocaleImportSpecification.build(params[:bot_locale_import_specification], context: "#{context}[:bot_locale_import_specification]") unless params[:bot_locale_import_specification].nil?
        type.custom_vocabulary_import_specification = CustomVocabularyImportSpecification.build(params[:custom_vocabulary_import_specification], context: "#{context}[:custom_vocabulary_import_specification]") unless params[:custom_vocabulary_import_specification].nil?
        type
      end
    end

    module ImportSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportSortBy, context: context)
        type = Types::ImportSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module ImportSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportSummary, context: context)
        type = Types::ImportSummary.new
        type.import_id = params[:import_id]
        type.imported_resource_id = params[:imported_resource_id]
        type.imported_resource_name = params[:imported_resource_name]
        type.import_status = params[:import_status]
        type.merge_strategy = params[:merge_strategy]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.imported_resource_type = params[:imported_resource_type]
        type
      end
    end

    module ImportSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module InputContextsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputContext.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntentClosingSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentClosingSetting, context: context)
        type = Types::IntentClosingSetting.new
        type.closing_response = ResponseSpecification.build(params[:closing_response], context: "#{context}[:closing_response]") unless params[:closing_response].nil?
        type.active = params[:active]
        type
      end
    end

    module IntentConfirmationSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentConfirmationSetting, context: context)
        type = Types::IntentConfirmationSetting.new
        type.prompt_specification = PromptSpecification.build(params[:prompt_specification], context: "#{context}[:prompt_specification]") unless params[:prompt_specification].nil?
        type.declination_response = ResponseSpecification.build(params[:declination_response], context: "#{context}[:declination_response]") unless params[:declination_response].nil?
        type.active = params[:active]
        type
      end
    end

    module IntentFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentFilter, context: context)
        type = Types::IntentFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module IntentFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntentFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntentSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentSortBy, context: context)
        type = Types::IntentSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module IntentStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentStatistics, context: context)
        type = Types::IntentStatistics.new
        type.discovered_intent_count = params[:discovered_intent_count]
        type
      end
    end

    module IntentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentSummary, context: context)
        type = Types::IntentSummary.new
        type.intent_id = params[:intent_id]
        type.intent_name = params[:intent_name]
        type.description = params[:description]
        type.parent_intent_signature = params[:parent_intent_signature]
        type.input_contexts = InputContextsList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextsList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module IntentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module KendraConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KendraConfiguration, context: context)
        type = Types::KendraConfiguration.new
        type.kendra_index = params[:kendra_index]
        type.query_filter_string_enabled = params[:query_filter_string_enabled]
        type.query_filter_string = params[:query_filter_string]
        type
      end
    end

    module LambdaCodeHook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaCodeHook, context: context)
        type = Types::LambdaCodeHook.new
        type.lambda_arn = params[:lambda_arn]
        type.code_hook_interface_version = params[:code_hook_interface_version]
        type
      end
    end

    module LexTranscriptFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LexTranscriptFilter, context: context)
        type = Types::LexTranscriptFilter.new
        type.date_range_filter = DateRangeFilter.build(params[:date_range_filter], context: "#{context}[:date_range_filter]") unless params[:date_range_filter].nil?
        type
      end
    end

    module ListAggregatedUtterancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAggregatedUtterancesInput, context: context)
        type = Types::ListAggregatedUtterancesInput.new
        type.bot_id = params[:bot_id]
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.aggregation_duration = UtteranceAggregationDuration.build(params[:aggregation_duration], context: "#{context}[:aggregation_duration]") unless params[:aggregation_duration].nil?
        type.sort_by = AggregatedUtterancesSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.filters = AggregatedUtterancesFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAggregatedUtterancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAggregatedUtterancesOutput, context: context)
        type = Types::ListAggregatedUtterancesOutput.new
        type.bot_id = params[:bot_id]
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.aggregation_duration = UtteranceAggregationDuration.build(params[:aggregation_duration], context: "#{context}[:aggregation_duration]") unless params[:aggregation_duration].nil?
        type.aggregation_window_start_time = params[:aggregation_window_start_time]
        type.aggregation_window_end_time = params[:aggregation_window_end_time]
        type.aggregation_last_refreshed_date_time = params[:aggregation_last_refreshed_date_time]
        type.aggregated_utterances_summaries = AggregatedUtterancesSummaryList.build(params[:aggregated_utterances_summaries], context: "#{context}[:aggregated_utterances_summaries]") unless params[:aggregated_utterances_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotAliasesInput, context: context)
        type = Types::ListBotAliasesInput.new
        type.bot_id = params[:bot_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotAliasesOutput, context: context)
        type = Types::ListBotAliasesOutput.new
        type.bot_alias_summaries = BotAliasSummaryList.build(params[:bot_alias_summaries], context: "#{context}[:bot_alias_summaries]") unless params[:bot_alias_summaries].nil?
        type.next_token = params[:next_token]
        type.bot_id = params[:bot_id]
        type
      end
    end

    module ListBotLocalesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotLocalesInput, context: context)
        type = Types::ListBotLocalesInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.sort_by = BotLocaleSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.filters = BotLocaleFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotLocalesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotLocalesOutput, context: context)
        type = Types::ListBotLocalesOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.next_token = params[:next_token]
        type.bot_locale_summaries = BotLocaleSummaryList.build(params[:bot_locale_summaries], context: "#{context}[:bot_locale_summaries]") unless params[:bot_locale_summaries].nil?
        type
      end
    end

    module ListBotRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotRecommendationsInput, context: context)
        type = Types::ListBotRecommendationsInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotRecommendationsOutput, context: context)
        type = Types::ListBotRecommendationsOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_summaries = BotRecommendationSummaryList.build(params[:bot_recommendation_summaries], context: "#{context}[:bot_recommendation_summaries]") unless params[:bot_recommendation_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotVersionsInput, context: context)
        type = Types::ListBotVersionsInput.new
        type.bot_id = params[:bot_id]
        type.sort_by = BotVersionSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotVersionsOutput, context: context)
        type = Types::ListBotVersionsOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version_summaries = BotVersionSummaryList.build(params[:bot_version_summaries], context: "#{context}[:bot_version_summaries]") unless params[:bot_version_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotsInput, context: context)
        type = Types::ListBotsInput.new
        type.sort_by = BotSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.filters = BotFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotsOutput, context: context)
        type = Types::ListBotsOutput.new
        type.bot_summaries = BotSummaryList.build(params[:bot_summaries], context: "#{context}[:bot_summaries]") unless params[:bot_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuiltInIntentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuiltInIntentsInput, context: context)
        type = Types::ListBuiltInIntentsInput.new
        type.locale_id = params[:locale_id]
        type.sort_by = BuiltInIntentSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuiltInIntentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuiltInIntentsOutput, context: context)
        type = Types::ListBuiltInIntentsOutput.new
        type.built_in_intent_summaries = BuiltInIntentSummaryList.build(params[:built_in_intent_summaries], context: "#{context}[:built_in_intent_summaries]") unless params[:built_in_intent_summaries].nil?
        type.next_token = params[:next_token]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module ListBuiltInSlotTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuiltInSlotTypesInput, context: context)
        type = Types::ListBuiltInSlotTypesInput.new
        type.locale_id = params[:locale_id]
        type.sort_by = BuiltInSlotTypeSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuiltInSlotTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuiltInSlotTypesOutput, context: context)
        type = Types::ListBuiltInSlotTypesOutput.new
        type.built_in_slot_type_summaries = BuiltInSlotTypeSummaryList.build(params[:built_in_slot_type_summaries], context: "#{context}[:built_in_slot_type_summaries]") unless params[:built_in_slot_type_summaries].nil?
        type.next_token = params[:next_token]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module ListExportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExportsInput, context: context)
        type = Types::ListExportsInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.sort_by = ExportSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.filters = ExportFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module ListExportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExportsOutput, context: context)
        type = Types::ListExportsOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.export_summaries = ExportSummaryList.build(params[:export_summaries], context: "#{context}[:export_summaries]") unless params[:export_summaries].nil?
        type.next_token = params[:next_token]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module ListImportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImportsInput, context: context)
        type = Types::ListImportsInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.sort_by = ImportSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.filters = ImportFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module ListImportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImportsOutput, context: context)
        type = Types::ListImportsOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.import_summaries = ImportSummaryList.build(params[:import_summaries], context: "#{context}[:import_summaries]") unless params[:import_summaries].nil?
        type.next_token = params[:next_token]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module ListIntentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIntentsInput, context: context)
        type = Types::ListIntentsInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.sort_by = IntentSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.filters = IntentFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIntentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIntentsOutput, context: context)
        type = Types::ListIntentsOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_summaries = IntentSummaryList.build(params[:intent_summaries], context: "#{context}[:intent_summaries]") unless params[:intent_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecommendedIntentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendedIntentsInput, context: context)
        type = Types::ListRecommendedIntentsInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRecommendedIntentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendedIntentsOutput, context: context)
        type = Types::ListRecommendedIntentsOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type.summary_list = RecommendedIntentSummaryList.build(params[:summary_list], context: "#{context}[:summary_list]") unless params[:summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSlotTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSlotTypesInput, context: context)
        type = Types::ListSlotTypesInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.sort_by = SlotTypeSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.filters = SlotTypeFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSlotTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSlotTypesOutput, context: context)
        type = Types::ListSlotTypesOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.slot_type_summaries = SlotTypeSummaryList.build(params[:slot_type_summaries], context: "#{context}[:slot_type_summaries]") unless params[:slot_type_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSlotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSlotsInput, context: context)
        type = Types::ListSlotsInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_id = params[:intent_id]
        type.sort_by = SlotSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.filters = SlotFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSlotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSlotsOutput, context: context)
        type = Types::ListSlotsOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_id = params[:intent_id]
        type.slot_summaries = SlotSummaryList.build(params[:slot_summaries], context: "#{context}[:slot_summaries]") unless params[:slot_summaries].nil?
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

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.plain_text_message = PlainTextMessage.build(params[:plain_text_message], context: "#{context}[:plain_text_message]") unless params[:plain_text_message].nil?
        type.custom_payload = CustomPayload.build(params[:custom_payload], context: "#{context}[:custom_payload]") unless params[:custom_payload].nil?
        type.ssml_message = SSMLMessage.build(params[:ssml_message], context: "#{context}[:ssml_message]") unless params[:ssml_message].nil?
        type.image_response_card = ImageResponseCard.build(params[:image_response_card], context: "#{context}[:image_response_card]") unless params[:image_response_card].nil?
        type
      end
    end

    module MessageGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageGroup, context: context)
        type = Types::MessageGroup.new
        type.message = Message.build(params[:message], context: "#{context}[:message]") unless params[:message].nil?
        type.variations = MessageVariationsList.build(params[:variations], context: "#{context}[:variations]") unless params[:variations].nil?
        type
      end
    end

    module MessageGroupsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MessageGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MessageVariationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Message.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MultipleValuesSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultipleValuesSetting, context: context)
        type = Types::MultipleValuesSetting.new
        type.allow_multiple_values = params[:allow_multiple_values]
        type
      end
    end

    module ObfuscationSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObfuscationSetting, context: context)
        type = Types::ObfuscationSetting.new
        type.obfuscation_setting_type = params[:obfuscation_setting_type]
        type
      end
    end

    module ObjectPrefixes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module OutputContextsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputContext.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PathFormat
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PathFormat, context: context)
        type = Types::PathFormat.new
        type.object_prefixes = ObjectPrefixes.build(params[:object_prefixes], context: "#{context}[:object_prefixes]") unless params[:object_prefixes].nil?
        type
      end
    end

    module PlainTextMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlainTextMessage, context: context)
        type = Types::PlainTextMessage.new
        type.value = params[:value]
        type
      end
    end

    module PostFulfillmentStatusSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostFulfillmentStatusSpecification, context: context)
        type = Types::PostFulfillmentStatusSpecification.new
        type.success_response = ResponseSpecification.build(params[:success_response], context: "#{context}[:success_response]") unless params[:success_response].nil?
        type.failure_response = ResponseSpecification.build(params[:failure_response], context: "#{context}[:failure_response]") unless params[:failure_response].nil?
        type.timeout_response = ResponseSpecification.build(params[:timeout_response], context: "#{context}[:timeout_response]") unless params[:timeout_response].nil?
        type
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

    module Principal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Principal, context: context)
        type = Types::Principal.new
        type.service = params[:service]
        type.arn = params[:arn]
        type
      end
    end

    module PrincipalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Principal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PromptSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PromptSpecification, context: context)
        type = Types::PromptSpecification.new
        type.message_groups = MessageGroupsList.build(params[:message_groups], context: "#{context}[:message_groups]") unless params[:message_groups].nil?
        type.max_retries = params[:max_retries]
        type.allow_interrupt = params[:allow_interrupt]
        type
      end
    end

    module RecommendedActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecommendedIntentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendedIntentSummary, context: context)
        type = Types::RecommendedIntentSummary.new
        type.intent_id = params[:intent_id]
        type.intent_name = params[:intent_name]
        type.sample_utterances_count = params[:sample_utterances_count]
        type
      end
    end

    module RecommendedIntentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendedIntentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelativeAggregationDuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelativeAggregationDuration, context: context)
        type = Types::RelativeAggregationDuration.new
        type.time_dimension = params[:time_dimension]
        type.time_value = params[:time_value]
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

    module ResponseSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseSpecification, context: context)
        type = Types::ResponseSpecification.new
        type.message_groups = MessageGroupsList.build(params[:message_groups], context: "#{context}[:message_groups]") unless params[:message_groups].nil?
        type.allow_interrupt = params[:allow_interrupt]
        type
      end
    end

    module S3BucketLogDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketLogDestination, context: context)
        type = Types::S3BucketLogDestination.new
        type.kms_key_arn = params[:kms_key_arn]
        type.s3_bucket_arn = params[:s3_bucket_arn]
        type.log_prefix = params[:log_prefix]
        type
      end
    end

    module S3BucketTranscriptSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketTranscriptSource, context: context)
        type = Types::S3BucketTranscriptSource.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.path_format = PathFormat.build(params[:path_format], context: "#{context}[:path_format]") unless params[:path_format].nil?
        type.transcript_format = params[:transcript_format]
        type.transcript_filter = TranscriptFilter.build(params[:transcript_filter], context: "#{context}[:transcript_filter]") unless params[:transcript_filter].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module SSMLMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSMLMessage, context: context)
        type = Types::SSMLMessage.new
        type.value = params[:value]
        type
      end
    end

    module SampleUtterance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SampleUtterance, context: context)
        type = Types::SampleUtterance.new
        type.utterance = params[:utterance]
        type
      end
    end

    module SampleUtterancesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SampleUtterance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SampleValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SampleValue, context: context)
        type = Types::SampleValue.new
        type.value = params[:value]
        type
      end
    end

    module SearchAssociatedTranscriptsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAssociatedTranscriptsInput, context: context)
        type = Types::SearchAssociatedTranscriptsInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type.search_order = params[:search_order]
        type.filters = AssociatedTranscriptFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_index = params[:next_index]
        type
      end
    end

    module SearchAssociatedTranscriptsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAssociatedTranscriptsOutput, context: context)
        type = Types::SearchAssociatedTranscriptsOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type.next_index = params[:next_index]
        type.associated_transcripts = AssociatedTranscriptList.build(params[:associated_transcripts], context: "#{context}[:associated_transcripts]") unless params[:associated_transcripts].nil?
        type.total_results = params[:total_results]
        type
      end
    end

    module SentimentAnalysisSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SentimentAnalysisSettings, context: context)
        type = Types::SentimentAnalysisSettings.new
        type.detect_sentiment = params[:detect_sentiment]
        type
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

    module SlotDefaultValueSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotDefaultValueSpecification, context: context)
        type = Types::SlotDefaultValueSpecification.new
        type.default_value_list = SlotDefaultValueList.build(params[:default_value_list], context: "#{context}[:default_value_list]") unless params[:default_value_list].nil?
        type
      end
    end

    module SlotFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotFilter, context: context)
        type = Types::SlotFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module SlotFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SlotFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotPrioritiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SlotPriority.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotPriority
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotPriority, context: context)
        type = Types::SlotPriority.new
        type.priority = params[:priority]
        type.slot_id = params[:slot_id]
        type
      end
    end

    module SlotSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotSortBy, context: context)
        type = Types::SlotSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module SlotSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotSummary, context: context)
        type = Types::SlotSummary.new
        type.slot_id = params[:slot_id]
        type.slot_name = params[:slot_name]
        type.description = params[:description]
        type.slot_constraint = params[:slot_constraint]
        type.slot_type_id = params[:slot_type_id]
        type.value_elicitation_prompt_specification = PromptSpecification.build(params[:value_elicitation_prompt_specification], context: "#{context}[:value_elicitation_prompt_specification]") unless params[:value_elicitation_prompt_specification].nil?
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module SlotSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SlotSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotTypeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotTypeFilter, context: context)
        type = Types::SlotTypeFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module SlotTypeFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SlotTypeFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotTypeSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotTypeSortBy, context: context)
        type = Types::SlotTypeSortBy.new
        type.attribute = params[:attribute]
        type.order = params[:order]
        type
      end
    end

    module SlotTypeStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotTypeStatistics, context: context)
        type = Types::SlotTypeStatistics.new
        type.discovered_slot_type_count = params[:discovered_slot_type_count]
        type
      end
    end

    module SlotTypeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotTypeSummary, context: context)
        type = Types::SlotTypeSummary.new
        type.slot_type_id = params[:slot_type_id]
        type.slot_type_name = params[:slot_type_name]
        type.description = params[:description]
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.slot_type_category = params[:slot_type_category]
        type
      end
    end

    module SlotTypeSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SlotTypeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotTypeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotTypeValue, context: context)
        type = Types::SlotTypeValue.new
        type.sample_value = SampleValue.build(params[:sample_value], context: "#{context}[:sample_value]") unless params[:sample_value].nil?
        type.synonyms = SynonymList.build(params[:synonyms], context: "#{context}[:synonyms]") unless params[:synonyms].nil?
        type
      end
    end

    module SlotTypeValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SlotTypeValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SlotValueElicitationSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotValueElicitationSetting, context: context)
        type = Types::SlotValueElicitationSetting.new
        type.default_value_specification = SlotDefaultValueSpecification.build(params[:default_value_specification], context: "#{context}[:default_value_specification]") unless params[:default_value_specification].nil?
        type.slot_constraint = params[:slot_constraint]
        type.prompt_specification = PromptSpecification.build(params[:prompt_specification], context: "#{context}[:prompt_specification]") unless params[:prompt_specification].nil?
        type.sample_utterances = SampleUtterancesList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.wait_and_continue_specification = WaitAndContinueSpecification.build(params[:wait_and_continue_specification], context: "#{context}[:wait_and_continue_specification]") unless params[:wait_and_continue_specification].nil?
        type
      end
    end

    module SlotValueRegexFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotValueRegexFilter, context: context)
        type = Types::SlotValueRegexFilter.new
        type.pattern = params[:pattern]
        type
      end
    end

    module SlotValueSelectionSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotValueSelectionSetting, context: context)
        type = Types::SlotValueSelectionSetting.new
        type.resolution_strategy = params[:resolution_strategy]
        type.regex_filter = SlotValueRegexFilter.build(params[:regex_filter], context: "#{context}[:regex_filter]") unless params[:regex_filter].nil?
        type.advanced_recognition_setting = AdvancedRecognitionSetting.build(params[:advanced_recognition_setting], context: "#{context}[:advanced_recognition_setting]") unless params[:advanced_recognition_setting].nil?
        type
      end
    end

    module StartBotRecommendationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBotRecommendationInput, context: context)
        type = Types::StartBotRecommendationInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.transcript_source_setting = TranscriptSourceSetting.build(params[:transcript_source_setting], context: "#{context}[:transcript_source_setting]") unless params[:transcript_source_setting].nil?
        type.encryption_setting = EncryptionSetting.build(params[:encryption_setting], context: "#{context}[:encryption_setting]") unless params[:encryption_setting].nil?
        type
      end
    end

    module StartBotRecommendationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBotRecommendationOutput, context: context)
        type = Types::StartBotRecommendationOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_status = params[:bot_recommendation_status]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type.creation_date_time = params[:creation_date_time]
        type.transcript_source_setting = TranscriptSourceSetting.build(params[:transcript_source_setting], context: "#{context}[:transcript_source_setting]") unless params[:transcript_source_setting].nil?
        type.encryption_setting = EncryptionSetting.build(params[:encryption_setting], context: "#{context}[:encryption_setting]") unless params[:encryption_setting].nil?
        type
      end
    end

    module StartImportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportInput, context: context)
        type = Types::StartImportInput.new
        type.import_id = params[:import_id]
        type.resource_specification = ImportResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.merge_strategy = params[:merge_strategy]
        type.file_password = params[:file_password]
        type
      end
    end

    module StartImportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportOutput, context: context)
        type = Types::StartImportOutput.new
        type.import_id = params[:import_id]
        type.resource_specification = ImportResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.merge_strategy = params[:merge_strategy]
        type.import_status = params[:import_status]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module StillWaitingResponseSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StillWaitingResponseSpecification, context: context)
        type = Types::StillWaitingResponseSpecification.new
        type.message_groups = MessageGroupsList.build(params[:message_groups], context: "#{context}[:message_groups]") unless params[:message_groups].nil?
        type.frequency_in_seconds = params[:frequency_in_seconds]
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.allow_interrupt = params[:allow_interrupt]
        type
      end
    end

    module SynonymList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SampleValue.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module TextLogDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextLogDestination, context: context)
        type = Types::TextLogDestination.new
        type.cloud_watch = CloudWatchLogGroupLogDestination.build(params[:cloud_watch], context: "#{context}[:cloud_watch]") unless params[:cloud_watch].nil?
        type
      end
    end

    module TextLogSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextLogSetting, context: context)
        type = Types::TextLogSetting.new
        type.enabled = params[:enabled]
        type.destination = TextLogDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module TextLogSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TextLogSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.message = params[:message]
        type
      end
    end

    module TranscriptFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptFilter, context: context)
        type = Types::TranscriptFilter.new
        type.lex_transcript_filter = LexTranscriptFilter.build(params[:lex_transcript_filter], context: "#{context}[:lex_transcript_filter]") unless params[:lex_transcript_filter].nil?
        type
      end
    end

    module TranscriptSourceSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptSourceSetting, context: context)
        type = Types::TranscriptSourceSetting.new
        type.s3_bucket_transcript_source = S3BucketTranscriptSource.build(params[:s3_bucket_transcript_source], context: "#{context}[:s3_bucket_transcript_source]") unless params[:s3_bucket_transcript_source].nil?
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

    module UpdateBotAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotAliasInput, context: context)
        type = Types::UpdateBotAliasInput.new
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_alias_name = params[:bot_alias_name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_alias_locale_settings = BotAliasLocaleSettingsMap.build(params[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless params[:bot_alias_locale_settings].nil?
        type.conversation_log_settings = ConversationLogSettings.build(params[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless params[:conversation_log_settings].nil?
        type.sentiment_analysis_settings = SentimentAnalysisSettings.build(params[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless params[:sentiment_analysis_settings].nil?
        type.bot_id = params[:bot_id]
        type
      end
    end

    module UpdateBotAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotAliasOutput, context: context)
        type = Types::UpdateBotAliasOutput.new
        type.bot_alias_id = params[:bot_alias_id]
        type.bot_alias_name = params[:bot_alias_name]
        type.description = params[:description]
        type.bot_version = params[:bot_version]
        type.bot_alias_locale_settings = BotAliasLocaleSettingsMap.build(params[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless params[:bot_alias_locale_settings].nil?
        type.conversation_log_settings = ConversationLogSettings.build(params[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless params[:conversation_log_settings].nil?
        type.sentiment_analysis_settings = SentimentAnalysisSettings.build(params[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless params[:sentiment_analysis_settings].nil?
        type.bot_alias_status = params[:bot_alias_status]
        type.bot_id = params[:bot_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module UpdateBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotInput, context: context)
        type = Types::UpdateBotInput.new
        type.bot_id = params[:bot_id]
        type.bot_name = params[:bot_name]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.data_privacy = DataPrivacy.build(params[:data_privacy], context: "#{context}[:data_privacy]") unless params[:data_privacy].nil?
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type
      end
    end

    module UpdateBotLocaleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotLocaleInput, context: context)
        type = Types::UpdateBotLocaleInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.description = params[:description]
        type.nlu_intent_confidence_threshold = params[:nlu_intent_confidence_threshold]
        type.voice_settings = VoiceSettings.build(params[:voice_settings], context: "#{context}[:voice_settings]") unless params[:voice_settings].nil?
        type
      end
    end

    module UpdateBotLocaleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotLocaleOutput, context: context)
        type = Types::UpdateBotLocaleOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.locale_name = params[:locale_name]
        type.description = params[:description]
        type.nlu_intent_confidence_threshold = params[:nlu_intent_confidence_threshold]
        type.voice_settings = VoiceSettings.build(params[:voice_settings], context: "#{context}[:voice_settings]") unless params[:voice_settings].nil?
        type.bot_locale_status = params[:bot_locale_status]
        type.failure_reasons = FailureReasons.build(params[:failure_reasons], context: "#{context}[:failure_reasons]") unless params[:failure_reasons].nil?
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.recommended_actions = RecommendedActions.build(params[:recommended_actions], context: "#{context}[:recommended_actions]") unless params[:recommended_actions].nil?
        type
      end
    end

    module UpdateBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotOutput, context: context)
        type = Types::UpdateBotOutput.new
        type.bot_id = params[:bot_id]
        type.bot_name = params[:bot_name]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.data_privacy = DataPrivacy.build(params[:data_privacy], context: "#{context}[:data_privacy]") unless params[:data_privacy].nil?
        type.idle_session_ttl_in_seconds = params[:idle_session_ttl_in_seconds]
        type.bot_status = params[:bot_status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module UpdateBotRecommendationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotRecommendationInput, context: context)
        type = Types::UpdateBotRecommendationInput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type.encryption_setting = EncryptionSetting.build(params[:encryption_setting], context: "#{context}[:encryption_setting]") unless params[:encryption_setting].nil?
        type
      end
    end

    module UpdateBotRecommendationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotRecommendationOutput, context: context)
        type = Types::UpdateBotRecommendationOutput.new
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.bot_recommendation_status = params[:bot_recommendation_status]
        type.bot_recommendation_id = params[:bot_recommendation_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.transcript_source_setting = TranscriptSourceSetting.build(params[:transcript_source_setting], context: "#{context}[:transcript_source_setting]") unless params[:transcript_source_setting].nil?
        type.encryption_setting = EncryptionSetting.build(params[:encryption_setting], context: "#{context}[:encryption_setting]") unless params[:encryption_setting].nil?
        type
      end
    end

    module UpdateExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExportInput, context: context)
        type = Types::UpdateExportInput.new
        type.export_id = params[:export_id]
        type.file_password = params[:file_password]
        type
      end
    end

    module UpdateExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExportOutput, context: context)
        type = Types::UpdateExportOutput.new
        type.export_id = params[:export_id]
        type.resource_specification = ExportResourceSpecification.build(params[:resource_specification], context: "#{context}[:resource_specification]") unless params[:resource_specification].nil?
        type.file_format = params[:file_format]
        type.export_status = params[:export_status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module UpdateIntentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntentInput, context: context)
        type = Types::UpdateIntentInput.new
        type.intent_id = params[:intent_id]
        type.intent_name = params[:intent_name]
        type.description = params[:description]
        type.parent_intent_signature = params[:parent_intent_signature]
        type.sample_utterances = SampleUtterancesList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.dialog_code_hook = DialogCodeHookSettings.build(params[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless params[:dialog_code_hook].nil?
        type.fulfillment_code_hook = FulfillmentCodeHookSettings.build(params[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless params[:fulfillment_code_hook].nil?
        type.slot_priorities = SlotPrioritiesList.build(params[:slot_priorities], context: "#{context}[:slot_priorities]") unless params[:slot_priorities].nil?
        type.intent_confirmation_setting = IntentConfirmationSetting.build(params[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless params[:intent_confirmation_setting].nil?
        type.intent_closing_setting = IntentClosingSetting.build(params[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless params[:intent_closing_setting].nil?
        type.input_contexts = InputContextsList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextsList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type.kendra_configuration = KendraConfiguration.build(params[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless params[:kendra_configuration].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type
      end
    end

    module UpdateIntentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntentOutput, context: context)
        type = Types::UpdateIntentOutput.new
        type.intent_id = params[:intent_id]
        type.intent_name = params[:intent_name]
        type.description = params[:description]
        type.parent_intent_signature = params[:parent_intent_signature]
        type.sample_utterances = SampleUtterancesList.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.dialog_code_hook = DialogCodeHookSettings.build(params[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless params[:dialog_code_hook].nil?
        type.fulfillment_code_hook = FulfillmentCodeHookSettings.build(params[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless params[:fulfillment_code_hook].nil?
        type.slot_priorities = SlotPrioritiesList.build(params[:slot_priorities], context: "#{context}[:slot_priorities]") unless params[:slot_priorities].nil?
        type.intent_confirmation_setting = IntentConfirmationSetting.build(params[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless params[:intent_confirmation_setting].nil?
        type.intent_closing_setting = IntentClosingSetting.build(params[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless params[:intent_closing_setting].nil?
        type.input_contexts = InputContextsList.build(params[:input_contexts], context: "#{context}[:input_contexts]") unless params[:input_contexts].nil?
        type.output_contexts = OutputContextsList.build(params[:output_contexts], context: "#{context}[:output_contexts]") unless params[:output_contexts].nil?
        type.kendra_configuration = KendraConfiguration.build(params[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless params[:kendra_configuration].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module UpdateResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourcePolicyInput, context: context)
        type = Types::UpdateResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.policy = params[:policy]
        type.expected_revision_id = params[:expected_revision_id]
        type
      end
    end

    module UpdateResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourcePolicyOutput, context: context)
        type = Types::UpdateResourcePolicyOutput.new
        type.resource_arn = params[:resource_arn]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module UpdateSlotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSlotInput, context: context)
        type = Types::UpdateSlotInput.new
        type.slot_id = params[:slot_id]
        type.slot_name = params[:slot_name]
        type.description = params[:description]
        type.slot_type_id = params[:slot_type_id]
        type.value_elicitation_setting = SlotValueElicitationSetting.build(params[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless params[:value_elicitation_setting].nil?
        type.obfuscation_setting = ObfuscationSetting.build(params[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless params[:obfuscation_setting].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_id = params[:intent_id]
        type.multiple_values_setting = MultipleValuesSetting.build(params[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless params[:multiple_values_setting].nil?
        type
      end
    end

    module UpdateSlotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSlotOutput, context: context)
        type = Types::UpdateSlotOutput.new
        type.slot_id = params[:slot_id]
        type.slot_name = params[:slot_name]
        type.description = params[:description]
        type.slot_type_id = params[:slot_type_id]
        type.value_elicitation_setting = SlotValueElicitationSetting.build(params[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless params[:value_elicitation_setting].nil?
        type.obfuscation_setting = ObfuscationSetting.build(params[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless params[:obfuscation_setting].nil?
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.intent_id = params[:intent_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.multiple_values_setting = MultipleValuesSetting.build(params[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless params[:multiple_values_setting].nil?
        type
      end
    end

    module UpdateSlotTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSlotTypeInput, context: context)
        type = Types::UpdateSlotTypeInput.new
        type.slot_type_id = params[:slot_type_id]
        type.slot_type_name = params[:slot_type_name]
        type.description = params[:description]
        type.slot_type_values = SlotTypeValues.build(params[:slot_type_values], context: "#{context}[:slot_type_values]") unless params[:slot_type_values].nil?
        type.value_selection_setting = SlotValueSelectionSetting.build(params[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless params[:value_selection_setting].nil?
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.external_source_setting = ExternalSourceSetting.build(params[:external_source_setting], context: "#{context}[:external_source_setting]") unless params[:external_source_setting].nil?
        type
      end
    end

    module UpdateSlotTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSlotTypeOutput, context: context)
        type = Types::UpdateSlotTypeOutput.new
        type.slot_type_id = params[:slot_type_id]
        type.slot_type_name = params[:slot_type_name]
        type.description = params[:description]
        type.slot_type_values = SlotTypeValues.build(params[:slot_type_values], context: "#{context}[:slot_type_values]") unless params[:slot_type_values].nil?
        type.value_selection_setting = SlotValueSelectionSetting.build(params[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless params[:value_selection_setting].nil?
        type.parent_slot_type_signature = params[:parent_slot_type_signature]
        type.bot_id = params[:bot_id]
        type.bot_version = params[:bot_version]
        type.locale_id = params[:locale_id]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.external_source_setting = ExternalSourceSetting.build(params[:external_source_setting], context: "#{context}[:external_source_setting]") unless params[:external_source_setting].nil?
        type
      end
    end

    module UtteranceAggregationDuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UtteranceAggregationDuration, context: context)
        type = Types::UtteranceAggregationDuration.new
        type.relative_aggregation_duration = RelativeAggregationDuration.build(params[:relative_aggregation_duration], context: "#{context}[:relative_aggregation_duration]") unless params[:relative_aggregation_duration].nil?
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

    module VoiceSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceSettings, context: context)
        type = Types::VoiceSettings.new
        type.voice_id = params[:voice_id]
        type.engine = params[:engine]
        type
      end
    end

    module WaitAndContinueSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WaitAndContinueSpecification, context: context)
        type = Types::WaitAndContinueSpecification.new
        type.waiting_response = ResponseSpecification.build(params[:waiting_response], context: "#{context}[:waiting_response]") unless params[:waiting_response].nil?
        type.continue_response = ResponseSpecification.build(params[:continue_response], context: "#{context}[:continue_response]") unless params[:continue_response].nil?
        type.still_waiting_response = StillWaitingResponseSpecification.build(params[:still_waiting_response], context: "#{context}[:still_waiting_response]") unless params[:still_waiting_response].nil?
        type.active = params[:active]
        type
      end
    end

  end
end
