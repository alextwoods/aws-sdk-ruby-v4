# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Translate
  module Validators

    class AppliedTerminology
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppliedTerminology, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TermList.validate!(input[:terms], context: "#{context}[:terms]") unless input[:terms].nil?
      end
    end

    class AppliedTerminologyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppliedTerminology.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateParallelDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateParallelDataInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ParallelDataConfig.validate!(input[:parallel_data_config], context: "#{context}[:parallel_data_config]") unless input[:parallel_data_config].nil?
        EncryptionKey.validate!(input[:encryption_key], context: "#{context}[:encryption_key]") unless input[:encryption_key].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateParallelDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateParallelDataOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteParallelDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParallelDataInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteParallelDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParallelDataOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteTerminologyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTerminologyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteTerminologyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTerminologyOutput, context: context)
      end
    end

    class DescribeTextTranslationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTextTranslationJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeTextTranslationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTextTranslationJobOutput, context: context)
        TextTranslationJobProperties.validate!(input[:text_translation_job_properties], context: "#{context}[:text_translation_job_properties]") unless input[:text_translation_job_properties].nil?
      end
    end

    class DetectedLanguageLowConfidenceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectedLanguageLowConfidenceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:detected_language_code], ::String, context: "#{context}[:detected_language_code]")
      end
    end

    class EncryptionKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionKey, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetParallelDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParallelDataInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetParallelDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParallelDataOutput, context: context)
        ParallelDataProperties.validate!(input[:parallel_data_properties], context: "#{context}[:parallel_data_properties]") unless input[:parallel_data_properties].nil?
        ParallelDataDataLocation.validate!(input[:data_location], context: "#{context}[:data_location]") unless input[:data_location].nil?
        ParallelDataDataLocation.validate!(input[:auxiliary_data_location], context: "#{context}[:auxiliary_data_location]") unless input[:auxiliary_data_location].nil?
        ParallelDataDataLocation.validate!(input[:latest_update_attempt_auxiliary_data_location], context: "#{context}[:latest_update_attempt_auxiliary_data_location]") unless input[:latest_update_attempt_auxiliary_data_location].nil?
      end
    end

    class GetTerminologyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTerminologyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:terminology_data_format], ::String, context: "#{context}[:terminology_data_format]")
      end
    end

    class GetTerminologyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTerminologyOutput, context: context)
        TerminologyProperties.validate!(input[:terminology_properties], context: "#{context}[:terminology_properties]") unless input[:terminology_properties].nil?
        TerminologyDataLocation.validate!(input[:terminology_data_location], context: "#{context}[:terminology_data_location]") unless input[:terminology_data_location].nil?
        TerminologyDataLocation.validate!(input[:auxiliary_data_location], context: "#{context}[:auxiliary_data_location]") unless input[:auxiliary_data_location].nil?
      end
    end

    class ImportTerminologyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportTerminologyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:merge_strategy], ::String, context: "#{context}[:merge_strategy]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TerminologyData.validate!(input[:terminology_data], context: "#{context}[:terminology_data]") unless input[:terminology_data].nil?
        EncryptionKey.validate!(input[:encryption_key], context: "#{context}[:encryption_key]") unless input[:encryption_key].nil?
      end
    end

    class ImportTerminologyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportTerminologyOutput, context: context)
        TerminologyProperties.validate!(input[:terminology_properties], context: "#{context}[:terminology_properties]") unless input[:terminology_properties].nil?
        TerminologyDataLocation.validate!(input[:auxiliary_data_location], context: "#{context}[:auxiliary_data_location]") unless input[:auxiliary_data_location].nil?
      end
    end

    class InputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFilterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFilterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobDetails, context: context)
        Hearth::Validator.validate!(input[:translated_documents_count], ::Integer, context: "#{context}[:translated_documents_count]")
        Hearth::Validator.validate!(input[:documents_with_errors_count], ::Integer, context: "#{context}[:documents_with_errors_count]")
        Hearth::Validator.validate!(input[:input_documents_count], ::Integer, context: "#{context}[:input_documents_count]")
      end
    end

    class LanguageCodeStringList
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

    class ListParallelDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListParallelDataInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListParallelDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListParallelDataOutput, context: context)
        ParallelDataPropertiesList.validate!(input[:parallel_data_properties_list], context: "#{context}[:parallel_data_properties_list]") unless input[:parallel_data_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTerminologiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTerminologiesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTerminologiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTerminologiesOutput, context: context)
        TerminologyPropertiesList.validate!(input[:terminology_properties_list], context: "#{context}[:terminology_properties_list]") unless input[:terminology_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTextTranslationJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTextTranslationJobsInput, context: context)
        TextTranslationJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTextTranslationJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTextTranslationJobsOutput, context: context)
        TextTranslationJobPropertiesList.validate!(input[:text_translation_job_properties_list], context: "#{context}[:text_translation_job_properties_list]") unless input[:text_translation_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class OutputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        EncryptionKey.validate!(input[:encryption_key], context: "#{context}[:encryption_key]") unless input[:encryption_key].nil?
      end
    end

    class ParallelDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParallelDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class ParallelDataDataLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParallelDataDataLocation, context: context)
        Hearth::Validator.validate!(input[:repository_type], ::String, context: "#{context}[:repository_type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class ParallelDataProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParallelDataProperties, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:source_language_code], ::String, context: "#{context}[:source_language_code]")
        LanguageCodeStringList.validate!(input[:target_language_codes], context: "#{context}[:target_language_codes]") unless input[:target_language_codes].nil?
        ParallelDataConfig.validate!(input[:parallel_data_config], context: "#{context}[:parallel_data_config]") unless input[:parallel_data_config].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:imported_data_size], ::Integer, context: "#{context}[:imported_data_size]")
        Hearth::Validator.validate!(input[:imported_record_count], ::Integer, context: "#{context}[:imported_record_count]")
        Hearth::Validator.validate!(input[:failed_record_count], ::Integer, context: "#{context}[:failed_record_count]")
        Hearth::Validator.validate!(input[:skipped_record_count], ::Integer, context: "#{context}[:skipped_record_count]")
        EncryptionKey.validate!(input[:encryption_key], context: "#{context}[:encryption_key]") unless input[:encryption_key].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:latest_update_attempt_status], ::String, context: "#{context}[:latest_update_attempt_status]")
        Hearth::Validator.validate!(input[:latest_update_attempt_at], ::Time, context: "#{context}[:latest_update_attempt_at]")
      end
    end

    class ParallelDataPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParallelDataProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartTextTranslationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTextTranslationJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:source_language_code], ::String, context: "#{context}[:source_language_code]")
        TargetLanguageCodeStringList.validate!(input[:target_language_codes], context: "#{context}[:target_language_codes]") unless input[:target_language_codes].nil?
        ResourceNameList.validate!(input[:terminology_names], context: "#{context}[:terminology_names]") unless input[:terminology_names].nil?
        ResourceNameList.validate!(input[:parallel_data_names], context: "#{context}[:parallel_data_names]") unless input[:parallel_data_names].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TranslationSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class StartTextTranslationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTextTranslationJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StopTextTranslationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTextTranslationJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopTextTranslationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTextTranslationJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class TargetLanguageCodeStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Term
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Term, context: context)
        Hearth::Validator.validate!(input[:source_text], ::String, context: "#{context}[:source_text]")
        Hearth::Validator.validate!(input[:target_text], ::String, context: "#{context}[:target_text]")
      end
    end

    class TermList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Term.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TerminologyData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminologyData, context: context)
        Hearth::Validator.validate!(input[:file], ::String, context: "#{context}[:file]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:directionality], ::String, context: "#{context}[:directionality]")
      end
    end

    class TerminologyDataLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminologyDataLocation, context: context)
        Hearth::Validator.validate!(input[:repository_type], ::String, context: "#{context}[:repository_type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class TerminologyProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminologyProperties, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:source_language_code], ::String, context: "#{context}[:source_language_code]")
        LanguageCodeStringList.validate!(input[:target_language_codes], context: "#{context}[:target_language_codes]") unless input[:target_language_codes].nil?
        EncryptionKey.validate!(input[:encryption_key], context: "#{context}[:encryption_key]") unless input[:encryption_key].nil?
        Hearth::Validator.validate!(input[:size_bytes], ::Integer, context: "#{context}[:size_bytes]")
        Hearth::Validator.validate!(input[:term_count], ::Integer, context: "#{context}[:term_count]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:directionality], ::String, context: "#{context}[:directionality]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:skipped_term_count], ::Integer, context: "#{context}[:skipped_term_count]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class TerminologyPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TerminologyProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TextSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TextTranslationJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextTranslationJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submitted_before_time], ::Time, context: "#{context}[:submitted_before_time]")
        Hearth::Validator.validate!(input[:submitted_after_time], ::Time, context: "#{context}[:submitted_after_time]")
      end
    end

    class TextTranslationJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextTranslationJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        JobDetails.validate!(input[:job_details], context: "#{context}[:job_details]") unless input[:job_details].nil?
        Hearth::Validator.validate!(input[:source_language_code], ::String, context: "#{context}[:source_language_code]")
        TargetLanguageCodeStringList.validate!(input[:target_language_codes], context: "#{context}[:target_language_codes]") unless input[:target_language_codes].nil?
        ResourceNameList.validate!(input[:terminology_names], context: "#{context}[:terminology_names]") unless input[:terminology_names].nil?
        ResourceNameList.validate!(input[:parallel_data_names], context: "#{context}[:parallel_data_names]") unless input[:parallel_data_names].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submitted_time], ::Time, context: "#{context}[:submitted_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        TranslationSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class TextTranslationJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TextTranslationJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TranslateTextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranslateTextInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        ResourceNameList.validate!(input[:terminology_names], context: "#{context}[:terminology_names]") unless input[:terminology_names].nil?
        Hearth::Validator.validate!(input[:source_language_code], ::String, context: "#{context}[:source_language_code]")
        Hearth::Validator.validate!(input[:target_language_code], ::String, context: "#{context}[:target_language_code]")
        TranslationSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class TranslateTextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranslateTextOutput, context: context)
        Hearth::Validator.validate!(input[:translated_text], ::String, context: "#{context}[:translated_text]")
        Hearth::Validator.validate!(input[:source_language_code], ::String, context: "#{context}[:source_language_code]")
        Hearth::Validator.validate!(input[:target_language_code], ::String, context: "#{context}[:target_language_code]")
        AppliedTerminologyList.validate!(input[:applied_terminologies], context: "#{context}[:applied_terminologies]") unless input[:applied_terminologies].nil?
        TranslationSettings.validate!(input[:applied_settings], context: "#{context}[:applied_settings]") unless input[:applied_settings].nil?
      end
    end

    class TranslationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranslationSettings, context: context)
        Hearth::Validator.validate!(input[:formality], ::String, context: "#{context}[:formality]")
        Hearth::Validator.validate!(input[:profanity], ::String, context: "#{context}[:profanity]")
      end
    end

    class UnsupportedLanguagePairException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedLanguagePairException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:source_language_code], ::String, context: "#{context}[:source_language_code]")
        Hearth::Validator.validate!(input[:target_language_code], ::String, context: "#{context}[:target_language_code]")
      end
    end

    class UpdateParallelDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateParallelDataInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ParallelDataConfig.validate!(input[:parallel_data_config], context: "#{context}[:parallel_data_config]") unless input[:parallel_data_config].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateParallelDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateParallelDataOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:latest_update_attempt_status], ::String, context: "#{context}[:latest_update_attempt_status]")
        Hearth::Validator.validate!(input[:latest_update_attempt_at], ::Time, context: "#{context}[:latest_update_attempt_at]")
      end
    end

  end
end
