# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::ECR
  module Builders

    # Operation Builder for BatchCheckLayerAvailability
    class BatchCheckLayerAvailability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.BatchCheckLayerAvailability'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['layerDigests'] = BatchedOperationLayerDigestList.build(input[:layer_digests]) unless input[:layer_digests].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchedOperationLayerDigestList
    class BatchedOperationLayerDigestList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDeleteImage
    class BatchDeleteImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.BatchDeleteImage'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageIds'] = ImageIdentifierList.build(input[:image_ids]) unless input[:image_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ImageIdentifierList
    class ImageIdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << ImageIdentifier.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ImageIdentifier
    class ImageIdentifier
      def self.build(input)
        data = {}
        data['imageDigest'] = input[:image_digest] unless input[:image_digest].nil?
        data['imageTag'] = input[:image_tag] unless input[:image_tag].nil?
        data
      end
    end

    # Operation Builder for BatchGetImage
    class BatchGetImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.BatchGetImage'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageIds'] = ImageIdentifierList.build(input[:image_ids]) unless input[:image_ids].nil?
        data['acceptedMediaTypes'] = MediaTypeList.build(input[:accepted_media_types]) unless input[:accepted_media_types].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MediaTypeList
    class MediaTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetRepositoryScanningConfiguration
    class BatchGetRepositoryScanningConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.BatchGetRepositoryScanningConfiguration'
        data = {}
        data['repositoryNames'] = ScanningConfigurationRepositoryNameList.build(input[:repository_names]) unless input[:repository_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ScanningConfigurationRepositoryNameList
    class ScanningConfigurationRepositoryNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CompleteLayerUpload
    class CompleteLayerUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.CompleteLayerUpload'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['uploadId'] = input[:upload_id] unless input[:upload_id].nil?
        data['layerDigests'] = LayerDigestList.build(input[:layer_digests]) unless input[:layer_digests].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LayerDigestList
    class LayerDigestList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreatePullThroughCacheRule
    class CreatePullThroughCacheRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.CreatePullThroughCacheRule'
        data = {}
        data['ecrRepositoryPrefix'] = input[:ecr_repository_prefix] unless input[:ecr_repository_prefix].nil?
        data['upstreamRegistryUrl'] = input[:upstream_registry_url] unless input[:upstream_registry_url].nil?
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRepository
    class CreateRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.CreateRepository'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['imageTagMutability'] = input[:image_tag_mutability] unless input[:image_tag_mutability].nil?
        data['imageScanningConfiguration'] = ImageScanningConfiguration.build(input[:image_scanning_configuration]) unless input[:image_scanning_configuration].nil?
        data['encryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EncryptionConfiguration
    class EncryptionConfiguration
      def self.build(input)
        data = {}
        data['encryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data['kmsKey'] = input[:kms_key] unless input[:kms_key].nil?
        data
      end
    end

    # Structure Builder for ImageScanningConfiguration
    class ImageScanningConfiguration
      def self.build(input)
        data = {}
        data['scanOnPush'] = input[:scan_on_push] unless input[:scan_on_push].nil?
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
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

    # Operation Builder for DeleteLifecyclePolicy
    class DeleteLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DeleteLifecyclePolicy'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePullThroughCacheRule
    class DeletePullThroughCacheRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DeletePullThroughCacheRule'
        data = {}
        data['ecrRepositoryPrefix'] = input[:ecr_repository_prefix] unless input[:ecr_repository_prefix].nil?
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRegistryPolicy
    class DeleteRegistryPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DeleteRegistryPolicy'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRepository
    class DeleteRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DeleteRepository'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['force'] = input[:force] unless input[:force].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRepositoryPolicy
    class DeleteRepositoryPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DeleteRepositoryPolicy'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeImageReplicationStatus
    class DescribeImageReplicationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DescribeImageReplicationStatus'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageId'] = ImageIdentifier.build(input[:image_id]) unless input[:image_id].nil?
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeImageScanFindings
    class DescribeImageScanFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DescribeImageScanFindings'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageId'] = ImageIdentifier.build(input[:image_id]) unless input[:image_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeImages
    class DescribeImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DescribeImages'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageIds'] = ImageIdentifierList.build(input[:image_ids]) unless input[:image_ids].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filter'] = DescribeImagesFilter.build(input[:filter]) unless input[:filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DescribeImagesFilter
    class DescribeImagesFilter
      def self.build(input)
        data = {}
        data['tagStatus'] = input[:tag_status] unless input[:tag_status].nil?
        data
      end
    end

    # Operation Builder for DescribePullThroughCacheRules
    class DescribePullThroughCacheRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DescribePullThroughCacheRules'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['ecrRepositoryPrefixes'] = PullThroughCacheRuleRepositoryPrefixList.build(input[:ecr_repository_prefixes]) unless input[:ecr_repository_prefixes].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PullThroughCacheRuleRepositoryPrefixList
    class PullThroughCacheRuleRepositoryPrefixList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeRegistry
    class DescribeRegistry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DescribeRegistry'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRepositories
    class DescribeRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.DescribeRepositories'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryNames'] = RepositoryNameList.build(input[:repository_names]) unless input[:repository_names].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RepositoryNameList
    class RepositoryNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetAuthorizationToken
    class GetAuthorizationToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.GetAuthorizationToken'
        data = {}
        data['registryIds'] = GetAuthorizationTokenRegistryIdList.build(input[:registry_ids]) unless input[:registry_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GetAuthorizationTokenRegistryIdList
    class GetAuthorizationTokenRegistryIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetDownloadUrlForLayer
    class GetDownloadUrlForLayer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.GetDownloadUrlForLayer'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['layerDigest'] = input[:layer_digest] unless input[:layer_digest].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLifecyclePolicy
    class GetLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.GetLifecyclePolicy'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLifecyclePolicyPreview
    class GetLifecyclePolicyPreview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.GetLifecyclePolicyPreview'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageIds'] = ImageIdentifierList.build(input[:image_ids]) unless input[:image_ids].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filter'] = LifecyclePolicyPreviewFilter.build(input[:filter]) unless input[:filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LifecyclePolicyPreviewFilter
    class LifecyclePolicyPreviewFilter
      def self.build(input)
        data = {}
        data['tagStatus'] = input[:tag_status] unless input[:tag_status].nil?
        data
      end
    end

    # Operation Builder for GetRegistryPolicy
    class GetRegistryPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.GetRegistryPolicy'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRegistryScanningConfiguration
    class GetRegistryScanningConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.GetRegistryScanningConfiguration'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRepositoryPolicy
    class GetRepositoryPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.GetRepositoryPolicy'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InitiateLayerUpload
    class InitiateLayerUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.InitiateLayerUpload'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListImages
    class ListImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.ListImages'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filter'] = ListImagesFilter.build(input[:filter]) unless input[:filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListImagesFilter
    class ListImagesFilter
      def self.build(input)
        data = {}
        data['tagStatus'] = input[:tag_status] unless input[:tag_status].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutImage
    class PutImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.PutImage'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageManifest'] = input[:image_manifest] unless input[:image_manifest].nil?
        data['imageManifestMediaType'] = input[:image_manifest_media_type] unless input[:image_manifest_media_type].nil?
        data['imageTag'] = input[:image_tag] unless input[:image_tag].nil?
        data['imageDigest'] = input[:image_digest] unless input[:image_digest].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutImageScanningConfiguration
    class PutImageScanningConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.PutImageScanningConfiguration'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageScanningConfiguration'] = ImageScanningConfiguration.build(input[:image_scanning_configuration]) unless input[:image_scanning_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutImageTagMutability
    class PutImageTagMutability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.PutImageTagMutability'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageTagMutability'] = input[:image_tag_mutability] unless input[:image_tag_mutability].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutLifecyclePolicy
    class PutLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.PutLifecyclePolicy'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['lifecyclePolicyText'] = input[:lifecycle_policy_text] unless input[:lifecycle_policy_text].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRegistryPolicy
    class PutRegistryPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.PutRegistryPolicy'
        data = {}
        data['policyText'] = input[:policy_text] unless input[:policy_text].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRegistryScanningConfiguration
    class PutRegistryScanningConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.PutRegistryScanningConfiguration'
        data = {}
        data['scanType'] = input[:scan_type] unless input[:scan_type].nil?
        data['rules'] = RegistryScanningRuleList.build(input[:rules]) unless input[:rules].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RegistryScanningRuleList
    class RegistryScanningRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << RegistryScanningRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RegistryScanningRule
    class RegistryScanningRule
      def self.build(input)
        data = {}
        data['scanFrequency'] = input[:scan_frequency] unless input[:scan_frequency].nil?
        data['repositoryFilters'] = ScanningRepositoryFilterList.build(input[:repository_filters]) unless input[:repository_filters].nil?
        data
      end
    end

    # List Builder for ScanningRepositoryFilterList
    class ScanningRepositoryFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << ScanningRepositoryFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ScanningRepositoryFilter
    class ScanningRepositoryFilter
      def self.build(input)
        data = {}
        data['filter'] = input[:filter] unless input[:filter].nil?
        data['filterType'] = input[:filter_type] unless input[:filter_type].nil?
        data
      end
    end

    # Operation Builder for PutReplicationConfiguration
    class PutReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.PutReplicationConfiguration'
        data = {}
        data['replicationConfiguration'] = ReplicationConfiguration.build(input[:replication_configuration]) unless input[:replication_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReplicationConfiguration
    class ReplicationConfiguration
      def self.build(input)
        data = {}
        data['rules'] = ReplicationRuleList.build(input[:rules]) unless input[:rules].nil?
        data
      end
    end

    # List Builder for ReplicationRuleList
    class ReplicationRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplicationRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicationRule
    class ReplicationRule
      def self.build(input)
        data = {}
        data['destinations'] = ReplicationDestinationList.build(input[:destinations]) unless input[:destinations].nil?
        data['repositoryFilters'] = RepositoryFilterList.build(input[:repository_filters]) unless input[:repository_filters].nil?
        data
      end
    end

    # List Builder for RepositoryFilterList
    class RepositoryFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << RepositoryFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RepositoryFilter
    class RepositoryFilter
      def self.build(input)
        data = {}
        data['filter'] = input[:filter] unless input[:filter].nil?
        data['filterType'] = input[:filter_type] unless input[:filter_type].nil?
        data
      end
    end

    # List Builder for ReplicationDestinationList
    class ReplicationDestinationList
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplicationDestination.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicationDestination
    class ReplicationDestination
      def self.build(input)
        data = {}
        data['region'] = input[:region] unless input[:region].nil?
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data
      end
    end

    # Operation Builder for SetRepositoryPolicy
    class SetRepositoryPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.SetRepositoryPolicy'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['policyText'] = input[:policy_text] unless input[:policy_text].nil?
        data['force'] = input[:force] unless input[:force].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartImageScan
    class StartImageScan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.StartImageScan'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageId'] = ImageIdentifier.build(input[:image_id]) unless input[:image_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartLifecyclePolicyPreview
    class StartLifecyclePolicyPreview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.StartLifecyclePolicyPreview'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['lifecyclePolicyText'] = input[:lifecycle_policy_text] unless input[:lifecycle_policy_text].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UploadLayerPart
    class UploadLayerPart
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerRegistry_V20150921.UploadLayerPart'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['uploadId'] = input[:upload_id] unless input[:upload_id].nil?
        data['partFirstByte'] = input[:part_first_byte] unless input[:part_first_byte].nil?
        data['partLastByte'] = input[:part_last_byte] unless input[:part_last_byte].nil?
        data['layerPartBlob'] = ::Base64::encode64(input[:layer_part_blob]).strip unless input[:layer_part_blob].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
