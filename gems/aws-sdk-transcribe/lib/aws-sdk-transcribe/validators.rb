# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Transcribe
  module Validators

    class AbsoluteTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbsoluteTimeRange, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Integer, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Integer, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:first], ::Integer, context: "#{context}[:first]")
        Hearth::Validator.validate!(input[:last], ::Integer, context: "#{context}[:last]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CallAnalyticsJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CallAnalyticsJob, context: context)
        Hearth::Validator.validate!(input[:call_analytics_job_name], ::String, context: "#{context}[:call_analytics_job_name]")
        Hearth::Validator.validate!(input[:call_analytics_job_status], ::String, context: "#{context}[:call_analytics_job_status]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate!(input[:media_format], ::String, context: "#{context}[:media_format]")
        Media.validate!(input[:media], context: "#{context}[:media]") unless input[:media].nil?
        Transcript.validate!(input[:transcript], context: "#{context}[:transcript]") unless input[:transcript].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:identified_language_score], ::Float, context: "#{context}[:identified_language_score]")
        CallAnalyticsJobSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        ChannelDefinitions.validate!(input[:channel_definitions], context: "#{context}[:channel_definitions]") unless input[:channel_definitions].nil?
      end
    end

    class CallAnalyticsJobSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CallAnalyticsJobSettings, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
        Hearth::Validator.validate!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
        ContentRedaction.validate!(input[:content_redaction], context: "#{context}[:content_redaction]") unless input[:content_redaction].nil?
        LanguageOptions.validate!(input[:language_options], context: "#{context}[:language_options]") unless input[:language_options].nil?
        LanguageIdSettingsMap.validate!(input[:language_id_settings], context: "#{context}[:language_id_settings]") unless input[:language_id_settings].nil?
      end
    end

    class CallAnalyticsJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CallAnalyticsJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CallAnalyticsJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CallAnalyticsJobSummary, context: context)
        Hearth::Validator.validate!(input[:call_analytics_job_name], ::String, context: "#{context}[:call_analytics_job_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:call_analytics_job_status], ::String, context: "#{context}[:call_analytics_job_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class CategoryProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CategoryProperties, context: context)
        Hearth::Validator.validate!(input[:category_name], ::String, context: "#{context}[:category_name]")
        RuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class CategoryPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CategoryProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelDefinition, context: context)
        Hearth::Validator.validate!(input[:channel_id], ::Integer, context: "#{context}[:channel_id]")
        Hearth::Validator.validate!(input[:participant_role], ::String, context: "#{context}[:participant_role]")
      end
    end

    class ChannelDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContentRedaction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentRedaction, context: context)
        Hearth::Validator.validate!(input[:redaction_type], ::String, context: "#{context}[:redaction_type]")
        Hearth::Validator.validate!(input[:redaction_output], ::String, context: "#{context}[:redaction_output]")
        PiiEntityTypes.validate!(input[:pii_entity_types], context: "#{context}[:pii_entity_types]") unless input[:pii_entity_types].nil?
      end
    end

    class CreateCallAnalyticsCategoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCallAnalyticsCategoryInput, context: context)
        Hearth::Validator.validate!(input[:category_name], ::String, context: "#{context}[:category_name]")
        RuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class CreateCallAnalyticsCategoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCallAnalyticsCategoryOutput, context: context)
        CategoryProperties.validate!(input[:category_properties], context: "#{context}[:category_properties]") unless input[:category_properties].nil?
      end
    end

    class CreateLanguageModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLanguageModelInput, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:base_model_name], ::String, context: "#{context}[:base_model_name]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLanguageModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLanguageModelOutput, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:base_model_name], ::String, context: "#{context}[:base_model_name]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        Hearth::Validator.validate!(input[:model_status], ::String, context: "#{context}[:model_status]")
      end
    end

    class CreateMedicalVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMedicalVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_file_uri], ::String, context: "#{context}[:vocabulary_file_uri]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMedicalVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMedicalVocabularyOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_state], ::String, context: "#{context}[:vocabulary_state]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class CreateVocabularyFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVocabularyFilterInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Words.validate!(input[:words], context: "#{context}[:words]") unless input[:words].nil?
        Hearth::Validator.validate!(input[:vocabulary_filter_file_uri], ::String, context: "#{context}[:vocabulary_filter_file_uri]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVocabularyFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVocabularyFilterOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class CreateVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Phrases.validate!(input[:phrases], context: "#{context}[:phrases]") unless input[:phrases].nil?
        Hearth::Validator.validate!(input[:vocabulary_file_uri], ::String, context: "#{context}[:vocabulary_file_uri]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVocabularyOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_state], ::String, context: "#{context}[:vocabulary_state]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class DeleteCallAnalyticsCategoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCallAnalyticsCategoryInput, context: context)
        Hearth::Validator.validate!(input[:category_name], ::String, context: "#{context}[:category_name]")
      end
    end

    class DeleteCallAnalyticsCategoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCallAnalyticsCategoryOutput, context: context)
      end
    end

    class DeleteCallAnalyticsJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCallAnalyticsJobInput, context: context)
        Hearth::Validator.validate!(input[:call_analytics_job_name], ::String, context: "#{context}[:call_analytics_job_name]")
      end
    end

    class DeleteCallAnalyticsJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCallAnalyticsJobOutput, context: context)
      end
    end

    class DeleteLanguageModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLanguageModelInput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class DeleteLanguageModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLanguageModelOutput, context: context)
      end
    end

    class DeleteMedicalTranscriptionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMedicalTranscriptionJobInput, context: context)
        Hearth::Validator.validate!(input[:medical_transcription_job_name], ::String, context: "#{context}[:medical_transcription_job_name]")
      end
    end

    class DeleteMedicalTranscriptionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMedicalTranscriptionJobOutput, context: context)
      end
    end

    class DeleteMedicalVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMedicalVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
      end
    end

    class DeleteMedicalVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMedicalVocabularyOutput, context: context)
      end
    end

    class DeleteTranscriptionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTranscriptionJobInput, context: context)
        Hearth::Validator.validate!(input[:transcription_job_name], ::String, context: "#{context}[:transcription_job_name]")
      end
    end

    class DeleteTranscriptionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTranscriptionJobOutput, context: context)
      end
    end

    class DeleteVocabularyFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVocabularyFilterInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
      end
    end

    class DeleteVocabularyFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVocabularyFilterOutput, context: context)
      end
    end

    class DeleteVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
      end
    end

    class DeleteVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVocabularyOutput, context: context)
      end
    end

    class DescribeLanguageModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLanguageModelInput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class DescribeLanguageModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLanguageModelOutput, context: context)
        LanguageModel.validate!(input[:language_model], context: "#{context}[:language_model]") unless input[:language_model].nil?
      end
    end

    class GetCallAnalyticsCategoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCallAnalyticsCategoryInput, context: context)
        Hearth::Validator.validate!(input[:category_name], ::String, context: "#{context}[:category_name]")
      end
    end

    class GetCallAnalyticsCategoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCallAnalyticsCategoryOutput, context: context)
        CategoryProperties.validate!(input[:category_properties], context: "#{context}[:category_properties]") unless input[:category_properties].nil?
      end
    end

    class GetCallAnalyticsJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCallAnalyticsJobInput, context: context)
        Hearth::Validator.validate!(input[:call_analytics_job_name], ::String, context: "#{context}[:call_analytics_job_name]")
      end
    end

    class GetCallAnalyticsJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCallAnalyticsJobOutput, context: context)
        CallAnalyticsJob.validate!(input[:call_analytics_job], context: "#{context}[:call_analytics_job]") unless input[:call_analytics_job].nil?
      end
    end

    class GetMedicalTranscriptionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMedicalTranscriptionJobInput, context: context)
        Hearth::Validator.validate!(input[:medical_transcription_job_name], ::String, context: "#{context}[:medical_transcription_job_name]")
      end
    end

    class GetMedicalTranscriptionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMedicalTranscriptionJobOutput, context: context)
        MedicalTranscriptionJob.validate!(input[:medical_transcription_job], context: "#{context}[:medical_transcription_job]") unless input[:medical_transcription_job].nil?
      end
    end

    class GetMedicalVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMedicalVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
      end
    end

    class GetMedicalVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMedicalVocabularyOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_state], ::String, context: "#{context}[:vocabulary_state]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:download_uri], ::String, context: "#{context}[:download_uri]")
      end
    end

    class GetTranscriptionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTranscriptionJobInput, context: context)
        Hearth::Validator.validate!(input[:transcription_job_name], ::String, context: "#{context}[:transcription_job_name]")
      end
    end

    class GetTranscriptionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTranscriptionJobOutput, context: context)
        TranscriptionJob.validate!(input[:transcription_job], context: "#{context}[:transcription_job]") unless input[:transcription_job].nil?
      end
    end

    class GetVocabularyFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVocabularyFilterInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
      end
    end

    class GetVocabularyFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVocabularyFilterOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:download_uri], ::String, context: "#{context}[:download_uri]")
      end
    end

    class GetVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
      end
    end

    class GetVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVocabularyOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_state], ::String, context: "#{context}[:vocabulary_state]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:download_uri], ::String, context: "#{context}[:download_uri]")
      end
    end

    class InputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:tuning_data_s3_uri], ::String, context: "#{context}[:tuning_data_s3_uri]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InterruptionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InterruptionFilter, context: context)
        Hearth::Validator.validate!(input[:threshold], ::Integer, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:participant_role], ::String, context: "#{context}[:participant_role]")
        AbsoluteTimeRange.validate!(input[:absolute_time_range], context: "#{context}[:absolute_time_range]") unless input[:absolute_time_range].nil?
        RelativeTimeRange.validate!(input[:relative_time_range], context: "#{context}[:relative_time_range]") unless input[:relative_time_range].nil?
        Hearth::Validator.validate!(input[:negate], ::TrueClass, ::FalseClass, context: "#{context}[:negate]")
      end
    end

    class JobExecutionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobExecutionSettings, context: context)
        Hearth::Validator.validate!(input[:allow_deferred_execution], ::TrueClass, ::FalseClass, context: "#{context}[:allow_deferred_execution]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
      end
    end

    class KMSEncryptionContextMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class LanguageCodeItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LanguageCodeItem, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Float, context: "#{context}[:duration_in_seconds]")
      end
    end

    class LanguageCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LanguageCodeItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LanguageIdSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LanguageIdSettings, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
      end
    end

    class LanguageIdSettingsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          LanguageIdSettings.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class LanguageModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LanguageModel, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:base_model_name], ::String, context: "#{context}[:base_model_name]")
        Hearth::Validator.validate!(input[:model_status], ::String, context: "#{context}[:model_status]")
        Hearth::Validator.validate!(input[:upgrade_availability], ::TrueClass, ::FalseClass, context: "#{context}[:upgrade_availability]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
      end
    end

    class LanguageOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListCallAnalyticsCategoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCallAnalyticsCategoriesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCallAnalyticsCategoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCallAnalyticsCategoriesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CategoryPropertiesList.validate!(input[:categories], context: "#{context}[:categories]") unless input[:categories].nil?
      end
    end

    class ListCallAnalyticsJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCallAnalyticsJobsInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:job_name_contains], ::String, context: "#{context}[:job_name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCallAnalyticsJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCallAnalyticsJobsOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CallAnalyticsJobSummaries.validate!(input[:call_analytics_job_summaries], context: "#{context}[:call_analytics_job_summaries]") unless input[:call_analytics_job_summaries].nil?
      end
    end

    class ListLanguageModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLanguageModelsInput, context: context)
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLanguageModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLanguageModelsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Models.validate!(input[:models], context: "#{context}[:models]") unless input[:models].nil?
      end
    end

    class ListMedicalTranscriptionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMedicalTranscriptionJobsInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:job_name_contains], ::String, context: "#{context}[:job_name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMedicalTranscriptionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMedicalTranscriptionJobsOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        MedicalTranscriptionJobSummaries.validate!(input[:medical_transcription_job_summaries], context: "#{context}[:medical_transcription_job_summaries]") unless input[:medical_transcription_job_summaries].nil?
      end
    end

    class ListMedicalVocabulariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMedicalVocabulariesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:state_equals], ::String, context: "#{context}[:state_equals]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
      end
    end

    class ListMedicalVocabulariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMedicalVocabulariesOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Vocabularies.validate!(input[:vocabularies], context: "#{context}[:vocabularies]") unless input[:vocabularies].nil?
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
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTranscriptionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTranscriptionJobsInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:job_name_contains], ::String, context: "#{context}[:job_name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTranscriptionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTranscriptionJobsOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        TranscriptionJobSummaries.validate!(input[:transcription_job_summaries], context: "#{context}[:transcription_job_summaries]") unless input[:transcription_job_summaries].nil?
      end
    end

    class ListVocabulariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVocabulariesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:state_equals], ::String, context: "#{context}[:state_equals]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
      end
    end

    class ListVocabulariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVocabulariesOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Vocabularies.validate!(input[:vocabularies], context: "#{context}[:vocabularies]") unless input[:vocabularies].nil?
      end
    end

    class ListVocabularyFiltersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVocabularyFiltersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
      end
    end

    class ListVocabularyFiltersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVocabularyFiltersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        VocabularyFilters.validate!(input[:vocabulary_filters], context: "#{context}[:vocabulary_filters]") unless input[:vocabulary_filters].nil?
      end
    end

    class Media
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Media, context: context)
        Hearth::Validator.validate!(input[:media_file_uri], ::String, context: "#{context}[:media_file_uri]")
        Hearth::Validator.validate!(input[:redacted_media_file_uri], ::String, context: "#{context}[:redacted_media_file_uri]")
      end
    end

    class MedicalTranscript
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalTranscript, context: context)
        Hearth::Validator.validate!(input[:transcript_file_uri], ::String, context: "#{context}[:transcript_file_uri]")
      end
    end

    class MedicalTranscriptionJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalTranscriptionJob, context: context)
        Hearth::Validator.validate!(input[:medical_transcription_job_name], ::String, context: "#{context}[:medical_transcription_job_name]")
        Hearth::Validator.validate!(input[:transcription_job_status], ::String, context: "#{context}[:transcription_job_status]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate!(input[:media_format], ::String, context: "#{context}[:media_format]")
        Media.validate!(input[:media], context: "#{context}[:media]") unless input[:media].nil?
        MedicalTranscript.validate!(input[:transcript], context: "#{context}[:transcript]") unless input[:transcript].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        MedicalTranscriptionSetting.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate!(input[:specialty], ::String, context: "#{context}[:specialty]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MedicalTranscriptionJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MedicalTranscriptionJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MedicalTranscriptionJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalTranscriptionJobSummary, context: context)
        Hearth::Validator.validate!(input[:medical_transcription_job_name], ::String, context: "#{context}[:medical_transcription_job_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:transcription_job_status], ::String, context: "#{context}[:transcription_job_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:output_location_type], ::String, context: "#{context}[:output_location_type]")
        Hearth::Validator.validate!(input[:specialty], ::String, context: "#{context}[:specialty]")
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class MedicalTranscriptionSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalTranscriptionSetting, context: context)
        Hearth::Validator.validate!(input[:show_speaker_labels], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_labels]")
        Hearth::Validator.validate!(input[:max_speaker_labels], ::Integer, context: "#{context}[:max_speaker_labels]")
        Hearth::Validator.validate!(input[:channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:channel_identification]")
        Hearth::Validator.validate!(input[:show_alternatives], ::TrueClass, ::FalseClass, context: "#{context}[:show_alternatives]")
        Hearth::Validator.validate!(input[:max_alternatives], ::Integer, context: "#{context}[:max_alternatives]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
      end
    end

    class ModelSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelSettings, context: context)
        Hearth::Validator.validate!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
      end
    end

    class Models
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LanguageModel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NonTalkTimeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NonTalkTimeFilter, context: context)
        Hearth::Validator.validate!(input[:threshold], ::Integer, context: "#{context}[:threshold]")
        AbsoluteTimeRange.validate!(input[:absolute_time_range], context: "#{context}[:absolute_time_range]") unless input[:absolute_time_range].nil?
        RelativeTimeRange.validate!(input[:relative_time_range], context: "#{context}[:relative_time_range]") unless input[:relative_time_range].nil?
        Hearth::Validator.validate!(input[:negate], ::TrueClass, ::FalseClass, context: "#{context}[:negate]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Phrases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PiiEntityTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RelativeTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelativeTimeRange, context: context)
        Hearth::Validator.validate!(input[:start_percentage], ::Integer, context: "#{context}[:start_percentage]")
        Hearth::Validator.validate!(input[:end_percentage], ::Integer, context: "#{context}[:end_percentage]")
        Hearth::Validator.validate!(input[:first], ::Integer, context: "#{context}[:first]")
        Hearth::Validator.validate!(input[:last], ::Integer, context: "#{context}[:last]")
      end
    end

    class Rule
      def self.validate!(input, context:)
        case input
        when Types::Rule::NonTalkTimeFilter
          NonTalkTimeFilter.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::Rule::InterruptionFilter
          InterruptionFilter.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::Rule::TranscriptFilter
          TranscriptFilter.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::Rule::SentimentFilter
          SentimentFilter.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::Rule, got #{input.class}."
        end
      end

      class NonTalkTimeFilter
        def self.validate!(input, context:)
          Validators::NonTalkTimeFilter.validate!(input, context: context) unless input.nil?
        end
      end

      class InterruptionFilter
        def self.validate!(input, context:)
          Validators::InterruptionFilter.validate!(input, context: context) unless input.nil?
        end
      end

      class TranscriptFilter
        def self.validate!(input, context:)
          Validators::TranscriptFilter.validate!(input, context: context) unless input.nil?
        end
      end

      class SentimentFilter
        def self.validate!(input, context:)
          Validators::SentimentFilter.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class RuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Rule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SentimentFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SentimentFilter, context: context)
        SentimentValueList.validate!(input[:sentiments], context: "#{context}[:sentiments]") unless input[:sentiments].nil?
        AbsoluteTimeRange.validate!(input[:absolute_time_range], context: "#{context}[:absolute_time_range]") unless input[:absolute_time_range].nil?
        RelativeTimeRange.validate!(input[:relative_time_range], context: "#{context}[:relative_time_range]") unless input[:relative_time_range].nil?
        Hearth::Validator.validate!(input[:participant_role], ::String, context: "#{context}[:participant_role]")
        Hearth::Validator.validate!(input[:negate], ::TrueClass, ::FalseClass, context: "#{context}[:negate]")
      end
    end

    class SentimentValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Settings, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:show_speaker_labels], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_labels]")
        Hearth::Validator.validate!(input[:max_speaker_labels], ::Integer, context: "#{context}[:max_speaker_labels]")
        Hearth::Validator.validate!(input[:channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:channel_identification]")
        Hearth::Validator.validate!(input[:show_alternatives], ::TrueClass, ::FalseClass, context: "#{context}[:show_alternatives]")
        Hearth::Validator.validate!(input[:max_alternatives], ::Integer, context: "#{context}[:max_alternatives]")
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
      end
    end

    class StartCallAnalyticsJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCallAnalyticsJobInput, context: context)
        Hearth::Validator.validate!(input[:call_analytics_job_name], ::String, context: "#{context}[:call_analytics_job_name]")
        Media.validate!(input[:media], context: "#{context}[:media]") unless input[:media].nil?
        Hearth::Validator.validate!(input[:output_location], ::String, context: "#{context}[:output_location]")
        Hearth::Validator.validate!(input[:output_encryption_kms_key_id], ::String, context: "#{context}[:output_encryption_kms_key_id]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        CallAnalyticsJobSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        ChannelDefinitions.validate!(input[:channel_definitions], context: "#{context}[:channel_definitions]") unless input[:channel_definitions].nil?
      end
    end

    class StartCallAnalyticsJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCallAnalyticsJobOutput, context: context)
        CallAnalyticsJob.validate!(input[:call_analytics_job], context: "#{context}[:call_analytics_job]") unless input[:call_analytics_job].nil?
      end
    end

    class StartMedicalTranscriptionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMedicalTranscriptionJobInput, context: context)
        Hearth::Validator.validate!(input[:medical_transcription_job_name], ::String, context: "#{context}[:medical_transcription_job_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate!(input[:media_format], ::String, context: "#{context}[:media_format]")
        Media.validate!(input[:media], context: "#{context}[:media]") unless input[:media].nil?
        Hearth::Validator.validate!(input[:output_bucket_name], ::String, context: "#{context}[:output_bucket_name]")
        Hearth::Validator.validate!(input[:output_key], ::String, context: "#{context}[:output_key]")
        Hearth::Validator.validate!(input[:output_encryption_kms_key_id], ::String, context: "#{context}[:output_encryption_kms_key_id]")
        KMSEncryptionContextMap.validate!(input[:kms_encryption_context], context: "#{context}[:kms_encryption_context]") unless input[:kms_encryption_context].nil?
        MedicalTranscriptionSetting.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate!(input[:specialty], ::String, context: "#{context}[:specialty]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartMedicalTranscriptionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMedicalTranscriptionJobOutput, context: context)
        MedicalTranscriptionJob.validate!(input[:medical_transcription_job], context: "#{context}[:medical_transcription_job]") unless input[:medical_transcription_job].nil?
      end
    end

    class StartTranscriptionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTranscriptionJobInput, context: context)
        Hearth::Validator.validate!(input[:transcription_job_name], ::String, context: "#{context}[:transcription_job_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate!(input[:media_format], ::String, context: "#{context}[:media_format]")
        Media.validate!(input[:media], context: "#{context}[:media]") unless input[:media].nil?
        Hearth::Validator.validate!(input[:output_bucket_name], ::String, context: "#{context}[:output_bucket_name]")
        Hearth::Validator.validate!(input[:output_key], ::String, context: "#{context}[:output_key]")
        Hearth::Validator.validate!(input[:output_encryption_kms_key_id], ::String, context: "#{context}[:output_encryption_kms_key_id]")
        KMSEncryptionContextMap.validate!(input[:kms_encryption_context], context: "#{context}[:kms_encryption_context]") unless input[:kms_encryption_context].nil?
        Settings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        ModelSettings.validate!(input[:model_settings], context: "#{context}[:model_settings]") unless input[:model_settings].nil?
        JobExecutionSettings.validate!(input[:job_execution_settings], context: "#{context}[:job_execution_settings]") unless input[:job_execution_settings].nil?
        ContentRedaction.validate!(input[:content_redaction], context: "#{context}[:content_redaction]") unless input[:content_redaction].nil?
        Hearth::Validator.validate!(input[:identify_language], ::TrueClass, ::FalseClass, context: "#{context}[:identify_language]")
        Hearth::Validator.validate!(input[:identify_multiple_languages], ::TrueClass, ::FalseClass, context: "#{context}[:identify_multiple_languages]")
        LanguageOptions.validate!(input[:language_options], context: "#{context}[:language_options]") unless input[:language_options].nil?
        Subtitles.validate!(input[:subtitles], context: "#{context}[:subtitles]") unless input[:subtitles].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        LanguageIdSettingsMap.validate!(input[:language_id_settings], context: "#{context}[:language_id_settings]") unless input[:language_id_settings].nil?
      end
    end

    class StartTranscriptionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTranscriptionJobOutput, context: context)
        TranscriptionJob.validate!(input[:transcription_job], context: "#{context}[:transcription_job]") unless input[:transcription_job].nil?
      end
    end

    class StringTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubtitleFileUris
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubtitleFormats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Subtitles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subtitles, context: context)
        SubtitleFormats.validate!(input[:formats], context: "#{context}[:formats]") unless input[:formats].nil?
        Hearth::Validator.validate!(input[:output_start_index], ::Integer, context: "#{context}[:output_start_index]")
      end
    end

    class SubtitlesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubtitlesOutput, context: context)
        SubtitleFormats.validate!(input[:formats], context: "#{context}[:formats]") unless input[:formats].nil?
        SubtitleFileUris.validate!(input[:subtitle_file_uris], context: "#{context}[:subtitle_file_uris]") unless input[:subtitle_file_uris].nil?
        Hearth::Validator.validate!(input[:output_start_index], ::Integer, context: "#{context}[:output_start_index]")
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Transcript
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Transcript, context: context)
        Hearth::Validator.validate!(input[:transcript_file_uri], ::String, context: "#{context}[:transcript_file_uri]")
        Hearth::Validator.validate!(input[:redacted_transcript_file_uri], ::String, context: "#{context}[:redacted_transcript_file_uri]")
      end
    end

    class TranscriptFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranscriptFilter, context: context)
        Hearth::Validator.validate!(input[:transcript_filter_type], ::String, context: "#{context}[:transcript_filter_type]")
        AbsoluteTimeRange.validate!(input[:absolute_time_range], context: "#{context}[:absolute_time_range]") unless input[:absolute_time_range].nil?
        RelativeTimeRange.validate!(input[:relative_time_range], context: "#{context}[:relative_time_range]") unless input[:relative_time_range].nil?
        Hearth::Validator.validate!(input[:participant_role], ::String, context: "#{context}[:participant_role]")
        Hearth::Validator.validate!(input[:negate], ::TrueClass, ::FalseClass, context: "#{context}[:negate]")
        StringTargetList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
      end
    end

    class TranscriptionJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranscriptionJob, context: context)
        Hearth::Validator.validate!(input[:transcription_job_name], ::String, context: "#{context}[:transcription_job_name]")
        Hearth::Validator.validate!(input[:transcription_job_status], ::String, context: "#{context}[:transcription_job_status]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate!(input[:media_format], ::String, context: "#{context}[:media_format]")
        Media.validate!(input[:media], context: "#{context}[:media]") unless input[:media].nil?
        Transcript.validate!(input[:transcript], context: "#{context}[:transcript]") unless input[:transcript].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Settings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        ModelSettings.validate!(input[:model_settings], context: "#{context}[:model_settings]") unless input[:model_settings].nil?
        JobExecutionSettings.validate!(input[:job_execution_settings], context: "#{context}[:job_execution_settings]") unless input[:job_execution_settings].nil?
        ContentRedaction.validate!(input[:content_redaction], context: "#{context}[:content_redaction]") unless input[:content_redaction].nil?
        Hearth::Validator.validate!(input[:identify_language], ::TrueClass, ::FalseClass, context: "#{context}[:identify_language]")
        Hearth::Validator.validate!(input[:identify_multiple_languages], ::TrueClass, ::FalseClass, context: "#{context}[:identify_multiple_languages]")
        LanguageOptions.validate!(input[:language_options], context: "#{context}[:language_options]") unless input[:language_options].nil?
        Hearth::Validator.validate!(input[:identified_language_score], ::Float, context: "#{context}[:identified_language_score]")
        LanguageCodeList.validate!(input[:language_codes], context: "#{context}[:language_codes]") unless input[:language_codes].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        SubtitlesOutput.validate!(input[:subtitles], context: "#{context}[:subtitles]") unless input[:subtitles].nil?
        LanguageIdSettingsMap.validate!(input[:language_id_settings], context: "#{context}[:language_id_settings]") unless input[:language_id_settings].nil?
      end
    end

    class TranscriptionJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TranscriptionJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TranscriptionJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranscriptionJobSummary, context: context)
        Hearth::Validator.validate!(input[:transcription_job_name], ::String, context: "#{context}[:transcription_job_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:transcription_job_status], ::String, context: "#{context}[:transcription_job_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:output_location_type], ::String, context: "#{context}[:output_location_type]")
        ContentRedaction.validate!(input[:content_redaction], context: "#{context}[:content_redaction]") unless input[:content_redaction].nil?
        ModelSettings.validate!(input[:model_settings], context: "#{context}[:model_settings]") unless input[:model_settings].nil?
        Hearth::Validator.validate!(input[:identify_language], ::TrueClass, ::FalseClass, context: "#{context}[:identify_language]")
        Hearth::Validator.validate!(input[:identify_multiple_languages], ::TrueClass, ::FalseClass, context: "#{context}[:identify_multiple_languages]")
        Hearth::Validator.validate!(input[:identified_language_score], ::Float, context: "#{context}[:identified_language_score]")
        LanguageCodeList.validate!(input[:language_codes], context: "#{context}[:language_codes]") unless input[:language_codes].nil?
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

    class UpdateCallAnalyticsCategoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCallAnalyticsCategoryInput, context: context)
        Hearth::Validator.validate!(input[:category_name], ::String, context: "#{context}[:category_name]")
        RuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class UpdateCallAnalyticsCategoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCallAnalyticsCategoryOutput, context: context)
        CategoryProperties.validate!(input[:category_properties], context: "#{context}[:category_properties]") unless input[:category_properties].nil?
      end
    end

    class UpdateMedicalVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMedicalVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_file_uri], ::String, context: "#{context}[:vocabulary_file_uri]")
      end
    end

    class UpdateMedicalVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMedicalVocabularyOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:vocabulary_state], ::String, context: "#{context}[:vocabulary_state]")
      end
    end

    class UpdateVocabularyFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVocabularyFilterInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Words.validate!(input[:words], context: "#{context}[:words]") unless input[:words].nil?
        Hearth::Validator.validate!(input[:vocabulary_filter_file_uri], ::String, context: "#{context}[:vocabulary_filter_file_uri]")
      end
    end

    class UpdateVocabularyFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVocabularyFilterOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class UpdateVocabularyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVocabularyInput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Phrases.validate!(input[:phrases], context: "#{context}[:phrases]") unless input[:phrases].nil?
        Hearth::Validator.validate!(input[:vocabulary_file_uri], ::String, context: "#{context}[:vocabulary_file_uri]")
      end
    end

    class UpdateVocabularyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVocabularyOutput, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:vocabulary_state], ::String, context: "#{context}[:vocabulary_state]")
      end
    end

    class Vocabularies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VocabularyInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VocabularyFilterInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VocabularyFilterInfo, context: context)
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class VocabularyFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VocabularyFilterInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VocabularyInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VocabularyInfo, context: context)
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:vocabulary_state], ::String, context: "#{context}[:vocabulary_state]")
      end
    end

    class Words
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
