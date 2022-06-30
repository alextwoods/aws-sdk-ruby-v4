# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Glacier
  module Validators

    class AbortMultipartUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortMultipartUploadInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
      end
    end

    class AbortMultipartUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortMultipartUploadOutput, context: context)
      end
    end

    class AbortVaultLockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortVaultLockInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class AbortVaultLockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortVaultLockOutput, context: context)
      end
    end

    class AccessControlPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Grant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddTagsToVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToVaultInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsToVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToVaultOutput, context: context)
      end
    end

    class CSVInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CSVInput, context: context)
        Hearth::Validator.validate!(input[:file_header_info], ::String, context: "#{context}[:file_header_info]")
        Hearth::Validator.validate!(input[:comments], ::String, context: "#{context}[:comments]")
        Hearth::Validator.validate!(input[:quote_escape_character], ::String, context: "#{context}[:quote_escape_character]")
        Hearth::Validator.validate!(input[:record_delimiter], ::String, context: "#{context}[:record_delimiter]")
        Hearth::Validator.validate!(input[:field_delimiter], ::String, context: "#{context}[:field_delimiter]")
        Hearth::Validator.validate!(input[:quote_character], ::String, context: "#{context}[:quote_character]")
      end
    end

    class CSVOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CSVOutput, context: context)
        Hearth::Validator.validate!(input[:quote_fields], ::String, context: "#{context}[:quote_fields]")
        Hearth::Validator.validate!(input[:quote_escape_character], ::String, context: "#{context}[:quote_escape_character]")
        Hearth::Validator.validate!(input[:record_delimiter], ::String, context: "#{context}[:record_delimiter]")
        Hearth::Validator.validate!(input[:field_delimiter], ::String, context: "#{context}[:field_delimiter]")
        Hearth::Validator.validate!(input[:quote_character], ::String, context: "#{context}[:quote_character]")
      end
    end

    class CompleteMultipartUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteMultipartUploadInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:archive_size], ::String, context: "#{context}[:archive_size]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
      end
    end

    class CompleteMultipartUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteMultipartUploadOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:archive_id], ::String, context: "#{context}[:archive_id]")
      end
    end

    class CompleteVaultLockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteVaultLockInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:lock_id], ::String, context: "#{context}[:lock_id]")
      end
    end

    class CompleteVaultLockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteVaultLockOutput, context: context)
      end
    end

    class CreateVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVaultInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class CreateVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVaultOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class DataRetrievalPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRetrievalPolicy, context: context)
        Validators::DataRetrievalRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class DataRetrievalRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRetrievalRule, context: context)
        Hearth::Validator.validate!(input[:strategy], ::String, context: "#{context}[:strategy]")
        Hearth::Validator.validate!(input[:bytes_per_hour], ::Integer, context: "#{context}[:bytes_per_hour]")
      end
    end

    class DataRetrievalRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataRetrievalRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteArchiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteArchiveInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:archive_id], ::String, context: "#{context}[:archive_id]")
      end
    end

    class DeleteArchiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteArchiveOutput, context: context)
      end
    end

    class DeleteVaultAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVaultAccessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class DeleteVaultAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVaultAccessPolicyOutput, context: context)
      end
    end

    class DeleteVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVaultInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class DeleteVaultNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVaultNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class DeleteVaultNotificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVaultNotificationsOutput, context: context)
      end
    end

    class DeleteVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVaultOutput, context: context)
      end
    end

    class DescribeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_description], ::String, context: "#{context}[:job_description]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:archive_id], ::String, context: "#{context}[:archive_id]")
        Hearth::Validator.validate!(input[:vault_arn], ::String, context: "#{context}[:vault_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:completed], ::TrueClass, ::FalseClass, context: "#{context}[:completed]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:archive_size_in_bytes], ::Integer, context: "#{context}[:archive_size_in_bytes]")
        Hearth::Validator.validate!(input[:inventory_size_in_bytes], ::Integer, context: "#{context}[:inventory_size_in_bytes]")
        Hearth::Validator.validate!(input[:sns_topic], ::String, context: "#{context}[:sns_topic]")
        Hearth::Validator.validate!(input[:completion_date], ::String, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:sha256_tree_hash], ::String, context: "#{context}[:sha256_tree_hash]")
        Hearth::Validator.validate!(input[:archive_sha256_tree_hash], ::String, context: "#{context}[:archive_sha256_tree_hash]")
        Hearth::Validator.validate!(input[:retrieval_byte_range], ::String, context: "#{context}[:retrieval_byte_range]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Validators::InventoryRetrievalJobDescription.validate!(input[:inventory_retrieval_parameters], context: "#{context}[:inventory_retrieval_parameters]") unless input[:inventory_retrieval_parameters].nil?
        Hearth::Validator.validate!(input[:job_output_path], ::String, context: "#{context}[:job_output_path]")
        Validators::SelectParameters.validate!(input[:select_parameters], context: "#{context}[:select_parameters]") unless input[:select_parameters].nil?
        Validators::OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
      end
    end

    class DescribeVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVaultInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class DescribeVaultOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVaultOperationOutput, context: context)
        Hearth::Validator.validate!(input[:vault_arn], ::String, context: "#{context}[:vault_arn]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_inventory_date], ::String, context: "#{context}[:last_inventory_date]")
        Hearth::Validator.validate!(input[:number_of_archives], ::Integer, context: "#{context}[:number_of_archives]")
        Hearth::Validator.validate!(input[:size_in_bytes], ::Integer, context: "#{context}[:size_in_bytes]")
      end
    end

    class DescribeVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVaultOutput, context: context)
        Hearth::Validator.validate!(input[:vault_arn], ::String, context: "#{context}[:vault_arn]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_inventory_date], ::String, context: "#{context}[:last_inventory_date]")
        Hearth::Validator.validate!(input[:number_of_archives], ::Integer, context: "#{context}[:number_of_archives]")
        Hearth::Validator.validate!(input[:size_in_bytes], ::Integer, context: "#{context}[:size_in_bytes]")
      end
    end

    class Encryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Encryption, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:kms_context], ::String, context: "#{context}[:kms_context]")
      end
    end

    class GetDataRetrievalPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataRetrievalPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetDataRetrievalPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataRetrievalPolicyOutput, context: context)
        Validators::DataRetrievalPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class GetJobOutputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobOutputInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:range], ::String, context: "#{context}[:range]")
      end
    end

    class GetJobOutputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobOutputOutput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:content_range], ::String, context: "#{context}[:content_range]")
        Hearth::Validator.validate!(input[:accept_ranges], ::String, context: "#{context}[:accept_ranges]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:archive_description], ::String, context: "#{context}[:archive_description]")
      end
    end

    class GetVaultAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVaultAccessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class GetVaultAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVaultAccessPolicyOutput, context: context)
        Validators::VaultAccessPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class GetVaultLockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVaultLockInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class GetVaultLockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVaultLockOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:expiration_date], ::String, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
      end
    end

    class GetVaultNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVaultNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class GetVaultNotificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVaultNotificationsOutput, context: context)
        Validators::VaultNotificationConfig.validate!(input[:vault_notification_config], context: "#{context}[:vault_notification_config]") unless input[:vault_notification_config].nil?
      end
    end

    class GlacierJobDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlacierJobDescription, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_description], ::String, context: "#{context}[:job_description]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:archive_id], ::String, context: "#{context}[:archive_id]")
        Hearth::Validator.validate!(input[:vault_arn], ::String, context: "#{context}[:vault_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:completed], ::TrueClass, ::FalseClass, context: "#{context}[:completed]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:archive_size_in_bytes], ::Integer, context: "#{context}[:archive_size_in_bytes]")
        Hearth::Validator.validate!(input[:inventory_size_in_bytes], ::Integer, context: "#{context}[:inventory_size_in_bytes]")
        Hearth::Validator.validate!(input[:sns_topic], ::String, context: "#{context}[:sns_topic]")
        Hearth::Validator.validate!(input[:completion_date], ::String, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:sha256_tree_hash], ::String, context: "#{context}[:sha256_tree_hash]")
        Hearth::Validator.validate!(input[:archive_sha256_tree_hash], ::String, context: "#{context}[:archive_sha256_tree_hash]")
        Hearth::Validator.validate!(input[:retrieval_byte_range], ::String, context: "#{context}[:retrieval_byte_range]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Validators::InventoryRetrievalJobDescription.validate!(input[:inventory_retrieval_parameters], context: "#{context}[:inventory_retrieval_parameters]") unless input[:inventory_retrieval_parameters].nil?
        Hearth::Validator.validate!(input[:job_output_path], ::String, context: "#{context}[:job_output_path]")
        Validators::SelectParameters.validate!(input[:select_parameters], context: "#{context}[:select_parameters]") unless input[:select_parameters].nil?
        Validators::OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
      end
    end

    class Grant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Grant, context: context)
        Validators::Grantee.validate!(input[:grantee], context: "#{context}[:grantee]") unless input[:grantee].nil?
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
      end
    end

    class Grantee
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Grantee, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class InitiateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateJobInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Validators::JobParameters.validate!(input[:job_parameters], context: "#{context}[:job_parameters]") unless input[:job_parameters].nil?
      end
    end

    class InitiateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateJobOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_output_path], ::String, context: "#{context}[:job_output_path]")
      end
    end

    class InitiateMultipartUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateMultipartUploadInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:archive_description], ::String, context: "#{context}[:archive_description]")
        Hearth::Validator.validate!(input[:part_size], ::String, context: "#{context}[:part_size]")
      end
    end

    class InitiateMultipartUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateMultipartUploadOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
      end
    end

    class InitiateVaultLockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateVaultLockInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Validators::VaultLockPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class InitiateVaultLockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateVaultLockOutput, context: context)
        Hearth::Validator.validate!(input[:lock_id], ::String, context: "#{context}[:lock_id]")
      end
    end

    class InputSerialization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSerialization, context: context)
        Validators::CSVInput.validate!(input[:csv], context: "#{context}[:csv]") unless input[:csv].nil?
      end
    end

    class InsufficientCapacityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientCapacityException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InventoryRetrievalJobDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryRetrievalJobDescription, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:limit], ::String, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class InventoryRetrievalJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryRetrievalJobInput, context: context)
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:limit], ::String, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class JobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GlacierJobDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobParameters, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:archive_id], ::String, context: "#{context}[:archive_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:sns_topic], ::String, context: "#{context}[:sns_topic]")
        Hearth::Validator.validate!(input[:retrieval_byte_range], ::String, context: "#{context}[:retrieval_byte_range]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Validators::InventoryRetrievalJobInput.validate!(input[:inventory_retrieval_parameters], context: "#{context}[:inventory_retrieval_parameters]") unless input[:inventory_retrieval_parameters].nil?
        Validators::SelectParameters.validate!(input[:select_parameters], context: "#{context}[:select_parameters]") unless input[:select_parameters].nil?
        Validators::OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:statuscode], ::String, context: "#{context}[:statuscode]")
        Hearth::Validator.validate!(input[:completed], ::String, context: "#{context}[:completed]")
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        Validators::JobList.validate!(input[:job_list], context: "#{context}[:job_list]") unless input[:job_list].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListMultipartUploadsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultipartUploadsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListMultipartUploadsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultipartUploadsOutput, context: context)
        Validators::UploadsList.validate!(input[:uploads_list], context: "#{context}[:uploads_list]") unless input[:uploads_list].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListPartsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListPartsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartsOutput, context: context)
        Hearth::Validator.validate!(input[:multipart_upload_id], ::String, context: "#{context}[:multipart_upload_id]")
        Hearth::Validator.validate!(input[:vault_arn], ::String, context: "#{context}[:vault_arn]")
        Hearth::Validator.validate!(input[:archive_description], ::String, context: "#{context}[:archive_description]")
        Hearth::Validator.validate!(input[:part_size_in_bytes], ::Integer, context: "#{context}[:part_size_in_bytes]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Validators::PartList.validate!(input[:parts], context: "#{context}[:parts]") unless input[:parts].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListProvisionedCapacityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisionedCapacityInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class ListProvisionedCapacityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisionedCapacityOutput, context: context)
        Validators::ProvisionedCapacityList.validate!(input[:provisioned_capacity_list], context: "#{context}[:provisioned_capacity_list]") unless input[:provisioned_capacity_list].nil?
      end
    end

    class ListTagsForVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForVaultInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
      end
    end

    class ListTagsForVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForVaultOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListVaultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVaultsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListVaultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVaultsOutput, context: context)
        Validators::VaultList.validate!(input[:vault_list], context: "#{context}[:vault_list]") unless input[:vault_list].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class MissingParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingParameterValueException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotificationEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OutputLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputLocation, context: context)
        Validators::S3Location.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class OutputSerialization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputSerialization, context: context)
        Validators::CSVOutput.validate!(input[:csv], context: "#{context}[:csv]") unless input[:csv].nil?
      end
    end

    class PartList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PartListElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartListElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartListElement, context: context)
        Hearth::Validator.validate!(input[:range_in_bytes], ::String, context: "#{context}[:range_in_bytes]")
        Hearth::Validator.validate!(input[:sha256_tree_hash], ::String, context: "#{context}[:sha256_tree_hash]")
      end
    end

    class PolicyEnforcedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyEnforcedException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProvisionedCapacityDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedCapacityDescription, context: context)
        Hearth::Validator.validate!(input[:capacity_id], ::String, context: "#{context}[:capacity_id]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:expiration_date], ::String, context: "#{context}[:expiration_date]")
      end
    end

    class ProvisionedCapacityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisionedCapacityDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PurchaseProvisionedCapacityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseProvisionedCapacityInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class PurchaseProvisionedCapacityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseProvisionedCapacityOutput, context: context)
        Hearth::Validator.validate!(input[:capacity_id], ::String, context: "#{context}[:capacity_id]")
      end
    end

    class RemoveTagsFromVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromVaultInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsFromVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromVaultOutput, context: context)
      end
    end

    class RequestTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestTimeoutException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Validators::Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:canned_acl], ::String, context: "#{context}[:canned_acl]")
        Validators::AccessControlPolicyList.validate!(input[:access_control_list], context: "#{context}[:access_control_list]") unless input[:access_control_list].nil?
        Validators::Hashmap.validate!(input[:tagging], context: "#{context}[:tagging]") unless input[:tagging].nil?
        Validators::Hashmap.validate!(input[:user_metadata], context: "#{context}[:user_metadata]") unless input[:user_metadata].nil?
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class SelectParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectParameters, context: context)
        Validators::InputSerialization.validate!(input[:input_serialization], context: "#{context}[:input_serialization]") unless input[:input_serialization].nil?
        Hearth::Validator.validate!(input[:expression_type], ::String, context: "#{context}[:expression_type]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Validators::OutputSerialization.validate!(input[:output_serialization], context: "#{context}[:output_serialization]") unless input[:output_serialization].nil?
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SetDataRetrievalPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDataRetrievalPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::DataRetrievalPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class SetDataRetrievalPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDataRetrievalPolicyOutput, context: context)
      end
    end

    class SetVaultAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetVaultAccessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Validators::VaultAccessPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class SetVaultAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetVaultAccessPolicyOutput, context: context)
      end
    end

    class SetVaultNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetVaultNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Validators::VaultNotificationConfig.validate!(input[:vault_notification_config], context: "#{context}[:vault_notification_config]") unless input[:vault_notification_config].nil?
      end
    end

    class SetVaultNotificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetVaultNotificationsOutput, context: context)
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

    class UploadArchiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadArchiveInput, context: context)
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:archive_description], ::String, context: "#{context}[:archive_description]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
      end
    end

    class UploadArchiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadArchiveOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:archive_id], ::String, context: "#{context}[:archive_id]")
      end
    end

    class UploadListElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadListElement, context: context)
        Hearth::Validator.validate!(input[:multipart_upload_id], ::String, context: "#{context}[:multipart_upload_id]")
        Hearth::Validator.validate!(input[:vault_arn], ::String, context: "#{context}[:vault_arn]")
        Hearth::Validator.validate!(input[:archive_description], ::String, context: "#{context}[:archive_description]")
        Hearth::Validator.validate!(input[:part_size_in_bytes], ::Integer, context: "#{context}[:part_size_in_bytes]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
      end
    end

    class UploadMultipartPartInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadMultipartPartInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:vault_name], ::String, context: "#{context}[:vault_name]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:range], ::String, context: "#{context}[:range]")
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
      end
    end

    class UploadMultipartPartOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadMultipartPartOutput, context: context)
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
      end
    end

    class UploadsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UploadListElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VaultAccessPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VaultAccessPolicy, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class VaultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DescribeVaultOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VaultLockPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VaultLockPolicy, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class VaultNotificationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VaultNotificationConfig, context: context)
        Hearth::Validator.validate!(input[:sns_topic], ::String, context: "#{context}[:sns_topic]")
        Validators::NotificationEventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class Hashmap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
