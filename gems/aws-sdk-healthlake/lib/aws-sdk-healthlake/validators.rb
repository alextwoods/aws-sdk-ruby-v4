# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::HealthLake
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateFHIRDatastoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFHIRDatastoreInput, context: context)
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
        Hearth::Validator.validate!(input[:datastore_type_version], ::String, context: "#{context}[:datastore_type_version]")
        SseConfiguration.validate!(input[:sse_configuration], context: "#{context}[:sse_configuration]") unless input[:sse_configuration].nil?
        PreloadDataConfig.validate!(input[:preload_data_config], context: "#{context}[:preload_data_config]") unless input[:preload_data_config].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFHIRDatastoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFHIRDatastoreOutput, context: context)
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        Hearth::Validator.validate!(input[:datastore_arn], ::String, context: "#{context}[:datastore_arn]")
        Hearth::Validator.validate!(input[:datastore_status], ::String, context: "#{context}[:datastore_status]")
        Hearth::Validator.validate!(input[:datastore_endpoint], ::String, context: "#{context}[:datastore_endpoint]")
      end
    end

    class DatastoreFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastoreFilter, context: context)
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
        Hearth::Validator.validate!(input[:datastore_status], ::String, context: "#{context}[:datastore_status]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
      end
    end

    class DatastoreProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastoreProperties, context: context)
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        Hearth::Validator.validate!(input[:datastore_arn], ::String, context: "#{context}[:datastore_arn]")
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
        Hearth::Validator.validate!(input[:datastore_status], ::String, context: "#{context}[:datastore_status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:datastore_type_version], ::String, context: "#{context}[:datastore_type_version]")
        Hearth::Validator.validate!(input[:datastore_endpoint], ::String, context: "#{context}[:datastore_endpoint]")
        SseConfiguration.validate!(input[:sse_configuration], context: "#{context}[:sse_configuration]") unless input[:sse_configuration].nil?
        PreloadDataConfig.validate!(input[:preload_data_config], context: "#{context}[:preload_data_config]") unless input[:preload_data_config].nil?
      end
    end

    class DatastorePropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatastoreProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteFHIRDatastoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFHIRDatastoreInput, context: context)
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
      end
    end

    class DeleteFHIRDatastoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFHIRDatastoreOutput, context: context)
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        Hearth::Validator.validate!(input[:datastore_arn], ::String, context: "#{context}[:datastore_arn]")
        Hearth::Validator.validate!(input[:datastore_status], ::String, context: "#{context}[:datastore_status]")
        Hearth::Validator.validate!(input[:datastore_endpoint], ::String, context: "#{context}[:datastore_endpoint]")
      end
    end

    class DescribeFHIRDatastoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFHIRDatastoreInput, context: context)
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
      end
    end

    class DescribeFHIRDatastoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFHIRDatastoreOutput, context: context)
        DatastoreProperties.validate!(input[:datastore_properties], context: "#{context}[:datastore_properties]") unless input[:datastore_properties].nil?
      end
    end

    class DescribeFHIRExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFHIRExportJobInput, context: context)
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeFHIRExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFHIRExportJobOutput, context: context)
        ExportJobProperties.validate!(input[:export_job_properties], context: "#{context}[:export_job_properties]") unless input[:export_job_properties].nil?
      end
    end

    class DescribeFHIRImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFHIRImportJobInput, context: context)
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeFHIRImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFHIRImportJobOutput, context: context)
        ImportJobProperties.validate!(input[:import_job_properties], context: "#{context}[:import_job_properties]") unless input[:import_job_properties].nil?
      end
    end

    class ExportJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExportJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExportJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImportJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:job_output_data_config], context: "#{context}[:job_output_data_config]") unless input[:job_output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImportJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImportJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InputDataConfig
      def self.validate!(input, context:)
        case input
        when Types::InputDataConfig::S3Uri
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::InputDataConfig, got #{input.class}."
        end
      end

      class S3Uri
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KmsEncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KmsEncryptionConfig, context: context)
        Hearth::Validator.validate!(input[:cmk_type], ::String, context: "#{context}[:cmk_type]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ListFHIRDatastoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFHIRDatastoresInput, context: context)
        DatastoreFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFHIRDatastoresOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFHIRDatastoresOutput, context: context)
        DatastorePropertiesList.validate!(input[:datastore_properties_list], context: "#{context}[:datastore_properties_list]") unless input[:datastore_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFHIRExportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFHIRExportJobsInput, context: context)
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submitted_before], ::Time, context: "#{context}[:submitted_before]")
        Hearth::Validator.validate!(input[:submitted_after], ::Time, context: "#{context}[:submitted_after]")
      end
    end

    class ListFHIRExportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFHIRExportJobsOutput, context: context)
        ExportJobPropertiesList.validate!(input[:export_job_properties_list], context: "#{context}[:export_job_properties_list]") unless input[:export_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFHIRImportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFHIRImportJobsInput, context: context)
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submitted_before], ::Time, context: "#{context}[:submitted_before]")
        Hearth::Validator.validate!(input[:submitted_after], ::Time, context: "#{context}[:submitted_after]")
      end
    end

    class ListFHIRImportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFHIRImportJobsOutput, context: context)
        ImportJobPropertiesList.validate!(input[:import_job_properties_list], context: "#{context}[:import_job_properties_list]") unless input[:import_job_properties_list].nil?
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
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class OutputDataConfig
      def self.validate!(input, context:)
        case input
        when Types::OutputDataConfig::S3Configuration
          S3Configuration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::OutputDataConfig, got #{input.class}."
        end
      end

      class S3Configuration
        def self.validate!(input, context:)
          Validators::S3Configuration.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class PreloadDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreloadDataConfig, context: context)
        Hearth::Validator.validate!(input[:preload_data_type], ::String, context: "#{context}[:preload_data_type]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Configuration, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class SseConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SseConfiguration, context: context)
        KmsEncryptionConfig.validate!(input[:kms_encryption_config], context: "#{context}[:kms_encryption_config]") unless input[:kms_encryption_config].nil?
      end
    end

    class StartFHIRExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFHIRExportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartFHIRExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFHIRExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
      end
    end

    class StartFHIRImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFHIRImportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:job_output_data_config], context: "#{context}[:job_output_data_config]") unless input[:job_output_data_config].nil?
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartFHIRImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFHIRImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:datastore_id], ::String, context: "#{context}[:datastore_id]")
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

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
