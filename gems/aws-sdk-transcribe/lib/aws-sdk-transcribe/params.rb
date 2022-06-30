# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Transcribe
  module Params

    module AbsoluteTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbsoluteTimeRange, context: context)
        type = Types::AbsoluteTimeRange.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.first = params[:first]
        type.last = params[:last]
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

    module CallAnalyticsJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CallAnalyticsJob, context: context)
        type = Types::CallAnalyticsJob.new
        type.call_analytics_job_name = params[:call_analytics_job_name]
        type.call_analytics_job_status = params[:call_analytics_job_status]
        type.language_code = params[:language_code]
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz]
        type.media_format = params[:media_format]
        type.media = Media.build(params[:media], context: "#{context}[:media]") unless params[:media].nil?
        type.transcript = Transcript.build(params[:transcript], context: "#{context}[:transcript]") unless params[:transcript].nil?
        type.start_time = params[:start_time]
        type.creation_time = params[:creation_time]
        type.completion_time = params[:completion_time]
        type.failure_reason = params[:failure_reason]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.identified_language_score = params[:identified_language_score]
        type.settings = CallAnalyticsJobSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.channel_definitions = ChannelDefinitions.build(params[:channel_definitions], context: "#{context}[:channel_definitions]") unless params[:channel_definitions].nil?
        type
      end
    end

    module CallAnalyticsJobSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CallAnalyticsJobSettings, context: context)
        type = Types::CallAnalyticsJobSettings.new
        type.vocabulary_name = params[:vocabulary_name]
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.vocabulary_filter_method = params[:vocabulary_filter_method]
        type.language_model_name = params[:language_model_name]
        type.content_redaction = ContentRedaction.build(params[:content_redaction], context: "#{context}[:content_redaction]") unless params[:content_redaction].nil?
        type.language_options = LanguageOptions.build(params[:language_options], context: "#{context}[:language_options]") unless params[:language_options].nil?
        type.language_id_settings = LanguageIdSettingsMap.build(params[:language_id_settings], context: "#{context}[:language_id_settings]") unless params[:language_id_settings].nil?
        type
      end
    end

    module CallAnalyticsJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CallAnalyticsJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CallAnalyticsJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CallAnalyticsJobSummary, context: context)
        type = Types::CallAnalyticsJobSummary.new
        type.call_analytics_job_name = params[:call_analytics_job_name]
        type.creation_time = params[:creation_time]
        type.start_time = params[:start_time]
        type.completion_time = params[:completion_time]
        type.language_code = params[:language_code]
        type.call_analytics_job_status = params[:call_analytics_job_status]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module CategoryProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CategoryProperties, context: context)
        type = Types::CategoryProperties.new
        type.category_name = params[:category_name]
        type.rules = RuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.create_time = params[:create_time]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module CategoryPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CategoryProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelDefinition, context: context)
        type = Types::ChannelDefinition.new
        type.channel_id = params[:channel_id]
        type.participant_role = params[:participant_role]
        type
      end
    end

    module ChannelDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module ContentRedaction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContentRedaction, context: context)
        type = Types::ContentRedaction.new
        type.redaction_type = params[:redaction_type]
        type.redaction_output = params[:redaction_output]
        type.pii_entity_types = PiiEntityTypes.build(params[:pii_entity_types], context: "#{context}[:pii_entity_types]") unless params[:pii_entity_types].nil?
        type
      end
    end

    module CreateCallAnalyticsCategoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCallAnalyticsCategoryInput, context: context)
        type = Types::CreateCallAnalyticsCategoryInput.new
        type.category_name = params[:category_name]
        type.rules = RuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module CreateCallAnalyticsCategoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCallAnalyticsCategoryOutput, context: context)
        type = Types::CreateCallAnalyticsCategoryOutput.new
        type.category_properties = CategoryProperties.build(params[:category_properties], context: "#{context}[:category_properties]") unless params[:category_properties].nil?
        type
      end
    end

    module CreateLanguageModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLanguageModelInput, context: context)
        type = Types::CreateLanguageModelInput.new
        type.language_code = params[:language_code]
        type.base_model_name = params[:base_model_name]
        type.model_name = params[:model_name]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLanguageModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLanguageModelOutput, context: context)
        type = Types::CreateLanguageModelOutput.new
        type.language_code = params[:language_code]
        type.base_model_name = params[:base_model_name]
        type.model_name = params[:model_name]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.model_status = params[:model_status]
        type
      end
    end

    module CreateMedicalVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMedicalVocabularyInput, context: context)
        type = Types::CreateMedicalVocabularyInput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.vocabulary_file_uri = params[:vocabulary_file_uri]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMedicalVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMedicalVocabularyOutput, context: context)
        type = Types::CreateMedicalVocabularyOutput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.vocabulary_state = params[:vocabulary_state]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module CreateVocabularyFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVocabularyFilterInput, context: context)
        type = Types::CreateVocabularyFilterInput.new
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.language_code = params[:language_code]
        type.words = Words.build(params[:words], context: "#{context}[:words]") unless params[:words].nil?
        type.vocabulary_filter_file_uri = params[:vocabulary_filter_file_uri]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVocabularyFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVocabularyFilterOutput, context: context)
        type = Types::CreateVocabularyFilterOutput.new
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.language_code = params[:language_code]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module CreateVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVocabularyInput, context: context)
        type = Types::CreateVocabularyInput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.phrases = Phrases.build(params[:phrases], context: "#{context}[:phrases]") unless params[:phrases].nil?
        type.vocabulary_file_uri = params[:vocabulary_file_uri]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVocabularyOutput, context: context)
        type = Types::CreateVocabularyOutput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.vocabulary_state = params[:vocabulary_state]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module DeleteCallAnalyticsCategoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCallAnalyticsCategoryInput, context: context)
        type = Types::DeleteCallAnalyticsCategoryInput.new
        type.category_name = params[:category_name]
        type
      end
    end

    module DeleteCallAnalyticsCategoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCallAnalyticsCategoryOutput, context: context)
        type = Types::DeleteCallAnalyticsCategoryOutput.new
        type
      end
    end

    module DeleteCallAnalyticsJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCallAnalyticsJobInput, context: context)
        type = Types::DeleteCallAnalyticsJobInput.new
        type.call_analytics_job_name = params[:call_analytics_job_name]
        type
      end
    end

    module DeleteCallAnalyticsJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCallAnalyticsJobOutput, context: context)
        type = Types::DeleteCallAnalyticsJobOutput.new
        type
      end
    end

    module DeleteLanguageModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLanguageModelInput, context: context)
        type = Types::DeleteLanguageModelInput.new
        type.model_name = params[:model_name]
        type
      end
    end

    module DeleteLanguageModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLanguageModelOutput, context: context)
        type = Types::DeleteLanguageModelOutput.new
        type
      end
    end

    module DeleteMedicalTranscriptionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMedicalTranscriptionJobInput, context: context)
        type = Types::DeleteMedicalTranscriptionJobInput.new
        type.medical_transcription_job_name = params[:medical_transcription_job_name]
        type
      end
    end

    module DeleteMedicalTranscriptionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMedicalTranscriptionJobOutput, context: context)
        type = Types::DeleteMedicalTranscriptionJobOutput.new
        type
      end
    end

    module DeleteMedicalVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMedicalVocabularyInput, context: context)
        type = Types::DeleteMedicalVocabularyInput.new
        type.vocabulary_name = params[:vocabulary_name]
        type
      end
    end

    module DeleteMedicalVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMedicalVocabularyOutput, context: context)
        type = Types::DeleteMedicalVocabularyOutput.new
        type
      end
    end

    module DeleteTranscriptionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTranscriptionJobInput, context: context)
        type = Types::DeleteTranscriptionJobInput.new
        type.transcription_job_name = params[:transcription_job_name]
        type
      end
    end

    module DeleteTranscriptionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTranscriptionJobOutput, context: context)
        type = Types::DeleteTranscriptionJobOutput.new
        type
      end
    end

    module DeleteVocabularyFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVocabularyFilterInput, context: context)
        type = Types::DeleteVocabularyFilterInput.new
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type
      end
    end

    module DeleteVocabularyFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVocabularyFilterOutput, context: context)
        type = Types::DeleteVocabularyFilterOutput.new
        type
      end
    end

    module DeleteVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVocabularyInput, context: context)
        type = Types::DeleteVocabularyInput.new
        type.vocabulary_name = params[:vocabulary_name]
        type
      end
    end

    module DeleteVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVocabularyOutput, context: context)
        type = Types::DeleteVocabularyOutput.new
        type
      end
    end

    module DescribeLanguageModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLanguageModelInput, context: context)
        type = Types::DescribeLanguageModelInput.new
        type.model_name = params[:model_name]
        type
      end
    end

    module DescribeLanguageModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLanguageModelOutput, context: context)
        type = Types::DescribeLanguageModelOutput.new
        type.language_model = LanguageModel.build(params[:language_model], context: "#{context}[:language_model]") unless params[:language_model].nil?
        type
      end
    end

    module GetCallAnalyticsCategoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCallAnalyticsCategoryInput, context: context)
        type = Types::GetCallAnalyticsCategoryInput.new
        type.category_name = params[:category_name]
        type
      end
    end

    module GetCallAnalyticsCategoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCallAnalyticsCategoryOutput, context: context)
        type = Types::GetCallAnalyticsCategoryOutput.new
        type.category_properties = CategoryProperties.build(params[:category_properties], context: "#{context}[:category_properties]") unless params[:category_properties].nil?
        type
      end
    end

    module GetCallAnalyticsJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCallAnalyticsJobInput, context: context)
        type = Types::GetCallAnalyticsJobInput.new
        type.call_analytics_job_name = params[:call_analytics_job_name]
        type
      end
    end

    module GetCallAnalyticsJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCallAnalyticsJobOutput, context: context)
        type = Types::GetCallAnalyticsJobOutput.new
        type.call_analytics_job = CallAnalyticsJob.build(params[:call_analytics_job], context: "#{context}[:call_analytics_job]") unless params[:call_analytics_job].nil?
        type
      end
    end

    module GetMedicalTranscriptionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMedicalTranscriptionJobInput, context: context)
        type = Types::GetMedicalTranscriptionJobInput.new
        type.medical_transcription_job_name = params[:medical_transcription_job_name]
        type
      end
    end

    module GetMedicalTranscriptionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMedicalTranscriptionJobOutput, context: context)
        type = Types::GetMedicalTranscriptionJobOutput.new
        type.medical_transcription_job = MedicalTranscriptionJob.build(params[:medical_transcription_job], context: "#{context}[:medical_transcription_job]") unless params[:medical_transcription_job].nil?
        type
      end
    end

    module GetMedicalVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMedicalVocabularyInput, context: context)
        type = Types::GetMedicalVocabularyInput.new
        type.vocabulary_name = params[:vocabulary_name]
        type
      end
    end

    module GetMedicalVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMedicalVocabularyOutput, context: context)
        type = Types::GetMedicalVocabularyOutput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.vocabulary_state = params[:vocabulary_state]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type.download_uri = params[:download_uri]
        type
      end
    end

    module GetTranscriptionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTranscriptionJobInput, context: context)
        type = Types::GetTranscriptionJobInput.new
        type.transcription_job_name = params[:transcription_job_name]
        type
      end
    end

    module GetTranscriptionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTranscriptionJobOutput, context: context)
        type = Types::GetTranscriptionJobOutput.new
        type.transcription_job = TranscriptionJob.build(params[:transcription_job], context: "#{context}[:transcription_job]") unless params[:transcription_job].nil?
        type
      end
    end

    module GetVocabularyFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVocabularyFilterInput, context: context)
        type = Types::GetVocabularyFilterInput.new
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type
      end
    end

    module GetVocabularyFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVocabularyFilterOutput, context: context)
        type = Types::GetVocabularyFilterOutput.new
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.language_code = params[:language_code]
        type.last_modified_time = params[:last_modified_time]
        type.download_uri = params[:download_uri]
        type
      end
    end

    module GetVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVocabularyInput, context: context)
        type = Types::GetVocabularyInput.new
        type.vocabulary_name = params[:vocabulary_name]
        type
      end
    end

    module GetVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVocabularyOutput, context: context)
        type = Types::GetVocabularyOutput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.vocabulary_state = params[:vocabulary_state]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type.download_uri = params[:download_uri]
        type
      end
    end

    module InputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDataConfig, context: context)
        type = Types::InputDataConfig.new
        type.s3_uri = params[:s3_uri]
        type.tuning_data_s3_uri = params[:tuning_data_s3_uri]
        type.data_access_role_arn = params[:data_access_role_arn]
        type
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

    module InterruptionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InterruptionFilter, context: context)
        type = Types::InterruptionFilter.new
        type.threshold = params[:threshold]
        type.participant_role = params[:participant_role]
        type.absolute_time_range = AbsoluteTimeRange.build(params[:absolute_time_range], context: "#{context}[:absolute_time_range]") unless params[:absolute_time_range].nil?
        type.relative_time_range = RelativeTimeRange.build(params[:relative_time_range], context: "#{context}[:relative_time_range]") unless params[:relative_time_range].nil?
        type.negate = params[:negate]
        type
      end
    end

    module JobExecutionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobExecutionSettings, context: context)
        type = Types::JobExecutionSettings.new
        type.allow_deferred_execution = params[:allow_deferred_execution]
        type.data_access_role_arn = params[:data_access_role_arn]
        type
      end
    end

    module KMSEncryptionContextMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LanguageCodeItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LanguageCodeItem, context: context)
        type = Types::LanguageCodeItem.new
        type.language_code = params[:language_code]
        type.duration_in_seconds = params[:duration_in_seconds]
        type
      end
    end

    module LanguageCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LanguageCodeItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LanguageIdSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LanguageIdSettings, context: context)
        type = Types::LanguageIdSettings.new
        type.vocabulary_name = params[:vocabulary_name]
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.language_model_name = params[:language_model_name]
        type
      end
    end

    module LanguageIdSettingsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = LanguageIdSettings.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module LanguageModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LanguageModel, context: context)
        type = Types::LanguageModel.new
        type.model_name = params[:model_name]
        type.create_time = params[:create_time]
        type.last_modified_time = params[:last_modified_time]
        type.language_code = params[:language_code]
        type.base_model_name = params[:base_model_name]
        type.model_status = params[:model_status]
        type.upgrade_availability = params[:upgrade_availability]
        type.failure_reason = params[:failure_reason]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type
      end
    end

    module LanguageOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module ListCallAnalyticsCategoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCallAnalyticsCategoriesInput, context: context)
        type = Types::ListCallAnalyticsCategoriesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCallAnalyticsCategoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCallAnalyticsCategoriesOutput, context: context)
        type = Types::ListCallAnalyticsCategoriesOutput.new
        type.next_token = params[:next_token]
        type.categories = CategoryPropertiesList.build(params[:categories], context: "#{context}[:categories]") unless params[:categories].nil?
        type
      end
    end

    module ListCallAnalyticsJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCallAnalyticsJobsInput, context: context)
        type = Types::ListCallAnalyticsJobsInput.new
        type.status = params[:status]
        type.job_name_contains = params[:job_name_contains]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCallAnalyticsJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCallAnalyticsJobsOutput, context: context)
        type = Types::ListCallAnalyticsJobsOutput.new
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.call_analytics_job_summaries = CallAnalyticsJobSummaries.build(params[:call_analytics_job_summaries], context: "#{context}[:call_analytics_job_summaries]") unless params[:call_analytics_job_summaries].nil?
        type
      end
    end

    module ListLanguageModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLanguageModelsInput, context: context)
        type = Types::ListLanguageModelsInput.new
        type.status_equals = params[:status_equals]
        type.name_contains = params[:name_contains]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLanguageModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLanguageModelsOutput, context: context)
        type = Types::ListLanguageModelsOutput.new
        type.next_token = params[:next_token]
        type.models = Models.build(params[:models], context: "#{context}[:models]") unless params[:models].nil?
        type
      end
    end

    module ListMedicalTranscriptionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMedicalTranscriptionJobsInput, context: context)
        type = Types::ListMedicalTranscriptionJobsInput.new
        type.status = params[:status]
        type.job_name_contains = params[:job_name_contains]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMedicalTranscriptionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMedicalTranscriptionJobsOutput, context: context)
        type = Types::ListMedicalTranscriptionJobsOutput.new
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.medical_transcription_job_summaries = MedicalTranscriptionJobSummaries.build(params[:medical_transcription_job_summaries], context: "#{context}[:medical_transcription_job_summaries]") unless params[:medical_transcription_job_summaries].nil?
        type
      end
    end

    module ListMedicalVocabulariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMedicalVocabulariesInput, context: context)
        type = Types::ListMedicalVocabulariesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.state_equals = params[:state_equals]
        type.name_contains = params[:name_contains]
        type
      end
    end

    module ListMedicalVocabulariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMedicalVocabulariesOutput, context: context)
        type = Types::ListMedicalVocabulariesOutput.new
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.vocabularies = Vocabularies.build(params[:vocabularies], context: "#{context}[:vocabularies]") unless params[:vocabularies].nil?
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
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTranscriptionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTranscriptionJobsInput, context: context)
        type = Types::ListTranscriptionJobsInput.new
        type.status = params[:status]
        type.job_name_contains = params[:job_name_contains]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTranscriptionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTranscriptionJobsOutput, context: context)
        type = Types::ListTranscriptionJobsOutput.new
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.transcription_job_summaries = TranscriptionJobSummaries.build(params[:transcription_job_summaries], context: "#{context}[:transcription_job_summaries]") unless params[:transcription_job_summaries].nil?
        type
      end
    end

    module ListVocabulariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVocabulariesInput, context: context)
        type = Types::ListVocabulariesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.state_equals = params[:state_equals]
        type.name_contains = params[:name_contains]
        type
      end
    end

    module ListVocabulariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVocabulariesOutput, context: context)
        type = Types::ListVocabulariesOutput.new
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.vocabularies = Vocabularies.build(params[:vocabularies], context: "#{context}[:vocabularies]") unless params[:vocabularies].nil?
        type
      end
    end

    module ListVocabularyFiltersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVocabularyFiltersInput, context: context)
        type = Types::ListVocabularyFiltersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type
      end
    end

    module ListVocabularyFiltersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVocabularyFiltersOutput, context: context)
        type = Types::ListVocabularyFiltersOutput.new
        type.next_token = params[:next_token]
        type.vocabulary_filters = VocabularyFilters.build(params[:vocabulary_filters], context: "#{context}[:vocabulary_filters]") unless params[:vocabulary_filters].nil?
        type
      end
    end

    module Media
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Media, context: context)
        type = Types::Media.new
        type.media_file_uri = params[:media_file_uri]
        type.redacted_media_file_uri = params[:redacted_media_file_uri]
        type
      end
    end

    module MedicalTranscript
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalTranscript, context: context)
        type = Types::MedicalTranscript.new
        type.transcript_file_uri = params[:transcript_file_uri]
        type
      end
    end

    module MedicalTranscriptionJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalTranscriptionJob, context: context)
        type = Types::MedicalTranscriptionJob.new
        type.medical_transcription_job_name = params[:medical_transcription_job_name]
        type.transcription_job_status = params[:transcription_job_status]
        type.language_code = params[:language_code]
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz]
        type.media_format = params[:media_format]
        type.media = Media.build(params[:media], context: "#{context}[:media]") unless params[:media].nil?
        type.transcript = MedicalTranscript.build(params[:transcript], context: "#{context}[:transcript]") unless params[:transcript].nil?
        type.start_time = params[:start_time]
        type.creation_time = params[:creation_time]
        type.completion_time = params[:completion_time]
        type.failure_reason = params[:failure_reason]
        type.settings = MedicalTranscriptionSetting.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.content_identification_type = params[:content_identification_type]
        type.specialty = params[:specialty]
        type.type = params[:type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MedicalTranscriptionJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MedicalTranscriptionJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MedicalTranscriptionJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalTranscriptionJobSummary, context: context)
        type = Types::MedicalTranscriptionJobSummary.new
        type.medical_transcription_job_name = params[:medical_transcription_job_name]
        type.creation_time = params[:creation_time]
        type.start_time = params[:start_time]
        type.completion_time = params[:completion_time]
        type.language_code = params[:language_code]
        type.transcription_job_status = params[:transcription_job_status]
        type.failure_reason = params[:failure_reason]
        type.output_location_type = params[:output_location_type]
        type.specialty = params[:specialty]
        type.content_identification_type = params[:content_identification_type]
        type.type = params[:type]
        type
      end
    end

    module MedicalTranscriptionSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalTranscriptionSetting, context: context)
        type = Types::MedicalTranscriptionSetting.new
        type.show_speaker_labels = params[:show_speaker_labels]
        type.max_speaker_labels = params[:max_speaker_labels]
        type.channel_identification = params[:channel_identification]
        type.show_alternatives = params[:show_alternatives]
        type.max_alternatives = params[:max_alternatives]
        type.vocabulary_name = params[:vocabulary_name]
        type
      end
    end

    module ModelSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelSettings, context: context)
        type = Types::ModelSettings.new
        type.language_model_name = params[:language_model_name]
        type
      end
    end

    module Models
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LanguageModel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NonTalkTimeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NonTalkTimeFilter, context: context)
        type = Types::NonTalkTimeFilter.new
        type.threshold = params[:threshold]
        type.absolute_time_range = AbsoluteTimeRange.build(params[:absolute_time_range], context: "#{context}[:absolute_time_range]") unless params[:absolute_time_range].nil?
        type.relative_time_range = RelativeTimeRange.build(params[:relative_time_range], context: "#{context}[:relative_time_range]") unless params[:relative_time_range].nil?
        type.negate = params[:negate]
        type
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

    module Phrases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PiiEntityTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RelativeTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelativeTimeRange, context: context)
        type = Types::RelativeTimeRange.new
        type.start_percentage = params[:start_percentage]
        type.end_percentage = params[:end_percentage]
        type.first = params[:first]
        type.last = params[:last]
        type
      end
    end

    module Rule
      def self.build(params, context: '')
        return params if params.is_a?(Types::Rule)
        Hearth::Validator.validate!(params, ::Hash, Types::Rule, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :non_talk_time_filter
          Types::Rule::NonTalkTimeFilter.new(
            (NonTalkTimeFilter.build(params[:non_talk_time_filter], context: "#{context}[:non_talk_time_filter]") unless params[:non_talk_time_filter].nil?)
          )
        when :interruption_filter
          Types::Rule::InterruptionFilter.new(
            (InterruptionFilter.build(params[:interruption_filter], context: "#{context}[:interruption_filter]") unless params[:interruption_filter].nil?)
          )
        when :transcript_filter
          Types::Rule::TranscriptFilter.new(
            (TranscriptFilter.build(params[:transcript_filter], context: "#{context}[:transcript_filter]") unless params[:transcript_filter].nil?)
          )
        when :sentiment_filter
          Types::Rule::SentimentFilter.new(
            (SentimentFilter.build(params[:sentiment_filter], context: "#{context}[:sentiment_filter]") unless params[:sentiment_filter].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :non_talk_time_filter, :interruption_filter, :transcript_filter, :sentiment_filter set"
        end
      end
    end

    module RuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Rule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SentimentFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SentimentFilter, context: context)
        type = Types::SentimentFilter.new
        type.sentiments = SentimentValueList.build(params[:sentiments], context: "#{context}[:sentiments]") unless params[:sentiments].nil?
        type.absolute_time_range = AbsoluteTimeRange.build(params[:absolute_time_range], context: "#{context}[:absolute_time_range]") unless params[:absolute_time_range].nil?
        type.relative_time_range = RelativeTimeRange.build(params[:relative_time_range], context: "#{context}[:relative_time_range]") unless params[:relative_time_range].nil?
        type.participant_role = params[:participant_role]
        type.negate = params[:negate]
        type
      end
    end

    module SentimentValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Settings, context: context)
        type = Types::Settings.new
        type.vocabulary_name = params[:vocabulary_name]
        type.show_speaker_labels = params[:show_speaker_labels]
        type.max_speaker_labels = params[:max_speaker_labels]
        type.channel_identification = params[:channel_identification]
        type.show_alternatives = params[:show_alternatives]
        type.max_alternatives = params[:max_alternatives]
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.vocabulary_filter_method = params[:vocabulary_filter_method]
        type
      end
    end

    module StartCallAnalyticsJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCallAnalyticsJobInput, context: context)
        type = Types::StartCallAnalyticsJobInput.new
        type.call_analytics_job_name = params[:call_analytics_job_name]
        type.media = Media.build(params[:media], context: "#{context}[:media]") unless params[:media].nil?
        type.output_location = params[:output_location]
        type.output_encryption_kms_key_id = params[:output_encryption_kms_key_id]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.settings = CallAnalyticsJobSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.channel_definitions = ChannelDefinitions.build(params[:channel_definitions], context: "#{context}[:channel_definitions]") unless params[:channel_definitions].nil?
        type
      end
    end

    module StartCallAnalyticsJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCallAnalyticsJobOutput, context: context)
        type = Types::StartCallAnalyticsJobOutput.new
        type.call_analytics_job = CallAnalyticsJob.build(params[:call_analytics_job], context: "#{context}[:call_analytics_job]") unless params[:call_analytics_job].nil?
        type
      end
    end

    module StartMedicalTranscriptionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMedicalTranscriptionJobInput, context: context)
        type = Types::StartMedicalTranscriptionJobInput.new
        type.medical_transcription_job_name = params[:medical_transcription_job_name]
        type.language_code = params[:language_code]
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz]
        type.media_format = params[:media_format]
        type.media = Media.build(params[:media], context: "#{context}[:media]") unless params[:media].nil?
        type.output_bucket_name = params[:output_bucket_name]
        type.output_key = params[:output_key]
        type.output_encryption_kms_key_id = params[:output_encryption_kms_key_id]
        type.kms_encryption_context = KMSEncryptionContextMap.build(params[:kms_encryption_context], context: "#{context}[:kms_encryption_context]") unless params[:kms_encryption_context].nil?
        type.settings = MedicalTranscriptionSetting.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.content_identification_type = params[:content_identification_type]
        type.specialty = params[:specialty]
        type.type = params[:type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartMedicalTranscriptionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMedicalTranscriptionJobOutput, context: context)
        type = Types::StartMedicalTranscriptionJobOutput.new
        type.medical_transcription_job = MedicalTranscriptionJob.build(params[:medical_transcription_job], context: "#{context}[:medical_transcription_job]") unless params[:medical_transcription_job].nil?
        type
      end
    end

    module StartTranscriptionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTranscriptionJobInput, context: context)
        type = Types::StartTranscriptionJobInput.new
        type.transcription_job_name = params[:transcription_job_name]
        type.language_code = params[:language_code]
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz]
        type.media_format = params[:media_format]
        type.media = Media.build(params[:media], context: "#{context}[:media]") unless params[:media].nil?
        type.output_bucket_name = params[:output_bucket_name]
        type.output_key = params[:output_key]
        type.output_encryption_kms_key_id = params[:output_encryption_kms_key_id]
        type.kms_encryption_context = KMSEncryptionContextMap.build(params[:kms_encryption_context], context: "#{context}[:kms_encryption_context]") unless params[:kms_encryption_context].nil?
        type.settings = Settings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.model_settings = ModelSettings.build(params[:model_settings], context: "#{context}[:model_settings]") unless params[:model_settings].nil?
        type.job_execution_settings = JobExecutionSettings.build(params[:job_execution_settings], context: "#{context}[:job_execution_settings]") unless params[:job_execution_settings].nil?
        type.content_redaction = ContentRedaction.build(params[:content_redaction], context: "#{context}[:content_redaction]") unless params[:content_redaction].nil?
        type.identify_language = params[:identify_language]
        type.identify_multiple_languages = params[:identify_multiple_languages]
        type.language_options = LanguageOptions.build(params[:language_options], context: "#{context}[:language_options]") unless params[:language_options].nil?
        type.subtitles = Subtitles.build(params[:subtitles], context: "#{context}[:subtitles]") unless params[:subtitles].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.language_id_settings = LanguageIdSettingsMap.build(params[:language_id_settings], context: "#{context}[:language_id_settings]") unless params[:language_id_settings].nil?
        type
      end
    end

    module StartTranscriptionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTranscriptionJobOutput, context: context)
        type = Types::StartTranscriptionJobOutput.new
        type.transcription_job = TranscriptionJob.build(params[:transcription_job], context: "#{context}[:transcription_job]") unless params[:transcription_job].nil?
        type
      end
    end

    module StringTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubtitleFileUris
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubtitleFormats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Subtitles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subtitles, context: context)
        type = Types::Subtitles.new
        type.formats = SubtitleFormats.build(params[:formats], context: "#{context}[:formats]") unless params[:formats].nil?
        type.output_start_index = params[:output_start_index]
        type
      end
    end

    module SubtitlesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubtitlesOutput, context: context)
        type = Types::SubtitlesOutput.new
        type.formats = SubtitleFormats.build(params[:formats], context: "#{context}[:formats]") unless params[:formats].nil?
        type.subtitle_file_uris = SubtitleFileUris.build(params[:subtitle_file_uris], context: "#{context}[:subtitle_file_uris]") unless params[:subtitle_file_uris].nil?
        type.output_start_index = params[:output_start_index]
        type
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

    module Transcript
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Transcript, context: context)
        type = Types::Transcript.new
        type.transcript_file_uri = params[:transcript_file_uri]
        type.redacted_transcript_file_uri = params[:redacted_transcript_file_uri]
        type
      end
    end

    module TranscriptFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptFilter, context: context)
        type = Types::TranscriptFilter.new
        type.transcript_filter_type = params[:transcript_filter_type]
        type.absolute_time_range = AbsoluteTimeRange.build(params[:absolute_time_range], context: "#{context}[:absolute_time_range]") unless params[:absolute_time_range].nil?
        type.relative_time_range = RelativeTimeRange.build(params[:relative_time_range], context: "#{context}[:relative_time_range]") unless params[:relative_time_range].nil?
        type.participant_role = params[:participant_role]
        type.negate = params[:negate]
        type.targets = StringTargetList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type
      end
    end

    module TranscriptionJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptionJob, context: context)
        type = Types::TranscriptionJob.new
        type.transcription_job_name = params[:transcription_job_name]
        type.transcription_job_status = params[:transcription_job_status]
        type.language_code = params[:language_code]
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz]
        type.media_format = params[:media_format]
        type.media = Media.build(params[:media], context: "#{context}[:media]") unless params[:media].nil?
        type.transcript = Transcript.build(params[:transcript], context: "#{context}[:transcript]") unless params[:transcript].nil?
        type.start_time = params[:start_time]
        type.creation_time = params[:creation_time]
        type.completion_time = params[:completion_time]
        type.failure_reason = params[:failure_reason]
        type.settings = Settings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.model_settings = ModelSettings.build(params[:model_settings], context: "#{context}[:model_settings]") unless params[:model_settings].nil?
        type.job_execution_settings = JobExecutionSettings.build(params[:job_execution_settings], context: "#{context}[:job_execution_settings]") unless params[:job_execution_settings].nil?
        type.content_redaction = ContentRedaction.build(params[:content_redaction], context: "#{context}[:content_redaction]") unless params[:content_redaction].nil?
        type.identify_language = params[:identify_language]
        type.identify_multiple_languages = params[:identify_multiple_languages]
        type.language_options = LanguageOptions.build(params[:language_options], context: "#{context}[:language_options]") unless params[:language_options].nil?
        type.identified_language_score = params[:identified_language_score]
        type.language_codes = LanguageCodeList.build(params[:language_codes], context: "#{context}[:language_codes]") unless params[:language_codes].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.subtitles = SubtitlesOutput.build(params[:subtitles], context: "#{context}[:subtitles]") unless params[:subtitles].nil?
        type.language_id_settings = LanguageIdSettingsMap.build(params[:language_id_settings], context: "#{context}[:language_id_settings]") unless params[:language_id_settings].nil?
        type
      end
    end

    module TranscriptionJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TranscriptionJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TranscriptionJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptionJobSummary, context: context)
        type = Types::TranscriptionJobSummary.new
        type.transcription_job_name = params[:transcription_job_name]
        type.creation_time = params[:creation_time]
        type.start_time = params[:start_time]
        type.completion_time = params[:completion_time]
        type.language_code = params[:language_code]
        type.transcription_job_status = params[:transcription_job_status]
        type.failure_reason = params[:failure_reason]
        type.output_location_type = params[:output_location_type]
        type.content_redaction = ContentRedaction.build(params[:content_redaction], context: "#{context}[:content_redaction]") unless params[:content_redaction].nil?
        type.model_settings = ModelSettings.build(params[:model_settings], context: "#{context}[:model_settings]") unless params[:model_settings].nil?
        type.identify_language = params[:identify_language]
        type.identify_multiple_languages = params[:identify_multiple_languages]
        type.identified_language_score = params[:identified_language_score]
        type.language_codes = LanguageCodeList.build(params[:language_codes], context: "#{context}[:language_codes]") unless params[:language_codes].nil?
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

    module UpdateCallAnalyticsCategoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCallAnalyticsCategoryInput, context: context)
        type = Types::UpdateCallAnalyticsCategoryInput.new
        type.category_name = params[:category_name]
        type.rules = RuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module UpdateCallAnalyticsCategoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCallAnalyticsCategoryOutput, context: context)
        type = Types::UpdateCallAnalyticsCategoryOutput.new
        type.category_properties = CategoryProperties.build(params[:category_properties], context: "#{context}[:category_properties]") unless params[:category_properties].nil?
        type
      end
    end

    module UpdateMedicalVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMedicalVocabularyInput, context: context)
        type = Types::UpdateMedicalVocabularyInput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.vocabulary_file_uri = params[:vocabulary_file_uri]
        type
      end
    end

    module UpdateMedicalVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMedicalVocabularyOutput, context: context)
        type = Types::UpdateMedicalVocabularyOutput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.last_modified_time = params[:last_modified_time]
        type.vocabulary_state = params[:vocabulary_state]
        type
      end
    end

    module UpdateVocabularyFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVocabularyFilterInput, context: context)
        type = Types::UpdateVocabularyFilterInput.new
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.words = Words.build(params[:words], context: "#{context}[:words]") unless params[:words].nil?
        type.vocabulary_filter_file_uri = params[:vocabulary_filter_file_uri]
        type
      end
    end

    module UpdateVocabularyFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVocabularyFilterOutput, context: context)
        type = Types::UpdateVocabularyFilterOutput.new
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.language_code = params[:language_code]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module UpdateVocabularyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVocabularyInput, context: context)
        type = Types::UpdateVocabularyInput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.phrases = Phrases.build(params[:phrases], context: "#{context}[:phrases]") unless params[:phrases].nil?
        type.vocabulary_file_uri = params[:vocabulary_file_uri]
        type
      end
    end

    module UpdateVocabularyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVocabularyOutput, context: context)
        type = Types::UpdateVocabularyOutput.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.last_modified_time = params[:last_modified_time]
        type.vocabulary_state = params[:vocabulary_state]
        type
      end
    end

    module Vocabularies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VocabularyInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VocabularyFilterInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VocabularyFilterInfo, context: context)
        type = Types::VocabularyFilterInfo.new
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.language_code = params[:language_code]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module VocabularyFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VocabularyFilterInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VocabularyInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VocabularyInfo, context: context)
        type = Types::VocabularyInfo.new
        type.vocabulary_name = params[:vocabulary_name]
        type.language_code = params[:language_code]
        type.last_modified_time = params[:last_modified_time]
        type.vocabulary_state = params[:vocabulary_state]
        type
      end
    end

    module Words
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
