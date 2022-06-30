# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelsV2
  module Validators

    class AdvancedRecognitionSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvancedRecognitionSetting, context: context)
        Hearth::Validator.validate!(input[:audio_recognition_strategy], ::String, context: "#{context}[:audio_recognition_strategy]")
      end
    end

    class AggregatedUtterancesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregatedUtterancesFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class AggregatedUtterancesFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AggregatedUtterancesFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregatedUtterancesSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregatedUtterancesSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class AggregatedUtterancesSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregatedUtterancesSummary, context: context)
        Hearth::Validator.validate!(input[:utterance], ::String, context: "#{context}[:utterance]")
        Hearth::Validator.validate!(input[:hit_count], ::Integer, context: "#{context}[:hit_count]")
        Hearth::Validator.validate!(input[:missed_count], ::Integer, context: "#{context}[:missed_count]")
        Hearth::Validator.validate!(input[:utterance_first_recorded_in_aggregation_duration], ::Time, context: "#{context}[:utterance_first_recorded_in_aggregation_duration]")
        Hearth::Validator.validate!(input[:utterance_last_recorded_in_aggregation_duration], ::Time, context: "#{context}[:utterance_last_recorded_in_aggregation_duration]")
        Hearth::Validator.validate!(input[:contains_data_from_deleted_resources], ::TrueClass, ::FalseClass, context: "#{context}[:contains_data_from_deleted_resources]")
      end
    end

    class AggregatedUtterancesSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AggregatedUtterancesSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociatedTranscript
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatedTranscript, context: context)
        Hearth::Validator.validate!(input[:transcript], ::String, context: "#{context}[:transcript]")
      end
    end

    class AssociatedTranscriptFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatedTranscriptFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class AssociatedTranscriptFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AssociatedTranscriptFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociatedTranscriptList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AssociatedTranscript.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AudioLogDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioLogDestination, context: context)
        Validators::S3BucketLogDestination.validate!(input[:s3_bucket], context: "#{context}[:s3_bucket]") unless input[:s3_bucket].nil?
      end
    end

    class AudioLogSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioLogSetting, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::AudioLogDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class AudioLogSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AudioLogSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotAliasHistoryEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotAliasHistoryEvent, context: context)
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
      end
    end

    class BotAliasHistoryEventsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotAliasHistoryEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotAliasLocaleSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotAliasLocaleSettings, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::CodeHookSpecification.validate!(input[:code_hook_specification], context: "#{context}[:code_hook_specification]") unless input[:code_hook_specification].nil?
      end
    end

    class BotAliasLocaleSettingsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::BotAliasLocaleSettings.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BotAliasSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotAliasSummary, context: context)
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_alias_name], ::String, context: "#{context}[:bot_alias_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:bot_alias_status], ::String, context: "#{context}[:bot_alias_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class BotAliasSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotAliasSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotExportSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotExportSpecification, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
      end
    end

    class BotFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class BotFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotImportSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotImportSpecification, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DataPrivacy.validate!(input[:data_privacy], context: "#{context}[:data_privacy]") unless input[:data_privacy].nil?
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Validators::TagMap.validate!(input[:bot_tags], context: "#{context}[:bot_tags]") unless input[:bot_tags].nil?
        Validators::TagMap.validate!(input[:test_bot_alias_tags], context: "#{context}[:test_bot_alias_tags]") unless input[:test_bot_alias_tags].nil?
      end
    end

    class BotLocaleExportSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotLocaleExportSpecification, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class BotLocaleFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotLocaleFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class BotLocaleFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotLocaleFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotLocaleHistoryEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotLocaleHistoryEvent, context: context)
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Hearth::Validator.validate!(input[:event_date], ::Time, context: "#{context}[:event_date]")
      end
    end

    class BotLocaleHistoryEventsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotLocaleHistoryEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotLocaleImportSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotLocaleImportSpecification, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence_threshold], ::Float, context: "#{context}[:nlu_intent_confidence_threshold]")
        Validators::VoiceSettings.validate!(input[:voice_settings], context: "#{context}[:voice_settings]") unless input[:voice_settings].nil?
      end
    end

    class BotLocaleSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotLocaleSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class BotLocaleSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotLocaleSummary, context: context)
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:locale_name], ::String, context: "#{context}[:locale_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_locale_status], ::String, context: "#{context}[:bot_locale_status]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:last_build_submitted_date_time], ::Time, context: "#{context}[:last_build_submitted_date_time]")
      end
    end

    class BotLocaleSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotLocaleSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotRecommendationResultStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotRecommendationResultStatistics, context: context)
        Validators::IntentStatistics.validate!(input[:intents], context: "#{context}[:intents]") unless input[:intents].nil?
        Validators::SlotTypeStatistics.validate!(input[:slot_types], context: "#{context}[:slot_types]") unless input[:slot_types].nil?
      end
    end

    class BotRecommendationResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotRecommendationResults, context: context)
        Hearth::Validator.validate!(input[:bot_locale_export_url], ::String, context: "#{context}[:bot_locale_export_url]")
        Hearth::Validator.validate!(input[:associated_transcripts_url], ::String, context: "#{context}[:associated_transcripts_url]")
        Validators::BotRecommendationResultStatistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class BotRecommendationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotRecommendationSummary, context: context)
        Hearth::Validator.validate!(input[:bot_recommendation_status], ::String, context: "#{context}[:bot_recommendation_status]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class BotRecommendationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotRecommendationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class BotSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotSummary, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_status], ::String, context: "#{context}[:bot_status]")
        Hearth::Validator.validate!(input[:latest_bot_version], ::String, context: "#{context}[:latest_bot_version]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class BotSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BotVersionLocaleDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotVersionLocaleDetails, context: context)
        Hearth::Validator.validate!(input[:source_bot_version], ::String, context: "#{context}[:source_bot_version]")
      end
    end

    class BotVersionLocaleSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::BotVersionLocaleDetails.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BotVersionSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotVersionSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class BotVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BotVersionSummary, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_status], ::String, context: "#{context}[:bot_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class BotVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BotVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuildBotLocaleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildBotLocaleInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class BuildBotLocaleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildBotLocaleOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_locale_status], ::String, context: "#{context}[:bot_locale_status]")
        Hearth::Validator.validate!(input[:last_build_submitted_date_time], ::Time, context: "#{context}[:last_build_submitted_date_time]")
      end
    end

    class BuiltInIntentSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuiltInIntentSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class BuiltInIntentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuiltInIntentSummary, context: context)
        Hearth::Validator.validate!(input[:intent_signature], ::String, context: "#{context}[:intent_signature]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class BuiltInIntentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BuiltInIntentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuiltInSlotTypeSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuiltInSlotTypeSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class BuiltInSlotTypeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuiltInSlotTypeSummary, context: context)
        Hearth::Validator.validate!(input[:slot_type_signature], ::String, context: "#{context}[:slot_type_signature]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class BuiltInSlotTypeSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BuiltInSlotTypeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Button
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Button, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ButtonsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Button.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudWatchLogGroupLogDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogGroupLogDestination, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_log_group_arn], ::String, context: "#{context}[:cloud_watch_log_group_arn]")
        Hearth::Validator.validate!(input[:log_prefix], ::String, context: "#{context}[:log_prefix]")
      end
    end

    class CodeHookSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeHookSpecification, context: context)
        Validators::LambdaCodeHook.validate!(input[:lambda_code_hook], context: "#{context}[:lambda_code_hook]") unless input[:lambda_code_hook].nil?
      end
    end

    class ConditionKeyValueMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ConditionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ConditionKeyValueMap.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConversationLogSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConversationLogSettings, context: context)
        Validators::TextLogSettingsList.validate!(input[:text_log_settings], context: "#{context}[:text_log_settings]") unless input[:text_log_settings].nil?
        Validators::AudioLogSettingsList.validate!(input[:audio_log_settings], context: "#{context}[:audio_log_settings]") unless input[:audio_log_settings].nil?
      end
    end

    class CreateBotAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotAliasInput, context: context)
        Hearth::Validator.validate!(input[:bot_alias_name], ::String, context: "#{context}[:bot_alias_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::BotAliasLocaleSettingsMap.validate!(input[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless input[:bot_alias_locale_settings].nil?
        Validators::ConversationLogSettings.validate!(input[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless input[:conversation_log_settings].nil?
        Validators::SentimentAnalysisSettings.validate!(input[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless input[:sentiment_analysis_settings].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBotAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotAliasOutput, context: context)
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_alias_name], ::String, context: "#{context}[:bot_alias_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::BotAliasLocaleSettingsMap.validate!(input[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless input[:bot_alias_locale_settings].nil?
        Validators::ConversationLogSettings.validate!(input[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless input[:conversation_log_settings].nil?
        Validators::SentimentAnalysisSettings.validate!(input[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless input[:sentiment_analysis_settings].nil?
        Hearth::Validator.validate!(input[:bot_alias_status], ::String, context: "#{context}[:bot_alias_status]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DataPrivacy.validate!(input[:data_privacy], context: "#{context}[:data_privacy]") unless input[:data_privacy].nil?
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Validators::TagMap.validate!(input[:bot_tags], context: "#{context}[:bot_tags]") unless input[:bot_tags].nil?
        Validators::TagMap.validate!(input[:test_bot_alias_tags], context: "#{context}[:test_bot_alias_tags]") unless input[:test_bot_alias_tags].nil?
      end
    end

    class CreateBotLocaleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotLocaleInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence_threshold], ::Float, context: "#{context}[:nlu_intent_confidence_threshold]")
        Validators::VoiceSettings.validate!(input[:voice_settings], context: "#{context}[:voice_settings]") unless input[:voice_settings].nil?
      end
    end

    class CreateBotLocaleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotLocaleOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_name], ::String, context: "#{context}[:locale_name]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence_threshold], ::Float, context: "#{context}[:nlu_intent_confidence_threshold]")
        Validators::VoiceSettings.validate!(input[:voice_settings], context: "#{context}[:voice_settings]") unless input[:voice_settings].nil?
        Hearth::Validator.validate!(input[:bot_locale_status], ::String, context: "#{context}[:bot_locale_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class CreateBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DataPrivacy.validate!(input[:data_privacy], context: "#{context}[:data_privacy]") unless input[:data_privacy].nil?
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:bot_status], ::String, context: "#{context}[:bot_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Validators::TagMap.validate!(input[:bot_tags], context: "#{context}[:bot_tags]") unless input[:bot_tags].nil?
        Validators::TagMap.validate!(input[:test_bot_alias_tags], context: "#{context}[:test_bot_alias_tags]") unless input[:test_bot_alias_tags].nil?
      end
    end

    class CreateBotVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotVersionInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::BotVersionLocaleSpecification.validate!(input[:bot_version_locale_specification], context: "#{context}[:bot_version_locale_specification]") unless input[:bot_version_locale_specification].nil?
      end
    end

    class CreateBotVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotVersionOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::BotVersionLocaleSpecification.validate!(input[:bot_version_locale_specification], context: "#{context}[:bot_version_locale_specification]") unless input[:bot_version_locale_specification].nil?
        Hearth::Validator.validate!(input[:bot_status], ::String, context: "#{context}[:bot_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class CreateExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExportInput, context: context)
        Validators::ExportResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:file_password], ::String, context: "#{context}[:file_password]")
      end
    end

    class CreateExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExportOutput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Validators::ExportResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:export_status], ::String, context: "#{context}[:export_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class CreateIntentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntentInput, context: context)
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Validators::SampleUtterancesList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::DialogCodeHookSettings.validate!(input[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless input[:dialog_code_hook].nil?
        Validators::FulfillmentCodeHookSettings.validate!(input[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless input[:fulfillment_code_hook].nil?
        Validators::IntentConfirmationSetting.validate!(input[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless input[:intent_confirmation_setting].nil?
        Validators::IntentClosingSetting.validate!(input[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless input[:intent_closing_setting].nil?
        Validators::InputContextsList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextsList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
        Validators::KendraConfiguration.validate!(input[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless input[:kendra_configuration].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class CreateIntentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntentOutput, context: context)
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Validators::SampleUtterancesList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::DialogCodeHookSettings.validate!(input[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless input[:dialog_code_hook].nil?
        Validators::FulfillmentCodeHookSettings.validate!(input[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless input[:fulfillment_code_hook].nil?
        Validators::IntentConfirmationSetting.validate!(input[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless input[:intent_confirmation_setting].nil?
        Validators::IntentClosingSetting.validate!(input[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless input[:intent_closing_setting].nil?
        Validators::InputContextsList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextsList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
        Validators::KendraConfiguration.validate!(input[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless input[:kendra_configuration].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class CreateResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class CreateResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class CreateResourcePolicyStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourcePolicyStatementInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Validators::PrincipalList.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        Validators::OperationList.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Validators::ConditionMap.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Hearth::Validator.validate!(input[:expected_revision_id], ::String, context: "#{context}[:expected_revision_id]")
      end
    end

    class CreateResourcePolicyStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourcePolicyStatementOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class CreateSlotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSlotInput, context: context)
        Hearth::Validator.validate!(input[:slot_name], ::String, context: "#{context}[:slot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Validators::SlotValueElicitationSetting.validate!(input[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless input[:value_elicitation_setting].nil?
        Validators::ObfuscationSetting.validate!(input[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless input[:obfuscation_setting].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Validators::MultipleValuesSetting.validate!(input[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless input[:multiple_values_setting].nil?
      end
    end

    class CreateSlotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSlotOutput, context: context)
        Hearth::Validator.validate!(input[:slot_id], ::String, context: "#{context}[:slot_id]")
        Hearth::Validator.validate!(input[:slot_name], ::String, context: "#{context}[:slot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Validators::SlotValueElicitationSetting.validate!(input[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless input[:value_elicitation_setting].nil?
        Validators::ObfuscationSetting.validate!(input[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless input[:obfuscation_setting].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Validators::MultipleValuesSetting.validate!(input[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless input[:multiple_values_setting].nil?
      end
    end

    class CreateSlotTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSlotTypeInput, context: context)
        Hearth::Validator.validate!(input[:slot_type_name], ::String, context: "#{context}[:slot_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SlotTypeValues.validate!(input[:slot_type_values], context: "#{context}[:slot_type_values]") unless input[:slot_type_values].nil?
        Validators::SlotValueSelectionSetting.validate!(input[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless input[:value_selection_setting].nil?
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::ExternalSourceSetting.validate!(input[:external_source_setting], context: "#{context}[:external_source_setting]") unless input[:external_source_setting].nil?
      end
    end

    class CreateSlotTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSlotTypeOutput, context: context)
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Hearth::Validator.validate!(input[:slot_type_name], ::String, context: "#{context}[:slot_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SlotTypeValues.validate!(input[:slot_type_values], context: "#{context}[:slot_type_values]") unless input[:slot_type_values].nil?
        Validators::SlotValueSelectionSetting.validate!(input[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless input[:value_selection_setting].nil?
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Validators::ExternalSourceSetting.validate!(input[:external_source_setting], context: "#{context}[:external_source_setting]") unless input[:external_source_setting].nil?
      end
    end

    class CreateUploadUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUploadUrlInput, context: context)
      end
    end

    class CreateUploadUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUploadUrlOutput, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
        Hearth::Validator.validate!(input[:upload_url], ::String, context: "#{context}[:upload_url]")
      end
    end

    class CustomPayload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomPayload, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CustomVocabularyExportSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomVocabularyExportSpecification, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class CustomVocabularyImportSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomVocabularyImportSpecification, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class DataPrivacy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataPrivacy, context: context)
        Hearth::Validator.validate!(input[:child_directed], ::TrueClass, ::FalseClass, context: "#{context}[:child_directed]")
      end
    end

    class DateRangeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateRangeFilter, context: context)
        Hearth::Validator.validate!(input[:start_date_time], ::Time, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
      end
    end

    class DeleteBotAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotAliasInput, context: context)
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:skip_resource_in_use_check], ::TrueClass, ::FalseClass, context: "#{context}[:skip_resource_in_use_check]")
      end
    end

    class DeleteBotAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotAliasOutput, context: context)
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_alias_status], ::String, context: "#{context}[:bot_alias_status]")
      end
    end

    class DeleteBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:skip_resource_in_use_check], ::TrueClass, ::FalseClass, context: "#{context}[:skip_resource_in_use_check]")
      end
    end

    class DeleteBotLocaleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotLocaleInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class DeleteBotLocaleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotLocaleOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_locale_status], ::String, context: "#{context}[:bot_locale_status]")
      end
    end

    class DeleteBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_status], ::String, context: "#{context}[:bot_status]")
      end
    end

    class DeleteBotVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotVersionInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:skip_resource_in_use_check], ::TrueClass, ::FalseClass, context: "#{context}[:skip_resource_in_use_check]")
      end
    end

    class DeleteBotVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBotVersionOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:bot_status], ::String, context: "#{context}[:bot_status]")
      end
    end

    class DeleteCustomVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class DeleteCustomVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomVocabularyOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:custom_vocabulary_status], ::String, context: "#{context}[:custom_vocabulary_status]")
      end
    end

    class DeleteExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExportInput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
      end
    end

    class DeleteExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExportOutput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Hearth::Validator.validate!(input[:export_status], ::String, context: "#{context}[:export_status]")
      end
    end

    class DeleteImportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImportInput, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
      end
    end

    class DeleteImportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImportOutput, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
        Hearth::Validator.validate!(input[:import_status], ::String, context: "#{context}[:import_status]")
      end
    end

    class DeleteIntentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntentInput, context: context)
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class DeleteIntentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntentOutput, context: context)
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:expected_revision_id], ::String, context: "#{context}[:expected_revision_id]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class DeleteResourcePolicyStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyStatementInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate!(input[:expected_revision_id], ::String, context: "#{context}[:expected_revision_id]")
      end
    end

    class DeleteResourcePolicyStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyStatementOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class DeleteSlotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSlotInput, context: context)
        Hearth::Validator.validate!(input[:slot_id], ::String, context: "#{context}[:slot_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
      end
    end

    class DeleteSlotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSlotOutput, context: context)
      end
    end

    class DeleteSlotTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSlotTypeInput, context: context)
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:skip_resource_in_use_check], ::TrueClass, ::FalseClass, context: "#{context}[:skip_resource_in_use_check]")
      end
    end

    class DeleteSlotTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSlotTypeOutput, context: context)
      end
    end

    class DeleteUtterancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUtterancesInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class DeleteUtterancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUtterancesOutput, context: context)
      end
    end

    class DescribeBotAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotAliasInput, context: context)
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
      end
    end

    class DescribeBotAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotAliasOutput, context: context)
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_alias_name], ::String, context: "#{context}[:bot_alias_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::BotAliasLocaleSettingsMap.validate!(input[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless input[:bot_alias_locale_settings].nil?
        Validators::ConversationLogSettings.validate!(input[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless input[:conversation_log_settings].nil?
        Validators::SentimentAnalysisSettings.validate!(input[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless input[:sentiment_analysis_settings].nil?
        Validators::BotAliasHistoryEventsList.validate!(input[:bot_alias_history_events], context: "#{context}[:bot_alias_history_events]") unless input[:bot_alias_history_events].nil?
        Hearth::Validator.validate!(input[:bot_alias_status], ::String, context: "#{context}[:bot_alias_status]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class DescribeBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
      end
    end

    class DescribeBotLocaleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotLocaleInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class DescribeBotLocaleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotLocaleOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:locale_name], ::String, context: "#{context}[:locale_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence_threshold], ::Float, context: "#{context}[:nlu_intent_confidence_threshold]")
        Validators::VoiceSettings.validate!(input[:voice_settings], context: "#{context}[:voice_settings]") unless input[:voice_settings].nil?
        Hearth::Validator.validate!(input[:intents_count], ::Integer, context: "#{context}[:intents_count]")
        Hearth::Validator.validate!(input[:slot_types_count], ::Integer, context: "#{context}[:slot_types_count]")
        Hearth::Validator.validate!(input[:bot_locale_status], ::String, context: "#{context}[:bot_locale_status]")
        Validators::FailureReasons.validate!(input[:failure_reasons], context: "#{context}[:failure_reasons]") unless input[:failure_reasons].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:last_build_submitted_date_time], ::Time, context: "#{context}[:last_build_submitted_date_time]")
        Validators::BotLocaleHistoryEventsList.validate!(input[:bot_locale_history_events], context: "#{context}[:bot_locale_history_events]") unless input[:bot_locale_history_events].nil?
        Validators::RecommendedActions.validate!(input[:recommended_actions], context: "#{context}[:recommended_actions]") unless input[:recommended_actions].nil?
      end
    end

    class DescribeBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DataPrivacy.validate!(input[:data_privacy], context: "#{context}[:data_privacy]") unless input[:data_privacy].nil?
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:bot_status], ::String, context: "#{context}[:bot_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class DescribeBotRecommendationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotRecommendationInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
      end
    end

    class DescribeBotRecommendationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotRecommendationOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_recommendation_status], ::String, context: "#{context}[:bot_recommendation_status]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
        Validators::FailureReasons.validate!(input[:failure_reasons], context: "#{context}[:failure_reasons]") unless input[:failure_reasons].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Validators::TranscriptSourceSetting.validate!(input[:transcript_source_setting], context: "#{context}[:transcript_source_setting]") unless input[:transcript_source_setting].nil?
        Validators::EncryptionSetting.validate!(input[:encryption_setting], context: "#{context}[:encryption_setting]") unless input[:encryption_setting].nil?
        Validators::BotRecommendationResults.validate!(input[:bot_recommendation_results], context: "#{context}[:bot_recommendation_results]") unless input[:bot_recommendation_results].nil?
      end
    end

    class DescribeBotVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotVersionInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
      end
    end

    class DescribeBotVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBotVersionOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DataPrivacy.validate!(input[:data_privacy], context: "#{context}[:data_privacy]") unless input[:data_privacy].nil?
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:bot_status], ::String, context: "#{context}[:bot_status]")
        Validators::FailureReasons.validate!(input[:failure_reasons], context: "#{context}[:failure_reasons]") unless input[:failure_reasons].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class DescribeCustomVocabularyMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomVocabularyMetadataInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class DescribeCustomVocabularyMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomVocabularyMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:custom_vocabulary_status], ::String, context: "#{context}[:custom_vocabulary_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class DescribeExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportInput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
      end
    end

    class DescribeExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportOutput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Validators::ExportResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:export_status], ::String, context: "#{context}[:export_status]")
        Validators::FailureReasons.validate!(input[:failure_reasons], context: "#{context}[:failure_reasons]") unless input[:failure_reasons].nil?
        Hearth::Validator.validate!(input[:download_url], ::String, context: "#{context}[:download_url]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class DescribeImportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImportInput, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
      end
    end

    class DescribeImportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImportOutput, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
        Validators::ImportResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:imported_resource_id], ::String, context: "#{context}[:imported_resource_id]")
        Hearth::Validator.validate!(input[:imported_resource_name], ::String, context: "#{context}[:imported_resource_name]")
        Hearth::Validator.validate!(input[:merge_strategy], ::String, context: "#{context}[:merge_strategy]")
        Hearth::Validator.validate!(input[:import_status], ::String, context: "#{context}[:import_status]")
        Validators::FailureReasons.validate!(input[:failure_reasons], context: "#{context}[:failure_reasons]") unless input[:failure_reasons].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class DescribeIntentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIntentInput, context: context)
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class DescribeIntentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIntentOutput, context: context)
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Validators::SampleUtterancesList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::DialogCodeHookSettings.validate!(input[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless input[:dialog_code_hook].nil?
        Validators::FulfillmentCodeHookSettings.validate!(input[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless input[:fulfillment_code_hook].nil?
        Validators::SlotPrioritiesList.validate!(input[:slot_priorities], context: "#{context}[:slot_priorities]") unless input[:slot_priorities].nil?
        Validators::IntentConfirmationSetting.validate!(input[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless input[:intent_confirmation_setting].nil?
        Validators::IntentClosingSetting.validate!(input[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless input[:intent_closing_setting].nil?
        Validators::InputContextsList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextsList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
        Validators::KendraConfiguration.validate!(input[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless input[:kendra_configuration].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class DescribeResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DescribeResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class DescribeSlotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSlotInput, context: context)
        Hearth::Validator.validate!(input[:slot_id], ::String, context: "#{context}[:slot_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
      end
    end

    class DescribeSlotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSlotOutput, context: context)
        Hearth::Validator.validate!(input[:slot_id], ::String, context: "#{context}[:slot_id]")
        Hearth::Validator.validate!(input[:slot_name], ::String, context: "#{context}[:slot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Validators::SlotValueElicitationSetting.validate!(input[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless input[:value_elicitation_setting].nil?
        Validators::ObfuscationSetting.validate!(input[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless input[:obfuscation_setting].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Validators::MultipleValuesSetting.validate!(input[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless input[:multiple_values_setting].nil?
      end
    end

    class DescribeSlotTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSlotTypeInput, context: context)
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class DescribeSlotTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSlotTypeOutput, context: context)
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Hearth::Validator.validate!(input[:slot_type_name], ::String, context: "#{context}[:slot_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SlotTypeValues.validate!(input[:slot_type_values], context: "#{context}[:slot_type_values]") unless input[:slot_type_values].nil?
        Validators::SlotValueSelectionSetting.validate!(input[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless input[:value_selection_setting].nil?
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Validators::ExternalSourceSetting.validate!(input[:external_source_setting], context: "#{context}[:external_source_setting]") unless input[:external_source_setting].nil?
      end
    end

    class DialogCodeHookSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DialogCodeHookSettings, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class EncryptionSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionSetting, context: context)
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:bot_locale_export_password], ::String, context: "#{context}[:bot_locale_export_password]")
        Hearth::Validator.validate!(input[:associated_transcripts_password], ::String, context: "#{context}[:associated_transcripts_password]")
      end
    end

    class ExportFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class ExportFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExportFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExportResourceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportResourceSpecification, context: context)
        Validators::BotExportSpecification.validate!(input[:bot_export_specification], context: "#{context}[:bot_export_specification]") unless input[:bot_export_specification].nil?
        Validators::BotLocaleExportSpecification.validate!(input[:bot_locale_export_specification], context: "#{context}[:bot_locale_export_specification]") unless input[:bot_locale_export_specification].nil?
        Validators::CustomVocabularyExportSpecification.validate!(input[:custom_vocabulary_export_specification], context: "#{context}[:custom_vocabulary_export_specification]") unless input[:custom_vocabulary_export_specification].nil?
      end
    end

    class ExportSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class ExportSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSummary, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Validators::ExportResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:export_status], ::String, context: "#{context}[:export_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class ExportSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExportSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExternalSourceSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExternalSourceSetting, context: context)
        Validators::GrammarSlotTypeSetting.validate!(input[:grammar_slot_type_setting], context: "#{context}[:grammar_slot_type_setting]") unless input[:grammar_slot_type_setting].nil?
      end
    end

    class FailureReasons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FulfillmentCodeHookSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FulfillmentCodeHookSettings, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::PostFulfillmentStatusSpecification.validate!(input[:post_fulfillment_status_specification], context: "#{context}[:post_fulfillment_status_specification]") unless input[:post_fulfillment_status_specification].nil?
        Validators::FulfillmentUpdatesSpecification.validate!(input[:fulfillment_updates_specification], context: "#{context}[:fulfillment_updates_specification]") unless input[:fulfillment_updates_specification].nil?
      end
    end

    class FulfillmentStartResponseSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FulfillmentStartResponseSpecification, context: context)
        Hearth::Validator.validate!(input[:delay_in_seconds], ::Integer, context: "#{context}[:delay_in_seconds]")
        Validators::MessageGroupsList.validate!(input[:message_groups], context: "#{context}[:message_groups]") unless input[:message_groups].nil?
        Hearth::Validator.validate!(input[:allow_interrupt], ::TrueClass, ::FalseClass, context: "#{context}[:allow_interrupt]")
      end
    end

    class FulfillmentUpdateResponseSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FulfillmentUpdateResponseSpecification, context: context)
        Hearth::Validator.validate!(input[:frequency_in_seconds], ::Integer, context: "#{context}[:frequency_in_seconds]")
        Validators::MessageGroupsList.validate!(input[:message_groups], context: "#{context}[:message_groups]") unless input[:message_groups].nil?
        Hearth::Validator.validate!(input[:allow_interrupt], ::TrueClass, ::FalseClass, context: "#{context}[:allow_interrupt]")
      end
    end

    class FulfillmentUpdatesSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FulfillmentUpdatesSpecification, context: context)
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
        Validators::FulfillmentStartResponseSpecification.validate!(input[:start_response], context: "#{context}[:start_response]") unless input[:start_response].nil?
        Validators::FulfillmentUpdateResponseSpecification.validate!(input[:update_response], context: "#{context}[:update_response]") unless input[:update_response].nil?
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
      end
    end

    class GrammarSlotTypeSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrammarSlotTypeSetting, context: context)
        Validators::GrammarSlotTypeSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
      end
    end

    class GrammarSlotTypeSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrammarSlotTypeSource, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_object_key], ::String, context: "#{context}[:s3_object_key]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class ImageResponseCard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageResponseCard, context: context)
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:subtitle], ::String, context: "#{context}[:subtitle]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Validators::ButtonsList.validate!(input[:buttons], context: "#{context}[:buttons]") unless input[:buttons].nil?
      end
    end

    class ImportFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class ImportFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImportFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImportResourceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportResourceSpecification, context: context)
        Validators::BotImportSpecification.validate!(input[:bot_import_specification], context: "#{context}[:bot_import_specification]") unless input[:bot_import_specification].nil?
        Validators::BotLocaleImportSpecification.validate!(input[:bot_locale_import_specification], context: "#{context}[:bot_locale_import_specification]") unless input[:bot_locale_import_specification].nil?
        Validators::CustomVocabularyImportSpecification.validate!(input[:custom_vocabulary_import_specification], context: "#{context}[:custom_vocabulary_import_specification]") unless input[:custom_vocabulary_import_specification].nil?
      end
    end

    class ImportSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class ImportSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportSummary, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
        Hearth::Validator.validate!(input[:imported_resource_id], ::String, context: "#{context}[:imported_resource_id]")
        Hearth::Validator.validate!(input[:imported_resource_name], ::String, context: "#{context}[:imported_resource_name]")
        Hearth::Validator.validate!(input[:import_status], ::String, context: "#{context}[:import_status]")
        Hearth::Validator.validate!(input[:merge_strategy], ::String, context: "#{context}[:merge_strategy]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:imported_resource_type], ::String, context: "#{context}[:imported_resource_type]")
      end
    end

    class ImportSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImportSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InputContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputContext, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class InputContextsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InputContext.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntentClosingSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntentClosingSetting, context: context)
        Validators::ResponseSpecification.validate!(input[:closing_response], context: "#{context}[:closing_response]") unless input[:closing_response].nil?
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
      end
    end

    class IntentConfirmationSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntentConfirmationSetting, context: context)
        Validators::PromptSpecification.validate!(input[:prompt_specification], context: "#{context}[:prompt_specification]") unless input[:prompt_specification].nil?
        Validators::ResponseSpecification.validate!(input[:declination_response], context: "#{context}[:declination_response]") unless input[:declination_response].nil?
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
      end
    end

    class IntentFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntentFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class IntentFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IntentFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntentSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntentSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class IntentStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntentStatistics, context: context)
        Hearth::Validator.validate!(input[:discovered_intent_count], ::Integer, context: "#{context}[:discovered_intent_count]")
      end
    end

    class IntentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntentSummary, context: context)
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Validators::InputContextsList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextsList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class IntentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IntentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KendraConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KendraConfiguration, context: context)
        Hearth::Validator.validate!(input[:kendra_index], ::String, context: "#{context}[:kendra_index]")
        Hearth::Validator.validate!(input[:query_filter_string_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:query_filter_string_enabled]")
        Hearth::Validator.validate!(input[:query_filter_string], ::String, context: "#{context}[:query_filter_string]")
      end
    end

    class LambdaCodeHook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaCodeHook, context: context)
        Hearth::Validator.validate!(input[:lambda_arn], ::String, context: "#{context}[:lambda_arn]")
        Hearth::Validator.validate!(input[:code_hook_interface_version], ::String, context: "#{context}[:code_hook_interface_version]")
      end
    end

    class LexTranscriptFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LexTranscriptFilter, context: context)
        Validators::DateRangeFilter.validate!(input[:date_range_filter], context: "#{context}[:date_range_filter]") unless input[:date_range_filter].nil?
      end
    end

    class ListAggregatedUtterancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAggregatedUtterancesInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::UtteranceAggregationDuration.validate!(input[:aggregation_duration], context: "#{context}[:aggregation_duration]") unless input[:aggregation_duration].nil?
        Validators::AggregatedUtterancesSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Validators::AggregatedUtterancesFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAggregatedUtterancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAggregatedUtterancesOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::UtteranceAggregationDuration.validate!(input[:aggregation_duration], context: "#{context}[:aggregation_duration]") unless input[:aggregation_duration].nil?
        Hearth::Validator.validate!(input[:aggregation_window_start_time], ::Time, context: "#{context}[:aggregation_window_start_time]")
        Hearth::Validator.validate!(input[:aggregation_window_end_time], ::Time, context: "#{context}[:aggregation_window_end_time]")
        Hearth::Validator.validate!(input[:aggregation_last_refreshed_date_time], ::Time, context: "#{context}[:aggregation_last_refreshed_date_time]")
        Validators::AggregatedUtterancesSummaryList.validate!(input[:aggregated_utterances_summaries], context: "#{context}[:aggregated_utterances_summaries]") unless input[:aggregated_utterances_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotAliasesInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotAliasesOutput, context: context)
        Validators::BotAliasSummaryList.validate!(input[:bot_alias_summaries], context: "#{context}[:bot_alias_summaries]") unless input[:bot_alias_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
      end
    end

    class ListBotLocalesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotLocalesInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::BotLocaleSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Validators::BotLocaleFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotLocalesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotLocalesOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::BotLocaleSummaryList.validate!(input[:bot_locale_summaries], context: "#{context}[:bot_locale_summaries]") unless input[:bot_locale_summaries].nil?
      end
    end

    class ListBotRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::BotRecommendationSummaryList.validate!(input[:bot_recommendation_summaries], context: "#{context}[:bot_recommendation_summaries]") unless input[:bot_recommendation_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotVersionsInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Validators::BotVersionSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Validators::BotVersionSummaryList.validate!(input[:bot_version_summaries], context: "#{context}[:bot_version_summaries]") unless input[:bot_version_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotsInput, context: context)
        Validators::BotSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Validators::BotFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotsOutput, context: context)
        Validators::BotSummaryList.validate!(input[:bot_summaries], context: "#{context}[:bot_summaries]") unless input[:bot_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuiltInIntentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuiltInIntentsInput, context: context)
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::BuiltInIntentSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuiltInIntentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuiltInIntentsOutput, context: context)
        Validators::BuiltInIntentSummaryList.validate!(input[:built_in_intent_summaries], context: "#{context}[:built_in_intent_summaries]") unless input[:built_in_intent_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class ListBuiltInSlotTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuiltInSlotTypesInput, context: context)
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::BuiltInSlotTypeSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuiltInSlotTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuiltInSlotTypesOutput, context: context)
        Validators::BuiltInSlotTypeSummaryList.validate!(input[:built_in_slot_type_summaries], context: "#{context}[:built_in_slot_type_summaries]") unless input[:built_in_slot_type_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class ListExportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExportsInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::ExportSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Validators::ExportFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class ListExportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExportsOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::ExportSummaryList.validate!(input[:export_summaries], context: "#{context}[:export_summaries]") unless input[:export_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class ListImportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImportsInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::ImportSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Validators::ImportFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class ListImportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImportsOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::ImportSummaryList.validate!(input[:import_summaries], context: "#{context}[:import_summaries]") unless input[:import_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class ListIntentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIntentsInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::IntentSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Validators::IntentFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIntentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIntentsOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::IntentSummaryList.validate!(input[:intent_summaries], context: "#{context}[:intent_summaries]") unless input[:intent_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecommendedIntentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendedIntentsInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRecommendedIntentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendedIntentsOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
        Validators::RecommendedIntentSummaryList.validate!(input[:summary_list], context: "#{context}[:summary_list]") unless input[:summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSlotTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSlotTypesInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::SlotTypeSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Validators::SlotTypeFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSlotTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSlotTypesOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::SlotTypeSummaryList.validate!(input[:slot_type_summaries], context: "#{context}[:slot_type_summaries]") unless input[:slot_type_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSlotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSlotsInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Validators::SlotSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Validators::SlotFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSlotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSlotsOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Validators::SlotSummaryList.validate!(input[:slot_summaries], context: "#{context}[:slot_summaries]") unless input[:slot_summaries].nil?
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Message, context: context)
        Validators::PlainTextMessage.validate!(input[:plain_text_message], context: "#{context}[:plain_text_message]") unless input[:plain_text_message].nil?
        Validators::CustomPayload.validate!(input[:custom_payload], context: "#{context}[:custom_payload]") unless input[:custom_payload].nil?
        Validators::SSMLMessage.validate!(input[:ssml_message], context: "#{context}[:ssml_message]") unless input[:ssml_message].nil?
        Validators::ImageResponseCard.validate!(input[:image_response_card], context: "#{context}[:image_response_card]") unless input[:image_response_card].nil?
      end
    end

    class MessageGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageGroup, context: context)
        Validators::Message.validate!(input[:message], context: "#{context}[:message]") unless input[:message].nil?
        Validators::MessageVariationsList.validate!(input[:variations], context: "#{context}[:variations]") unless input[:variations].nil?
      end
    end

    class MessageGroupsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MessageGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MessageVariationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Message.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MultipleValuesSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultipleValuesSetting, context: context)
        Hearth::Validator.validate!(input[:allow_multiple_values], ::TrueClass, ::FalseClass, context: "#{context}[:allow_multiple_values]")
      end
    end

    class ObfuscationSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObfuscationSetting, context: context)
        Hearth::Validator.validate!(input[:obfuscation_setting_type], ::String, context: "#{context}[:obfuscation_setting_type]")
      end
    end

    class ObjectPrefixes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class OutputContextsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OutputContext.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PathFormat
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PathFormat, context: context)
        Validators::ObjectPrefixes.validate!(input[:object_prefixes], context: "#{context}[:object_prefixes]") unless input[:object_prefixes].nil?
      end
    end

    class PlainTextMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlainTextMessage, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class PostFulfillmentStatusSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostFulfillmentStatusSpecification, context: context)
        Validators::ResponseSpecification.validate!(input[:success_response], context: "#{context}[:success_response]") unless input[:success_response].nil?
        Validators::ResponseSpecification.validate!(input[:failure_response], context: "#{context}[:failure_response]") unless input[:failure_response].nil?
        Validators::ResponseSpecification.validate!(input[:timeout_response], context: "#{context}[:timeout_response]") unless input[:timeout_response].nil?
      end
    end

    class PreconditionFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Principal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Principal, context: context)
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class PrincipalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Principal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PromptSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PromptSpecification, context: context)
        Validators::MessageGroupsList.validate!(input[:message_groups], context: "#{context}[:message_groups]") unless input[:message_groups].nil?
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Hearth::Validator.validate!(input[:allow_interrupt], ::TrueClass, ::FalseClass, context: "#{context}[:allow_interrupt]")
      end
    end

    class RecommendedActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecommendedIntentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendedIntentSummary, context: context)
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:sample_utterances_count], ::Integer, context: "#{context}[:sample_utterances_count]")
      end
    end

    class RecommendedIntentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecommendedIntentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelativeAggregationDuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelativeAggregationDuration, context: context)
        Hearth::Validator.validate!(input[:time_dimension], ::String, context: "#{context}[:time_dimension]")
        Hearth::Validator.validate!(input[:time_value], ::Integer, context: "#{context}[:time_value]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResponseSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseSpecification, context: context)
        Validators::MessageGroupsList.validate!(input[:message_groups], context: "#{context}[:message_groups]") unless input[:message_groups].nil?
        Hearth::Validator.validate!(input[:allow_interrupt], ::TrueClass, ::FalseClass, context: "#{context}[:allow_interrupt]")
      end
    end

    class S3BucketLogDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketLogDestination, context: context)
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:s3_bucket_arn], ::String, context: "#{context}[:s3_bucket_arn]")
        Hearth::Validator.validate!(input[:log_prefix], ::String, context: "#{context}[:log_prefix]")
      end
    end

    class S3BucketTranscriptSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketTranscriptSource, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Validators::PathFormat.validate!(input[:path_format], context: "#{context}[:path_format]") unless input[:path_format].nil?
        Hearth::Validator.validate!(input[:transcript_format], ::String, context: "#{context}[:transcript_format]")
        Validators::TranscriptFilter.validate!(input[:transcript_filter], context: "#{context}[:transcript_filter]") unless input[:transcript_filter].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class SSMLMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSMLMessage, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SampleUtterance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SampleUtterance, context: context)
        Hearth::Validator.validate!(input[:utterance], ::String, context: "#{context}[:utterance]")
      end
    end

    class SampleUtterancesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SampleUtterance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SampleValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SampleValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SearchAssociatedTranscriptsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAssociatedTranscriptsInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
        Hearth::Validator.validate!(input[:search_order], ::String, context: "#{context}[:search_order]")
        Validators::AssociatedTranscriptFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_index], ::Integer, context: "#{context}[:next_index]")
      end
    end

    class SearchAssociatedTranscriptsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAssociatedTranscriptsOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
        Hearth::Validator.validate!(input[:next_index], ::Integer, context: "#{context}[:next_index]")
        Validators::AssociatedTranscriptList.validate!(input[:associated_transcripts], context: "#{context}[:associated_transcripts]") unless input[:associated_transcripts].nil?
        Hearth::Validator.validate!(input[:total_results], ::Integer, context: "#{context}[:total_results]")
      end
    end

    class SentimentAnalysisSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SentimentAnalysisSettings, context: context)
        Hearth::Validator.validate!(input[:detect_sentiment], ::TrueClass, ::FalseClass, context: "#{context}[:detect_sentiment]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class SlotDefaultValueSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotDefaultValueSpecification, context: context)
        Validators::SlotDefaultValueList.validate!(input[:default_value_list], context: "#{context}[:default_value_list]") unless input[:default_value_list].nil?
      end
    end

    class SlotFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class SlotFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SlotFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotPrioritiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SlotPriority.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotPriority
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotPriority, context: context)
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:slot_id], ::String, context: "#{context}[:slot_id]")
      end
    end

    class SlotSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class SlotSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotSummary, context: context)
        Hearth::Validator.validate!(input[:slot_id], ::String, context: "#{context}[:slot_id]")
        Hearth::Validator.validate!(input[:slot_name], ::String, context: "#{context}[:slot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:slot_constraint], ::String, context: "#{context}[:slot_constraint]")
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Validators::PromptSpecification.validate!(input[:value_elicitation_prompt_specification], context: "#{context}[:value_elicitation_prompt_specification]") unless input[:value_elicitation_prompt_specification].nil?
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class SlotSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SlotSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotTypeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotTypeFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class SlotTypeFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SlotTypeFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotTypeSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotTypeSortBy, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class SlotTypeStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotTypeStatistics, context: context)
        Hearth::Validator.validate!(input[:discovered_slot_type_count], ::Integer, context: "#{context}[:discovered_slot_type_count]")
      end
    end

    class SlotTypeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotTypeSummary, context: context)
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Hearth::Validator.validate!(input[:slot_type_name], ::String, context: "#{context}[:slot_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:slot_type_category], ::String, context: "#{context}[:slot_type_category]")
      end
    end

    class SlotTypeSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SlotTypeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotTypeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotTypeValue, context: context)
        Validators::SampleValue.validate!(input[:sample_value], context: "#{context}[:sample_value]") unless input[:sample_value].nil?
        Validators::SynonymList.validate!(input[:synonyms], context: "#{context}[:synonyms]") unless input[:synonyms].nil?
      end
    end

    class SlotTypeValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SlotTypeValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SlotValueElicitationSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotValueElicitationSetting, context: context)
        Validators::SlotDefaultValueSpecification.validate!(input[:default_value_specification], context: "#{context}[:default_value_specification]") unless input[:default_value_specification].nil?
        Hearth::Validator.validate!(input[:slot_constraint], ::String, context: "#{context}[:slot_constraint]")
        Validators::PromptSpecification.validate!(input[:prompt_specification], context: "#{context}[:prompt_specification]") unless input[:prompt_specification].nil?
        Validators::SampleUtterancesList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::WaitAndContinueSpecification.validate!(input[:wait_and_continue_specification], context: "#{context}[:wait_and_continue_specification]") unless input[:wait_and_continue_specification].nil?
      end
    end

    class SlotValueRegexFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotValueRegexFilter, context: context)
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
      end
    end

    class SlotValueSelectionSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotValueSelectionSetting, context: context)
        Hearth::Validator.validate!(input[:resolution_strategy], ::String, context: "#{context}[:resolution_strategy]")
        Validators::SlotValueRegexFilter.validate!(input[:regex_filter], context: "#{context}[:regex_filter]") unless input[:regex_filter].nil?
        Validators::AdvancedRecognitionSetting.validate!(input[:advanced_recognition_setting], context: "#{context}[:advanced_recognition_setting]") unless input[:advanced_recognition_setting].nil?
      end
    end

    class StartBotRecommendationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBotRecommendationInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::TranscriptSourceSetting.validate!(input[:transcript_source_setting], context: "#{context}[:transcript_source_setting]") unless input[:transcript_source_setting].nil?
        Validators::EncryptionSetting.validate!(input[:encryption_setting], context: "#{context}[:encryption_setting]") unless input[:encryption_setting].nil?
      end
    end

    class StartBotRecommendationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBotRecommendationOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_recommendation_status], ::String, context: "#{context}[:bot_recommendation_status]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Validators::TranscriptSourceSetting.validate!(input[:transcript_source_setting], context: "#{context}[:transcript_source_setting]") unless input[:transcript_source_setting].nil?
        Validators::EncryptionSetting.validate!(input[:encryption_setting], context: "#{context}[:encryption_setting]") unless input[:encryption_setting].nil?
      end
    end

    class StartImportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportInput, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
        Validators::ImportResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:merge_strategy], ::String, context: "#{context}[:merge_strategy]")
        Hearth::Validator.validate!(input[:file_password], ::String, context: "#{context}[:file_password]")
      end
    end

    class StartImportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportOutput, context: context)
        Hearth::Validator.validate!(input[:import_id], ::String, context: "#{context}[:import_id]")
        Validators::ImportResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:merge_strategy], ::String, context: "#{context}[:merge_strategy]")
        Hearth::Validator.validate!(input[:import_status], ::String, context: "#{context}[:import_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class StillWaitingResponseSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StillWaitingResponseSpecification, context: context)
        Validators::MessageGroupsList.validate!(input[:message_groups], context: "#{context}[:message_groups]") unless input[:message_groups].nil?
        Hearth::Validator.validate!(input[:frequency_in_seconds], ::Integer, context: "#{context}[:frequency_in_seconds]")
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        Hearth::Validator.validate!(input[:allow_interrupt], ::TrueClass, ::FalseClass, context: "#{context}[:allow_interrupt]")
      end
    end

    class SynonymList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SampleValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TextLogDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextLogDestination, context: context)
        Validators::CloudWatchLogGroupLogDestination.validate!(input[:cloud_watch], context: "#{context}[:cloud_watch]") unless input[:cloud_watch].nil?
      end
    end

    class TextLogSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextLogSetting, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::TextLogDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class TextLogSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TextLogSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TranscriptFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranscriptFilter, context: context)
        Validators::LexTranscriptFilter.validate!(input[:lex_transcript_filter], context: "#{context}[:lex_transcript_filter]") unless input[:lex_transcript_filter].nil?
      end
    end

    class TranscriptSourceSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranscriptSourceSetting, context: context)
        Validators::S3BucketTranscriptSource.validate!(input[:s3_bucket_transcript_source], context: "#{context}[:s3_bucket_transcript_source]") unless input[:s3_bucket_transcript_source].nil?
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

    class UpdateBotAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotAliasInput, context: context)
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_alias_name], ::String, context: "#{context}[:bot_alias_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::BotAliasLocaleSettingsMap.validate!(input[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless input[:bot_alias_locale_settings].nil?
        Validators::ConversationLogSettings.validate!(input[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless input[:conversation_log_settings].nil?
        Validators::SentimentAnalysisSettings.validate!(input[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless input[:sentiment_analysis_settings].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
      end
    end

    class UpdateBotAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotAliasOutput, context: context)
        Hearth::Validator.validate!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate!(input[:bot_alias_name], ::String, context: "#{context}[:bot_alias_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Validators::BotAliasLocaleSettingsMap.validate!(input[:bot_alias_locale_settings], context: "#{context}[:bot_alias_locale_settings]") unless input[:bot_alias_locale_settings].nil?
        Validators::ConversationLogSettings.validate!(input[:conversation_log_settings], context: "#{context}[:conversation_log_settings]") unless input[:conversation_log_settings].nil?
        Validators::SentimentAnalysisSettings.validate!(input[:sentiment_analysis_settings], context: "#{context}[:sentiment_analysis_settings]") unless input[:sentiment_analysis_settings].nil?
        Hearth::Validator.validate!(input[:bot_alias_status], ::String, context: "#{context}[:bot_alias_status]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class UpdateBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DataPrivacy.validate!(input[:data_privacy], context: "#{context}[:data_privacy]") unless input[:data_privacy].nil?
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
      end
    end

    class UpdateBotLocaleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotLocaleInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence_threshold], ::Float, context: "#{context}[:nlu_intent_confidence_threshold]")
        Validators::VoiceSettings.validate!(input[:voice_settings], context: "#{context}[:voice_settings]") unless input[:voice_settings].nil?
      end
    end

    class UpdateBotLocaleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotLocaleOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:locale_name], ::String, context: "#{context}[:locale_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence_threshold], ::Float, context: "#{context}[:nlu_intent_confidence_threshold]")
        Validators::VoiceSettings.validate!(input[:voice_settings], context: "#{context}[:voice_settings]") unless input[:voice_settings].nil?
        Hearth::Validator.validate!(input[:bot_locale_status], ::String, context: "#{context}[:bot_locale_status]")
        Validators::FailureReasons.validate!(input[:failure_reasons], context: "#{context}[:failure_reasons]") unless input[:failure_reasons].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Validators::RecommendedActions.validate!(input[:recommended_actions], context: "#{context}[:recommended_actions]") unless input[:recommended_actions].nil?
      end
    end

    class UpdateBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DataPrivacy.validate!(input[:data_privacy], context: "#{context}[:data_privacy]") unless input[:data_privacy].nil?
        Hearth::Validator.validate!(input[:idle_session_ttl_in_seconds], ::Integer, context: "#{context}[:idle_session_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:bot_status], ::String, context: "#{context}[:bot_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class UpdateBotRecommendationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotRecommendationInput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
        Validators::EncryptionSetting.validate!(input[:encryption_setting], context: "#{context}[:encryption_setting]") unless input[:encryption_setting].nil?
      end
    end

    class UpdateBotRecommendationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotRecommendationOutput, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:bot_recommendation_status], ::String, context: "#{context}[:bot_recommendation_status]")
        Hearth::Validator.validate!(input[:bot_recommendation_id], ::String, context: "#{context}[:bot_recommendation_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Validators::TranscriptSourceSetting.validate!(input[:transcript_source_setting], context: "#{context}[:transcript_source_setting]") unless input[:transcript_source_setting].nil?
        Validators::EncryptionSetting.validate!(input[:encryption_setting], context: "#{context}[:encryption_setting]") unless input[:encryption_setting].nil?
      end
    end

    class UpdateExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExportInput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Hearth::Validator.validate!(input[:file_password], ::String, context: "#{context}[:file_password]")
      end
    end

    class UpdateExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExportOutput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Validators::ExportResourceSpecification.validate!(input[:resource_specification], context: "#{context}[:resource_specification]") unless input[:resource_specification].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:export_status], ::String, context: "#{context}[:export_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class UpdateIntentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntentInput, context: context)
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Validators::SampleUtterancesList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::DialogCodeHookSettings.validate!(input[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless input[:dialog_code_hook].nil?
        Validators::FulfillmentCodeHookSettings.validate!(input[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless input[:fulfillment_code_hook].nil?
        Validators::SlotPrioritiesList.validate!(input[:slot_priorities], context: "#{context}[:slot_priorities]") unless input[:slot_priorities].nil?
        Validators::IntentConfirmationSetting.validate!(input[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless input[:intent_confirmation_setting].nil?
        Validators::IntentClosingSetting.validate!(input[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless input[:intent_closing_setting].nil?
        Validators::InputContextsList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextsList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
        Validators::KendraConfiguration.validate!(input[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless input[:kendra_configuration].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
      end
    end

    class UpdateIntentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntentOutput, context: context)
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:parent_intent_signature], ::String, context: "#{context}[:parent_intent_signature]")
        Validators::SampleUtterancesList.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        Validators::DialogCodeHookSettings.validate!(input[:dialog_code_hook], context: "#{context}[:dialog_code_hook]") unless input[:dialog_code_hook].nil?
        Validators::FulfillmentCodeHookSettings.validate!(input[:fulfillment_code_hook], context: "#{context}[:fulfillment_code_hook]") unless input[:fulfillment_code_hook].nil?
        Validators::SlotPrioritiesList.validate!(input[:slot_priorities], context: "#{context}[:slot_priorities]") unless input[:slot_priorities].nil?
        Validators::IntentConfirmationSetting.validate!(input[:intent_confirmation_setting], context: "#{context}[:intent_confirmation_setting]") unless input[:intent_confirmation_setting].nil?
        Validators::IntentClosingSetting.validate!(input[:intent_closing_setting], context: "#{context}[:intent_closing_setting]") unless input[:intent_closing_setting].nil?
        Validators::InputContextsList.validate!(input[:input_contexts], context: "#{context}[:input_contexts]") unless input[:input_contexts].nil?
        Validators::OutputContextsList.validate!(input[:output_contexts], context: "#{context}[:output_contexts]") unless input[:output_contexts].nil?
        Validators::KendraConfiguration.validate!(input[:kendra_configuration], context: "#{context}[:kendra_configuration]") unless input[:kendra_configuration].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class UpdateResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:expected_revision_id], ::String, context: "#{context}[:expected_revision_id]")
      end
    end

    class UpdateResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class UpdateSlotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSlotInput, context: context)
        Hearth::Validator.validate!(input[:slot_id], ::String, context: "#{context}[:slot_id]")
        Hearth::Validator.validate!(input[:slot_name], ::String, context: "#{context}[:slot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Validators::SlotValueElicitationSetting.validate!(input[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless input[:value_elicitation_setting].nil?
        Validators::ObfuscationSetting.validate!(input[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless input[:obfuscation_setting].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Validators::MultipleValuesSetting.validate!(input[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless input[:multiple_values_setting].nil?
      end
    end

    class UpdateSlotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSlotOutput, context: context)
        Hearth::Validator.validate!(input[:slot_id], ::String, context: "#{context}[:slot_id]")
        Hearth::Validator.validate!(input[:slot_name], ::String, context: "#{context}[:slot_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Validators::SlotValueElicitationSetting.validate!(input[:value_elicitation_setting], context: "#{context}[:value_elicitation_setting]") unless input[:value_elicitation_setting].nil?
        Validators::ObfuscationSetting.validate!(input[:obfuscation_setting], context: "#{context}[:obfuscation_setting]") unless input[:obfuscation_setting].nil?
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:intent_id], ::String, context: "#{context}[:intent_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Validators::MultipleValuesSetting.validate!(input[:multiple_values_setting], context: "#{context}[:multiple_values_setting]") unless input[:multiple_values_setting].nil?
      end
    end

    class UpdateSlotTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSlotTypeInput, context: context)
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Hearth::Validator.validate!(input[:slot_type_name], ::String, context: "#{context}[:slot_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SlotTypeValues.validate!(input[:slot_type_values], context: "#{context}[:slot_type_values]") unless input[:slot_type_values].nil?
        Validators::SlotValueSelectionSetting.validate!(input[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless input[:value_selection_setting].nil?
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Validators::ExternalSourceSetting.validate!(input[:external_source_setting], context: "#{context}[:external_source_setting]") unless input[:external_source_setting].nil?
      end
    end

    class UpdateSlotTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSlotTypeOutput, context: context)
        Hearth::Validator.validate!(input[:slot_type_id], ::String, context: "#{context}[:slot_type_id]")
        Hearth::Validator.validate!(input[:slot_type_name], ::String, context: "#{context}[:slot_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SlotTypeValues.validate!(input[:slot_type_values], context: "#{context}[:slot_type_values]") unless input[:slot_type_values].nil?
        Validators::SlotValueSelectionSetting.validate!(input[:value_selection_setting], context: "#{context}[:value_selection_setting]") unless input[:value_selection_setting].nil?
        Hearth::Validator.validate!(input[:parent_slot_type_signature], ::String, context: "#{context}[:parent_slot_type_signature]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Validators::ExternalSourceSetting.validate!(input[:external_source_setting], context: "#{context}[:external_source_setting]") unless input[:external_source_setting].nil?
      end
    end

    class UtteranceAggregationDuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UtteranceAggregationDuration, context: context)
        Validators::RelativeAggregationDuration.validate!(input[:relative_aggregation_duration], context: "#{context}[:relative_aggregation_duration]") unless input[:relative_aggregation_duration].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VoiceSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceSettings, context: context)
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
      end
    end

    class WaitAndContinueSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WaitAndContinueSpecification, context: context)
        Validators::ResponseSpecification.validate!(input[:waiting_response], context: "#{context}[:waiting_response]") unless input[:waiting_response].nil?
        Validators::ResponseSpecification.validate!(input[:continue_response], context: "#{context}[:continue_response]") unless input[:continue_response].nil?
        Validators::StillWaitingResponseSpecification.validate!(input[:still_waiting_response], context: "#{context}[:still_waiting_response]") unless input[:still_waiting_response].nil?
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
      end
    end

  end
end
