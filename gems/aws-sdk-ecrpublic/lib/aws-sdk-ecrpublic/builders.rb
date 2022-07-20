# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::ECRPUBLIC
  module Builders

    # Operation Builder for BatchCheckLayerAvailability
    class BatchCheckLayerAvailability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.BatchCheckLayerAvailability'
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
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.BatchDeleteImage'
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

    # Operation Builder for CompleteLayerUpload
    class CompleteLayerUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.CompleteLayerUpload'
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

    # Operation Builder for CreateRepository
    class CreateRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.CreateRepository'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['catalogData'] = RepositoryCatalogDataInput.build(input[:catalog_data]) unless input[:catalog_data].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Structure Builder for RepositoryCatalogDataInput
    class RepositoryCatalogDataInput
      def self.build(input)
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['architectures'] = ArchitectureList.build(input[:architectures]) unless input[:architectures].nil?
        data['operatingSystems'] = OperatingSystemList.build(input[:operating_systems]) unless input[:operating_systems].nil?
        data['logoImageBlob'] = ::Base64::encode64(input[:logo_image_blob]).strip unless input[:logo_image_blob].nil?
        data['aboutText'] = input[:about_text] unless input[:about_text].nil?
        data['usageText'] = input[:usage_text] unless input[:usage_text].nil?
        data
      end
    end

    # List Builder for OperatingSystemList
    class OperatingSystemList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ArchitectureList
    class ArchitectureList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteRepository
    class DeleteRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.DeleteRepository'
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
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.DeleteRepositoryPolicy'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeImageTags
    class DescribeImageTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.DescribeImageTags'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
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
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.DescribeImages'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['imageIds'] = ImageIdentifierList.build(input[:image_ids]) unless input[:image_ids].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRegistries
    class DescribeRegistries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.DescribeRegistries'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRepositories
    class DescribeRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.DescribeRepositories'
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
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.GetAuthorizationToken'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRegistryCatalogData
    class GetRegistryCatalogData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.GetRegistryCatalogData'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRepositoryCatalogData
    class GetRepositoryCatalogData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.GetRepositoryCatalogData'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRepositoryPolicy
    class GetRepositoryPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.GetRepositoryPolicy'
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
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.InitiateLayerUpload'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.ListTagsForResource'
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
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.PutImage'
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

    # Operation Builder for PutRegistryCatalogData
    class PutRegistryCatalogData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.PutRegistryCatalogData'
        data = {}
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRepositoryCatalogData
    class PutRepositoryCatalogData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.PutRepositoryCatalogData'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['catalogData'] = RepositoryCatalogDataInput.build(input[:catalog_data]) unless input[:catalog_data].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetRepositoryPolicy
    class SetRepositoryPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.SetRepositoryPolicy'
        data = {}
        data['registryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['policyText'] = input[:policy_text] unless input[:policy_text].nil?
        data['force'] = input[:force] unless input[:force].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.TagResource'
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
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.UntagResource'
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
        http_req.headers['X-Amz-Target'] = 'SpencerFrontendService.UploadLayerPart'
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
