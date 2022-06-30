# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECR
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

    # Operation Stubber for BatchGetImage
    class BatchGetImage
      def self.default(visited=[])
        {
          images: Stubs::ImageList.default(visited),
          failures: Stubs::ImageFailureList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['images'] = Stubs::ImageList.stub(stub[:images]) unless stub[:images].nil?
        data['failures'] = Stubs::ImageFailureList.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImageList
    class ImageList
      def self.default(visited=[])
        return nil if visited.include?('ImageList')
        visited = visited + ['ImageList']
        [
          Stubs::Image.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Image.stub(element) unless element.nil?
        end
        data
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

    # Operation Stubber for BatchGetRepositoryScanningConfiguration
    class BatchGetRepositoryScanningConfiguration
      def self.default(visited=[])
        {
          scanning_configurations: Stubs::RepositoryScanningConfigurationList.default(visited),
          failures: Stubs::RepositoryScanningConfigurationFailureList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['scanningConfigurations'] = Stubs::RepositoryScanningConfigurationList.stub(stub[:scanning_configurations]) unless stub[:scanning_configurations].nil?
        data['failures'] = Stubs::RepositoryScanningConfigurationFailureList.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RepositoryScanningConfigurationFailureList
    class RepositoryScanningConfigurationFailureList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryScanningConfigurationFailureList')
        visited = visited + ['RepositoryScanningConfigurationFailureList']
        [
          Stubs::RepositoryScanningConfigurationFailure.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RepositoryScanningConfigurationFailure.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryScanningConfigurationFailure
    class RepositoryScanningConfigurationFailure
      def self.default(visited=[])
        return nil if visited.include?('RepositoryScanningConfigurationFailure')
        visited = visited + ['RepositoryScanningConfigurationFailure']
        {
          repository_name: 'repository_name',
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryScanningConfigurationFailure.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # List Stubber for RepositoryScanningConfigurationList
    class RepositoryScanningConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryScanningConfigurationList')
        visited = visited + ['RepositoryScanningConfigurationList']
        [
          Stubs::RepositoryScanningConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RepositoryScanningConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryScanningConfiguration
    class RepositoryScanningConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RepositoryScanningConfiguration')
        visited = visited + ['RepositoryScanningConfiguration']
        {
          repository_arn: 'repository_arn',
          repository_name: 'repository_name',
          scan_on_push: false,
          scan_frequency: 'scan_frequency',
          applied_scan_filters: Stubs::ScanningRepositoryFilterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryScanningConfiguration.new
        data = {}
        data['repositoryArn'] = stub[:repository_arn] unless stub[:repository_arn].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['scanOnPush'] = stub[:scan_on_push] unless stub[:scan_on_push].nil?
        data['scanFrequency'] = stub[:scan_frequency] unless stub[:scan_frequency].nil?
        data['appliedScanFilters'] = Stubs::ScanningRepositoryFilterList.stub(stub[:applied_scan_filters]) unless stub[:applied_scan_filters].nil?
        data
      end
    end

    # List Stubber for ScanningRepositoryFilterList
    class ScanningRepositoryFilterList
      def self.default(visited=[])
        return nil if visited.include?('ScanningRepositoryFilterList')
        visited = visited + ['ScanningRepositoryFilterList']
        [
          Stubs::ScanningRepositoryFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScanningRepositoryFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScanningRepositoryFilter
    class ScanningRepositoryFilter
      def self.default(visited=[])
        return nil if visited.include?('ScanningRepositoryFilter')
        visited = visited + ['ScanningRepositoryFilter']
        {
          filter: 'filter',
          filter_type: 'filter_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScanningRepositoryFilter.new
        data = {}
        data['filter'] = stub[:filter] unless stub[:filter].nil?
        data['filterType'] = stub[:filter_type] unless stub[:filter_type].nil?
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

    # Operation Stubber for CreatePullThroughCacheRule
    class CreatePullThroughCacheRule
      def self.default(visited=[])
        {
          ecr_repository_prefix: 'ecr_repository_prefix',
          upstream_registry_url: 'upstream_registry_url',
          created_at: Time.now,
          registry_id: 'registry_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ecrRepositoryPrefix'] = stub[:ecr_repository_prefix] unless stub[:ecr_repository_prefix].nil?
        data['upstreamRegistryUrl'] = stub[:upstream_registry_url] unless stub[:upstream_registry_url].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRepository
    class CreateRepository
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
          image_tag_mutability: 'image_tag_mutability',
          image_scanning_configuration: Stubs::ImageScanningConfiguration.default(visited),
          encryption_configuration: Stubs::EncryptionConfiguration.default(visited),
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
        data['imageTagMutability'] = stub[:image_tag_mutability] unless stub[:image_tag_mutability].nil?
        data['imageScanningConfiguration'] = Stubs::ImageScanningConfiguration.stub(stub[:image_scanning_configuration]) unless stub[:image_scanning_configuration].nil?
        data['encryptionConfiguration'] = Stubs::EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data
      end
    end

    # Structure Stubber for EncryptionConfiguration
    class EncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfiguration')
        visited = visited + ['EncryptionConfiguration']
        {
          encryption_type: 'encryption_type',
          kms_key: 'kms_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfiguration.new
        data = {}
        data['encryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['kmsKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data
      end
    end

    # Structure Stubber for ImageScanningConfiguration
    class ImageScanningConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ImageScanningConfiguration')
        visited = visited + ['ImageScanningConfiguration']
        {
          scan_on_push: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageScanningConfiguration.new
        data = {}
        data['scanOnPush'] = stub[:scan_on_push] unless stub[:scan_on_push].nil?
        data
      end
    end

    # Operation Stubber for DeleteLifecyclePolicy
    class DeleteLifecyclePolicy
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          lifecycle_policy_text: 'lifecycle_policy_text',
          last_evaluated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['lifecyclePolicyText'] = stub[:lifecycle_policy_text] unless stub[:lifecycle_policy_text].nil?
        data['lastEvaluatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_evaluated_at]).to_i unless stub[:last_evaluated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePullThroughCacheRule
    class DeletePullThroughCacheRule
      def self.default(visited=[])
        {
          ecr_repository_prefix: 'ecr_repository_prefix',
          upstream_registry_url: 'upstream_registry_url',
          created_at: Time.now,
          registry_id: 'registry_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ecrRepositoryPrefix'] = stub[:ecr_repository_prefix] unless stub[:ecr_repository_prefix].nil?
        data['upstreamRegistryUrl'] = stub[:upstream_registry_url] unless stub[:upstream_registry_url].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRegistryPolicy
    class DeleteRegistryPolicy
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          policy_text: 'policy_text',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['policyText'] = stub[:policy_text] unless stub[:policy_text].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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

    # Operation Stubber for DescribeImageReplicationStatus
    class DescribeImageReplicationStatus
      def self.default(visited=[])
        {
          repository_name: 'repository_name',
          image_id: Stubs::ImageIdentifier.default(visited),
          replication_statuses: Stubs::ImageReplicationStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['imageId'] = Stubs::ImageIdentifier.stub(stub[:image_id]) unless stub[:image_id].nil?
        data['replicationStatuses'] = Stubs::ImageReplicationStatusList.stub(stub[:replication_statuses]) unless stub[:replication_statuses].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImageReplicationStatusList
    class ImageReplicationStatusList
      def self.default(visited=[])
        return nil if visited.include?('ImageReplicationStatusList')
        visited = visited + ['ImageReplicationStatusList']
        [
          Stubs::ImageReplicationStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageReplicationStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageReplicationStatus
    class ImageReplicationStatus
      def self.default(visited=[])
        return nil if visited.include?('ImageReplicationStatus')
        visited = visited + ['ImageReplicationStatus']
        {
          region: 'region',
          registry_id: 'registry_id',
          status: 'status',
          failure_code: 'failure_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageReplicationStatus.new
        data = {}
        data['region'] = stub[:region] unless stub[:region].nil?
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data
      end
    end

    # Operation Stubber for DescribeImageScanFindings
    class DescribeImageScanFindings
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          image_id: Stubs::ImageIdentifier.default(visited),
          image_scan_status: Stubs::ImageScanStatus.default(visited),
          image_scan_findings: Stubs::ImageScanFindings.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['imageId'] = Stubs::ImageIdentifier.stub(stub[:image_id]) unless stub[:image_id].nil?
        data['imageScanStatus'] = Stubs::ImageScanStatus.stub(stub[:image_scan_status]) unless stub[:image_scan_status].nil?
        data['imageScanFindings'] = Stubs::ImageScanFindings.stub(stub[:image_scan_findings]) unless stub[:image_scan_findings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ImageScanFindings
    class ImageScanFindings
      def self.default(visited=[])
        return nil if visited.include?('ImageScanFindings')
        visited = visited + ['ImageScanFindings']
        {
          image_scan_completed_at: Time.now,
          vulnerability_source_updated_at: Time.now,
          finding_severity_counts: Stubs::FindingSeverityCounts.default(visited),
          findings: Stubs::ImageScanFindingList.default(visited),
          enhanced_findings: Stubs::EnhancedImageScanFindingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageScanFindings.new
        data = {}
        data['imageScanCompletedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:image_scan_completed_at]).to_i unless stub[:image_scan_completed_at].nil?
        data['vulnerabilitySourceUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:vulnerability_source_updated_at]).to_i unless stub[:vulnerability_source_updated_at].nil?
        data['findingSeverityCounts'] = Stubs::FindingSeverityCounts.stub(stub[:finding_severity_counts]) unless stub[:finding_severity_counts].nil?
        data['findings'] = Stubs::ImageScanFindingList.stub(stub[:findings]) unless stub[:findings].nil?
        data['enhancedFindings'] = Stubs::EnhancedImageScanFindingList.stub(stub[:enhanced_findings]) unless stub[:enhanced_findings].nil?
        data
      end
    end

    # List Stubber for EnhancedImageScanFindingList
    class EnhancedImageScanFindingList
      def self.default(visited=[])
        return nil if visited.include?('EnhancedImageScanFindingList')
        visited = visited + ['EnhancedImageScanFindingList']
        [
          Stubs::EnhancedImageScanFinding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EnhancedImageScanFinding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnhancedImageScanFinding
    class EnhancedImageScanFinding
      def self.default(visited=[])
        return nil if visited.include?('EnhancedImageScanFinding')
        visited = visited + ['EnhancedImageScanFinding']
        {
          aws_account_id: 'aws_account_id',
          description: 'description',
          finding_arn: 'finding_arn',
          first_observed_at: Time.now,
          last_observed_at: Time.now,
          package_vulnerability_details: Stubs::PackageVulnerabilityDetails.default(visited),
          remediation: Stubs::Remediation.default(visited),
          resources: Stubs::ResourceList.default(visited),
          score: 1.0,
          score_details: Stubs::ScoreDetails.default(visited),
          severity: 'severity',
          status: 'status',
          title: 'title',
          type: 'type',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EnhancedImageScanFinding.new
        data = {}
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['findingArn'] = stub[:finding_arn] unless stub[:finding_arn].nil?
        data['firstObservedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:first_observed_at]).to_i unless stub[:first_observed_at].nil?
        data['lastObservedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_observed_at]).to_i unless stub[:last_observed_at].nil?
        data['packageVulnerabilityDetails'] = Stubs::PackageVulnerabilityDetails.stub(stub[:package_vulnerability_details]) unless stub[:package_vulnerability_details].nil?
        data['remediation'] = Stubs::Remediation.stub(stub[:remediation]) unless stub[:remediation].nil?
        data['resources'] = Stubs::ResourceList.stub(stub[:resources]) unless stub[:resources].nil?
        data['score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['scoreDetails'] = Stubs::ScoreDetails.stub(stub[:score_details]) unless stub[:score_details].nil?
        data['severity'] = stub[:severity] unless stub[:severity].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Structure Stubber for ScoreDetails
    class ScoreDetails
      def self.default(visited=[])
        return nil if visited.include?('ScoreDetails')
        visited = visited + ['ScoreDetails']
        {
          cvss: Stubs::CvssScoreDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScoreDetails.new
        data = {}
        data['cvss'] = Stubs::CvssScoreDetails.stub(stub[:cvss]) unless stub[:cvss].nil?
        data
      end
    end

    # Structure Stubber for CvssScoreDetails
    class CvssScoreDetails
      def self.default(visited=[])
        return nil if visited.include?('CvssScoreDetails')
        visited = visited + ['CvssScoreDetails']
        {
          adjustments: Stubs::CvssScoreAdjustmentList.default(visited),
          score: 1.0,
          score_source: 'score_source',
          scoring_vector: 'scoring_vector',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::CvssScoreDetails.new
        data = {}
        data['adjustments'] = Stubs::CvssScoreAdjustmentList.stub(stub[:adjustments]) unless stub[:adjustments].nil?
        data['score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['scoreSource'] = stub[:score_source] unless stub[:score_source].nil?
        data['scoringVector'] = stub[:scoring_vector] unless stub[:scoring_vector].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for CvssScoreAdjustmentList
    class CvssScoreAdjustmentList
      def self.default(visited=[])
        return nil if visited.include?('CvssScoreAdjustmentList')
        visited = visited + ['CvssScoreAdjustmentList']
        [
          Stubs::CvssScoreAdjustment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CvssScoreAdjustment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CvssScoreAdjustment
    class CvssScoreAdjustment
      def self.default(visited=[])
        return nil if visited.include?('CvssScoreAdjustment')
        visited = visited + ['CvssScoreAdjustment']
        {
          metric: 'metric',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::CvssScoreAdjustment.new
        data = {}
        data['metric'] = stub[:metric] unless stub[:metric].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for ResourceList
    class ResourceList
      def self.default(visited=[])
        return nil if visited.include?('ResourceList')
        visited = visited + ['ResourceList']
        [
          Stubs::Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          details: Stubs::ResourceDetails.default(visited),
          id: 'id',
          tags: Stubs::Tags.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['details'] = Stubs::ResourceDetails.stub(stub[:details]) unless stub[:details].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Structure Stubber for ResourceDetails
    class ResourceDetails
      def self.default(visited=[])
        return nil if visited.include?('ResourceDetails')
        visited = visited + ['ResourceDetails']
        {
          aws_ecr_container_image: Stubs::AwsEcrContainerImageDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDetails.new
        data = {}
        data['awsEcrContainerImage'] = Stubs::AwsEcrContainerImageDetails.stub(stub[:aws_ecr_container_image]) unless stub[:aws_ecr_container_image].nil?
        data
      end
    end

    # Structure Stubber for AwsEcrContainerImageDetails
    class AwsEcrContainerImageDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcrContainerImageDetails')
        visited = visited + ['AwsEcrContainerImageDetails']
        {
          architecture: 'architecture',
          author: 'author',
          image_hash: 'image_hash',
          image_tags: Stubs::ImageTagsList.default(visited),
          platform: 'platform',
          pushed_at: Time.now,
          registry: 'registry',
          repository_name: 'repository_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcrContainerImageDetails.new
        data = {}
        data['architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['author'] = stub[:author] unless stub[:author].nil?
        data['imageHash'] = stub[:image_hash] unless stub[:image_hash].nil?
        data['imageTags'] = Stubs::ImageTagsList.stub(stub[:image_tags]) unless stub[:image_tags].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['pushedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:pushed_at]).to_i unless stub[:pushed_at].nil?
        data['registry'] = stub[:registry] unless stub[:registry].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data
      end
    end

    # List Stubber for ImageTagsList
    class ImageTagsList
      def self.default(visited=[])
        return nil if visited.include?('ImageTagsList')
        visited = visited + ['ImageTagsList']
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

    # Structure Stubber for Remediation
    class Remediation
      def self.default(visited=[])
        return nil if visited.include?('Remediation')
        visited = visited + ['Remediation']
        {
          recommendation: Stubs::Recommendation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Remediation.new
        data = {}
        data['recommendation'] = Stubs::Recommendation.stub(stub[:recommendation]) unless stub[:recommendation].nil?
        data
      end
    end

    # Structure Stubber for Recommendation
    class Recommendation
      def self.default(visited=[])
        return nil if visited.include?('Recommendation')
        visited = visited + ['Recommendation']
        {
          url: 'url',
          text: 'text',
        }
      end

      def self.stub(stub)
        stub ||= Types::Recommendation.new
        data = {}
        data['url'] = stub[:url] unless stub[:url].nil?
        data['text'] = stub[:text] unless stub[:text].nil?
        data
      end
    end

    # Structure Stubber for PackageVulnerabilityDetails
    class PackageVulnerabilityDetails
      def self.default(visited=[])
        return nil if visited.include?('PackageVulnerabilityDetails')
        visited = visited + ['PackageVulnerabilityDetails']
        {
          cvss: Stubs::CvssScoreList.default(visited),
          reference_urls: Stubs::ReferenceUrlsList.default(visited),
          related_vulnerabilities: Stubs::RelatedVulnerabilitiesList.default(visited),
          source: 'source',
          source_url: 'source_url',
          vendor_created_at: Time.now,
          vendor_severity: 'vendor_severity',
          vendor_updated_at: Time.now,
          vulnerability_id: 'vulnerability_id',
          vulnerable_packages: Stubs::VulnerablePackagesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageVulnerabilityDetails.new
        data = {}
        data['cvss'] = Stubs::CvssScoreList.stub(stub[:cvss]) unless stub[:cvss].nil?
        data['referenceUrls'] = Stubs::ReferenceUrlsList.stub(stub[:reference_urls]) unless stub[:reference_urls].nil?
        data['relatedVulnerabilities'] = Stubs::RelatedVulnerabilitiesList.stub(stub[:related_vulnerabilities]) unless stub[:related_vulnerabilities].nil?
        data['source'] = stub[:source] unless stub[:source].nil?
        data['sourceUrl'] = stub[:source_url] unless stub[:source_url].nil?
        data['vendorCreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:vendor_created_at]).to_i unless stub[:vendor_created_at].nil?
        data['vendorSeverity'] = stub[:vendor_severity] unless stub[:vendor_severity].nil?
        data['vendorUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:vendor_updated_at]).to_i unless stub[:vendor_updated_at].nil?
        data['vulnerabilityId'] = stub[:vulnerability_id] unless stub[:vulnerability_id].nil?
        data['vulnerablePackages'] = Stubs::VulnerablePackagesList.stub(stub[:vulnerable_packages]) unless stub[:vulnerable_packages].nil?
        data
      end
    end

    # List Stubber for VulnerablePackagesList
    class VulnerablePackagesList
      def self.default(visited=[])
        return nil if visited.include?('VulnerablePackagesList')
        visited = visited + ['VulnerablePackagesList']
        [
          Stubs::VulnerablePackage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VulnerablePackage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VulnerablePackage
    class VulnerablePackage
      def self.default(visited=[])
        return nil if visited.include?('VulnerablePackage')
        visited = visited + ['VulnerablePackage']
        {
          arch: 'arch',
          epoch: 1,
          file_path: 'file_path',
          name: 'name',
          package_manager: 'package_manager',
          release: 'release',
          source_layer_hash: 'source_layer_hash',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::VulnerablePackage.new
        data = {}
        data['arch'] = stub[:arch] unless stub[:arch].nil?
        data['epoch'] = stub[:epoch] unless stub[:epoch].nil?
        data['filePath'] = stub[:file_path] unless stub[:file_path].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['packageManager'] = stub[:package_manager] unless stub[:package_manager].nil?
        data['release'] = stub[:release] unless stub[:release].nil?
        data['sourceLayerHash'] = stub[:source_layer_hash] unless stub[:source_layer_hash].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for RelatedVulnerabilitiesList
    class RelatedVulnerabilitiesList
      def self.default(visited=[])
        return nil if visited.include?('RelatedVulnerabilitiesList')
        visited = visited + ['RelatedVulnerabilitiesList']
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

    # List Stubber for ReferenceUrlsList
    class ReferenceUrlsList
      def self.default(visited=[])
        return nil if visited.include?('ReferenceUrlsList')
        visited = visited + ['ReferenceUrlsList']
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

    # List Stubber for CvssScoreList
    class CvssScoreList
      def self.default(visited=[])
        return nil if visited.include?('CvssScoreList')
        visited = visited + ['CvssScoreList']
        [
          Stubs::CvssScore.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CvssScore.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CvssScore
    class CvssScore
      def self.default(visited=[])
        return nil if visited.include?('CvssScore')
        visited = visited + ['CvssScore']
        {
          base_score: 1.0,
          scoring_vector: 'scoring_vector',
          source: 'source',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::CvssScore.new
        data = {}
        data['baseScore'] = Hearth::NumberHelper.serialize(stub[:base_score])
        data['scoringVector'] = stub[:scoring_vector] unless stub[:scoring_vector].nil?
        data['source'] = stub[:source] unless stub[:source].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for ImageScanFindingList
    class ImageScanFindingList
      def self.default(visited=[])
        return nil if visited.include?('ImageScanFindingList')
        visited = visited + ['ImageScanFindingList']
        [
          Stubs::ImageScanFinding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageScanFinding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageScanFinding
    class ImageScanFinding
      def self.default(visited=[])
        return nil if visited.include?('ImageScanFinding')
        visited = visited + ['ImageScanFinding']
        {
          name: 'name',
          description: 'description',
          uri: 'uri',
          severity: 'severity',
          attributes: Stubs::AttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageScanFinding.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data['severity'] = stub[:severity] unless stub[:severity].nil?
        data['attributes'] = Stubs::AttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # List Stubber for AttributeList
    class AttributeList
      def self.default(visited=[])
        return nil if visited.include?('AttributeList')
        visited = visited + ['AttributeList']
        [
          Stubs::Attribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Attribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Attribute
    class Attribute
      def self.default(visited=[])
        return nil if visited.include?('Attribute')
        visited = visited + ['Attribute']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attribute.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Map Stubber for FindingSeverityCounts
    class FindingSeverityCounts
      def self.default(visited=[])
        return nil if visited.include?('FindingSeverityCounts')
        visited = visited + ['FindingSeverityCounts']
        {
          test_key: 1
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

    # Structure Stubber for ImageScanStatus
    class ImageScanStatus
      def self.default(visited=[])
        return nil if visited.include?('ImageScanStatus')
        visited = visited + ['ImageScanStatus']
        {
          status: 'status',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageScanStatus.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
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
          image_scan_status: Stubs::ImageScanStatus.default(visited),
          image_scan_findings_summary: Stubs::ImageScanFindingsSummary.default(visited),
          image_manifest_media_type: 'image_manifest_media_type',
          artifact_media_type: 'artifact_media_type',
          last_recorded_pull_time: Time.now,
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
        data['imageScanStatus'] = Stubs::ImageScanStatus.stub(stub[:image_scan_status]) unless stub[:image_scan_status].nil?
        data['imageScanFindingsSummary'] = Stubs::ImageScanFindingsSummary.stub(stub[:image_scan_findings_summary]) unless stub[:image_scan_findings_summary].nil?
        data['imageManifestMediaType'] = stub[:image_manifest_media_type] unless stub[:image_manifest_media_type].nil?
        data['artifactMediaType'] = stub[:artifact_media_type] unless stub[:artifact_media_type].nil?
        data['lastRecordedPullTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_recorded_pull_time]).to_i unless stub[:last_recorded_pull_time].nil?
        data
      end
    end

    # Structure Stubber for ImageScanFindingsSummary
    class ImageScanFindingsSummary
      def self.default(visited=[])
        return nil if visited.include?('ImageScanFindingsSummary')
        visited = visited + ['ImageScanFindingsSummary']
        {
          image_scan_completed_at: Time.now,
          vulnerability_source_updated_at: Time.now,
          finding_severity_counts: Stubs::FindingSeverityCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageScanFindingsSummary.new
        data = {}
        data['imageScanCompletedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:image_scan_completed_at]).to_i unless stub[:image_scan_completed_at].nil?
        data['vulnerabilitySourceUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:vulnerability_source_updated_at]).to_i unless stub[:vulnerability_source_updated_at].nil?
        data['findingSeverityCounts'] = Stubs::FindingSeverityCounts.stub(stub[:finding_severity_counts]) unless stub[:finding_severity_counts].nil?
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

    # Operation Stubber for DescribePullThroughCacheRules
    class DescribePullThroughCacheRules
      def self.default(visited=[])
        {
          pull_through_cache_rules: Stubs::PullThroughCacheRuleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullThroughCacheRules'] = Stubs::PullThroughCacheRuleList.stub(stub[:pull_through_cache_rules]) unless stub[:pull_through_cache_rules].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PullThroughCacheRuleList
    class PullThroughCacheRuleList
      def self.default(visited=[])
        return nil if visited.include?('PullThroughCacheRuleList')
        visited = visited + ['PullThroughCacheRuleList']
        [
          Stubs::PullThroughCacheRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PullThroughCacheRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PullThroughCacheRule
    class PullThroughCacheRule
      def self.default(visited=[])
        return nil if visited.include?('PullThroughCacheRule')
        visited = visited + ['PullThroughCacheRule']
        {
          ecr_repository_prefix: 'ecr_repository_prefix',
          upstream_registry_url: 'upstream_registry_url',
          created_at: Time.now,
          registry_id: 'registry_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PullThroughCacheRule.new
        data = {}
        data['ecrRepositoryPrefix'] = stub[:ecr_repository_prefix] unless stub[:ecr_repository_prefix].nil?
        data['upstreamRegistryUrl'] = stub[:upstream_registry_url] unless stub[:upstream_registry_url].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeRegistry
    class DescribeRegistry
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          replication_configuration: Stubs::ReplicationConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['replicationConfiguration'] = Stubs::ReplicationConfiguration.stub(stub[:replication_configuration]) unless stub[:replication_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReplicationConfiguration
    class ReplicationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ReplicationConfiguration')
        visited = visited + ['ReplicationConfiguration']
        {
          rules: Stubs::ReplicationRuleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationConfiguration.new
        data = {}
        data['rules'] = Stubs::ReplicationRuleList.stub(stub[:rules]) unless stub[:rules].nil?
        data
      end
    end

    # List Stubber for ReplicationRuleList
    class ReplicationRuleList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationRuleList')
        visited = visited + ['ReplicationRuleList']
        [
          Stubs::ReplicationRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReplicationRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationRule
    class ReplicationRule
      def self.default(visited=[])
        return nil if visited.include?('ReplicationRule')
        visited = visited + ['ReplicationRule']
        {
          destinations: Stubs::ReplicationDestinationList.default(visited),
          repository_filters: Stubs::RepositoryFilterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationRule.new
        data = {}
        data['destinations'] = Stubs::ReplicationDestinationList.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['repositoryFilters'] = Stubs::RepositoryFilterList.stub(stub[:repository_filters]) unless stub[:repository_filters].nil?
        data
      end
    end

    # List Stubber for RepositoryFilterList
    class RepositoryFilterList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryFilterList')
        visited = visited + ['RepositoryFilterList']
        [
          Stubs::RepositoryFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RepositoryFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryFilter
    class RepositoryFilter
      def self.default(visited=[])
        return nil if visited.include?('RepositoryFilter')
        visited = visited + ['RepositoryFilter']
        {
          filter: 'filter',
          filter_type: 'filter_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryFilter.new
        data = {}
        data['filter'] = stub[:filter] unless stub[:filter].nil?
        data['filterType'] = stub[:filter_type] unless stub[:filter_type].nil?
        data
      end
    end

    # List Stubber for ReplicationDestinationList
    class ReplicationDestinationList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationDestinationList')
        visited = visited + ['ReplicationDestinationList']
        [
          Stubs::ReplicationDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReplicationDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationDestination
    class ReplicationDestination
      def self.default(visited=[])
        return nil if visited.include?('ReplicationDestination')
        visited = visited + ['ReplicationDestination']
        {
          region: 'region',
          registry_id: 'registry_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationDestination.new
        data = {}
        data['region'] = stub[:region] unless stub[:region].nil?
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
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
          authorization_data: Stubs::AuthorizationDataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['authorizationData'] = Stubs::AuthorizationDataList.stub(stub[:authorization_data]) unless stub[:authorization_data].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AuthorizationDataList
    class AuthorizationDataList
      def self.default(visited=[])
        return nil if visited.include?('AuthorizationDataList')
        visited = visited + ['AuthorizationDataList']
        [
          Stubs::AuthorizationData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AuthorizationData.stub(element) unless element.nil?
        end
        data
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
          proxy_endpoint: 'proxy_endpoint',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthorizationData.new
        data = {}
        data['authorizationToken'] = stub[:authorization_token] unless stub[:authorization_token].nil?
        data['expiresAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expires_at]).to_i unless stub[:expires_at].nil?
        data['proxyEndpoint'] = stub[:proxy_endpoint] unless stub[:proxy_endpoint].nil?
        data
      end
    end

    # Operation Stubber for GetDownloadUrlForLayer
    class GetDownloadUrlForLayer
      def self.default(visited=[])
        {
          download_url: 'download_url',
          layer_digest: 'layer_digest',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['downloadUrl'] = stub[:download_url] unless stub[:download_url].nil?
        data['layerDigest'] = stub[:layer_digest] unless stub[:layer_digest].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetLifecyclePolicy
    class GetLifecyclePolicy
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          lifecycle_policy_text: 'lifecycle_policy_text',
          last_evaluated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['lifecyclePolicyText'] = stub[:lifecycle_policy_text] unless stub[:lifecycle_policy_text].nil?
        data['lastEvaluatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_evaluated_at]).to_i unless stub[:last_evaluated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetLifecyclePolicyPreview
    class GetLifecyclePolicyPreview
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          lifecycle_policy_text: 'lifecycle_policy_text',
          status: 'status',
          next_token: 'next_token',
          preview_results: Stubs::LifecyclePolicyPreviewResultList.default(visited),
          summary: Stubs::LifecyclePolicyPreviewSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['lifecyclePolicyText'] = stub[:lifecycle_policy_text] unless stub[:lifecycle_policy_text].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['previewResults'] = Stubs::LifecyclePolicyPreviewResultList.stub(stub[:preview_results]) unless stub[:preview_results].nil?
        data['summary'] = Stubs::LifecyclePolicyPreviewSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LifecyclePolicyPreviewSummary
    class LifecyclePolicyPreviewSummary
      def self.default(visited=[])
        return nil if visited.include?('LifecyclePolicyPreviewSummary')
        visited = visited + ['LifecyclePolicyPreviewSummary']
        {
          expiring_image_total_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LifecyclePolicyPreviewSummary.new
        data = {}
        data['expiringImageTotalCount'] = stub[:expiring_image_total_count] unless stub[:expiring_image_total_count].nil?
        data
      end
    end

    # List Stubber for LifecyclePolicyPreviewResultList
    class LifecyclePolicyPreviewResultList
      def self.default(visited=[])
        return nil if visited.include?('LifecyclePolicyPreviewResultList')
        visited = visited + ['LifecyclePolicyPreviewResultList']
        [
          Stubs::LifecyclePolicyPreviewResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LifecyclePolicyPreviewResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LifecyclePolicyPreviewResult
    class LifecyclePolicyPreviewResult
      def self.default(visited=[])
        return nil if visited.include?('LifecyclePolicyPreviewResult')
        visited = visited + ['LifecyclePolicyPreviewResult']
        {
          image_tags: Stubs::ImageTagList.default(visited),
          image_digest: 'image_digest',
          image_pushed_at: Time.now,
          action: Stubs::LifecyclePolicyRuleAction.default(visited),
          applied_rule_priority: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LifecyclePolicyPreviewResult.new
        data = {}
        data['imageTags'] = Stubs::ImageTagList.stub(stub[:image_tags]) unless stub[:image_tags].nil?
        data['imageDigest'] = stub[:image_digest] unless stub[:image_digest].nil?
        data['imagePushedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:image_pushed_at]).to_i unless stub[:image_pushed_at].nil?
        data['action'] = Stubs::LifecyclePolicyRuleAction.stub(stub[:action]) unless stub[:action].nil?
        data['appliedRulePriority'] = stub[:applied_rule_priority] unless stub[:applied_rule_priority].nil?
        data
      end
    end

    # Structure Stubber for LifecyclePolicyRuleAction
    class LifecyclePolicyRuleAction
      def self.default(visited=[])
        return nil if visited.include?('LifecyclePolicyRuleAction')
        visited = visited + ['LifecyclePolicyRuleAction']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifecyclePolicyRuleAction.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for GetRegistryPolicy
    class GetRegistryPolicy
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          policy_text: 'policy_text',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['policyText'] = stub[:policy_text] unless stub[:policy_text].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRegistryScanningConfiguration
    class GetRegistryScanningConfiguration
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          scanning_configuration: Stubs::RegistryScanningConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['scanningConfiguration'] = Stubs::RegistryScanningConfiguration.stub(stub[:scanning_configuration]) unless stub[:scanning_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RegistryScanningConfiguration
    class RegistryScanningConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RegistryScanningConfiguration')
        visited = visited + ['RegistryScanningConfiguration']
        {
          scan_type: 'scan_type',
          rules: Stubs::RegistryScanningRuleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegistryScanningConfiguration.new
        data = {}
        data['scanType'] = stub[:scan_type] unless stub[:scan_type].nil?
        data['rules'] = Stubs::RegistryScanningRuleList.stub(stub[:rules]) unless stub[:rules].nil?
        data
      end
    end

    # List Stubber for RegistryScanningRuleList
    class RegistryScanningRuleList
      def self.default(visited=[])
        return nil if visited.include?('RegistryScanningRuleList')
        visited = visited + ['RegistryScanningRuleList']
        [
          Stubs::RegistryScanningRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RegistryScanningRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RegistryScanningRule
    class RegistryScanningRule
      def self.default(visited=[])
        return nil if visited.include?('RegistryScanningRule')
        visited = visited + ['RegistryScanningRule']
        {
          scan_frequency: 'scan_frequency',
          repository_filters: Stubs::ScanningRepositoryFilterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegistryScanningRule.new
        data = {}
        data['scanFrequency'] = stub[:scan_frequency] unless stub[:scan_frequency].nil?
        data['repositoryFilters'] = Stubs::ScanningRepositoryFilterList.stub(stub[:repository_filters]) unless stub[:repository_filters].nil?
        data
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

    # Operation Stubber for ListImages
    class ListImages
      def self.default(visited=[])
        {
          image_ids: Stubs::ImageIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['imageIds'] = Stubs::ImageIdentifierList.stub(stub[:image_ids]) unless stub[:image_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
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

    # Operation Stubber for PutImageScanningConfiguration
    class PutImageScanningConfiguration
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          image_scanning_configuration: Stubs::ImageScanningConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['imageScanningConfiguration'] = Stubs::ImageScanningConfiguration.stub(stub[:image_scanning_configuration]) unless stub[:image_scanning_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutImageTagMutability
    class PutImageTagMutability
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          image_tag_mutability: 'image_tag_mutability',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['imageTagMutability'] = stub[:image_tag_mutability] unless stub[:image_tag_mutability].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutLifecyclePolicy
    class PutLifecyclePolicy
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          lifecycle_policy_text: 'lifecycle_policy_text',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['lifecyclePolicyText'] = stub[:lifecycle_policy_text] unless stub[:lifecycle_policy_text].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRegistryPolicy
    class PutRegistryPolicy
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          policy_text: 'policy_text',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['policyText'] = stub[:policy_text] unless stub[:policy_text].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRegistryScanningConfiguration
    class PutRegistryScanningConfiguration
      def self.default(visited=[])
        {
          registry_scanning_configuration: Stubs::RegistryScanningConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryScanningConfiguration'] = Stubs::RegistryScanningConfiguration.stub(stub[:registry_scanning_configuration]) unless stub[:registry_scanning_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutReplicationConfiguration
    class PutReplicationConfiguration
      def self.default(visited=[])
        {
          replication_configuration: Stubs::ReplicationConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['replicationConfiguration'] = Stubs::ReplicationConfiguration.stub(stub[:replication_configuration]) unless stub[:replication_configuration].nil?
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

    # Operation Stubber for StartImageScan
    class StartImageScan
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          image_id: Stubs::ImageIdentifier.default(visited),
          image_scan_status: Stubs::ImageScanStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['imageId'] = Stubs::ImageIdentifier.stub(stub[:image_id]) unless stub[:image_id].nil?
        data['imageScanStatus'] = Stubs::ImageScanStatus.stub(stub[:image_scan_status]) unless stub[:image_scan_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartLifecyclePolicyPreview
    class StartLifecyclePolicyPreview
      def self.default(visited=[])
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          lifecycle_policy_text: 'lifecycle_policy_text',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['lifecyclePolicyText'] = stub[:lifecycle_policy_text] unless stub[:lifecycle_policy_text].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
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
