# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AccessAnalyzer
  module Parsers

    # Operation Parser for ApplyArchiveRule
    class ApplyArchiveRule
      def self.parse(http_resp)
        data = Types::ApplyArchiveRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.field_list = (Parsers::ValidationExceptionFieldList.parse(map['fieldList']) unless map['fieldList'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CancelPolicyGeneration
    class CancelPolicyGeneration
      def self.parse(http_resp)
        data = Types::CancelPolicyGenerationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateAccessPreview
    class CreateAccessPreview
      def self.parse(http_resp)
        data = Types::CreateAccessPreviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for CreateAnalyzer
    class CreateAnalyzer
      def self.parse(http_resp)
        data = Types::CreateAnalyzerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for CreateArchiveRule
    class CreateArchiveRule
      def self.parse(http_resp)
        data = Types::CreateArchiveRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAnalyzer
    class DeleteAnalyzer
      def self.parse(http_resp)
        data = Types::DeleteAnalyzerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteArchiveRule
    class DeleteArchiveRule
      def self.parse(http_resp)
        data = Types::DeleteArchiveRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAccessPreview
    class GetAccessPreview
      def self.parse(http_resp)
        data = Types::GetAccessPreviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_preview = (Parsers::AccessPreview.parse(map['accessPreview']) unless map['accessPreview'].nil?)
        data
      end
    end

    class AccessPreview
      def self.parse(map)
        data = Types::AccessPreview.new
        data.id = map['id']
        data.analyzer_arn = map['analyzerArn']
        data.configurations = (Parsers::ConfigurationsMap.parse(map['configurations']) unless map['configurations'].nil?)
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.status = map['status']
        data.status_reason = (Parsers::AccessPreviewStatusReason.parse(map['statusReason']) unless map['statusReason'].nil?)
        return data
      end
    end

    class AccessPreviewStatusReason
      def self.parse(map)
        data = Types::AccessPreviewStatusReason.new
        data.code = map['code']
        return data
      end
    end

    class ConfigurationsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::Configuration.parse(value) unless value.nil?
        end
        data
      end
    end

    class Configuration
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'iamRole'
          value = (Parsers::IamRoleConfiguration.parse(value) unless value.nil?)
          Types::Configuration::IamRole.new(value) if value
        when 'kmsKey'
          value = (Parsers::KmsKeyConfiguration.parse(value) unless value.nil?)
          Types::Configuration::KmsKey.new(value) if value
        when 'secretsManagerSecret'
          value = (Parsers::SecretsManagerSecretConfiguration.parse(value) unless value.nil?)
          Types::Configuration::SecretsManagerSecret.new(value) if value
        when 's3Bucket'
          value = (Parsers::S3BucketConfiguration.parse(value) unless value.nil?)
          Types::Configuration::S3Bucket.new(value) if value
        when 'sqsQueue'
          value = (Parsers::SqsQueueConfiguration.parse(value) unless value.nil?)
          Types::Configuration::SqsQueue.new(value) if value
        else
          Types::Configuration::Unknown.new({name: key, value: value})
        end
      end
    end

    class SqsQueueConfiguration
      def self.parse(map)
        data = Types::SqsQueueConfiguration.new
        data.queue_policy = map['queuePolicy']
        return data
      end
    end

    class S3BucketConfiguration
      def self.parse(map)
        data = Types::S3BucketConfiguration.new
        data.bucket_policy = map['bucketPolicy']
        data.bucket_acl_grants = (Parsers::S3BucketAclGrantConfigurationsList.parse(map['bucketAclGrants']) unless map['bucketAclGrants'].nil?)
        data.bucket_public_access_block = (Parsers::S3PublicAccessBlockConfiguration.parse(map['bucketPublicAccessBlock']) unless map['bucketPublicAccessBlock'].nil?)
        data.access_points = (Parsers::S3AccessPointConfigurationsMap.parse(map['accessPoints']) unless map['accessPoints'].nil?)
        return data
      end
    end

    class S3AccessPointConfigurationsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::S3AccessPointConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class S3AccessPointConfiguration
      def self.parse(map)
        data = Types::S3AccessPointConfiguration.new
        data.access_point_policy = map['accessPointPolicy']
        data.public_access_block = (Parsers::S3PublicAccessBlockConfiguration.parse(map['publicAccessBlock']) unless map['publicAccessBlock'].nil?)
        data.network_origin = (Parsers::NetworkOriginConfiguration.parse(map['networkOrigin']) unless map['networkOrigin'].nil?)
        return data
      end
    end

    class NetworkOriginConfiguration
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'vpcConfiguration'
          value = (Parsers::VpcConfiguration.parse(value) unless value.nil?)
          Types::NetworkOriginConfiguration::VpcConfiguration.new(value) if value
        when 'internetConfiguration'
          value = (Parsers::InternetConfiguration.parse(value) unless value.nil?)
          Types::NetworkOriginConfiguration::InternetConfiguration.new(value) if value
        else
          Types::NetworkOriginConfiguration::Unknown.new({name: key, value: value})
        end
      end
    end

    class InternetConfiguration
      def self.parse(map)
        data = Types::InternetConfiguration.new
        return data
      end
    end

    class VpcConfiguration
      def self.parse(map)
        data = Types::VpcConfiguration.new
        data.vpc_id = map['vpcId']
        return data
      end
    end

    class S3PublicAccessBlockConfiguration
      def self.parse(map)
        data = Types::S3PublicAccessBlockConfiguration.new
        data.ignore_public_acls = map['ignorePublicAcls']
        data.restrict_public_buckets = map['restrictPublicBuckets']
        return data
      end
    end

    class S3BucketAclGrantConfigurationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::S3BucketAclGrantConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class S3BucketAclGrantConfiguration
      def self.parse(map)
        data = Types::S3BucketAclGrantConfiguration.new
        data.permission = map['permission']
        data.grantee = (Parsers::AclGrantee.parse(map['grantee']) unless map['grantee'].nil?)
        return data
      end
    end

    class AclGrantee
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'id'
          value = value
          Types::AclGrantee::Id.new(value) if value
        when 'uri'
          value = value
          Types::AclGrantee::Uri.new(value) if value
        else
          Types::AclGrantee::Unknown.new({name: key, value: value})
        end
      end
    end

    class SecretsManagerSecretConfiguration
      def self.parse(map)
        data = Types::SecretsManagerSecretConfiguration.new
        data.kms_key_id = map['kmsKeyId']
        data.secret_policy = map['secretPolicy']
        return data
      end
    end

    class KmsKeyConfiguration
      def self.parse(map)
        data = Types::KmsKeyConfiguration.new
        data.key_policies = (Parsers::KmsKeyPoliciesMap.parse(map['keyPolicies']) unless map['keyPolicies'].nil?)
        data.grants = (Parsers::KmsGrantConfigurationsList.parse(map['grants']) unless map['grants'].nil?)
        return data
      end
    end

    class KmsGrantConfigurationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::KmsGrantConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class KmsGrantConfiguration
      def self.parse(map)
        data = Types::KmsGrantConfiguration.new
        data.operations = (Parsers::KmsGrantOperationsList.parse(map['operations']) unless map['operations'].nil?)
        data.grantee_principal = map['granteePrincipal']
        data.retiring_principal = map['retiringPrincipal']
        data.constraints = (Parsers::KmsGrantConstraints.parse(map['constraints']) unless map['constraints'].nil?)
        data.issuing_account = map['issuingAccount']
        return data
      end
    end

    class KmsGrantConstraints
      def self.parse(map)
        data = Types::KmsGrantConstraints.new
        data.encryption_context_equals = (Parsers::KmsConstraintsMap.parse(map['encryptionContextEquals']) unless map['encryptionContextEquals'].nil?)
        data.encryption_context_subset = (Parsers::KmsConstraintsMap.parse(map['encryptionContextSubset']) unless map['encryptionContextSubset'].nil?)
        return data
      end
    end

    class KmsConstraintsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class KmsGrantOperationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class KmsKeyPoliciesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class IamRoleConfiguration
      def self.parse(map)
        data = Types::IamRoleConfiguration.new
        data.trust_policy = map['trustPolicy']
        return data
      end
    end

    # Operation Parser for GetAnalyzedResource
    class GetAnalyzedResource
      def self.parse(http_resp)
        data = Types::GetAnalyzedResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource = (Parsers::AnalyzedResource.parse(map['resource']) unless map['resource'].nil?)
        data
      end
    end

    class AnalyzedResource
      def self.parse(map)
        data = Types::AnalyzedResource.new
        data.resource_arn = map['resourceArn']
        data.resource_type = map['resourceType']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.analyzed_at = Time.parse(map['analyzedAt']) if map['analyzedAt']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data.is_public = map['isPublic']
        data.actions = (Parsers::ActionList.parse(map['actions']) unless map['actions'].nil?)
        data.shared_via = (Parsers::SharedViaList.parse(map['sharedVia']) unless map['sharedVia'].nil?)
        data.status = map['status']
        data.resource_owner_account = map['resourceOwnerAccount']
        data.error = map['error']
        return data
      end
    end

    class SharedViaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ActionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetAnalyzer
    class GetAnalyzer
      def self.parse(http_resp)
        data = Types::GetAnalyzerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.analyzer = (Parsers::AnalyzerSummary.parse(map['analyzer']) unless map['analyzer'].nil?)
        data
      end
    end

    class AnalyzerSummary
      def self.parse(map)
        data = Types::AnalyzerSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.last_resource_analyzed = map['lastResourceAnalyzed']
        data.last_resource_analyzed_at = Time.parse(map['lastResourceAnalyzedAt']) if map['lastResourceAnalyzedAt']
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.status = map['status']
        data.status_reason = (Parsers::StatusReason.parse(map['statusReason']) unless map['statusReason'].nil?)
        return data
      end
    end

    class StatusReason
      def self.parse(map)
        data = Types::StatusReason.new
        data.code = map['code']
        return data
      end
    end

    class TagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetArchiveRule
    class GetArchiveRule
      def self.parse(http_resp)
        data = Types::GetArchiveRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.archive_rule = (Parsers::ArchiveRuleSummary.parse(map['archiveRule']) unless map['archiveRule'].nil?)
        data
      end
    end

    class ArchiveRuleSummary
      def self.parse(map)
        data = Types::ArchiveRuleSummary.new
        data.rule_name = map['ruleName']
        data.filter = (Parsers::FilterCriteriaMap.parse(map['filter']) unless map['filter'].nil?)
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        return data
      end
    end

    class FilterCriteriaMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::Criterion.parse(value) unless value.nil?
        end
        data
      end
    end

    class Criterion
      def self.parse(map)
        data = Types::Criterion.new
        data.eq = (Parsers::ValueList.parse(map['eq']) unless map['eq'].nil?)
        data.neq = (Parsers::ValueList.parse(map['neq']) unless map['neq'].nil?)
        data.contains = (Parsers::ValueList.parse(map['contains']) unless map['contains'].nil?)
        data.exists = map['exists']
        return data
      end
    end

    class ValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetFinding
    class GetFinding
      def self.parse(http_resp)
        data = Types::GetFindingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.finding = (Parsers::Finding.parse(map['finding']) unless map['finding'].nil?)
        data
      end
    end

    class Finding
      def self.parse(map)
        data = Types::Finding.new
        data.id = map['id']
        data.principal = (Parsers::PrincipalMap.parse(map['principal']) unless map['principal'].nil?)
        data.action = (Parsers::ActionList.parse(map['action']) unless map['action'].nil?)
        data.resource = map['resource']
        data.is_public = map['isPublic']
        data.resource_type = map['resourceType']
        data.condition = (Parsers::ConditionKeyMap.parse(map['condition']) unless map['condition'].nil?)
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.analyzed_at = Time.parse(map['analyzedAt']) if map['analyzedAt']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data.status = map['status']
        data.resource_owner_account = map['resourceOwnerAccount']
        data.error = map['error']
        data.sources = (Parsers::FindingSourceList.parse(map['sources']) unless map['sources'].nil?)
        return data
      end
    end

    class FindingSourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FindingSource.parse(value) unless value.nil?
        end
        data
      end
    end

    class FindingSource
      def self.parse(map)
        data = Types::FindingSource.new
        data.type = map['type']
        data.detail = (Parsers::FindingSourceDetail.parse(map['detail']) unless map['detail'].nil?)
        return data
      end
    end

    class FindingSourceDetail
      def self.parse(map)
        data = Types::FindingSourceDetail.new
        data.access_point_arn = map['accessPointArn']
        return data
      end
    end

    class ConditionKeyMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class PrincipalMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetGeneratedPolicy
    class GetGeneratedPolicy
      def self.parse(http_resp)
        data = Types::GetGeneratedPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_details = (Parsers::JobDetails.parse(map['jobDetails']) unless map['jobDetails'].nil?)
        data.generated_policy_result = (Parsers::GeneratedPolicyResult.parse(map['generatedPolicyResult']) unless map['generatedPolicyResult'].nil?)
        data
      end
    end

    class GeneratedPolicyResult
      def self.parse(map)
        data = Types::GeneratedPolicyResult.new
        data.properties = (Parsers::GeneratedPolicyProperties.parse(map['properties']) unless map['properties'].nil?)
        data.generated_policies = (Parsers::GeneratedPolicyList.parse(map['generatedPolicies']) unless map['generatedPolicies'].nil?)
        return data
      end
    end

    class GeneratedPolicyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GeneratedPolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class GeneratedPolicy
      def self.parse(map)
        data = Types::GeneratedPolicy.new
        data.policy = map['policy']
        return data
      end
    end

    class GeneratedPolicyProperties
      def self.parse(map)
        data = Types::GeneratedPolicyProperties.new
        data.is_complete = map['isComplete']
        data.principal_arn = map['principalArn']
        data.cloud_trail_properties = (Parsers::CloudTrailProperties.parse(map['cloudTrailProperties']) unless map['cloudTrailProperties'].nil?)
        return data
      end
    end

    class CloudTrailProperties
      def self.parse(map)
        data = Types::CloudTrailProperties.new
        data.trail_properties = (Parsers::TrailPropertiesList.parse(map['trailProperties']) unless map['trailProperties'].nil?)
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        return data
      end
    end

    class TrailPropertiesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TrailProperties.parse(value) unless value.nil?
        end
        data
      end
    end

    class TrailProperties
      def self.parse(map)
        data = Types::TrailProperties.new
        data.cloud_trail_arn = map['cloudTrailArn']
        data.regions = (Parsers::RegionList.parse(map['regions']) unless map['regions'].nil?)
        data.all_regions = map['allRegions']
        return data
      end
    end

    class RegionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class JobDetails
      def self.parse(map)
        data = Types::JobDetails.new
        data.job_id = map['jobId']
        data.status = map['status']
        data.started_on = Time.parse(map['startedOn']) if map['startedOn']
        data.completed_on = Time.parse(map['completedOn']) if map['completedOn']
        data.job_error = (Parsers::JobError.parse(map['jobError']) unless map['jobError'].nil?)
        return data
      end
    end

    class JobError
      def self.parse(map)
        data = Types::JobError.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for ListAccessPreviewFindings
    class ListAccessPreviewFindings
      def self.parse(http_resp)
        data = Types::ListAccessPreviewFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.findings = (Parsers::AccessPreviewFindingsList.parse(map['findings']) unless map['findings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AccessPreviewFindingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AccessPreviewFinding.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccessPreviewFinding
      def self.parse(map)
        data = Types::AccessPreviewFinding.new
        data.id = map['id']
        data.existing_finding_id = map['existingFindingId']
        data.existing_finding_status = map['existingFindingStatus']
        data.principal = (Parsers::PrincipalMap.parse(map['principal']) unless map['principal'].nil?)
        data.action = (Parsers::ActionList.parse(map['action']) unless map['action'].nil?)
        data.condition = (Parsers::ConditionKeyMap.parse(map['condition']) unless map['condition'].nil?)
        data.resource = map['resource']
        data.is_public = map['isPublic']
        data.resource_type = map['resourceType']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.change_type = map['changeType']
        data.status = map['status']
        data.resource_owner_account = map['resourceOwnerAccount']
        data.error = map['error']
        data.sources = (Parsers::FindingSourceList.parse(map['sources']) unless map['sources'].nil?)
        return data
      end
    end

    # Operation Parser for ListAccessPreviews
    class ListAccessPreviews
      def self.parse(http_resp)
        data = Types::ListAccessPreviewsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_previews = (Parsers::AccessPreviewsList.parse(map['accessPreviews']) unless map['accessPreviews'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AccessPreviewsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AccessPreviewSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccessPreviewSummary
      def self.parse(map)
        data = Types::AccessPreviewSummary.new
        data.id = map['id']
        data.analyzer_arn = map['analyzerArn']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.status = map['status']
        data.status_reason = (Parsers::AccessPreviewStatusReason.parse(map['statusReason']) unless map['statusReason'].nil?)
        return data
      end
    end

    # Operation Parser for ListAnalyzedResources
    class ListAnalyzedResources
      def self.parse(http_resp)
        data = Types::ListAnalyzedResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.analyzed_resources = (Parsers::AnalyzedResourcesList.parse(map['analyzedResources']) unless map['analyzedResources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AnalyzedResourcesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AnalyzedResourceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnalyzedResourceSummary
      def self.parse(map)
        data = Types::AnalyzedResourceSummary.new
        data.resource_arn = map['resourceArn']
        data.resource_owner_account = map['resourceOwnerAccount']
        data.resource_type = map['resourceType']
        return data
      end
    end

    # Operation Parser for ListAnalyzers
    class ListAnalyzers
      def self.parse(http_resp)
        data = Types::ListAnalyzersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.analyzers = (Parsers::AnalyzersList.parse(map['analyzers']) unless map['analyzers'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AnalyzersList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AnalyzerSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListArchiveRules
    class ListArchiveRules
      def self.parse(http_resp)
        data = Types::ListArchiveRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.archive_rules = (Parsers::ArchiveRulesList.parse(map['archiveRules']) unless map['archiveRules'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ArchiveRulesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ArchiveRuleSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFindings
    class ListFindings
      def self.parse(http_resp)
        data = Types::ListFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.findings = (Parsers::FindingsList.parse(map['findings']) unless map['findings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FindingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FindingSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class FindingSummary
      def self.parse(map)
        data = Types::FindingSummary.new
        data.id = map['id']
        data.principal = (Parsers::PrincipalMap.parse(map['principal']) unless map['principal'].nil?)
        data.action = (Parsers::ActionList.parse(map['action']) unless map['action'].nil?)
        data.resource = map['resource']
        data.is_public = map['isPublic']
        data.resource_type = map['resourceType']
        data.condition = (Parsers::ConditionKeyMap.parse(map['condition']) unless map['condition'].nil?)
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.analyzed_at = Time.parse(map['analyzedAt']) if map['analyzedAt']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data.status = map['status']
        data.resource_owner_account = map['resourceOwnerAccount']
        data.error = map['error']
        data.sources = (Parsers::FindingSourceList.parse(map['sources']) unless map['sources'].nil?)
        return data
      end
    end

    # Operation Parser for ListPolicyGenerations
    class ListPolicyGenerations
      def self.parse(http_resp)
        data = Types::ListPolicyGenerationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_generations = (Parsers::PolicyGenerationList.parse(map['policyGenerations']) unless map['policyGenerations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PolicyGenerationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PolicyGeneration.parse(value) unless value.nil?
        end
        data
      end
    end

    class PolicyGeneration
      def self.parse(map)
        data = Types::PolicyGeneration.new
        data.job_id = map['jobId']
        data.principal_arn = map['principalArn']
        data.status = map['status']
        data.started_on = Time.parse(map['startedOn']) if map['startedOn']
        data.completed_on = Time.parse(map['completedOn']) if map['completedOn']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for StartPolicyGeneration
    class StartPolicyGeneration
      def self.parse(http_resp)
        data = Types::StartPolicyGenerationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['jobId']
        data
      end
    end

    # Operation Parser for StartResourceScan
    class StartResourceScan
      def self.parse(http_resp)
        data = Types::StartResourceScanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateArchiveRule
    class UpdateArchiveRule
      def self.parse(http_resp)
        data = Types::UpdateArchiveRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFindings
    class UpdateFindings
      def self.parse(http_resp)
        data = Types::UpdateFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ValidatePolicy
    class ValidatePolicy
      def self.parse(http_resp)
        data = Types::ValidatePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.findings = (Parsers::ValidatePolicyFindingList.parse(map['findings']) unless map['findings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ValidatePolicyFindingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidatePolicyFinding.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidatePolicyFinding
      def self.parse(map)
        data = Types::ValidatePolicyFinding.new
        data.finding_details = map['findingDetails']
        data.finding_type = map['findingType']
        data.issue_code = map['issueCode']
        data.learn_more_link = map['learnMoreLink']
        data.locations = (Parsers::LocationList.parse(map['locations']) unless map['locations'].nil?)
        return data
      end
    end

    class LocationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Location.parse(value) unless value.nil?
        end
        data
      end
    end

    class Location
      def self.parse(map)
        data = Types::Location.new
        data.path = (Parsers::PathElementList.parse(map['path']) unless map['path'].nil?)
        data.span = (Parsers::Span.parse(map['span']) unless map['span'].nil?)
        return data
      end
    end

    class Span
      def self.parse(map)
        data = Types::Span.new
        data.start = (Parsers::Position.parse(map['start']) unless map['start'].nil?)
        data.end = (Parsers::Position.parse(map['end']) unless map['end'].nil?)
        return data
      end
    end

    class Position
      def self.parse(map)
        data = Types::Position.new
        data.line = map['line']
        data.column = map['column']
        data.offset = map['offset']
        return data
      end
    end

    class PathElementList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PathElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class PathElement
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'index'
          value = value
          Types::PathElement::Index.new(value) if value
        when 'key'
          value = value
          Types::PathElement::Key.new(value) if value
        when 'substring'
          value = (Parsers::Substring.parse(value) unless value.nil?)
          Types::PathElement::Substring.new(value) if value
        when 'value'
          value = value
          Types::PathElement::Value.new(value) if value
        else
          Types::PathElement::Unknown.new({name: key, value: value})
        end
      end
    end

    class Substring
      def self.parse(map)
        data = Types::Substring.new
        data.start = map['start']
        data.length = map['length']
        return data
      end
    end
  end
end
