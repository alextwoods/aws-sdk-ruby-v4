# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AccessAnalyzer
  module Stubs

    # Operation Stubber for ApplyArchiveRule
    class ApplyArchiveRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelPolicyGeneration
    class CancelPolicyGeneration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAccessPreview
    class CreateAccessPreview
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAnalyzer
    class CreateAnalyzer
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateArchiveRule
    class CreateArchiveRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAnalyzer
    class DeleteAnalyzer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteArchiveRule
    class DeleteArchiveRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccessPreview
    class GetAccessPreview
      def self.default(visited=[])
        {
          access_preview: AccessPreview.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessPreview'] = AccessPreview.stub(stub[:access_preview]) unless stub[:access_preview].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AccessPreview
    class AccessPreview
      def self.default(visited=[])
        return nil if visited.include?('AccessPreview')
        visited = visited + ['AccessPreview']
        {
          id: 'id',
          analyzer_arn: 'analyzer_arn',
          configurations: ConfigurationsMap.default(visited),
          created_at: Time.now,
          status: 'status',
          status_reason: AccessPreviewStatusReason.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessPreview.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['analyzerArn'] = stub[:analyzer_arn] unless stub[:analyzer_arn].nil?
        data['configurations'] = ConfigurationsMap.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = AccessPreviewStatusReason.stub(stub[:status_reason]) unless stub[:status_reason].nil?
        data
      end
    end

    # Structure Stubber for AccessPreviewStatusReason
    class AccessPreviewStatusReason
      def self.default(visited=[])
        return nil if visited.include?('AccessPreviewStatusReason')
        visited = visited + ['AccessPreviewStatusReason']
        {
          code: 'code',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessPreviewStatusReason.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data
      end
    end

    # Map Stubber for ConfigurationsMap
    class ConfigurationsMap
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationsMap')
        visited = visited + ['ConfigurationsMap']
        {
          test_key: Configuration.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Configuration.stub(value) unless value.nil?
        end
        data
      end
    end

    # Union Stubber for Configuration
    class Configuration
      def self.default(visited=[])
        return nil if visited.include?('Configuration')
        visited = visited + ['Configuration']
        {
          iam_role: IamRoleConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::Configuration::IamRole
          data['iamRole'] = (IamRoleConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::Configuration::KmsKey
          data['kmsKey'] = (KmsKeyConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::Configuration::SecretsManagerSecret
          data['secretsManagerSecret'] = (SecretsManagerSecretConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::Configuration::S3Bucket
          data['s3Bucket'] = (S3BucketConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::Configuration::SqsQueue
          data['sqsQueue'] = (SqsQueueConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Configuration"
        end

        data
      end
    end

    # Structure Stubber for SqsQueueConfiguration
    class SqsQueueConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SqsQueueConfiguration')
        visited = visited + ['SqsQueueConfiguration']
        {
          queue_policy: 'queue_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::SqsQueueConfiguration.new
        data = {}
        data['queuePolicy'] = stub[:queue_policy] unless stub[:queue_policy].nil?
        data
      end
    end

    # Structure Stubber for S3BucketConfiguration
    class S3BucketConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3BucketConfiguration')
        visited = visited + ['S3BucketConfiguration']
        {
          bucket_policy: 'bucket_policy',
          bucket_acl_grants: S3BucketAclGrantConfigurationsList.default(visited),
          bucket_public_access_block: S3PublicAccessBlockConfiguration.default(visited),
          access_points: S3AccessPointConfigurationsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketConfiguration.new
        data = {}
        data['bucketPolicy'] = stub[:bucket_policy] unless stub[:bucket_policy].nil?
        data['bucketAclGrants'] = S3BucketAclGrantConfigurationsList.stub(stub[:bucket_acl_grants]) unless stub[:bucket_acl_grants].nil?
        data['bucketPublicAccessBlock'] = S3PublicAccessBlockConfiguration.stub(stub[:bucket_public_access_block]) unless stub[:bucket_public_access_block].nil?
        data['accessPoints'] = S3AccessPointConfigurationsMap.stub(stub[:access_points]) unless stub[:access_points].nil?
        data
      end
    end

    # Map Stubber for S3AccessPointConfigurationsMap
    class S3AccessPointConfigurationsMap
      def self.default(visited=[])
        return nil if visited.include?('S3AccessPointConfigurationsMap')
        visited = visited + ['S3AccessPointConfigurationsMap']
        {
          test_key: S3AccessPointConfiguration.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = S3AccessPointConfiguration.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for S3AccessPointConfiguration
    class S3AccessPointConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3AccessPointConfiguration')
        visited = visited + ['S3AccessPointConfiguration']
        {
          access_point_policy: 'access_point_policy',
          public_access_block: S3PublicAccessBlockConfiguration.default(visited),
          network_origin: NetworkOriginConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3AccessPointConfiguration.new
        data = {}
        data['accessPointPolicy'] = stub[:access_point_policy] unless stub[:access_point_policy].nil?
        data['publicAccessBlock'] = S3PublicAccessBlockConfiguration.stub(stub[:public_access_block]) unless stub[:public_access_block].nil?
        data['networkOrigin'] = NetworkOriginConfiguration.stub(stub[:network_origin]) unless stub[:network_origin].nil?
        data
      end
    end

    # Union Stubber for NetworkOriginConfiguration
    class NetworkOriginConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NetworkOriginConfiguration')
        visited = visited + ['NetworkOriginConfiguration']
        {
          vpc_configuration: VpcConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::NetworkOriginConfiguration::VpcConfiguration
          data['vpcConfiguration'] = (VpcConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::NetworkOriginConfiguration::InternetConfiguration
          data['internetConfiguration'] = (InternetConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::NetworkOriginConfiguration"
        end

        data
      end
    end

    # Structure Stubber for InternetConfiguration
    class InternetConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InternetConfiguration')
        visited = visited + ['InternetConfiguration']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::InternetConfiguration.new
        data = {}
        data
      end
    end

    # Structure Stubber for VpcConfiguration
    class VpcConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VpcConfiguration')
        visited = visited + ['VpcConfiguration']
        {
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfiguration.new
        data = {}
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Structure Stubber for S3PublicAccessBlockConfiguration
    class S3PublicAccessBlockConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3PublicAccessBlockConfiguration')
        visited = visited + ['S3PublicAccessBlockConfiguration']
        {
          ignore_public_acls: false,
          restrict_public_buckets: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::S3PublicAccessBlockConfiguration.new
        data = {}
        data['ignorePublicAcls'] = stub[:ignore_public_acls] unless stub[:ignore_public_acls].nil?
        data['restrictPublicBuckets'] = stub[:restrict_public_buckets] unless stub[:restrict_public_buckets].nil?
        data
      end
    end

    # List Stubber for S3BucketAclGrantConfigurationsList
    class S3BucketAclGrantConfigurationsList
      def self.default(visited=[])
        return nil if visited.include?('S3BucketAclGrantConfigurationsList')
        visited = visited + ['S3BucketAclGrantConfigurationsList']
        [
          S3BucketAclGrantConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << S3BucketAclGrantConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3BucketAclGrantConfiguration
    class S3BucketAclGrantConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3BucketAclGrantConfiguration')
        visited = visited + ['S3BucketAclGrantConfiguration']
        {
          permission: 'permission',
          grantee: AclGrantee.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketAclGrantConfiguration.new
        data = {}
        data['permission'] = stub[:permission] unless stub[:permission].nil?
        data['grantee'] = AclGrantee.stub(stub[:grantee]) unless stub[:grantee].nil?
        data
      end
    end

    # Union Stubber for AclGrantee
    class AclGrantee
      def self.default(visited=[])
        return nil if visited.include?('AclGrantee')
        visited = visited + ['AclGrantee']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AclGrantee::Id
          data['id'] = stub.__getobj__
        when Types::AclGrantee::Uri
          data['uri'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AclGrantee"
        end

        data
      end
    end

    # Structure Stubber for SecretsManagerSecretConfiguration
    class SecretsManagerSecretConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SecretsManagerSecretConfiguration')
        visited = visited + ['SecretsManagerSecretConfiguration']
        {
          kms_key_id: 'kms_key_id',
          secret_policy: 'secret_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecretsManagerSecretConfiguration.new
        data = {}
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['secretPolicy'] = stub[:secret_policy] unless stub[:secret_policy].nil?
        data
      end
    end

    # Structure Stubber for KmsKeyConfiguration
    class KmsKeyConfiguration
      def self.default(visited=[])
        return nil if visited.include?('KmsKeyConfiguration')
        visited = visited + ['KmsKeyConfiguration']
        {
          key_policies: KmsKeyPoliciesMap.default(visited),
          grants: KmsGrantConfigurationsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KmsKeyConfiguration.new
        data = {}
        data['keyPolicies'] = KmsKeyPoliciesMap.stub(stub[:key_policies]) unless stub[:key_policies].nil?
        data['grants'] = KmsGrantConfigurationsList.stub(stub[:grants]) unless stub[:grants].nil?
        data
      end
    end

    # List Stubber for KmsGrantConfigurationsList
    class KmsGrantConfigurationsList
      def self.default(visited=[])
        return nil if visited.include?('KmsGrantConfigurationsList')
        visited = visited + ['KmsGrantConfigurationsList']
        [
          KmsGrantConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KmsGrantConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KmsGrantConfiguration
    class KmsGrantConfiguration
      def self.default(visited=[])
        return nil if visited.include?('KmsGrantConfiguration')
        visited = visited + ['KmsGrantConfiguration']
        {
          operations: KmsGrantOperationsList.default(visited),
          grantee_principal: 'grantee_principal',
          retiring_principal: 'retiring_principal',
          constraints: KmsGrantConstraints.default(visited),
          issuing_account: 'issuing_account',
        }
      end

      def self.stub(stub)
        stub ||= Types::KmsGrantConfiguration.new
        data = {}
        data['operations'] = KmsGrantOperationsList.stub(stub[:operations]) unless stub[:operations].nil?
        data['granteePrincipal'] = stub[:grantee_principal] unless stub[:grantee_principal].nil?
        data['retiringPrincipal'] = stub[:retiring_principal] unless stub[:retiring_principal].nil?
        data['constraints'] = KmsGrantConstraints.stub(stub[:constraints]) unless stub[:constraints].nil?
        data['issuingAccount'] = stub[:issuing_account] unless stub[:issuing_account].nil?
        data
      end
    end

    # Structure Stubber for KmsGrantConstraints
    class KmsGrantConstraints
      def self.default(visited=[])
        return nil if visited.include?('KmsGrantConstraints')
        visited = visited + ['KmsGrantConstraints']
        {
          encryption_context_equals: KmsConstraintsMap.default(visited),
          encryption_context_subset: KmsConstraintsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KmsGrantConstraints.new
        data = {}
        data['encryptionContextEquals'] = KmsConstraintsMap.stub(stub[:encryption_context_equals]) unless stub[:encryption_context_equals].nil?
        data['encryptionContextSubset'] = KmsConstraintsMap.stub(stub[:encryption_context_subset]) unless stub[:encryption_context_subset].nil?
        data
      end
    end

    # Map Stubber for KmsConstraintsMap
    class KmsConstraintsMap
      def self.default(visited=[])
        return nil if visited.include?('KmsConstraintsMap')
        visited = visited + ['KmsConstraintsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for KmsGrantOperationsList
    class KmsGrantOperationsList
      def self.default(visited=[])
        return nil if visited.include?('KmsGrantOperationsList')
        visited = visited + ['KmsGrantOperationsList']
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

    # Map Stubber for KmsKeyPoliciesMap
    class KmsKeyPoliciesMap
      def self.default(visited=[])
        return nil if visited.include?('KmsKeyPoliciesMap')
        visited = visited + ['KmsKeyPoliciesMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for IamRoleConfiguration
    class IamRoleConfiguration
      def self.default(visited=[])
        return nil if visited.include?('IamRoleConfiguration')
        visited = visited + ['IamRoleConfiguration']
        {
          trust_policy: 'trust_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::IamRoleConfiguration.new
        data = {}
        data['trustPolicy'] = stub[:trust_policy] unless stub[:trust_policy].nil?
        data
      end
    end

    # Operation Stubber for GetAnalyzedResource
    class GetAnalyzedResource
      def self.default(visited=[])
        {
          resource: AnalyzedResource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resource'] = AnalyzedResource.stub(stub[:resource]) unless stub[:resource].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AnalyzedResource
    class AnalyzedResource
      def self.default(visited=[])
        return nil if visited.include?('AnalyzedResource')
        visited = visited + ['AnalyzedResource']
        {
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
          created_at: Time.now,
          analyzed_at: Time.now,
          updated_at: Time.now,
          is_public: false,
          actions: ActionList.default(visited),
          shared_via: SharedViaList.default(visited),
          status: 'status',
          resource_owner_account: 'resource_owner_account',
          error: 'error',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnalyzedResource.new
        data = {}
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['analyzedAt'] = Hearth::TimeHelper.to_date_time(stub[:analyzed_at]) unless stub[:analyzed_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['isPublic'] = stub[:is_public] unless stub[:is_public].nil?
        data['actions'] = ActionList.stub(stub[:actions]) unless stub[:actions].nil?
        data['sharedVia'] = SharedViaList.stub(stub[:shared_via]) unless stub[:shared_via].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resourceOwnerAccount'] = stub[:resource_owner_account] unless stub[:resource_owner_account].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data
      end
    end

    # List Stubber for SharedViaList
    class SharedViaList
      def self.default(visited=[])
        return nil if visited.include?('SharedViaList')
        visited = visited + ['SharedViaList']
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

    # List Stubber for ActionList
    class ActionList
      def self.default(visited=[])
        return nil if visited.include?('ActionList')
        visited = visited + ['ActionList']
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

    # Operation Stubber for GetAnalyzer
    class GetAnalyzer
      def self.default(visited=[])
        {
          analyzer: AnalyzerSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['analyzer'] = AnalyzerSummary.stub(stub[:analyzer]) unless stub[:analyzer].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AnalyzerSummary
    class AnalyzerSummary
      def self.default(visited=[])
        return nil if visited.include?('AnalyzerSummary')
        visited = visited + ['AnalyzerSummary']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          created_at: Time.now,
          last_resource_analyzed: 'last_resource_analyzed',
          last_resource_analyzed_at: Time.now,
          tags: TagsMap.default(visited),
          status: 'status',
          status_reason: StatusReason.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AnalyzerSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['lastResourceAnalyzed'] = stub[:last_resource_analyzed] unless stub[:last_resource_analyzed].nil?
        data['lastResourceAnalyzedAt'] = Hearth::TimeHelper.to_date_time(stub[:last_resource_analyzed_at]) unless stub[:last_resource_analyzed_at].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = StatusReason.stub(stub[:status_reason]) unless stub[:status_reason].nil?
        data
      end
    end

    # Structure Stubber for StatusReason
    class StatusReason
      def self.default(visited=[])
        return nil if visited.include?('StatusReason')
        visited = visited + ['StatusReason']
        {
          code: 'code',
        }
      end

      def self.stub(stub)
        stub ||= Types::StatusReason.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data
      end
    end

    # Map Stubber for TagsMap
    class TagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagsMap')
        visited = visited + ['TagsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetArchiveRule
    class GetArchiveRule
      def self.default(visited=[])
        {
          archive_rule: ArchiveRuleSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['archiveRule'] = ArchiveRuleSummary.stub(stub[:archive_rule]) unless stub[:archive_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ArchiveRuleSummary
    class ArchiveRuleSummary
      def self.default(visited=[])
        return nil if visited.include?('ArchiveRuleSummary')
        visited = visited + ['ArchiveRuleSummary']
        {
          rule_name: 'rule_name',
          filter: FilterCriteriaMap.default(visited),
          created_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ArchiveRuleSummary.new
        data = {}
        data['ruleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['filter'] = FilterCriteriaMap.stub(stub[:filter]) unless stub[:filter].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data
      end
    end

    # Map Stubber for FilterCriteriaMap
    class FilterCriteriaMap
      def self.default(visited=[])
        return nil if visited.include?('FilterCriteriaMap')
        visited = visited + ['FilterCriteriaMap']
        {
          test_key: Criterion.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Criterion.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Criterion
    class Criterion
      def self.default(visited=[])
        return nil if visited.include?('Criterion')
        visited = visited + ['Criterion']
        {
          eq: ValueList.default(visited),
          neq: ValueList.default(visited),
          contains: ValueList.default(visited),
          exists: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Criterion.new
        data = {}
        data['eq'] = ValueList.stub(stub[:eq]) unless stub[:eq].nil?
        data['neq'] = ValueList.stub(stub[:neq]) unless stub[:neq].nil?
        data['contains'] = ValueList.stub(stub[:contains]) unless stub[:contains].nil?
        data['exists'] = stub[:exists] unless stub[:exists].nil?
        data
      end
    end

    # List Stubber for ValueList
    class ValueList
      def self.default(visited=[])
        return nil if visited.include?('ValueList')
        visited = visited + ['ValueList']
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

    # Operation Stubber for GetFinding
    class GetFinding
      def self.default(visited=[])
        {
          finding: Finding.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['finding'] = Finding.stub(stub[:finding]) unless stub[:finding].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Finding
    class Finding
      def self.default(visited=[])
        return nil if visited.include?('Finding')
        visited = visited + ['Finding']
        {
          id: 'id',
          principal: PrincipalMap.default(visited),
          action: ActionList.default(visited),
          resource: 'resource',
          is_public: false,
          resource_type: 'resource_type',
          condition: ConditionKeyMap.default(visited),
          created_at: Time.now,
          analyzed_at: Time.now,
          updated_at: Time.now,
          status: 'status',
          resource_owner_account: 'resource_owner_account',
          error: 'error',
          sources: FindingSourceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Finding.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['principal'] = PrincipalMap.stub(stub[:principal]) unless stub[:principal].nil?
        data['action'] = ActionList.stub(stub[:action]) unless stub[:action].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['isPublic'] = stub[:is_public] unless stub[:is_public].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['condition'] = ConditionKeyMap.stub(stub[:condition]) unless stub[:condition].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['analyzedAt'] = Hearth::TimeHelper.to_date_time(stub[:analyzed_at]) unless stub[:analyzed_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resourceOwnerAccount'] = stub[:resource_owner_account] unless stub[:resource_owner_account].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['sources'] = FindingSourceList.stub(stub[:sources]) unless stub[:sources].nil?
        data
      end
    end

    # List Stubber for FindingSourceList
    class FindingSourceList
      def self.default(visited=[])
        return nil if visited.include?('FindingSourceList')
        visited = visited + ['FindingSourceList']
        [
          FindingSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FindingSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FindingSource
    class FindingSource
      def self.default(visited=[])
        return nil if visited.include?('FindingSource')
        visited = visited + ['FindingSource']
        {
          type: 'type',
          detail: FindingSourceDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingSource.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['detail'] = FindingSourceDetail.stub(stub[:detail]) unless stub[:detail].nil?
        data
      end
    end

    # Structure Stubber for FindingSourceDetail
    class FindingSourceDetail
      def self.default(visited=[])
        return nil if visited.include?('FindingSourceDetail')
        visited = visited + ['FindingSourceDetail']
        {
          access_point_arn: 'access_point_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingSourceDetail.new
        data = {}
        data['accessPointArn'] = stub[:access_point_arn] unless stub[:access_point_arn].nil?
        data
      end
    end

    # Map Stubber for ConditionKeyMap
    class ConditionKeyMap
      def self.default(visited=[])
        return nil if visited.include?('ConditionKeyMap')
        visited = visited + ['ConditionKeyMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for PrincipalMap
    class PrincipalMap
      def self.default(visited=[])
        return nil if visited.include?('PrincipalMap')
        visited = visited + ['PrincipalMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetGeneratedPolicy
    class GetGeneratedPolicy
      def self.default(visited=[])
        {
          job_details: JobDetails.default(visited),
          generated_policy_result: GeneratedPolicyResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobDetails'] = JobDetails.stub(stub[:job_details]) unless stub[:job_details].nil?
        data['generatedPolicyResult'] = GeneratedPolicyResult.stub(stub[:generated_policy_result]) unless stub[:generated_policy_result].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GeneratedPolicyResult
    class GeneratedPolicyResult
      def self.default(visited=[])
        return nil if visited.include?('GeneratedPolicyResult')
        visited = visited + ['GeneratedPolicyResult']
        {
          properties: GeneratedPolicyProperties.default(visited),
          generated_policies: GeneratedPolicyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GeneratedPolicyResult.new
        data = {}
        data['properties'] = GeneratedPolicyProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['generatedPolicies'] = GeneratedPolicyList.stub(stub[:generated_policies]) unless stub[:generated_policies].nil?
        data
      end
    end

    # List Stubber for GeneratedPolicyList
    class GeneratedPolicyList
      def self.default(visited=[])
        return nil if visited.include?('GeneratedPolicyList')
        visited = visited + ['GeneratedPolicyList']
        [
          GeneratedPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GeneratedPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GeneratedPolicy
    class GeneratedPolicy
      def self.default(visited=[])
        return nil if visited.include?('GeneratedPolicy')
        visited = visited + ['GeneratedPolicy']
        {
          policy: 'policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::GeneratedPolicy.new
        data = {}
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data
      end
    end

    # Structure Stubber for GeneratedPolicyProperties
    class GeneratedPolicyProperties
      def self.default(visited=[])
        return nil if visited.include?('GeneratedPolicyProperties')
        visited = visited + ['GeneratedPolicyProperties']
        {
          is_complete: false,
          principal_arn: 'principal_arn',
          cloud_trail_properties: CloudTrailProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GeneratedPolicyProperties.new
        data = {}
        data['isComplete'] = stub[:is_complete] unless stub[:is_complete].nil?
        data['principalArn'] = stub[:principal_arn] unless stub[:principal_arn].nil?
        data['cloudTrailProperties'] = CloudTrailProperties.stub(stub[:cloud_trail_properties]) unless stub[:cloud_trail_properties].nil?
        data
      end
    end

    # Structure Stubber for CloudTrailProperties
    class CloudTrailProperties
      def self.default(visited=[])
        return nil if visited.include?('CloudTrailProperties')
        visited = visited + ['CloudTrailProperties']
        {
          trail_properties: TrailPropertiesList.default(visited),
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudTrailProperties.new
        data = {}
        data['trailProperties'] = TrailPropertiesList.stub(stub[:trail_properties]) unless stub[:trail_properties].nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data
      end
    end

    # List Stubber for TrailPropertiesList
    class TrailPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('TrailPropertiesList')
        visited = visited + ['TrailPropertiesList']
        [
          TrailProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TrailProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrailProperties
    class TrailProperties
      def self.default(visited=[])
        return nil if visited.include?('TrailProperties')
        visited = visited + ['TrailProperties']
        {
          cloud_trail_arn: 'cloud_trail_arn',
          regions: RegionList.default(visited),
          all_regions: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TrailProperties.new
        data = {}
        data['cloudTrailArn'] = stub[:cloud_trail_arn] unless stub[:cloud_trail_arn].nil?
        data['regions'] = RegionList.stub(stub[:regions]) unless stub[:regions].nil?
        data['allRegions'] = stub[:all_regions] unless stub[:all_regions].nil?
        data
      end
    end

    # List Stubber for RegionList
    class RegionList
      def self.default(visited=[])
        return nil if visited.include?('RegionList')
        visited = visited + ['RegionList']
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

    # Structure Stubber for JobDetails
    class JobDetails
      def self.default(visited=[])
        return nil if visited.include?('JobDetails')
        visited = visited + ['JobDetails']
        {
          job_id: 'job_id',
          status: 'status',
          started_on: Time.now,
          completed_on: Time.now,
          job_error: JobError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobDetails.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startedOn'] = Hearth::TimeHelper.to_date_time(stub[:started_on]) unless stub[:started_on].nil?
        data['completedOn'] = Hearth::TimeHelper.to_date_time(stub[:completed_on]) unless stub[:completed_on].nil?
        data['jobError'] = JobError.stub(stub[:job_error]) unless stub[:job_error].nil?
        data
      end
    end

    # Structure Stubber for JobError
    class JobError
      def self.default(visited=[])
        return nil if visited.include?('JobError')
        visited = visited + ['JobError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobError.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for ListAccessPreviewFindings
    class ListAccessPreviewFindings
      def self.default(visited=[])
        {
          findings: AccessPreviewFindingsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findings'] = AccessPreviewFindingsList.stub(stub[:findings]) unless stub[:findings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AccessPreviewFindingsList
    class AccessPreviewFindingsList
      def self.default(visited=[])
        return nil if visited.include?('AccessPreviewFindingsList')
        visited = visited + ['AccessPreviewFindingsList']
        [
          AccessPreviewFinding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccessPreviewFinding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccessPreviewFinding
    class AccessPreviewFinding
      def self.default(visited=[])
        return nil if visited.include?('AccessPreviewFinding')
        visited = visited + ['AccessPreviewFinding']
        {
          id: 'id',
          existing_finding_id: 'existing_finding_id',
          existing_finding_status: 'existing_finding_status',
          principal: PrincipalMap.default(visited),
          action: ActionList.default(visited),
          condition: ConditionKeyMap.default(visited),
          resource: 'resource',
          is_public: false,
          resource_type: 'resource_type',
          created_at: Time.now,
          change_type: 'change_type',
          status: 'status',
          resource_owner_account: 'resource_owner_account',
          error: 'error',
          sources: FindingSourceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessPreviewFinding.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['existingFindingId'] = stub[:existing_finding_id] unless stub[:existing_finding_id].nil?
        data['existingFindingStatus'] = stub[:existing_finding_status] unless stub[:existing_finding_status].nil?
        data['principal'] = PrincipalMap.stub(stub[:principal]) unless stub[:principal].nil?
        data['action'] = ActionList.stub(stub[:action]) unless stub[:action].nil?
        data['condition'] = ConditionKeyMap.stub(stub[:condition]) unless stub[:condition].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['isPublic'] = stub[:is_public] unless stub[:is_public].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['changeType'] = stub[:change_type] unless stub[:change_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resourceOwnerAccount'] = stub[:resource_owner_account] unless stub[:resource_owner_account].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['sources'] = FindingSourceList.stub(stub[:sources]) unless stub[:sources].nil?
        data
      end
    end

    # Operation Stubber for ListAccessPreviews
    class ListAccessPreviews
      def self.default(visited=[])
        {
          access_previews: AccessPreviewsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessPreviews'] = AccessPreviewsList.stub(stub[:access_previews]) unless stub[:access_previews].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AccessPreviewsList
    class AccessPreviewsList
      def self.default(visited=[])
        return nil if visited.include?('AccessPreviewsList')
        visited = visited + ['AccessPreviewsList']
        [
          AccessPreviewSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccessPreviewSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccessPreviewSummary
    class AccessPreviewSummary
      def self.default(visited=[])
        return nil if visited.include?('AccessPreviewSummary')
        visited = visited + ['AccessPreviewSummary']
        {
          id: 'id',
          analyzer_arn: 'analyzer_arn',
          created_at: Time.now,
          status: 'status',
          status_reason: AccessPreviewStatusReason.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessPreviewSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['analyzerArn'] = stub[:analyzer_arn] unless stub[:analyzer_arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = AccessPreviewStatusReason.stub(stub[:status_reason]) unless stub[:status_reason].nil?
        data
      end
    end

    # Operation Stubber for ListAnalyzedResources
    class ListAnalyzedResources
      def self.default(visited=[])
        {
          analyzed_resources: AnalyzedResourcesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['analyzedResources'] = AnalyzedResourcesList.stub(stub[:analyzed_resources]) unless stub[:analyzed_resources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AnalyzedResourcesList
    class AnalyzedResourcesList
      def self.default(visited=[])
        return nil if visited.include?('AnalyzedResourcesList')
        visited = visited + ['AnalyzedResourcesList']
        [
          AnalyzedResourceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AnalyzedResourceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnalyzedResourceSummary
    class AnalyzedResourceSummary
      def self.default(visited=[])
        return nil if visited.include?('AnalyzedResourceSummary')
        visited = visited + ['AnalyzedResourceSummary']
        {
          resource_arn: 'resource_arn',
          resource_owner_account: 'resource_owner_account',
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnalyzedResourceSummary.new
        data = {}
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['resourceOwnerAccount'] = stub[:resource_owner_account] unless stub[:resource_owner_account].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Operation Stubber for ListAnalyzers
    class ListAnalyzers
      def self.default(visited=[])
        {
          analyzers: AnalyzersList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['analyzers'] = AnalyzersList.stub(stub[:analyzers]) unless stub[:analyzers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AnalyzersList
    class AnalyzersList
      def self.default(visited=[])
        return nil if visited.include?('AnalyzersList')
        visited = visited + ['AnalyzersList']
        [
          AnalyzerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AnalyzerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListArchiveRules
    class ListArchiveRules
      def self.default(visited=[])
        {
          archive_rules: ArchiveRulesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['archiveRules'] = ArchiveRulesList.stub(stub[:archive_rules]) unless stub[:archive_rules].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ArchiveRulesList
    class ArchiveRulesList
      def self.default(visited=[])
        return nil if visited.include?('ArchiveRulesList')
        visited = visited + ['ArchiveRulesList']
        [
          ArchiveRuleSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ArchiveRuleSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFindings
    class ListFindings
      def self.default(visited=[])
        {
          findings: FindingsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findings'] = FindingsList.stub(stub[:findings]) unless stub[:findings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FindingsList
    class FindingsList
      def self.default(visited=[])
        return nil if visited.include?('FindingsList')
        visited = visited + ['FindingsList']
        [
          FindingSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FindingSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FindingSummary
    class FindingSummary
      def self.default(visited=[])
        return nil if visited.include?('FindingSummary')
        visited = visited + ['FindingSummary']
        {
          id: 'id',
          principal: PrincipalMap.default(visited),
          action: ActionList.default(visited),
          resource: 'resource',
          is_public: false,
          resource_type: 'resource_type',
          condition: ConditionKeyMap.default(visited),
          created_at: Time.now,
          analyzed_at: Time.now,
          updated_at: Time.now,
          status: 'status',
          resource_owner_account: 'resource_owner_account',
          error: 'error',
          sources: FindingSourceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['principal'] = PrincipalMap.stub(stub[:principal]) unless stub[:principal].nil?
        data['action'] = ActionList.stub(stub[:action]) unless stub[:action].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['isPublic'] = stub[:is_public] unless stub[:is_public].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['condition'] = ConditionKeyMap.stub(stub[:condition]) unless stub[:condition].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['analyzedAt'] = Hearth::TimeHelper.to_date_time(stub[:analyzed_at]) unless stub[:analyzed_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resourceOwnerAccount'] = stub[:resource_owner_account] unless stub[:resource_owner_account].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['sources'] = FindingSourceList.stub(stub[:sources]) unless stub[:sources].nil?
        data
      end
    end

    # Operation Stubber for ListPolicyGenerations
    class ListPolicyGenerations
      def self.default(visited=[])
        {
          policy_generations: PolicyGenerationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policyGenerations'] = PolicyGenerationList.stub(stub[:policy_generations]) unless stub[:policy_generations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PolicyGenerationList
    class PolicyGenerationList
      def self.default(visited=[])
        return nil if visited.include?('PolicyGenerationList')
        visited = visited + ['PolicyGenerationList']
        [
          PolicyGeneration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PolicyGeneration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PolicyGeneration
    class PolicyGeneration
      def self.default(visited=[])
        return nil if visited.include?('PolicyGeneration')
        visited = visited + ['PolicyGeneration']
        {
          job_id: 'job_id',
          principal_arn: 'principal_arn',
          status: 'status',
          started_on: Time.now,
          completed_on: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyGeneration.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['principalArn'] = stub[:principal_arn] unless stub[:principal_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startedOn'] = Hearth::TimeHelper.to_date_time(stub[:started_on]) unless stub[:started_on].nil?
        data['completedOn'] = Hearth::TimeHelper.to_date_time(stub[:completed_on]) unless stub[:completed_on].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartPolicyGeneration
    class StartPolicyGeneration
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartResourceScan
    class StartResourceScan
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateArchiveRule
    class UpdateArchiveRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFindings
    class UpdateFindings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ValidatePolicy
    class ValidatePolicy
      def self.default(visited=[])
        {
          findings: ValidatePolicyFindingList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findings'] = ValidatePolicyFindingList.stub(stub[:findings]) unless stub[:findings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ValidatePolicyFindingList
    class ValidatePolicyFindingList
      def self.default(visited=[])
        return nil if visited.include?('ValidatePolicyFindingList')
        visited = visited + ['ValidatePolicyFindingList']
        [
          ValidatePolicyFinding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ValidatePolicyFinding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValidatePolicyFinding
    class ValidatePolicyFinding
      def self.default(visited=[])
        return nil if visited.include?('ValidatePolicyFinding')
        visited = visited + ['ValidatePolicyFinding']
        {
          finding_details: 'finding_details',
          finding_type: 'finding_type',
          issue_code: 'issue_code',
          learn_more_link: 'learn_more_link',
          locations: LocationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidatePolicyFinding.new
        data = {}
        data['findingDetails'] = stub[:finding_details] unless stub[:finding_details].nil?
        data['findingType'] = stub[:finding_type] unless stub[:finding_type].nil?
        data['issueCode'] = stub[:issue_code] unless stub[:issue_code].nil?
        data['learnMoreLink'] = stub[:learn_more_link] unless stub[:learn_more_link].nil?
        data['locations'] = LocationList.stub(stub[:locations]) unless stub[:locations].nil?
        data
      end
    end

    # List Stubber for LocationList
    class LocationList
      def self.default(visited=[])
        return nil if visited.include?('LocationList')
        visited = visited + ['LocationList']
        [
          Location.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Location.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Location
    class Location
      def self.default(visited=[])
        return nil if visited.include?('Location')
        visited = visited + ['Location']
        {
          path: PathElementList.default(visited),
          span: Span.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Location.new
        data = {}
        data['path'] = PathElementList.stub(stub[:path]) unless stub[:path].nil?
        data['span'] = Span.stub(stub[:span]) unless stub[:span].nil?
        data
      end
    end

    # Structure Stubber for Span
    class Span
      def self.default(visited=[])
        return nil if visited.include?('Span')
        visited = visited + ['Span']
        {
          start: Position.default(visited),
          end: Position.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Span.new
        data = {}
        data['start'] = Position.stub(stub[:start]) unless stub[:start].nil?
        data['end'] = Position.stub(stub[:end]) unless stub[:end].nil?
        data
      end
    end

    # Structure Stubber for Position
    class Position
      def self.default(visited=[])
        return nil if visited.include?('Position')
        visited = visited + ['Position']
        {
          line: 1,
          column: 1,
          offset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Position.new
        data = {}
        data['line'] = stub[:line] unless stub[:line].nil?
        data['column'] = stub[:column] unless stub[:column].nil?
        data['offset'] = stub[:offset] unless stub[:offset].nil?
        data
      end
    end

    # List Stubber for PathElementList
    class PathElementList
      def self.default(visited=[])
        return nil if visited.include?('PathElementList')
        visited = visited + ['PathElementList']
        [
          PathElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PathElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for PathElement
    class PathElement
      def self.default(visited=[])
        return nil if visited.include?('PathElement')
        visited = visited + ['PathElement']
        {
          index: 1,
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::PathElement::Index
          data['index'] = stub.__getobj__
        when Types::PathElement::Key
          data['key'] = stub.__getobj__
        when Types::PathElement::Substring
          data['substring'] = (Substring.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::PathElement::Value
          data['value'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::PathElement"
        end

        data
      end
    end

    # Structure Stubber for Substring
    class Substring
      def self.default(visited=[])
        return nil if visited.include?('Substring')
        visited = visited + ['Substring']
        {
          start: 1,
          length: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Substring.new
        data = {}
        data['start'] = stub[:start] unless stub[:start].nil?
        data['length'] = stub[:length] unless stub[:length].nil?
        data
      end
    end
  end
end
