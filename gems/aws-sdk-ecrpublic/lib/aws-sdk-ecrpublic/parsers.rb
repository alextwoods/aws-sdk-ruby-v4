# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECRPUBLIC
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

    # Error Parser for RegistryNotFoundException
    class RegistryNotFoundException
      def self.parse(http_resp)
        data = Types::RegistryNotFoundException.new
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

    # Error Parser for UnsupportedCommandException
    class UnsupportedCommandException
      def self.parse(http_resp)
        data = Types::UnsupportedCommandException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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

    # Operation Parser for CreateRepository
    class CreateRepository
      def self.parse(http_resp)
        data = Types::CreateRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository = (Parsers::Repository.parse(map['repository']) unless map['repository'].nil?)
        data.catalog_data = (Parsers::RepositoryCatalogData.parse(map['catalogData']) unless map['catalogData'].nil?)
        data
      end
    end

    class RepositoryCatalogData
      def self.parse(map)
        data = Types::RepositoryCatalogData.new
        data.description = map['description']
        data.architectures = (Parsers::ArchitectureList.parse(map['architectures']) unless map['architectures'].nil?)
        data.operating_systems = (Parsers::OperatingSystemList.parse(map['operatingSystems']) unless map['operatingSystems'].nil?)
        data.logo_url = map['logoUrl']
        data.about_text = map['aboutText']
        data.usage_text = map['usageText']
        data.marketplace_certified = map['marketplaceCertified']
        return data
      end
    end

    class OperatingSystemList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ArchitectureList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
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
        return data
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

    # Operation Parser for DescribeImageTags
    class DescribeImageTags
      def self.parse(http_resp)
        data = Types::DescribeImageTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_tag_details = (Parsers::ImageTagDetailList.parse(map['imageTagDetails']) unless map['imageTagDetails'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ImageTagDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::ImageTagDetail.parse(value) unless value.nil?
        end
      end
    end

    class ImageTagDetail
      def self.parse(map)
        data = Types::ImageTagDetail.new
        data.image_tag = map['imageTag']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.image_detail = (Parsers::ReferencedImageDetail.parse(map['imageDetail']) unless map['imageDetail'].nil?)
        return data
      end
    end

    class ReferencedImageDetail
      def self.parse(map)
        data = Types::ReferencedImageDetail.new
        data.image_digest = map['imageDigest']
        data.image_size_in_bytes = map['imageSizeInBytes']
        data.image_pushed_at = Time.at(map['imagePushedAt'].to_i) if map['imagePushedAt']
        data.image_manifest_media_type = map['imageManifestMediaType']
        data.artifact_media_type = map['artifactMediaType']
        return data
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
        data.image_manifest_media_type = map['imageManifestMediaType']
        data.artifact_media_type = map['artifactMediaType']
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

    # Operation Parser for DescribeRegistries
    class DescribeRegistries
      def self.parse(http_resp)
        data = Types::DescribeRegistriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registries = (Parsers::RegistryList.parse(map['registries']) unless map['registries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RegistryList
      def self.parse(list)
        list.map do |value|
          Parsers::Registry.parse(value) unless value.nil?
        end
      end
    end

    class Registry
      def self.parse(map)
        data = Types::Registry.new
        data.registry_id = map['registryId']
        data.registry_arn = map['registryArn']
        data.registry_uri = map['registryUri']
        data.verified = map['verified']
        data.aliases = (Parsers::RegistryAliasList.parse(map['aliases']) unless map['aliases'].nil?)
        return data
      end
    end

    class RegistryAliasList
      def self.parse(list)
        list.map do |value|
          Parsers::RegistryAlias.parse(value) unless value.nil?
        end
      end
    end

    class RegistryAlias
      def self.parse(map)
        data = Types::RegistryAlias.new
        data.name = map['name']
        data.status = map['status']
        data.primary_registry_alias = map['primaryRegistryAlias']
        data.default_registry_alias = map['defaultRegistryAlias']
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
        data.authorization_data = (Parsers::AuthorizationData.parse(map['authorizationData']) unless map['authorizationData'].nil?)
        data
      end
    end

    class AuthorizationData
      def self.parse(map)
        data = Types::AuthorizationData.new
        data.authorization_token = map['authorizationToken']
        data.expires_at = Time.at(map['expiresAt'].to_i) if map['expiresAt']
        return data
      end
    end

    # Operation Parser for GetRegistryCatalogData
    class GetRegistryCatalogData
      def self.parse(http_resp)
        data = Types::GetRegistryCatalogDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_catalog_data = (Parsers::RegistryCatalogData.parse(map['registryCatalogData']) unless map['registryCatalogData'].nil?)
        data
      end
    end

    class RegistryCatalogData
      def self.parse(map)
        data = Types::RegistryCatalogData.new
        data.display_name = map['displayName']
        return data
      end
    end

    # Operation Parser for GetRepositoryCatalogData
    class GetRepositoryCatalogData
      def self.parse(http_resp)
        data = Types::GetRepositoryCatalogDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.catalog_data = (Parsers::RepositoryCatalogData.parse(map['catalogData']) unless map['catalogData'].nil?)
        data
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

    # Operation Parser for PutRegistryCatalogData
    class PutRegistryCatalogData
      def self.parse(http_resp)
        data = Types::PutRegistryCatalogDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_catalog_data = (Parsers::RegistryCatalogData.parse(map['registryCatalogData']) unless map['registryCatalogData'].nil?)
        data
      end
    end

    # Operation Parser for PutRepositoryCatalogData
    class PutRepositoryCatalogData
      def self.parse(http_resp)
        data = Types::PutRepositoryCatalogDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.catalog_data = (Parsers::RepositoryCatalogData.parse(map['catalogData']) unless map['catalogData'].nil?)
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
