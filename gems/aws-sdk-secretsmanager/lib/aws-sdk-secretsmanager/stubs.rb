# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SecretsManager
  module Stubs

    # Operation Stubber for CancelRotateSecret
    class CancelRotateSecret
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version_id: 'version_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSecret
    class CreateSecret
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version_id: 'version_id',
          replication_status: Stubs::ReplicationStatusListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['ReplicationStatus'] = Stubs::ReplicationStatusListType.stub(stub[:replication_status]) unless stub[:replication_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationStatusListType
    class ReplicationStatusListType
      def self.default(visited=[])
        return nil if visited.include?('ReplicationStatusListType')
        visited = visited + ['ReplicationStatusListType']
        [
          Stubs::ReplicationStatusType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReplicationStatusType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationStatusType
    class ReplicationStatusType
      def self.default(visited=[])
        return nil if visited.include?('ReplicationStatusType')
        visited = visited + ['ReplicationStatusType']
        {
          region: 'region',
          kms_key_id: 'kms_key_id',
          status: 'status',
          status_message: 'status_message',
          last_accessed_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationStatusType.new
        data = {}
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['LastAccessedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_accessed_date]).to_i unless stub[:last_accessed_date].nil?
        data
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSecret
    class DeleteSecret
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          deletion_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DeletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deletion_date]).to_i unless stub[:deletion_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeSecret
    class DescribeSecret
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          kms_key_id: 'kms_key_id',
          rotation_enabled: false,
          rotation_lambda_arn: 'rotation_lambda_arn',
          rotation_rules: Stubs::RotationRulesType.default(visited),
          last_rotated_date: Time.now,
          last_changed_date: Time.now,
          last_accessed_date: Time.now,
          deleted_date: Time.now,
          tags: Stubs::TagListType.default(visited),
          version_ids_to_stages: Stubs::SecretVersionsToStagesMapType.default(visited),
          owning_service: 'owning_service',
          created_date: Time.now,
          primary_region: 'primary_region',
          replication_status: Stubs::ReplicationStatusListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['RotationEnabled'] = stub[:rotation_enabled] unless stub[:rotation_enabled].nil?
        data['RotationLambdaARN'] = stub[:rotation_lambda_arn] unless stub[:rotation_lambda_arn].nil?
        data['RotationRules'] = Stubs::RotationRulesType.stub(stub[:rotation_rules]) unless stub[:rotation_rules].nil?
        data['LastRotatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_rotated_date]).to_i unless stub[:last_rotated_date].nil?
        data['LastChangedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_changed_date]).to_i unless stub[:last_changed_date].nil?
        data['LastAccessedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_accessed_date]).to_i unless stub[:last_accessed_date].nil?
        data['DeletedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deleted_date]).to_i unless stub[:deleted_date].nil?
        data['Tags'] = Stubs::TagListType.stub(stub[:tags]) unless stub[:tags].nil?
        data['VersionIdsToStages'] = Stubs::SecretVersionsToStagesMapType.stub(stub[:version_ids_to_stages]) unless stub[:version_ids_to_stages].nil?
        data['OwningService'] = stub[:owning_service] unless stub[:owning_service].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['PrimaryRegion'] = stub[:primary_region] unless stub[:primary_region].nil?
        data['ReplicationStatus'] = Stubs::ReplicationStatusListType.stub(stub[:replication_status]) unless stub[:replication_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for SecretVersionsToStagesMapType
    class SecretVersionsToStagesMapType
      def self.default(visited=[])
        return nil if visited.include?('SecretVersionsToStagesMapType')
        visited = visited + ['SecretVersionsToStagesMapType']
        {
          test_key: Stubs::SecretVersionStagesType.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::SecretVersionStagesType.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for SecretVersionStagesType
    class SecretVersionStagesType
      def self.default(visited=[])
        return nil if visited.include?('SecretVersionStagesType')
        visited = visited + ['SecretVersionStagesType']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for TagListType
    class TagListType
      def self.default(visited=[])
        return nil if visited.include?('TagListType')
        visited = visited + ['TagListType']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for RotationRulesType
    class RotationRulesType
      def self.default(visited=[])
        return nil if visited.include?('RotationRulesType')
        visited = visited + ['RotationRulesType']
        {
          automatically_after_days: 1,
          duration: 'duration',
          schedule_expression: 'schedule_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::RotationRulesType.new
        data = {}
        data['AutomaticallyAfterDays'] = stub[:automatically_after_days] unless stub[:automatically_after_days].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data
      end
    end

    # Operation Stubber for GetRandomPassword
    class GetRandomPassword
      def self.default(visited=[])
        {
          random_password: 'random_password',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RandomPassword'] = stub[:random_password] unless stub[:random_password].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResourcePolicy
    class GetResourcePolicy
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          resource_policy: 'resource_policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ResourcePolicy'] = stub[:resource_policy] unless stub[:resource_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSecretValue
    class GetSecretValue
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version_id: 'version_id',
          secret_binary: 'secret_binary',
          secret_string: 'secret_string',
          version_stages: Stubs::SecretVersionStagesType.default(visited),
          created_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['SecretBinary'] = Base64::encode64(stub[:secret_binary]) unless stub[:secret_binary].nil?
        data['SecretString'] = stub[:secret_string] unless stub[:secret_string].nil?
        data['VersionStages'] = Stubs::SecretVersionStagesType.stub(stub[:version_stages]) unless stub[:version_stages].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListSecretVersionIds
    class ListSecretVersionIds
      def self.default(visited=[])
        {
          versions: Stubs::SecretVersionsListType.default(visited),
          next_token: 'next_token',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Versions'] = Stubs::SecretVersionsListType.stub(stub[:versions]) unless stub[:versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SecretVersionsListType
    class SecretVersionsListType
      def self.default(visited=[])
        return nil if visited.include?('SecretVersionsListType')
        visited = visited + ['SecretVersionsListType']
        [
          Stubs::SecretVersionsListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SecretVersionsListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecretVersionsListEntry
    class SecretVersionsListEntry
      def self.default(visited=[])
        return nil if visited.include?('SecretVersionsListEntry')
        visited = visited + ['SecretVersionsListEntry']
        {
          version_id: 'version_id',
          version_stages: Stubs::SecretVersionStagesType.default(visited),
          last_accessed_date: Time.now,
          created_date: Time.now,
          kms_key_ids: Stubs::KmsKeyIdListType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SecretVersionsListEntry.new
        data = {}
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['VersionStages'] = Stubs::SecretVersionStagesType.stub(stub[:version_stages]) unless stub[:version_stages].nil?
        data['LastAccessedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_accessed_date]).to_i unless stub[:last_accessed_date].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['KmsKeyIds'] = Stubs::KmsKeyIdListType.stub(stub[:kms_key_ids]) unless stub[:kms_key_ids].nil?
        data
      end
    end

    # List Stubber for KmsKeyIdListType
    class KmsKeyIdListType
      def self.default(visited=[])
        return nil if visited.include?('KmsKeyIdListType')
        visited = visited + ['KmsKeyIdListType']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSecrets
    class ListSecrets
      def self.default(visited=[])
        {
          secret_list: Stubs::SecretListType.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SecretList'] = Stubs::SecretListType.stub(stub[:secret_list]) unless stub[:secret_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SecretListType
    class SecretListType
      def self.default(visited=[])
        return nil if visited.include?('SecretListType')
        visited = visited + ['SecretListType']
        [
          Stubs::SecretListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SecretListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecretListEntry
    class SecretListEntry
      def self.default(visited=[])
        return nil if visited.include?('SecretListEntry')
        visited = visited + ['SecretListEntry']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          kms_key_id: 'kms_key_id',
          rotation_enabled: false,
          rotation_lambda_arn: 'rotation_lambda_arn',
          rotation_rules: Stubs::RotationRulesType.default(visited),
          last_rotated_date: Time.now,
          last_changed_date: Time.now,
          last_accessed_date: Time.now,
          deleted_date: Time.now,
          tags: Stubs::TagListType.default(visited),
          secret_versions_to_stages: Stubs::SecretVersionsToStagesMapType.default(visited),
          owning_service: 'owning_service',
          created_date: Time.now,
          primary_region: 'primary_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecretListEntry.new
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['RotationEnabled'] = stub[:rotation_enabled] unless stub[:rotation_enabled].nil?
        data['RotationLambdaARN'] = stub[:rotation_lambda_arn] unless stub[:rotation_lambda_arn].nil?
        data['RotationRules'] = Stubs::RotationRulesType.stub(stub[:rotation_rules]) unless stub[:rotation_rules].nil?
        data['LastRotatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_rotated_date]).to_i unless stub[:last_rotated_date].nil?
        data['LastChangedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_changed_date]).to_i unless stub[:last_changed_date].nil?
        data['LastAccessedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_accessed_date]).to_i unless stub[:last_accessed_date].nil?
        data['DeletedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deleted_date]).to_i unless stub[:deleted_date].nil?
        data['Tags'] = Stubs::TagListType.stub(stub[:tags]) unless stub[:tags].nil?
        data['SecretVersionsToStages'] = Stubs::SecretVersionsToStagesMapType.stub(stub[:secret_versions_to_stages]) unless stub[:secret_versions_to_stages].nil?
        data['OwningService'] = stub[:owning_service] unless stub[:owning_service].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['PrimaryRegion'] = stub[:primary_region] unless stub[:primary_region].nil?
        data
      end
    end

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutSecretValue
    class PutSecretValue
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version_id: 'version_id',
          version_stages: Stubs::SecretVersionStagesType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['VersionStages'] = Stubs::SecretVersionStagesType.stub(stub[:version_stages]) unless stub[:version_stages].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveRegionsFromReplication
    class RemoveRegionsFromReplication
      def self.default(visited=[])
        {
          arn: 'arn',
          replication_status: Stubs::ReplicationStatusListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['ReplicationStatus'] = Stubs::ReplicationStatusListType.stub(stub[:replication_status]) unless stub[:replication_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReplicateSecretToRegions
    class ReplicateSecretToRegions
      def self.default(visited=[])
        {
          arn: 'arn',
          replication_status: Stubs::ReplicationStatusListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['ReplicationStatus'] = Stubs::ReplicationStatusListType.stub(stub[:replication_status]) unless stub[:replication_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreSecret
    class RestoreSecret
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RotateSecret
    class RotateSecret
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version_id: 'version_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopReplicationToReplica
    class StopReplicationToReplica
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSecret
    class UpdateSecret
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version_id: 'version_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSecretVersionStage
    class UpdateSecretVersionStage
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ValidateResourcePolicy
    class ValidateResourcePolicy
      def self.default(visited=[])
        {
          policy_validation_passed: false,
          validation_errors: Stubs::ValidationErrorsType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyValidationPassed'] = stub[:policy_validation_passed] unless stub[:policy_validation_passed].nil?
        data['ValidationErrors'] = Stubs::ValidationErrorsType.stub(stub[:validation_errors]) unless stub[:validation_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ValidationErrorsType
    class ValidationErrorsType
      def self.default(visited=[])
        return nil if visited.include?('ValidationErrorsType')
        visited = visited + ['ValidationErrorsType']
        [
          Stubs::ValidationErrorsEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ValidationErrorsEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValidationErrorsEntry
    class ValidationErrorsEntry
      def self.default(visited=[])
        return nil if visited.include?('ValidationErrorsEntry')
        visited = visited + ['ValidationErrorsEntry']
        {
          check_name: 'check_name',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidationErrorsEntry.new
        data = {}
        data['CheckName'] = stub[:check_name] unless stub[:check_name].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end
  end
end
