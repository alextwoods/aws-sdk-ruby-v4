# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SecretsManager
  module Params

    module AddReplicaRegionListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaRegionType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelRotateSecretInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelRotateSecretInput, context: context)
        type = Types::CancelRotateSecretInput.new
        type.secret_id = params[:secret_id]
        type
      end
    end

    module CancelRotateSecretOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelRotateSecretOutput, context: context)
        type = Types::CancelRotateSecretOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version_id = params[:version_id]
        type
      end
    end

    module CreateSecretInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecretInput, context: context)
        type = Types::CreateSecretInput.new
        type.name = params[:name]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.description = params[:description]
        type.kms_key_id = params[:kms_key_id]
        type.secret_binary = params[:secret_binary]
        type.secret_string = params[:secret_string]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.add_replica_regions = AddReplicaRegionListType.build(params[:add_replica_regions], context: "#{context}[:add_replica_regions]") unless params[:add_replica_regions].nil?
        type.force_overwrite_replica_secret = params[:force_overwrite_replica_secret]
        type
      end
    end

    module CreateSecretOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecretOutput, context: context)
        type = Types::CreateSecretOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version_id = params[:version_id]
        type.replication_status = ReplicationStatusListType.build(params[:replication_status], context: "#{context}[:replication_status]") unless params[:replication_status].nil?
        type
      end
    end

    module DecryptionFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecryptionFailure, context: context)
        type = Types::DecryptionFailure.new
        type.message = params[:message]
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.secret_id = params[:secret_id]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module DeleteSecretInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSecretInput, context: context)
        type = Types::DeleteSecretInput.new
        type.secret_id = params[:secret_id]
        type.recovery_window_in_days = params[:recovery_window_in_days]
        type.force_delete_without_recovery = params[:force_delete_without_recovery]
        type
      end
    end

    module DeleteSecretOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSecretOutput, context: context)
        type = Types::DeleteSecretOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.deletion_date = params[:deletion_date]
        type
      end
    end

    module DescribeSecretInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecretInput, context: context)
        type = Types::DescribeSecretInput.new
        type.secret_id = params[:secret_id]
        type
      end
    end

    module DescribeSecretOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecretOutput, context: context)
        type = Types::DescribeSecretOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.kms_key_id = params[:kms_key_id]
        type.rotation_enabled = params[:rotation_enabled]
        type.rotation_lambda_arn = params[:rotation_lambda_arn]
        type.rotation_rules = RotationRulesType.build(params[:rotation_rules], context: "#{context}[:rotation_rules]") unless params[:rotation_rules].nil?
        type.last_rotated_date = params[:last_rotated_date]
        type.last_changed_date = params[:last_changed_date]
        type.last_accessed_date = params[:last_accessed_date]
        type.deleted_date = params[:deleted_date]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version_ids_to_stages = SecretVersionsToStagesMapType.build(params[:version_ids_to_stages], context: "#{context}[:version_ids_to_stages]") unless params[:version_ids_to_stages].nil?
        type.owning_service = params[:owning_service]
        type.created_date = params[:created_date]
        type.primary_region = params[:primary_region]
        type.replication_status = ReplicationStatusListType.build(params[:replication_status], context: "#{context}[:replication_status]") unless params[:replication_status].nil?
        type
      end
    end

    module EncryptionFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionFailure, context: context)
        type = Types::EncryptionFailure.new
        type.message = params[:message]
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.key = params[:key]
        type.values = FilterValuesStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterValuesStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FiltersListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetRandomPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRandomPasswordInput, context: context)
        type = Types::GetRandomPasswordInput.new
        type.password_length = params[:password_length]
        type.exclude_characters = params[:exclude_characters]
        type.exclude_numbers = params[:exclude_numbers]
        type.exclude_punctuation = params[:exclude_punctuation]
        type.exclude_uppercase = params[:exclude_uppercase]
        type.exclude_lowercase = params[:exclude_lowercase]
        type.include_space = params[:include_space]
        type.require_each_included_type = params[:require_each_included_type]
        type
      end
    end

    module GetRandomPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRandomPasswordOutput, context: context)
        type = Types::GetRandomPasswordOutput.new
        type.random_password = params[:random_password]
        type
      end
    end

    module GetResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyInput, context: context)
        type = Types::GetResourcePolicyInput.new
        type.secret_id = params[:secret_id]
        type
      end
    end

    module GetResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyOutput, context: context)
        type = Types::GetResourcePolicyOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.resource_policy = params[:resource_policy]
        type
      end
    end

    module GetSecretValueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSecretValueInput, context: context)
        type = Types::GetSecretValueInput.new
        type.secret_id = params[:secret_id]
        type.version_id = params[:version_id]
        type.version_stage = params[:version_stage]
        type
      end
    end

    module GetSecretValueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSecretValueOutput, context: context)
        type = Types::GetSecretValueOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version_id = params[:version_id]
        type.secret_binary = params[:secret_binary]
        type.secret_string = params[:secret_string]
        type.version_stages = SecretVersionStagesType.build(params[:version_stages], context: "#{context}[:version_stages]") unless params[:version_stages].nil?
        type.created_date = params[:created_date]
        type
      end
    end

    module InternalServiceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceError, context: context)
        type = Types::InternalServiceError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
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

    module KmsKeyIdListType
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

    module ListSecretVersionIdsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecretVersionIdsInput, context: context)
        type = Types::ListSecretVersionIdsInput.new
        type.secret_id = params[:secret_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.include_deprecated = params[:include_deprecated]
        type
      end
    end

    module ListSecretVersionIdsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecretVersionIdsOutput, context: context)
        type = Types::ListSecretVersionIdsOutput.new
        type.versions = SecretVersionsListType.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.next_token = params[:next_token]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module ListSecretsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecretsInput, context: context)
        type = Types::ListSecretsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = FiltersListType.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListSecretsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecretsOutput, context: context)
        type = Types::ListSecretsOutput.new
        type.secret_list = SecretListType.build(params[:secret_list], context: "#{context}[:secret_list]") unless params[:secret_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MalformedPolicyDocumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedPolicyDocumentException, context: context)
        type = Types::MalformedPolicyDocumentException.new
        type.message = params[:message]
        type
      end
    end

    module PreconditionNotMetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreconditionNotMetException, context: context)
        type = Types::PreconditionNotMetException.new
        type.message = params[:message]
        type
      end
    end

    module PublicPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicPolicyException, context: context)
        type = Types::PublicPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.secret_id = params[:secret_id]
        type.resource_policy = params[:resource_policy]
        type.block_public_policy = params[:block_public_policy]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module PutSecretValueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSecretValueInput, context: context)
        type = Types::PutSecretValueInput.new
        type.secret_id = params[:secret_id]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.secret_binary = params[:secret_binary]
        type.secret_string = params[:secret_string]
        type.version_stages = SecretVersionStagesType.build(params[:version_stages], context: "#{context}[:version_stages]") unless params[:version_stages].nil?
        type
      end
    end

    module PutSecretValueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSecretValueOutput, context: context)
        type = Types::PutSecretValueOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version_id = params[:version_id]
        type.version_stages = SecretVersionStagesType.build(params[:version_stages], context: "#{context}[:version_stages]") unless params[:version_stages].nil?
        type
      end
    end

    module RemoveRegionsFromReplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRegionsFromReplicationInput, context: context)
        type = Types::RemoveRegionsFromReplicationInput.new
        type.secret_id = params[:secret_id]
        type.remove_replica_regions = RemoveReplicaRegionListType.build(params[:remove_replica_regions], context: "#{context}[:remove_replica_regions]") unless params[:remove_replica_regions].nil?
        type
      end
    end

    module RemoveRegionsFromReplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRegionsFromReplicationOutput, context: context)
        type = Types::RemoveRegionsFromReplicationOutput.new
        type.arn = params[:arn]
        type.replication_status = ReplicationStatusListType.build(params[:replication_status], context: "#{context}[:replication_status]") unless params[:replication_status].nil?
        type
      end
    end

    module RemoveReplicaRegionListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReplicaRegionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicaRegionType, context: context)
        type = Types::ReplicaRegionType.new
        type.region = params[:region]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ReplicateSecretToRegionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicateSecretToRegionsInput, context: context)
        type = Types::ReplicateSecretToRegionsInput.new
        type.secret_id = params[:secret_id]
        type.add_replica_regions = AddReplicaRegionListType.build(params[:add_replica_regions], context: "#{context}[:add_replica_regions]") unless params[:add_replica_regions].nil?
        type.force_overwrite_replica_secret = params[:force_overwrite_replica_secret]
        type
      end
    end

    module ReplicateSecretToRegionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicateSecretToRegionsOutput, context: context)
        type = Types::ReplicateSecretToRegionsOutput.new
        type.arn = params[:arn]
        type.replication_status = ReplicationStatusListType.build(params[:replication_status], context: "#{context}[:replication_status]") unless params[:replication_status].nil?
        type
      end
    end

    module ReplicationStatusListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationStatusType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationStatusType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationStatusType, context: context)
        type = Types::ReplicationStatusType.new
        type.region = params[:region]
        type.kms_key_id = params[:kms_key_id]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.last_accessed_date = params[:last_accessed_date]
        type
      end
    end

    module ResourceExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceExistsException, context: context)
        type = Types::ResourceExistsException.new
        type.message = params[:message]
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

    module RestoreSecretInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreSecretInput, context: context)
        type = Types::RestoreSecretInput.new
        type.secret_id = params[:secret_id]
        type
      end
    end

    module RestoreSecretOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreSecretOutput, context: context)
        type = Types::RestoreSecretOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module RotateSecretInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateSecretInput, context: context)
        type = Types::RotateSecretInput.new
        type.secret_id = params[:secret_id]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.rotation_lambda_arn = params[:rotation_lambda_arn]
        type.rotation_rules = RotationRulesType.build(params[:rotation_rules], context: "#{context}[:rotation_rules]") unless params[:rotation_rules].nil?
        type.rotate_immediately = params[:rotate_immediately]
        type
      end
    end

    module RotateSecretOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateSecretOutput, context: context)
        type = Types::RotateSecretOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version_id = params[:version_id]
        type
      end
    end

    module RotationRulesType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotationRulesType, context: context)
        type = Types::RotationRulesType.new
        type.automatically_after_days = params[:automatically_after_days]
        type.duration = params[:duration]
        type.schedule_expression = params[:schedule_expression]
        type
      end
    end

    module SecretListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecretListEntry, context: context)
        type = Types::SecretListEntry.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.kms_key_id = params[:kms_key_id]
        type.rotation_enabled = params[:rotation_enabled]
        type.rotation_lambda_arn = params[:rotation_lambda_arn]
        type.rotation_rules = RotationRulesType.build(params[:rotation_rules], context: "#{context}[:rotation_rules]") unless params[:rotation_rules].nil?
        type.last_rotated_date = params[:last_rotated_date]
        type.last_changed_date = params[:last_changed_date]
        type.last_accessed_date = params[:last_accessed_date]
        type.deleted_date = params[:deleted_date]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.secret_versions_to_stages = SecretVersionsToStagesMapType.build(params[:secret_versions_to_stages], context: "#{context}[:secret_versions_to_stages]") unless params[:secret_versions_to_stages].nil?
        type.owning_service = params[:owning_service]
        type.created_date = params[:created_date]
        type.primary_region = params[:primary_region]
        type
      end
    end

    module SecretListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecretListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecretVersionStagesType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecretVersionsListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecretVersionsListEntry, context: context)
        type = Types::SecretVersionsListEntry.new
        type.version_id = params[:version_id]
        type.version_stages = SecretVersionStagesType.build(params[:version_stages], context: "#{context}[:version_stages]") unless params[:version_stages].nil?
        type.last_accessed_date = params[:last_accessed_date]
        type.created_date = params[:created_date]
        type.kms_key_ids = KmsKeyIdListType.build(params[:kms_key_ids], context: "#{context}[:kms_key_ids]") unless params[:kms_key_ids].nil?
        type
      end
    end

    module SecretVersionsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecretVersionsListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecretVersionsToStagesMapType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = SecretVersionStagesType.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module StopReplicationToReplicaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopReplicationToReplicaInput, context: context)
        type = Types::StopReplicationToReplicaInput.new
        type.secret_id = params[:secret_id]
        type
      end
    end

    module StopReplicationToReplicaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopReplicationToReplicaOutput, context: context)
        type = Types::StopReplicationToReplicaOutput.new
        type.arn = params[:arn]
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

    module TagKeyListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagListType
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
        type.secret_id = params[:secret_id]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.secret_id = params[:secret_id]
        type.tag_keys = TagKeyListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateSecretInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecretInput, context: context)
        type = Types::UpdateSecretInput.new
        type.secret_id = params[:secret_id]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.description = params[:description]
        type.kms_key_id = params[:kms_key_id]
        type.secret_binary = params[:secret_binary]
        type.secret_string = params[:secret_string]
        type
      end
    end

    module UpdateSecretOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecretOutput, context: context)
        type = Types::UpdateSecretOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version_id = params[:version_id]
        type
      end
    end

    module UpdateSecretVersionStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecretVersionStageInput, context: context)
        type = Types::UpdateSecretVersionStageInput.new
        type.secret_id = params[:secret_id]
        type.version_stage = params[:version_stage]
        type.remove_from_version_id = params[:remove_from_version_id]
        type.move_to_version_id = params[:move_to_version_id]
        type
      end
    end

    module UpdateSecretVersionStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecretVersionStageOutput, context: context)
        type = Types::UpdateSecretVersionStageOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module ValidateResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateResourcePolicyInput, context: context)
        type = Types::ValidateResourcePolicyInput.new
        type.secret_id = params[:secret_id]
        type.resource_policy = params[:resource_policy]
        type
      end
    end

    module ValidateResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateResourcePolicyOutput, context: context)
        type = Types::ValidateResourcePolicyOutput.new
        type.policy_validation_passed = params[:policy_validation_passed]
        type.validation_errors = ValidationErrorsType.build(params[:validation_errors], context: "#{context}[:validation_errors]") unless params[:validation_errors].nil?
        type
      end
    end

    module ValidationErrorsEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationErrorsEntry, context: context)
        type = Types::ValidationErrorsEntry.new
        type.check_name = params[:check_name]
        type.error_message = params[:error_message]
        type
      end
    end

    module ValidationErrorsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationErrorsEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
