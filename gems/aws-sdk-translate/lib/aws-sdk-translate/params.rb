# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Translate
  module Params

    module AppliedTerminology
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppliedTerminology, context: context)
        type = Types::AppliedTerminology.new
        type.name = params[:name]
        type.terms = TermList.build(params[:terms], context: "#{context}[:terms]") unless params[:terms].nil?
        type
      end
    end

    module AppliedTerminologyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppliedTerminology.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
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

    module CreateParallelDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateParallelDataInput, context: context)
        type = Types::CreateParallelDataInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.parallel_data_config = ParallelDataConfig.build(params[:parallel_data_config], context: "#{context}[:parallel_data_config]") unless params[:parallel_data_config].nil?
        type.encryption_key = EncryptionKey.build(params[:encryption_key], context: "#{context}[:encryption_key]") unless params[:encryption_key].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateParallelDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateParallelDataOutput, context: context)
        type = Types::CreateParallelDataOutput.new
        type.name = params[:name]
        type.status = params[:status]
        type
      end
    end

    module DeleteParallelDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParallelDataInput, context: context)
        type = Types::DeleteParallelDataInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteParallelDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParallelDataOutput, context: context)
        type = Types::DeleteParallelDataOutput.new
        type.name = params[:name]
        type.status = params[:status]
        type
      end
    end

    module DeleteTerminologyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTerminologyInput, context: context)
        type = Types::DeleteTerminologyInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteTerminologyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTerminologyOutput, context: context)
        type = Types::DeleteTerminologyOutput.new
        type
      end
    end

    module DescribeTextTranslationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTextTranslationJobInput, context: context)
        type = Types::DescribeTextTranslationJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeTextTranslationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTextTranslationJobOutput, context: context)
        type = Types::DescribeTextTranslationJobOutput.new
        type.text_translation_job_properties = TextTranslationJobProperties.build(params[:text_translation_job_properties], context: "#{context}[:text_translation_job_properties]") unless params[:text_translation_job_properties].nil?
        type
      end
    end

    module DetectedLanguageLowConfidenceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectedLanguageLowConfidenceException, context: context)
        type = Types::DetectedLanguageLowConfidenceException.new
        type.message = params[:message]
        type.detected_language_code = params[:detected_language_code]
        type
      end
    end

    module EncryptionKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionKey, context: context)
        type = Types::EncryptionKey.new
        type.type = params[:type]
        type.id = params[:id]
        type
      end
    end

    module GetParallelDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParallelDataInput, context: context)
        type = Types::GetParallelDataInput.new
        type.name = params[:name]
        type
      end
    end

    module GetParallelDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParallelDataOutput, context: context)
        type = Types::GetParallelDataOutput.new
        type.parallel_data_properties = ParallelDataProperties.build(params[:parallel_data_properties], context: "#{context}[:parallel_data_properties]") unless params[:parallel_data_properties].nil?
        type.data_location = ParallelDataDataLocation.build(params[:data_location], context: "#{context}[:data_location]") unless params[:data_location].nil?
        type.auxiliary_data_location = ParallelDataDataLocation.build(params[:auxiliary_data_location], context: "#{context}[:auxiliary_data_location]") unless params[:auxiliary_data_location].nil?
        type.latest_update_attempt_auxiliary_data_location = ParallelDataDataLocation.build(params[:latest_update_attempt_auxiliary_data_location], context: "#{context}[:latest_update_attempt_auxiliary_data_location]") unless params[:latest_update_attempt_auxiliary_data_location].nil?
        type
      end
    end

    module GetTerminologyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTerminologyInput, context: context)
        type = Types::GetTerminologyInput.new
        type.name = params[:name]
        type.terminology_data_format = params[:terminology_data_format]
        type
      end
    end

    module GetTerminologyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTerminologyOutput, context: context)
        type = Types::GetTerminologyOutput.new
        type.terminology_properties = TerminologyProperties.build(params[:terminology_properties], context: "#{context}[:terminology_properties]") unless params[:terminology_properties].nil?
        type.terminology_data_location = TerminologyDataLocation.build(params[:terminology_data_location], context: "#{context}[:terminology_data_location]") unless params[:terminology_data_location].nil?
        type.auxiliary_data_location = TerminologyDataLocation.build(params[:auxiliary_data_location], context: "#{context}[:auxiliary_data_location]") unless params[:auxiliary_data_location].nil?
        type
      end
    end

    module ImportTerminologyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportTerminologyInput, context: context)
        type = Types::ImportTerminologyInput.new
        type.name = params[:name]
        type.merge_strategy = params[:merge_strategy]
        type.description = params[:description]
        type.terminology_data = TerminologyData.build(params[:terminology_data], context: "#{context}[:terminology_data]") unless params[:terminology_data].nil?
        type.encryption_key = EncryptionKey.build(params[:encryption_key], context: "#{context}[:encryption_key]") unless params[:encryption_key].nil?
        type
      end
    end

    module ImportTerminologyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportTerminologyOutput, context: context)
        type = Types::ImportTerminologyOutput.new
        type.terminology_properties = TerminologyProperties.build(params[:terminology_properties], context: "#{context}[:terminology_properties]") unless params[:terminology_properties].nil?
        type.auxiliary_data_location = TerminologyDataLocation.build(params[:auxiliary_data_location], context: "#{context}[:auxiliary_data_location]") unless params[:auxiliary_data_location].nil?
        type
      end
    end

    module InputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDataConfig, context: context)
        type = Types::InputDataConfig.new
        type.s3_uri = params[:s3_uri]
        type.content_type = params[:content_type]
        type
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

    module InvalidFilterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFilterException, context: context)
        type = Types::InvalidFilterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module JobDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobDetails, context: context)
        type = Types::JobDetails.new
        type.translated_documents_count = params[:translated_documents_count]
        type.documents_with_errors_count = params[:documents_with_errors_count]
        type.input_documents_count = params[:input_documents_count]
        type
      end
    end

    module LanguageCodeStringList
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

    module ListParallelDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListParallelDataInput, context: context)
        type = Types::ListParallelDataInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListParallelDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListParallelDataOutput, context: context)
        type = Types::ListParallelDataOutput.new
        type.parallel_data_properties_list = ParallelDataPropertiesList.build(params[:parallel_data_properties_list], context: "#{context}[:parallel_data_properties_list]") unless params[:parallel_data_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTerminologiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTerminologiesInput, context: context)
        type = Types::ListTerminologiesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTerminologiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTerminologiesOutput, context: context)
        type = Types::ListTerminologiesOutput.new
        type.terminology_properties_list = TerminologyPropertiesList.build(params[:terminology_properties_list], context: "#{context}[:terminology_properties_list]") unless params[:terminology_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTextTranslationJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTextTranslationJobsInput, context: context)
        type = Types::ListTextTranslationJobsInput.new
        type.filter = TextTranslationJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTextTranslationJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTextTranslationJobsOutput, context: context)
        type = Types::ListTextTranslationJobsOutput.new
        type.text_translation_job_properties_list = TextTranslationJobPropertiesList.build(params[:text_translation_job_properties_list], context: "#{context}[:text_translation_job_properties_list]") unless params[:text_translation_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module OutputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDataConfig, context: context)
        type = Types::OutputDataConfig.new
        type.s3_uri = params[:s3_uri]
        type.encryption_key = EncryptionKey.build(params[:encryption_key], context: "#{context}[:encryption_key]") unless params[:encryption_key].nil?
        type
      end
    end

    module ParallelDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParallelDataConfig, context: context)
        type = Types::ParallelDataConfig.new
        type.s3_uri = params[:s3_uri]
        type.format = params[:format]
        type
      end
    end

    module ParallelDataDataLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParallelDataDataLocation, context: context)
        type = Types::ParallelDataDataLocation.new
        type.repository_type = params[:repository_type]
        type.location = params[:location]
        type
      end
    end

    module ParallelDataProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParallelDataProperties, context: context)
        type = Types::ParallelDataProperties.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.status = params[:status]
        type.source_language_code = params[:source_language_code]
        type.target_language_codes = LanguageCodeStringList.build(params[:target_language_codes], context: "#{context}[:target_language_codes]") unless params[:target_language_codes].nil?
        type.parallel_data_config = ParallelDataConfig.build(params[:parallel_data_config], context: "#{context}[:parallel_data_config]") unless params[:parallel_data_config].nil?
        type.message = params[:message]
        type.imported_data_size = params[:imported_data_size]
        type.imported_record_count = params[:imported_record_count]
        type.failed_record_count = params[:failed_record_count]
        type.skipped_record_count = params[:skipped_record_count]
        type.encryption_key = EncryptionKey.build(params[:encryption_key], context: "#{context}[:encryption_key]") unless params[:encryption_key].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.latest_update_attempt_status = params[:latest_update_attempt_status]
        type.latest_update_attempt_at = params[:latest_update_attempt_at]
        type
      end
    end

    module ParallelDataPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParallelDataProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module StartTextTranslationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTextTranslationJobInput, context: context)
        type = Types::StartTextTranslationJobInput.new
        type.job_name = params[:job_name]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.source_language_code = params[:source_language_code]
        type.target_language_codes = TargetLanguageCodeStringList.build(params[:target_language_codes], context: "#{context}[:target_language_codes]") unless params[:target_language_codes].nil?
        type.terminology_names = ResourceNameList.build(params[:terminology_names], context: "#{context}[:terminology_names]") unless params[:terminology_names].nil?
        type.parallel_data_names = ResourceNameList.build(params[:parallel_data_names], context: "#{context}[:parallel_data_names]") unless params[:parallel_data_names].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.settings = TranslationSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module StartTextTranslationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTextTranslationJobOutput, context: context)
        type = Types::StartTextTranslationJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module StopTextTranslationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTextTranslationJobInput, context: context)
        type = Types::StopTextTranslationJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopTextTranslationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTextTranslationJobOutput, context: context)
        type = Types::StopTextTranslationJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module TargetLanguageCodeStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Term
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Term, context: context)
        type = Types::Term.new
        type.source_text = params[:source_text]
        type.target_text = params[:target_text]
        type
      end
    end

    module TermList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Term.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TerminologyData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminologyData, context: context)
        type = Types::TerminologyData.new
        type.file = params[:file]
        type.format = params[:format]
        type.directionality = params[:directionality]
        type
      end
    end

    module TerminologyDataLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminologyDataLocation, context: context)
        type = Types::TerminologyDataLocation.new
        type.repository_type = params[:repository_type]
        type.location = params[:location]
        type
      end
    end

    module TerminologyProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminologyProperties, context: context)
        type = Types::TerminologyProperties.new
        type.name = params[:name]
        type.description = params[:description]
        type.arn = params[:arn]
        type.source_language_code = params[:source_language_code]
        type.target_language_codes = LanguageCodeStringList.build(params[:target_language_codes], context: "#{context}[:target_language_codes]") unless params[:target_language_codes].nil?
        type.encryption_key = EncryptionKey.build(params[:encryption_key], context: "#{context}[:encryption_key]") unless params[:encryption_key].nil?
        type.size_bytes = params[:size_bytes]
        type.term_count = params[:term_count]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.directionality = params[:directionality]
        type.message = params[:message]
        type.skipped_term_count = params[:skipped_term_count]
        type.format = params[:format]
        type
      end
    end

    module TerminologyPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TerminologyProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TextSizeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextSizeLimitExceededException, context: context)
        type = Types::TextSizeLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TextTranslationJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextTranslationJobFilter, context: context)
        type = Types::TextTranslationJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submitted_before_time = params[:submitted_before_time]
        type.submitted_after_time = params[:submitted_after_time]
        type
      end
    end

    module TextTranslationJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextTranslationJobProperties, context: context)
        type = Types::TextTranslationJobProperties.new
        type.job_id = params[:job_id]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.job_details = JobDetails.build(params[:job_details], context: "#{context}[:job_details]") unless params[:job_details].nil?
        type.source_language_code = params[:source_language_code]
        type.target_language_codes = TargetLanguageCodeStringList.build(params[:target_language_codes], context: "#{context}[:target_language_codes]") unless params[:target_language_codes].nil?
        type.terminology_names = ResourceNameList.build(params[:terminology_names], context: "#{context}[:terminology_names]") unless params[:terminology_names].nil?
        type.parallel_data_names = ResourceNameList.build(params[:parallel_data_names], context: "#{context}[:parallel_data_names]") unless params[:parallel_data_names].nil?
        type.message = params[:message]
        type.submitted_time = params[:submitted_time]
        type.end_time = params[:end_time]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.settings = TranslationSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module TextTranslationJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TextTranslationJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module TranslateTextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranslateTextInput, context: context)
        type = Types::TranslateTextInput.new
        type.text = params[:text]
        type.terminology_names = ResourceNameList.build(params[:terminology_names], context: "#{context}[:terminology_names]") unless params[:terminology_names].nil?
        type.source_language_code = params[:source_language_code]
        type.target_language_code = params[:target_language_code]
        type.settings = TranslationSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module TranslateTextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranslateTextOutput, context: context)
        type = Types::TranslateTextOutput.new
        type.translated_text = params[:translated_text]
        type.source_language_code = params[:source_language_code]
        type.target_language_code = params[:target_language_code]
        type.applied_terminologies = AppliedTerminologyList.build(params[:applied_terminologies], context: "#{context}[:applied_terminologies]") unless params[:applied_terminologies].nil?
        type.applied_settings = TranslationSettings.build(params[:applied_settings], context: "#{context}[:applied_settings]") unless params[:applied_settings].nil?
        type
      end
    end

    module TranslationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranslationSettings, context: context)
        type = Types::TranslationSettings.new
        type.formality = params[:formality]
        type.profanity = params[:profanity]
        type
      end
    end

    module UnsupportedLanguagePairException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedLanguagePairException, context: context)
        type = Types::UnsupportedLanguagePairException.new
        type.message = params[:message]
        type.source_language_code = params[:source_language_code]
        type.target_language_code = params[:target_language_code]
        type
      end
    end

    module UpdateParallelDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateParallelDataInput, context: context)
        type = Types::UpdateParallelDataInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.parallel_data_config = ParallelDataConfig.build(params[:parallel_data_config], context: "#{context}[:parallel_data_config]") unless params[:parallel_data_config].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateParallelDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateParallelDataOutput, context: context)
        type = Types::UpdateParallelDataOutput.new
        type.name = params[:name]
        type.status = params[:status]
        type.latest_update_attempt_status = params[:latest_update_attempt_status]
        type.latest_update_attempt_at = params[:latest_update_attempt_at]
        type
      end
    end

  end
end
