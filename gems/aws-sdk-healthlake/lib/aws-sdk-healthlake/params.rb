# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::HealthLake
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
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

    module CreateFHIRDatastoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFHIRDatastoreInput, context: context)
        type = Types::CreateFHIRDatastoreInput.new
        type.datastore_name = params[:datastore_name]
        type.datastore_type_version = params[:datastore_type_version]
        type.sse_configuration = SseConfiguration.build(params[:sse_configuration], context: "#{context}[:sse_configuration]") unless params[:sse_configuration].nil?
        type.preload_data_config = PreloadDataConfig.build(params[:preload_data_config], context: "#{context}[:preload_data_config]") unless params[:preload_data_config].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFHIRDatastoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFHIRDatastoreOutput, context: context)
        type = Types::CreateFHIRDatastoreOutput.new
        type.datastore_id = params[:datastore_id]
        type.datastore_arn = params[:datastore_arn]
        type.datastore_status = params[:datastore_status]
        type.datastore_endpoint = params[:datastore_endpoint]
        type
      end
    end

    module DatastoreFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastoreFilter, context: context)
        type = Types::DatastoreFilter.new
        type.datastore_name = params[:datastore_name]
        type.datastore_status = params[:datastore_status]
        type.created_before = params[:created_before]
        type.created_after = params[:created_after]
        type
      end
    end

    module DatastoreProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastoreProperties, context: context)
        type = Types::DatastoreProperties.new
        type.datastore_id = params[:datastore_id]
        type.datastore_arn = params[:datastore_arn]
        type.datastore_name = params[:datastore_name]
        type.datastore_status = params[:datastore_status]
        type.created_at = params[:created_at]
        type.datastore_type_version = params[:datastore_type_version]
        type.datastore_endpoint = params[:datastore_endpoint]
        type.sse_configuration = SseConfiguration.build(params[:sse_configuration], context: "#{context}[:sse_configuration]") unless params[:sse_configuration].nil?
        type.preload_data_config = PreloadDataConfig.build(params[:preload_data_config], context: "#{context}[:preload_data_config]") unless params[:preload_data_config].nil?
        type
      end
    end

    module DatastorePropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatastoreProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteFHIRDatastoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFHIRDatastoreInput, context: context)
        type = Types::DeleteFHIRDatastoreInput.new
        type.datastore_id = params[:datastore_id]
        type
      end
    end

    module DeleteFHIRDatastoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFHIRDatastoreOutput, context: context)
        type = Types::DeleteFHIRDatastoreOutput.new
        type.datastore_id = params[:datastore_id]
        type.datastore_arn = params[:datastore_arn]
        type.datastore_status = params[:datastore_status]
        type.datastore_endpoint = params[:datastore_endpoint]
        type
      end
    end

    module DescribeFHIRDatastoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFHIRDatastoreInput, context: context)
        type = Types::DescribeFHIRDatastoreInput.new
        type.datastore_id = params[:datastore_id]
        type
      end
    end

    module DescribeFHIRDatastoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFHIRDatastoreOutput, context: context)
        type = Types::DescribeFHIRDatastoreOutput.new
        type.datastore_properties = DatastoreProperties.build(params[:datastore_properties], context: "#{context}[:datastore_properties]") unless params[:datastore_properties].nil?
        type
      end
    end

    module DescribeFHIRExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFHIRExportJobInput, context: context)
        type = Types::DescribeFHIRExportJobInput.new
        type.datastore_id = params[:datastore_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeFHIRExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFHIRExportJobOutput, context: context)
        type = Types::DescribeFHIRExportJobOutput.new
        type.export_job_properties = ExportJobProperties.build(params[:export_job_properties], context: "#{context}[:export_job_properties]") unless params[:export_job_properties].nil?
        type
      end
    end

    module DescribeFHIRImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFHIRImportJobInput, context: context)
        type = Types::DescribeFHIRImportJobInput.new
        type.datastore_id = params[:datastore_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeFHIRImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFHIRImportJobOutput, context: context)
        type = Types::DescribeFHIRImportJobOutput.new
        type.import_job_properties = ImportJobProperties.build(params[:import_job_properties], context: "#{context}[:import_job_properties]") unless params[:import_job_properties].nil?
        type
      end
    end

    module ExportJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportJobProperties, context: context)
        type = Types::ExportJobProperties.new
        type.job_id = params[:job_id]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.datastore_id = params[:datastore_id]
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.message = params[:message]
        type
      end
    end

    module ExportJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImportJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportJobProperties, context: context)
        type = Types::ImportJobProperties.new
        type.job_id = params[:job_id]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.datastore_id = params[:datastore_id]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.job_output_data_config = OutputDataConfig.build(params[:job_output_data_config], context: "#{context}[:job_output_data_config]") unless params[:job_output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.message = params[:message]
        type
      end
    end

    module ImportJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InputDataConfig
      def self.build(params, context: '')
        return params if params.is_a?(Types::InputDataConfig)
        Hearth::Validator.validate!(params, ::Hash, Types::InputDataConfig, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :s3_uri
          Types::InputDataConfig::S3Uri.new(
            params[:s3_uri]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :s3_uri set"
        end
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

    module KmsEncryptionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KmsEncryptionConfig, context: context)
        type = Types::KmsEncryptionConfig.new
        type.cmk_type = params[:cmk_type]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ListFHIRDatastoresInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFHIRDatastoresInput, context: context)
        type = Types::ListFHIRDatastoresInput.new
        type.filter = DatastoreFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFHIRDatastoresOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFHIRDatastoresOutput, context: context)
        type = Types::ListFHIRDatastoresOutput.new
        type.datastore_properties_list = DatastorePropertiesList.build(params[:datastore_properties_list], context: "#{context}[:datastore_properties_list]") unless params[:datastore_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFHIRExportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFHIRExportJobsInput, context: context)
        type = Types::ListFHIRExportJobsInput.new
        type.datastore_id = params[:datastore_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submitted_before = params[:submitted_before]
        type.submitted_after = params[:submitted_after]
        type
      end
    end

    module ListFHIRExportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFHIRExportJobsOutput, context: context)
        type = Types::ListFHIRExportJobsOutput.new
        type.export_job_properties_list = ExportJobPropertiesList.build(params[:export_job_properties_list], context: "#{context}[:export_job_properties_list]") unless params[:export_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFHIRImportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFHIRImportJobsInput, context: context)
        type = Types::ListFHIRImportJobsInput.new
        type.datastore_id = params[:datastore_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submitted_before = params[:submitted_before]
        type.submitted_after = params[:submitted_after]
        type
      end
    end

    module ListFHIRImportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFHIRImportJobsOutput, context: context)
        type = Types::ListFHIRImportJobsOutput.new
        type.import_job_properties_list = ImportJobPropertiesList.build(params[:import_job_properties_list], context: "#{context}[:import_job_properties_list]") unless params[:import_job_properties_list].nil?
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module OutputDataConfig
      def self.build(params, context: '')
        return params if params.is_a?(Types::OutputDataConfig)
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDataConfig, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :s3_configuration
          Types::OutputDataConfig::S3Configuration.new(
            (S3Configuration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :s3_configuration set"
        end
      end
    end

    module PreloadDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreloadDataConfig, context: context)
        type = Types::PreloadDataConfig.new
        type.preload_data_type = params[:preload_data_type]
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

    module S3Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Configuration, context: context)
        type = Types::S3Configuration.new
        type.s3_uri = params[:s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module SseConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SseConfiguration, context: context)
        type = Types::SseConfiguration.new
        type.kms_encryption_config = KmsEncryptionConfig.build(params[:kms_encryption_config], context: "#{context}[:kms_encryption_config]") unless params[:kms_encryption_config].nil?
        type
      end
    end

    module StartFHIRExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFHIRExportJobInput, context: context)
        type = Types::StartFHIRExportJobInput.new
        type.job_name = params[:job_name]
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.datastore_id = params[:datastore_id]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StartFHIRExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFHIRExportJobOutput, context: context)
        type = Types::StartFHIRExportJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type.datastore_id = params[:datastore_id]
        type
      end
    end

    module StartFHIRImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFHIRImportJobInput, context: context)
        type = Types::StartFHIRImportJobInput.new
        type.job_name = params[:job_name]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.job_output_data_config = OutputDataConfig.build(params[:job_output_data_config], context: "#{context}[:job_output_data_config]") unless params[:job_output_data_config].nil?
        type.datastore_id = params[:datastore_id]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StartFHIRImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFHIRImportJobOutput, context: context)
        type = Types::StartFHIRImportJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type.datastore_id = params[:datastore_id]
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
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

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
