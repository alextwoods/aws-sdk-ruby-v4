# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ECR
  module Parsers

    # Operation Parser for BatchCheckLayerAvailability
    class BatchCheckLayerAvailability
      def self.parse(http_resp)
        data = Types::BatchCheckLayerAvailabilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.layers = (Parsers::LayerList.parse(map['layers']) unless map['layers'].nil?)
        data.failures = (Parsers::LayerFailureList.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    class LayerFailureList
      def self.parse(list)
        list.map do |value|
          Parsers::LayerFailure.parse(value) unless value.nil?
        end
      end
    end

    class LayerFailure
      def self.parse(map)
        data = Types::LayerFailure.new
        data.layer_digest = map['layerDigest']
        data.failure_code = map['failureCode']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    class LayerList
      def self.parse(list)
        list.map do |value|
          Parsers::Layer.parse(value) unless value.nil?
        end
      end
    end

    class Layer
      def self.parse(map)
        data = Types::Layer.new
        data.layer_digest = map['layerDigest']
        data.layer_availability = map['layerAvailability']
        data.layer_size = map['layerSize']
        data.media_type = map['mediaType']
        return data
      end
    end

    # Error Parser for RepositoryNotFoundException
    class RepositoryNotFoundException
      def self.parse(http_resp)
        data = Types::RepositoryNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServerException
    class ServerException
      def self.parse(http_resp)
        data = Types::ServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchDeleteImage
    class BatchDeleteImage
      def self.parse(http_resp)
        data = Types::BatchDeleteImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_ids = (Parsers::ImageIdentifierList.parse(map['imageIds']) unless map['imageIds'].nil?)
        data.failures = (Parsers::ImageFailureList.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    class ImageFailureList
      def self.parse(list)
        list.map do |value|
          Parsers::ImageFailure.parse(value) unless value.nil?
        end
      end
    end

    class ImageFailure
      def self.parse(map)
        data = Types::ImageFailure.new
        data.image_id = (Parsers::ImageIdentifier.parse(map['imageId']) unless map['imageId'].nil?)
        data.failure_code = map['failureCode']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    class ImageIdentifier
      def self.parse(map)
        data = Types::ImageIdentifier.new
        data.image_digest = map['imageDigest']
        data.image_tag = map['imageTag']
        return data
      end
    end

    class ImageIdentifierList
      def self.parse(list)
        list.map do |value|
          Parsers::ImageIdentifier.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for BatchGetImage
    class BatchGetImage
      def self.parse(http_resp)
        data = Types::BatchGetImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.images = (Parsers::ImageList.parse(map['images']) unless map['images'].nil?)
        data.failures = (Parsers::ImageFailureList.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    class ImageList
      def self.parse(list)
        list.map do |value|
          Parsers::Image.parse(value) unless value.nil?
        end
      end
    end

    class Image
      def self.parse(map)
        data = Types::Image.new
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.image_id = (Parsers::ImageIdentifier.parse(map['imageId']) unless map['imageId'].nil?)
        data.image_manifest = map['imageManifest']
        data.image_manifest_media_type = map['imageManifestMediaType']
        return data
      end
    end

    # Operation Parser for BatchGetRepositoryScanningConfiguration
    class BatchGetRepositoryScanningConfiguration
      def self.parse(http_resp)
        data = Types::BatchGetRepositoryScanningConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scanning_configurations = (Parsers::RepositoryScanningConfigurationList.parse(map['scanningConfigurations']) unless map['scanningConfigurations'].nil?)
        data.failures = (Parsers::RepositoryScanningConfigurationFailureList.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    class RepositoryScanningConfigurationFailureList
      def self.parse(list)
        list.map do |value|
          Parsers::RepositoryScanningConfigurationFailure.parse(value) unless value.nil?
        end
      end
    end

    class RepositoryScanningConfigurationFailure
      def self.parse(map)
        data = Types::RepositoryScanningConfigurationFailure.new
        data.repository_name = map['repositoryName']
        data.failure_code = map['failureCode']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    class RepositoryScanningConfigurationList
      def self.parse(list)
        list.map do |value|
          Parsers::RepositoryScanningConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class RepositoryScanningConfiguration
      def self.parse(map)
        data = Types::RepositoryScanningConfiguration.new
        data.repository_arn = map['repositoryArn']
        data.repository_name = map['repositoryName']
        data.scan_on_push = map['scanOnPush']
        data.scan_frequency = map['scanFrequency']
        data.applied_scan_filters = (Parsers::ScanningRepositoryFilterList.parse(map['appliedScanFilters']) unless map['appliedScanFilters'].nil?)
        return data
      end
    end

    class ScanningRepositoryFilterList
      def self.parse(list)
        list.map do |value|
          Parsers::ScanningRepositoryFilter.parse(value) unless value.nil?
        end
      end
    end

    class ScanningRepositoryFilter
      def self.parse(map)
        data = Types::ScanningRepositoryFilter.new
        data.filter = map['filter']
        data.filter_type = map['filterType']
        return data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CompleteLayerUpload
    class CompleteLayerUpload
      def self.parse(http_resp)
        data = Types::CompleteLayerUploadOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.upload_id = map['uploadId']
        data.layer_digest = map['layerDigest']
        data
      end
    end

    # Error Parser for EmptyUploadException
    class EmptyUploadException
      def self.parse(http_resp)
        data = Types::EmptyUploadException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LayerPartTooSmallException
    class LayerPartTooSmallException
      def self.parse(http_resp)
        data = Types::LayerPartTooSmallException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidLayerException
    class InvalidLayerException
      def self.parse(http_resp)
        data = Types::InvalidLayerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UploadNotFoundException
    class UploadNotFoundException
      def self.parse(http_resp)
        data = Types::UploadNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KmsException
    class KmsException
      def self.parse(http_resp)
        data = Types::KmsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.kms_error = map['kmsError']
        data
      end
    end

    # Error Parser for LayerAlreadyExistsException
    class LayerAlreadyExistsException
      def self.parse(http_resp)
        data = Types::LayerAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreatePullThroughCacheRule
    class CreatePullThroughCacheRule
      def self.parse(http_resp)
        data = Types::CreatePullThroughCacheRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ecr_repository_prefix = map['ecrRepositoryPrefix']
        data.upstream_registry_url = map['upstreamRegistryUrl']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.registry_id = map['registryId']
        data
      end
    end

    # Error Parser for PullThroughCacheRuleAlreadyExistsException
    class PullThroughCacheRuleAlreadyExistsException
      def self.parse(http_resp)
        data = Types::PullThroughCacheRuleAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnsupportedUpstreamRegistryException
    class UnsupportedUpstreamRegistryException
      def self.parse(http_resp)
        data = Types::UnsupportedUpstreamRegistryException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateRepository
    class CreateRepository
      def self.parse(http_resp)
        data = Types::CreateRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository = (Parsers::Repository.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    class Repository
      def self.parse(map)
        data = Types::Repository.new
        data.repository_arn = map['repositoryArn']
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.repository_uri = map['repositoryUri']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.image_tag_mutability = map['imageTagMutability']
        data.image_scanning_configuration = (Parsers::ImageScanningConfiguration.parse(map['imageScanningConfiguration']) unless map['imageScanningConfiguration'].nil?)
        data.encryption_configuration = (Parsers::EncryptionConfiguration.parse(map['encryptionConfiguration']) unless map['encryptionConfiguration'].nil?)
        return data
      end
    end

    class EncryptionConfiguration
      def self.parse(map)
        data = Types::EncryptionConfiguration.new
        data.encryption_type = map['encryptionType']
        data.kms_key = map['kmsKey']
        return data
      end
    end

    class ImageScanningConfiguration
      def self.parse(map)
        data = Types::ImageScanningConfiguration.new
        data.scan_on_push = map['scanOnPush']
        return data
      end
    end

    # Error Parser for InvalidTagParameterException
    class InvalidTagParameterException
      def self.parse(http_resp)
        data = Types::InvalidTagParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryAlreadyExistsException
    class RepositoryAlreadyExistsException
      def self.parse(http_resp)
        data = Types::RepositoryAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteLifecyclePolicy
    class DeleteLifecyclePolicy
      def self.parse(http_resp)
        data = Types::DeleteLifecyclePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.lifecycle_policy_text = map['lifecyclePolicyText']
        data.last_evaluated_at = Time.at(map['lastEvaluatedAt'].to_i) if map['lastEvaluatedAt']
        data
      end
    end

    # Error Parser for LifecyclePolicyNotFoundException
    class LifecyclePolicyNotFoundException
      def self.parse(http_resp)
        data = Types::LifecyclePolicyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeletePullThroughCacheRule
    class DeletePullThroughCacheRule
      def self.parse(http_resp)
        data = Types::DeletePullThroughCacheRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ecr_repository_prefix = map['ecrRepositoryPrefix']
        data.upstream_registry_url = map['upstreamRegistryUrl']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.registry_id = map['registryId']
        data
      end
    end

    # Error Parser for PullThroughCacheRuleNotFoundException
    class PullThroughCacheRuleNotFoundException
      def self.parse(http_resp)
        data = Types::PullThroughCacheRuleNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteRegistryPolicy
    class DeleteRegistryPolicy
      def self.parse(http_resp)
        data = Types::DeleteRegistryPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.policy_text = map['policyText']
        data
      end
    end

    # Error Parser for RegistryPolicyNotFoundException
    class RegistryPolicyNotFoundException
      def self.parse(http_resp)
        data = Types::RegistryPolicyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteRepository
    class DeleteRepository
      def self.parse(http_resp)
        data = Types::DeleteRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository = (Parsers::Repository.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    # Error Parser for RepositoryNotEmptyException
    class RepositoryNotEmptyException
      def self.parse(http_resp)
        data = Types::RepositoryNotEmptyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteRepositoryPolicy
    class DeleteRepositoryPolicy
      def self.parse(http_resp)
        data = Types::DeleteRepositoryPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.policy_text = map['policyText']
        data
      end
    end

    # Error Parser for RepositoryPolicyNotFoundException
    class RepositoryPolicyNotFoundException
      def self.parse(http_resp)
        data = Types::RepositoryPolicyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeImageReplicationStatus
    class DescribeImageReplicationStatus
      def self.parse(http_resp)
        data = Types::DescribeImageReplicationStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository_name = map['repositoryName']
        data.image_id = (Parsers::ImageIdentifier.parse(map['imageId']) unless map['imageId'].nil?)
        data.replication_statuses = (Parsers::ImageReplicationStatusList.parse(map['replicationStatuses']) unless map['replicationStatuses'].nil?)
        data
      end
    end

    class ImageReplicationStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::ImageReplicationStatus.parse(value) unless value.nil?
        end
      end
    end

    class ImageReplicationStatus
      def self.parse(map)
        data = Types::ImageReplicationStatus.new
        data.region = map['region']
        data.registry_id = map['registryId']
        data.status = map['status']
        data.failure_code = map['failureCode']
        return data
      end
    end

    # Error Parser for ImageNotFoundException
    class ImageNotFoundException
      def self.parse(http_resp)
        data = Types::ImageNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeImageScanFindings
    class DescribeImageScanFindings
      def self.parse(http_resp)
        data = Types::DescribeImageScanFindingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.image_id = (Parsers::ImageIdentifier.parse(map['imageId']) unless map['imageId'].nil?)
        data.image_scan_status = (Parsers::ImageScanStatus.parse(map['imageScanStatus']) unless map['imageScanStatus'].nil?)
        data.image_scan_findings = (Parsers::ImageScanFindings.parse(map['imageScanFindings']) unless map['imageScanFindings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ImageScanFindings
      def self.parse(map)
        data = Types::ImageScanFindings.new
        data.image_scan_completed_at = Time.at(map['imageScanCompletedAt'].to_i) if map['imageScanCompletedAt']
        data.vulnerability_source_updated_at = Time.at(map['vulnerabilitySourceUpdatedAt'].to_i) if map['vulnerabilitySourceUpdatedAt']
        data.finding_severity_counts = (Parsers::FindingSeverityCounts.parse(map['findingSeverityCounts']) unless map['findingSeverityCounts'].nil?)
        data.findings = (Parsers::ImageScanFindingList.parse(map['findings']) unless map['findings'].nil?)
        data.enhanced_findings = (Parsers::EnhancedImageScanFindingList.parse(map['enhancedFindings']) unless map['enhancedFindings'].nil?)
        return data
      end
    end

    class EnhancedImageScanFindingList
      def self.parse(list)
        list.map do |value|
          Parsers::EnhancedImageScanFinding.parse(value) unless value.nil?
        end
      end
    end

    class EnhancedImageScanFinding
      def self.parse(map)
        data = Types::EnhancedImageScanFinding.new
        data.aws_account_id = map['awsAccountId']
        data.description = map['description']
        data.finding_arn = map['findingArn']
        data.first_observed_at = Time.at(map['firstObservedAt'].to_i) if map['firstObservedAt']
        data.last_observed_at = Time.at(map['lastObservedAt'].to_i) if map['lastObservedAt']
        data.package_vulnerability_details = (Parsers::PackageVulnerabilityDetails.parse(map['packageVulnerabilityDetails']) unless map['packageVulnerabilityDetails'].nil?)
        data.remediation = (Parsers::Remediation.parse(map['remediation']) unless map['remediation'].nil?)
        data.resources = (Parsers::ResourceList.parse(map['resources']) unless map['resources'].nil?)
        data.score = Hearth::NumberHelper.deserialize(map['score'])
        data.score_details = (Parsers::ScoreDetails.parse(map['scoreDetails']) unless map['scoreDetails'].nil?)
        data.severity = map['severity']
        data.status = map['status']
        data.title = map['title']
        data.type = map['type']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        return data
      end
    end

    class ScoreDetails
      def self.parse(map)
        data = Types::ScoreDetails.new
        data.cvss = (Parsers::CvssScoreDetails.parse(map['cvss']) unless map['cvss'].nil?)
        return data
      end
    end

    class CvssScoreDetails
      def self.parse(map)
        data = Types::CvssScoreDetails.new
        data.adjustments = (Parsers::CvssScoreAdjustmentList.parse(map['adjustments']) unless map['adjustments'].nil?)
        data.score = Hearth::NumberHelper.deserialize(map['score'])
        data.score_source = map['scoreSource']
        data.scoring_vector = map['scoringVector']
        data.version = map['version']
        return data
      end
    end

    class CvssScoreAdjustmentList
      def self.parse(list)
        list.map do |value|
          Parsers::CvssScoreAdjustment.parse(value) unless value.nil?
        end
      end
    end

    class CvssScoreAdjustment
      def self.parse(map)
        data = Types::CvssScoreAdjustment.new
        data.metric = map['metric']
        data.reason = map['reason']
        return data
      end
    end

    class ResourceList
      def self.parse(list)
        list.map do |value|
          Parsers::Resource.parse(value) unless value.nil?
        end
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.details = (Parsers::ResourceDetails.parse(map['details']) unless map['details'].nil?)
        data.id = map['id']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.type = map['type']
        return data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ResourceDetails
      def self.parse(map)
        data = Types::ResourceDetails.new
        data.aws_ecr_container_image = (Parsers::AwsEcrContainerImageDetails.parse(map['awsEcrContainerImage']) unless map['awsEcrContainerImage'].nil?)
        return data
      end
    end

    class AwsEcrContainerImageDetails
      def self.parse(map)
        data = Types::AwsEcrContainerImageDetails.new
        data.architecture = map['architecture']
        data.author = map['author']
        data.image_hash = map['imageHash']
        data.image_tags = (Parsers::ImageTagsList.parse(map['imageTags']) unless map['imageTags'].nil?)
        data.platform = map['platform']
        data.pushed_at = Time.at(map['pushedAt'].to_i) if map['pushedAt']
        data.registry = map['registry']
        data.repository_name = map['repositoryName']
        return data
      end
    end

    class ImageTagsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Remediation
      def self.parse(map)
        data = Types::Remediation.new
        data.recommendation = (Parsers::Recommendation.parse(map['recommendation']) unless map['recommendation'].nil?)
        return data
      end
    end

    class Recommendation
      def self.parse(map)
        data = Types::Recommendation.new
        data.url = map['url']
        data.text = map['text']
        return data
      end
    end

    class PackageVulnerabilityDetails
      def self.parse(map)
        data = Types::PackageVulnerabilityDetails.new
        data.cvss = (Parsers::CvssScoreList.parse(map['cvss']) unless map['cvss'].nil?)
        data.reference_urls = (Parsers::ReferenceUrlsList.parse(map['referenceUrls']) unless map['referenceUrls'].nil?)
        data.related_vulnerabilities = (Parsers::RelatedVulnerabilitiesList.parse(map['relatedVulnerabilities']) unless map['relatedVulnerabilities'].nil?)
        data.source = map['source']
        data.source_url = map['sourceUrl']
        data.vendor_created_at = Time.at(map['vendorCreatedAt'].to_i) if map['vendorCreatedAt']
        data.vendor_severity = map['vendorSeverity']
        data.vendor_updated_at = Time.at(map['vendorUpdatedAt'].to_i) if map['vendorUpdatedAt']
        data.vulnerability_id = map['vulnerabilityId']
        data.vulnerable_packages = (Parsers::VulnerablePackagesList.parse(map['vulnerablePackages']) unless map['vulnerablePackages'].nil?)
        return data
      end
    end

    class VulnerablePackagesList
      def self.parse(list)
        list.map do |value|
          Parsers::VulnerablePackage.parse(value) unless value.nil?
        end
      end
    end

    class VulnerablePackage
      def self.parse(map)
        data = Types::VulnerablePackage.new
        data.arch = map['arch']
        data.epoch = map['epoch']
        data.file_path = map['filePath']
        data.name = map['name']
        data.package_manager = map['packageManager']
        data.release = map['release']
        data.source_layer_hash = map['sourceLayerHash']
        data.version = map['version']
        return data
      end
    end

    class RelatedVulnerabilitiesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ReferenceUrlsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CvssScoreList
      def self.parse(list)
        list.map do |value|
          Parsers::CvssScore.parse(value) unless value.nil?
        end
      end
    end

    class CvssScore
      def self.parse(map)
        data = Types::CvssScore.new
        data.base_score = Hearth::NumberHelper.deserialize(map['baseScore'])
        data.scoring_vector = map['scoringVector']
        data.source = map['source']
        data.version = map['version']
        return data
      end
    end

    class ImageScanFindingList
      def self.parse(list)
        list.map do |value|
          Parsers::ImageScanFinding.parse(value) unless value.nil?
        end
      end
    end

    class ImageScanFinding
      def self.parse(map)
        data = Types::ImageScanFinding.new
        data.name = map['name']
        data.description = map['description']
        data.uri = map['uri']
        data.severity = map['severity']
        data.attributes = (Parsers::AttributeList.parse(map['attributes']) unless map['attributes'].nil?)
        return data
      end
    end

    class AttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::Attribute.parse(value) unless value.nil?
        end
      end
    end

    class Attribute
      def self.parse(map)
        data = Types::Attribute.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class FindingSeverityCounts
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ImageScanStatus
      def self.parse(map)
        data = Types::ImageScanStatus.new
        data.status = map['status']
        data.description = map['description']
        return data
      end
    end

    # Error Parser for ScanNotFoundException
    class ScanNotFoundException
      def self.parse(http_resp)
        data = Types::ScanNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeImages
    class DescribeImages
      def self.parse(http_resp)
        data = Types::DescribeImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_details = (Parsers::ImageDetailList.parse(map['imageDetails']) unless map['imageDetails'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ImageDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::ImageDetail.parse(value) unless value.nil?
        end
      end
    end

    class ImageDetail
      def self.parse(map)
        data = Types::ImageDetail.new
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.image_digest = map['imageDigest']
        data.image_tags = (Parsers::ImageTagList.parse(map['imageTags']) unless map['imageTags'].nil?)
        data.image_size_in_bytes = map['imageSizeInBytes']
        data.image_pushed_at = Time.at(map['imagePushedAt'].to_i) if map['imagePushedAt']
        data.image_scan_status = (Parsers::ImageScanStatus.parse(map['imageScanStatus']) unless map['imageScanStatus'].nil?)
        data.image_scan_findings_summary = (Parsers::ImageScanFindingsSummary.parse(map['imageScanFindingsSummary']) unless map['imageScanFindingsSummary'].nil?)
        data.image_manifest_media_type = map['imageManifestMediaType']
        data.artifact_media_type = map['artifactMediaType']
        data.last_recorded_pull_time = Time.at(map['lastRecordedPullTime'].to_i) if map['lastRecordedPullTime']
        return data
      end
    end

    class ImageScanFindingsSummary
      def self.parse(map)
        data = Types::ImageScanFindingsSummary.new
        data.image_scan_completed_at = Time.at(map['imageScanCompletedAt'].to_i) if map['imageScanCompletedAt']
        data.vulnerability_source_updated_at = Time.at(map['vulnerabilitySourceUpdatedAt'].to_i) if map['vulnerabilitySourceUpdatedAt']
        data.finding_severity_counts = (Parsers::FindingSeverityCounts.parse(map['findingSeverityCounts']) unless map['findingSeverityCounts'].nil?)
        return data
      end
    end

    class ImageTagList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribePullThroughCacheRules
    class DescribePullThroughCacheRules
      def self.parse(http_resp)
        data = Types::DescribePullThroughCacheRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_through_cache_rules = (Parsers::PullThroughCacheRuleList.parse(map['pullThroughCacheRules']) unless map['pullThroughCacheRules'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PullThroughCacheRuleList
      def self.parse(list)
        list.map do |value|
          Parsers::PullThroughCacheRule.parse(value) unless value.nil?
        end
      end
    end

    class PullThroughCacheRule
      def self.parse(map)
        data = Types::PullThroughCacheRule.new
        data.ecr_repository_prefix = map['ecrRepositoryPrefix']
        data.upstream_registry_url = map['upstreamRegistryUrl']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.registry_id = map['registryId']
        return data
      end
    end

    # Operation Parser for DescribeRegistry
    class DescribeRegistry
      def self.parse(http_resp)
        data = Types::DescribeRegistryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.replication_configuration = (Parsers::ReplicationConfiguration.parse(map['replicationConfiguration']) unless map['replicationConfiguration'].nil?)
        data
      end
    end

    class ReplicationConfiguration
      def self.parse(map)
        data = Types::ReplicationConfiguration.new
        data.rules = (Parsers::ReplicationRuleList.parse(map['rules']) unless map['rules'].nil?)
        return data
      end
    end

    class ReplicationRuleList
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationRule.parse(value) unless value.nil?
        end
      end
    end

    class ReplicationRule
      def self.parse(map)
        data = Types::ReplicationRule.new
        data.destinations = (Parsers::ReplicationDestinationList.parse(map['destinations']) unless map['destinations'].nil?)
        data.repository_filters = (Parsers::RepositoryFilterList.parse(map['repositoryFilters']) unless map['repositoryFilters'].nil?)
        return data
      end
    end

    class RepositoryFilterList
      def self.parse(list)
        list.map do |value|
          Parsers::RepositoryFilter.parse(value) unless value.nil?
        end
      end
    end

    class RepositoryFilter
      def self.parse(map)
        data = Types::RepositoryFilter.new
        data.filter = map['filter']
        data.filter_type = map['filterType']
        return data
      end
    end

    class ReplicationDestinationList
      def self.parse(list)
        list.map do |value|
          Parsers::ReplicationDestination.parse(value) unless value.nil?
        end
      end
    end

    class ReplicationDestination
      def self.parse(map)
        data = Types::ReplicationDestination.new
        data.region = map['region']
        data.registry_id = map['registryId']
        return data
      end
    end

    # Operation Parser for DescribeRepositories
    class DescribeRepositories
      def self.parse(http_resp)
        data = Types::DescribeRepositoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repositories = (Parsers::RepositoryList.parse(map['repositories']) unless map['repositories'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RepositoryList
      def self.parse(list)
        list.map do |value|
          Parsers::Repository.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetAuthorizationToken
    class GetAuthorizationToken
      def self.parse(http_resp)
        data = Types::GetAuthorizationTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.authorization_data = (Parsers::AuthorizationDataList.parse(map['authorizationData']) unless map['authorizationData'].nil?)
        data
      end
    end

    class AuthorizationDataList
      def self.parse(list)
        list.map do |value|
          Parsers::AuthorizationData.parse(value) unless value.nil?
        end
      end
    end

    class AuthorizationData
      def self.parse(map)
        data = Types::AuthorizationData.new
        data.authorization_token = map['authorizationToken']
        data.expires_at = Time.at(map['expiresAt'].to_i) if map['expiresAt']
        data.proxy_endpoint = map['proxyEndpoint']
        return data
      end
    end

    # Operation Parser for GetDownloadUrlForLayer
    class GetDownloadUrlForLayer
      def self.parse(http_resp)
        data = Types::GetDownloadUrlForLayerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.download_url = map['downloadUrl']
        data.layer_digest = map['layerDigest']
        data
      end
    end

    # Error Parser for LayerInaccessibleException
    class LayerInaccessibleException
      def self.parse(http_resp)
        data = Types::LayerInaccessibleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LayersNotFoundException
    class LayersNotFoundException
      def self.parse(http_resp)
        data = Types::LayersNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetLifecyclePolicy
    class GetLifecyclePolicy
      def self.parse(http_resp)
        data = Types::GetLifecyclePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.lifecycle_policy_text = map['lifecyclePolicyText']
        data.last_evaluated_at = Time.at(map['lastEvaluatedAt'].to_i) if map['lastEvaluatedAt']
        data
      end
    end

    # Operation Parser for GetLifecyclePolicyPreview
    class GetLifecyclePolicyPreview
      def self.parse(http_resp)
        data = Types::GetLifecyclePolicyPreviewOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.lifecycle_policy_text = map['lifecyclePolicyText']
        data.status = map['status']
        data.next_token = map['nextToken']
        data.preview_results = (Parsers::LifecyclePolicyPreviewResultList.parse(map['previewResults']) unless map['previewResults'].nil?)
        data.summary = (Parsers::LifecyclePolicyPreviewSummary.parse(map['summary']) unless map['summary'].nil?)
        data
      end
    end

    class LifecyclePolicyPreviewSummary
      def self.parse(map)
        data = Types::LifecyclePolicyPreviewSummary.new
        data.expiring_image_total_count = map['expiringImageTotalCount']
        return data
      end
    end

    class LifecyclePolicyPreviewResultList
      def self.parse(list)
        list.map do |value|
          Parsers::LifecyclePolicyPreviewResult.parse(value) unless value.nil?
        end
      end
    end

    class LifecyclePolicyPreviewResult
      def self.parse(map)
        data = Types::LifecyclePolicyPreviewResult.new
        data.image_tags = (Parsers::ImageTagList.parse(map['imageTags']) unless map['imageTags'].nil?)
        data.image_digest = map['imageDigest']
        data.image_pushed_at = Time.at(map['imagePushedAt'].to_i) if map['imagePushedAt']
        data.action = (Parsers::LifecyclePolicyRuleAction.parse(map['action']) unless map['action'].nil?)
        data.applied_rule_priority = map['appliedRulePriority']
        return data
      end
    end

    class LifecyclePolicyRuleAction
      def self.parse(map)
        data = Types::LifecyclePolicyRuleAction.new
        data.type = map['type']
        return data
      end
    end

    # Error Parser for LifecyclePolicyPreviewNotFoundException
    class LifecyclePolicyPreviewNotFoundException
      def self.parse(http_resp)
        data = Types::LifecyclePolicyPreviewNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetRegistryPolicy
    class GetRegistryPolicy
      def self.parse(http_resp)
        data = Types::GetRegistryPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.policy_text = map['policyText']
        data
      end
    end

    # Operation Parser for GetRegistryScanningConfiguration
    class GetRegistryScanningConfiguration
      def self.parse(http_resp)
        data = Types::GetRegistryScanningConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.scanning_configuration = (Parsers::RegistryScanningConfiguration.parse(map['scanningConfiguration']) unless map['scanningConfiguration'].nil?)
        data
      end
    end

    class RegistryScanningConfiguration
      def self.parse(map)
        data = Types::RegistryScanningConfiguration.new
        data.scan_type = map['scanType']
        data.rules = (Parsers::RegistryScanningRuleList.parse(map['rules']) unless map['rules'].nil?)
        return data
      end
    end

    class RegistryScanningRuleList
      def self.parse(list)
        list.map do |value|
          Parsers::RegistryScanningRule.parse(value) unless value.nil?
        end
      end
    end

    class RegistryScanningRule
      def self.parse(map)
        data = Types::RegistryScanningRule.new
        data.scan_frequency = map['scanFrequency']
        data.repository_filters = (Parsers::ScanningRepositoryFilterList.parse(map['repositoryFilters']) unless map['repositoryFilters'].nil?)
        return data
      end
    end

    # Operation Parser for GetRepositoryPolicy
    class GetRepositoryPolicy
      def self.parse(http_resp)
        data = Types::GetRepositoryPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.policy_text = map['policyText']
        data
      end
    end

    # Operation Parser for InitiateLayerUpload
    class InitiateLayerUpload
      def self.parse(http_resp)
        data = Types::InitiateLayerUploadOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.upload_id = map['uploadId']
        data.part_size = map['partSize']
        data
      end
    end

    # Operation Parser for ListImages
    class ListImages
      def self.parse(http_resp)
        data = Types::ListImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_ids = (Parsers::ImageIdentifierList.parse(map['imageIds']) unless map['imageIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagList
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

    # Operation Parser for PutImage
    class PutImage
      def self.parse(http_resp)
        data = Types::PutImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image = (Parsers::Image.parse(map['image']) unless map['image'].nil?)
        data
      end
    end

    # Error Parser for ImageDigestDoesNotMatchException
    class ImageDigestDoesNotMatchException
      def self.parse(http_resp)
        data = Types::ImageDigestDoesNotMatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ReferencedImagesNotFoundException
    class ReferencedImagesNotFoundException
      def self.parse(http_resp)
        data = Types::ReferencedImagesNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ImageTagAlreadyExistsException
    class ImageTagAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ImageTagAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ImageAlreadyExistsException
    class ImageAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ImageAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutImageScanningConfiguration
    class PutImageScanningConfiguration
      def self.parse(http_resp)
        data = Types::PutImageScanningConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.image_scanning_configuration = (Parsers::ImageScanningConfiguration.parse(map['imageScanningConfiguration']) unless map['imageScanningConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for PutImageTagMutability
    class PutImageTagMutability
      def self.parse(http_resp)
        data = Types::PutImageTagMutabilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.image_tag_mutability = map['imageTagMutability']
        data
      end
    end

    # Operation Parser for PutLifecyclePolicy
    class PutLifecyclePolicy
      def self.parse(http_resp)
        data = Types::PutLifecyclePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.lifecycle_policy_text = map['lifecyclePolicyText']
        data
      end
    end

    # Operation Parser for PutRegistryPolicy
    class PutRegistryPolicy
      def self.parse(http_resp)
        data = Types::PutRegistryPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.policy_text = map['policyText']
        data
      end
    end

    # Operation Parser for PutRegistryScanningConfiguration
    class PutRegistryScanningConfiguration
      def self.parse(http_resp)
        data = Types::PutRegistryScanningConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_scanning_configuration = (Parsers::RegistryScanningConfiguration.parse(map['registryScanningConfiguration']) unless map['registryScanningConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for PutReplicationConfiguration
    class PutReplicationConfiguration
      def self.parse(http_resp)
        data = Types::PutReplicationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_configuration = (Parsers::ReplicationConfiguration.parse(map['replicationConfiguration']) unless map['replicationConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for SetRepositoryPolicy
    class SetRepositoryPolicy
      def self.parse(http_resp)
        data = Types::SetRepositoryPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.policy_text = map['policyText']
        data
      end
    end

    # Operation Parser for StartImageScan
    class StartImageScan
      def self.parse(http_resp)
        data = Types::StartImageScanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.image_id = (Parsers::ImageIdentifier.parse(map['imageId']) unless map['imageId'].nil?)
        data.image_scan_status = (Parsers::ImageScanStatus.parse(map['imageScanStatus']) unless map['imageScanStatus'].nil?)
        data
      end
    end

    # Error Parser for UnsupportedImageTypeException
    class UnsupportedImageTypeException
      def self.parse(http_resp)
        data = Types::UnsupportedImageTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StartLifecyclePolicyPreview
    class StartLifecyclePolicyPreview
      def self.parse(http_resp)
        data = Types::StartLifecyclePolicyPreviewOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.lifecycle_policy_text = map['lifecyclePolicyText']
        data.status = map['status']
        data
      end
    end

    # Error Parser for LifecyclePolicyPreviewInProgressException
    class LifecyclePolicyPreviewInProgressException
      def self.parse(http_resp)
        data = Types::LifecyclePolicyPreviewInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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

    # Operation Parser for UploadLayerPart
    class UploadLayerPart
      def self.parse(http_resp)
        data = Types::UploadLayerPartOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.upload_id = map['uploadId']
        data.last_byte_received = map['lastByteReceived']
        data
      end
    end

    # Error Parser for InvalidLayerPartException
    class InvalidLayerPartException
      def self.parse(http_resp)
        data = Types::InvalidLayerPartException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_id = map['registryId']
        data.repository_name = map['repositoryName']
        data.upload_id = map['uploadId']
        data.last_valid_byte_received = map['lastValidByteReceived']
        data.message = map['message']
        data
      end
    end
  end
end
