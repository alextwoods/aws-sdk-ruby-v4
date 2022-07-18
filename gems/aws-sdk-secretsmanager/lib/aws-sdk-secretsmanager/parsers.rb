# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SecretsManager
  module Parsers

    # Operation Parser for CancelRotateSecret
    class CancelRotateSecret
      def self.parse(http_resp)
        data = Types::CancelRotateSecretOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data.version_id = map['VersionId']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceError
    class InternalServiceError
      def self.parse(http_resp)
        data = Types::InternalServiceError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateSecret
    class CreateSecret
      def self.parse(http_resp)
        data = Types::CreateSecretOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data.version_id = map['VersionId']
        data.replication_status = (Parsers::ReplicationStatusListType.parse(map['ReplicationStatus']) unless map['ReplicationStatus'].nil?)
        data
      end
    end

    class ReplicationStatusListType
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationStatusType.parse(value) unless value.nil?
        end
      end
    end

    class ReplicationStatusType
      def self.parse(map)
        data = Types::ReplicationStatusType.new
        data.region = map['Region']
        data.kms_key_id = map['KmsKeyId']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.last_accessed_date = Time.at(map['LastAccessedDate'].to_i) if map['LastAccessedDate']
        return data
      end
    end

    # Error Parser for EncryptionFailure
    class EncryptionFailure
      def self.parse(http_resp)
        data = Types::EncryptionFailure.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceExistsException
    class ResourceExistsException
      def self.parse(http_resp)
        data = Types::ResourceExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DecryptionFailure
    class DecryptionFailure
      def self.parse(http_resp)
        data = Types::DecryptionFailure.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for PreconditionNotMetException
    class PreconditionNotMetException
      def self.parse(http_resp)
        data = Types::PreconditionNotMetException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MalformedPolicyDocumentException
    class MalformedPolicyDocumentException
      def self.parse(http_resp)
        data = Types::MalformedPolicyDocumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteSecret
    class DeleteSecret
      def self.parse(http_resp)
        data = Types::DeleteSecretOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data.deletion_date = Time.at(map['DeletionDate'].to_i) if map['DeletionDate']
        data
      end
    end

    # Operation Parser for DescribeSecret
    class DescribeSecret
      def self.parse(http_resp)
        data = Types::DescribeSecretOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data.description = map['Description']
        data.kms_key_id = map['KmsKeyId']
        data.rotation_enabled = map['RotationEnabled']
        data.rotation_lambda_arn = map['RotationLambdaARN']
        data.rotation_rules = (Parsers::RotationRulesType.parse(map['RotationRules']) unless map['RotationRules'].nil?)
        data.last_rotated_date = Time.at(map['LastRotatedDate'].to_i) if map['LastRotatedDate']
        data.last_changed_date = Time.at(map['LastChangedDate'].to_i) if map['LastChangedDate']
        data.last_accessed_date = Time.at(map['LastAccessedDate'].to_i) if map['LastAccessedDate']
        data.deleted_date = Time.at(map['DeletedDate'].to_i) if map['DeletedDate']
        data.tags = (Parsers::TagListType.parse(map['Tags']) unless map['Tags'].nil?)
        data.version_ids_to_stages = (Parsers::SecretVersionsToStagesMapType.parse(map['VersionIdsToStages']) unless map['VersionIdsToStages'].nil?)
        data.owning_service = map['OwningService']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.primary_region = map['PrimaryRegion']
        data.replication_status = (Parsers::ReplicationStatusListType.parse(map['ReplicationStatus']) unless map['ReplicationStatus'].nil?)
        data
      end
    end

    class SecretVersionsToStagesMapType
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::SecretVersionStagesType.parse(value) unless value.nil?
        end
        data
      end
    end

    class SecretVersionStagesType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TagListType
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class RotationRulesType
      def self.parse(map)
        data = Types::RotationRulesType.new
        data.automatically_after_days = map['AutomaticallyAfterDays']
        data.duration = map['Duration']
        data.schedule_expression = map['ScheduleExpression']
        return data
      end
    end

    # Operation Parser for GetRandomPassword
    class GetRandomPassword
      def self.parse(http_resp)
        data = Types::GetRandomPasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.random_password = map['RandomPassword']
        data
      end
    end

    # Operation Parser for GetResourcePolicy
    class GetResourcePolicy
      def self.parse(http_resp)
        data = Types::GetResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data.resource_policy = map['ResourcePolicy']
        data
      end
    end

    # Operation Parser for GetSecretValue
    class GetSecretValue
      def self.parse(http_resp)
        data = Types::GetSecretValueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data.version_id = map['VersionId']
        data.secret_binary = Base64::decode64(map['SecretBinary']) unless map['SecretBinary'].nil?
        data.secret_string = map['SecretString']
        data.version_stages = (Parsers::SecretVersionStagesType.parse(map['VersionStages']) unless map['VersionStages'].nil?)
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data
      end
    end

    # Operation Parser for ListSecretVersionIds
    class ListSecretVersionIds
      def self.parse(http_resp)
        data = Types::ListSecretVersionIdsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.versions = (Parsers::SecretVersionsListType.parse(map['Versions']) unless map['Versions'].nil?)
        data.next_token = map['NextToken']
        data.arn = map['ARN']
        data.name = map['Name']
        data
      end
    end

    class SecretVersionsListType
      def self.parse(list)
        list.map do |value|
          Parsers::SecretVersionsListEntry.parse(value) unless value.nil?
        end
      end
    end

    class SecretVersionsListEntry
      def self.parse(map)
        data = Types::SecretVersionsListEntry.new
        data.version_id = map['VersionId']
        data.version_stages = (Parsers::SecretVersionStagesType.parse(map['VersionStages']) unless map['VersionStages'].nil?)
        data.last_accessed_date = Time.at(map['LastAccessedDate'].to_i) if map['LastAccessedDate']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.kms_key_ids = (Parsers::KmsKeyIdListType.parse(map['KmsKeyIds']) unless map['KmsKeyIds'].nil?)
        return data
      end
    end

    class KmsKeyIdListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListSecrets
    class ListSecrets
      def self.parse(http_resp)
        data = Types::ListSecretsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.secret_list = (Parsers::SecretListType.parse(map['SecretList']) unless map['SecretList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SecretListType
      def self.parse(list)
        list.map do |value|
          Parsers::SecretListEntry.parse(value) unless value.nil?
        end
      end
    end

    class SecretListEntry
      def self.parse(map)
        data = Types::SecretListEntry.new
        data.arn = map['ARN']
        data.name = map['Name']
        data.description = map['Description']
        data.kms_key_id = map['KmsKeyId']
        data.rotation_enabled = map['RotationEnabled']
        data.rotation_lambda_arn = map['RotationLambdaARN']
        data.rotation_rules = (Parsers::RotationRulesType.parse(map['RotationRules']) unless map['RotationRules'].nil?)
        data.last_rotated_date = Time.at(map['LastRotatedDate'].to_i) if map['LastRotatedDate']
        data.last_changed_date = Time.at(map['LastChangedDate'].to_i) if map['LastChangedDate']
        data.last_accessed_date = Time.at(map['LastAccessedDate'].to_i) if map['LastAccessedDate']
        data.deleted_date = Time.at(map['DeletedDate'].to_i) if map['DeletedDate']
        data.tags = (Parsers::TagListType.parse(map['Tags']) unless map['Tags'].nil?)
        data.secret_versions_to_stages = (Parsers::SecretVersionsToStagesMapType.parse(map['SecretVersionsToStages']) unless map['SecretVersionsToStages'].nil?)
        data.owning_service = map['OwningService']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.primary_region = map['PrimaryRegion']
        return data
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data
      end
    end

    # Error Parser for PublicPolicyException
    class PublicPolicyException
      def self.parse(http_resp)
        data = Types::PublicPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutSecretValue
    class PutSecretValue
      def self.parse(http_resp)
        data = Types::PutSecretValueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data.version_id = map['VersionId']
        data.version_stages = (Parsers::SecretVersionStagesType.parse(map['VersionStages']) unless map['VersionStages'].nil?)
        data
      end
    end

    # Operation Parser for RemoveRegionsFromReplication
    class RemoveRegionsFromReplication
      def self.parse(http_resp)
        data = Types::RemoveRegionsFromReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.replication_status = (Parsers::ReplicationStatusListType.parse(map['ReplicationStatus']) unless map['ReplicationStatus'].nil?)
        data
      end
    end

    # Operation Parser for ReplicateSecretToRegions
    class ReplicateSecretToRegions
      def self.parse(http_resp)
        data = Types::ReplicateSecretToRegionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.replication_status = (Parsers::ReplicationStatusListType.parse(map['ReplicationStatus']) unless map['ReplicationStatus'].nil?)
        data
      end
    end

    # Operation Parser for RestoreSecret
    class RestoreSecret
      def self.parse(http_resp)
        data = Types::RestoreSecretOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for RotateSecret
    class RotateSecret
      def self.parse(http_resp)
        data = Types::RotateSecretOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data.version_id = map['VersionId']
        data
      end
    end

    # Operation Parser for StopReplicationToReplica
    class StopReplicationToReplica
      def self.parse(http_resp)
        data = Types::StopReplicationToReplicaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateSecret
    class UpdateSecret
      def self.parse(http_resp)
        data = Types::UpdateSecretOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data.version_id = map['VersionId']
        data
      end
    end

    # Operation Parser for UpdateSecretVersionStage
    class UpdateSecretVersionStage
      def self.parse(http_resp)
        data = Types::UpdateSecretVersionStageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['ARN']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for ValidateResourcePolicy
    class ValidateResourcePolicy
      def self.parse(http_resp)
        data = Types::ValidateResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_validation_passed = map['PolicyValidationPassed']
        data.validation_errors = (Parsers::ValidationErrorsType.parse(map['ValidationErrors']) unless map['ValidationErrors'].nil?)
        data
      end
    end

    class ValidationErrorsType
      def self.parse(list)
        list.map do |value|
          Parsers::ValidationErrorsEntry.parse(value) unless value.nil?
        end
      end
    end

    class ValidationErrorsEntry
      def self.parse(map)
        data = Types::ValidationErrorsEntry.new
        data.check_name = map['CheckName']
        data.error_message = map['ErrorMessage']
        return data
      end
    end
  end
end
