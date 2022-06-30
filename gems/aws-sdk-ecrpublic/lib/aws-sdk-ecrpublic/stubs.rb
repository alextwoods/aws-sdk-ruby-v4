# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECRPUBLIC
  module Stubs

    # Operation Stubber for BatchCheckLayerAvailability
    class BatchCheckLayerAvailability
      def self.default(visited=[])
        {
          layers: Stubs::LayerList.default(visited),
          failures: Stubs::LayerFailureList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['layers'] = Stubs::LayerList.stub(stub[:layers]) unless stub[:layers].nil?
        data['failures'] = Stubs::LayerFailureList.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LayerFailureList
    class LayerFailureList
      def self.default(visited=[])
        return nil if visited.include?('LayerFailureList')
        visited = visited + ['LayerFailureList']
        [
          Stubs::LayerFailure.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LayerFailure.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LayerFailure
    class LayerFailure
      def self.default(visited=[])
        return nil if visited.include?('LayerFailure')
        visited = visited + ['LayerFailure']
        {
          layer_digest: 'layer_digest',
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::LayerFailure.new
        data = {}
        data['layerDigest'] = stub[:layer_digest] unless stub[:layer_digest].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # List Stubber for LayerList
    class LayerList
      def self.default(visited=[])
        return nil if visited.include?('LayerList')
        visited = visited + ['LayerList']
        [
          Stubs::Layer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Layer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Layer
    class Layer
      def self.default(visited=[])
        return nil if visited.include?('Layer')
        visited = visited + ['Layer']
        {
          layer_digest: 'layer_digest',
          layer_availability: 'layer_availability',
          layer_size: 1,
          media_type: 'media_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Layer.new
        data = {}
        data['layerDigest'] = stub[:layer_digest] unless stub[:layer_digest].nil?
        data['layerAvailability'] = stub[:layer_availability] unless stub[:layer_availability].nil?
        data['layerSize'] = stub[:layer_size] unless stub[:layer_size].nil?
        data['mediaType'] = stub[:media_type] unless stub[:media_type].nil?
        data
      end
    end

    # Operation Stubber for BatchDeleteImage
    class BatchDeleteImage
      def self.default(visited=[])
        {
          image_ids: Stubs::ImageIdentifierList.default(visited),
          failures: Stubs::ImageFailureList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['imageIds'] = Stubs::ImageIdentifierList.stub(stub[:image_ids]) unless stub[:image_ids].nil?
        data['failures'] = Stubs::ImageFailureList.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImageFailureList
    class ImageFailureList
      def self.default(visited=[])
        return nil if visited.include?('ImageFailureList')
        visited = visited + ['ImageFailureList']
        [
          Stubs::ImageFailure.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageFailure.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageFailure
    class ImageFailure
      def self.default(visited=[])
        return nil if visited.include?('ImageFailure')
        visited = visited + ['ImageFailure']
        {
          image_id: Stubs::ImageIdentifier.default(visited),
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageFailure.new
        data = {}
        data['imageId'] = Stubs::ImageIdentifier.stub(stub[:image_id]) unless stub[:image_id].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Structure Stubber for ImageIdentifier
    class ImageIdentifier
      def self.default(visited=[])
        return nil if visited.include?('ImageIdentifier')
        visited = visited + ['ImageIdentifier']
        {
          image_digest: 'image_digest',
          image_tag: 'image_tag',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageIdentifier.new
        data = {}
        data['imageDigest'] = stub[:image_digest] unless stub[:image_digest].nil?
        data['imageTag'] = stub[:image_tag] unless stub[:image_tag].nil?
        data
      end
    end

    # List Stubber for ImageIdentifierList
    class ImageIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('ImageIdentifierList')
        visited = visited + ['ImageIdentifierList']
        [
          Stubs::ImageIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CompleteLayerUpload
    class CompleteLayerUpload
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          upload_id: 'upload_id',
          layer_digest: 'layer_digest',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['uploadId'] = stub[:upload_id] unless stub[:upload_id].nil?
        data['layerDigest'] = stub[:layer_digest] unless stub[:layer_digest].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRepository
    class CreateRepository
      def self.default(visited=[])
        {
          repository: Stubs::Repository.default(visited),
          catalog_data: Stubs::RepositoryCatalogData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repository'] = Stubs::Repository.stub(stub[:repository]) unless stub[:repository].nil?
        data['catalogData'] = Stubs::RepositoryCatalogData.stub(stub[:catalog_data]) unless stub[:catalog_data].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RepositoryCatalogData
    class RepositoryCatalogData
      def self.default(visited=[])
        return nil if visited.include?('RepositoryCatalogData')
        visited = visited + ['RepositoryCatalogData']
        {
          description: 'description',
          architectures: Stubs::ArchitectureList.default(visited),
          operating_systems: Stubs::OperatingSystemList.default(visited),
          logo_url: 'logo_url',
          about_text: 'about_text',
          usage_text: 'usage_text',
          marketplace_certified: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryCatalogData.new
        data = {}
        data['description'] = stub[:description] unless stub[:description].nil?
        data['architectures'] = Stubs::ArchitectureList.stub(stub[:architectures]) unless stub[:architectures].nil?
        data['operatingSystems'] = Stubs::OperatingSystemList.stub(stub[:operating_systems]) unless stub[:operating_systems].nil?
        data['logoUrl'] = stub[:logo_url] unless stub[:logo_url].nil?
        data['aboutText'] = stub[:about_text] unless stub[:about_text].nil?
        data['usageText'] = stub[:usage_text] unless stub[:usage_text].nil?
        data['marketplaceCertified'] = stub[:marketplace_certified] unless stub[:marketplace_certified].nil?
        data
      end
    end

    # List Stubber for OperatingSystemList
    class OperatingSystemList
      def self.default(visited=[])
        return nil if visited.include?('OperatingSystemList')
        visited = visited + ['OperatingSystemList']
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

    # List Stubber for ArchitectureList
    class ArchitectureList
      def self.default(visited=[])
        return nil if visited.include?('ArchitectureList')
        visited = visited + ['ArchitectureList']
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

    # Structure Stubber for Repository
    class Repository
      def self.default(visited=[])
        return nil if visited.include?('Repository')
        visited = visited + ['Repository']
        {
          repository_arn: 'repository_arn',
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          repository_uri: 'repository_uri',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Repository.new
        data = {}
        data['repositoryArn'] = stub[:repository_arn] unless stub[:repository_arn].nil?
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['repositoryUri'] = stub[:repository_uri] unless stub[:repository_uri].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for DeleteRepository
    class DeleteRepository
      def self.default(visited=[])
        {
          repository: Stubs::Repository.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repository'] = Stubs::Repository.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRepositoryPolicy
    class DeleteRepositoryPolicy
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          policy_text: 'policy_text',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['policyText'] = stub[:policy_text] unless stub[:policy_text].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeImageTags
    class DescribeImageTags
      def self.default(visited=[])
        {
          image_tag_details: Stubs::ImageTagDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['imageTagDetails'] = Stubs::ImageTagDetailList.stub(stub[:image_tag_details]) unless stub[:image_tag_details].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImageTagDetailList
    class ImageTagDetailList
      def self.default(visited=[])
        return nil if visited.include?('ImageTagDetailList')
        visited = visited + ['ImageTagDetailList']
        [
          Stubs::ImageTagDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageTagDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageTagDetail
    class ImageTagDetail
      def self.default(visited=[])
        return nil if visited.include?('ImageTagDetail')
        visited = visited + ['ImageTagDetail']
        {
          image_tag: 'image_tag',
          created_at: Time.now,
          image_detail: Stubs::ReferencedImageDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageTagDetail.new
        data = {}
        data['imageTag'] = stub[:image_tag] unless stub[:image_tag].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['imageDetail'] = Stubs::ReferencedImageDetail.stub(stub[:image_detail]) unless stub[:image_detail].nil?
        data
      end
    end

    # Structure Stubber for ReferencedImageDetail
    class ReferencedImageDetail
      def self.default(visited=[])
        return nil if visited.include?('ReferencedImageDetail')
        visited = visited + ['ReferencedImageDetail']
        {
          image_digest: 'image_digest',
          image_size_in_bytes: 1,
          image_pushed_at: Time.now,
          image_manifest_media_type: 'image_manifest_media_type',
          artifact_media_type: 'artifact_media_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReferencedImageDetail.new
        data = {}
        data['imageDigest'] = stub[:image_digest] unless stub[:image_digest].nil?
        data['imageSizeInBytes'] = stub[:image_size_in_bytes] unless stub[:image_size_in_bytes].nil?
        data['imagePushedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:image_pushed_at]).to_i unless stub[:image_pushed_at].nil?
        data['imageManifestMediaType'] = stub[:image_manifest_media_type] unless stub[:image_manifest_media_type].nil?
        data['artifactMediaType'] = stub[:artifact_media_type] unless stub[:artifact_media_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeImages
    class DescribeImages
      def self.default(visited=[])
        {
          image_details: Stubs::ImageDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['imageDetails'] = Stubs::ImageDetailList.stub(stub[:image_details]) unless stub[:image_details].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImageDetailList
    class ImageDetailList
      def self.default(visited=[])
        return nil if visited.include?('ImageDetailList')
        visited = visited + ['ImageDetailList']
        [
          Stubs::ImageDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageDetail
    class ImageDetail
      def self.default(visited=[])
        return nil if visited.include?('ImageDetail')
        visited = visited + ['ImageDetail']
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          image_digest: 'image_digest',
          image_tags: Stubs::ImageTagList.default(visited),
          image_size_in_bytes: 1,
          image_pushed_at: Time.now,
          image_manifest_media_type: 'image_manifest_media_type',
          artifact_media_type: 'artifact_media_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageDetail.new
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['imageDigest'] = stub[:image_digest] unless stub[:image_digest].nil?
        data['imageTags'] = Stubs::ImageTagList.stub(stub[:image_tags]) unless stub[:image_tags].nil?
        data['imageSizeInBytes'] = stub[:image_size_in_bytes] unless stub[:image_size_in_bytes].nil?
        data['imagePushedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:image_pushed_at]).to_i unless stub[:image_pushed_at].nil?
        data['imageManifestMediaType'] = stub[:image_manifest_media_type] unless stub[:image_manifest_media_type].nil?
        data['artifactMediaType'] = stub[:artifact_media_type] unless stub[:artifact_media_type].nil?
        data
      end
    end

    # List Stubber for ImageTagList
    class ImageTagList
      def self.default(visited=[])
        return nil if visited.include?('ImageTagList')
        visited = visited + ['ImageTagList']
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

    # Operation Stubber for DescribeRegistries
    class DescribeRegistries
      def self.default(visited=[])
        {
          registries: Stubs::RegistryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registries'] = Stubs::RegistryList.stub(stub[:registries]) unless stub[:registries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RegistryList
    class RegistryList
      def self.default(visited=[])
        return nil if visited.include?('RegistryList')
        visited = visited + ['RegistryList']
        [
          Stubs::Registry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Registry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Registry
    class Registry
      def self.default(visited=[])
        return nil if visited.include?('Registry')
        visited = visited + ['Registry']
        {
          registry_id: 'registry_id',
          registry_arn: 'registry_arn',
          registry_uri: 'registry_uri',
          verified: false,
          aliases: Stubs::RegistryAliasList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Registry.new
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['registryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['registryUri'] = stub[:registry_uri] unless stub[:registry_uri].nil?
        data['verified'] = stub[:verified] unless stub[:verified].nil?
        data['aliases'] = Stubs::RegistryAliasList.stub(stub[:aliases]) unless stub[:aliases].nil?
        data
      end
    end

    # List Stubber for RegistryAliasList
    class RegistryAliasList
      def self.default(visited=[])
        return nil if visited.include?('RegistryAliasList')
        visited = visited + ['RegistryAliasList']
        [
          Stubs::RegistryAlias.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RegistryAlias.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RegistryAlias
    class RegistryAlias
      def self.default(visited=[])
        return nil if visited.include?('RegistryAlias')
        visited = visited + ['RegistryAlias']
        {
          name: 'name',
          status: 'status',
          primary_registry_alias: false,
          default_registry_alias: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RegistryAlias.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['primaryRegistryAlias'] = stub[:primary_registry_alias] unless stub[:primary_registry_alias].nil?
        data['defaultRegistryAlias'] = stub[:default_registry_alias] unless stub[:default_registry_alias].nil?
        data
      end
    end

    # Operation Stubber for DescribeRepositories
    class DescribeRepositories
      def self.default(visited=[])
        {
          repositories: Stubs::RepositoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositories'] = Stubs::RepositoryList.stub(stub[:repositories]) unless stub[:repositories].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RepositoryList
    class RepositoryList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryList')
        visited = visited + ['RepositoryList']
        [
          Stubs::Repository.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Repository.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetAuthorizationToken
    class GetAuthorizationToken
      def self.default(visited=[])
        {
          authorization_data: Stubs::AuthorizationData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['authorizationData'] = Stubs::AuthorizationData.stub(stub[:authorization_data]) unless stub[:authorization_data].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AuthorizationData
    class AuthorizationData
      def self.default(visited=[])
        return nil if visited.include?('AuthorizationData')
        visited = visited + ['AuthorizationData']
        {
          authorization_token: 'authorization_token',
          expires_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthorizationData.new
        data = {}
        data['authorizationToken'] = stub[:authorization_token] unless stub[:authorization_token].nil?
        data['expiresAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expires_at]).to_i unless stub[:expires_at].nil?
        data
      end
    end

    # Operation Stubber for GetRegistryCatalogData
    class GetRegistryCatalogData
      def self.default(visited=[])
        {
          registry_catalog_data: Stubs::RegistryCatalogData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryCatalogData'] = Stubs::RegistryCatalogData.stub(stub[:registry_catalog_data]) unless stub[:registry_catalog_data].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RegistryCatalogData
    class RegistryCatalogData
      def self.default(visited=[])
        return nil if visited.include?('RegistryCatalogData')
        visited = visited + ['RegistryCatalogData']
        {
          display_name: 'display_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegistryCatalogData.new
        data = {}
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data
      end
    end

    # Operation Stubber for GetRepositoryCatalogData
    class GetRepositoryCatalogData
      def self.default(visited=[])
        {
          catalog_data: Stubs::RepositoryCatalogData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['catalogData'] = Stubs::RepositoryCatalogData.stub(stub[:catalog_data]) unless stub[:catalog_data].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRepositoryPolicy
    class GetRepositoryPolicy
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          policy_text: 'policy_text',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['policyText'] = stub[:policy_text] unless stub[:policy_text].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for InitiateLayerUpload
    class InitiateLayerUpload
      def self.default(visited=[])
        {
          upload_id: 'upload_id',
          part_size: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['uploadId'] = stub[:upload_id] unless stub[:upload_id].nil?
        data['partSize'] = stub[:part_size] unless stub[:part_size].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
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

    # Operation Stubber for PutImage
    class PutImage
      def self.default(visited=[])
        {
          image: Stubs::Image.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['image'] = Stubs::Image.stub(stub[:image]) unless stub[:image].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Image
    class Image
      def self.default(visited=[])
        return nil if visited.include?('Image')
        visited = visited + ['Image']
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          image_id: Stubs::ImageIdentifier.default(visited),
          image_manifest: 'image_manifest',
          image_manifest_media_type: 'image_manifest_media_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Image.new
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['imageId'] = Stubs::ImageIdentifier.stub(stub[:image_id]) unless stub[:image_id].nil?
        data['imageManifest'] = stub[:image_manifest] unless stub[:image_manifest].nil?
        data['imageManifestMediaType'] = stub[:image_manifest_media_type] unless stub[:image_manifest_media_type].nil?
        data
      end
    end

    # Operation Stubber for PutRegistryCatalogData
    class PutRegistryCatalogData
      def self.default(visited=[])
        {
          registry_catalog_data: Stubs::RegistryCatalogData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryCatalogData'] = Stubs::RegistryCatalogData.stub(stub[:registry_catalog_data]) unless stub[:registry_catalog_data].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRepositoryCatalogData
    class PutRepositoryCatalogData
      def self.default(visited=[])
        {
          catalog_data: Stubs::RepositoryCatalogData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['catalogData'] = Stubs::RepositoryCatalogData.stub(stub[:catalog_data]) unless stub[:catalog_data].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetRepositoryPolicy
    class SetRepositoryPolicy
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          policy_text: 'policy_text',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['policyText'] = stub[:policy_text] unless stub[:policy_text].nil?
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

    # Operation Stubber for UploadLayerPart
    class UploadLayerPart
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          upload_id: 'upload_id',
          last_byte_received: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['uploadId'] = stub[:upload_id] unless stub[:upload_id].nil?
        data['lastByteReceived'] = stub[:last_byte_received] unless stub[:last_byte_received].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
