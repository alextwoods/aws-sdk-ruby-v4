# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SecretsManager
  module Builders

    # Operation Builder for CancelRotateSecret
    class CancelRotateSecret
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.CancelRotateSecret'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSecret
    class CreateSecret
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.CreateSecret'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['SecretBinary'] = Base64::encode64(input[:secret_binary]).strip unless input[:secret_binary].nil?
        data['SecretString'] = input[:secret_string] unless input[:secret_string].nil?
        data['Tags'] = Builders::TagListType.build(input[:tags]) unless input[:tags].nil?
        data['AddReplicaRegions'] = Builders::AddReplicaRegionListType.build(input[:add_replica_regions]) unless input[:add_replica_regions].nil?
        data['ForceOverwriteReplicaSecret'] = input[:force_overwrite_replica_secret] unless input[:force_overwrite_replica_secret].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AddReplicaRegionListType
    class AddReplicaRegionListType
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReplicaRegionType.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicaRegionType
    class ReplicaRegionType
      def self.build(input)
        data = {}
        data['Region'] = input[:region] unless input[:region].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # List Builder for TagListType
    class TagListType
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.DeleteResourcePolicy'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSecret
    class DeleteSecret
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.DeleteSecret'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['RecoveryWindowInDays'] = input[:recovery_window_in_days] unless input[:recovery_window_in_days].nil?
        data['ForceDeleteWithoutRecovery'] = input[:force_delete_without_recovery] unless input[:force_delete_without_recovery].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSecret
    class DescribeSecret
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.DescribeSecret'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRandomPassword
    class GetRandomPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.GetRandomPassword'
        data = {}
        data['PasswordLength'] = input[:password_length] unless input[:password_length].nil?
        data['ExcludeCharacters'] = input[:exclude_characters] unless input[:exclude_characters].nil?
        data['ExcludeNumbers'] = input[:exclude_numbers] unless input[:exclude_numbers].nil?
        data['ExcludePunctuation'] = input[:exclude_punctuation] unless input[:exclude_punctuation].nil?
        data['ExcludeUppercase'] = input[:exclude_uppercase] unless input[:exclude_uppercase].nil?
        data['ExcludeLowercase'] = input[:exclude_lowercase] unless input[:exclude_lowercase].nil?
        data['IncludeSpace'] = input[:include_space] unless input[:include_space].nil?
        data['RequireEachIncludedType'] = input[:require_each_included_type] unless input[:require_each_included_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourcePolicy
    class GetResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.GetResourcePolicy'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSecretValue
    class GetSecretValue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.GetSecretValue'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['VersionId'] = input[:version_id] unless input[:version_id].nil?
        data['VersionStage'] = input[:version_stage] unless input[:version_stage].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSecretVersionIds
    class ListSecretVersionIds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.ListSecretVersionIds'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['IncludeDeprecated'] = input[:include_deprecated] unless input[:include_deprecated].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSecrets
    class ListSecrets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.ListSecrets'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::FiltersListType.build(input[:filters]) unless input[:filters].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FiltersListType
    class FiltersListType
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::FilterValuesStringList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValuesStringList
    class FilterValuesStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.PutResourcePolicy'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['ResourcePolicy'] = input[:resource_policy] unless input[:resource_policy].nil?
        data['BlockPublicPolicy'] = input[:block_public_policy] unless input[:block_public_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutSecretValue
    class PutSecretValue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.PutSecretValue'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['SecretBinary'] = Base64::encode64(input[:secret_binary]).strip unless input[:secret_binary].nil?
        data['SecretString'] = input[:secret_string] unless input[:secret_string].nil?
        data['VersionStages'] = Builders::SecretVersionStagesType.build(input[:version_stages]) unless input[:version_stages].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SecretVersionStagesType
    class SecretVersionStagesType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RemoveRegionsFromReplication
    class RemoveRegionsFromReplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.RemoveRegionsFromReplication'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['RemoveReplicaRegions'] = Builders::RemoveReplicaRegionListType.build(input[:remove_replica_regions]) unless input[:remove_replica_regions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RemoveReplicaRegionListType
    class RemoveReplicaRegionListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ReplicateSecretToRegions
    class ReplicateSecretToRegions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.ReplicateSecretToRegions'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['AddReplicaRegions'] = Builders::AddReplicaRegionListType.build(input[:add_replica_regions]) unless input[:add_replica_regions].nil?
        data['ForceOverwriteReplicaSecret'] = input[:force_overwrite_replica_secret] unless input[:force_overwrite_replica_secret].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreSecret
    class RestoreSecret
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.RestoreSecret'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RotateSecret
    class RotateSecret
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.RotateSecret'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['RotationLambdaARN'] = input[:rotation_lambda_arn] unless input[:rotation_lambda_arn].nil?
        data['RotationRules'] = Builders::RotationRulesType.build(input[:rotation_rules]) unless input[:rotation_rules].nil?
        data['RotateImmediately'] = input[:rotate_immediately] unless input[:rotate_immediately].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RotationRulesType
    class RotationRulesType
      def self.build(input)
        data = {}
        data['AutomaticallyAfterDays'] = input[:automatically_after_days] unless input[:automatically_after_days].nil?
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data
      end
    end

    # Operation Builder for StopReplicationToReplica
    class StopReplicationToReplica
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.StopReplicationToReplica'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.TagResource'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['Tags'] = Builders::TagListType.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.UntagResource'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['TagKeys'] = Builders::TagKeyListType.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyListType
    class TagKeyListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateSecret
    class UpdateSecret
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.UpdateSecret'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['SecretBinary'] = Base64::encode64(input[:secret_binary]).strip unless input[:secret_binary].nil?
        data['SecretString'] = input[:secret_string] unless input[:secret_string].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSecretVersionStage
    class UpdateSecretVersionStage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.UpdateSecretVersionStage'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['VersionStage'] = input[:version_stage] unless input[:version_stage].nil?
        data['RemoveFromVersionId'] = input[:remove_from_version_id] unless input[:remove_from_version_id].nil?
        data['MoveToVersionId'] = input[:move_to_version_id] unless input[:move_to_version_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ValidateResourcePolicy
    class ValidateResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'secretsmanager.ValidateResourcePolicy'
        data = {}
        data['SecretId'] = input[:secret_id] unless input[:secret_id].nil?
        data['ResourcePolicy'] = input[:resource_policy] unless input[:resource_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
