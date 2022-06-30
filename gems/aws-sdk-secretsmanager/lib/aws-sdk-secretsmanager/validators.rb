# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SecretsManager
  module Validators

    class AddReplicaRegionListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicaRegionType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelRotateSecretInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelRotateSecretInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
      end
    end

    class CancelRotateSecretOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelRotateSecretOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class CreateSecretInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecretInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:secret_binary], ::String, context: "#{context}[:secret_binary]")
        Hearth::Validator.validate!(input[:secret_string], ::String, context: "#{context}[:secret_string]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::AddReplicaRegionListType.validate!(input[:add_replica_regions], context: "#{context}[:add_replica_regions]") unless input[:add_replica_regions].nil?
        Hearth::Validator.validate!(input[:force_overwrite_replica_secret], ::TrueClass, ::FalseClass, context: "#{context}[:force_overwrite_replica_secret]")
      end
    end

    class CreateSecretOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecretOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Validators::ReplicationStatusListType.validate!(input[:replication_status], context: "#{context}[:replication_status]") unless input[:replication_status].nil?
      end
    end

    class DecryptionFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecryptionFailure, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteSecretInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSecretInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Hearth::Validator.validate!(input[:recovery_window_in_days], ::Integer, context: "#{context}[:recovery_window_in_days]")
        Hearth::Validator.validate!(input[:force_delete_without_recovery], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete_without_recovery]")
      end
    end

    class DeleteSecretOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSecretOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:deletion_date], ::Time, context: "#{context}[:deletion_date]")
      end
    end

    class DescribeSecretInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecretInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
      end
    end

    class DescribeSecretOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecretOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:rotation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:rotation_enabled]")
        Hearth::Validator.validate!(input[:rotation_lambda_arn], ::String, context: "#{context}[:rotation_lambda_arn]")
        Validators::RotationRulesType.validate!(input[:rotation_rules], context: "#{context}[:rotation_rules]") unless input[:rotation_rules].nil?
        Hearth::Validator.validate!(input[:last_rotated_date], ::Time, context: "#{context}[:last_rotated_date]")
        Hearth::Validator.validate!(input[:last_changed_date], ::Time, context: "#{context}[:last_changed_date]")
        Hearth::Validator.validate!(input[:last_accessed_date], ::Time, context: "#{context}[:last_accessed_date]")
        Hearth::Validator.validate!(input[:deleted_date], ::Time, context: "#{context}[:deleted_date]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::SecretVersionsToStagesMapType.validate!(input[:version_ids_to_stages], context: "#{context}[:version_ids_to_stages]") unless input[:version_ids_to_stages].nil?
        Hearth::Validator.validate!(input[:owning_service], ::String, context: "#{context}[:owning_service]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:primary_region], ::String, context: "#{context}[:primary_region]")
        Validators::ReplicationStatusListType.validate!(input[:replication_status], context: "#{context}[:replication_status]") unless input[:replication_status].nil?
      end
    end

    class EncryptionFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionFailure, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Validators::FilterValuesStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterValuesStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FiltersListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetRandomPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRandomPasswordInput, context: context)
        Hearth::Validator.validate!(input[:password_length], ::Integer, context: "#{context}[:password_length]")
        Hearth::Validator.validate!(input[:exclude_characters], ::String, context: "#{context}[:exclude_characters]")
        Hearth::Validator.validate!(input[:exclude_numbers], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_numbers]")
        Hearth::Validator.validate!(input[:exclude_punctuation], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_punctuation]")
        Hearth::Validator.validate!(input[:exclude_uppercase], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_uppercase]")
        Hearth::Validator.validate!(input[:exclude_lowercase], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_lowercase]")
        Hearth::Validator.validate!(input[:include_space], ::TrueClass, ::FalseClass, context: "#{context}[:include_space]")
        Hearth::Validator.validate!(input[:require_each_included_type], ::TrueClass, ::FalseClass, context: "#{context}[:require_each_included_type]")
      end
    end

    class GetRandomPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRandomPasswordOutput, context: context)
        Hearth::Validator.validate!(input[:random_password], ::String, context: "#{context}[:random_password]")
      end
    end

    class GetResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
      end
    end

    class GetResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
      end
    end

    class GetSecretValueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSecretValueInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:version_stage], ::String, context: "#{context}[:version_stage]")
      end
    end

    class GetSecretValueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSecretValueOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:secret_binary], ::String, context: "#{context}[:secret_binary]")
        Hearth::Validator.validate!(input[:secret_string], ::String, context: "#{context}[:secret_string]")
        Validators::SecretVersionStagesType.validate!(input[:version_stages], context: "#{context}[:version_stages]") unless input[:version_stages].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
      end
    end

    class InternalServiceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KmsKeyIdListType
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

    class ListSecretVersionIdsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecretVersionIdsInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:include_deprecated], ::TrueClass, ::FalseClass, context: "#{context}[:include_deprecated]")
      end
    end

    class ListSecretVersionIdsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecretVersionIdsOutput, context: context)
        Validators::SecretVersionsListType.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ListSecretsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecretsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FiltersListType.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListSecretsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecretsOutput, context: context)
        Validators::SecretListType.validate!(input[:secret_list], context: "#{context}[:secret_list]") unless input[:secret_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MalformedPolicyDocumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedPolicyDocumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PreconditionNotMetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionNotMetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PublicPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
        Hearth::Validator.validate!(input[:block_public_policy], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_policy]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class PutSecretValueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSecretValueInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:secret_binary], ::String, context: "#{context}[:secret_binary]")
        Hearth::Validator.validate!(input[:secret_string], ::String, context: "#{context}[:secret_string]")
        Validators::SecretVersionStagesType.validate!(input[:version_stages], context: "#{context}[:version_stages]") unless input[:version_stages].nil?
      end
    end

    class PutSecretValueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSecretValueOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Validators::SecretVersionStagesType.validate!(input[:version_stages], context: "#{context}[:version_stages]") unless input[:version_stages].nil?
      end
    end

    class RemoveRegionsFromReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRegionsFromReplicationInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Validators::RemoveReplicaRegionListType.validate!(input[:remove_replica_regions], context: "#{context}[:remove_replica_regions]") unless input[:remove_replica_regions].nil?
      end
    end

    class RemoveRegionsFromReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRegionsFromReplicationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::ReplicationStatusListType.validate!(input[:replication_status], context: "#{context}[:replication_status]") unless input[:replication_status].nil?
      end
    end

    class RemoveReplicaRegionListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplicaRegionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaRegionType, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ReplicateSecretToRegionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicateSecretToRegionsInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Validators::AddReplicaRegionListType.validate!(input[:add_replica_regions], context: "#{context}[:add_replica_regions]") unless input[:add_replica_regions].nil?
        Hearth::Validator.validate!(input[:force_overwrite_replica_secret], ::TrueClass, ::FalseClass, context: "#{context}[:force_overwrite_replica_secret]")
      end
    end

    class ReplicateSecretToRegionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicateSecretToRegionsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::ReplicationStatusListType.validate!(input[:replication_status], context: "#{context}[:replication_status]") unless input[:replication_status].nil?
      end
    end

    class ReplicationStatusListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationStatusType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationStatusType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationStatusType, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:last_accessed_date], ::Time, context: "#{context}[:last_accessed_date]")
      end
    end

    class ResourceExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestoreSecretInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreSecretInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
      end
    end

    class RestoreSecretOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreSecretOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class RotateSecretInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateSecretInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:rotation_lambda_arn], ::String, context: "#{context}[:rotation_lambda_arn]")
        Validators::RotationRulesType.validate!(input[:rotation_rules], context: "#{context}[:rotation_rules]") unless input[:rotation_rules].nil?
        Hearth::Validator.validate!(input[:rotate_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:rotate_immediately]")
      end
    end

    class RotateSecretOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateSecretOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class RotationRulesType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotationRulesType, context: context)
        Hearth::Validator.validate!(input[:automatically_after_days], ::Integer, context: "#{context}[:automatically_after_days]")
        Hearth::Validator.validate!(input[:duration], ::String, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
      end
    end

    class SecretListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecretListEntry, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:rotation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:rotation_enabled]")
        Hearth::Validator.validate!(input[:rotation_lambda_arn], ::String, context: "#{context}[:rotation_lambda_arn]")
        Validators::RotationRulesType.validate!(input[:rotation_rules], context: "#{context}[:rotation_rules]") unless input[:rotation_rules].nil?
        Hearth::Validator.validate!(input[:last_rotated_date], ::Time, context: "#{context}[:last_rotated_date]")
        Hearth::Validator.validate!(input[:last_changed_date], ::Time, context: "#{context}[:last_changed_date]")
        Hearth::Validator.validate!(input[:last_accessed_date], ::Time, context: "#{context}[:last_accessed_date]")
        Hearth::Validator.validate!(input[:deleted_date], ::Time, context: "#{context}[:deleted_date]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::SecretVersionsToStagesMapType.validate!(input[:secret_versions_to_stages], context: "#{context}[:secret_versions_to_stages]") unless input[:secret_versions_to_stages].nil?
        Hearth::Validator.validate!(input[:owning_service], ::String, context: "#{context}[:owning_service]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:primary_region], ::String, context: "#{context}[:primary_region]")
      end
    end

    class SecretListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SecretListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecretVersionStagesType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecretVersionsListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecretVersionsListEntry, context: context)
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Validators::SecretVersionStagesType.validate!(input[:version_stages], context: "#{context}[:version_stages]") unless input[:version_stages].nil?
        Hearth::Validator.validate!(input[:last_accessed_date], ::Time, context: "#{context}[:last_accessed_date]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Validators::KmsKeyIdListType.validate!(input[:kms_key_ids], context: "#{context}[:kms_key_ids]") unless input[:kms_key_ids].nil?
      end
    end

    class SecretVersionsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SecretVersionsListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecretVersionsToStagesMapType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::SecretVersionStagesType.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class StopReplicationToReplicaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopReplicationToReplicaInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
      end
    end

    class StopReplicationToReplicaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopReplicationToReplicaOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Validators::TagKeyListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateSecretInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecretInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:secret_binary], ::String, context: "#{context}[:secret_binary]")
        Hearth::Validator.validate!(input[:secret_string], ::String, context: "#{context}[:secret_string]")
      end
    end

    class UpdateSecretOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecretOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class UpdateSecretVersionStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecretVersionStageInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Hearth::Validator.validate!(input[:version_stage], ::String, context: "#{context}[:version_stage]")
        Hearth::Validator.validate!(input[:remove_from_version_id], ::String, context: "#{context}[:remove_from_version_id]")
        Hearth::Validator.validate!(input[:move_to_version_id], ::String, context: "#{context}[:move_to_version_id]")
      end
    end

    class UpdateSecretVersionStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecretVersionStageOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ValidateResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:secret_id], ::String, context: "#{context}[:secret_id]")
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
      end
    end

    class ValidateResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_validation_passed], ::TrueClass, ::FalseClass, context: "#{context}[:policy_validation_passed]")
        Validators::ValidationErrorsType.validate!(input[:validation_errors], context: "#{context}[:validation_errors]") unless input[:validation_errors].nil?
      end
    end

    class ValidationErrorsEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationErrorsEntry, context: context)
        Hearth::Validator.validate!(input[:check_name], ::String, context: "#{context}[:check_name]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class ValidationErrorsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationErrorsEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
